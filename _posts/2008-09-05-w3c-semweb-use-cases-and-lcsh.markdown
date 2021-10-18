---
layout: post
status: publish
published: true
title: w3c semweb use cases and lcsh
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 341
wordpress_url: http://inkdroid.org/journal/?p=341
date: '2008-09-05 13:12:16 +0000'
date_gmt: '2008-09-05 20:12:16 +0000'
tags:
- rdfa
- lcsh
- dublincore
- semweb
- foaf
- rds
- bibo
comments: []
---

<p>Via <a href="http://www.w3.org/People/Ivan/">Ivan Herman</a> I learned that the <a href="http://www.w3.org/2001/sw/sweo/public/UseCases/">Semantic Web Use Cases</a> use concepts from <a href="http://web.archive.org/web/20130812145007/http://lcsh.info/">lcsh.info</a>. For example look at the RDFa in <a href="http://www.w3.org/2001/sw/sweo/public/UseCases/NRK/">this</a> case study for the Digital Music Archive for the Norwegian National Broadcaster. You can also look at the Document metadata in a linked data browser like <a href="http://demo.openlinksw.com/rdfbrowser/?uri=http%3A//www.w3.org/2001/sw/sweo/public/UseCases/NRK/">OpenLink</a>. Click on the "Document" and then on the various subject "concepts" and you'll see the linked data browser go out and fetch the triples from lcsh.info for "Semantic Web" and "Broadcasting".</p>
<p>One of the downsides to linked-data browsers (for me) is that they hide a bit of what's going on. Of course this is by-design. For a more rdf centric view on the data take a look at this output of <a href="http://librdf.org/raptor/rapper.html">rapper</a>.</p>
<pre>
ed@curry:~$ rapper -o turtle http://www.w3.org/2001/sw/sweo/public/UseCases/NRK/
rapper: Serializing with serializer turtle
@prefix rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt; .
@prefix bibo: &lt;http://purl.org/ontology/bibo/&gt; .
@prefix dc: &lt;http://purl.org/dc/terms/&gt; .
@prefix foaf: &lt;http://xmlns.com/foaf/0.1/&gt; .
@prefix rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt; .
@prefix xhv: &lt;http://www.w3.org/1999/xhtml/vocab#&gt; .
@prefix xml: &lt;http://www.w3.org/XML/1998/namespace&gt; .
@prefix xsd: &lt;http://www.w3.org/2001/XMLSchema#&gt; .

&lt;http://www.w3.org/2001/sw/sweo/public/UseCases/NRK/&gt;
    a bibo:Document;
    dc:rights "\u00A9 Copyright 2007, ESIS, NRK."@en-us;
    dc:subject &lt;http://lcsh.info/sh85017004#concept&gt;, &lt;http://lcsh.info/sh2002000569#concept&gt;;
    dc:date "2007-09"^^xsd:dateTime;
    dc:title "Case Study: A Digital Music Archive (DMA) for the Norwegian National Broadcaster (NRK) using Semantic Web techniques"@en-us;
    bibo:distributor &lt;http://www.w3.org/&gt;;
    bibo:authorList (
        [
            a foaf:Person;
            foaf:workplaceHomepage &lt;http://www.esis.no&gt;;
            foaf:name "Dr. Robert H.P. Engels"@nl
        ]
        [
            a foaf:Person;
            foaf:workplaceHomepage &lt;http://www.nrk.no&gt;;
            foaf:name "Jon Roar T\u00F8nnesen"@no
        ]
    ) .

&lt;http://www.w3.org/2001/sw/sweo/public/UseCases/NRK/Overview.html&gt;
    xhv:stylesheet &lt;http://www.w3.org/2001/sw/sweo/public/UseCases/style/ucstyle.css&gt; .
</pre>
<p>You can see Ivan's using the dc, foaf, skos and bibo vocabularies, and the links out lcsh Concepts. Fun stuff.</p>
