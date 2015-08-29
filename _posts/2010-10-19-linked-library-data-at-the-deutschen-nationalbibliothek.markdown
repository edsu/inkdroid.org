---
layout: post
status: publish
published: true
title: Linked Library Data at the Deutschen Nationalbibliothek
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2503
wordpress_url: http://inkdroid.org/journal/?p=2503
date: '2010-10-19 17:17:23 +0000'
date_gmt: '2010-10-20 00:17:23 +0000'
tags:
- rdf
- linkeddata
- germany
- people
- authority records
comments: []
---
<p>Just last week Lars Svensson from the Deutschen Nationalbibliothek (German National Library aka DNB) made a big <a href="http://lists.w3.org/Archives/Public/public-lod/2010Oct/0016.html">announcement</a> that they have released their <a href="http://en.wikipedia.org/wiki/Authority_control">authority data</a> as <a href="http://en.wikipedia.org/wiki/Linked_Data">Linked Data</a> for the world to use. What this means is that there are now unique URLs (and machine readable data at the other end of them) for:</p>
<ul>
<li>1.8 million authors  from the <a href="http://web.archive.org/web/20120120051347/http://www.d-nb.de/standardisierung/normdateien/pnd.htm">Personennamendatei (PND)</a></li>
<li>1.3 million corporate bodies from the <a href="http://web.archive.org/web/20120204073314/http://www.d-nb.de/standardisierung/normdateien/gkd.htm">Gemeinsame Körperschaftsdatei (GKD)</a></li>
<li>187,000 subject headings from the <a href="http://web.archive.org/web/20120118174415/http://www.d-nb.de/standardisierung/normdateien/swd.htm">Schlagwortnormdatei (SWD)</a></li>
<li>51,000 Dewey Decimal Classification categories</li>
</ul>
<p>The full dataset that the DNB has made available for <a href="https://wiki.d-nb.de/display/LDS/Dokumentation+des+Linked+Data+Services+der+DNB">download</a> amounts to 38,849,113 individual statements (aka triples). Linked Data <a href="http://linkeddata.org">enthusiasts</a> that are used to thinking in terms of <a href="http://challenge.semanticweb.org/">billions of triples</a> might not even blink when seeing these numbers. But it is important to remember that these data assets have been curated by a network of German, Austrian and Swiss libraries, for close to a hundred of years, as they documented (and continue to document) all known German-language publications.</p>
<p>The simple act of making each of these authority records URL addressable, means that they can now meaningfully participate in the global information space some call the Web of Data. It's true, the records were available as part of the DNB's <a href="https://portal.d-nb.de/">Online Catalog</a> before they were released as Linked Data. What's new is that the DNB has <em>commited</em> to using persistent URLs to identify these records, using a new host name <em>d-nb.info</em> in combination with their own record identifiers. This means that people can persistently link to these DNB resources in their own web applications and data. Another subtle thing, and really the heart of what Linked Data pattern offers, is the ability to use the same URL to retrieve the record as structured metadata. The important thing about having machine readable data is it allows other applications to easily re-purpose the information, much like libraries have done traditionally by shipping around batches of <a href="http://loc.gov/marc">Machine Readable Cataloging (MARC)</a> records. Here's a practical example:</p>
<p>The URL <a href="http://d-nb.info/gnd/119053071">http://d-nb.info/gnd/119053071</a> identifies the author <a href="http://en.wikipedia.org/wiki/Herta_M%C3%BCller">Herta Müller</a>, who won the Nobel Prize for Literature in 2009. If you load that URL in your web browser by clicking on it, you should see a web page (HTML) for the authority record describing Herta Müller. But if a web client requests that same URL asking for <a href="http://en.wikipedia.org/wiki/Resource_Description_Framework">RDF</a> it will (via a redirect) get the same authority record as <a href="http://d-nb.info/gnd/119053071/about">RDF</a>. RDF is more a data model than a particular file format, so it has a variety of serializations ... The server at d-nb.info returns RDF/XML, and they have made their data dumps available in <a href="http://www.w3.org/2001/sw/RDFCore/ntriples/">N-Triples</a>...but I'm kind of fond of the <a href="http://www.w3.org/TeamSubmission/turtle/">Turtle</a> serialization which is kind of JSON-ish, and makes the RDF a bit more readable. Here is the RDF (as Turtle) for Herta Müller that the DBN makes available:</p>
<pre>
@prefix gnd: &lt;http://d-nb.info/gnd/&gt; .
@prefix rdaGr2: &lt;http://RDVocab.info/ElementsGr2/&gt; .
@prefix foaf: &lt;http://xmlns.com/foaf/0.1/&gt; .
@prefix owl: &lt;http://www.w3.org/2002/07/owl#&gt; .

