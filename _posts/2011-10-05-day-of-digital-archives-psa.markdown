---
layout: post
status: publish
published: true
title: day of digital archives psa
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 3776
wordpress_url: http://inkdroid.org/journal/?p=3776
date: '2011-10-05 23:27:04 +0000'
date_gmt: '2011-10-06 06:27:04 +0000'
tags:
- bagit
- ruby
- github
- open-source
comments:
- id: 85137
  author: google.com/accounts/o8&hellip;
  author_email: escowles@gmail.com
  author_url: https://www.google.com/accounts/o8/id?id=AItOawnRoh7CeQbGMWiVdLwVBme63nx9rWs4fac
  date: '2011-10-06 05:51:27 +0000'
  date_gmt: '2011-10-06 12:51:27 +0000'
  content: thank you.  i'd seen your exchange about the different versions of the
    ruby bagit library, and hadn't gotten the message that i needed to add a Bag-Software-Agent
    field in the bags i'm generating.
- id: 85138
  author: bibwild.wordpress.com/
  author_email: rochkind@jhu.edu
  author_url: http://bibwild.wordpress.com/
  date: '2011-10-06 10:52:05 +0000'
  date_gmt: '2011-10-06 17:52:05 +0000'
  content: "Oh man, \"just ignore it\" makes the SHA1 hash useless, which, since you
    don't know on which files it should be ignored and which it shouldn't, makes it
    unreliable on your whole corpus, which kind of seriously reduces the preservation
    capacity of your entire archive. \r\n\r\nIt's sort of like ignoring security warnings
    in your browser. If you ignore them, then you don't have security anymore. Which
    may be a trade-off you're willing to take as an individual user when having security
    is way too annoying and all you're going to potentially harm is your own workstation.
    \r\n\r\nBut a preservation archive where you can't tell if your data has been
    corrupted or not?  I'm not sure why anyone saying \"ignore it\" is using BagIt
    in the first place then!"
- id: 85139
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2011-10-06 11:52:35 +0000'
  date_gmt: '2011-10-06 18:52:35 +0000'
  content: 'Yes, I should''ve added that I plan on deleting the invalid manifests.
    We still have manifest-md5.txt files that are legit, and will suffice I think.
    Also, having a record of the files that are in the bag is still minimally useful
    I suppose--even if their fixity is incorrect. '
---

<p>Today is <a href="http://dayofdigitalarchives.blogspot.com/">Day of Digital Archives</a> day and I had this semi-thoughtful post written up about <a href="http://en.wikipedia.org/wiki/BagIt">BagIt</a> and how it's a brain dead simple format to use to package up your files so that you'll know if you still have them 5 minutes, 5 hours, 5 days, 5 years, maybe even 5 decades from now--if the notion of directories and files persists that long. </p>
<p>But I deleted that...you're welcome...</p>
<p>I was also going to write about how in a fit of web <a href="http://en.wikipedia.org/wiki/Performance_art">performance art</a> <a href="http://en.wikipedia.org/wiki/Mark_Pilgrim_(software_developer)">Mark Pilgrim</a> recently deleted his online presence, including various extremely useful opensource tools, and several popular online books, only to see them re-materialize on the Web at new locations.</p>
<p>But I deleted most of that too...you're welcome again!</p>
<p>Here's a public service announcement instead. If you happen to use Franco Lazzarino's <a href="https://github.com/tipr/bagit">Ruby BagIt Library</a> to create bags that contains largish files (> 500MB), you might have accidentally created bad SHA1 manifests. I added a test, and fixed the bug with help from <a href="http://twitter.com/anarchivist">Mark Matienzo</a> and <a href="https://twitter.com/mbklein">Michael Klein</a>, and sent a <a href="https://github.com/tipr/bagit/pull/4">pull request</a>. It hasn't been applied yet, so here's to hoping it will.</p>
<p>At $mpow we've been getting terabytes of data from this social media company that has been bagging their data using this Ruby library. Many of the files are multi-gigabytes gzip compressed. And many of the bags now have bad SHA1 manifests. The social media company wasn't sure what the problem was, and told us just to ignore the SHA1 manifests. Which is easy enough to do.</p>
<p>It seems like no matter how simple the spec, it's easy to create bugs. If you create bags, throw <code>Bag-Software-Agent</code> into your bag-info.txt...you never know who might find it useful.</p>
