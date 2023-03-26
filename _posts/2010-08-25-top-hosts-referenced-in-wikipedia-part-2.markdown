---
layout: post
status: publish
published: true
title: top hosts referenced in wikipedia (part 2)
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2342
wordpress_url: http://inkdroid.org/journal/?p=2342
date: '2010-08-25 05:27:51 +0000'
date_gmt: '2010-08-25 12:27:51 +0000'
tags:
- wikipedia
- statistics
comments:
- id: 83043
  author: google.com/accounts/o8&hellip;
  author_email: tfmorris@gmail.com
  author_url: https://www.google.com/accounts/o8/id?id=AItOawld-pz_ibfBuIZ2hkuRWFiHcZh9-2OSOCg
  date: '2010-08-25 11:22:14 +0000'
  date_gmt: '2010-08-25 18:22:14 +0000'
  content: "Thanks for posting these results.\r\n\r\nI think you've posted the original
    list again rather than the updated one because toolserver.com is the top entry.
    \ It also appears to be served with the wrong MIME type (or perhaps is twice compressed?)\r\n\r\nThis
    is just the tip of the iceberg and it would be interesting to see what kinds of
    additional insights could be teased out.  Some of the things that come to mind
    include identifying patterns used by bots and excluding/segregating them so that
    you can see more organic results, aggregating equivalent domains (e.g. Google
    Books in different TLDs), reversing domains and aggregating subtotals (gov.nih.*,
    gov.nps.*), aggregating by type/subject (e.g. recensement.insee.fr &amp; census.gov),
    etc, etc.  Days of fun for someone who wants to slice &amp; dice the data!"
- id: 83057
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2010-08-25 19:05:56 +0000'
  date_gmt: '2010-08-26 02:05:56 +0000'
  content: "Actually toolserver.org was in the top of the results when limiting to
    articles as well. I just removed it from my barchart again.\r\n\r\nAs far as I
    can see with curl, the content-type header for the <a href=\"http://inkdroid.org/data/enwiki-externallinks-hostnames-articles-only.txt.gz\"
    rel=\"nofollow\">list</a> is \"application/x-gzip\" which is right?\r\n\r\n<pre>\r\ned@curry:~/Projects/openpub/examples$
    curl -I http://inkdroid.org/data/enwiki-externallinks-hostnames-articles-only.txt.gz\r\nHTTP/1.1
    200 OK\r\nDate: Thu, 26 Aug 2010 02:03:31 GMT\r\nServer: Apache/2.2.14 (Ubuntu)\r\nLast-Modified:
    Wed, 25 Aug 2010 11:30:30 GMT\r\nETag: \"f8013-b44b97-48ea4357ce180\"\r\nAccept-Ranges:
    bytes\r\nContent-Length: 11815831\r\nVary: Accept-Encoding\r\nConnection: close\r\nContent-Type:
    application/x-gzip\r\n</pre>\r\n\r\nThose are some good ideas for further analysis,
    thanks!"
- id: 83058
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2010-08-25 19:08:07 +0000'
  date_gmt: '2010-08-26 02:08:07 +0000'
  content: I just noticed that Finn Årup Nielsen did some similar <a href="http://fnielsen.posterous.com/top-news-cites-referenced-from-wikipedia"
    rel="nofollow">analysis</a> of the top news sites. In case you are interested
    in links from wikipedia to news outlets on the web.
- id: 83067
  author: inkdroid › top hosts referenced in wikipedia (part 2) | Google Wikipedia
  author_email: ''
  author_url: http://googlewikipedia.com/inkdroid-%e2%80%ba-top-hosts-referenced-in-wikipedia-part-2/
  date: '2010-08-26 15:09:34 +0000'
  date_gmt: '2010-08-26 22:09:34 +0000'
  content: "[...] Google history wikipedia &#8211; Google Blog Search  by Chris Devers
    [...]"
- id: 83100
  author: thekohser
  author_email: thekohser@gmail.com
  author_url: http://www.google.com/profiles/thekohser
  date: '2010-08-30 12:24:32 +0000'
  date_gmt: '2010-08-30 19:24:32 +0000'
  content: "Ed, when you say \"referenced in Wikipedia\" do you mean actually used
    as a \"References\" or \"Notes\" link to substantiate a citation, or do you simply
    mean \"external link\" of any variety, anywhere on an article page?\r\n\r\nIf
    the latter, might I suggest you use some different terminology in this blog post?\r\n\r\nGreat
    work, by the way.  It's the sort of stuff that the Wikimedia Foundation itself
    should be doing, but their too busy hiring new staff to not do much."
- id: 83105
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2010-08-30 19:59:20 +0000'
  date_gmt: '2010-08-31 02:59:20 +0000'
  content: "@thekosher, well by external links I mean links included in enwiki-latest-externallinks.sql.gz
    made available by <a href=\"http://dumps.wikimedia.org/enwiki/latest/\" rel=\"nofollow\">en.wikipedia.org</a>.
    It's my understanding that these are referenced citations, and not just any link
    on an article page. The stats in this post also used the enwiki-latest-page.sql.gz
    dump to limit to only external links in <em>articles</em> with the following SQL:\r\n\r\n<pre>\r\nSELECT
    * FROM externallinks, page \r\nWHERE externallinks.el_from = page.page_id\r\nAND
    page.page_namespace = 0\r\n</pre>\r\n\r\nI hope that clarifies things somewhat."
