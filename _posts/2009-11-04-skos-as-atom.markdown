---
layout: post
status: publish
published: true
title: skos as atom
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 1398
wordpress_url: http://inkdroid.org/journal/?p=1398
date: '2009-11-04 20:39:04 +0000'
date_gmt: '2009-11-05 03:39:04 +0000'
tags: []
comments:
- id: 81564
  author: me.yahoo.com/a/dbdHXI4l3&hellip;
  author_email: ''
  author_url: https://me.yahoo.com/a/dbdHXI4l3Y7NYFmrmxReMclYyzOtdirIj2cuIqLKAg--#6201a
  date: '2009-11-16 04:44:27 +0000'
  date_gmt: '2009-11-16 11:44:27 +0000'
  content: "Hi Ed,\r\n\r\nI'm very interested to see this discussion of Atom. I'm
    currently working on a new system for managing data and metadata for studies of
    malaria. It's at an early stage (not much to show yet), but we've tentatively
    opted to use Atom as the common standard for web service APIs, and then to code
    the user interface in the browser (using gwt) making direct calls to the Atom
    API whenever possible.\r\n\r\nFWIW we chose Atom and XML over anything based on
    RDF primarily because we needed a read-write API. SPARQL is great for querying
    data, but what we really need is to be able to CRUD arbitrary packages of data/metadata,
    and also define permissions over different collections of those packages ... in
    addition to querying the data in various ways. While Atom doesn't give you a query
    API, it is a good fit for the CRUD side of things.\r\n\r\n(As an aside, we're
    also using eXist as the Atom implementation, which works more-or-less out of the
    box, and has cut down the amount of work we've had to do on the server side.)\r\n\r\nI
    did take a good look at Talis' API, which has the necessary CRUD capabilities,
    and was very interested in it. I still think it's a great offering (the support
    for change sets instead of just bulk updates is potentially very useful). However,
    we went for Atom + eXist for two main reasons .. (1) Atom is a standard, so we
    had a vague hope that if eXist didn't work out we could swap to a different implementation,
    and (2) we're doing a lot of coding for the client-side, and there's better support
    for working with XML there (I just couldn't bring myself to write an rdf api for
    gwt then implement a gwt client for Talis' API which involves XML and RDF/XML
    and reification).\r\n\r\nThe main questions we've had to figure out with Atom
    are all to do with what best practice should be when extending Atom to convey
    a particular type of data entity. We use link elements to relate one entry to
    another, but what should we use for the rel attribute values to represent different
    types of relationship? Should we be using URIs? Where should we put the foreign
    markup that represents our data, directly in the atom:entry element, or inside
    an atom:content element with type application/xml? And what do you do when a client
    wants to pull down not just a single entry, but a graph of entries? Is it OK to
    include the related entries inline within the link elements?\r\n\r\nThe other
    challenge is how to implement query functionality over the data. I would love
    to use SPARQL, especially as the result set serialisation formats are very easy
    to work with in the browser. However, right now we're getting more mileage from
    writing XQuery scripts that implement simple HTTP query APIs. \r\n\r\nIf someone
    designed a CRUD API for managing RDF graphs that was basically Atom, that was
    very convenient to use from browser code, and with an implementation that worked
    out of the box, things would get very interesting :)"
- id: 81565
  author: me.yahoo.com/a/dbdHXI4l3&hellip;
  author_email: ''
  author_url: https://me.yahoo.com/a/dbdHXI4l3Y7NYFmrmxReMclYyzOtdirIj2cuIqLKAg--#6201a
  date: '2009-11-16 04:45:22 +0000'
  date_gmt: '2009-11-16 11:45:22 +0000'
  content: Sorry, I'm Alistair Miles, should have signed the previous comment - first
    time I've used an OpenID.
- id: 82102
  author: 'Reading List : Web, Linked Data, REST, Semantic Web &#8211; webr3.org'
  author_email: ''
  author_url: http://web.archive.org/web/20110609011418/http://webr3.org:80/blog/internet/reading-list-web-linked-data-rest-semantic-web/
  date: '2010-03-09 19:04:23 +0000'
  date_gmt: '2010-03-10 02:04:23 +0000'
  content: |
    <p>[...]  skos as atom [...]</p>
