---
layout: post
status: publish
published: true
title: MARC, Perl and Unicode
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 5
wordpress_url: http://www.inkdroid.org/journal/?p=5
date: '2005-05-05 20:33:17 +0000'
date_gmt: '2005-05-06 03:33:17 +0000'
tags: []
comments: []
---

<p>I've been doing some work for <a href="http://web.archive.org/web/20080521042856/http://library.tamu.edu:80/portal/site/Library">Texas A&amp;M</a> who need a <a href="http://search.cpan.org/dist/MARC-Record">MARC::Record</a> module that is Unicode safe. Many ILS vendors are moving away from MARC-8 encoded records towards Unicode. No doubt this move is being spurred on by big players like OCLC who are moving (or have moved) their mammoth <a href="http://www.oclc.org/worldcat/default.htm">WorldCat</a> database to Unicode.</p>
<p>At any rate Texas A&amp;M have workflows that use MARC::Record for transforming records in their catalog and they need the Unicode support for their new Voyager system. Technically there were very few places where MARC::Record needed to be adjusted. The <a href="http://rt.cpan.org/NoAuth/Bug.html?id=3707">problem</a> is that the antiquated transmission format for MARC records uses byte lengths in the so called directory, as offsets into the record. MARC::Record uses length() and substr() to create and work with the directory...which works fine when 1 character equals 1 byte. However, Unicode characters can have multiple bytes per character...so the character oriented length() will create faulty record directories, and substr() will extract data from the rest of the record incorrectly.</p>
<p>Fortunately there is the bytes pragma which alters the behavior of various character oriented Perl functions. Unfortunately these functions were added to Perl relatively recently, so this new version of MARC::Record will require Perl >= v5.8.2. Technically it could run on 5.8.1, however I found that the 5.8.1 that ships with OS X 10.3 lacks the bytes::substr(). Not only that but if you <a href="http://groups-beta.google.com/group/perl.unicode/browse_frm/thread/87bc31c03bbaa305/5fcbeb78c003164e?q=ed+summers&rnum=2#5fcbeb78c003164e">try</a>  to call a non existent function in the bytes namespace you'll go into an infinite loop. This is even the case with Perl 5.8.6 as well.</p>
<p>All in all I really have come to dislike Perl's Unicode support. The magical utf8 flag on scalars has a tendency to pop on and off for obscure reasons. And I've found the behavior of bytes::length() to be a bit unpredictable. Surely this is because I don't fully understand the mechanics involved, but judging from the traffic on perl-unicode I'm not the only one who has struggled with it.  My experience using unicode in Java and Python has been much more pleasant, and really confirms my decision to move towards doing new work in these languages.  Perl has served me well, and there are some things I really love about the language, but these nasty corners are a bit scary.</p>
