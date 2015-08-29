---
layout: post
status: publish
published: true
title: The Archive as Data Platform
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 7428
wordpress_url: http://inkdroid.org/journal/?p=7428
date: '2014-04-25 13:40:06 +0000'
date_gmt: '2014-04-25 20:40:06 +0000'
tags:
- archives
- wikileaks
comments: []
---
<p>Yesterday Wikileaks announced the availability of a new collection, the <a href="https://wikileaks.org/WikiLeaks-releases-the-Carter.html">Carter Cables</a>, which are a new addition to the <a href="https://search.wikileaks.org/plusd/">Public Library of US Diplomacy (PlusD)</a>. One thing in particular in the announcement caught my attention:</p>
<blockquote>
<p>The Carter Cables were obtained by WikiLeaks through the process described <a href="https://wikileaks.org/plusd/pressrelease">here</a> after formal declassification by the US National Archives and Records Administration earlier this year.</p>
</blockquote>
<p>If you follow the link you can see that this content was obtained in a similar manner as the Kissinger Files, that were released just over a year ago. Perhaps this has already been noted, but I didn't notice before that the Kissinger Files (the largest Wikileaks release to date) were not leaked to Wikileaks, but were legitimately obtained directly from NARA's website:</p>
<blockquote>
<p>Most of the records were reviewed by the United States Department of State's systematic 25-year declassification process. At review, the records were assessed and either declassified or kept classified with some or all of the metadata records declassified. Both sets of records were then subject to an additional review by the National Archives and Records Administration (NARA). Once believed to be releasable, they were placed as individual PDFs at the National Archives as part of their Central Foreign Policy Files collection.</p>
</blockquote>
<p>The Central Foreign Policy Files are a <a href="http://www2.archivists.org/glossary/terms/s/series">series</a> from the General Records of the Department of State <a href="http://www2.archivists.org/glossary/terms/r/record-group">record group</a>. Anyone with a web browser can view these documents on NARA's <a href="http://aad.archives.gov/aad/series-description.jsp?s=4073">Access to Archival Databases</a> website. If you try to access them you'll notice that the series is broken up into 15 separate <a href="http://www2.archivists.org/glossary/terms/f/file">files</a>. Each file is a set of documents that can be searched individually. There's no way to browse the contents of a file, series or the entire group: you must do a search and click through each of the results (more on this in a moment).</p>
<blockquote>
<p>The form in which these documents were held at NARA was as 1.7 million individual PDFs. To prepare these documents for integration into the PlusD collection, WikiLeaks obtained and reverse-engineered all 1.7 million PDFs and performed a detailed analysis of individual fields, developed sophisticated technical systems to deal with the complex and voluminous data and corrected a great many errors introduced by NARA, the State Department or its diplomats, for example harmonizing the many different ways in which departments, capitals and people's names were spelt.</p>
</blockquote>
<p>It would be super to hear more details about their process for doing this work. I think archives could potentially learn a lot about how to enhance their own workflows for doing this kind of work at scale.</p>
<p>And yet I think there is another lesson here in this story. It's actually important to look at this PlusD work as a success story for NARA...and one that can potentially be improved upon. I mentioned above that it doesn't appear to be possible to browse a list of documents and that you must do a search. If you do a search and click on one of the documents you'll notice you get a URL like this:</p>
<p><a href="http://aad.archives.gov/aad/createpdf?rid=99311&amp;dt=2472&amp;dl=1345">http://aad.archives.gov/aad/createpdf?<strong>rid=99311</strong>&amp;dt=2472&amp;dl=1345 </a></p>
<p>And if you browse to another you'll see something like:</p>
<p><a href="http://aad.archives.gov/aad/createpdf?rid=841&amp;dt=2472&amp;dl=1345">http://aad.archives.gov/aad/createpdf?<strong>rid=841</strong>&amp;dt=2472&amp;dl=1345</a></p>
<p>Do you see the pattern? Yup, the <em>rid</em> appears to be a record number, and it's an integer that you can simply start at 1 and keep going until you've got to the last one for that file, in this case 155278.</p>
<p>It turns out the other <code>dt</code> and <code>dl</code> parameters change for each file, but they are easily determined by looking at the <a href="http://aad.archives.gov/aad/series-description.jsp?s=4073">overview page</a> for the series. Here they are if you are curious:</p>
<ul>
<li>http://aad.archives.gov/aad/createpdf?rid={{n}}&amp;dt=2472&amp;dl=1345</li>
<li>http://aad.archives.gov/aad/createpdf?rid={{n}}&amp;dt=2473&amp;dl=1348 </li>
<li>http://aad.archives.gov/aad/createpdf?rid={{n}}&amp;dt=2474&amp;dl=1345 </li>
<li>http://aad.archives.gov/aad/createpdf?rid={{n}}&amp;dt=2475&amp;dl=1348 </li>
<li>http://aad.archives.gov/aad/createpdf?rid={{n}}&amp;dt=2492&amp;dl=1346 </li>
<li>http://aad.archives.gov/aad/createpdf?rid={{n}}&amp;dt=2493&amp;dl=1347 </li>
<li>http://aad.archives.gov/aad/createpdf?rid={{n}}&amp;dt=2476&amp;dl=1345 </li>
<li>http://aad.archives.gov/aad/createpdf?rid={{n}}&amp;dt=2477&amp;dl=1348 </li>
<li>http://aad.archives.gov/aad/createpdf?rid={{n}}&amp;dt=2494&amp;dl=1346 </li>
<li>http://aad.archives.gov/aad/createpdf?rid={{n}}&amp;dt=2495&amp;dl=1347 </li>
<li>http://aad.archives.gov/aad/createpdf?rid={{n}}&amp;dt=2082&amp;dl=1345 </li>
<li>http://aad.archives.gov/aad/createpdf?rid={{n}}&amp;dt=2083&amp;dl=1348 </li>
<li>http://aad.archives.gov/aad/createpdf?rid={{n}}&amp;dt=2084&amp;dl=1346 </li>
<li>http://aad.archives.gov/aad/createpdf?rid={{n}}&amp;dt=2085&amp;dl=1347 </li>
<li>http://aad.archives.gov/aad/createpdf?rid={{n}}&amp;dt=2532&amp;dl=1629 </li>
<li>http://aad.archives.gov/aad/createpdf?rid={{n}}&amp;dt=2533&amp;dl=1630</li>
</ul>
<p>Of course it would be trivial to write a harvesting script to pull down the ~380 gigabytes of PDFs by creating a loop with a counter and using one of the many many HTTP libraries. Maybe even with a bit of sleeping in between requests to be nice to the NARA website. I suspect that this how Wikileaks were able to obtain the documents.</p>
<p>But, in an ideal world, this sort of URL inspection shouldn't be necessary right? Also, perhaps it could be done in such a way that the burden of distributing the data doesn't fall on NARA alone? It feels like a bit of an accident that it's possible to download the data in bulk from NARA's website this way. But it's an accident that's good for access.</p>
<p>What if instead of trying to build the ultimate user experience for archival content, archives focused first and foremost on providing simple access to the underlying data first. I'm thinking of the sort of work Carl Malamud has been doing for years at <a href="https://public.resource.org/">public.resource.org</a>. With a solid data foundation like that, and simple mechanisms for monitoring the archive for new accessions it would then be possible to layer other applications on top within the enterprise and (hopefully) at places external to the archive, that provide views into the holdings.</p>
<p>I imagine this might sound like ceding the responsibility of the archive to some. It may also sound a bit dangerous to those that are concerned about connecting up public data that is currently unconnected. I'm certainly not suggesting that user experience and privacy aren't important. But I think Cassie is right:</p>
<blockquote class="twitter-tweet" lang="en">
<p>
    <a href="https://twitter.com/edsu">@edsu</a> Yes it is; I think more participation from independent actors in archival access is a great thing we need more of
  </p>
