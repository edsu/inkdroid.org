---
layout: post
status: publish
published: true
title: geeks bearing gifts
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 3084
wordpress_url: http://inkdroid.org/journal/?p=3084
date: '2011-03-22 06:51:09 +0000'
date_gmt: '2011-03-22 13:51:09 +0000'
tags:
- urls
- preservation
- identifiers
- ark
- purl
- doi
- handle
comments: []
---

<div style="float: right; margin-left: 15px; text-align: center;"><a href="http://commons.wikimedia.org/wiki/File:Trojan_Horse_in_Stuttgart_2001.jpg"><img src="http://inkdroid.org/images/trojan-horse-stuttgart.jpg" width="250" /></a><br /><a href="http://commons.wikimedia.org/wiki/File:Trojan_Horse_in_Stuttgart_2001.jpg">Trojan Horse in Stuttgart</a> by <a href="http://www.webkuehn.de/">Stefan Kühn</a></div>
<p>I recently received some correspondence about the <a href="http://n2t.net/ezid">EZID</a> identifier service from the <a href="http://www.cdlib.org/">California Digital Library</a>. EZID is a relatively new service that aims to help cultural heritage institutions manage their identifiers. Or as the EZID website says:</p>
<blockquote><p>
EZID (easy-eye-dee) is a service that makes it simple for digital object producers (researchers and others) to obtain and manage long-term identifiers for their digital content. EZID has these core functions:</p>
<p>Create a persistent identifier: DOI or ARK</p>
<ul>
<li>Add object location</li>
<li>Add metadata</li>
<li>Update object location</li>
<li>Update object metadata</li>
</ul>
</blockquote>
<p>I have some serious concerns about a group of cultural institutions relying on a single service like EZID for managing their identifier namespaces. It seems too much like a <a href="http://en.wikipedia.org/wiki/Single_point_of_failure">single point of failure</a>. I wonder, are there any plans to make the software available, and to allow multiple EZID servers to operate as peers? </p>
<p>URLs are a globally deployed identifier scheme that depend upon <a href="http://en.wikipedia.org/wiki/HTTP">HTTP</a> and <a href="http://en.wikipedia.org/wiki/Domain_Name_System">DNS</a>. These technologies have software implementations in many different computer languages, for diverse operating systems. Bugs and vulnerabilities associated with these software libraries are routinely discovered and fixed, often because the software itself is available as open source, and there are "many eyes" looking at the source code. Best of all, you can put a URL into your web browser (which are now ubiquitous), and view a document that is about the identified resource.</p>
<p>In my humble opinion, cultural heritage institutions should make every effort to work with the grain of the Web, and taking URLs seriously is a big part of that. I'd like to see more guidance for cultural heritage institutions on effective use of URLs, what Tim Berners-Lee has called <a href="http://www.w3.org/Provider/Style/URI">Cool URIs</a>, and what the Microformats and blogging community call <a href="http://en.wikipedia.org/wiki/Permalink">permalinks</a>. When systems are being designed or evaluated for purchase, we need to think about the URL namespaces that we are creating, and how we can migrate them forwards. Ironically, identifier schemes that don't fit into the DNS and HTTP landscape have their own set of risks; namely that organizations become dependent on niche software and services. Sometimes it's prudent (and cost effective) to seek safety in numbers. </p>
<p>I did not put this discussion here to try to shame CDL in any way. I think the EZID service is well intentioned, clearly done in good spirit, and already quite useful. But in the long run I'm not sure it pays for institutions to go it alone like this. As another crank (I mean this with all due respect) Ted Nelson <a href="http://geeks-bearing-gifts.com/">put it</a>:</p>
<blockquote><p>
Beware Geeks Bearing Gifts.
</p></blockquote>
<p>On the surface the EZID service seems like a very useful gift. But it comes with a whole set of attendant assumptions. Instead of investing time & energy getting your institution to use a service like EZID, I think most cultural heritage institutions would be better off thinking about how they manage their URL namespaces, and making resource metadata available at those URLs.</p>
