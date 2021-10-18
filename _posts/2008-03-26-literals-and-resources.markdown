---
layout: post
status: publish
published: true
title: literals and resources
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 193
wordpress_url: http://inkdroid.org/journal/2008/03/26/literals-and-resources/
date: '2008-03-26 06:51:32 +0000'
date_gmt: '2008-03-26 13:51:32 +0000'
tags:
- metadata
- rdf
- semweb
- marc
- libraries
- rda
comments:
- id: 57819
  author: Peter Murray
  author_email: peter@OhioLINK.edu
  author_url: http://dltj.org/
  date: '2008-03-26 07:15:46 +0000'
  date_gmt: '2008-03-26 14:15:46 +0000'
  content: "<blockquote>(PSS, no that lccn url doesn’t currently resolve (it does
    for bibliographic records, but not authority) or return rdf (hopefully someday))</blockquote>\r\n\r\nWell,
    what are you waiting for?  Get to work on that, okay?  ;-)"
- id: 57823
  author: Bruce D'Arcus
  author_email: bdarcus@gmail.com
  author_url: ''
  date: '2008-03-26 08:39:32 +0000'
  date_gmt: '2008-03-26 15:39:32 +0000'
  content: Hear, hear Ed.
---

<p><img src="http://inkdroid.org/images/rda.jpg" style="margin-left: 10px; float: left;"/>There's a fascinating modeling discussion going on over on the <a href="http://www.jiscmail.ac.uk/cgi-bin/webadmin?A2=ind0803&L=dc-rda&T=0&F=&S=&P=2694">DC-RDA</a> list about whether <a href="http://docs.google.com/View?docid=dhpg2gtj_54fgnz8rfs">RDA properties</a> should reference literals or resources in descriptions. For example when describing an author you could use a literal:</p>
<pre>
Twain, Mark, 1835-1910
</pre>
<p>or a resource:</p>
<pre>
http://lccn.loc.gov/n79021164
</pre>
<p>There are some shades of gray in between (using blank nodes, auto-generated URIs, typed literals) but that's the basic gist of it. The discussion basically concerns what the DC-RDA Application Profile should allow. There seems to be two competing interests:</p>
<ol>
<li>perceived ease of migrating legacy data (MARC -> RDA)</li>
<li>perceived benefits to explicitly modeling the relationships found in bibliographic data</li>
</ol>
<p>More information can also be found in the blogs of <a href="http://kcoyle.blogspot.com/2008/01/more-on-rda-and-literals.html">Karen Coyle</a> and <a href="http://jonphipps.wordpress.com/2008/03/16/simple-dc-and-rda/">Jon Phipps</a>.</p>
<p>My personal opinion is that RDA should take the high road on this one and really drive home the <a href="http://en.wikipedia.org/wiki/Value_proposition">value proposition</a> for using resources wherever possible, modeling relationships in bibliographic data, and leveraging hundreds of years of work maintaining controlled vocabularies. This will have the positive side effect of pushing library controlled vocabularies (LCSH, name authority, language and geographic codes, etc.) into the open on the web. More importantly I think it will highlight what libraries (at their best) do best, for the larger semantic web and computing world. I think it's worth limping along a bit longer with MARC and waiting for RDA to actually "do the right thing".</p>
<p>How to do this effectively is another matter, and is really what the discussion is about. It's really nice to see people talking openly about these issues.</p>
<p><em>(PS, using an author isn't a particularly good example because I don't see it in the current <a href="http://docs.google.com/View?docid=dhpg2gtj_54fgnz8rfs">list</a> of RDA properties...)</em></p>
<p><em>(PSS, no that lccn url doesn't currently resolve (it does for bibliographic records, but not authority) or return rdf (hopefully someday))</em></p>
