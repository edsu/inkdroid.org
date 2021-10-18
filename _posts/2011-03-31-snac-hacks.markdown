---
layout: post
status: publish
published: true
title: snac hacks
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 3137
wordpress_url: http://inkdroid.org/journal/?p=3137
date: '2011-03-31 06:57:38 +0000'
date_gmt: '2011-03-31 13:57:38 +0000'
tags:
- rdf
- archives
- linked-data
- viaf
- eac
- ead
comments:
- id: 84402
  author: Jeff Young
  author_email: ''
  author_url: http://realworldobject.myopenid.com/
  date: '2011-03-31 18:29:11 +0000'
  date_gmt: '2011-04-01 01:29:11 +0000'
  content: "Ed,\r\n\r\nThis would be a valid Linked Data assertion:\r\n\r\n foaf:page
    \ .\r\n\r\nI agree it would be better if they coined an http URI that conformed
    to Cool URI behavior so that owl:sameAs was justified. If this URI was opaque
    it would also insulate them occasional but inevitable changes in the preferred
    form of the name.\r\n\r\nJeff"
- id: 84405
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2011-04-05 10:28:00 +0000'
  date_gmt: '2011-04-05 17:28:00 +0000'
  content: Jeff, yes foaf:page is better. When building up this dataset I needed to
    hang my SNAC EAC triples off of a subject URI prior to inferring the VIAF triples,
    so it was easier to just pretend that the socialarchive.iath.virginia.edu were
    httpRange-14 compliant. I guess it would make sense to rewrite them as foaf:page
    in the final named graph to make things correct.
---

<p>A few months ago <a href="http://www.cdlib.org/contact/staff_directory/btingle.html">Brian Tingle</a> <a href="http://www.mail-archive.com/code4lib@listserv.nd.edu/msg09694.html">posted</a> some exciting news that the <a href="http://socialarchive.iath.virginia.edu/">Social Networks and Archival Context</a> (SNAC) project was releasing the data that sits behind their initial <a href="http://socialarchive.iath.virginia.edu/xtf/search">prototype</a>:</p>
<blockquote><p>
As a part of our work on the Social Networks and Archival Context Project, the SNAC team is please to release more early results of our ongoing research.</p>
<p>A property graph of correspondedWith and associatedWith relationships between corporate, personal, and family identities is made available under the <a href="http://www.opendatacommons.org/licenses/by/">Open Data Commons Attribution License</a> in the form of a <a href="http://graphml.graphdrawing.org/">graphML</a> file. The graph expresses 245,367 relationships between 124,152 named entities.</p>
<p>The graphML file, as well as the scripts to create and load a graph database from EAC or graphML, are available on google code [5]</p>
<p>We are still researching how to map from the property graph model to RDF, but this graph processing stack will likely power the interactive visualization of the historical social networks we are developing.
</p></blockquote>
<p>The SNAC project have aggregated <a href="http://en.wikipedia.org/wiki/Finding_aid">archival finding aid</a> data for manuscript collections at the <a href="http://findingaids.loc.gov/">Library of Congress</a>, <a href="http://nwda.wsulibs.wsu.edu//">Northwest Digital Archives</a>, <a href="http://www.oac.cdlib.org/">Online Archive of California</a> and <a href="http://ead.lib.virginia.edu/vivaead/">Virginia Heritage</a>. They then used <a href="http://en.wikipedia.org/wiki/Authority_control">authority control data</a> from <a href="http://authorities.loc.gov/">NACO/LCNAF</a>, <a href="http://www.getty.edu/research/conducting_research/vocabularies/ulan/">Getty Union List of Artist Names Online (ULAN)</a> and <a href="http://viaf.org/">VIAF</a> to knit these archival finding aids using the <a href="http://eac.staatsbibliothek-berlin.de/">Encoded Archival Context – Corporate bodies, Persons, and Families (EAC-CPF)</a>.</p>
<p>I <a href="http://inkdroid.org/journal/2010/08/12/archival-context-on-the-web/">wrote</a> about SNAC here about 9 months ago, and how much potential there is in the idea of visualizing archival collections across institutions, along the axis of identity. I had also privately encouraged Brian to look into releasing some portion of the data that is driving their <a href="http://socialarchive.iath.virginia.edu/xtf/search">prototype</a>. So when Brian delivered I felt some obligation to look at the data and try to do something with it. Since Brian indicated that the project was interested in an RDF serialization, and <a href="http://matienzo.org/">Mark</a> had pointed me at <a href="http://lod-lam.net/summit/author/rubinsztajn/">Aaron Rubenstein's</a> <a href="http://purl.org/archival/vocab/arch">arch</a> vocabulary, I decided to take a stab at converting the GraphML data to some Arch flavored RDF.</p>
<p>So I <a href=https://bitbucket.org/edsu/eac-graph-load"">forked</a> Brian's <a href="http://code.google.com/p/eac-graph-load/source/checkout">mercurial repository</a>, and wrote a <a href="https://bitbucket.org/edsu/eac-graph-load/src/8e193cf83805/rdfizer.py">script</a> that parses the GraphML XML that Brian provided, and writes RDF (using arch:correspondedWith, arch:primaryProvenanceOf, arch:appearsWith) to a local triple store using <a href="http://rdflib.net">rdflib</a>. Since RDF has URLs cooked in pretty deep, part of this conversion involved reverse-engineering the SNAC URLs in the prototype, which wasn't terribly clean, but it seemed good enough for demonstration purposes.</p>
<p>Once I had those triples (877,595 of them) I learned from <a href="http://lists.w3.org/Archives/Public/public-lld/2011Mar/0178.html">Cory Harper</a> that the SNAC folks had matched up the archival identities with entries in the <a href="http://viaf.org">Virtual International Authority File</a>. The VIAF URLs aren't present in their GraphML data (GraphML is not as expressive as RDF), but they are available in the prototype HTML, which I had URLs for. So, again, in the name of demonstration and not purity, I wrote a little <a href="https://bitbucket.org/edsu/eac-graph-load/src/8e193cf83805/add_viaf.py">scraper</a> that would use the reverse-engineered SNAC URL to pull down the VIAF id. I tried to be respectful and not do this scraping in parallel, and to sleep a bit between requests. A few days of running and I had  40,237 owl:sameAs assertions that linked the SNAC URLs with the VIAF URLs.</p>
<p>With the VIAF URLs in hand I thought it would be useful to have a graph of only the VIAF related resources. It seemed like a VIAF centered graph of archival information could demonstrate something we've been talking about some in the <a href="http://www.w3.org/2005/Incubator/lld/charter">Library Linked Data W3C Incubator Group</a>: that Linked Data actually provides a technology that lets the archival and bibliographic description communities cross-pollinate and share. This is the real insight of the SNAC effort, that these communities have a lot in common, in that they both deal with people, places, organizations, etc. So I wrote another little <a href="https://bitbucket.org/edsu/eac-graph-load/src/8e193cf83805/infer.py">script</a> that created a named graph within the larger triple store, and used the owl:sameAs assertions to do some brute force inferencing, to generate triples relating VIAF resources with Arch.</p>
<p>I realize that Turtle isn't probably the most compelling example of the result, but in the absence of an app (maybe more on that forthcoming) that uses it, it'll have to do for now. So here are the assertions for Vannevar Bush, for the Linked Data <a href="http://inkdroid.org/journal/2010/09/15/triadomany/">fetishists</a> out there:</p>
<pre>
@prefix foaf &lt;http://xmlns.com/foaf/0.1/&gt; .
@prefix arch &lt;http://purl.org/archival/vocab/arch#&gt; .

