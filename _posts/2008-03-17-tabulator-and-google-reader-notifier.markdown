---
layout: post
status: publish
published: true
title: tabulator and google reader notifier oddness
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 192
wordpress_url: http://inkdroid.org/journal/2008/03/17/tabulator-and-google-reader-notifier/
date: '2008-03-17 06:19:41 +0000'
date_gmt: '2008-03-17 13:19:41 +0000'
tags:
- firefox tabulator semweb rdf google plugins
comments:
- id: 57183
  author: Peter Murray
  author_email: peter@OhioLINK.edu
  author_url: http://dltj.org/
  date: '2008-03-17 17:38:45 +0000'
  date_gmt: '2008-03-18 00:38:45 +0000'
  content: You mean it's not just me?  I've tried the extension a couple times but
    never got it to do anything recognizable, so I thought I just wasn't smart enough
    to use it.  I still might not be smart enough, but now I know that the blank display
    might be more that just my (mis-)use.
- id: 59649
  author: Nodalities &raquo; Blog Archive &raquo; This Week&#8217;s Semantic Web
  author_email: ''
  author_url: http://web.archive.org/web/20120312083750/http://blogs.talis.com:80/nodalities/2008/03/this_weeks_semantic_web_36.php
  date: '2008-04-17 09:56:15 +0000'
  date_gmt: '2008-04-17 16:56:15 +0000'
  content: |
    <p>[...] tabulator and google reader notifier oddness [...]</p>
---
<p>If you've ever tried installing the <a href="http://www.w3.org/2005/ajar/tab">Tabulator</a> (Tim Berners-Lee's experimental <a href="http://www.w3.org/DesignIssues/LinkedData.html">linked-data</a> browser) and not seen it work you may have run into the same problem as me. </p>
<p>On a hunch I guessed that there might be some weird interaction with another Firefox plugin -- so I went through all 15 of them, disabling each one and restarting Firefox to see if Tabulator would start working. Sure enough, after I disabled <a href="http://www.markdbd.com/proyectos/google_reader_notifier/">Google Reader Notifier</a> the Tabulator worked fine. </p>
<p>I dropped a message to <a href="http://lists.w3.org/Archives/Public/public-semweb-ui/2008Mar/0000.html">public-semweb-ui</a>, but figured it couldn't hurt to add this here for other linked-data nerds casting about in google with the same problem.</p>
<pre>
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.12) Gecko/20080207 Ubuntu/7.10 (gutsy) Firefox/2.0.0.12
Tabulator v0.8.2
Google Reader Notifier v0.4.5
</pre>
