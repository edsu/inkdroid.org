---
layout: post
status: publish
published: true
title: oclc registry
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 141
wordpress_url: http://www.inkdroid.org/journal/2007/02/19/oclc-registry/
date: '2007-02-19 21:36:42 +0000'
date_gmt: '2007-02-20 04:36:42 +0000'
tags:
- worldcat
- oclc
comments:
- id: 15086
  author: Chuck Costakos
  author_email: costakoc@oclc.org
  author_url: http://www.worldcat.org
  date: '2007-02-21 07:53:09 +0000'
  date_gmt: '2007-02-21 14:53:09 +0000'
  content: "OCLC also introduced two web services that you can use to access the new
    WorldCat Registries. On this web page: http://www.worldcat.org/affiliate/default.jsp,
    the two are listed. There is one for searching and a companion web service to
    retrieve the detail records for institutions. Just register via the WorldCat.org
    affiliate site. \r\n\r\nLet me know if you have any questions.\r\n\r\nBest regards,\r\nChuck
    Costakos, OCLC"
---

<p><a href="http://worldcat.org/registry/Institutions"><img src="http://worldcat.org/registry/images/masthead_registry_en.png" style="border: none; margin-right: 10px; float: left" /></a></p>
<p>So <a href="http://worldcat.org/registry/Institutions">OCLC's WorldCat Registry</a> is a nice new addition to OCLCs growing list of web services. Do a search for your library and take a look at the URL: aye that's right it's <a href="http://www.loc.gov/standards/sru/">SRU</a>. In fact do a view source on the results page and you'll see an SRU response in XML--the HTML is being rendered with client side XSLT.</p>
<p>If you drill into a particular institution you'll see a pleasantly <a href="http://www.w3.org/Provider/Style/URI">cool</a> uri:</p>
<blockquote><p>
<a href="http://worldcat.org/registry/Institutions/89073">http://worldcat.org/registry/Institutions/89073</a>
</p></blockquote>
<p>...which would serve nicely as an identifier for the Browne Popular Culture Library. The institution pages are HTML instead of XML--however there is a link to an XML representation:</p>
<blockquote><p><a href="http://worldcat.org/webservices/registry/content/Institutions/89073">http://worldcat.org/webservices/registry/content/Institutions/89073</a>
</p></blockquote>
<p>This URL isn't bad but it would be rather nice if the former could return XML if the Accept: header had text/xml slotted before text/html. Yeah, I did check:</p>
<pre>
  curl -I "Accept: text/xml" http://worldcat.org/registry/Institutions/89073
</pre>
<p>It's inspiring to see OCLC going the extra mile to make their new services have web friendly machine APIs.</p>
<p>Update: for deeper analysis check out Pete Johnston's <a href="http://efoundations.typepad.com/efoundations/2007/02/worldcat_instit.html">WorldCat Institution Registry and Identifiers</a>. He has some great points on the use of identifiers in the xml responses.</p>