&lt;http://viaf.org/viaf/15572358/#foaf:Person&gt;
    a foaf:Person ;
    foaf:name "Bush, Vannevar, 1890-1974." ;
    arch:appearsWith &lt;http://viaf.org/viaf/21341544/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/30867998/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/5076979/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/6653121/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/79397853/#foaf:Person&gt; ;
    arch:correspondedWith &lt;http://viaf.org/viaf/13632081/#foaf:Person&gt;,
        &lt;http://viaf.org/viaf/16555764/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/18495018/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/20482758/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/20994992/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/32065073/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/41170431/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/44376228/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/46092803/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/49966637/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/51816245/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/52483290/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/54269107/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/54947702/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/56705976/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/63110426/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/64014369/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/64087560/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/6724310/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/71767943/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/75645270/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/76361317/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/77126996/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/77903683/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/8664807/#foaf:Person&gt;, 
        &lt;http://viaf.org/viaf/92419478/#foaf:Person&gt; ;
    arch:primaryProvenanceOf &lt;http://hdl.loc.gov/loc.mss/eadmss.ms001043&gt;, 
        &lt;http://hdl.loc.gov/loc.mss/eadmss.ms007098&gt;, 
        &lt;http://hdl.loc.gov/loc.mss/eadmss.ms010024&gt;,
        &lt;http://hdl.loc.gov/loc.mss/eadmss.ms998004&gt;, 
        &lt;http://hdl.loc.gov/loc.mss/eadmss.ms998007&gt;, 
        &lt;http://hdl.loc.gov/loc.mss/eadmss.ms998009&gt;, 
        &lt;http://nwda-db.wsulibs.wsu.edu/findaid/ark:/80444/xv42415&gt;,
        &lt;http://www.oac.cdlib.org/findaid/ark:/13030/kt5b69p6zq&gt;, 
        &lt;http://www.oac.cdlib.org/findaid/ark:/13030/kt8w1014rz&gt; ;
    owl:sameAs &lt;http://socialarchive.iath.virginia.edu/xtf/view?docId=Bush+Vannevar+1890-1974-cr.xml&gt; .
</pre>
<p>I've made a <a href="http://dl.dropbox.com/u/2797650/snac-rdf.tar.bz2">full dump of the data</a> I created available if you are interested in taking a look. The nice thing is that the URIs are already published on the web, so I didn't need to mint any identifiers myself to publish this Linked Data. Although I kind of played fast and loose with the SNAC URIs for people since they don't do the <a href="http://www.w3.org/TR/cooluris/">httpRange-14 dance</a>. It's interesting that it doesn't seem to have immediately broken anything. It would be nice if the SNAC Prototype URIs were a bit cleaner I guess. Perhaps they could use some kind of identifier instead of baking the heading into the URL?</p>
<p>So maybe I'll have some time to build a simple app on top of this data. But hopefully I've at least communicated how useful it could be for the cultural heritage community to share web identifiers for people, and use them in their data. RDF also proved to be a nice malleable data model for expressing the relationships, and serializing them so that others could download them. Here's to the emerging (hopefully) <a href="http://dig.csail.mit.edu/breadcrumbs/node/215">Giant Global GLAM Graph</a>!</p>
