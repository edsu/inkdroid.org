---
layout: post
status: publish
published: true
title: quite a patch
author:
  display_name: Administrator
  login: admin
  email: ed.summers@gmail.com
  url: http://www.inkdroid.org
author_login: admin
author_email: ed.summers@gmail.com
author_url: http://www.inkdroid.org
wordpress_id: 38
wordpress_url: http://www.inkdroid.org/journal/?p=38
date: '2005-10-13 12:10:42 +0000'
date_gmt: '2005-10-13 19:10:42 +0000'
tags: []
comments: []
---
<p>Since starting to use <a href="http://lucene.apache.org">lucene</a> heavily at work about a year ago I've been watching the lucene list out of the corner of my eye for tips and tricks. Today I saw an email go by that referenced a <a href="http://issues.apache.org/jira/browse/LUCENE-454">recent patch</a> that lazily creates SegmentMergeInfo.docMap objects. I guess the point isn't so much what the object is, but the mere change in lazily creating the object yielded some pretty impressive performance gains:</p>
<pre>
<blockquote>
Performance Results:
A simple single field index with 555,555 documents, and 1000 random 
deletions was queried 1000 times with a PrefixQuery matching a single document.

Performance Before Patch:
  indexing time = 121,656 ms
  querying time = 58,812 ms

Performance After Patch:
  indexing time = 121,000 ms
  querying time = 598 ms

A 100 fold increase in query performance! 
</blockquote>
</pre>
<p>Umm, 100 fold increase in performance. That's quite a patch!</p>
