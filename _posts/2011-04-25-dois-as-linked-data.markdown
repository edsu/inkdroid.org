---
layout: post
status: publish
published: true
title: DOIs as Linked Data
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 3176
wordpress_url: http://inkdroid.org/journal/?p=3176
date: '2011-04-25 13:25:07 +0000'
date_gmt: '2011-04-25 20:25:07 +0000'
tags:
- rdf
- web
- identifiers
- linked-data
- wikipedia
- doi
- scholarship
comments:
- id: 84429
  author: bibwild.wordpress.com/
  author_email: rochkind@jhu.edu
  author_url: http://bibwild.wordpress.com/
  date: '2011-04-25 18:22:18 +0000'
  date_gmt: '2011-04-26 01:22:18 +0000'
  content: "So what I'm thinking though, is that realistically I'm not going to be
    able to write software to actually USE this unless I know what vocabularies to
    expect. \r\n\r\nIt's already odd to me that entirely different vocabularies are
    being used in the Atom version (PRISM), (mostly DC -- but DC used in particular
    ways; there's no reason for software to expect an ISSN in dcterms:isPartOf unless
    it knows to, is there? And why are they using their own local ISSN URIs?), and
    xml-rdf (I don't think this is even using the same vocab as the turtle, is it?)\r\n\r\nAm
    I mis-reading, or is each serialization using entirely different set of mixed
    and matched vocabularies?\r\n\r\nAnd it looks like while you can content-negotiate
    with dx.doi.org, what actual vocabularies you get back in a given content-negotiated
    format is completely up in the air, up to the registrar, could be different for
    every DOI or change at any time. \r\n\r\nIt strikes me that knowing that something
    is \"atom\" or \"turtle\" or \"rdf+xml\" is NOT enough to write software that
    can consume it and do something with it.  Those really end up being more 'serialization'
    formats than actual useful metadata formats -- whether software is going to be
    able to do something with it is all about the vocabularies (expressed as namespaces
    in atom). \r\n\r\nSo, while a human can look at these to 'follow their nose'...
    I'd really love my software (such as Umlaut) to be able to make use of it too,
    but unless DOI does a bit of standardization here and documents what vocabularies
    one can expect... it's not clear to me how to do that. A promissing first step,
    but it seems to me a second step is needed to make it more than a toy/proof of
    concept. No?\r\n\r\n(And yeah, I posted a comment to this effect on their blog
    too. I'm thinking that our comments are lost to the aether never to be approved)."
- id: 84450
  author: Andy Powell
  author_email: andy.powell@eduserv.org.uk
  author_url: http://andypowe11.net/
  date: '2011-04-26 01:56:31 +0000'
  date_gmt: '2011-04-26 08:56:31 +0000'
  content: "Minor(ish) comment.  The\r\n\r\n \"Nature Publishing Group\" ;\r\n\r\nin
    the first Turtle example, should really be\r\n\r\n  ;\r\n\r\nI think. Dunno if
    you can pass this back to people at Crossref?"
- id: 84461
  author: Andy Powell
  author_email: andy.powell@eduserv.org.uk
  author_url: http://andypowe11.net/
  date: '2011-04-26 04:00:52 +0000'
  date_gmt: '2011-04-26 11:00:52 +0000'
  content: "Gah, sorry... garbled comment of mine above. Trying again...\r\n\r\nThe\r\n\r\n&lt;http://purl.org/dc/terms/publisher&gt;
    \"Nature Publishing Group\" ;\r\n\r\nin the first Turtle example, should really
    be\r\n\r\n&lt;http://purl.org/dc/terms/publisher&gt; &lt;http://periodicals.dataincubator.org/organization/nature-publishing-group&gt;
    ;\r\n\r\nI think. Dunno if you can pass this back to people at Crossref?"
- id: 84466
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2011-04-26 06:08:44 +0000'
  date_gmt: '2011-04-26 13:08:44 +0000'
  content: "@jonathan I agree that it would be nice to see a page that describes the
    new CrossRef Linked Data service, and which documents the RDF vocabularies that
    are used. I did double-check that the application/rdf+xml and text/turtle serializations
    are saying the same thing (a sorted ntriples view + diff is handy for this btw).\r\n\r\nPersonally,
    I wouldn't worry too much about the vocabulary changing significantly. At this
    point Dublin Core is kind of the lingua-franca of metadata on the Web--at least
    in the Linked Data space. It is a bit worrisome that the PRISM vocabulary doesn't
    seem to be defined at the URIs that they are using, so if you are looking to be
    cautious I'd probably shy away from burning any of those into you software.\r\n\r\nAnother
    thing to think about: is the potentially variable use of RDF vocabulary really
    anything new? For example an API provider could change the structure of the JSON
    being delivered at any time. It's arguable that JSON tends to be a lot simpler,
    so there's less brittleness. Also JSON driven APIs tend to be documented and versioned
    more explicitly.\r\n\r\nYour comments got me thinking about how important the
    documentation around these data APIs is. Apart from providing much needed information
    about the reason why the API is there, and how to use it, they provide context
    which really forms a foundation for trust around the service, which in turn emboldens
    people to start to depend on the service in other services like the Umlaut."
- id: 84499
  author: bibwild.wordpress.com/
  author_email: rochkind@jhu.edu
  author_url: http://bibwild.wordpress.com/
  date: '2011-04-26 17:31:16 +0000'
  date_gmt: '2011-04-27 00:31:16 +0000'
  content: "Ah, Ed, but I've GOT to use the PRISM elements to do what I want to do,
    just DC is not nearly sufficient for my use cases. \r\n\r\nIt's true that people
    providing APIs that change all the time without notice or documentation is nothing
    new -- but we know those as 'crappy APIs'.  \r\n\r\nI think some people are misunderstanding
    the practical utility of RDF, thinking \"Oh, see, it's in RDF, that automatically
    makes it machine useable.\" But without documentation and a commit to standardization
    of the vocabularies in certain ways, I can't write code to use it -- at least
    not with any way to predict what proportion of identifiers (DOIs in this case)
    it will actually work with (do they all have PRISM or just some? Who knows), or
    any way to predict if it will keep working in the future. \r\n\r\nAs near as I
    can tell from reading their announcement, exactly what metadata to provide is
    _completely_ up to the \"registration agency\", such as CrossRef or DataCite.
    \ An individual registration agency don't have to provide the same vocabularies
    (or even the same top-level serialization formats) for every identifier; they
    don't need to keep it the same over time; they don't need to be consistent amongst
    themselves (CrossRef vs DataCite), and they don't need to TELL us what they're
    planning on providing or how often it will change. \r\n\r\nFrom my perspective,
    that's completely unworkable for me to invest software development resources against
    it. It needs the next step, which is some documentation/standardization of some
    kind. And I think DOI needs to take that next step and require that of the registration
    agencies. And I think they need to hear that from people like us, or rather people
    like you who understand this stuff way better than me, everyone just tells me
    I'm missing the true power (of having no idea what data to expect, heh)."
- id: 84502
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2011-04-26 19:06:14 +0000'
  date_gmt: '2011-04-27 02:06:14 +0000'
  content: "@jonathan I think you are reading between the lines with the CrossRef
    linked data offerings quite a bit...which is understandable given the amount of
    writing that has been done about it. I would see what you can use in the data,
    and try to trust that it won't change much before assuming that it will. If I'm
    going to read a bit between your lines I would hazard a guess that this might
    be the first time you've thought about trying to consume some RDF in an application...and
    it's normal (and wise) to be a bit nervous about that..."
- id: 84514
  author: New Linked Data for Libraries - semanticweb.com
  author_email: ''
  author_url: http://semanticweb.com/new-linked-data-for-libraries_b19505
  date: '2011-04-27 08:01:32 +0000'
  date_gmt: '2011-04-27 15:01:32 +0000'
  content: "[...] new blog post discusses some “big news for folks interested in Library
    Linked Data: CrossRef has made the [...]"
- id: 84518
  author: bibwild.wordpress.com/
  author_email: rochkind@jhu.edu
  author_url: http://bibwild.wordpress.com/
  date: '2011-04-27 15:58:01 +0000'
  date_gmt: '2011-04-27 22:58:01 +0000'
  content: "Ed, where do you think I'm reading between the lines? I'm confused. \r\n\r\nThey
    seem to be saying that the registration agencies themselves will be responsible
    for those alternate representaitons, not DOI central. No?\"It also means that,
    as registration agency members (CrossRef publishers, for instance) start providing
    more complete and richer representations of their content, we can simply redirect
    content-negotiated requests directly to them.\"\r\n\r\nAnd they make no mention
    of any standardization of vocabularies or serializations."
- id: 84519
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2011-04-27 18:26:51 +0000'
  date_gmt: '2011-04-28 01:26:51 +0000'
  content: "@jonathan yeah I see your point ... they could change the service to redirect
    to representations hosted by publishers in the future. For some reason I don't
    see that happening particularly soon. It would definitely make the situation more
    complicated if that happened without some vocabulary consolidation. But I don't
    think it's necessarily worthwhile to worry too much about a hypothetical situation
    right now."
- id: 84526
  author: 'The DOI, DataCite and Linked Data: Made for each other! &laquo; Bitwacker
    Associates'
  author_email: ''
  author_url: http://bitwacker.wordpress.com/2010/01/19/the-doi-datacite-and-linked-data-made-for-each-other/
  date: '2011-04-28 08:03:05 +0000'
  date_gmt: '2011-04-28 15:03:05 +0000'
  content: "[...] Ed Summers provides a great explanation of the significance of this
    in his recent INKDROID post, DOIs as Linked Date. Possibly related posts: (automatically
    generated)Long Tails and &ldquo;Scaling Down&rdquo; Linked [...]"
- id: 84527
  author: DOIs, URIs and Cool Resolution &laquo; Bitwacker Associates
  author_email: ''
  author_url: http://bitwacker.wordpress.com/2010/02/04/dois-uris-and-cool-resolution/
  date: '2011-04-28 08:08:23 +0000'
  date_gmt: '2011-04-28 15:08:23 +0000'
  content: "[...] Update 3 (28 Apr 2011): Great news! This week CrossRef, the IDF
    and CNRI announced the completion of their implementation of Content Negotiation
    for CrossRef DOIs. As that post describes, it is an implementaton of &#8220;Option
    D&#8221; in last year&#8217;s CrossTech post, DOIs and Linked Data: Some Concrete
    Proposals. Ed Summers provides a great explanation of the significance of this
    in his recent INKDROID post, DOIs as Linked Date. [...]"
- id: 84535
  author: 'Chris Mavergames: Random thoughts on Drupal, RDF, Open Calais and linked
    data &#8211; Exquisite Web Creations'
  author_email: ''
  author_url: http://www.bestcybersolutions.com/exquisite/blog/2011/04/30/chris-mavergames-random-thoughts-on-drupal-rdf-open-calais-and-linked-data/
  date: '2011-04-30 01:00:32 +0000'
  date_gmt: '2011-04-30 08:00:32 +0000'
  content: "[...] Okay, I&#8217;ll stop quoting from his post. You really need to
    read the whole post. It&#8217;s great. Go here [...]"
- id: 84542
  author: Infobib &raquo; DOIs as Linked Data
  author_email: ''
  author_url: http://infobib.de/blog/2011/05/02/dois-as-linked-data/
  date: '2011-05-02 08:18:36 +0000'
  date_gmt: '2011-05-02 15:18:36 +0000'
  content: "[...] Zusammenfassung des Themas DOIs as Linked Data von Ed Summers, als
    Reaktion auf die Ankündigung von Crossref, DOIs in dieser Form verfügbar zu [...]"
- id: 84543
  author: inkdroid › DOIs as Linked Data | Virtually a Librarian
  author_email: ''
  author_url: http://infofairy.wordpress.com/2011/05/02/inkdroid-%e2%80%ba-dois-as-linked-data/
  date: '2011-05-02 13:25:11 +0000'
  date_gmt: '2011-05-02 20:25:11 +0000'
  content: "[...] inkdroid › DOIs as Linked Data. [...]"
- id: 84606
  author: Building a semantic notebook &#8211; Carl Boettiger
  author_email: ''
  author_url: http://www.carlboettiger.info/archives/1626
  date: '2011-05-08 18:40:20 +0000'
  date_gmt: '2011-05-09 01:40:20 +0000'
  content: "[...] In my notebook, the citations are included by DOI whenever possible,
    using the KCite plugin.  DOI&#8217;s are linked data.  Further information can
    be added to any link using the [2] [3] plugin, which in addition to [...]"
- id: 85422
  author: Altmetric for Scopus app launched! - Weekly Twitter Activity 2012-06-15
    | Michael Habib | Nudging Serendipity
  author_email: ''
  author_url: http://mchabib.com/2012/06/15/weekly-twitter-activity-2012-06-15/
  date: '2012-07-06 15:06:08 +0000'
  date_gmt: '2012-07-06 22:06:08 +0000'
  content: "[...] Research objects get DOI:s @figshare http://t.co/n3u09GVd and DOI:s
    as #LinkedData @CrossRefNews http://t.co/HcGLSsdV 2012-06-14RT @altmetrics12:
    Check out the program of our workshop at @websci12: 2 keynotes, 5 [...]"
---

<p>Last week <a href="http://dilettantes.code4lib.org/blog/">Ross Singer</a> alerted me to some pretty<a href="http://www.crossref.org/CrossTech/2011/04/content_negotiation_for_crossr.html"> big news</a> for folks interested in Library Linked Data: <a href="http://crossref.org">CrossRef</a> has made the metadata for 46 million <a href="http://en.wikipedia.org/wiki/Digital_object_identifier">Digital Object Identifiers</a> (DOI) available as Linked Data. DOIs are heavily used in the publishing space to uniquely identify electronic documents (largely scholarly journal articles). CrossRef is a consortium of roughly 3,000 publishers, and is a big player in the academic publishing marketplace.</p>
<p>So practically what this means is that all the places in the scholarly publishing ecosystem where DOIs are present (caveat below), it's now possible to use the Web to retrieve metadata associated with that electronic document. Say you've got a DOI in the database backing your institutional repository:</p>
<blockquote><p>
doi:10.1038/171737a0
</p></blockquote>
<p>you can use the DOI to construct a URL:</p>
<blockquote><p>
http://dx.doi.org/<span style="color: red;">10.1038/171737a0</span>
</p></blockquote>
<p>and then do an HTTP GET (what your Web browser is doing all the time as you wander around the Web) to ask for metadata about that document:</p>
<blockquote><p>
curl --location --header "Accept: text/turtle" http://dx.doi.org/10.1038/171737a0
</p></blockquote>
<p>At which point you will get back some <a href="http://www.w3.org/TeamSubmission/turtle/">Turtle flavored RDF</a> that looks like:</p>
<pre>
&lt;http://dx.doi.org/10.1038/171737a0&gt;
    <span style="color: red;">a &lt;http://purl.org/ontology/bibo/Article&gt;</span> ;
    <span style="color: blue;">&lt;http://purl.org/dc/terms/title&gt; "Molecular Structure of Nucleic Acids: A Structure for Deoxyribose Nucleic Acid"</span> ;
    <span style="color: green;">&lt;http://purl.org/dc/terms/creator&gt; &lt;http://id.crossref.org/contributor/f-h-c-crick-367n8iqsynab1&gt;, &lt;http://id.crossref.org/contributor/j-d-watson-367n8iqsynab1&gt;</span> ;
    &lt;http://prismstandard.org/namespaces/basic/2.1/doi&gt; "10.1038/171737a0" ;  
    <span style="color: purple;">&lt;http://prismstandard.org/namespaces/basic/2.1/endingPage&gt; "738"</span> ;
    <span style="color: purple;">&lt;http://prismstandard.org/namespaces/basic/2.1/startingPage&gt; "737"</span> ;
    <span style="color: purple;">&lt;http://prismstandard.org/namespaces/basic/2.1/volume&gt; "171"</span> ;
    <span style="color: #ffcc99;">&lt;http://purl.org/dc/terms/date&gt; "1953-04-25Z"^^&lt;http://www.w3.org/2001/XMLSchema#date&gt;</span> ;
    &lt;http://purl.org/dc/terms/identifier&gt; "10.1038/171737a0" ;
    <span style="color: #00cccc;">&lt;http://purl.org/dc/terms/isPartOf&gt; &lt;http://id.crossref.org/issn/0028-0836&gt;</span> ;
    &lt;http://purl.org/dc/terms/publisher&gt; "Nature Publishing Group" ;
    &lt;http://purl.org/ontology/bibo/doi&gt; "10.1038/171737a0" ;
    &lt;http://purl.org/ontology/bibo/pageEnd&gt; "738" ;
    &lt;http://purl.org/ontology/bibo/pageStart&gt; "737" ;
    &lt;http://purl.org/ontology/bibo/volume&gt; "171" ;
    &lt;http://www.w3.org/2002/07/owl#sameAs&gt; &lt;doi:10.1038/171737a0&gt;, &lt;info:doi/10.1038/171737a0&gt; .

<span style="color: green;">
&lt;http://id.crossref.org/contributor/f-h-c-crick-367n8iqsynab1&gt;
    a &lt;http://xmlns.com/foaf/0.1/Person&gt; ;
    &lt;http://xmlns.com/foaf/0.1/familyName&gt; "CRICK" ;
    &lt;http://xmlns.com/foaf/0.1/givenName&gt; "F. H. C." ;
    &lt;http://xmlns.com/foaf/0.1/name&gt; "F. H. C. CRICK" .

&lt;http://id.crossref.org/contributor/j-d-watson-367n8iqsynab1&gt;
    a &lt;http://xmlns.com/foaf/0.1/Person&gt; ;
    &lt;http://xmlns.com/foaf/0.1/familyName&gt; "WATSON" ;
    &lt;http://xmlns.com/foaf/0.1/givenName&gt; "J. D." ;
    &lt;http://xmlns.com/foaf/0.1/name&gt; "J. D. WATSON" .
</span>
</pre>
<p>Well without all the funky colors...I put them there to help illustrate how the RDF includes some useful information, such as:</p>
<ul>
<li style="color: red;">the document is an Article</li>
<li style="color: blue;">it has the title "Molecular Structure of Nucleic Acids: A Structure for Deoxyribose Nucleic Acid"</li>
<li style="color: #ffcc99;">the article was published on April 25th, 1953</li>
<li style="color: #00cccc;">the article was published in the journal Nature</li>
<li style="color: green;">the article was written by two people: J. D. Watson and F. H. C. Crick</li>
<li style="color: purple;">it can be found in volume 171, on pages 737-738</li>
</ul>
<p>It's also interesting that both the <a href="http://bibliontology.com/">Bibliographic Ontology</a> and the <a href="http://www.idealliance.org/specifications/prism/">Publishing Requirements for Industry Standard Metadata (PRISM)</a> vocabularies being used. RDF lets you mix in different vocabularies like this. Some people might see this description as partly redundant, but it allows a data publisher to play the field a bit in its descriptions, while still committing to a particular URL for the resource.</p>
<p>Anyhow, the whole point of Linked Data is that you (or your software) can <a href="http://inkdroid.org/journal/2008/01/04/following-your-nose-to-the-web-of-data/">follow your nose</a> by noticing links to related resources of interest in the data. If you are familiar with Turtle and RDF (a more visual diagram is below) you'll see that the article "Molecular Structure of Nucleic Acids" is "part of" another resource:</p>
<blockquote><p>
http://id.crossref.org/issn/0028-0836
</p></blockquote>
<p>If we follow our nose to this URL we get another bit of RDF:</p>
<pre>
&lt;http://id.crossref.org/issn/0028-0836&gt;
    &lt;http://purl.org/dc/terms/publisher&gt; &lt;http://periodicals.dataincubator.org/organization/nature-publishing-group&gt; ;
    <span style="color: red;">&lt;http://purl.org/dc/terms/sameAs&gt; &lt;http://periodicals.dataincubator.org/issn/0028-0836&gt;</span>, &lt;urn:issn:0028-0836&gt; ;
    &lt;http://purl.org/dc/terms/title&gt; "Nature" ;
    a "http://purl.org/ontology/bibo/Journal" .
</pre>
<p>Which tells us that the article is part of the journal Nature, which is the "same as" link to a resource in <a href="http://periodicals.dataincubator.org/.html">Linked Periodicals Data</a> at the <a href="http://dataincubator.org">Data Incubator</a>. When we resolve that URL we eventually get some more RDF:</p>
<pre>
&lt;http://periodicals.dataincubator.org/journal/nature&gt;
    dc:identifier &lt;info:pmid/0410462&gt;, &lt;info:pmid/0410463&gt; ;
    dc:subject "BIOLOGY", "Biologie", "CIENCIA", "NATURAL HISTORY", "Natuurwetenschappen", "Physique", "SCIENCE", "Science", "Sciences" ;
    dct:publisher &lt;http://periodicals.dataincubator.org/organization/nature-publishing-group&gt; ;
    <span style="color: red;">dct:subject &lt;http://id.loc.gov/authorities/sh85014203&gt;</span>, &lt;http://id.loc.gov/authorities/sh00007934&gt;, &lt;http://id.loc.gov/authorities/sh85015263&gt;, &lt;http://id.loc.gov/authorities/sh85090222&gt;, &lt;http://id.loc.gov/authorities/sh85118553&gt; ;
    dct:title "Nature" ;
    bibo:eissn "1476-4687" ;
    bibo:issn "0028-0836", "0090-0028" ;
    bibo:shortTitle "Nat New Biol", "Nature", "Nature New Biol." ;
    a bibo:Journal ;
    owl:sameAs &lt;http://periodicals.dataincubator.org/eissn/1476-4687&gt;, &lt;http://periodicals.dataincubator.org/issn/0028-0836&gt;, &lt;http://periodicals.dataincubator.org/issn/0090-0028&gt; ;
    foaf:isPrimaryTopicOf &lt;http://locatorplus.gov/cgi-bin/Pwebrecon.cgi?DB=local&v1=1&ti=1,1&Search_Arg=0410462&Search_Code=0359&CNT=20&SID=1&gt;, &lt;http://locatorplus.gov/cgi-bin/Pwebrecon.cgi?DB=local&v1=1&ti=1,1&Search_Arg=0410463&Search_Code=0359&CNT=20&SID=1&gt;, &lt;http://www.ncbi.nlm.nih.gov/sites/entrez?Db=nlmcatalog&doptcmdl=Expanded&cmd=search&Term=0410462%5BNlmId%5D&gt;, &lt;http://www.ncbi.nlm.nih.gov/sites/entrez?Db=nlmcatalog&doptcmdl=Expanded&cmd=search&Term=0410463%5BNlmId%5D&gt; .
</pre>
<p>Which (among other things) tells us that the journal Nature publishes content with the topic of "Biology" from the <a href="http://web.archive.org/web/20110720034058/http://id.loc.gov:80/authorities">Library of Congress Subject Headings</a>:</p>
<pre>
&lt;http://id.loc.gov/authorities/sh85014203#concept&gt;
    skos:prefLabel "Biology"@en ;
    dcterms:created "1986-02-11T00:00:00-04:00"^^&lt;http://www.w3.org/2001/XMLSchema#dateTime&gt; ;
    dcterms:modified "1990-10-09T11:20:35-04:00"^^&lt;http://www.w3.org/2001/XMLSchema#dateTime&gt; ;
    a skos:Concept ;
    owl:sameAs &lt;info:lc/authorities/sh85014203&gt; ;
    skos:broader &lt;http://id.loc.gov/authorities/sh85076841#concept&gt; ;
    <span style="color: red;">skos:closeMatch &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb119440835&gt;</span> ;
    skos:inScheme &lt;http://id.loc.gov/authorities#conceptScheme&gt;, &lt;http://id.loc.gov/authorities#topicalTerms&gt; ;
    skos:narrower &lt;http://id.loc.gov/authorities/sh00003440#concept&gt;, &lt;http://id.loc.gov/authorities/sh2001012327#concept&gt;, &lt;http://id.loc.gov/authorities/sh2003008355#concept&gt;, &lt;http://id.loc.gov/authorities/sh2005001919#concept&gt;, &lt;http://id.loc.gov/authorities/sh2006001276#concept&gt;, &lt;http://id.loc.gov/authorities/sh2006002547#concept&gt;, &lt;http://id.loc.gov/authorities/sh2006005143#concept&gt;, &lt;http://id.loc.gov/authorities/sh2007007463#concept&gt;, &lt;http://id.loc.gov/authorities/sh2009008123#concept&gt;;
    skos:related &lt;http://id.loc.gov/authorities/sh85076810#concept&gt;, &lt;http://id.loc.gov/authorities/sh85090222#concept&gt;, &lt;http://id.loc.gov/authorities/sh90000612#concept&gt; .
</pre>
<p>Here we can see the topic of <a href="http://id.loc.gov/authorities/sh85014203">Biology</a> as it relates to other concepts in the Library of Congress Subject Headings, as well as a similar concept in <a href="ttp://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb119716335">Biologie générale</a> from <a href="http://rameau.bnf.fr/">RAMEAU</a>, which are subject headings from the <a href="http://www.bnf.fr/">Bibliothèque nationale de France</a>.</p>
<pre>
&lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb119440835&gt;
    a skos:Concept ;
    skos:altLabel "Biologie générale"@fr ;
    skos:broader &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb119716335&gt; ;
    skos:closeMatch &lt;http://d-nb.info/gnd/4006851-1&gt;, &lt;http://id.loc.gov/authorities/sh85014203#concept&gt; ;
    skos:inScheme &lt;http://stitch.cs.vu.nl/vocabularies/rameau/autorites_matieres&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/noms_communs&gt; ;
    skos:narrower &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb11931061x&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb11931064z&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb119310659&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb11933905d&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb119348479&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb11940847j&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb119422283&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb119440599&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb11944082t&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb11946836b&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb11953082s&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb11958000t&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb119586710&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb11962028z&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb119658909&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb11978175d&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb11978521k&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb11978651s&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb11979066d&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb11979284w&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb11985187w&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb119867466&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb11988172k&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb119886708&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb120174264&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb12100722v&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb121238944&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb121441898&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb121519084&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb123305379&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb13162665q&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb13319250k&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb13622707v&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb144016698&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb150318912&gt;, &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb150557648&gt; ;
    skos:note "Domaine : 570"@fr ;
    skos:prefLabel "Biologie"@fr, "FRBNF119440833"@x-notation ;
</pre>
<p>So at this point maybe you'll admit that it's kind of cool to wander around in the data like this. But if you haven't drunk the <a href="http://linkeddata.org/">Kool-Aid</a> recently (unlikely if you've read this far) you might be wondering: what's the point? Who cares?</p>
<p>I think you should care about this example because it shows:</p>
<ol>
<li>how an existing organization can leverage its pre-existing identifiers on the Web to enable data publishing (Linked Data)</li>
<li>how important it is for publishers to consider who they link to in their data, and how they do it</li>
<li>how essential the RDF data model is for using the Web to join up these pools (or some may call them silos) of data</li>
</ol>
<p>The raw Turtle RDF above may have made your eyes glaze over, so its worth restating that this new DOI service allows those with DOIs in their databases to use the machinery of the Web to aggregate and join up data from 4 different organizations: CrossRef, Data Incubator, Library of Congress, and the Bibliothèque nationale de France:</p>
<p><img src="http://inkdroid.org/images/doi.jpg" /></p>
<p>And it's not just the traditional scholarly publishing community that will potentially benefit from this new Linked Data. As I discovered last August when <a href="http://inkdroid.org/journal/2010/08/25/top-hosts-referenced-in-wikipedia-part-2/">routing around</a> in the external links dumps from <a href="http://en.wikipedia.org">English Wikipedia</a> there were 323,805 links from Wikipedia Articles to dx.doi.org--for example the article for <a href="http://en.wikipedia.org/wiki/Molecular_structure_of_Nucleic_Acids">Molecular Structure of Nucleic Acids</a> has a citation that includes an external link to the DOI URL included above.</p>
<p>CrossRef's new Linked Data service could allow someone to write a bot to crawl and verify the citations on Wikipedia. Or perhaps there could be a template on Wikipedia that would allow an editor to add a citation to an article by simply using the DOI, which would then fill in the other bits of article metadata needed for display. There are lots of possibilities.</p>
<p>As I commented over on the <a href="http://www.crossref.org/CrossTech/2011/04/content_negotiation_for_crossr.html">CrossTech blog</a> (not approved yet), it would be handy if the service was able to parse and act on non-simple Accept headers during content negotiation, since it's fairly common for RDF tools like jena, rdflib, arc, redland to send Accept headers with q-values in them. It might actually be nice to see support for some simple JSON views, that might be handy for people that get scared off RDF easily. But those are some minor quibbles in comparison to the outstanding work that CrossRef have done in getting this service going. Hopefully we'll see more publishing organizations like <a href="http://datacite.org/">DataCite</a> helping build this data publishing community more as well.</p>
<p><em>Update: if this topic interests you, and you want to read more about it, definitely check out <a href="http://twitter.com/#!/olyerickson">John Erickson</a>'s blog post <a href="http://bitwacker.wordpress.com/2010/02/04/dois-uris-and-cool-resolution/">DOIs, URIs and Cool Resolution</a></em>.</p>
