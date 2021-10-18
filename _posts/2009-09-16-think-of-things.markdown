---
layout: post
status: publish
published: true
title: Think of Things
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 1245
wordpress_url: http://inkdroid.org/journal/?p=1245
date: '2009-09-16 19:32:00 +0000'
date_gmt: '2009-09-17 02:32:00 +0000'
tags:
- rdfa
- books
- pooh
comments: []
---

<div xmlns:bibo="http://purl.org/ontology/bibo/" xmlns:dct="http://purl.org/dc/terms/" xmlns:foaf="http://xmlns.com/foaf/0.1/">
<a about="http://covers.openlibrary.org/b/olid/OL619435M-M.jpg" rel="foaf:depicts" href="http://openlibrary.org/b/OL619435M"><img src="http://covers.openlibrary.org/b/olid/OL619435M-M.jpg" style="float: left; margin-right: 15px;"/></a></p>
<blockquote about="#thingQuote" typeof="bibo:Quote">
<p id="thingQuote" property="bibo:content">
Pooh began to feel a little more comfortable, because when you are a Bear of Very Little Brain, and you Think of Things, you find sometimes that a Thing which seemed very Thingish inside you is quite different when it gets out into the open and has other people looking at it.</p>
<p><cite><a rel="dct:source" href="http://openlibrary.org/b/OL619435M">The Complete Tales of Winnie-the-Pooh</a></cite> p. <span property="bibo:pages">266</span>
</p></blockquote>
</div>
<p></p>
<p>This page sent through the <a href="http://www.w3.org/2007/08/pyRdfa/extract?format=xml&uri=http://inkdroid.org/journal/2009/09/16/think-of-things/">RDFa Distiller</a> yields some quotation data marked up with the <a href="http://bibliontology.com/">Bibliographic Ontology</a>, <a href="http://dublincore.org/documents/dcmi-terms/">Dublin Core</a> and <a href="http://xmlns.com/foaf/spec/">FOAF</a> vocabularies:</p>
<pre>
@prefix bibo: &lt;http://purl.org/ontology/bibo/&gt; .
@prefix dct: &lt;http://purl.org/dc/terms/&gt; .
@prefix foaf: &lt;http://xmlns.com/foaf/0.1/&gt; .

&lt;http://covers.openlibrary.org/b/olid/OL619435M-M.jpg&gt; foaf:depicts &lt;http://openlibrary.org/b/OL619435M&gt; .

&lt;http://inkdroid.org/journal/2009/09/16/think-of-things/#thingQuote&gt; a bibo:Quote ;
     dct:source &lt;http://openlibrary.org/b/OL619435M&gt; ;  
     bibo:content """Pooh began to feel a little more comfortable, because when you are a Bear of Very Little Brain, and you Think of Things, you find sometimes that a Thing which seemed very Thingish inside you is quite different when it gets out into the open and has other people looking at it."""@en ;
     bibo:pages "266"@en .
</pre>
