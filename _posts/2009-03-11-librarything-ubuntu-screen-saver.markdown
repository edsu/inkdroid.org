---
layout: post
status: publish
published: true
title: 'LibraryThing Ubuntu Screen Saver '
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 858
wordpress_url: http://inkdroid.org/journal/?p=858
date: '2009-03-11 11:55:20 +0000'
date_gmt: '2009-03-11 18:55:20 +0000'
tags:
- libraries
- python
- librarything
- ubuntu
- images
comments:
- id: 81374
  author: David Brunton
  author_email: ''
  author_url: https://www.google.com/accounts/o8/id?id=AItOawkSlg8D1WWGgYFINCTBA1lRQZY4vmBFUyU
  date: '2009-03-11 12:05:55 +0000'
  date_gmt: '2009-03-11 19:05:55 +0000'
  content: Dear $techlead, the fact that I happened to be on google reader when this
    post came through should not be noted too closely either ;)
---

<p>I read about the <a href="http://www.librarything.com/blog/2009/03/librarything-mac-screensaver_11.php">LibraryThing Mac Screensaver</a> and of course wanted the same thing for my Ubuntu workstation at $work. Naturally, I'm supposed to be working on some high-priority tickets on a tight deadline...so I started to work right away on how to do this. Your tax dollars at work, etc...</p>
<p>I'm sure that there's a much more elegant way of doing this, but I basically created a simple python program <a href="http://web.archive.org/web/20101216223621/http://inkdroid.org/bzr/bin/extract-images">extract-images</a> that will pull image urls out of arbitrary text, suck down the images, and dump them to a directory. This can be combined with cron and the standard GLSlideshow screensaver, which displays a slideshow of images in a particular directory.</p>
<p>So you just download <a href="http://web.archive.org/web/20101216223621/http://inkdroid.org/bzr/bin/extract-images">extract-images</a>, put it in your path, add a crontab entry like (substituting edsu for your LibraryThing username):</p>
<pre>
00 14 * * * extract-images http://www.librarything.com/labs-screensaver.php?userid=edsu /home/ed/Pictures/covers
</pre>
<p>And then tell GLSlideshow where your images are by adding this to your ~/.xscreensaver</p>
<pre>
imageDirectory:   /home/ed/Pictures/covers
chooseRandomImages:   True
</pre>
<p><a href="http://inkdroid.org/images/screensaver-screenshot.png"><img src="http://inkdroid.org/images/screensaver-screenshot-small.png" width="450" /></a></p>
<p>Dear $manager, it really didn't take me that long to do this. Honest!</p>
