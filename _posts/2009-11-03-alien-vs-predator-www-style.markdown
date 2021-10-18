---
layout: post
status: publish
published: true
title: 'alien vs predator: www-style'
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 1343
wordpress_url: http://inkdroid.org/journal/?p=1343
date: '2009-11-03 04:24:34 +0000'
date_gmt: '2009-11-03 11:24:34 +0000'
tags:
- atom
- semweb
- linked-data
comments:
- id: 81552
  author: johnwcowan
  author_email: cowan@ccil.org
  author_url: http://
  date: '2009-11-03 15:51:09 +0000'
  date_gmt: '2009-11-03 22:51:09 +0000'
  content: So invent an RDF serialization that is Atom-compliant.  It'll be a huge
    win.
- id: 81553
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-11-04 02:02:24 +0000'
  date_gmt: '2009-11-04 09:02:24 +0000'
  content: "@johncowan \"I will call him ... mini-RDF\" :-) Seriously though Atom
    already seems to be a suitably good graph serialization for a graph of web resources
    doesn't it? It lets someone say here's a set of resources with URIs (atom:entry,
    atom:id), and here are the relationships between those resources and other resources
    (atom:link), and here's some core metadata about the resources (atom:title, atom:summary,
    etc), and here's some space to say whatever else you want about the collection
    of resources or the resources themselves (use of extensionElement in atom:feed
    and atom:entry)\r\n\r\nThere are a few proposals on the table for bringing the
    full expressive power of the RDF model to Atom: <a href=\"http://tools.ietf.org/id/draft-nottingham-atomtriples-00.txt\"
    rel=\"nofollow\">AtomTriples</a> from Mark Nottingham and Dave Beckett, and the
    work the Open Archives Initiative Object Reuse and Exchange group did on their
    <a href=\"http://www.openarchives.org/ore/1.0/atom#MetadataAR\" rel=\"nofollow\">Atom
    serialization</a> for graphs of web resources. I don't see people clamoring over
    themselves to use them however.\r\n\r\nBut (if you are being serious, heheheh
    I have my doubts) perhaps you see something simpler that can be done?"
- id: 81554
  author: sgillies.net/
  author_email: ''
  author_url: http://sgillies.net/
  date: '2009-11-04 02:09:58 +0000'
  date_gmt: '2009-11-04 09:09:58 +0000'
  content: Yes. This feels like one of those situations where worse (Atom) is better.
- id: 81555
  author: me.yahoo.com/rossfsinger
  author_email: ''
  author_url: https://me.yahoo.com/rossfsinger#bc9c2
  date: '2009-11-06 09:01:47 +0000'
  date_gmt: '2009-11-06 16:01:47 +0000'
  content: "I think you're generally right about Atom being about as good of a compromise
    as you can get; it's the same basic reason I've been pushing for it for library
    data.\r\n\r\nThe danger is more what appears between the  tags.  Giving a 3GB
    blob of lots of discrete data in some arcane format a URI and saying, \"here,
    we've made it available!  Just check out the Atom feed!\" isn't really a huge
    improvement over just throwing them into a web-accessible directory.  It is also
    the sort of thing that really undermines the perception of Atom as a powerful
    and flexible format for making things available on the web."
- id: 81567
  author: danbri.org/
  author_email: ''
  author_url: http://danbri.org/
  date: '2009-12-23 01:33:38 +0000'
  date_gmt: '2009-12-23 08:33:38 +0000'
  content: |
    <p>See also DataRSS from Yahoo SearchMonkey folk -</p>
    <p>http://web.archive.org/web/20120219171016/http://developer.yahoo.com:80/searchmonkey/smguide/datarss.html
    http://web.archive.org/web/20090131231201/http://developer.yahoo.com:80/searchmonkey/smguide/understand_datarss.html</p>
    <p>This uses rdfa. Are you an rdfa optimist?</p>
- id: 81568
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-12-23 08:44:25 +0000'
  date_gmt: '2009-12-23 15:44:25 +0000'
  content: "@danbri thanks for the pointer to DataRSS from Yahoo. I had seen that
    before but failed to make the connection between it and some things I had been
    thinking about at the time. Yes, I guess I'm an RDFa optimist -- but ultimately
    I'm an optimist about the RDF data model, and the Web :-)"
---

