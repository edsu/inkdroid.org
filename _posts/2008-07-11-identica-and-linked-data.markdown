---
layout: post
status: publish
published: true
title: identi.ca and linked data
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 208
wordpress_url: http://inkdroid.org/journal/?p=208
date: '2008-07-11 06:26:55 +0000'
date_gmt: '2008-07-11 13:26:55 +0000'
tags:
- rdf
- http
- php
- blogging
- xmpp
- foaf
- oauth
comments:
- id: 78582
  author: Bookmarks about Foaf
  author_email: ''
  author_url: http://www.remmrit.com/foaf
  date: '2008-12-03 16:45:11 +0000'
  date_gmt: '2008-12-03 23:45:11 +0000'
  content: "[...] - bookmarked by 5 members originally found by candid on 2008-10-26
    \ identi.ca and linked data  http://inkdroid.org/journal/2008/07/11/identica-and-linked-data/
    - bookmarked by 6 members [...]"
---

<p>If you've already caught the <a href="http://en.wikipedia.org/wiki/Micro-blogging">micro-blogging</a> bug <a href="http://identi.ca">identi.ca</a> is an interesting twitter clone for a <a href="http://times.usefulinc.com/2008/07/03-identica">variety</a> of <a href="http://danbri.org/words/2008/07/10/367">reasons</a>...not the least of which is that it's an <a href="http://web.archive.org/web/20080602015854/http://laconi.ca:80/">open source project</a>, and has been designed to run in a decentralized way. The thing I was pleasantly surprised to see was FOAF exports like <a href="http://web.archive.org/web/20130308050525/http://identi.ca/edsu/foaf">this</a> for user networks, and HTTP URIs for foaf:Person resources:</p>
<pre>
ed@hammer:~$ curl -I http://identi.ca/user/6104
HTTP/1.1 302 Found
Date: Fri, 11 Jul 2008 12:58:56 GMT
Server: Apache/2.2.8 (Ubuntu) PHP/5.2.4-2ubuntu5.1 with Suhosin-Patch
X-Powered-By: PHP/5.2.4-2ubuntu5.1
Status: 303 See Other
Location: http://identi.ca/edsu
Content-Type: text/html
</pre>
<p>It looks like there's a slight bug in the way the HTTP status is being returned, but clearly the intent was to do the right thing by <a href="http://norman.walsh.name/2005/06/19/httpRange-14">httpRange-14</a>. If I have time I'll get laconi.ca running locally so I can confirm the bug, and attempt a fix.</p>
<p>It's also cool to see that <a href="http://evan.prodromou.name/">Evan Prodromou</a> (the lead developer, and creator of identi.ca and laconi.ca) has opened a <a href="http://web.archive.org/web/20080731120253/http://laconi.ca:80/PITS/00047">couple</a> <a href="http://web.archive.org/web/20080731120258/http://laconi.ca:80/PITS/00048">tickets</a> for adding <a href="http://www.w3.org/TR/xhtml-rdfa-primer/">RDFa</a> to various pages. If I have the time this would be a fun hack as well. I'd also like to take a stab at doing conneg at foaf:Person URIs to enable this sorta thing:</p>
<pre>
ed@hammer:~$ curl -I --header "Content-type: application/rdf+xml" http://identi.ca/user/6104
HTTP/1.1 303 See Other
Date: Fri, 11 Jul 2008 13:08:42 GMT
Server: Apache/2.2.8 (Ubuntu) PHP/5.2.4-2ubuntu5.1 with Suhosin-Patch
X-Powered-By: PHP/5.2.4-2ubuntu5.1
Location: http://web.archive.org/web/20130308050525/http://identi.ca/edsu/foaf
</pre>
<p>instead of what happens currently:</p>
<pre>
ed@hammer:~$ curl -I --header "Content-type: application/rdf+xml" http://identi.ca/user/6104
HTTP/1.1 302 Found
Date: Fri, 11 Jul 2008 13:08:42 GMT
Server: Apache/2.2.8 (Ubuntu) PHP/5.2.4-2ubuntu5.1 with Suhosin-Patch
X-Powered-By: PHP/5.2.4-2ubuntu5.1
Status: 303 See Other
Location: http://identi.ca/edsu
Content-Type: text/html
</pre>
<p>I guess this is also just a complicated way of saying I'm <a href="http://identi.ca/user/6104">edsu</a> on identi.ca--and that the opportunity to learn more about <a href="http://oauth.net">OAuth</a> and <a href="http://www.xmpp.org/">XMPP</a> is a compelling enough reason alone for me to make the switch.</p>
