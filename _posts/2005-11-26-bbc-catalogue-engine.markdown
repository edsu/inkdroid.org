---
layout: post
status: publish
published: true
title: BBC Catalogue's Search
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 47
wordpress_url: http://www.inkdroid.org/journal/?p=47
date: '2005-11-26 06:21:02 +0000'
date_gmt: '2005-11-26 13:21:02 +0000'
tags: []
comments: []
---

<p>I did end up hearing back from <a href="http://www.hackdiary.com/">Matt Biddulph</a> about the search technology that he's using with <a href="http://www.rubyonrails.org">RubyOnRails</a> to build the BBC Programme Catalogue.</p>
<blockquote><p>
The core of the search is nothing more than mysql 4.1's fulltext indexer. I used to think very poorly of it until I discovered how to turn off its automatic stoplist and minimum indexable word length, and started using its boolean mode. Having the database manage the indexing without having to keep a separate index in sync is very valuable, and of course it's portable to any client language.</p>
<p>The nice thing with a dataset the size and quality of the BBC's is that you're not solely dependent on the quality of the freetext indexer. I've done a little statistical analysis on the data to help with scoring the results. For example, programme contributors can be ranked according to how many shows they've contributed to, and commonly co-occurring contributors can be easily calculated with a bit of overnight batch processing. This kind of stuff contributes to a pretty good set of search results.
</p></blockquote>
<p>Given the visibility of the BBC Catalogue and that it has nearly a million records this says good things to me about the scalability of MySQL's <a href="http://dev.mysql.com/doc/refman/5.0/en/fulltext-search.html">fulltext search</a>. I'll definitely consider it along with <a href="http://web.archive.org/web/20110514072656/http://ferret.davebalmain.com/trac">Ferret</a> for Rails experiments that need search functionality.</p>
