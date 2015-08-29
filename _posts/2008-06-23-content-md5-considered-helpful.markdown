---
layout: post
status: publish
published: true
title: Content-MD5 considered helpful
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 205
wordpress_url: http://inkdroid.org/journal/?p=205
date: '2008-06-23 12:10:15 +0000'
date_gmt: '2008-06-23 19:10:15 +0000'
tags:
- http rest amazon storage checsums md5
comments:
- id: 65401
  author: Peter Murray
  author_email: peter@OhioLINK.edu
  author_url: http://dltj.org/
  date: '2008-06-23 13:26:32 +0000'
  date_gmt: '2008-06-23 20:26:32 +0000'
  content: Very interesting, indeed!  I would have thought that the reliable transport
    of "TCP" was enough.  Page 207 (section 13.14 "TCP Checksum Computation") of my
    trusty third edition of Comer's Internetworking with TCP/IP says "TCP uses 16-bit
    arithmetic and takes the one's complement of the one's complement sum.  At the
    receiving site, TCP software performs the same computation to verify that the
    segment [headers plus playload] arrived intact."
- id: 65560
  author: Andy Boyko
  author_email: andy@boyko.net
  author_url: ''
  date: '2008-06-27 13:47:15 +0000'
  date_gmt: '2008-06-27 20:47:15 +0000'
  content: Did you see where they traced the corruption to a faulty load balancer?  (Via
    <a href="http://gigaom.com/2008/06/27/storage-outages-can-todays-hardware-handle-the-cloud/"
    rel="nofollow">GigaOm</a>)
- id: 65729
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2008-06-30 06:22:53 +0000'
  date_gmt: '2008-06-30 13:22:53 +0000'
  content: No I hadn't seen that <a href="http://gigaom.com/2008/06/27/storage-outages-can-todays-hardware-handle-the-cloud/"
    rel="nofollow">article</a>, thanks Andy! So is the benefit of using the Content-MD5
    HTTP header in addition to the checks built in to TCP? It allows you to check
    the integrity of the transfer explicitly rather than implicitly by just using
    TCP? The header does seem redundant somehow--it would be interesting to know the
    history of why it was added.
---
<p>Kind of an interesting <a href="http://developer.amazonwebservices.com/connect/thread.jspa?threadID=22709">thread</a> going on the Amazon Web Services Forum, about data corruption on S3. It highlights how important it is for clients to send something like the <em>Content-MD5</em> HTTP header to checksum the HTTP payload, and for the server to check it before saying 200 OK back...at least for data storage REST applications:</p>
<blockquote><p>
When Amazon S3 receives a PUT request with the Content-MD5 header, Amazon S3 computes the MD5 of the object received and returns a 400 error if it doesn't match the MD5 sent in the header. Looking at our service logs from the period between 6/20 11:54pm PDT and 6/22 5:12am PDT, we do see a modest increase in the number of 400 errors.  This may indicate that there were elevated network transmission errors somewhere between the customer and Amazon S3.
</p></blockquote>
<p>Some customers are claiming that the md5 checksums coming back from s3 are different than the ones for the content that was originally sent there. Perhaps the clients ignored the 400? Or maybe there is data corruption elsewhere. It'll be interesting to follow the thread. </p>