- id: 85354
  author: 'Wikipedia: Questionable Content – Oh Internet!'
  author_email: ''
  author_url: http://web.archive.org/web/20130509051903/http://blog.ohinternet.com/11618/wikipedia-questionable-content/
  date: '2012-04-02 03:56:09 +0000'
  date_gmt: '2012-04-02 10:56:09 +0000'
  content: |
    <p>[...] &#8220;Anime News Network&#8221; has the dubious distinction of being one of the most-linked domains from Wikipedia pages. This is because anime is vastly more important than things like history, [...]</p>
---

<p><a href="http://jodischneider.com/">Jodi Schneider</a> pointed out to me in an email that my <a href="http://inkdroid.org/journal/2010/08/21/top-hosts-referenced-in-english-wikipedia/">previous post</a> about the top 100 hosts referenced in wikipedia may have been slightly off balance since it counted *all* pages on wikipedia (talk pages, files, etc), and was not limited to only links in articles. The indicator for her was the high ranking of <em>www.google.com</em>, which seemed odd to her in the article space.</p>
<p>So I downloaded the <a href="http://dumps.wikimedia.org/enwiki/latest/enwiki-latest-page.sql.gz">enwiki-latest-page.sql.gz</a>, loaded it in, and then joined on it in my query to come up with a <a href="http://inkdroid.org/data/enwiki-externallinks-hostnames-articles-only.txt.gz">new list</a>. Jodi was right, it's a lot more interesting:</p>
<p><a href="http://inkdroid.org/images/en-wikipedia-externallinks-articles-only-chart.png"><img class="img-fluid" src="http://inkdroid.org/images/en-wikipedia-externallinks-articles-only-chart.png" style="border: none;"/></a></p>
<p>This removed a lot of the interwiki links between the English wikipedia and other language wikipedias (which would be interesting to look at in their own right). It also removed administrative links to things like <a href="http://www.dnsstuff.com">www.dnsstuff.com</a>. Also interesting is that it removed <a href="http://www.facebook.com">www.facebook.com</a> from the list, which probably were linked to from user profile pages? The neat thing is it introduced new sites into the top 100 like the following:</p>
<table>
<tr>
<td>adsabs.harvard.edu</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>bioguide.congress.gov</td>
</tr>
<tr>
<td>cfa-www.harvard.edu</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>eclipse.gsfc.nasa.gov</td>
</tr>
<tr>
<td>openjurist.org</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>select.nytimes.com</td>
</tr>
<tr>
<td>ssd.jpl.nasa.gov</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>worldcat.org</td>
</tr>
<tr>
<td>www1.arbitron.com</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>www.animenewsnetwork.com</td>
</tr>
<tr>
<td>www.cbc.ca</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>www.cricinfo.com</td>
</tr>
<tr>
<td>www.cricketarchive.com</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>www.discogs.com</td>
</tr>
<tr>
<td>www.expasy.org</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>www.fifa.com</td>
</tr>
<tr>
<td>www.gutenberg.org</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>www.history.navy.mil</td>
</tr>
<tr>
<td>www.hockeydb.com</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>www.imagesofengland.org.uk</td>
</tr>
<tr>
<td>www.independent.co.uk</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>www.jstor.org</td>
</tr>
<tr>
<td>www.leighrayment.com</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>www.mtv.com</td>
</tr>
<tr>
<td>www.nfl.com</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>www.nhm.ac.uk</td>
</tr>
<tr>
<td>www.nps.gov</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>www.racingpost.com</td>
</tr>
<tr>
<td>www.radio-locator.com</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>www.reuters.com</td>
</tr>
<tr>
<td>www.rollingstone.com</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>www.rsssf.com</td>
</tr>
<tr>
<td>www.soccerbase.com</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>www.usatoday.com</td>
</tr>
<tr>
<td>www.variety.com</td>
</tr>
</table>
<p>We can see a lot more pop culture media present: newspapers, magazines, sporting information. Also we can see research oriented websites like worldcat.org, ssd.jpl.nasa.gov, adsabs.harvard.edu make it into the top 100.  </p>
<p>I work for the US federal government so I was interested to look at what .gov domains were in the top 100:</p>
<table>
<tr>
<th>hostname</th>
<th>links</th>
</tr>
<tr style="background-color: #EEEEEE;">
<td>www.ncbi.nlm.nih.gov</td>
<td>419816</td>
</tr>
<tr>
<td>www.pubmedcentral.nih.gov</td>
<td>62134</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>geonames.usgs.gov</td>
<td>57423</td>
</tr>
<tr>
<td>factfinder.census.gov</td>
<td>48530</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>www.census.gov</td>
<td>33018</td>
</tr>
<tr>
<td>www.nr.nps.gov</td>
<td>25962</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>www.fcc.gov</td>
<td>25941</td>
</tr>
<tr>
<td>ssd.jpl.nasa.gov</td>
<td>20178</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>eclipse.gsfc.nasa.gov</td>
<td>20063</td>
</tr>
<tr>
<td>bioguide.congress.gov</td>
<td>18880</td>
</tr>
<tr style="background-color: #EEEEEE;">
<td>www.nlm.nih.gov</td>
<td>15115</td>
</tr>
<tr>
<td>www.nps.gov</td>
<td>12196</td>
</tr>
</table>
<p>Which points to the importance of federal biomedical, geospatial, scientific, demographic and biographical information to wikipedians. It would be interesting to take a look at higher education institutions at some point. Doing these one off reports is giving me some ideas about what linkypedia could turn into. Thanks Jodi.</p>
