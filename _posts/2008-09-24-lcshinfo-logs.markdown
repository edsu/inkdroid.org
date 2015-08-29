---
layout: post
status: publish
published: true
title: lcsh.info logs
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 384
wordpress_url: http://inkdroid.org/journal/?p=384
date: '2008-09-24 00:50:55 +0000'
date_gmt: '2008-09-24 07:50:55 +0000'
tags: []
comments:
- id: 80888
  author: epugh
  author_email: epugh@opensourceconnections.com
  author_url: ''
  date: '2009-02-23 14:35:39 +0000'
  date_gmt: '2009-02-23 21:35:39 +0000'
  content: |
    <p>Ed,  I just went to lcsh.info looking to leverage it tie tags together by proximity on my project http://web.archive.org/web/20100325223647/http://www.hightechcville.com:80/ and much to my dismay, it's gone!  I wanted to comment but the comments are closed.  At any rate, do you have any suggestions on alternatives?  I want to connect people together based on how close their tags are.  So if I am tagged with "Java" and you are tagged with "Visual Basic", we share with one degree of seperation "Programming Languages" and therefore should chat.</p>
- id: 81188
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-03-06 06:58:32 +0000'
  date_gmt: '2009-03-06 13:58:32 +0000'
  content: Sounds like a perfect use case. Definitely check out dbpedia for this.
    Hopefully before too long id.loc.gov will be coming online.
---
<p>If you are curious how lcsh.info is being used I've made the <a href="http://logs.lcsh.info">apache server logs</a> available, including the ones for the sparql service. I've been meaning to do some analysis of the logs but haven't got the time yet. You'll notice that among the data that's collected is the Accept header sent by agents, since it's so important to what representation is served up. Thanks to <a href="http://danbri.org">danbri</a> for the idea to simply make them available.</p>
