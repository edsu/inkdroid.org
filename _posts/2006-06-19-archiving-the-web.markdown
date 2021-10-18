---
layout: post
status: publish
published: true
title: archiving the web
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 105
wordpress_url: http://www.inkdroid.org/journal/?p=105
date: '2006-06-19 15:22:38 +0000'
date_gmt: '2006-06-19 22:22:38 +0000'
tags: []
comments: []
---

<p>Folks at Cornell are doing some fun stuff with Internet Archive data. William Arms presented <a href="http://www.cs.cornell.edu/wya/papers/JCDL-2006.doc">Building a Research Library for the History of the Web</a> at JCDL last week which summarized some of the architectural decisions they had to make in designing a system for mirroring and providing access to 240 terabytes of web content. Their goal is to function as both a full mirror of IA, and to build tools that allow social science and computer science researchers to use this data. </p>
<p>A few interesting tidbits include:</p>
<ul>
<li>Rather than building a distributed system for processing the data (which is what IA and Google have) they went with a symmetric multi-processor. Not just any kind of multi-processor mind you but two dedicated Unisys ES7000/430 each with 16 Itanium2 processors running at 1.5 Gigahertz with 16GB of RAM. The argument was that the very high data rates made this architecture more palatable. The kicker for me was that they are using Microsoft Windows Server 2003 as the operating system. But it gets weirder.</li>
<li>The system's pre-load system extracts useful metadata from ARC files and then stores this in a relational database, while saving off the actual content to a separate Page Store. The Page Store has some intelligence in it which uses an MD5 checksum to figure out if the content has changed; it also provides a layer of abstraction that will allow some content to be stored offline on tapes, etc. Apparently IA stores redundant data quite a bit, and Cornell will be able to save a significant amount of disk space if they de-dupe. Arms detailed the trade offs with using a relational db, namely that they had to get the schema right because if they decided to change it down the road it would require a complete pass over the content again. Ok, so the weirder part is that they are using SQLServer 2000 as the RDBMS.</li>
<li>They have created web-service and high-performance clients for extracting data from the archive so that cpu-intensive research operations can be performed locally instead of on the main server. I'd be interested to learn more about the high-performance clients since we've been keen to have file-system-like clients in the repository we are building at the LoC. Among the more interesting things the extractors can do is extracting the sub-graph of a particular node on the web.</li>
<li>They have a retro-browser which (from the paper) sounds like an interesting http-proxy which turns any old browser into a time-machine. It performs a similar function as the way-back machine, but sounds a lot cooler.</li>
<li>Full-text indexing is initially being done using Nutch on an extracted subset of nodes. However Cornell is investigating the use <a href="http://archive-access.sourceforge.net/projects/nutch/">NutchWAX</a> for providing fulltext indexes. NutchWAX was written by Doug Cutting for working directly with IA <a href="http://www.archive.org/web/researcher/ArcFileFormat.php">ARC Files</a>. It also has the ability to distribute indexing--which seems counter to the non-distributed nature of this system at Cornell...but there you go.</li>
</ul>
<p>I've learned from my colleague <a href="http://andy.boyko.net/">Andy Boyko</a> that the Library of Congress has been doing similar work with IA...and have been doing other work archiving the <a href="http://www.911digitalarchive.org/">world wild web</a>. I imagine my other team members already have been exposed to the work Cornell has been doing in this area, but it was useful for me to learn more. It's important work--as Arms said:</p>
<blockquote><p>
Everyone with an interest in the history of the Web must be grateful to <a href="http://en.wikipedia.org/wiki/Brewster_Kahle">Brewster Kahle</a> for his foresight in preserving the content of the Web for future generations...
</p></blockquote>
