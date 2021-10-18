---
layout: post
status: publish
published: true
title: MARC::Record v2.0 RC1
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 10
wordpress_url: http://www.inkdroid.org/journal/?p=10
date: '2005-05-20 13:52:39 +0000'
date_gmt: '2005-05-20 20:52:39 +0000'
tags: []
comments: []
---

<p>Thanks to the support of Anne Highsmith at Texas A&M MARC::Record v2.0 RC1 was released today to <a href="http://www.sf.net/projects/marcpm">sourceforge</a>. This new version of MARC::Record addresses the use of Unicode in MARC records. There has been a long standing <a href="http://rt.cpan.org/NoAuth/Bug.html?id=3707">bug</a> in MARC::Record which caused it to calculate record directories incorrectly when the records contained Unicode. This isn't hitting CPAN yet so that the people who want Unicode handling can take it for a test drive first. As noted previously this Perl/Unicode stuff is pretty tricky since most of the time the encoding of a scalar variable is sort of hidden from view. I'd much prefer to be in a situation like in Java where all strings are UTF-8.</p>
