---
layout: post
status: publish
published: true
title: identifiers and authority records
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 134
wordpress_url: http://www.inkdroid.org/journal/2007/01/06/identifiers-and-authority-records/
date: '2007-01-06 05:51:49 +0000'
date_gmt: '2007-01-06 12:51:49 +0000'
tags: []
comments: []
---
<p><a href="http://en.wikipedia.org/wiki/Authority_file">Authority files</a> are rather important for unambiguously talking about a person, place or thing. In database lingo they essentially amount to a <a href="http://en.wikipedia.org/wiki/Primary_key">primary key</a> for a table. Given the <a href="http://www.loc.gov/catdir/pcc/naco/">time and effort</a> libraries spend in maintaining authority records and assigning control numbers to individuals it makes sense that a <a href="http://www.inkdroid.org/journal/2006/07/11/more-on-web-identifiers/">URI</a> could be assigned to an individual in such authority files. I realize this idea is nothing new, but until recently I hadn't seen it put into practice particularly well.</p>
<p>I imagine this has been there all along but I just noticed that <a href="http://alcme.oclc.org/laf/index.html">OCLC's Linked Authority File</a> includes <a href="http://en.wikipedia.org/wiki/PURL">PURLs</a> for authors now. For example the following URL contains a <a href="http://en.wikipedia.org/wiki/Library_of_Congress_Control_Number">LCCN</a>:</p>
<blockquote><p>
<a href="http://errol.oclc.org/laf/n79-7035">http://errol.oclc.org/laf/n79-7035</a>
</p></blockquote>
<p>When you GET this your browser is automatically redirected with an HTTP 302 to:</p>
<blockquote><p>
<a href="http://alcme.oclc.org/laf/servlet/OAIHandler?verb=GetRecord&metadataPrefix=oai_dc&identifier=n79-7035">http://alcme.oclc.org/laf/servlet/OAIHandler?<br />
verb=GetRecord&metadataPrefix=oai_dc&identifier=n79-7035</a>
</p></blockquote>
<p>which you'll notice is a <a href="http://www.openarchives.org/OAI/openarchivesprotocol.html">OAI-PMH</a> request to fetch a <a href="http://dublincore.org/">DublinCore</a> record with the identifier n79-7035:</p>
<pre>
&lt;oai_dc:dc 
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/" 
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
  xmlns:dc="http://purl.org/dc/elements/1.1/" 
  xsi:schemaLocation="http://www.openarchives.org/OAI/2.0/oai_dc/ 
    http://openarchives.org/OAI/2.0/oai_dc.xsd"&gt;
  &lt;dc:creator xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"&gt;
    Borges, Jorge Luis,--1899-
  &lt;/dc:creator&gt;
  &lt;dc:description xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"&gt;
    Sua&Igrave;rezLynch, B.--nnnc
  &lt;/dc:description&gt;
&lt;/oai_dc:dc&gt;
</pre>
<p>So now we know who this identifier is for, and the established heading for the individual. But it gets better (or worse depending on your perspective). Since this is an <a href="http://www.openarchives.org/OAI/openarchivesprotocol.html">OAI-PMH</a> server you can issue a ListMetadataFormats request to see what other flavors this record might be available in. If you <a href="http://alcme.oclc.org/laf/servlet/OAIHandler?verb=ListMetadataFormats&identifier=n79-7035">do</a> you'll find out that this record is also available as <a href="http://www.loc.gov/standards/marcxml/">marcxml</a> in all its <a href="http://alcme.oclc.org/laf/servlet/OAIHandler?verb=GetRecord&metadataPrefix=marcxml&identifier=n79-7035">unholy glory</a> (if you follow that link your browser will use a stylesheet to turn the raw xml into something a bit more presentable). Putting aside my snideness about <a href="http://www.loc.gov/marc/authority/ecadhome.html">MARC</a> for a moment, this is a lot of useful data being made available.</p>
<p>You can also search the name authority file and get relevant PURLs via a <a href="http://alcme.oclc.org/eprintsUK/">SOAP/REST service</a>. For example the irc bot panizzi in <a href="irc://chat.freenode.net/code4lib">#code4lib</a> actually has a bit of <a href="http://textualize.com/trac/browser/panizzi/trunk/plugins/OCLC/plugin.py" title="in the naf method">logic</a> that allows it do lookups in the linked authority file:</p>
<pre>
06:56 &lt; edsu&gt; @naf borges, jorge
06:56 &lt; panizzi&gt; edsu: [20 matches] [~1] Borges, Jorge Luis, 1899- 
                 &lt;http://errol.oclc.org/laf/n79-7035&gt;; [~2] Macedo, Jorge 
                 Borges de. &lt;http://errol.oclc.org/laf/n82-149895&gt;; [~3] 
                 Borges, Jorge G. (Jorge Guillermo), 1874-1938 
                 &lt;http://errol.oclc.org/laf/n90-681877&gt;; [~4] Sua?rez Lynch, B.                  
                 &lt;http://errol.oclc.org/laf/n82-21644&gt;; [~5] Borges, Jorge 
                 Wheliton Miranda &lt;http://errol.oclc.org/laf/n92-76758&gt;; [~6] 
                 Canido Borges, Jorge Oscar (3 more messages)
</pre>
<p>All in all it's an impressive mix of technology, standards and practice. It is not entirely clear to me how this work relates to the <a href="http://web.archive.org/web/20100210093731/http://www.oclc.org:80/research/projects/viaf/">Virtual International Authority File</a>. Perhaps LAF wasn't considered a good acronym? If you are interested in such things Thom Hickey had a really interesting talk at <a href="http://web.archive.org/web/20110722013853/http://www.access2006.uottawa.ca/">Access2006</a> which has <a href="http://web.archive.org/web/20070822080628/http://www.access2006.uottawa.ca/2006-10-14-03-hickeyt.mp3">audio</a> available.</p>
