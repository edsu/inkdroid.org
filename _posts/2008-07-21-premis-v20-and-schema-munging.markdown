---
layout: post
status: publish
published: true
title: premis v2.0 and schema munging
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 209
wordpress_url: http://inkdroid.org/journal/?p=209
date: '2008-07-21 19:14:17 +0000'
date_gmt: '2008-07-22 02:14:17 +0000'
tags:
- rdf
- premis
- relaxng
- schemas
- java
- bash
comments:
- id: 67675
  author: John Cowan
  author_email: cowan@ccil.org
  author_url: http://www.ccil.org/~cowan
  date: '2008-07-21 20:38:31 +0000'
  date_gmt: '2008-07-22 03:38:31 +0000'
  content: Trang is intended to produce a conversion that's isomorphic to the original,
    whereas the MSV produces a conversion that's equivalent only in effect.  Nobody
    has written an isomorphism-preserving input module for XSD; I suspect that if
    James considered it too hard, nobody else has wanted to bother trying.  Jing uses
    Xerces directly for XSD validation, bypassing the RNG engine altogether.
- id: 68700
  author: inkdroid &raquo; Blog Archive &raquo; RepoCamp recap
  author_email: ''
  author_url: http://inkdroid.org/journal/2008/07/28/repocamp-recap/
  date: '2008-07-28 06:29:44 +0000'
  date_gmt: '2008-07-28 13:29:44 +0000'
  content: "[...] inkdroid beep beep      &laquo; premis v2.0 and schema munging [...]"
---

<p>In an effort to get a better understanding of <a href="http://www.loc.gov/standards/premis/">PREMIS</a> after reading about the <a href="http://listserv.loc.gov/cgi-bin/wa?A2=ind0807&L=pig&T=0&P=152">v2.0 release</a>, I dug around for 5 minutes looking for a way to convert an XML Schema to RelaxNG. The theory being that the compact syntax of RelaxNG would be easier to read than the XSD.</p>
<p>I ended up with a little hack suggested <a href="http://web.archive.org/web/20120509194237/http://postneo.com/2007/01/16/all-i-want-to-do-is-convert-my-schema">here</a> to chain together the rngconv from the <a href="http://web.archive.org/web/20070630182011/https://msv.dev.java.net/">Multi-Schema Validator</a> and James Clarke's <a href="http://www.thaiopensource.com/relaxng/trang.html">Trang</a>, which oddly can't read an XSD as input.</p>
<pre lang="bash">
#!/bin/bash

for i in $*
do
  BN=$(basename $i .xsd)
  java -jar /opt/rngconv/rngconv.jar ${i} > /tmp/${BN}.rng
  java -jar /opt/trang/trang.jar -I rng -O rnc /tmp/${BN}.rng ${BN}.rnc
done
</pre>
<p>The resulting  RelaxNG can be seen <a href="http://inkdroid.org/data/premis.rnc">here</a>. As you can see I'm not sure it helps much...but it's a start I guess. I'm interested in looking at what it might take to sublimate an PREMIS RDF vocabulary (hopefully just RDFS?) out of the XSD, mainly because I <em>think</em> parts of the vocabulary could prove useful in <a herf="http://www.openarchives.org/ore/">OAI-ORE</a> resource maps.</p>
