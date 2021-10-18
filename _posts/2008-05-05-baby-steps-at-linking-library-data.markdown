---
layout: post
status: publish
published: true
title: baby steps at linking library data
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 197
wordpress_url: http://inkdroid.org/journal/?p=197
date: '2008-05-05 20:53:10 +0000'
date_gmt: '2008-05-06 03:53:10 +0000'
tags:
- rdf
- skos
- dublincore
- semweb
comments:
- id: 61326
  author: Danny
  author_email: danny.ayers@gmail.com
  author_url: http://dannyayers.com
  date: '2008-05-06 03:58:19 +0000'
  date_gmt: '2008-05-06 10:58:19 +0000'
  content: "I just did a slicehost upgrade, and thought something had broken because
    all I could see over <a href=\"http://hyperdata.org/raw/\" rel=\"nofollow\">here</a>
    was your first paragraph then blank...\r\n...scroll...what a diagram :-)\r\n\r\nbtw,
    nice work!"
- id: 61330
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2008-05-06 05:12:05 +0000'
  date_gmt: '2008-05-06 12:12:05 +0000'
  content: d'oh, I just updated the post to use a link out to the img, instead of
    including it inline (it scaled poorly anyway) ... thanks for the heads up about
    the Linked Data Planet!
- id: 61335
  author: Bruce D'Arcus
  author_email: bdarcus@gmail.com
  author_url: ''
  date: '2008-05-06 06:37:50 +0000'
  date_gmt: '2008-05-06 13:37:50 +0000'
  content: I'm wondering about the "#manifestation" bit myself, and if Ian Davis has
    any thoughts.
---

<p><a href="http://purl.org/net/aliman">Alistair</a> wanted to have some data to demonstrate the potential of linked library data, so I quickly converted 10K MARC records (using a slightly <a href="http://web.archive.org/web/20101216220649/http://inkdroid.org/bzr/marc-rdf/MARC21slim2RDFDC.xsl">modified</a> version of <a href="http://www.loc.gov/standards/marcxml/xslt/MARC21slim2RDFDC.xsl">MARC21slim2RDFDC.xsl</a>  and rewrote the subjects as <a href="http://web.archive.org/web/20130812145007/http://lcsh.info/">lcsh.info</a> URIs using a few lines of <a href="http://web.archive.org/web/20101216220710/http://inkdroid.org/bzr/marc-rdf/rewrite.py">python</a>...all a bit hackish, but it got this particular job done quickly.</p>
<p>The rewriting of subjects is basically a transformation of:</p>
<pre>
&lt;http://lccn.loc.gov/00009010#manifestation&gt;
  dc:creator "Rollo, David.";
  dc:date "c2000." ;
  dc:description "Includes bibliographical references (p. 173-223) and index." ;
  dc:identifier 
     "URN:ISBN:0816635463 (alk. paper)", 
     "URN:ISBN:0816635471 (pbk. : alk. paper)", 
     "http://www.loc.gov/catdir/toc/fy032/00009010.html" ;
  dc:language "eng" ;
  dc:publisher "Minneapolis : University of Minnesota Press," ;
  dc:subject 
    "Anglo-Norman literature", 
    "Benoi?t, de Sainte-More, 12th cent.", 
    "Latin prose literature, Medieval and modern", 
    "Literacy", 
    "Literature and history", 
    "Magic in literature." ;
  dc:title "Glamorous sorcery : magic and literacy in the High Middle Ages /" ;
  dc:type "text" .
</pre>
<p>to:</p>
<pre>
&lt;http://lccn.loc.gov/00009010#manifestation&gt;
    dc:creator "Rollo, David." ;
    dc:date "c2000." ;
    dc:description "Includes bibliographical references (p. 173-223) and
index." ;
    dc:identifier "URN:ISBN:0816635463 (alk. paper)", "URN:ISBN:0816635471 (pbk. : alk. paper)", "http://www.loc.gov/catdir/toc/fy032/00009010.html" ;
    dc:language "eng" ;
    dc:publisher "Minneapolis : University of Minnesota Press," ;
    dc:subject &lt;http://lcsh.info/sh85005082#concept&gt;,
      &lt;http://lcsh.info/sh85077482#concept&gt;,
      &lt;http://lcsh.info/sh85077565#concept&gt;,
      &lt;http://lcsh.info/sh85079624#concept&gt;,
      &lt;http://lcsh.info/sh86008161#concept&gt;, 
      "Benoi?t, de Sainte-More, 12th cent." ;
    dc:title "Glamorous sorcery : magic and literacy in the High Middle Ages
/" ;
    dc:type "text" .
</pre>
<p>Clearly there are lots of ways to improve even this simplified description: URIs for entries in the Name Authority File, referencing identifiers as resources rather than string literals (an artifact of the XSLT transform), removing ISBD punctuation, unicode normalization (&amp;cough;), etc.</p>
<p>You may notice I kind of fudged the URI for the book itself using the LCCN service at LC: <a href="http://lccn.loc.gov/00009010#manifestation">http://lccn.loc.gov/00009010#manifestation</a> (which does resolve, but doesn't serve up RDF yet). I'm no FRBR expert so I'm not sure if the use of "manifestation" in this hash URI makes sense. I just wanted to distinguish between the URI for the description, and the URI for the thing being described. I think it's high time for me to understand FRBR a lot more.</p>
<p>If you prefer diagrams to turtle <a href="http://inkdroid.org/images/bib-lcsh.png">here</a> is a graph visualization from the w3c rdf validator for the record.</p>
