---
layout: post
status: publish
published: true
title: the weight of legacy data
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 150
wordpress_url: http://www.inkdroid.org/journal/2007/05/20/the-weight-of-legacy-data/
date: '2007-05-20 12:30:19 +0000'
date_gmt: '2007-05-20 19:30:19 +0000'
tags: []
comments: []
---
<p>v0.97 of <a href="http://search.cpan.org/dist/marc-charset/">MARC::Charset</a> was just released with an important <a href="http://www.mail-archive.com/perl4lib%40perl.org/msg01143.html">bugfix</a>. If you've had the misfortune of needing to convert from <a href="http://www.loc.gov/marc/specifications/speccharmarc8.html">MARC-8</a> to UTF-8 and have used MARC::Charset &gt;= v0.8 to do it you may very well have null characters (0x00) in your UTF-8 data. Well, only if your MARC-8 data contained either of the following characters:</p>
<ul>
<li>DOUBLE TILDE, SECOND HALF / COMBINING DOUBLE TILDE RIGHT HALF</li>
<li>LIGATURE, SECOND HALF / COMBINING LIGATURE RIGHT HALF</li>
</ul>
<p>It turns out that the <a href="http://www.loc.gov/marc/specifications/codetables.xml">mapping file</a> kindly provided by the Library of Congress does not include UCS mapping values for these two characters, and instead relies on alternate values.</p>
<p>v0.97 now uses  the alternate value when  the ucs is not available...which is good going forward. But I am literally sad when I think about how this little bug has added to the noise of erroneous extant MARC data. Please accept my humble apologies--and hear my plea to for bibliographic data that starts in Unicode rather than MARC-8. I'll go further:</p>
<p><strong>Don't build systems that import/export MARC in transmission format anymore unless you absolutely have to. </strong></p>
<p>Use MARCXML, MODS, RDF, JSON, YAML or something else instead. I realize this is hardly news but it feels good to be saying it. If you're not convinced read Bill's <a href="http://www.frbr.org/2007/05/01/">Pride and Prejudice</a> installments. The library world needs to use common formats and encodings (with lots of tried/true tool sets)...and stop painting itself into a corner. <a href="http://web.archive.org/web/20071008115318/http://www.niso.org/standards/resources/Z39-2.pdf">Z39.2</a> has been hella useful for building up vast networks of data sharing libraries, but its time to leverage that data in ways that are more familiar to the networked world at large.</p>
<p>Many thanks to Michael O'Connor and Mike Rylander for discovering and resolving this bug.</p>
