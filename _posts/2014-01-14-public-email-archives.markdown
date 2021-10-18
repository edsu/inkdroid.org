---
layout: post
status: publish
published: true
title: public email archives
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 6992
wordpress_url: http://inkdroid.org/journal/?p=6992
date: '2014-01-14 11:22:03 +0000'
date_gmt: '2014-01-14 18:22:03 +0000'
tags:
- politics
- email
- library-of-virginia
- pdf
- virginia
comments:
- id: 86777
  author: Roger Christman
  author_email: roger.christman@lva.virginia.gov
  author_url: ''
  date: '2014-01-28 13:17:36 +0000'
  date_gmt: '2014-01-28 20:17:36 +0000'
  content: |
    Hi Ed,
    Thanks for the feedback.  We are adding this paragraph to the Login page:
    The Virginia Freedom of Information Act (Code of Virginia, §2.2-3705.5) and the Virginia Public Records Act (Code of Virginia, §42.1- 78) establish guidelines for restricting access to privacy-protected information. Privacy-protected records include, but are not limited to, certain educational, medical, financial, criminal, attorney-client, and personnel records. Privacy-protected information is considered confidential and is restricted from public access for 75 years following the date of record creation. In accordance with this legislation, the Library of Virginia can and will restrict, in whole or in part, access to records containing privacy-protected information.
    This mirrors the language on the archives research room agreement that in-person users sign.
    As to the numbers, we could have done a better job explaining them.  The 1.3 million is the approximate total number of emails transferred to the Library - however not all of them are permanent archival records.  For this initial release, I reviewed 138,532 Executive Office emails.  Here is the breakdown:  66,422 open records, 13,594 restricted records, 10,808 Virginia Tech records (subject to further review) and 47,708 non-records/non-permanent records.  This constitutes approximately 10% of the collection.  We are going to add this to information to the "Under the Hood" section of the web site ("Kaine Email Project @ LVA - By the Numbers") and update it with each release.   My colleague Ben Bromley and I have reviewed an additional 348,225 emails from four offices.  We hope to release these records soon.
    Best,
    Roger Christman
---

<p><a href="http://www.flickr.com/photos/epublicist/3509141851/"><img src="http://inkdroid.org/images/email.jpg" style="float: left; margin-right: 10px; width: 175px;" /></a></p>
<p>I noticed on the <a href="http://www.archivists.org/listservs/arch_listserv_terms.asp">Archives and Archivists</a> discussion list today that the Library of Virginia <a href="http://www.virginiamemory.com/blogs/out_of_the_box/2014/01/13/adam-raised-a-kaine-archiving-the-records-of-a-governor/">has made</a> 66,422 of the approximately 1.3 million emails (167 GB) of <a href="https://en.wikipedia.org/wiki/Tim_Kaine">Governor Tim Kaine</a>'s 2006-2010 administration available on the Web. Even though this is only 5% of the entire collection, it still represents a significant step forwards for open access to government information.</p>
<p>Thankfully, the Library of Virginia took the extra step of <a href="http://www.exlibrisgroup.com/category/DigiToolOverview">describing</a> how they went about processing the email collection. Along the way they tried a series of proprietary tools, some of which crashed regularly to convert pst to pdf and csv, which they then ingested into their digital asset management system, <a href="http://www.exlibrisgroup.com/category/DigiToolOverview">DigiTool</a> from ExLibris (which apparently couldn't load more than 3,000 emails without keeling over).</p>
<p>What's simply astounding is that archivists looked at every email to determine whether it contained <em>restricted material</em>. The result of this sifting was that only 5% of the emails were made available.</p>
<p>I was drawn to the announcement initially because I wondered if they would simply make mailbox data available on the Web, similar to the <a href="https://www.cs.cmu.edu/~enron/">Enron email dataset</a>. But quickly I noticed that while metadata about the email was readable, I wasn't able to read the contents of the message--the so called email body. Instead I was presented with a PDF icon, which had a lock over it. At first I suspected the content was only available at the Library of Virginia, but then after some more reading elsewhere I discovered that I needed to login to see the PDFs.</p>
<p>I was surprised to find that the username and password were simply listed on the <a href="http://digitool1.lva.lib.va.us:8881/pds?func=load-login&amp;calling_system=digitool&amp;url=http://digitool1.lva.lib.va.us:8881/R/67C839Y1UT16P2FTIQ6R4H9KPV7AGMA4NDLXLC3Y1L3CRPDQ1Y-03822?func=search-simple">login page</a> -- you don't get your own login, everyone uses the same one. This login form is accompanied by the following text:</p>
<pre><code>While great care has been taken during the processing of this collection to locate, identify, and restrict access to privacy protected information within this collection, some relevant materials may have been missed.

By logging in and accessing this collection, the user agrees:

* That if privacy-protected information is discovered during use of this material to make no notes or other recordation of the confidential information.
* Not to publish, publicize, or disclose any confidential material to any other party for any purpose. 
* That no direct or indirect contact will be made with the individuals to whom the confidential information relates.
* To contact the Library of Virginia at archdesk@lva.virginia.gov to report any confidential information found. 

Improper disclosure of privacy-protected information is a breach of confidentiality that could result in the loss of access to the archival collections housed and maintained by Library of Virginia, and could result in legal penalties (Code of Virginia, §18.2-186.3).

Name: LVA Password: LVA

Login is required only once during each session.
</code></pre>
<p>In all honesty I'm surprised that this collection has been made available at all, given how recent the material is (relative to how long email has been around), and the rush to make it available in time for Kaine's run for the US Senate. It's hard not to imagine politics going on there behind the scenes.</p>
<p>But the thing that gave me pause in this agreement is the researcher needs to know what <em>privacy protected</em> or <em>confidential</em> information is. I wonder if many archivists are clear on what these words mean in this context? Without a clear understanding of what these terms mean this language seems to prevent researchers from actually using any of the material that they discover.</p>
<p>Deep breath.</p>
<p>Something that might not be apparent to folks outside the archives world is that this is still a huge step forwards for the Library of Virginia to start making collections like this available on the Web. If it were me, I would probably have started out with a less politicized collection, and used opensource Web tools to convert the content, and make it available. ElasticSearch or Solr over static HTML documents comes to mind. Making the emails indexable by Google, and not hiding them behind a public username and password that the bots can't figure out, would be a priority for me as well. So people who are searching for the content can find it. This would take the burden off of Library of Virginia's search tool as well. Terms of service that make sense to researchers, and don't scare them out of doing their work seems pretty important too.</p>
<p>Still, it looks like progress. Keep on keeping on Library of Virginia. 5% is still a <a href="http://inkdroid.org/journal/2013/10/16/archival-sliver/">sliver of a sliver of a sliver</a> that the Web didn't have before.</p>
