---
layout: post
status: publish
published: true
title: geocoder and rdf
author:
  display_name: Administrator
  login: admin
  email: ed.summers@gmail.com
  url: http://www.inkdroid.org
author_login: admin
author_email: ed.summers@gmail.com
author_url: http://www.inkdroid.org
wordpress_id: 36
wordpress_url: http://www.inkdroid.org/journal/?p=36
date: '2005-10-05 21:05:24 +0000'
date_gmt: '2005-10-06 04:05:24 +0000'
tags: []
comments:
- id: 4
  author: ksclarke
  author_email: ksclarke@princeton.edu
  author_url: http://www.kevinclarke.info/weblog/
  date: '2005-10-06 06:51:19 +0000'
  date_gmt: '2005-10-06 13:51:19 +0000'
  content: "We're not so far apart on this issue.  That next to the last paragraph
    is all I was saying :-)\r\n\r\nRDF, or any XML, is more explicit.  Until there
    are programs that follow lines of reference (and they are used in the wild), RDF
    is just another standardized XML... a matter of taste, as you say."
---
<p>While <a href="http://mail.pm.org/pipermail/chicago-talk/2005-October/002532.html">fielding </a> a question on a local Perl list this weekend I ran across some more RDF alive and kicking in the very useful <a href="geocoder.us">geocoder.us</a> service. They have a nice RESTful web service, which allows you to drop an address or intersection into a URL like:</p>
<p><a href="http://rpc.geocoder.us/service/rest?address=1340%20Ridgeview%20Drive%20McHenry%2C%20Illinois%2060050">http://rpc.geocoder.us/service/rest?address=<br />1340%20Ridgeview%20Drive%20McHenry%2C%20Illinois%2060050</a></p>
<p>and get back the longtitude and latitude in a chunk of RDF like:</p>
<pre>
<code>
&lt;?xml version=&quot;1.0&quot;?&gt;
&lt;rdf:RDF
  xmlns:dc=&quot;http://purl.org/dc/elements/1.1/&quot;
  xmlns:geo=&quot;http://www.w3.org/2003/01/geo/wgs84_pos#&quot;
  xmlns:rdf=&quot;http://www.w3.org/1999/02/22-rdf-syntax-ns#&quot;&gt;

&lt;geo:Point rdf:nodeID=&quot;aid87293465&quot;&gt;
    
    &lt;dc:description&gt;899 Ridgeview Dr, McHenry IL 60050&lt;/dc:description&gt;
    &lt;geo:long&gt;-88.291658&lt;/geo:long&gt;
    &lt;geo:lat&gt;42.314936&lt;/geo:lat&gt;

&lt;/geo:Point&gt;


&lt;/rdf:RDF&gt;  
</code>
</pre>
<p>Of course this data could be encoded in comma-separated-values, in fact they have a similar RESTful service that does just that:</p>
<p><a href="http://rpc.geocoder.us/service/csv?address=1340%20Ridgeview%20Drive%20McHenry%2C%20Illinois%2060050">http://rpc.geocoder.us/service/csv?address=<br />1340%20Ridgeview%20Drive%20McHenry%2C%20Illinois%2060050</a></p>
<p>which returns:</p>
<pre>
<code>
42.314936,-88.291658,899 Ridgeview Dr,McHenry,IL,60050
</code>
</pre>
<p>Does this mean RDF isn't necessary? For someone who is just querying geocoder.us directly and knows what the output is I guess the RDF doesn't really add that much value. My coworker Bill likes to talk about being explicit in code whenever possible, and the RDF in this case is more explicit. Until there are programs that follow lines of inference using this data it's largely a matter of taste. It's nice that geocoder supports both world views. </p>
<p>And hats off to geocoder: they give away their <a href="http://search.cpan.org/dist/Geo-Coder-US/">software</a> and how they built the service to anyone who wants it. They provide expertise in using the data, and also offer commercial access to their web services which have the 10 second or so pause between requests disabled. What an interesting model for a company. Heck, wouldn't it be nice if <a href="http://www.oclc.org">OCLC</a> operated this way?</p>
