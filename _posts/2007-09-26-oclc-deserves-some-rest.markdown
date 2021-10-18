---
layout: post
status: publish
published: true
title: OCLC deserves some REST
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 167
wordpress_url: http://www.inkdroid.org/journal/2007/09/26/oclc-deserves-some-rest/
date: '2007-09-26 05:40:19 +0000'
date_gmt: '2007-09-26 12:40:19 +0000'
tags:
- worldcat
- oclc
comments:
- id: 42194
  author: Jason Ronallo
  author_email: jronallo@gmail.com
  author_url: http://ronallo.wordpress.com
  date: '2007-09-26 07:23:38 +0000'
  date_gmt: '2007-09-26 14:23:38 +0000'
  content: Yeah, I wonder if something like this is in the works since I noticed they
    did just <a href="http://ronallo.wordpress.com/2007/09/25/worldcat-identities-change/#comment-9"
    rel="nofollow">recently change to more RESTful URIs</a> for their identity records.
    At least I hope they go at it full on.
- id: 42195
  author: Ralph LeVan
  author_email: levan@oclc.org
  author_url: ''
  date: '2007-09-26 07:35:21 +0000'
  date_gmt: '2007-09-26 14:35:21 +0000'
  content: The XSLT hasn't been all that tedious, so I'm not particularly worried
    about delivering HTML.  But, come the day that we want to deliver XML in other
    schemas, that's exactly the mechanism we'll use.
---

<p>Hey Worldcat Identities you are doing awesome work--you deserve some <a href="http://en.wikipedia.org/wiki/Representational_State_Transfer">REST</a>. Why not use content-negotiation to serve up your HTML and XML representations? So:</p>
<pre>
  curl --header "Accept: text/html" <a href="http://orlabs.oclc.org/Identities/key/lccn-no99-10609">http://orlabs.oclc.org/Identities/key/lccn-no99-10609</a>
</pre>
<p>would return HTML and</p>
<pre>
  curl --header "Accept: application/xml" <a href="http://orlabs.oclc.org/Identities/key/lccn-no99-10609">http://orlabs.oclc.org/Identities/key/lccn-no99-10609</a>
</pre>
<p>would return XML. This would allow you to:</p>
<ul>
<li>not be limited to XSLT driven user views (doesn't that get tedious?)</li>
<li>allow you to scale to other sorts of output (application/rdf+xml, etc)</li>
</ul>
<p>At least from the outside I'd have to disagree w/ <a href="http://www.libraryjournal.com/blog/1090000309/post/1630014963.html?nid=3565">Roy</a> -- it appears that <a href="http://web.archive.org/web/20091114013754/http://www.oclc.org:80/research/researchworks">institutions</a> can and do innovate. But I won't say it is easy ...</p>
