---
layout: post
status: publish
published: true
title: web documents and axioms for linked data
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 1676
wordpress_url: http://inkdroid.org/journal/?p=1676
date: '2010-02-22 19:06:38 +0000'
date_gmt: '2010-02-23 02:06:38 +0000'
tags:
- semweb
- rest
- linked-data
- webarch
comments:
- id: 81894
  author: Andrew Ashton
  author_email: andyashton@gmail.com
  author_url: https://me.yahoo.com/a/xRkbRE8IqJIrabMSxbTe0.6TOqPB#e4298
  date: '2010-02-22 20:10:10 +0000'
  date_gmt: '2010-02-23 03:10:10 +0000'
  content: "I work a lot with TEI documents, though I don’t consider myself an expert
    or a zealot in that arena.  Your mention of the idea of web documents vs. non-web
    documents crystallizes a lot of tensions that have been floating around as I try
    to grok working with TEI in an RDF/OWL/LinkedData environment.  \r\n\r\nMy impression
    is that discussions about XML docs &amp; related technologies are running along
    a parallel, but rarely converging, track with discussions about “web” documents.
    \ Philosophically, there is a big difference between the purity of the RDF/Linked
    Data world and the comparatively procedural XML world.  But I keep finding that
    I wish I had a better strategy for reconciling the two. \r\n\r\nSo it raises the
    question: how do “web documents” express, or at least point to, the kind of semantic
    nuance that we can express in a single non-web document.  What sort of mechanism
    resolves a semantic concept expressed in TEI (for example) to a referenceable
    resource?  I’m not aware of any XML-native technologies (e.g. Xpointer) that are
    really suited to this.  It seems we’re stuck with creating RDF representations
    of semantic encoding within documents, but that level of abstraction is invariably
    going to introduce more noise into the already-noisy practice of text-encoding.
    \ I’m just curious what ideas are out there for reconciling these technologies
    – or have all the Linked Data community given up on XML?"
- id: 81898
  author: pkeane.livejournal.com/
  author_email: ''
  author_url: http://pkeane.livejournal.com/
  date: '2010-02-22 22:16:20 +0000'
  date_gmt: '2010-02-23 05:16:20 +0000'
  content: "Good stuff, Ed. I am struck yet again, though, at the discordance between
    the Linked Data and REST worldviews. I think a REST-based rejoinder to the last
    quote would state that building a system that made the distinction too finely
    would be brittle (cf. http://roy.gbiv.com/untangled/2008/resource-resource-wherefore-art-thou-resource
    ).\r\n\r\nMy own take is that we are talking about two different kinds of architecture/approaches:
    Linked Data is concerned w/ compile time whereas REST is concerned w/ runtime.
    Put another way, linked data is strongly and statically typed and REST is weakly
    and dynamically typed.  Not sure how useful that metaphor is, but it seems to
    me to help distinguish systems that will fit well into the Linked Data approach
    (e.g. , LCSH) and those that might not.\r\n\r\nI'm also struck that the two worldviews
    will continue to be at odds (there are essential differences), but that both will
    likely figure into the future of the web."
- id: 81899
  author: bibwild.wordpress.com/
  author_email: ''
  author_url: http://bibwild.wordpress.com/
  date: '2010-02-22 23:42:49 +0000'
  date_gmt: '2010-02-23 06:42:49 +0000'
  content: "This makes a hell of a lot of sense.\r\n\r\n--jrochkind"
- id: 81900
  author: jakoblog.de/
  author_email: ''
  author_url: http://jakoblog.de/
  date: '2010-02-23 00:13:16 +0000'
  date_gmt: '2010-02-23 07:13:16 +0000'
  content: Thanks for the summary! I read the whole thread and also <a href="http://lists.w3.org/Archives/Public/www-tag/2009Aug/0000.html"
    rel="nofollow">Tim Berners-Lee's historical explanation</a> how the term Resource
    slipped into the specifications. However "Web Document" is not much better than
    "Information Resource" and I disagree that only any of both can have representations.
    You can create byte streams to represent anything, a newspaper, a cat, or an HTML
    document. The question is only whether the representation is appropriate in a
    given context. But this question cannot be answered by technical architectures
    or axioms only. It always depends on. Funny how Semantic Web believers seem to
    think that you only need more standards and levels of abstraction to finally get
    rid of this fuzzy nasty human common sense that has less problems to handle with
    uncertain and contradicting information :-)
---