<p><img src="http://inkdroid.org/images/feed.png" style="float: left; margin: 15px; border: none;"/> I finally got around to reading <a href="http://escholarship.org/uc/item/0fv601z8">Web Services for Recovery.gov</a> by <a href="http://www.ischool.berkeley.edu/people/faculty/erikwilde">Erik Wilde</a>, <a href="http://www.ischool.berkeley.edu/people/faculty/erickansa">Eric Kansa</a> and <a href="http://www.ischool.berkeley.edu/people/faculty/raymondyee">Raymond Yee</a>. The authors wrote the report with funding from the <a href="http://www.sunlightfoundation.com/">Sunlight Foundation</a>, who are deeply engaged in improving the way the US Federal Government provides transparent access to its data assets.</p>
<p>I highly recommend giving it a read if you are interested in web services, REST, Linked Data, and simple things you can do to open up access to data. The practicality of the advice is clearly gleaned from the experience of an actual implementation over at <a href="http://web.archive.org/web/20101101232234/http://recovery.berkeley.edu:80/">recovery.berkeley.edu</a> where they kick the tires on their ideas.</p>
<p>Erik's <a href="http://dret.typepad.com/dretblog/2009/10/web-services-for-recoverygov.html">blog</a> has a succinct summary of the paper's findings, which for me boils down to:</p>
<blockquote><p>
any data source that is frequently updated must have simple ways for synchronizing data
</p></blockquote>
<p><a href="http://en.wikipedia.org/wiki/Web_syndication">Web syndication</a> is a widely deployed mechanism for presenting a list of updated web resources. The authors make a pretty strong case for <a href="http://www.ietf.org/rfc/rfc4287.txt">Atom</a> because of its pervasive use of identifiers for content, extensibility, <a href="http://www.iana.org/assignments/link-relations/link-relations.xhtml">rich linking semantics</a>, <a href="http://www.ietf.org/rfc/rfc5005.txt">paging</a>, the potential for <a href="http://www.ietf.org/rfc/rfc5023.txt">write-enabled</a> services, install base, and generally just good old Resource Oriented Architecture a.k.a. <a href="http://en.wikipedia.org/wiki/REST">REST</a>.</p>
<p>Because of my interest in Linked Data the paragraph that discusses why RDF/XML wasn't chosen as a data format is particularly interesting:</p>
<blockquote><p>
The approach described in this report, driven by a desire for openness and accessibility, uses the most widely established technologies and data formats to ensure that access to reporting data is as easy as possible. Recently, the idea of openly accessible data has been promoted under the term of “linked data”, with recent recommendations being centered around a very specific choice of technologies and data models (all centered around Semantic Web approaches focusing on RDF for data representation and centralized data storage). While it is possible to use these approaches for building Web applications, <span style="color: red;">our recommendation is to use better established and more widely supported technologies, thereby lowering the barrier-to-entry and choosing a simpler toolset for achieving the same goals</span> as with the more sophisticated technologies envisioned for the Semantic Web.
</p></blockquote>
<p>It could be argued that the growing amount of RDF/XML in the <a href="http://www4.wiwiss.fu-berlin.de/bizer/pub/lod-datasets_2009-07-14.html">Linked Data web</a> make it a contender for Atom's install base--especially when you consider RSS1.0. However I think the main point the authors are making is that the tools for working with XML documents far outnumber the tools that are available for processing RDF/XML graphs. Furthermore, most programmers I know are more familiar with the processing model and standards associated with XML documents (DOM, XSLT, XPath, XQuery) compared with RDF graphs (Triples, Directed Graph, GRDDL, SPARQL). Maybe this says more about the people I know ... and if I were to jump into the biomedical field I'd feel different. But perhaps the most subtle point is that whether or not developers know it, Atom expresses a Graph model just like RDF/XML ... but it does it in a much more straightforward, familiar document-centric way.</p>
<p>Of course the debate of whether RDF needed to be a part of Linked Data or not <a href="http://iandavis.com/blog/2009/07/the-linked-data-brand">rippled</a> through the semantic web community a few months ago--and there's little chance of resolving any of those issues here. In the pure-land of RDF model theory the choice between Atom and RDF/XML is a bit of a <a href="http://en.wikipedia.org/wiki/False_dilemma">false dilemma</a> since RDF/XML is minimally processable with, well, XML tools ... and idioms like GRDDL allow Atom to be explicitly represented as an RDF Graph. And in fact, REST and Content Negotiation would allow both serializations to co-exist nicely in the context of a single web application. However, I'd argue that this point isn't a particularly easy thing to explain, and it certainly isn't terrain that you would want to navigate in documentation on the <a href="http://recovery.gov">recovery.gov</a> website. The choice of whether RDF belongs in Linked Data or not has technical and business considerations -- but I'm increasingly seeing it as a cultural issue,that perhaps doesn't really even need resolving.</p>
<p>Even Tim Berners-Lee <a href="http://gcn.com/Articles/2009/10/30/Berners-Lee-Semantic-Web">recognizes</a> that there are quite large hurdles to modeling all government data on the Linked Data web in RDF and querying it with SPARQL. It's a bit unrealistic to expect the Federal Government to start modeling and storing their enterprise data in a fundamentally new and somewhat experimental way in order to support what amounts to arbitrary database queries from anyone on the web. If that's what the Linked Data brand is I'm not buying it.  That being said, I see a great deal of value in the RDF data model (<a href="http://dig.csail.mit.edu/breadcrumbs/node/215">the giant global graph</a>), especially as a <a href="http://www.xml.com/pub/a/2003/08/20/dive.html">tool</a> for seeing how your data fits the contours of the web.</p>
<p>The important message that Erik, Eric and Raymond's paper communicates is that the Federal Government should be focused on putting data out on the web in familiar ways, using sound web architecture practices that have allowed the web to grow and evolve into the wonderful environment it is today. Atom is a flexible, simple, commonly supported, well understood XML format for letting downstream applications know about newly published web resources. If the Federal Government is serious about the long term sustainability of efforts like recovery.gov and data.gov they should focus on enabling an ecosystem of visualization applications created by third parties, rather than trying to produce those applications themselves. I hope the <a href="http://data.gov">data.gov</a> folks also run across this important work. Thanks to Sunlight Foundation for funding the folks at Berkeley.</p>
