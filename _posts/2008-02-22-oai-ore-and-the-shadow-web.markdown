---
layout: post
status: publish
published: true
title: oai-ore and the shadow web
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 187
wordpress_url: http://inkdroid.org/journal/2008/02/22/oai-ore-and-the-shadow-web/
date: '2008-02-22 13:09:41 +0000'
date_gmt: '2008-02-22 20:09:41 +0000'
tags:
- metadata
- html
- rdf
- semanticweb
- libraries
- oai-pmh
- oai-ore
- erdf
- rdfa
- xhtml
comments:
- id: 55236
  author: Mark Birbeck
  author_email: mark.birbeck@gmail.com
  author_url: http://internet-apps.blogspot.com
  date: '2008-02-22 16:57:11 +0000'
  date_gmt: '2008-02-22 23:57:11 +0000'
  content: |
    <p>Hi,</p>

    <p>I agree with you that things could be loosened. The Discovery document position tends to arise when it is assumed that it must be possible to tell the difference between a resource and an information resource, perhaps by performing an HTTP request. (This is something I know that Ian has argued in the past.)</p>

    <p>In my view this is an over-literal reading of the situation, something various people have tried to tackle. My own comments are in <a href="http://internet-apps.blogspot.com/2007/11/once-more-on-information-resources-and.html" rel="nofollow">Once more on information resources and RDFa</a>. I also have an older post from a couple of years ago, which was originally intended to be a critical look at the whole discussion from the same standpoint as the Discovery document that you quote, but in the course of working it through I discovered that my own view was wrong. It may be of interest to others who are as confused as I was, and it's called <a href="http://internet-apps.blogspot.com/2006/05/information-resource-debate-and-rdfa.html" rel="nofollow">The Information Resource Debate, and RDFa</a>.</p>

    <p>Interesting work, though. And a great use of RDFa.</p>

    <p>All the best,</p>

    <p>Mark Birbeck
    http://web.archive.org/web/20111121115551/http://webbackplane.com/mark-birbeck/</p>
- id: 55456
  author: Pete Johnston
  author_email: pete.johnston@eduserv.org.uk
  author_url: http://efoundations.typepad.com/efoundations/
  date: '2008-02-25 05:10:36 +0000'
  date_gmt: '2008-02-25 12:10:36 +0000'
  content: "Ed,\r\n\r\nGood point.\r\n\r\nSpeaking only for myself here(!),  I completely
    agree that an XHTML/RDFa document would make a good representation of an ORE Resource
    Map; and that such a document could/would probably look very much like what we
    think of as a \"splash page\".\r\n\r\nOf course if you want to talk about both
    \r\n\r\n(i) the Resource Map (with an XHTML/RDFa representation and possibly other
    representations via conneg) and \r\n(ii) a \"splash page\" \r\n\r\nas two distinct
    resources, which I guess we might want to do in some circumstances, then we need
    two distinct URIs for those two distinct resources.\r\n\r\nBut that's still perfectly
    do-able. One could probably even serve the _same_ XHTML/RDFa doc as a representation
    of _both_ of those _distinct_ resources (pace taking care with base URIs etc)."
- id: 55809
  author: Mark Diggory
  author_email: mdiggory@mit.edu
  author_url: ''
  date: '2008-02-28 12:10:17 +0000'
  date_gmt: '2008-02-28 19:10:17 +0000'
  content: "I would like to see this be the case, most of the new DSpace UI (Manakin
    specifically) technology will support including RDFa and microformats into the
    Item page generation and this would be an ideal use-case for it.\r\n\r\nCheers,\r\nMark
    Diggory\r\nDSpace Systems Manager \r\nMIT Libraries"
- id: 59653
  author: Nodalities &raquo; Blog Archive &raquo; This Week&#8217;s Semantic Web
  author_email: ''
  author_url: http://web.archive.org/web/20101127151441/http://blogs.talis.com:80/nodalities/2008/02/this_weeks_semantic_web_32.php
  date: '2008-04-17 10:06:30 +0000'
  date_gmt: '2008-04-17 17:06:30 +0000'
  content: |
    <p>[...] oai-ore and the shadow web [...]</p>
