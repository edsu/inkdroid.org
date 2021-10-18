---
layout: post
status: publish
published: true
title: me and my homepage
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2651
wordpress_url: http://inkdroid.org/journal/?p=2651
date: '2010-11-12 10:16:19 +0000'
date_gmt: '2010-11-12 17:16:19 +0000'
tags:
- rdf
- http
- rest
- webarch
- linked-data
- urls
comments:
- id: 83816
  author: jakoblog.de/
  author_email: jakob@nichtich.de
  author_url: http://jakoblog.de/
  date: '2010-11-12 10:50:39 +0000'
  date_gmt: '2010-11-12 17:50:39 +0000'
  content: 'The Arctic Monkeys have already solved the identity problem: <a href="http://en.wikipedia.org/wiki/Whatever_People_Say_I_Am,_That''s_What_I''m_Not"
    rel="nofollow">Whatever People Say I Am, That''s What I''m Not</a>. Ups, I broke
    the Semantic Web by linking to a Wikipedia article about the album, which is not
    the album itself! Let''s dance to the music on the grave of Linked Data and solve
    people''s issues instead of machine''s problems. SCNR'
- id: 83825
  author: bibwild.wordpress.com/
  author_email: ''
  author_url: http://bibwild.wordpress.com/
  date: '2010-11-12 22:30:56 +0000'
  date_gmt: '2010-11-13 05:30:56 +0000'
  content: "I am not my home page. I am also not _any other_ representation you'll
    get on the web, including a bunch of triples about me. \r\n\r\nMy home page is,
    arguably, one web representation of me. It may or may not be useful to consider
    it such.  Trying to make rules based on HTTP status codes to prohibit me from
    considering it as such probably isn't helpful. \r\n\r\nI get what httpRange-14
    (or is it 13? the hard to remember number of this principle doens't help). Right,
    it says, jrochkind is not ANY representation of him on the web. That's why the
    URI representing jrochkind himself can't in fact return ANY representation at
    all, it has to 303 to another URI that returns a representation. \r\n\r\nI get
    it. But I think the distinction between things and representation quickly becomes
    much more confusing in many actual common use cases than it seems to be when you
    stick to only the least confusing examples. I am not my home page. But is a PDF
    of \"Lucene in Action\" actually \"Lucene in Action\", or is it just a representation
    of it?  Does the answer to this question _really_ depend on whether Lucene In
    Action is also published in print (or in non-PDF electronic formats?).  Convincing
    someone that I am not my home page is easy. Convincing them that a PDF of Lucene
    in Action is not Lucene in Action is harder. \r\n\r\nIf you take httpRange-14
    all the way, then almost EVERY URI used in an assertion should really be a URI
    that 303's.  Very few assertions are _really_ meant to be about representations
    themselves, they're almost all meant to be about things that may have a life beyond
    one particular representation."
- id: 83826
  author: bibwild.wordpress.com/
  author_email: ''
  author_url: http://bibwild.wordpress.com/
  date: '2010-11-12 23:11:16 +0000'
  date_gmt: '2010-11-13 06:11:16 +0000'
  content: "You know what, I think reading \"Cool URIs for the Semantic Web\", that
    is actually is what they intend as the consequences of their rules:  Unless you
    really mean to be making an assertion about the particular representation returned
    by a URI, _always_ use a URI that 303 redirects. \n\nIf this is indeed the intended
    consequence, that above sentence would, I think, be a LOT less confusing way to
    explain it than talking about \"information resources\" or \"non-information resources\".
    Leave the definition of such out of it entirely, since in addition to being confusing
    it's untenable. And indeed \"Cool URIs for the Semantic Web\" tries to use \"Web
    Document\", to I guess clarify that. \n\nI'm not sure that everyone has really
    understood that implication, that to follow those guidelines you hardly ever ever
    can make an assertion about a URI that is NOT a 303 redirect, it probably won't
    be what you mean to say."
- id: 83832
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2010-11-14 05:52:45 +0000'
  date_gmt: '2010-11-14 12:52:45 +0000'
  content: "@jrochkind absolutely, the authors of Cool URIs for the Semantic Web wanted
    all real-world-things identified by URIs to HTTP 303 redirect to a document about
    the thing, or to be a Hash URI. The thing to remember about URIs is that they
    identify <em>Resources</em>, not <em>Representations</em>, at least in terms of
    REST. At the end of the day this incompatibility between Linked Data / Semantic
    Web and REST ways of looking at the Web seems to come down to an inability of
    Tim Berners-Lee and Roy Fielding to see eye to eye about the architecture of the
    web. I think Dan Brickley's <a href=\"http://inkdroid.org/journal/2010/11/08/routers-webcams-and-thermometers/#comment-83750\"
    rel=\"nofollow\">earlier comment</a> confirms this.\r\n\r\nYou are quite right
    that <a href=\"http://inkdroid.org/journal/2010/07/07/linking-things-and-common-sense/\"
    rel=\"nofollow\">we don't very often</a> want to describe representations. Although,
    we in the library world seem to want to more often than people in other domains
    tend to. Tom Scott of the BBC characterized this situation pretty nicely in <a
    href=\"http://derivadow.com/2010/07/01/linked-things/\" rel=\"nofollow\">a blog
    post</a> a few months ago.\r\n\r\nThere are certain situations where Linked Data
    folks have been tempted into wanting to describe what they call the Document as
    opposed to the Thing. The canonical example that gets used is assertions involving
    a license: they often want to license the \"document\" that describes the resource,
    but not the resource itself being described. Also, people think things can get
    murky when using dcterms:creator, dcterms:created, dcterms:modified, etc ... because
    they get wrapped around the axle about whether these assertions are about the
    HTML document or about the real-world-thing being described.\r\n\r\nMy main point
    (and I think <a href=\"http://iand.posterous.com/a-guide-to-publishing-linked-data-without-red\"
    rel=\"nofollow\">Ian's</a> as well) is that <em>you</em> as the publisher of this
    resource get to say what the Resource is. RDF is great because it gives you the
    machinery to explicitly do this. For example if Manning wants to assert that:\r\n\r\n<pre>\r\n&lt;http://www.manning.com/hatcher3/&gt;
    a bibo:Book .\r\n</pre>\r\n\r\nThey can do that. If they want to later say:\r\n\r\n<pre>\r\n&lt;http://www.manning.com/hatcher3/&gt;
    dcterms:hasVersion &lt;http://www.manning.com/hatcher3/ebook.pdf&gt; .\r\n&lt;http://www.manning.com/hatcher3/ebook.pdf&gt;
    dcterms:hasFormat \"application/pdf\" .\r\n&lt;http://www.manning.com/hatcher3/ebook.pdf&gt;
    dcterms:license &lt;http://www.manning.com/about/license.html&gt; .\r\n</pre>\r\n\r\nThey
    can do that too. No HTTP status code futzing around or arcane use of hash URIs
    is needed.\r\n\r\nThis is what tons of users of <a href=\"http://developers.facebook.com/docs/opengraph\"
    rel=\"nofollow\">Facebook's OpenGraph Protocol</a> are discovering now. If IMDB
    wants to say that http://www.imdb.com/title/tt0093822/ identifies a movie, they
    can and do. IMDB decides what the resources are that they are publishing, and
    they tell other people, machines running at Facebook, and anyone else who wants
    to crawl their site by explicitly asserting it; not by some funky use of HTTP
    status codes or hash URIs."
---

<p><a href="http://www.flickr.com/photos/psd/sets/72157625161668113/with/5159730124/"><img src="http://inkdroid.org/images/resource-identifiers.jpg" style="float: left;" /></a></p>
<p>Thanks for all the positive feedback to my <a href="http://inkdroid.org/journal/2010/11/08/routers-webcams-and-thermometers/">last post</a> about using URLs to identify resources. <a href="http://tomheath.com/home/html">Tom Heath</a> (one of the founding fathers of the <a href="http://www4.wiwiss.fu-berlin.de/bizer/pub/LinkedDataTutorial/">Linked Data meme/pattern</a>) suggested that discussions about this topic are <a href="http://tomheath.com/blog/2010/11/arguments-about-http-303-considered-harmful/">harmful</a>, so of course I have to continue the conversation ... even if I don't have much new to say. Hell, I just wanted an excuse to re-publish another one of Paul Downey's lovely <a href="http://www.flickr.com/photos/psd/sets/72157625161668113/with/5159730124/">REST Tarot Cards</a> that he is doing for <a href="http://www.flickr.com/groups/1219303@N25/">NaNoDrawMo 2010</a>, and get some more hits on my backwater blog :-)</p>
<p>Anyhow, so Tom <a href="http://tomheath.com/blog/2010/11/arguments-about-http-303-considered-harmful/">said</a>:</p>
<blockquote><p>
Joe Developer ... has to take a bit of responsibility for writing sensible RDF statements. Unfortunately, people like Ed seeming to conflate himself and his homepage (and his router and its admin console) don’t help with the general level of understanding. I’ve tried many times to explain to someone that I am not my homepage, and as far as I know I’ve never failed. In all this frantic debate about the 303 mechanism, let’s not abandon certain basic principles that just make sense.
</p></blockquote>
<p>I'm glad Tom is able to explain this stuff about Information Resources better than me. I think I was probably one of the people he explained it to at some point. I understand the principles that Tom and other Linked Data advocates are promulgating well enough to throw together some Linked Data implementations at the Library of Congress, such as the <a href="http://web.archive.org/web/20110720034058/http://id.loc.gov:80/authorities">Library of Congress Subject Headings</a> and <a href="http://chroniclingamerica.loc.gov/about/api/">Chronicling America</a> which put millions of resources online using the principles that got documented in <a href="http://www.w3.org/TR/cooluris/">Cool URIs for the Semantic Web</a>.</p>
<p>How do you know if someone understood something you said? Normally by what they do in response to what you say, right? The rapid growth of the <a href="http://richard.cyganiak.de/2007/10/lod/">Linked Data cloud</a> is a testament to the Linked Data folks ability to effectively communicate with software developers. No question. But lets face it, the principles of <a href="http://en.wikipedia.org/wiki/Representational_State_Transfer">web architecture</a> have seen way more adoption right? The successes that Linked Data have enjoyed so far have been a result of grounding the Semantic Web vision in the mechanics of the web we have now. And my essential point is that they didn't go far enough in making it easier.</p>
<p>So, yeah...I'm not my homepage. As someone would've said to me in grade school: "No shit Sherlock" :-) Although, our blogs sure seem to be having a friendly argument with each other at the moment (thanks Keith). What is a homepage anyhow? The Oxford English Dictionary defines a homepage as:</p>
<blockquote><p>
A document created in a hypertext system (esp. on the World Wide Web) which serves either as an introductory page for a visitor to a web site, or as a focus of information on a particular topic, and which usually contains hypertext links to related documents and other web sites.
</p></blockquote>
<p>So my <em>homepage</em> is a hypertext document with a particular focus, in this case the person Ed Summers. If you are at your desk, and fire up your browser, and type in the URL for my homepage you would get an HTML document. If you were on the train, and typed in the same URL into the browser on your mobile device you might get a very different HTML document optimized for rendering on a smaller screen. <em>This is how the web was designed to work</em>, albeit a bit ex post facto (which is why it is awesome). A URL identifies a Resource, a Resource can be anything, when you request that Resource using HTTP you get back a Representation of the current state of the Resource. The Representation that you get back is determined by the way it was requested: in this case the User-Agent of the browser determined what HTML I got back.</p>
<p>It's very easy to look down over your bi-focals and say things like "surely Ed realizes he is not his homepage". But if we're going to go there, it kind of begs the question, what is a homepage ... and who am I?  <a href="http://plato.stanford.edu/entries/identity/">Identity</a> is hard. Tom should be pretty familiar with how hard identity as his <a href="http://www4.wiwiss.fu-berlin.de/bizer/pub/LinkedDataTutorial/#links">instructions</a> on using owl:sameAs to link resources together <a href="http://www.webont.org/owled/2010/papers/owled2010_submission_12.pdf">proves</a> <a href="http://events.linkeddata.org/ldow2010/papers/ldow2010_paper09.pdf">to</a> <a href="http://journal.webscience.org/403/2/websci10_submission_123.pdf">be</a> a bit harder in practice than in theory.</p>
<p>But let's not go there. Who really wants to think about stuff like that when you are building a webapp that makes reusable machine readable data available?</p>
<p>My contention is that this whole line of discussion is largely academic, and gets in the way of actually putting resource descriptions out on the web. The reality is that people <a href="http://socialgraph.apis.google.com/lookup?q=http://inkdroid.org/&fme=1&pretty=1">can and do</a> use http://inkdroid.org/ as an identifier for me, Ed Summers. It is natural, and effortless, and doesn't require someone with a PhD in Knowledge Representation to understand it. If I want to publish some RDF that says:</p>
<pre>
&lt;http://inkdroid.org/&gt; a foaf:Person .
</pre>
<p>I can do that. It's my website, and I decide what the resources on it are. If someone puts that URL into their browser and gets some HTML that's cool. If someone's computer program likes RDF and gets back some "application/rdf+xml", all the better. If a script wants to nibble on some JSON, sure here's some "application/json" for ya. If someone wants to publish RDF about me, and use http://inkdroid.org/ as the identifier to hang their descriptions off of, I say, go right ahead. It's an Open Web still right (oh please say it still is).</p>
<p>And best of all, if someone wants different URLs for themselves and their homepage, that's fine too. The Linked Data we have deployed by following the rules to the best of our ability is still legit. It's all good. I don't mind following rules, but ultimately they have to make sense...to me. And this website is all about me, right? :-)</p>
