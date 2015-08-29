---
layout: post
status: publish
published: true
title: ical and outlook
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 77
wordpress_url: http://www.inkdroid.org/journal/2006/01/19/ical-and-outlook/
date: '2006-01-19 13:23:27 +0000'
date_gmt: '2006-01-19 20:23:27 +0000'
tags: []
comments:
- id: 29
  author: Tim
  author_email: tjameswhite@yahoo.com
  author_url: http://tjameswhite.com/blog
  date: '2006-01-20 05:26:56 +0000'
  date_gmt: '2006-01-20 12:26:56 +0000'
  content: What a great coincidence that I was bugging Brian about the same thing!
    I'm glad you found the culprit. And here I was afraid I'd have to contact our
    help desk to have Outlook patched... (phew).
- id: 30
  author: Brian Ray
  author_email: bray@sent.com
  author_url: http://web.archive.org/web/20101127052904/http://brianray.chipy.org:80/
  date: '2006-01-21 22:04:32 +0000'
  date_gmt: '2006-01-22 05:04:32 +0000'
  content: |
    <p>Do not get me started with the vCard, vCalendar, ...</p>

    <p>I am so annoyed in the differences, it makes me ill.</p>

    <p>Because mac's iCal is a great GUI and because Firefoxs Calandar allows edits on DAV server, I stick with this format. M$ is just wrong.</p>
- id: 63
  author: Mark Mansour
  author_email: mark@lifelint.com
  author_url: http://web.archive.org/web/20061205062951/http://www.lifelint.com:80/blog/
  date: '2006-02-09 08:16:40 +0000'
  date_gmt: '2006-02-09 15:16:40 +0000'
  content: |
    <p>You may want to check out the UPDATED lifelint parser.  I've added support for Outlook.</p>

    <p>http://web.archive.org/web/20060820190512/http://lifelint.net/</p>
- id: 5198
  author: Anton
  author_email: antonmos@hotmail.com
  author_url: ''
  date: '2006-09-28 07:12:42 +0000'
  date_gmt: '2006-09-28 14:12:42 +0000'
  content: Thanks for posting this, it did save me the pain! :)
- id: 7585
  author: Leroy
  author_email: leroy@leeseit.com
  author_url: http://leeseit.com
  date: '2006-11-06 12:12:04 +0000'
  date_gmt: '2006-11-06 19:12:04 +0000'
  content: Thank you - very helpful info - was struggling with Outlook's useless error
    message and incompatibility.
- id: 22286
  author: KluverBucy.com
  author_email: mike@kluverbucy.com
  author_url: http://www.kluverbucy.com
  date: '2007-04-17 15:49:56 +0000'
  date_gmt: '2007-04-17 22:49:56 +0000'
  content: Lifesaver!  frustration central over here before reading this - Thanks!
- id: 26662
  author: Mike
  author_email: oristian@gmail.com
  author_url: ''
  date: '2007-05-04 16:57:52 +0000'
  date_gmt: '2007-05-04 23:57:52 +0000'
  content: "Argh!  I've tried the iCalendar gem and I'm getting nowhere on the ability
    to get .ics or .vcs files into Outlook.  This is the \r\n\r\n\r\nBEGIN:VCALENDAR\r\nMETHOD:PUBLIC\r\nVERSION:2.0\r\nCALSCALE:GREGORIAN\r\nPRODID:iCalendar-Ruby\r\nBEGIN:VEVENT\r\nPRIORITY:5\r\nCLASS:PUBLIC\r\nURL:http://finance.yahoo.com\r\nUID:2007-05-04T16:54:13-0700_110934668@mo1.local\r\nDESCRIPTION:this
    is the event test description\r\nSUMMARY:This is the Summary\r\nDTSTART:20070412T000000\r\nTRANSP:OPAQUE\r\nDTSTAMP:20070504T165413\r\nSEQ:0\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n"
- id: 44421
  author: Steve
  author_email: sarowe@syr.edu
  author_url: ''
  date: '2007-11-02 14:00:39 +0000'
  date_gmt: '2007-11-02 21:00:39 +0000'
  content: "I switched from Mozilla Lightning to Outlook, and Outlook refused to import
    a Lightning-produced calendar.  \r\n\r\nThis web page is the only one returned
    by a Google search for the exact error message that Outlook gives, so I thought
    I'd add my two bits here.\r\n\r\nAll I had to do to get Outlook to import the
    calendar was add the line \"METHOD:PUBLISH\" under BEGIN:VCALENDAR."
---
<p>I got to talking to <a href="http://suda.co.uk/">Brian Suda</a> about why his <a href="http://microformats.org/wiki/hcalendar">hCalendar</a> extracting application <a href="http://suda.co.uk/projects/X2V/">x2v</a> works like a dream with iCal but doesn't seem to work with Microsoft Outlook 2002.</p>
<blockquote><p>
vCalendar/iCalendar Import failed. The input file may be corrupt.
</p></blockquote>
<p>Here's the event that Outlook doesn't like, but iCal does:</p>
<pre>
BEGIN:VCALENDAR
PRODID:-//suda.co.uk//X2V 0.6.7 (BETA)//EN
X-ORIGINAL-URL: http://www.code4lib.org/
VERSION:2.0
BEGIN:VEVENT
SUMMARY;LANGUAGE=en:The Portland Jazz Festival
DTSTART:20060217
DTEND:20060219
URL:http://www.travelportland.com/jazz/index.html
END:VEVENT
END:VCALENDAR
</pre>
<p>After quite a bit of experimentation we determined that Outlook demands that the METHOD, UID and DTSTAMP fields be defined.</p>
<pre>
BEGIN:VCALENDAR
PRODID:-//suda.co.uk//X2V 0.6.7 (BETA)//EN
X-ORIGINAL-URL: http://www.code4lib.org/
VERSION:2.0
METHOD:PUBLISH
BEGIN:VEVENT
UID:&lt;abc123&gt
DTSTAMP:20060119T184157Z
SUMMARY;LANGUAGE=en:The Portland Jazz Festival
DTSTART:20060217
DTEND:20060219
URL:http://www.travelportland.com/jazz/index.html
END:VEVENT
END:VCALENDAR
</pre>
<p>Just thought I'd mention it in here in case someone ends up googling for that error. Brian said he's going to look into providing this support for those of us who have Microsoft Outlook inflicted on us.</p>
