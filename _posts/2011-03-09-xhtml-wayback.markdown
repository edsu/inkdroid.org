---
layout: post
status: publish
published: true
title: xhtml, wayback
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 3063
wordpress_url: http://inkdroid.org/journal/?p=3063
date: '2011-03-09 16:33:25 +0000'
date_gmt: '2011-03-09 23:33:25 +0000'
tags:
- html
- xhtml
- internet archive
- heretrix
- wayback
- browsers
comments: []
---
<p>The <a href="http://archive.org">Internet Archive</a> gave the <a href="">Wayback Machine</a> a <a href="http://iawebarchiving.wordpress.com/2011/01/24/updated-wayback-machine-in-beta-testing/">facelift</a> back in January. It actually looks really nice, but I noticed something kinda odd. I was looking for old archived versions of the lcsh.info site. Things <a href="http://replay.waybackmachine.org/20090308030621/http://lcsh.info//">work fine</a> for the latest archived copies:</p>
<p><img src="http://inkdroid.org/images/wayback-lcsh-info.png"/></p>
<p>But during part of lcsh.info's brief lifetime the site was serving up XHTML with the <em>application/xhtml+xml</em> media type. Now Wayback rightly (I think) remembers the media type, and serves it up that way:</p>
<pre>
ed@curry:~$ curl -I http://replay.waybackmachine.org/20081216020433/http://lcsh.info/
HTTP/1.1 200 OK
Server: Apache-Coyote/1.1
X-Archive-Guessed-Charset: UTF-8
X-Archive-Orig-Connection: close
X-Archive-Orig-Content-Length: 6497
X-Archive-Orig-Content-Type: application/xhtml+xml; charset=UTF-8
X-Archive-Orig-Server: Apache/2.2.8 (Ubuntu) DAV/2 SVN/1.4.6 PHP/5.2.4-2ubuntu5.4 with Suhosin-Patch mod_wsgi/1.3 Python/2.5.2
X-Archive-Orig-Date: Tue, 16 Dec 2008 02:04:31 GMT
<span style="color: red;">Content-Type: application/xhtml+xml;charset=utf-8</span>
X-Varnish: 1458812435 1458503935
Via: 1.1 varnish
Date: Wed, 09 Mar 2011 23:09:47 GMT
X-Varnish: 903390921
Age: 0
Via: 1.1 varnish
Connection: keep-alive
X-Cache: MISS
</pre>
<p>But to add navigation controls and branding, Wayback also splices in its own HTML into the display, which unfortunately is not valid XML. And since the media type and doctype trigger standards mode in browsers, the pages render in Firefox like this:</p>
<p><img src="http://inkdroid.org/images/wayback-lcsh-info-ffx.png"/></p>
<p>And in Chrome like this:</p>
<p><img src="http://inkdroid.org/images/wayback-lcsh-info-chrome.png"/></p>
<p>Now I don't quite know what the solution should be here. Perhaps the HTML that is spliced in should be valid XML. Or maybe Wayback should just serve up the HTML as <em>text/html</em>. Or maybe this is a good use case for frames (gasp). But I imagine it will similarly afflict any other XHTML that was served up as <em>application/xhtml+xml</em> when Heretrix crawled it. </p>
<p>Sigh. I sure am glad that HTML5 is arriving on the scene and XHTML is riding off into the sunset. Although it's kind of the Long Goodbye given Internet Archive has archived it.</p>
<p><em>Update: just a couple hours later I got an <a href="http://sourceforge.net/mailarchive/message.php?msg_id=27179259">email</a> that a fix for this was deployed. And sure enough now it works. I quickly eyeballed the response and didn't see what the change was. Thanks very much Internet Archive!</em></p>
