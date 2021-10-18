---
layout: post
status: publish
published: true
title: on perma.cc
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 6145
wordpress_url: http://inkdroid.org/journal/?p=6145
date: '2013-09-26 13:23:20 +0000'
date_gmt: '2013-09-26 20:23:20 +0000'
tags:
- web-archives
- law
- supreme-court
comments:
- id: 86587
  author: 'Neulich im Feedreader&#8230; (Teil III): Permanente Links halten auch einem
    Mailüfterl stand | Hatori Kibble'
  author_email: ''
  author_url: http://hatorikibble.wordpress.com/2013/10/03/neulich-im-feedreader-teil-iii-permanente-links-halten-auch-einem-mailufterl-stand/
  date: '2013-10-03 11:52:04 +0000'
  date_gmt: '2013-10-03 18:52:04 +0000'
  content: |
    [&#8230;] On perma.cc Auch Links, die in Gerichtsentscheidungen genannt werden, veralten und sind irgendwann einmal nicht mehr zugänglich. [&#8230;]
---

<p>In case you missed it, an interesting <a href="http://papers.ssrn.com/sol3/papers.cfm?abstract_id=2329161">study</a> by Jonathan Zittrain and Kendra Albert was written up in the New York Times with the provocative title <a href="http://www.nytimes.com/2013/09/24/us/politics/in-supreme-court-opinions-clicks-that-lead-nowhere.html">In Supreme Court Opinions, Web Links to Nowhere</a>. In addition to the article, the study itself is worth reading for its compact review of the study of <a href="https://en.wikipedia.org/wiki/Link_rot">link rot</a> on the Web, and its stunning finding that 49% of the links in US Supreme Court Opinions are broken.</p>
<p>This 49% is in contrast with a similar, recent <a href="http://digitalcommons.law.yale.edu/yjolt/vol15/iss2/2/">study</a> by Raizel Liebler and June Liebert of the same links, which found a much lower rate of 29%. The primary reason for this discrepancy was that Zittrain and Albert looked at <em>reference rot</em> in addition to <em>link rot</em>.</p>
<p>The term <em>reference rot</em> was coined by Rob Sanderson, Mark Phillips and Herbert Van de Sompel in their paper <a href="http://arxiv.org/abs/1105.3459">Analyzing the Persistence of Referenced Web Resources with Memento</a>. The distinction is subtle but important. Link rot typically refers to when a URL returns an HTTP error of some kind that prevents a browser from rendering the referenced content. This error can be the result of the page disappearing, or the webserver being offline. Reference rot refers to when the URL itself seems to work (returning either a 200 OK or redirect of some kind), but the content that comes back is no longer the content that was being referenced.</p>
<p>The New York Times article includes a great example of reference rot. The website <a href="http://ssnat.com/">http://ssnat.com/</a> which was referenced in a Supreme Court Opinion by Justice Alito.</p>
<p><img src="http://inkdroid.org/images/linkrot1.png" alt="LinkRot" /></p>
<p>The DNS registration expired, and was picked up someone who knew its significance and turned it into an opportunity to educate people about links in legal documents. The NY Times article calls this nameless person a "prankster" but it is a wonderful hack</p>
<p>One thing the NY Times article didn't mention is that the website has been captured 140 times by the Internet Archive and the original as referenced by Justice Alito is <a href="http://web.archive.org/web/20110529180722/http://ssnat.com/">available</a> still. It seemed like a missed opportunity to highlight the incredibly important work that Brewster Kahle and his merry band of Web archivists are doing. It would be interesting to see how many of the 555 extracted links are available in the Internet Archive. But I couldn't seem to find the list in or linked to from the article.</p>
<p><img src="http://inkdroid.org/images/linkrot2.png" alt="LinkRot" /></p>
<p>Zittrain and Albert on the other hand do mention the Internet Archive's work in the context of <a href="http://perma.cc">perma.cc</a> which is their proposed solution to the problem of broken links.</p>
<blockquote>
<p>... the Internet Archive is dedicated to comprehensively archiving web content, and thus only passes through a given corner of the Internet occasionally, meaning there is no guarantee that a given page or set of content would be archived to reflect what an author or editor saw at the moment of citation. Moreover, the IA is only one organization, and there are long-term concerns around placing all of the Internet archiving eggs into one basket. <strong>A system of distributed, redundant storage and ownership might be a better long-term solution.</strong></p>
</blockquote>
<p>This seems like a legitimate concern, that there should be some ability to archive a website at a particular point in time. There are <a href="http://blogs.law.harvard.edu/futureoftheinternet/2013/09/22/perma/">27 founding members</a> of perma.cc. There is a strong legal flavor to some of the participants, but perma.cc doesn't appear to be only for legal authors, the website states:</p>
<blockquote>
<p>perma.cc helps authors and journals create permanent archived citations in their published work. perma.cc will be free and open to all soon.</p>
</blockquote>
<p>It's good to see Internet Archive as one of the founding members. It remains to be seen what perma.cc's approach to a <em>distributed, redundant storage</em> will be. For the system to actually be distributed there has to be more to it than listing 27 organizations that agree that it's a good idea. It's not like Internet Archive operates on its own, since they work closely with the <a href="http://netpreserve.org">International Internet Preservation Consortium</a> which has <a href="http://netpreserve.org/about-us/members">44 organizational members</a>, many of whom are national libraries. I didn't see the IIPC on the list of founding members for perma.cc.</p>
<p>If perma.cc were to take off I wonder what it would mean for publishers' web analytics. If lots of publishers start putting perma.cc URLs in their publications what would this mean for the publishers of the referenced content, and their web analytics? Would it be possible for publishers to see how often their content is being used on perma.cc, and a rough approximation of who they are, what browsers they are using, etc?</p>
<p>Nit-picking aside, its <em>awesome</em> to see another player in the Web archiving space, especially from people Web-veterans who understand how it works, and its significance for society.</p>
<p><em>Update: Leigh Dodds has an excellent <a href="http://blog.ldodds.com/2013/09/25/its-more-than-the-link/">post</a> about perma.cc's <a href="http://www.perma.cc/static/doc/Perma.cc_TOS.pdf">terms of service</a>.</em></p>
