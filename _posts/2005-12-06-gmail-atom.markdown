---
layout: post
status: publish
published: true
title: gmail + atom
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 51
wordpress_url: http://www.inkdroid.org/journal/?p=51
date: '2005-12-06 08:56:21 +0000'
date_gmt: '2005-12-06 15:56:21 +0000'
tags: []
comments: []
---

<p>I imagine this is old hat to long time <a href="http://gmail.com">gmail</a> users but I just noticed that my gmail is available via atom...and very easily at that with Mark Pilgrim's <a href="http://feedparser.org/">Universal Feed Parser</a>.</p>
<pre lang="python">
    import feedparser

    feed = feedparser.parse(
        'https://username:password' + 
        '@gmail.google.com/gmail/feed/atom')

    for entry in feed.entries:
        print entry.title
</pre>
