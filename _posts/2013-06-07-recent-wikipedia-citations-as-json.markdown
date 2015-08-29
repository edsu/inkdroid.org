---
layout: post
status: publish
published: true
title: recent Wikipedia citations as JSON
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 5735
wordpress_url: http://inkdroid.org/journal/?p=5735
date: '2013-06-07 10:49:26 +0000'
date_gmt: '2013-06-07 17:49:26 +0000'
tags:
- nodejs
- streaming
comments: []
---
<p>Here is a little webcast about some <a href="http://github.com/edsu/wikicites">work in progress</a> to stream recent citations out of Wikipedia. It uses previous work I did on the <a herf="https://npmjs.org/package/wikichanges">wikichanges</a> Node library. Beware, I say "um" and "uh" a lot while showing you my terminal window. This idea could very well be brain damaged since it pings the Wikipedia API for the diff of each change in selected Wikipedias, to see if it contains one or more citations. On the plus side, it emits the citations as JSON, which is suitable for downstream apps of some dimensions, which I haven't thought much about yet. Get in touch if you have some ideas.</p>
<p>https://vimeo.com/67893886</p>