&lt;http://d-nb.info/gnd/119053071&gt;
    rdaGr2:biographicalInformation "Rumän.-dt. Schriftstellerin und Essayistin, lebt seit 1987 in Deutschland, Literaturnobelpreisträgerin 2009"@de ;
    rdaGr2:dateOfBirth "1953" ;
    rdaGr2:identifierForThePerson "(DE-588)119053071", "(DE-588c)4293331-6", "(DLC)n  86833524" ;
    rdaGr2:placeOfBirth "Nitzkydorf (Banat)"@de ;
    rdaGr2:placeOfResidence "Berlin"@de ;
    rdaGr2:professionOrOccupation &lt;http://d-nb.info/gnd/4053311-6&gt; ;
    gnd:countryCodeForThePerson "XA-RO" ;
    gnd:preferredNameForThePerson [
        gnd:foreName "Herta" ;
        gnd:surname "Müller" ;
        gnd:usedRules "RAK-WB"
    ], "Müller, Herta" ;
    gnd:studyPathsOfThePerson "Germanistik, Romanistik"@de ;
    gnd:variantNameForThePerson [
        gnd:foreName "Cherta" ;
        gnd:surname "Myller" ;
        gnd:usedRules "RAK-WB"
    ], [
        gnd:personalName "Heta-Mulei" ;
        gnd:usedRules "RAK-WB"
    ], [
        gnd:foreName "Heta" ;
        gnd:surname "Mulei" ;
        gnd:usedRules "RAK-WB"
    ], [
        gnd:foreName "Herta" ;
        gnd:surname "Müller" ;
        gnd:usedRules "AACR"
    ], [
        gnd:foreName "Heruta" ;
        gnd:surname "Myur?" ;
        gnd:usedRules "RAK-WB"
    ], "Heta-Mulei", "Mulei, Heta", "Müller, Herta", "Myller, Cherta", "Myur?, Heruta" ;
    owl:sameAs &lt;http://dbpedia.org/resource/Herta_M%C3%BCller&gt;, &lt;http://viaf.org/viaf/12324250&gt; ;
    foaf:page &lt;http://de.wikipedia.org/wiki/Herta_M%C3%BCller&gt; .


