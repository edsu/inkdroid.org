---
layout: post
status: publish
published: true
title: freebase and linked-data
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 479
wordpress_url: http://inkdroid.org/journal/?p=479
date: '2008-10-29 07:32:08 +0000'
date_gmt: '2008-10-29 14:32:08 +0000'
tags:
- rdf
- semweb
- linked-data
- freebase
- turtle
comments:
- id: 77088
  author: The Semantic Puzzle | The Day after Freebase went RDF
  author_email: ''
  author_url: http://blog.semantic-web.at/2008/10/30/the-day-after-freebase-went-rdf/
  date: '2008-10-30 02:44:37 +0000'
  date_gmt: '2008-10-30 09:44:37 +0000'
  content: "[...] and useful machine APIs.&#8221; This is followed up by quick and
    handy tutorial how you can get machine readable data back from freebase using
    a URI with Freebase. Conclusion: So why is this important? Because following your
    nose in HTML is what [...]"
---

<p>Ok, this is pretty big <a href="http://lists.w3.org/Archives/Public/public-lod/2008Oct/0047.html">news</a> for linked data folks, and for semweb-heads in general. <a href="http://freebase.com">Freebase</a> is <a href="http://blog.freebase.com/2008/10/30/introducing_the_rdf_service/">now</a> a <a href="http://rdf.freebase.com">linked-data target</a>. This is important news because Freebase is an active community of content creators, creating rich data-centric descriptions with a wiki style interface, fancy data loaders, and useful machine APIs. </p>
<p>The web2.0-meets-semweb space is also being explored by folks like <a href="http://www.talis.com/platform/">Talis</a>. It'll be interesting to see how this plays out--particularly in light of SPARQL adoption, which I remain kind of neutral about for some undefined, wary, spooky reason. I get the idea of web resources having data views. It seems like a logical, "one small step for an web agent, one giant leap for the web". But queryability with SPARQL sounds like something to push off, particularly if you've already got a <a href="http://freebase.com/opensearch.xml">search api</a> that could be hooked up to the data views.</p>
<p>At any rate, what this announcement means is that you can get machine readable data back from freebase using a URI. The descriptions then use more URIs, which you can then follow-your-nose to, and get more machine readable data. So if you are on a page like:</p>
<blockquote><p>
<a href="http://www.freebase.com/view/en/tim_berners-lee">http://www.freebase.com/view/en/tim_berners-lee</a>
</p></blockquote>
<p>you can construct a URL for Tim Berners-Lee like this:</p>
<blockquote><p>
  <a href="http://rdf.freebase.com/ns/en.tim_berners-lee">http://rdf.freebase.com/ns/en.tim_berners-lee</a>
</p></blockquote>
<p>Then you resolve that URL asking for <code>application/turtle</code> (you could ask for <code>application/rdf+xml</code> but I find the turtle more readable).</p>
<pre>
curl --location --header "Accept: application/turtle" http://rdf.freebase.com/ns/en.tim_berners-lee
</pre>
<p>And you'll get back a description like <a href="http://inkdroid.org/data/tbl-freebase.txt">this</a>. There's a lot of useful data there, but the interesting part for me is the follow-your-nose effect where you can see an assertion like:</p>
<pre>
 &lt;http://rdf.freebase.com/ns/en.tim_berners-lee&gt;   
     &lt;http://rdf.freebase.com/ns/influence.influence_node.influenced_by&gt;
     &lt;http://rdf.freebase.com/ns/en.ted_nelson&gt; .
</pre>
<p>And you can then go look up Ted Nelson using that URI:</p>
<pre>
  curl --location --header "Accept: application/turtle" http://rdf.freebase.com/ns/en.ted_nelson
</pre>
<p>And get another chunk of <a href="http://inkdroid.org/data/tednelson-freebase.txt">data</a> which includes this assertion: </p>
<pre>
 &lt;http://rdf.freebase.com/ns/en.ted_nelson&gt;
     &lt;http://rdf.freebase.com/ns/influence.influence_node.influenced_by&gt;
     &lt;http://rdf.freebase.com/ns/en.vannevar_bush&gt; .
</pre>
<p>And you can then continue following your nose to:</p>
<blockquote><p>
<a href="http://rdf.freebase.com/ns/en.vannevar_bush">http://rdf.freebase.com/ns/en.vannevar_bush</a>
</p></blockquote>
<p>Lather, rinse, repeat.</p>
<p>So why is this important? Because following your nose in HTML is what enabled companies like Lycos, AltaVista, Yahoo and Google to be born. It allowed for agents to be able to crawl the web of documents and build indexes of the data to allow people to find what they want (hopefully). Being able to link data in this way allows us to harvest data assets across organizational boundaries and merge them together. It's early days still, but seeing an organization like Freebase get it is pretty exciting.</p>
<p>Oh, there are a few little <a href="http://lists.freebase.com/pipermail/developers/2008-October/002210.html">rough spots</a> which probably should be ironed out ... but when is that ever not the case eh? Inspiring stuff.</p>