<p>A few months ago I took part in a <a href="http://groups.google.com/group/pedantic-web/browse_thread/thread/eb65cce9df40abd4">discussion</a> on the <a href="http://pedantic-web.org/">pedantic-web</a> list, which started out as a relatively simple question about FOAF usage, and quickly evolved into a conversation about terms people use when talking about Linked Data, and more generally the Web. </p>
<p>I ended up having a very helpful off-list email exchange with <a href="http://richard.cyganiak.de/">Richard Cyganiak</a> (one of the architects of the <a href="http://www4.wiwiss.fu-berlin.de/bizer/pub/LinkedDataTutorial/">Linked Data</a> pattern) about <a href="http://inkdroid.org/journal/2009/05/14/rest-the-semantic-web-and-my-feeble-brain/">some</a> <a href="http://inkdroid.org/journal/2009/09/10/documents/">trouble</a> I've had understanding what <em>Information Resources</em> and <em>Documents</em> are in the context of <a href="http://www.w3.org/TR/webarch/#id-resources">Web Architecture</a>. The trouble I had was in determining whether or not a collection of physical newspaper pages I was helping <a href="http://chroniclingamerica.loc.gov">put on the web</a> were <em>Information Resources</em> or not. I needed to know because I wanted to identify the newspaper pages with URIs, and describe them as Linked Data...and the resolvability of these URIs was largely <a href="http://www.w3.org/TR/cooluris/#semweb">dependent</a> on how I chose to answer the question.</p>
<p>Richard ended up offering up some advice that I've since found very useful, and I thought I would transcribe some of it down here just in case you might find it useful as well. My apologies to you (and Richard) if some of this seems out of context. It may really only be useful for people who are in the digital library domain, but perhaps it's useful elsewhere.</p>
<p>On the subject of what is a <em>Document</em> Richard offered up this way at looking at what are <em>Web Documents</em>:</p>
<blockquote><p>
The Web is a new, blank information space that is, by definition, disjoint from anything else that exists in the world. By setting up and configuring a web server, you make things pop up in that information space (by creating resolvable URIs). By definition, the things that pop up in the information space are a different beast from anything that existed before. They are web pages. They are *not* the same as things that exist outside of the space, like files on your hard disk, or newspaper articles.</p>
<p>...</p>
<p>I would avoid the term "document" when talking about representations. Representations are those ephemeral things that go over the wire. A representation is a "byte streams with a media type (and possibly other meta data)". When I use the term "HTML document", I mean a resource, identified by a URI, that has (only) HTML representations.
</p></blockquote>
<p>Richard encouraged me to think in terms of <em>Web Documents</em> and not generic Documents. I was getting tripped up by considering Newspaper Pages as Documents...which of course they are in the general sense, but characterized this way it became clear that the Newspaper Pages are not Web Documents. This view on Web Documents is supported in the <a href="http://www.w3.org/TR/cooluris/">Cool URIs for the Semantic Web</a> that he co-authored. </p>
<p>Richard also included some axioms that underpin how he thinks about resources in the Linked Data view:</p>
<blockquote><p>
I'm using a few rules that I think should be considered axioms of web architecture:</p>
<p>First, if something exists independently from the Web, then it cannot be a Web Document. (hence two resources, one for the newspaper page and one for the web page)</p>
<p>Second, only Web Documents can have representations (hence the need to describe the newspaper page in a web page, rather than directly providing representations of the newspaper page).</p>
<p>I understand these rules as axioms, that is, they should be followed because they make the system work best, not because they somehow follow from the nature of the world (they don't).
</p></blockquote>
<p>The pragmatist in me particularly liked how these aren't supposed to have anything to do with the Real World, but are just ways of thinking about the Web to make it work better.  Finally Richard offered some advice on how to reconcile the REST and Linked Data views on identity:</p>
<blockquote><p>
I make sense of the REST worldview like this: In typical REST, all the URIs *always* identify web documents. The REST folks might claim that they identify other things, like users or items for sale or places on the earth, but actually they just identify a document that is *about* that thing. The thing itself doesn't have an identifier. This is perfectly fine for building certain kinds of systems, so the REST guys actually get away with pretending that the URI identifies the thing. But this doesn't allow you to do certain things, like using domain-independent vocabularies for metadata and coreference, and you get into deep trouble if you want to use this for describing *web pages* rather than *newspaper pages*.
</p></blockquote>
<p>I hope I haven't take any liberties quoting my conversation with Richard out of context like this. I mainly wanted to transcribe Richard's points (which perhaps he has made elsewhere) so that I could revisit them, without having to dig through my email archive ... Comments welcome!</p>