---
<p>I'll be the first to admit the tone and content of my <a href="http://inkdroid.org/journal/2009/11/03/alien-vs-predator-www-style/">last post</a> was a bit off kilter. I guess it was pretty clear immediately from the title of the post. Chalk it up to a second night of insomnia; and also to my unrealistic and probably unnecessary goal of bringing the Atom/REST camp in closer alignment with the RDF/LinkedData camp ... at least in my own brain if not on the web.</p>
<p>So, ever the pragmatist, Ian Davis called my bluff a bit on some of the crazier stuff I said:</p>
<p><a href="http://twitter.com/iand/status/5434457944"><img src="http://inkdroid.org/images/iand-twitter.png" style="width: 400px;" /></a></p>
<p>I know <a href="http://blogs.law.harvard.edu/pkeane/">Peter Keane</a> took a <a href="http://github.com/pkeane/lcsh-atom">stab</a> at this over the summer. But I couldn't find sample output lying around on the web, so I marked up one by hand to serve as a strawman. So here's the <a href="http://inkdroid.org/data/www.ttl">turtle</a> for the LCSH concept "World Wide Web":</p>
<pre>
@prefix rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt; .
@prefix dcterms: &lt;http://purl.org/dc/terms/&gt; .
@prefix owl: &lt;http://www.w3.org/2002/07/owl#&gt; .
@prefix skos: &lt;http://www.w3.org/2004/02/skos/core#&gt; .

&lt;http://id.loc.gov/authorities/sh95000541#concept&gt;
    a skos:Concept ;
    skos:prefLabel "World Wide Web"@en ;
    dcterms:modified "2001-10-01T09:56:06-04:00"^^&lt;http://www.w3.org/2001/XMLSchema#dateTime&gt; ;
    skos:altLabel "W3 (World Wide Web)"@en, "WWW (World Wide Web)"@en, "Web (World Wide Web)"@en, "World Wide Web (Information retrieval system)"@en ;
    skos:broader &lt;http://id.loc.gov/authorities/sh88002671#concept&gt;, &lt;http://id.loc.gov/authorities/sh92002381#concept&gt; ;
    skos:narrower &lt;http://id.loc.gov/authorities/sh2002000569#concept&gt;, &lt;http://id.loc.gov/authorities/sh2003001415#concept&gt;, &lt;http://id.loc.gov/authorities/sh2007008317#concept&gt;, &lt;http://id.loc.gov/authorities/sh2007008319#concept&gt;, &lt;http://id.loc.gov/authorities/sh2008009697#concept&gt;, &lt;http://id.loc.gov/authorities/sh97003254#concept&gt; ;
    skos:related &lt;http://id.loc.gov/authorities/sh92002816#concept&gt; ;
    skos:closeMatch &lt;http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb13319953j&gt; .
