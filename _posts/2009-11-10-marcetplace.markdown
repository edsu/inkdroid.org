---
layout: post
status: publish
published: true
title: MARCetplace
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 1431
wordpress_url: http://inkdroid.org/journal/?p=1431
date: '2009-11-10 12:41:36 +0000'
date_gmt: '2009-11-10 19:41:36 +0000'
tags:
- marc
comments:
- id: 81559
  author: johnwcowan
  author_email: cowan@ccil.org
  author_url: http://
  date: '2009-11-10 14:22:23 +0000'
  date_gmt: '2009-11-10 21:22:23 +0000'
  content: Obviously you don't understand what "production costs" means in such a
    context.  It means "as much as we can conceivably squeeze out of each and every
    user without actually making them do without", just as it does to the record companies,
    and has nothing to do with, like, the costs of production.
- id: 81560
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-11-10 14:24:40 +0000'
  date_gmt: '2009-11-10 21:24:40 +0000'
  content: "@johncowan yeah, but the record companies are legitimately trying to turn
    a profit :-)"
---
<p>Last Saturday I passed the time while waiting in line at the <a href="http://www.mva.maryland.gov/">DMV</a> by reading the recently <a href="http://www.loc.gov/today/pr/2009/09-219.html">released</a> <a href="http://www.loc.gov/bibliographic-future/news/MARC_Record_Marketplace_2009-10.pdf">Study of the North American MARC Records Marketplace</a>. The analysis of the survey results seem to focus on the role of the Library of Congress in the marketplace, which is understandable given that LC funded the report. But there seems to be a real effort to look at LC's role in the broader MARCetplace (sorry I couldn't resist).</p>
<p>Anyhow, I jotted down some random notes and questions in the margins, and<br />
figured I'd add them here before my notes got tossed in the circular file.</p>
<p>So I found this kind of surprising at the time:</p>
<blockquote><p>
7 participating distributors report that they do not acquire MARC records from external sources, but the rest do.  Of those external sources, LC was predominant, followed by OCLC, LC record resellers, Library and Archives Canada, and the British National Library.  Approximately 14% of respondents acquire a significant portion of their records via Z39.50 protocols and various web crawlers. </p>
<p>
p. 19
</p></blockquote>
<p>Should I be surprised that there are more LC subscribers than OCLC subscribers<br />
among the 70 distributors participating in the survey? I am surprised.</p>
<blockquote><p>
Much has changed since this <a href="http://www.law.cornell.edu/uscode/2/usc_sec_02_00000150----000-.html">law</a> was formulated. First, LC took on a community oriented role by underwriting the CIP program, which accounted for 53,000 new titles in 2008. Second, for the past 25 years or so, LC records have been distributed electronically. This has not only lowered the cost of distribution, but has made the records easily transferable from one institution to another, often without payment. One result is that <strong>LC records are significantly underpriced, since the cost of production is not included</strong>. Another is that an entire industry has developed around free (or at least very cheap) MARC records. Consider that an LC record for a single title might appear in thousands of library catalogs, while its MARC Distribution Service lists only 74 customers, 30 of them foreign. Most copies of LC records are obtained either free (via its Z39.50 servers and WebOPAC) or purchased from OCLC or vendors who supply those records in conjunction with the materials they sell. In short, many libraries and vendors benefit from a product for which production costs are not recovered.</p>
<p>
pp. 26-27
</p></blockquote>
<p>It would've been nice to see how much money it costs to distribute MARC data from the LC FTP site compared with how much money LC gets through its MARC subscription program. The report points out elsewhere that LC catalogs items through the CIP program that it ends up discarding. So they aren't technically part of the operating cost of the library--if you don't consider the Copyright Office part of the Library of Congress. The last time I looked at the <a href="http://web.archive.org/web/20100528034700/http://www.loc.gov/about/lcorgsep06.pdf">LC organization chart</a> the Copyright Office was part of LC. Furthermore, unless I missed it there is no indication of how many records there are in that category. Extrapolating from the 74 customers and the <a href="http://web.archive.org/web/20100730095043/http://www.loc.gov:80/cds/mds.html">current price</a> of the subscription service (21,905) it would appear that LC gets approximately $1,620,970.00 a year in revenue from its distribution of the MARC data. It's difficult for me to imagine the generation of CIP records for items that LC discards added to the cost of operating an FTP site to equal this number.</p>
<blockquote>
<p>Another major distribution channel involves direct downloads from LC’s Voyager database. At present, LC offers four separate interfaces: </p>
<ul>
<li>A Web OPAC for bib records that supports 875 simultaneous users </li>
<li>A Web OPAC for authority records that supports 500 simultaneous users </li>
<li>Z39.50 direct access for users with Z39.50 clients, which supports 340 simultaneous users</li>
<li>Z39.50 gateway interface that supports up to 250 simultaneous users</li>
</ul>
<p>In total, these search interfaces process about 500,000 searches each business day. While not every  search leads to a download, the volume of searches is a clear indication of interest. Major users, to the degree that can be determined, include school libraries and small publics, who may not be OCLC members. In addition, vendors, open database providers, and firms such as Amazon regularly seek these  records.  </p>
<p>p. 35
</p></blockquote>
<p>Wow, half a million searches a day, that's bigger than I would've thought. It would be interesting to see how many actual MARC downloads there are through these services, and also to see a breakdown across services. Ironically, I think providing piecemeal access to records, and supporting these search interfaces such as Z39.50 have quite a high cost in practice, and that simply making bulk downloads available for free to the public via FTP or what have your would do a lot to mitigate these costs.</p>
<p>Lastly the findings with respect to copy cataloging were really interesting.</p>
<blockquote><p>
In looking at the median numbers of original catalogers reported, we estimated that well over 30,000 professional catalogers are at work in North America. In the earlier example, we suggested that if each of those catalogers were to produce one record per work day,  that would provide the capacity to create 6.8 million records per year.</p>
<p>p. 36
</p></blockquote>
<p>I probably missed it, but the report doesn't seem to estimate how much backlogged material there is in the United States. Presumably it is lower than 6.8 million? It is kind of staggering to think how much untapped potential there is for original cataloging by professional catalogers in the United States. I lay the blame for the lack of original cataloging at the doorstep of archaic and arcane systems, data formats, and rules for content generation. The barrier to entry is just too high. Unfortunately the barrier to entry for getting the bibliographic data that is generated using tax payers money is too high as well.</p>
<p>These are obviously my own rambling thoughts and not those of my employer, or anyone else I work with for that matter.</p>
