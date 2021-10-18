---
layout: post
status: publish
published: true
title: diving into VIAF
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 4497
wordpress_url: http://inkdroid.org/journal/?p=4497
date: '2012-05-15 10:57:59 +0000'
date_gmt: '2012-05-15 17:57:59 +0000'
tags:
- oclc
- rdf
- python
- linked-data
- unix
- authority-control
- viaf
comments:
- id: 85394
  author: Chris Adams
  author_email: chris@improbable.org
  author_url: https://www.google.com/accounts/o8/id?id=AItOawnjYt4eA4hzgDgYRfMpqMFitgKISVvzTc8
  date: '2012-05-15 11:50:51 +0000'
  date_gmt: '2012-05-15 18:50:51 +0000'
  content: 'I was curious whether PyPy would handle this faster but it looks like
    something changed which makes RDFlib choke on http://viaf.org/viaf/data/viaf-20120422-clusters.xml.gz.
    With a modified version of your script (https://gist.github.com/2704123) every
    line fails to parse ("Invalid property attribute URI: http://www.w3.org/1999/02/22-rdf-syntax-ns#about")'
- id: 85395
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2012-05-15 12:14:20 +0000'
  date_gmt: '2012-05-15 19:14:20 +0000'
  content: "Sorry it didn't work for you Chris. It works fine for me using python
    2.7.3 and rdflib v3.2. Let me know if you figure out what the problem is with
    your environment. For anyone else trying from home, in case it wasn't obvious
    you need to uncompress the data before you send it along to the script, e.g.\r\n\r\n<pre>\r\nzcat
    viaf-20120422-clusters-rdf.xml.gz | ./nt.py \r\n</pre>"
- id: 85396
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2012-05-15 12:28:00 +0000'
  date_gmt: '2012-05-15 19:28:00 +0000'
  content: "Out of curiosity I tried running the script to create ntriples under PyPy
    v1.8.0:\r\n\r\n<pre>\r\n(viaf-pypy)ed@curry:~/Datasets$ time zcat viaf-20120422-clusters-rdf.xml.gz
    | head -n1000 | pypy nt.py > y\r\n\r\nreal\t0m13.565s\r\nuser\t0m13.101s\r\nsys\t0m0.204s\r\n</pre>\r\n\r\nand
    compared it to Python v2.7.3:\r\n\r\n<pre>\r\n(viaf)ed@curry:~/Datasets$ time
    zcat viaf-20120422-clusters-rdf.xml.gz | head -n1000 | python nt.py > x \r\n\r\nreal\t0m12.408s\r\nuser\t0m12.077s\r\nsys\t0m0.120s\r\n</pre>\r\n\r\nStrangely,
    PyPy seems a bit slower, at least for the first 1000 lines..."
- id: 85397
  author: Thom
  author_email: hickey@oclc.org
  author_url: http://
  date: '2012-05-17 01:03:57 +0000'
  date_gmt: '2012-05-17 08:03:57 +0000'
  content: "We're open to adding more to the RDF view.  Not quite as enthusiastic
    about yet-another-view of the data, but we could do it.  Takes us about 20-30
    minutes to do a transformation, plus the time to pull it off the cluster and move
    it to the public location.\r\n\r\n--Th"
- id: 85398
  author: Thom
  author_email: hickey@oclc.org
  author_url: http://
  date: '2012-05-17 01:21:56 +0000'
  date_gmt: '2012-05-17 08:21:56 +0000'
  content: "The source IDs in the links file typically come from the 035 fields.  BnF
    is actually putting URIs in their 035's.\r\n \r\nYou should see links to DBPedia
    in the RDF and in the links file.\r\n\r\nPosted from #elag2012 !\r\n\r\n--Th"
- id: 85399
  author: Thom
  author_email: hickey@oclc.org
  author_url: http://
  date: '2012-05-17 02:10:37 +0000'
  date_gmt: '2012-05-17 09:10:37 +0000'
  content: "Just noticed that Chris was trying to parse the native XML representation,
    not the RDF XML.  Same clusters, different views in different files.  The native
    XML will parse, but just as XML, not XML-RDF.\r\n\r\n-Th"
- id: 85400
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2012-05-17 07:20:44 +0000'
  date_gmt: '2012-05-17 14:20:44 +0000'
  content: "Thom: \r\n\r\nWow, that's impressive: 30 minutes to create the a dump
    of this data. Have you written about the backend architecture recently? I remember
    seeing that OCLC was beginning to use Hadoop for some things. I understand the
    reluctance to create another RDF format, but arguably an ntriples dump is probably
    a bit more useful than the line oriented RDF/XML documents, at least for the cloister
    of folks who work with RDF data.\r\n\r\nThanks also for catching what Chris was
    doing wrong, I'll let him know (we work together).  I also probably have some
    wrong numbers for links to Wikipedia, since I lumped together all the http protocol
    links. I'll rerun the stats for the links, and update my post :-)"
- id: 85401
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2012-05-17 08:00:41 +0000'
  date_gmt: '2012-05-17 15:00:41 +0000'
  content: "Thom, unless I'm doing something profoundly wrong it doesn't look like
    there are any dbpedia URLs in the links dump:\r\n\r\n<pre>\r\n% curl http://viaf.org/viaf/data/viaf-20120422-links.txt.gz
    | zcat - |grep dbpedia\r\n</pre>\r\n\r\nThe only non-library links I could find
    were to en.wikipedia.org."
- id: 85403
  author: Thom
  author_email: hickey@oclc.org
  author_url: http://
  date: '2012-05-17 09:35:40 +0000'
  date_gmt: '2012-05-17 16:35:40 +0000'
  content: "Right, caught that too late.  The links file uses Wikipedia links and
    the RDF DBPedia.  Maybe not the best idea, but there for 'historical' reasons.\r\n\r\n--Th"
- id: 85404
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2012-05-17 09:39:04 +0000'
  date_gmt: '2012-05-17 16:39:04 +0000'
  content: Nice, thanks for the clarification Thom.
---

<p>Last week saw a big (well big for library data nerds) <a href="http://www.infodocket.com/2012/05/04/oclc-research-makes-virtual-international-authority-file-viaf-dataset-publicly-available/">announcement</a> from OCLC that they are making the <a href="http://viaf.org/viaf/data/ ">data</a> for the <a href="http://viaf.org">Virtual International Authority File (VIAF)</a> available for download under the terms of the <a href="http://opendatacommons.org/licenses/by/">Open Data Commons Attribution (ODC-BY)</a> license. If you're not already familiar with VIAF here's a brief description from <a href="http://www.oclc.org/research/activities/viaf/">OCLC Research</a>:</p>
<blockquote><p>
Most large libraries maintain lists of names for people, corporations, conferences, and geographic places, as well as lists to control works and other entities. These lists, or authority files, have been developed and maintained in distinctive ways by individual library communities around the world. The differences in how to approach this work become evident as library data from many communities is combined in shared catalogs such as OCLC's WorldCat.</p>
<p>VIAF's goal is to make library authority files less expensive to maintain and more generally useful to the library domain and beyond. To achieve this, VIAF seeks to include authoritative names from many libraries into a global service that is available via the Web. By linking disparate names for the same person or organization, VIAF provides a convenient means for a wider community of libraries and other agencies to repurpose bibliographic data produced by libraries serving different language communities</p>
<p>More specifically, the VIAF service: links national and regional-level authority records, creating clusters of related records and expands the concept of universal bibliographic control by:</p>
<ul>
<li>allowing national and regional variations in authorized form to coexist</li>
<li>supporting needs for variations in preferred language, script and spelling</li>
<li>playing a role in the emerging Semantic Web</li>
</ul>
</blockquote>
<p>If you went and looked at the OCLC Research page you'll notice that last month the VIAF project <a href="http://www.oclc.org/news/releases/2012/201224.htm">moved to OCLC</a>. This is evidence of a growing commitment on OCLC's part to make VIAF part of the library information landscape. It currently includes data about people, places and organizations from 22 different national libraries and other organizations.</p>
<p>Already there has been <a href="http://bibwild.wordpress.com/2012/04/09/re-usable-linked-big-data-for-real/">some</a> <a href="http://kcoyle.blogspot.com/2012/04/viaf-gets-serious.html">great</a> <a href="http://gavialib.com/2012/04/discovery-layers-and-metadata/">writing</a> about what the release of VIAF data means for the cultural heritage sector. In particular Thom Hickey's <a href="http://outgoing.typepad.com/outgoing/">Outgoing</a> is a trove of information about the project, which provides a behind-the-scense look at the various <a href="http://www.oclc.org/developer/documentation/virtual-international-authority-file-viaf/request-types">services</a> it offers.</p>
<p>Rather than paraphrase what others have said already I thought I would download some of the <a href="http://viaf.org/viaf/data/ ">data</a> and report on what it looks like. Specifically I'm interested in the RDF data (as opposed to the custom XML, and MARC variants) since I believe it to have the most explicit structure and relations. The shared semantics in the RDF vocabularies that are used also make it the most interesting from a Linked Data perspective.</p>
<h2>Diving In</h2>
<p>The primary data structure of interest in the data dumps that OCLC has made available is what they call the <em>cluster</em>. A cluster is essentially a hub-and-spoke model with a resource for the person, place or organization in the middle that is attached via the spokes to conceptual resources at the participating VIAF institutions. As an example here is an illustration of the VIAF cluster for the Canadian archivist <a href="http://viaf.org/viaf/14894854/">Hugh Taylor</a></p>
<p><a href="http://inkdroid.org/images/hugh-taylor-viaf.png"><img style="width: 700px;" src="http://inkdroid.org/images/hugh-taylor-viaf.png"/></a></p>
<p>Here you can see a FOAF Person resource (yellow) in the middle that is linked to from SKOS Concepts (blue) for Bibliothèque nationale de France, The Libraries and Archives of Canada, Deutschen Nationalbibliothek,  BIBSYS (Norway) and the Library of Congress. Each of the SKOS Concepts have their own preferred label, which you can see varies across institution. This high level view obscures quite a bit of data, which is probably best viewed in Turtle if you want to see it:</p>
<pre style="height: 300px;">
&lt;http://viaf.org/viaf/14894854&gt;
    rdaGr2:dateOfBirth "1920-01-22" ;
    rdaGr2:dateOfDeath "2005-09-11" ;
    a rdaEnt:Person, foaf:Person ;
    owl:sameAs &lt;http://d-nb.info/gnd/109337093&gt; ;
    foaf:name "Taylor, Hugh A.", "Taylor, Hugh A. (Hugh Alexander), 1920-", "Taylor, Hugh Alexander 1920-2005" .

&lt;http://viaf.org/viaf/sourceID/BIBSYS%7Cx90575046#skos:Concept&gt;
    a skos:Concept ;
    skos:inScheme &lt;http://viaf.org/authorityScheme/BIBSYS&gt; ;
    skos:prefLabel "Taylor, Hugh A." ;
    foaf:focus &lt;http://viaf.org/viaf/14894854&gt; .

&lt;http://viaf.org/viaf/sourceID/BNF%7C12688277#skos:Concept&gt;
    a skos:Concept ;
    skos:inScheme &lt;http://viaf.org/authorityScheme/BNF&gt; ;
    skos:prefLabel "Taylor, Hugh Alexander 1920-2005" ;
    foaf:focus &lt;http://viaf.org/viaf/14894854&gt; .

&lt;http://viaf.org/viaf/sourceID/DNB%7C109337093#skos:Concept&gt;
    a skos:Concept ;
    skos:inScheme &lt;http://viaf.org/authorityScheme/DNB&gt; ;
    skos:prefLabel "Taylor, Hugh A." ;
    foaf:focus &lt;http://viaf.org/viaf/14894854&gt; .

&lt;http://viaf.org/viaf/sourceID/LAC%7C0013G3497#skos:Concept&gt;
    a skos:Concept ;
    skos:inScheme &lt;http://viaf.org/authorityScheme/LAC&gt; ;
    skos:prefLabel "Taylor, Hugh A. (Hugh Alexander), 1920-" ;
    foaf:focus &lt;http://viaf.org/viaf/14894854&gt; .

&lt;http://viaf.org/viaf/sourceID/LC%7Cn++82148845#skos:Concept&gt;
    a skos:Concept ;
    skos:exactMatch &lt;http://id.loc.gov/authorities/names/n82148845&gt; ;
    skos:inScheme &lt;http://viaf.org/authorityScheme/LC&gt; ;
    skos:prefLabel "Taylor, Hugh A." ;
    foaf:focus &lt;http://viaf.org/viaf/14894854&gt; .

</pre>
<h2>The Numbers</h2>
<p>The RDF Cluster Dataset <a rel="no-follow" href="http://viaf.org/viaf/data/viaf-20120422-clusters.xml.gz">http://viaf.org/viaf/data/viaf-20120422-clusters.xml.gz</a> is 2.1G gzip compressed RDF data. Rather than it being one complete RDF/XML file, each line has a complete RDF/XML document on it, which represents a single cluster. All in all there are 20,379,541 clusters in the file.</p>
<p>I quickly hacked together a <a href="https://github.com/RDFLib/rdflib">rdflib</a> filter that reads the uncompressed line-oriented RDF/XML and writes the RDF as <a href="http://en.wikipedia.org/wiki/N-Triples">ntriples</a>:</p>
<pre lang="python">
import sys

import rdflib

for line in sys.stdin:
    g = rdflib.Graph()
    g.parse(data=line)
    print g.serialize(format='nt').encode('utf-8'),
</pre>
<p>This took 4 days to run on my (admittedly old) laptop. If you are interested in seeing the ntriples let me know and I can see about making it available somewhere. It is 2.8G gzip compressed. An ntriples dump might be a useful version of the RDF data for OCLC to make available, since it would be easier to load into triplestores, and otherwise muck around with (more on that below) than the line oriented RDF/XML. I don't know much about the backend that drives VIAF (has anyone seen it written up?)...but I would understand if someone said it was too expensive to generate, and was intentionally left as an exercise for the downloader.</p>
<p>Given its line-oriented nature, ntriples is very handy for doing analysis from the Unix command line with <a href="http://blog.datagraph.org/2010/03/grepping-ntriples">cut, sort, uniq, etc</a>. From the ntriples file I learned that the VIAF RDF dump is made up of 377,194,224 assertions or RDF triples. Here's the breakdown on the types of resources present in the data:</p>
<table>
<tr>
<th>Resource Type</th>
<th style="text-align: right;">Number of Resources</th>
</tr>
<tr>
<td>skos:Concept</td>
<td style="text-align: right;">26,745,286</td>
</tr>
<tr>
<td>foaf:Document</td>
<td style="text-align: right;">20,379,541</td>
</tr>
<tr>
<td>foaf:Person</td>
<td style="text-align: right;">15,043,112</td>
</tr>
<tr>
<td>rda:Person</td>
<td style="text-align: right;">15,043,112</td>
</tr>
<tr>
<td>foaf:Organization</td>
<td style="text-align: right;">3,722,318</td>
</tr>
<tr>
<td>foaf:CorporateBody</td>
<td style="text-align: right;">3,722,318</td>
</tr>
<tr>
<td>dbpedia:Place</td>
<td style="text-align: right;">195,472</td>
</tr>
</table>
<p>Here's a breakdown of predicates (RDF properties) that are used:</p>
<table>
<tr>
<th>RDF Property</th>
<th style="text-align: right;">Number of Assertions</th>
</tr>
<tr>
<td>rdf:type</td>
<td style="text-align: right;">84,851,159</td>
</tr>
<tr>
<td>foaf:focus</td>
<td style="text-align: right;">45,510,716</td>
</tr>
<tr>
<td>foaf:name</td>
<td style="text-align: right;">44,729,247</td>
</tr>
<tr>
<td>rdfs:comment</td>
<td style="text-align: right;">41,253,178</td>
</tr>
<tr>
<td>owl:sameAs</td>
<td style="text-align: right;">32,741,138</td>
</tr>
<tr>
<td>skos:prefLabel</td>
<td style="text-align: right;">26,745,286</td>
</tr>
<tr>
<td>skos:inScheme</td>
<td style="text-align: right;">26,745,286</td>
</tr>
<tr>
<td>foaf:primaryTopic</td>
<td style="text-align: right;">20,379,541</td>
</tr>
<tr>
<td>void:inDataset</td>
<td style="text-align: right;">20,379,541</td>
</tr>
<tr>
<td>skos:altLabel</td>
<td style="text-align: right;">16,702,081</td>
</tr>
<tr>
<td>skos:exactMatch</td>
<td style="text-align: right;">8,487,197</td>
</tr>
<tr>
<td>rda:dateOfBirth</td>
<td style="text-align: right;">5,215,150</td>
</tr>
<tr>
<td>rda:dateOfDeath</td>
<td style="text-align: right;">1,364,355</td>
</tr>
<tr>
<td>owl:differentFrom</td>
<td style="text-align: right;">1,045,172</td>
</tr>
<tr>
<td>rdfs:seeAlso</td>
<td style="text-align: right;">1,045,172</td>
</tr>
</table>
<p>I'm expecting these statistics to be useful in helping target some future work I want to do with the VIAF RDF dataset (to explore what an idiomatic JSON representation for the dataset would be, shhh). In addition to the RDF, OCLC also makes a dump of <a href="http://viaf.org/viaf/data/viaf-20120422-links.txt.gz">link data</a> available. It is a smaller file (239M gzip compressed) of tab delimited data, which looks like:</p>
<pre>
...
http://viaf.org/viaf/10014828   SELIBR:219751
http://viaf.org/viaf/10014828   SUDOC:052584895
http://viaf.org/viaf/10014828   NKC:xx0015094
http://viaf.org/viaf/10014828   BIBSYS:x98003783
http://viaf.org/viaf/10014828   LC:24893
http://viaf.org/viaf/10014828   NUKAT:vtls000425208
http://viaf.org/viaf/10014828   BNE:XX917469
http://viaf.org/viaf/10014828   DNB:121888096
http://viaf.org/viaf/10014828   BNF:http://catalogue.bnf.fr/ark:/12148/cb13566121c
http://viaf.org/viaf/10014828   http://en.wikipedia.org/wiki/Liza_Marklund
...
</pre>
<p>There are 27,046,631 links in total. With a little more Unix commandline-fu I was able to get some stats on the number of links by institution:</p>
<table>
<tr>
<th>Institution</th>
<th style="text-align: right">Number of Links</th>
</tr>
<tr>
<td><a href="http://id.loc.gov">LC NACO (United States)</a></td>
<td style="text-align: right">8,325,352</td>
</tr>
<tr>
<td><a href="http://dnb.de">Deutschen Nationalbibliothek (Germany)</a></td>
<td style="text-align: right">7,732,546</td>
</tr>
<tr>
<td><a href="http://www.sudoc.abes.fr/">SUDOC (France)</a></td>
<td style="text-align: right">2,031,452</td>
</tr>
<tr>
<td><a href="http://web.archive.org/web/20130426113122/http://bibsys.no/norsk/">BIBSYS (Norway)</a></td>
<td style="text-align: right">1,822,681</td>
</tr>
<tr>
<td><a href="http://www.bnf.fr">Bibliothèque nationale de France</a></td>
<td style="text-align: right">1,643,068</td>
</tr>
<tr>
<td><a href="http://www.nla.gov.au/">National Library of Australia</a></td>
<td style="text-align: right">977,141</td>
</tr>
<tr>
<td><a href="http://centrum.nukat.edu.pl/">NUKAT Center (Poland)</a></td>
<td style="text-align: right">894,981</td>
</tr>
<tr>
<td><a href="http://www.collectionscanada.gc.ca/">Libraries and Archives of Canada</a></td>
<td style="text-align: right">674,088</td>
</tr>
<tr>
<td><a href="http://www.nkp.cz/">National Library of the Czech Republic</a></td>
<td style="text-align: right">598,848</td>
</tr>
<tr>
<td><a href="http://www.bne.es/">Biblioteca Nacional de España</a></td>
<td style="text-align: right">519,511</td>
</tr>
<tr>
<td><a href="http://web.nli.org.il/sites/NLI">National Library of Israel</a></td>
<td style="text-align: right">327,455</td>
</tr>
<tr>
<td><a href="http://www.bnportugal.pt/">Biblioteca Nacional de Portugal</a></td>
<td style="text-align: right">321,064</td>
</tr>
<tr>
<td><a href="http://en.wikipedia.org">English Wikipedia</a></td>
<td style="text-align: right">301,345</td>
</tr>
<tr>
<td><a href="http://www.vaticanlibrary.va/">Vatican Library</a></td>
<td style="text-align: right">247,574</td>
</tr>
<tr>
<td><a href="http://www.getty.edu/research/conducting_research/vocabularies/">Getty Union List of Artist Names</a></td>
<td style="text-align: right">202,711</td>
</tr>
<tr>
<td><a href="http://www.kb.se/">National Library of Sweden</a></td>
<td style="text-align: right">161,845</td>
</tr>
<tr>
<td><a href="http://www.rero.ch/">RERO (Switzerland)</a></td>
<td style="text-align: right">119,366</td>
</tr>
<tr>
<td><a href="http://www.sbn.it/opacsbn/opac/iccu/informazioni.jsp">Istituto Centrale per il Catalogo Unico (Italy)</a></td>
<td style="text-align: right">45,208</td>
</tr>
<tr>
<td><a href="http://www.nb.admin.ch/slb/">Swiss National Library</a></td>
<td style="text-align: right">33,866</td>
</tr>
<tr>
<td><a href="http://www.oszk.hu/">National Széchényi Library (Hungary)</a></td>
<td style="text-align: right">33,727</td>
</tr>
<tr>
<td><a href="http://www.bibalex.org/">Bibliotheca Alexandrina (Egypt)</a></td>
<td style="text-align: right">26,877</td>
</tr>
<tr>
<td><a href="http://www.bibnet.be/portaal/Bibnet/Open-Vlacc">Flemish Public Libraries</a></td>
<td style="text-align: right">4,819</td>
</tr>
<tr>
<td><a href="http://www.rsl.ru/">Russian State Library</a></td>
<td style="text-align: right">997</td>
</tr>
<tr>
<td><a href="http://viaf.org/hosted/xa/">Extended VIAF Authority</a></td>
<td style="text-align: right">109</td>
</tr>
</table>
<p>The 301,345 links to Wikipedia are really great to see. It might be a fun project to see how many of these links are actually present in Wikipedia, and if they can be automatically added with a bot if they are missing. I think it's useful to have the HTTP identifier in the link dump file, as is the case for the BNF identifiers. I'm not sure why the DNB, Sweden, and LC URLs aren't expressed URLs as well.</p>
<p>One other parting observation (I'm sure I'll blog more about this) is that it would be nice if more of the data that you see in the HTML presentation were available in the RDF dumps. Specifically, it would be useful to have the Wikipedia links expressed in the RDF data, as well as linked works (uniform titles).</p>
<p>Anyway, a big thanks to OCLC for making the VIAF dataset available! It really feels like a major sea change in the cultural heritage data ecosystem.</p>
