---
layout: post
status: publish
published: true
title: resource maps and site maps
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 241
wordpress_url: http://inkdroid.org/journal/?p=241
date: '2008-08-01 06:00:02 +0000'
date_gmt: '2008-08-01 13:00:02 +0000'
tags:
- http
- oai-ore
- harvesting
- atom
- google
comments:
- id: 69317
  author: Sean Gillies
  author_email: sgillies@frii.com
  author_url: http://sgillies.net/
  date: '2008-08-01 09:42:46 +0000'
  date_gmt: '2008-08-01 16:42:46 +0000'
  content: Google, Yahoo, and Microsoft already support Atom as a sitemap format.
    Does OAI-ORE bring anything else to the table (in the way of more specific sitemapping
    instructions) that would warrant another serialization?
- id: 69377
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2008-08-01 18:16:38 +0000'
  date_gmt: '2008-08-02 01:16:38 +0000'
  content: GoogleSiteMaps support things like changefreq and priority that don't have
    an analog in the Atom world. But the main problem with repositories is discovery,
    so perhaps simply making OAI-ORE resource maps available as Atom will be enough
    eh? Thanks for the comment.
- id: 69756
  author: Michael L. Nelson
  author_email: mln@cs.odu.edu
  author_url: http://www.cs.odu.edu/~mln/
  date: '2008-08-04 14:30:09 +0000'
  date_gmt: '2008-08-04 21:30:09 +0000'
  content: "We considered sitemaps as a serialization format early on, but their limitation
    of \r\nlocation limits their usefulness.  For example, /a/b/sitemap.xml could
    aggregate \r\n/a/b/foo.html, but not /a/c/bar.html or /x/y/z.html.  For some repos
    this might\r\nnot be a problem, but it would prevent things like arXiv.org aggregating
    resources\r\nin citebase.org.\r\n\r\n(see http://www.sitemaps.org/protocol.php#location)."
---
<p><a href="http://www.openarchives.org/ore/"><img src="http://inkdroid.org/images/ore.png" style="margin-right: 10px; border: none; float: left;" /></a><a href="http://efoundations.typepad.com/efoundations/2008/08/seo-and-digital.html">Andy</a> reminds me that a relatively simple idea (I think it was <a href="http://dfflanders.wordpress.com/">David's</a> at <a href="http://barcamp.org/RepoCamp">RepoCamp</a>) for the <a href="http://groups.google.com/group/oai-ore/browse_thread/thread/3c743774cef00e23">OAI-ORE Challenge</a> would be to create a tool that transformed OAI-ORE resource maps expressed as <a href="http://www.openarchives.org/ore/0.9/atom-implementation.html">Atom</a> into <a href="https://www.google.com/webmasters/tools/docs/en/protocol.html">Google Site Maps</a>. This would allow "repositories" that exposed their "objects" as resource maps, to easily be crawled by Google and others. </p>
<p>It would also be useful to demonstrate what value-add OAI-ORE resource maps give you: to answer the question of why not just generate the site map and be done with it. I think there definitely are advantages, such as being able to identify compound objects or aggregations of web resources, and then make assertions about them (a.k.a. attach metadata to them).</p>