<p>— Cassie Findlay (@CassPF) </p>
<p>  <a href="https://twitter.com/CassPF/statuses/459503237909843968">April 25, 2014</a>
</p></blockquote>
<p><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script> I imagine there are some that feel that associating this idea of the archive as data platform with the Wikileaks project might be counterproductive to an otherwise good idea. I certainly paused before hitting publish on this blog post, given the continued sensitivity around the issue of Wikileaks. But as other archivists have noted there is a <a href="http://www.emergingissues.ala.org/wikileaks/">great</a> <a href="http://www.tandfonline.com/doi/pdf/10.1080/01576895.2013.779926">deal</a> to be <a href="http://www.cjh.org/pages.php?pid=45&amp;evID=1791">learned</a> from the phenomenon that is Wikileaks. Open and respectful conversations about what is happening is important, right?</p>
<p>Most of all I think it's important that we don't look at this bulk access and distant reading of archival material as a threat to the archive. Researchers should feel that downloading data from the archive is a legitimate activity. Where possible they should be given easy and efficient ways to do it. Archives need environments like <a href="https://www.opengov.nsw.gov.au/api">OpenGov NSW</a> (<a href="https://twitter.com/CassPF/status/459868498018045953">thanks Cassie</a>) and the Government Printing Office's <a href="http://www.gpo.gov/fdsys/bulkdata/">Bulk Data</a> website (see this <a href="http://www.archives.gov/press/press-releases/2011/nr11-165.html">press release</a> about the <a href="http://www.federalregister.gov">Federal Register</a>) where this activity can take place, and where a dialogue can happen around it.</p>
<p><em>Update: May 8, 2014</em></p>
<p><a href="https://twitter.com/carwinb">Alexa O'Brien</a>'s <a href="https://www.youtube.com/watch?v=TgAdXibXgMk#t=2456">interview</a> on May 6th with <a href="https://en.wikipedia.org/wiki/Sarah_Harrison_(journalist)">Sarah Harrison</a> of Wikileaks at <a href="http://re-publica.de/en/republica-2014">re:publica14</a> touched on lots of issues related to Wikileaks the archive. In particular the discussion of redaction, accessibility and Wikileaks role in publishing declassified information for others (including journalists) was quite relevant the topic of this blog post.</p>
<p><iframe width="560" height="315" src="//www.youtube.com/embed/TgAdXibXgMk" frameborder="0" allowfullscreen></iframe></p>