</pre>
<p>A few interesting things to note in this example are the use the <a href="http://rdvocab.info/ElementsGr2">RDA Group 2 Entities vocabulary</a> and the GND vocabulary to describe Herta Müller. RDF vocabularies are explicit ways of describing resources like people, places, topics, etc. When different things are described using the same vocabulary (or the vocabularies themselves are related together in a particular way) it becomes possible to merge the descriptions, and build software on top of it. So the DNB's choice of RDA and GND is quite significant. Normally the URL for an RDF schema will return a description of that schema known as a <a href="http://www.w3.org/TR/webarch/#namespace-document">Namespace Document</a>. Namespace Documents are handy for understanding what exactly the vocabulary means, and how it might relate to other RDF vocabularies on the web. This is the case for the RDA vocabulary, but the GND vocabulary namespace doesn't appear to be resolving to anything that describes the GND vocabulary.</p>
<p>Another really interesting thing to note about this RDF for Herta Müller are the links to Wikipedia (<a href="http://de.wikipedia.org/wiki/Herta_M%C3%BCller">http://de.wikipedia.org/wiki/Herta_M%C3%BCller</a>), VIAF (<a href="http://viaf.org/viaf/12324250">http://viaf.org/viaf/12324250</a>) and dbpedia (<a href="http://dbpedia.org/resource/Herta_M%C3%BCller">http://dbpedia.org/resource/Herta_M%C3%BCller</a>).  These are important because they contextualize the DNB record for Herta Müller by relating it to other records for her, thus allowing it to be disambiguated from records describing other people named Herta Müller. Another beneficial side effect of linking your own records to others out on the Web of Data is that you enrich your own data in the process. For example if a machine agent resolves the dbpedia URI it will get back RDF that includes 114 new assertions, some of which you can see below:</p>
<pre>
@prefix rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt; .
@prefix dbpedia-owl: &lt;http://dbpedia.org/ontology/&gt; .
@prefix owl: &lt;http://www.w3.org/2002/07/owl#&gt; .
@prefix foaf: &lt;http://xmlns.com/foaf/0.1/&gt; .

&lt;http://dbpedia.org/resource/Herta_M%C3%BCller&gt;
    dbpedia-owl:birthDate "1953-08-17"^^&lt;http://www.w3.org/2001/XMLSchema#date&gt; ;
    dbpedia-owl:birthPlace &lt;http://dbpedia.org/resource/Ni%C5%A3chidorf&gt; ;
    dbpedia-owl:spouse &lt;http://dbpedia.org/resource/Richard_Wagner_%28novelist%29&gt; ;
    dbpedia-owl:thumbnail &lt;http://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Herta_M%C3%BCller_2007.JPG/200px-Herta_M%C3%BCller_2007.JPG&gt; ;
    rdfs:label "Herta Müller"@de, "Herta Müller"@en, "Herta Müller"@es, "Herta Müller"@fi, "Herta Müller"@fr, "Herta Müller"@it, "Herta Müller"@nl, "Herta Müller"@nn, "Herta Müller"@pl, "Herta Müller"@pt, "Herta Müller"@sv, "??????, ?????"@ru, "????????"@ja, "??·??"@zh ;
    owl:sameAs &lt;http://rdf.freebase.com/ns/guid.9202a8c04000641f8000000000dc69bb&gt;, &lt;http://umbel.org/umbel/ne/wikipedia/Herta_M%C3%BCller&gt; ;
    foaf:depiction &lt;http://upload.wikimedia.org/wikipedia/commons/2/2c/Herta_M%C3%BCller_2007.JPG&gt; .
</pre>
<p><a href="http://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Herta_M%C3%BCller_2007.JPG/200px-Herta_M%C3%BCller_2007.JPG"><img src="http://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Herta_M%C3%BCller_2007.JPG/200px-Herta_M%C3%BCller_2007.JPG" style="float: left; margin-right: 10px; padding-right: 10px;" /></a> So now we've enriched the DNB authority record with:</p>
<ul>
<li>a thumbnail picture of Herta Müller</li>
<li>her name in Japanese, Chinese and Russian</li>
<li>her birth day</li>
<li>her place of birth</li>
<li>a link to a similar record for her spouse Richard Wagner
</li>
<li>links to records for Herta Müller at <a href="http://freebase.org">Freebase</a> (recently <a href="http://googleblog.blogspot.com/2010/07/deeper-understanding-with-metaweb.html">purchased</a> by Google)
</li>
</ul>
<p>And that's just a sampling of the sorts of data that dbpedia returns. Another interesting one to look at is the <a href="http://viaf.org">Virtual International Authority File (VIAF)</a>, which links together the authority records for 18 National Libraries around the world. If you resolve the VIAF URL that DNB have linked to, you will get machine readable information for authority records from the the Library of Congress, NII (Japan), Biblioteca Nacional de Portugal, National Library of Sweden, Biblioteca Nacional de España, Bibliothèque nationale de France, National Library of the Czech Republic, and of course the Deutsche Nationalbibliothek. The information for the DNB and Sweden are particularly important because they in turn <em>link back to the records at the originating institution</em>: <a href="http://d-nb.info/gnd/119053071">http://d-nb.info/gnd/119053071</a> and <a href="http://libris.kb.se/auth/218085">http://libris.kb.se/auth/218085</a>. It might be worthwhile for the DNB to consider linking directly to their own record in VIAF http://viaf.org/viaf/12324250/#DNB%7C119053071 instead of http://viaf.org/viaf/12324250, but that's largely a technical matter. We've connected up the DNB's notion of Herta Müller with the Royal Library of Sweden's--just by <a href="http://inkdroid.org/journal/2008/01/04/following-your-nose-to-the-web-of-data/">following our nose</a> on the World Wide Web. And this is an activity that computer software can perform as well.</p>
<p>So, it's clear there's a whole lot of <em>library</em> linking going on. I did some quick and dirty analysis of the full data dump from the DNB and found: 3,569,402 links to VIAF and 40,136 links to dbpedia (the Linked Data version of Wikipedia). What remains to be done to some extent is leveraging this contextual information around our data in Library Applications, both cataloging, metadata enrichment applications and end user facing discovery applications.</p>
<p>One challenge to building applications that use this Web of Library Data are the vocabularies that are used. I did some more rudimentary analysis on the full DNB data dump and came up with this count of property usage:</p>
<table style="word-wrap: break-word;">
<tr>
<th>RDF Property</th>
<th>Number of Assertions</th>
</tr>
<tr>
<td>http://www.w3.org/2002/07/owl#sameAs</td>
<td>3,609,878</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/preferredNameForThePerson</td>
<td>3,609,753</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/usedRules</td>
<td>3,476,879</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/variantNameForThePerson</td>
<td>3,327,005</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/surname</td>
<td>3,218,840</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/foreName</td>
<td>3,218,125</td>
</tr>
<tr>
<td>http://RDVocab.info/ElementsGr2/identifierForTheCorporateBody</td>
<td>2,642,185</td>
</tr>
<tr>
<td>http://RDVocab.info/ElementsGr2/identifierForThePerson</td>
<td>2,163,258</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/preferredNameForTheCorporateBody</td>
<td>1,320,711</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/variantNameForTheCorporateBody</td>
<td>1,293,751</td>
</tr>
<tr>
<td>http://RDVocab.info/ElementsGr2/biographicalInformation</td>
<td>1,084,183</td>
</tr>
<tr>
<td>http://RDVocab.info/ElementsGr2/professionOrOccupation</td>
<td>1,059,570</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/publicationOfThePerson</td>
<td>986,418</td>
</tr>
<tr>
<td>http://RDVocab.info/ElementsGr2/dateOfBirth</td>
<td>971,993</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/countryCodeForThePerson</td>
<td>823,100</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/countryCodeForTheCorporateBody</td>
<td>759,088</td>
</tr>
<tr>
<td>http://RDVocab.info/ElementsGr2/periodOfActivityOfThePerson</td>
<td>539,230</td>
</tr>
<tr>
<td>http://RDVocab.info/ElementsGr2/gender</td>
<td>404,247</td>
</tr>
<tr>
<td>http://RDVocab.info/ElementsGr2/dateOfDeath</td>
<td>381,888</td>
</tr>
<tr>
<td>http://purl.org/dc/terms/identifier</td>
<td>337,230</td>
</tr>
<tr>
<td>http://metadataregistry.org/uri/schema/RDARelationshipsGR2/hierarchicalSuperior</td>
<td>277,484</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/personalName</td>
<td>258,214</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/prefixName</td>
<td>233,481</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/functionOfThePerson</td>
<td>211,045</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/invalidIdentifierForThePerson</td>
<td>208,267</td>
</tr>
<tr>
<td>http://RDVocab.info/ElementsGr2/placeOfBirth</td>
<td>192,563</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/qualifierName</td>
<td>169,284</td>
</tr>
<tr>
<td>http://www.w3.org/1999/02/22-rdf-syntax-ns#type</td>
<td>168,615</td>
</tr>
<tr>
<td>http://www.w3.org/2004/02/skos/core#prefLabel</td>
<td>163,854</td>
</tr>
<tr>
<td>http://www.w3.org/2004/02/skos/core#altLabel</td>
<td>143,254</td>
</tr>
<tr>
<td>http://xmlns.com/foaf/0.1/page</td>
<td>123,569</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/invalidIdentifierForTheCorporateBody</td>
<td>122,999</td>
</tr>
<tr>
<td>http://www.w3.org/2004/02/skos/core#broader</td>
<td>118,696</td>
</tr>
<tr>
<td>http://metadataregistry.org/uri/schema/RDARelationshipsGR2/predecessor</td>
<td>110,112</td>
</tr>
<tr>
<td>http://metadataregistry.org/uri/schema/RDARelationshipsGR2/successor</td>
<td>109,819</td>
</tr>
<tr>
<td>http://www.w3.org/2004/02/skos/core#narrower</td>
<td>102,850</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/preferredNameAcronymForTheCorporateBody</td>
<td>102,517</td>
</tr>
<tr>
<td>http://RDVocab.info/ElementsGr2/dateOfEstablishment</td>
<td>88,470</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/academicTitleOfThePerson</td>
<td>77,763</td>
</tr>
<tr>
<td>http://RDVocab.info/ElementsGr2/placeOfResidence</td>
<td>70,112</td>
</tr>
<tr>
<td>http://metadataregistry.org/uri/schema/RDARelationshipsGR2/relatedCorporateBodyPerson</td>
<td>65,319</td>
</tr>
<tr>
<td>http://www.w3.org/2004/02/skos/core#closeMatch</td>
<td>60,893</td>
</tr>
<tr>
<td>http://xmlns.com/foaf/0.1/homepage</td>
<td>59,065</td>
</tr>
<tr>
<td>http://RDVocab.info/ElementsGr2/dateOfTermination</td>
<td>38,997</td>
</tr>
<tr>
<td>http://RDVocab.info/ElementsGr2/dateOfTermination</td>
<td>38,997</td>
</tr>
<tr>
<td>http://www.w3.org/2004/02/skos/core#definition</td>
<td>37,086</td>
</tr>
<tr>
<td>http://RDVocab.info/ElementsGr2/placeOfDeath</td>
<td>35,266</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/locQualifier</td>
<td>35,220</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/studyPathsOfThePerson</td>
<td>33,307</td>
</tr>
<tr>
<td>http://www.w3.org/2004/02/skos/core#related</td>
<td>26,971</td>
</tr>
<tr>
<td>http://RDVocab.info/ElementsGr2/nameOfTheCorporateBody</td>
<td>20,009</td>
</tr>
<tr>
<td>http://RDVocab.info/ElementsGr2/languageOfThePerson</td>
<td>13,318</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/variantNameAcronymForTheCorporateBody</td>
<td>12,786</td>
</tr>
<tr>
<td>http://www.w3.org/2004/02/skos/core#scopeNote</td>
<td>11,000</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/useInsteadSWD</td>
<td>9,572</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/useInsteadNoteSWD</td>
<td>9,522</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/countryCodeForTheSubject</td>
<td>7,179</td>
</tr>
<tr>
<td>http://RDVocab.info/ElementsGr2/titleOfThePerson</td>
<td>6,798</td>
</tr>
<tr>
<td>http://purl.org/vocab/relationship/childOf</td>
<td>6,554</td>
</tr>
<tr>
<td>http://purl.org/vocab/relationship/parentOf</td>
<td>5,895</td>
</tr>
<tr>
<td>http://purl.org/vocab/relationship/spouseOf</td>
<td>5,613</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/successorWithoutPredecessor</td>
<td>5,574</td>
</tr>
<tr>
<td>http://www.w3.org/2000/01/rdf-schema#label</td>
<td>4,761</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/useConceptsInsteadSWD</td>
<td>4,761</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/invalidIdentifierForTheSubject</td>
<td>4,635</td>
</tr>
<tr>
<td>http://purl.org/vocab/relationship/siblingOf</td>
<td>3,891</td>
</tr>
<tr>
<td>http://metadataregistry.org/uri/schema/RDARelationshipsGR2/relatedPersonPerson</td>
<td>2,764</td>
</tr>
<tr>
<td>http://d-nb.info/gnd/predecessorWithoutSuccessor</td>
<td>1,501</td>
</tr>
<tr>
<td>http://purl.org/vocab/relationship/grandchildOf</td>
<td>493</td>
</tr>
<tr>
<td>http://www.w3.org/2000/01/rdf-schema#seeAlso</td>
<td>484</td>
</tr>
<tr>
<td>http://purl.org/vocab/relationship/grandparentOf</td>
<td>416</td>
</tr>
<tr>
<td>http://purl.org/dc/terms/language</td>
<td>266</td>
</tr>
</table>
<p>So we see heavy usage of the http://d-nb.info/gnd/ vocabulary, but we don't know precisely how this vocabulary connects up with other vocabularies in use on the Web. We also see the new RDA vocabulary http://RDVocab.info/ElementsGr2 heavily used. Whereas the trailblazing Royal Library of Sweden chose to leverage the Friend of a Friend vocabulary more. It's very important that we see some convergence in vocabulary use, so that our distributed data is interoperable, and mashable. This will undoubtedly lead to changes in what vocabularies are used, and growing pains in any applications that are dependent on the data. But I think it is worth it. I have high hopes that some of this convergence may come about as a result of meetings later this week at the <a href="http://www.asis.org/Conferences/DC2010/">Dublin Core Metadata Initiative 2010</a> meeting in Pittsburgh. But if it's going to scale, we need to see this convergence going on all the time in online forums like the <a href="http://lists.w3.org/Archives/Public/public-lld/">Linked Library Data discussion list</a>, and via tools that allow library data managers to view the emerging web of library data.</p>
<p>Another niggling little problem is the need to synchronize these data sets. For example how am I to know when DNB has created, updated or deleted one of their authority records? I could wait for a database dump, and blow away what I knew before. But ideally there would be a mechanism to keep my own view of the DNB data synchronized. Of course there is the tried and true <a href="http://www.openarchives.org/OAI/openarchivesprotocol.html">OAI-PMH</a> which VIAF is using to collect MARC rocords, but it is showing its age and doesn't really fit the Linked Data pattern very well. There is the successor to OAI-PMH, <a href="http://www.openarchives.org/ore/1.0/toc">OAI-ORE</a> which better fits more recent notions of Web Architecture and Linked Data. But there are some issues to do with very large resource maps which kind of need ironing out. The <a href="http://groups.google.com/group/dataset-dynamics">Dataset Dynamics</a> has been doing some interesting work identifying the various mechanisms for performing synchronization with an emphasis on using <a href="http://tools.ietf.org/html/rfc4287">Atom</a>. Atom is a <em>standard</em> XML document format for describing sets of web resources. In fact OAI-ORE <a href="http://www.openarchives.org/ore/1.0/atom">leverage</a> Atom as one of the serialization formats for resource maps. But I'm personally hoping we'll see some stream lined guidelines for publishing feeds for Linked Data, that leverage Atom's <a href="http://tools.ietf.org/html/rfc5005">Feed Paging/Archiving</a> for making large lists of resources available. Maybe the <a href="http://data.semanticweb.org/conference/eswc/2008/paper/356/html">Semantic Sitemaps</a> (an Linked Data extension to traditional <a href="http://sitemaps.org">sitemaps</a> that the <a href="http://google.com">big</a> <a href="http://bing.com">web</a> <a href="http://search.yahoo.com">search engines</a> use to stay on top of things. I imagine we'll see a combination of these approaches, but I think it's important to see some convergence amongst Library Linked Data publishers to help the ecosystem flourish.</p>
<p><em>Update:  I shared some more pedantic thoughts about the d-nb.info URLs in <a href="http://groups.google.com/group/pedantic-web/browse_thread/thread/dc58b0b03723009d">another forum</a>. I didn't want these particular technical details/questions to detract from saying how important I think the DNB Linked Data release is.</em></p>
