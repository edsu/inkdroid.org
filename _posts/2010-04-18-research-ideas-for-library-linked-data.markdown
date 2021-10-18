---
layout: post
status: publish
published: true
title: research ideas for library linked data
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 1909
wordpress_url: http://inkdroid.org/journal/?p=1909
date: '2010-04-18 21:49:26 +0000'
date_gmt: '2010-04-19 04:49:26 +0000'
tags:
- oclc
- metadata
- libraries
- linked-data
- research
- hungary
- germany
- sweden
comments:
- id: 84332
  author: 'Describing the &#8220;things&#8221;: the RDF terms used (part 1) &laquo;
    LOCAH Project'
  author_email: ''
  author_url: http://blogs.ukoln.ac.uk/locah/2011/03/08/describing-the-things-the-rdf-terms-used-part-1/
  date: '2011-03-08 06:36:35 +0000'
  date_gmt: '2011-03-08 13:36:35 +0000'
  content: "[...] quite a bit to go on, rather less so for the archives case. For
    a few pointers, see e.g. this review post by Ed Summers (itself already nearly
    a year [...]"
- id: 85339
  author: All about Linked Data &laquo; Feral Librarian
  author_email: ''
  author_url: http://chrisbourg.wordpress.com/2010/06/15/all-about-linked-data/
  date: '2012-02-06 10:13:51 +0000'
  date_gmt: '2012-02-06 17:13:51 +0000'
  content: "[...] Sommers on research ideas for library linked data [...]"
---

<p><a href="http://commons.wikimedia.org/wiki/File:PoeCorbeau.png"><img src="http://inkdroid.org/images/crow.png" width="150" style="margin-right: 10px; float: left;" /></a></p>
<p>The past few weeks have seen some pretty big news for Library <a href="http://linkeddata.org">Linked Data</a>. On April 7th the <a href="http://www.oszk.hu/">Hungarian National Library</a> <a href="http://lists.w3.org/Archives/Public/public-lod/2010Apr/0155.html">announced</a> that its entire library catalog, digital library holdings, and name/subject authority data are now available as Linked Data. Then just a bit more than a week later, on April 16th the <a href="http://www.d-nb.de">German National Library</a> <a href="https://listserv.nd.edu/cgi-bin/wa?A2=ind1004&L=NGC4LIB&T=0&F=&S=&P=31709">announced</a> that it was making its name and subject authority files available as Linked Data.</p>
<p>This adds to the pioneering work that the <a href="http://www.kb.se/">Royal Library of Sweden</a> has already done in making all of its catalog and authority data available, which they <a href="http://article.gmane.org/gmane.culture.libraries.ngc4lib/4617">announced</a> almost two years ago now. Add to this that <a href="http://oclc.org">OCLC</a> is also <a href="http://outgoing.typepad.com/outgoing/2009/09/viaf-as-linked-data.html">publishing</a> the <a href="http://viaf.org">Virtual International Authority File</a> as Linked Data, and that the <a href="http://loc.gov">Library of Congress</a> also makes its subject authority data <a href="http://web.archive.org/web/20110720034058/http://id.loc.gov:80/authorities">available</a> as Linked Data and things are starting to get interesting.</p>
<p>About 16 months ago at the <a href="http://web.archive.org/web/20130722011956/http://dc2008.de/">Dublin Core Conference</a> in Berlin  <a href="http://alimanfoo.wordpress.com/">Alistair Miles</a> predicted that we'd see several implementations of Linked Data at major libraries within the year. I must admit, while I was sympathetic to the cause, I was also pretty skeptical that this would come to pass. But here we are, just a bit past a year and two national libraries and a major library data distributor have decided to publish some of their data assets as Linked Data.</p>
<p>Hey Al, <a href="http://en.wikipedia.org/wiki/Eating_crow">crow</a> never tasted so good...</p>
<p>So now it's starting to feel like there's enough extant library Linked Data to start looking at patterns of usage, to see if there are any emerging best practices we could work towards. In particular I think it would be interesting to take a look at:</p>
<ul>
<li>What vocabularies are being used, and is there emerging consensus about which to use?</li>
<li>What licenses (if any) are associated with the data?</li>
<li>How much linking and interlinking is going on?</li>
<li>What sorts of mechanisms does the publisher offer for getting the data: sitemap, feeds, SPARQL, bulk download?</li>
<li>What is the quality of the data: granularity, link integrity, vocabulary usage.</li>
<li>What approaches to identifiers for "real world things" have publishers taken: hash, slash, 303, PURLs, reuse of traditional identifiers, etc.</li>
<li>What are the relative sizes of the pools of library linked data?</li>
<li>How are updates being managed?
</li>
</ul>
<p>Tomorrow I'm meeting with some folks at the <a href="http://ils.unc.edu/mrc/">Metadata Research Center</a> at the <a href="http://sils.unc.edu/">School of Information and Library Science </a>at the University of North Carolina to talk about their <a href="https://www.nescent.org/sites/hive/">HIVE</a> project. Barbara Tillett and Libby Dechman of LC are also here to talk about the use of <a href="http://en.wikipedia.org/wiki/Library_of_Congress_Subject_Headings">LCSH</a>, <a href="http://viaf.org/">VIAF</a> and <a href="http://www.rdaonline.org/">RDA</a>. I'm hoping to convince some of the folks at the MRC that answering some of these questions about the use of Linked Data in libraries could be valuable to the library research community. The rumored W3C Incubator Group for Cultural Heritage Institutions and the Semantic Web couldn't come at a better time.</p>
