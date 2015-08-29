---
layout: post
status: publish
published: true
title: on preserving bookmarks
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2774
wordpress_url: http://inkdroid.org/journal/?p=2774
date: '2010-12-22 08:57:04 +0000'
date_gmt: '2010-12-22 15:57:04 +0000'
tags:
- yahoo
- curation
- urls
- digital preservation
- delicious
- linkrot
- web archiving
- unalog
comments:
- id: 84006
  author: Delicious and the Preservation of &#8220;Platforms&#8221; &#8212; thesecretmirror.com
  author_email: ''
  author_url: http://thesecretmirror.com/blog/2010/12/22/delicious-and-the-preservation-of-platforms/
  date: '2010-12-22 21:57:55 +0000'
  date_gmt: '2010-12-23 04:57:55 +0000'
  content: "[...] his post about preserving Delicious bookmarks through migration,
    Ed Summers advocates for releasing the Delicious data to the Web somehow. As he
    writes, this could [...]"
---
<p>While it's not exactly clear what the future of <a href="http://delicious.com">Delicious</a> is, the <a href="http://www.readwriteweb.com/archives/deliciouss_data_policy_is_like_setting_a_museum_on.php">recent news</a> about <a href="http:/http://www.spinellis.gr/pubs/jrnl/2003-CACM-URLcite/html/urlcite.html">Yahoo</a> closing the doors or <a href="http://blog.delicious.com/">selling the building</a> prompted me to look around at other social bookmarking tools, and to revisit some old stomping grounds.</p>
<p><a href="http://onebiglibrary.net">Dan Chudnov</a> has been running <a href="http://unalog.com">Unalog</a> since 2003 (roughly when Delicious started). In fact I can remember Dan and <a href="http://en.wikipedia.org/wiki/Joshua_Schachter">Joshua Schacter</a> having some conversations about the idea of social bookmarking as both of the services co-evolved. So my first experience with social bookmarking was on Unalog, but a year or so later I ended up switching to Delicious in 2004 for reasons I can't quite remember. I think I liked some of the tools that had sprouted up around Delicious, and felt a bit guilty for abandoning Unalog.</p>
<p>Anyhow, I wanted to take the exported Delicious bookmarks and see if I could get them into Unalog. So I set up a dev Unalog environment, created a <a href="https://bitbucket.org/edsu/unalog2">friendly fork</a> of Dan's code, and added the ability to POST a chunk of JSON:</p>
<pre lang="text">curl --user user:pass \
         --header "Content-type: application/json" \
         --data '{"url": "http://example.com", "title": "Example"}' \
         http://unalog.com/entry/new
</pre>
<p>Here's a fuller example of the JSON that you can supply:</p>
<pre lang="json">{
      "url": "http://zombo.com",
      "title": "ZOMBO",
      "comment": "found this awesome website today",
      "tags": "website awesome example",
      "content": "You can do anything at Zombo.com. The only limit is yourself. Etc...",
      "is_private": true
    }
</pre>
<p>The nice thing about Unalog is that if you supply it (content), Unalog will index the text of the resource you've bookmarked. This allows you to do a fulltext search over your bookmarked materials.</p>
<p>So yeah, to make a long story a bit shorter, I created a <a href="https://bitbucket.org/edsu/unalog2/src/d1297c57471c/scripts/d2u.py">script</a> that reads in the bookmarks from a Delicious bookmark export (an HTML file) and pushes them up to a Unalog instance. Since the script GETs the bookmark URL to send Unalog the content to index you also get a log which contains the <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html">HTTP Status Code</a> that provides the fodder for a linkrot report like:</p>
<table style="width: 90%; border: thin solid gray;">
<tr style="background-color: #EEEEEE;">
<td>
      200 OK
    </td>
<td style="text-align: right;">
      4546
    </td>
</tr>
<tr>
<td>
      404 Not Found
    </td>
<td style="text-align: right;">
      367
    </td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>
      403 Forbidden
    </td>
<td style="text-align: right;">
      141
    </td>
</tr>
<tr>
<td>
      DNS failure
    </td>
<td style="text-align: right;">
      81
    </td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>
      Connection refused
    </td>
<td style="text-align: right;">
      28
    </td>
</tr>
<tr>
<td>
      500 Internal Server Error
    </td>
<td style="text-align: right;">
      19
    </td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>
      503 Service Unavailable
    </td>
<td style="text-align: right;">
      10
    </td>
</tr>
<tr>
<td>
      401 Unauthorized
    </td>
<td style="text-align: right;">
      9
    </td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>
      410 Gone
    </td>
<td style="text-align: right;">
      5
    </td>
</tr>
<tr>
<td>
      302 Found
    </td>
<td style="text-align: right;">
      5
    </td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>
      400 Bad Request
    </td>
<td style="text-align: right;">
      4
    </td>
</tr>
<tr>
<td>
      502 Bad Gateway
    </td>
<td style="text-align: right;">
      2
    </td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>
      412 Precondition Failed
    </td>
<td style="text-align: right;">
      1
    </td>
</tr>
<tr>
<td>
      300 Multiple Choices
    </td>
<td style="text-align: right;">
      1
    </td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>
      201 Created
    </td>
<td style="text-align: right;">
      1
    </td>
</tr>
</table>
<p>That was 5,220 bookmarks total collected over 5 years--which initially seemed low, until I did the math and figured I did 3 bookmarks a day on average. If we lump all the non-200 OK responses, that amounts to 13% linkrot. At first blush this seems significantly different compared to the <a href="http://www.spinellis.gr/pubs/jrnl/2003-CACM-URLcite/html/urlcite.html">research</a> done by Spinelli from 2003 (thanks <a href="http://lackoftalent.org/michael/blog/">Mike</a>) which reported 28% linkrot. I would've expected the Spinelli results to be better than my haphazard bookmark collection since he was sampling academic publications on the Web. But he was also sampling links from the 1995-1999 period, while I had links from 2005-2010. I know this is mere conjecture, but maybe we're learning to do things better on the web w/ <a href="http://www.w3.org/Provider/Style/URI">Cool URIs</a>. I'd like to think so at least. Maybe a comparison with <a href="http://www2003.org/cdrom/papers/refereed/p097/P97%20sources/p97-fetterly.html">some work</a> done by folks at HP and Microsoft would provide some insight.</p>
<p>At the very least this was a good reminder of how important this activity of pouring data from one system into another is to digital preservation. What <a href="http://www.alexandria.ucsb.edu/~gjanee/">Greg Janée</a> calls <a href="http://www.ijdc.net/index.php/ijdc/article/view/102">relay-supporting preservation</a>.</p>
<p>Most of all I want to echo the comments of former Yahoo employee <a href="http://uniquehazards.tumblr.com/">Stephen Hood</a> who <a href="http://uniquehazards.tumblr.com/post/2377362882/we-can-save-delicious-but-probably-not-in-the-way-you">wrote</a> recently about the value of this unique collection of bookmarks to the web community. If for some reason Yahoo were to close the doors on Delicious it would be great if they could donate the public bookmarks to the Web somehow, either via a public institution like the Smithsonian or the Library of Congress (full disclosure I work at the Library of Congress in a Digital Preservation group), or to an organization dedicated to the preservation of the Web like the <a href="http://netpreserve.org/">International Internet Preservation Consortium</a> of which LC, other National Libraries, and the <a href="http://archive.org">Internet Archive</a> are <a href="http://web.archive.org/web/20120722084143/http://www.netpreserve.org/about/memberList.php">members</a>.</p>
