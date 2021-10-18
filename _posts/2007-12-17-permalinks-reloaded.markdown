---
layout: post
status: publish
published: true
title: permalinks reloaded
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 177
wordpress_url: http://www.inkdroid.org/journal/2007/12/17/permalinks-reloaded/
date: '2007-12-17 14:17:07 +0000'
date_gmt: '2007-12-17 21:17:07 +0000'
tags: []
comments:
- id: 47731
  author: Andy Boyko
  author_email: andy@boyko.net
  author_url: http://andy.boyko.net/
  date: '2007-12-17 20:02:15 +0000'
  date_gmt: '2007-12-18 03:02:15 +0000'
  content: "My understanding from discussing this with our Zoteronian mutual <a>neighbor</a>
    is that not only will this allow a Zotero user to point at an already-archived
    instance of a site @ IA, but also will support Zotero's capture of a site being
    sent up to IA, in a sort of micro-harvesting for shared use.  See also the wise
    Britons at <a href=\"http://hanzoweb.com/\" rel=\"nofollow\">HanzoWeb</a> who
    offer a similar sort of social web-capture service (although it's not answering
    the phone at this moment?)\r\n\r\nAPI-wise, there's not much to the Wayback Machine
    (the software underneath the IA web archive)  because there isn't much else that
    it does -- it just retrieves items by URL and date.   You might see <a href=\"http://archive-access.sourceforge.net/projects/wayback/administrator_manual.html#Setting%20up%20the%20Replay%20User%20Interface%20within%20an%20AccessPoint\"
    rel=\"nofollow\">the docs</a> for the new <a href=\"http://archive-access.sourceforge.net/projects/wayback/\"
    rel=\"nofollow\">open-source Java wayback</a> (which is, in theory, a drop-in
    replacement for the older Perl-based Wayback that I think still runs the main
    archive today).  You hit on most of the fuzzy-date-matching thing, but there's
    also wildcards in the date and the URL, as in:\r\n\r\nhttp://web.archive.org/web/*/http://www.google.com/\r\n\r\nwhich
    shows a 'calendar view' of all known captures for the URL; then, there's wildcarding
    the URL suffix, as in:\r\n\r\nhttp://web.archive.org/web/*/inkdroid.org/*\r\n\r\nwhich
    shows all the pages from the site at all."
- id: 59655
  author: Nodalities &raquo; Blog Archive &raquo; This Week&#8217;s Semantic Web
  author_email: ''
  author_url: http://web.archive.org/web/20100416052007/http://blogs.talis.com:80/nodalities/2008/01/this_weeks_semantic_web_25.php
  date: '2008-04-17 10:09:12 +0000'
  date_gmt: '2008-04-17 17:09:12 +0000'
  content: |
    <p>[...] permalinks reloaded [...]</p>
---

<p>The recently <a href="http://www.dancohen.org/2007/12/12/zotero-and-the-internet-archive-join-forces/">announced</a> <a href="http://zotero.org">Zotero</a> / <a href="http://archive.org">InternetArchive</a> partnership is exciting on a bunch of levels. The one that immediately struck me was the use of the Internet Archive URI. As you may have noticed before all the content in Internet Archive <a href="http://web.archive.org">Wayback Machine</a> can be referenced with a URL that looks something like:</p>
<ul>
<li>http://web.archive.org/web/{yyyymmddhhmmss}/{url}</li>
</ul>
<p>Where url is the document URL you want to look up in the archive at the given time. So for example:</p>
<ul>
<li><a href="http://web.archive.org/web/19981202230410/http://www.google.com/">http://web.archive.org/web/19981202230410/http://www.google.com/</a></li>
</ul>
<p>is a URL for what http://google.com looked like on December 02, 1998 at 23:04:10. Perhaps this is documented somewhere prominent or is common knowledge, but it looks like you can play with the timestamp, and archive.org will adjust as needed, redirecting you to the closest snapshot it can find:</p>
<ul>
<li><a href="http://web.archive.org/web/19981202/http://www.google.com/">http://web.archive.org/web/19981202/http://www.google.com/</a></li>
<li><a href="http://web.archive.org/web/199812/http://www.google.com/">http://web.archive.org/web/199812/http://www.google.com/</a></li>
<li><a href="http://web.archive.org/web/1998/http://www.google.com/">http://web.archive.org/web/1998/http://www.google.com/</a></li>
</ul>
<p>and even:</p>
<ul>
<li><a href="http://web.archive.org/web/http://www.google.com/">http://web.archive.org/web/http://www.google.com/</a></li>
</ul>
<p>which redirects to the most recent content for a given URL. It's just a good old 302 at work:</p>
<pre>
ed@curry:~$ curl -I http://web.archive.org/web/199812/http://www.google.com/
HTTP/1.1 302 Found
Date: Mon, 17 Dec 2007 21:11:12 GMT
Server: Apache/2.0.54 (Ubuntu) PHP/5.0.5-2ubuntu1.2 mod_ssl/2.0.54 OpenSSL/0.9.7g mod_perl/2.0.1 Perl/v5.8.7
Location: http://web.archive.org/web/19981202230410/www.google.com/
Content-Type: text/html; charset=iso-8859-1
</pre>
<p>So anyhow, pretty cool use of URIs and HTTP right? The addition of zotero to the mix will mean that scholars can cite the web as it appeared at a particular point in time:</p>
<blockquote><p>
... as scholars begin to use not only traditional primary sources that have been digitized but also “born digital” materials on the web (blogs, online essays, documents transcribed into HTML), the possibility arises for Zotero users to leverage the resources of IA to ensure a more reliable form of scholarly communication. One of the Internet Archive’s great strengths is that it has not only archived the web but also given each page a permanent URI that includes a time and date stamp in addition to the URL.</p>
<p>Currently when a scholar using Zotero wishes to save a web page for their research they simply store a local copy. For some, perhaps many, purposes this is fine. But for web documents that a scholar believes will be important to share, cite, or collaboratively annotate (e.g., among a group of coauthors of an article or book) we will provide a second option in the Zotero web save function to grab a permanent copy and URI from IA’s web archive. A scholar who shares this item in their library can then be sure that all others who choose to use it will be referring to the exact same document.
</p></blockquote>
<p>This is pretty fundamental to scholarship on the web. Of course when generating a time anchored permalink with zotero one can well expect that archive.org will on occasion not have a snapshot of said content, resulting in a 404. It would be great if archive.org could leverage these requests for snapshots as requests to go out and archive the page. One could imagine a blocking and nonblocking request: the former which would spawn a request to fetch a particular URI, stash content away, and return the permalink; and the latter which would just quickly return the best match its already got (which may be a 404).</p>
<p>Anyhow, it's really good to see these two outfits working together. Nice work! </p>
<p><i>ps. dear lazyweb is there a documented archive.org api available?</i></p>