</pre>
<p>And here's the "corresponding" <a href="http://inkdroid.org/data/www.xml">atom</a>:</p>
<pre>
&lt;?xml version="1.0" encoding="utf-8"?&gt;
&lt;entry xmlns="http://www.w3.org/2005/Atom" xmlns:skos="http://www.w3.org/2004/02/skos/core#"&gt;
    &lt;id&gt;http://id.loc.gov/authorities/sh95000541#concept&lt;/id&gt;
    &lt;title&gt;LCSH: World Wide Web&lt;/title&gt;
    &lt;author&gt;&lt;name&gt;Library of Congress&lt;/name&gt;&lt;/author&gt;
    &lt;updated&gt;2001-10-01T09:56:06Z&lt;/updated&gt;
    &lt;skos:prefLabel&gt;World Wide Web&lt;/skos:prefLabel&gt;
    &lt;skos:altLabel&gt;W3 (World Wide Web)&lt;/skos:altLabel&gt;
    &lt;skos:altLabel&gt;Web (World Wide Web)&lt;/skos:altLabel&gt;
    &lt;skos:altLabel&gt;World Wide Web (Information retrieval system)&lt;/skos:altLabel&gt;
    &lt;skos:altLabel&gt;WWW (World Wide Web)&lt;/skos:altLabel&gt;
    &lt;link rel="http://www.w3.org/2004/02/skos/core#broader" href="http://id.loc.gov/authorities/sh88002671#concept" title="Hypertext systems" /&gt;
    &lt;link rel="http://www.w3.org/2004/02/skos/core#broader" href="http://id.loc.gov/authorities/sh92002381#concept" title="Multimedia systems" /&gt;
    &lt;link rel="http://www.w3.org/2004/02/skos/core#narrower" href="http://id.loc.gov/authorities/sh2008009697#concept" title="Invisible web"/&gt;
    &lt;link rel="http://www.w3.org/2004/02/skos/core#narrower" href="http://id.loc.gov/authorities/sh2007008317#concept" title="Mashups (World Wide Web)" /&gt;
    &lt;link rel="http://www.w3.org/2004/02/skos/core#narrower" href="http://id.loc.gov/authorities/sh2002000569#concept" title="Semantic Web" /&gt;
    &lt;link rel="http://www.w3.org/2004/02/skos/core#narrower" href="http://id.loc.gov/authorities/sh2007008319#concept" title="Web 2.0" /&gt;
    &lt;link rel="http://www.w3.org/2004/02/skos/core#narrower" href="http://id.loc.gov/authorities/sh97003254#concept" title="WebDAV (Standard)" /&gt;
    &lt;link rel="http://www.w3.org/2004/02/skos/core#narrower" href="http://id.loc.gov/authorities/sh97003254#concept" title="WebTV (Trademark)" /&gt;
    &lt;link rel="http://www.w3.org/2004/02/skos/core#related" href="http://id.loc.gov/authorities/sh92002816#concept" title="Internet" /&gt;
    &lt;link rel="http://www.w3.org/2004/02/skos/core#closeMatch" href="http://stitch.cs.vu.nl/vocabularies/rameau/ark:/12148/cb13319953j" title="Web" /&gt;
    &lt;link rel="alternate" href="http://id.loc.gov/authorities/sh95000541" type="text/html" /&gt;
    &lt;link rel="alternate" href="http://id.loc.gov/authorities/sh95000541.json" type="application/json" /&gt;
&lt;/entry&gt;
</pre>
<p>Maybe I botched something? It could use a GRDDL stylesheet I suppose. At least the Atom <a href="http://validator.w3.org/feed/check.cgi?url=http%3A%2F%2Finkdroid.org%2Fdata%2Fwww.xml">validates</a>.  <a href="http://en.wikipedia.org/wiki/Tower_of_Babel"><img src="http://inkdroid.org/images/babel.jpg" style="width: 350px; float: left; margin-right: 10px;"/></a>  I really am a bit conflicted posting any of this here because there is so much about the Linked Data community that I like, and want to be a part of. But I'm finding it increasingly difficult to see a Linked Data future where RDF/XML is deployed all over. Instead I bleakly expect we'll see more fragmentation, and dueling idioms/cultures ... and I'm trying to see if perhaps things aren't as bleak as they seem by grasping at what the groups have in common. Maybe John Cowan's idea (in the <a href="http://inkdroid.org/journal/2009/11/03/alien-vs-predator-www-style/#comments">comments</a>) of coming up with an RDF serialization that is valid Atom wasn't so bad after all? My apologies to any Linked Data folks who have helped me in the past who may have been rubbed the wrong way by my last blog post. </p>
<p><b>Update:</b> <a href="http://inamidst.com">Sean Palmer</a> clued me in to some earlier work he has done in the area of Atom and RDF, the <a href="http://inamidst.com/aefram/">Atom Extensibility Framework</a>. And Niklas Lindström let me know of some <a href="http://lists.w3.org/Archives/Public/semantic-web/2008Jul/0099.html">thinking</a> he's done on the topic that is grounded in some work he has been doing for legal information systems in Sweden.</p>