- id: 59664
  author: delicious mark hubery
  author_email: ''
  author_url: http://del.icio.us/markhuberyd1
  date: '2008-04-17 13:50:53 +0000'
  date_gmt: '2008-04-17 20:50:53 +0000'
  content: |-
    <strong>Blog Hopper...</strong>

    Hi There. I'm blog hopping....
---
<p>The OAI-ORE <a href="http://www.openarchives.org/ore/documents/ore-hopkins-press-release.pdf">meeting</a> is coming up, and in general I've been really impressed with the alpha <a href="http://www.openarchives.org/ore/0.1/toc">specs</a> that have come out. It's not clear that there's an established vocabulary for talking about aggregated resources on the web, so the <a href="http://www.openarchives.org/ore/0.1/datamodel">Data Model</a> and <a href="http://www.openarchives.org/ore/0.1/vocabulary">Vocabulary</a> documents were of particular interest to me.</p>
<p>One thing I didn't quite understand, and which I think may have some significance for implementors, is some language in the <a href="http://www.openarchives.org/ore/0.1/discovery#URIConflation">Discovery</a> document on the subject of URI conflation:</p>
<blockquote><p>The Data Model document [ORE Model] explicitly prohibits a URI of a ReM (URI-R) ever returning anything other than a ReM. This allows multiple representations to be associated with URI-R, such as using content negotiation to return ReMs in different languages, character sets, or compression encodings. But it does not allow URI-R to return a human readable "splash page", either by HTTP content negotiation or redirection. For example, clients MUST NOT merge with content negotiation the following URI pair that would correspond to a ReM and a "splash page" for an object:</p></blockquote>
<p>If I'm understanding right this would prohibit using technologies like <a href="http://microformats.org">microformats</a>, <a href="http://research.talis.com/2005/erdf/wiki/Main/RdfInHtml">eRDF</a>, <a href="http://rdfa.info/">RDFa</a> and <a href="http://www.w3.org/2001/sw/grddl-wg/">GRDDL</a> in a "splash page" to represent the resource map. It seems odd to me that you can represent a resource map in Atom, but not in HTML. </p>
<p>To illustrate what this might look like I took a splash page off of <a href="http://arxiv.org/abs/0711.1533v1">arXiv</a> (hope that was ok!) and marked it up with oai-ore RDFa. </p>
<p><a href="http://inkdroid.org/data/0711.1533"><img src="/images/arxiv-screenshot.png" border="0" /></a></p>
<p>Take a <a href="http://inkdroid.org/data/0711.1533">look</a>. So all I did is modify the existing XHTML at arxiv.org, and I've been able to represent an ORE Resource Map. This seems like a relatively simple, and powerful way for existing repositories to make their aggregated resources available. </p>
<p>RDFa just entered <a href="http://www.w3.org/News/2008#item26">Last Call</a>, but there are already multiple implementations. Try out the <a href="http://www.w3.org/2006/07/SWD/RDFa/impl/js/">GetN3</a> bookmarklet on the splash page, and you should see some triples come back. I ran them through the validator at w3c and got the following <a href="/images/oai_ore_graph.png">graph</a> (kinda too big to include here inline).</p>
<p>This kind of issue seem to be at the heart of what Ian Davis refers to when he asks "<a href="http://iandavis.com/blog/2007/11/is-the-semantic-web-destined-to-be-a-shadow">Is the Semantic Web Destined to be a Shadow?</a>". <a href="http://efoundations.typepad.com/efoundations/2008/02/repositories-th.html">Andy Powell</a> and <a href="http://efoundations.typepad.com/efoundations/2008/02/linked-data-and.html">Pete Johnston</a> have also been strong voices for integrating digital library repositories and the web--and they are also involved with the oai-ore effort. It feels like some of the oia-ore language could be loosened a bit to allow machine readable and human readable information to commingle a bit more. </p>
