---
layout: post
status: publish
published: true
title: Gendered Archivist
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 5996
wordpress_url: http://inkdroid.org/journal/?p=5996
date: '2013-08-26 02:39:00 +0000'
date_gmt: '2013-08-26 09:39:00 +0000'
tags:
- python
- gender
- society-of-american-archivists
comments:
- id: 86681
  author: My Blog on Professional Blogs | jrynicki
  author_email: ''
  author_url: http://jrynicki.wordpress.com/2013/11/23/my-blog-on-professional-blogs/
  date: '2013-11-30 11:43:12 +0000'
  date_gmt: '2013-11-30 18:43:12 +0000'
  content: |
    [&#8230;] Summers, Ed (Aug. 26th 2013). Inkdroid: “Gendered Archivist” [Blog]. Retrieved from http://inkdroid.org/journal/2013/08/26/gendered-archivist/ [&#8230;]
---

<p>Over the past few years I've been trying to deepen my understanding of the literature of and about archives. My own MLIS education was heavy on libraries and light on archives; so I was really quite unaware of how rich the thinking about archives is...and how much more relevant it is for the work of digital preservation. </p>
<p>After not being a member of any professional organization for over ten years I joined the <a href="http://www.archivists.org/">Society of American Archivists </a>two years ago. I really enjoyed when the SAA's quarterly <a href="http://archivists.metapress.com/home/main.mpx">American Archivist</a> started showing up in my mailbox. Incidentally they have put all their content online for the public, but keep the last 3 years embargoed for SAA members only. </p>
<p>Since I have so much catching up to do I thought it would be interesting to try to harvest some of the article metadata that could be gleaned from the website, to see if I could get my computer to teach me something about the 76 years of content. If you are interested you can find some code I wrote to do this, and the resulting metadata about the 42,432 articles on <a href="http://github.com/edsu/americanarchivist">Github</a>.</p>
<p>As a quick test I thought it would be interesting to throw the first names of authors through <a href="https://github.com/bmuller/genderator">genderator</a> to see if the gender of authors has changed over time. My first pass just displays the number of authors per year by their gender.</p>
<p><img src="http://inkdroid.org/images/americanarchivist-chart1.png"></p>
<p>Since the number of authors per article isn't constant, and the number of articles per year is also variable the graph is a bit noisy. But if you calculate the percentage of authors per year that were male, female or unknown you get a much smoother graph.</p>
<p><img src="http://inkdroid.org/images/americanarchivist-chart2.png"></p>
<p>As you can see genderator isn't perfect: sometimes it can't even guess the author's gender 20% of the time. But even with that noise it's clear to see a gradual increase in the number of women authors, which begins in 1970s and is continuing even to today, where women seem to be represented more than men ... although it's a bit too choppy to tell really.</p>
<p>If you are interested in using this data let me know. I have the publicly available PDF content in an s3 bucket if you have research you'd like to do on it.</p>
