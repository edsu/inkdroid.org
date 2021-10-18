---
layout: post
status: publish
published: true
title: Dear Footnote Bot
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 1945
wordpress_url: http://inkdroid.org/journal/?p=1945
date: '2010-04-22 19:35:54 +0000'
date_gmt: '2010-04-23 02:35:54 +0000'
tags:
- http
- crawling
- ndnp
comments:
- id: 82660
  author: eric
  author_email: ''
  author_url: http://epugh.myopenid.com/
  date: '2010-04-26 06:22:40 +0000'
  date_gmt: '2010-04-26 13:22:40 +0000'
  content: "A really wonderful post!  Entertaining and educational, post serves as
    a great overview of caching!   \r\n\r\nOften I think crawlers mimic browsers to
    ensure they get what the browser gets.  What would you think of footnote declaring
    itself as \"footnote\" and then if the site rejects it, falling back to declaring
    itself as \"IE\"?   \r\n\r\nI tried to write a crawler for the public pages of
    a Facebook group, and in that case Facebook was intentionally blocking access
    if you didn't look like a browser run by a person!   Lots of complex JavaScript
    calls, arbitrary ID's, etc to make scraping a page harder.  \r\n\r\nObviously
    you are happy to have the site be crawled, so it's a bit different."
---

<p>Thanks for taking an interest in the historic content on a <a href="http://chroniclingamerica.loc.gov">website</a> I help run. We want to see the <a href="http://www.loc.gov/ndnp/">NDNP</a> newspaper content get crawled, indexed and re-purposed in as many places as possible. So we appreciate the time and effort you are spending on getting the OCR XML and JPEG2000 files  into <a href="http://footnote.com">Footnote</a>. I am a big fan of <a href="http://footnote.com">Footnote</a> and what you are <a href="http://go.footnote.com/nara/">doing</a> to help historical/genealogical researchers who subscribe to your product.</p>
<p>But since I have your ear, it would be nice if you identified yourself as a bot. Right now you are pretending to be Internet Explorer:</p>
<pre style="width: 95%;">
38.101.149.14 - - [22/Apr/2010:18:38:39 -0400] "GET /lccn/sn86069496/1909-09-08/ed-1/seq-8.jp2 HTTP/1.1" 200 3170304 "-" "Internet Explorer 6 (MSIE 6; Windows XP)" "*/*" "-" "No-Cache"
</pre>
<p>Oh, and could you stop sending the <em>Pragma: No-Cache</em> header with every HTTP request? We have a <a href="http://en.wikipedia.org/wiki/Reverse_proxy">reverse-proxy</a> in front of our dynamic content so that we don't waste CPU cycles regenerating pages that haven't changed. It's what allows us to make our content available to well behaved web crawlers. But every request you send bypasses our cache, and makes our site to do extra work.</p>
<p>It's true, we can ignore your request to bypass our cache. In fact, that's what we're <a href="http://httpd.apache.org/docs/2.0/mod/mod_cache.html#cacheignorecachecontrol">doing now</a>. This means we can't shift-reload in our browser to force the content to refresh--but we'll manage. Maybe you could be a good citizen of the Web and send an <a href="http://diveintopython.org/http_web_services/http_features.html#d0e27689"><em>If-Modified-Since</em></a> header--or perhaps just don't send <em>Pragma: No Cache</em>?</p>
<p>Identifying yourself with a <em>User-Agent</em> string like <em>"footbot/0.1 +(http://footnote.com/footbot)"</em> would be neighborly too :-)</p>
<p>Yours Sincerely,<br />
Ed</p>
<p>PS </p>
<pre>
ed@curry:~$ whois 38.101.149.14
...
%rwhois V-1.5:0010b0:00 rwhois.cogentco.com
38.101.149.14
network:ID:NET4-2665950018
network:Network-Name:NET4-2665950018
network:IP-Network:38.101.149.0/24
network:Postal-Code:84042
network:State:UT
network:City:Linden
network:Street-Address:355 South 520 West
network:Org-Name:iArchives Inc dba Footnote
network:Tech-Contact:ZC108-ARIN
network:Updated:2008-05-21 13:05:26
network:Updated-by:Gus Reese
</pre>
