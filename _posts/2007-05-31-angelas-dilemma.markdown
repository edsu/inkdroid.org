---
layout: post
status: publish
published: true
title: Angela's dilemma
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 154
wordpress_url: http://www.inkdroid.org/journal/2007/05/31/angelas-dilemma/
date: '2007-05-31 14:17:03 +0000'
date_gmt: '2007-05-31 21:17:03 +0000'
tags: []
comments:
- id: 35386
  author: Bruce D'Arcus
  author_email: bdarcus@gmail.com
  author_url: ''
  date: '2007-06-14 17:17:29 +0000'
  date_gmt: '2007-06-15 00:17:29 +0000'
  content: "Funny I should stumble on this while looking for something on RDF and
    content negotiation :-)\r\n\r\nWould be interested in hearing your thoughts on
    how this might best line up with Zotero server plans, where resource URIs were
    the subject of some long recent threads on zotero-dev."
- id: 37847
  author: inkdroid &raquo; purl2
  author_email: ''
  author_url: http://www.inkdroid.org/journal/2007/07/12/purl2/
  date: '2007-07-12 06:45:14 +0000'
  date_gmt: '2007-07-12 13:45:14 +0000'
  content: "[...] It&#8217;s great to see that OCLC is going to work with Zepheira
    on a new version of the PURL service and that it&#8217;s going to live at Apache.
    Other than addressing scalability issues it sounds like Zepheira is going to build
    in support for resources that are outside of the information space of the web:
    The new PURL software will also be updated to reflect the current understanding
    of Web architecture as defined by the World Wide Web Consortium (W3C).&nbsp;This
    new software will provide the ability to permanently identify networked information
    resources, such as Web documents, as well as non-networked resources such as people,
    organizations, concepts and scientific data.&nbsp;This capability will represent
    an important step forward in the adoption of a machine-processable &#8220;Web
    of data&#8221; enabled by the Semantic Web. [...]"
---

<p>If you are interested in practical ways to garden in the emerging web-of-data take a look at this <a href="http://www.w3.org/2001/tag/doc/httpRange-14/2007-05-31/HttpRange-14">draft finding</a> that folks in the W3C Technical Architecture Group are considering. Or for a different expression of the same idea look at <a href="http://web.archive.org/web/20100531061447/http://www.dfki.uni-kl.de:80/~sauermann/2006/11/cooluris/">Cool URIs for the Semantic Web</a>.</p>
<p>These two documents describe a simple use of HTTP and URLs to identify resources that are outside of the information space of the web.  Yes, you read that right: <em>resources that are outside the information space of the web</em>. Why would I want to use URLs to address resources that aren't on the web!? The <a href="http://www.w3.org/2001/tag/doc/httpRange-14/2007-05-31/HttpRange-14">finding</a> illustrates this subtlety using Angela's dilemma:</p>
<blockquote><p>Angela is creating an OWL ontology that defines specific characteristics of devices used to access the Web. Some of these characteristics represent physical properties of the device, such as its length, width and weight. As a result, the ontology includes concepts such as unit of measure, and specific instances, such as meter and kilogram. Angela uses URIs to identify these concepts.Having chosen a URI for the concept of the meter, Angela faces the question of what should be returned if that URI is ever dereferenced. There is general advice that owners of URIs should provide representations [AWWW] and Angela is keen to comply. However, the choices of possible representations appear legion. Given that the URI is being used in the context of an OWL ontology, Angela first considers a representation that consists of some RDF triples that allow suitable computer systems to discover more information about the meter. She then worries that these might be less useful to a human user, who might prefer the appropriate Wikipedia entry. Perhaps, she reasons, a better approach would be to create a representation which itself contains a set of URIs to a range of resources that provide related representations. Perhaps content negotiation can help? She could return different representations based on the content type specified in the request.</p>
<p>Angela's dilemma is, of course, based on the fact that none of the representations she is considering are actually representations of the units of measure themselves. Even if the Web could deliver a platinum-iridium bar with two marks a meter apart at zero degrees celsius, or 1,650,763.73 wavelengths of the orange-red emission line in the electromagnetic spectrum of the krypton-86 atom in a vacuum, or even two marks, a meter apart on a screen, such representations are probably less than completely useful in the context of an information space. The representations that Angela is considering are not representations of the meter itself. Instead, they are representations of information resources related to the meter.</p>
<p>It is not appropriate for any of the individual representations that Angela is considering to be returned by dereferencing the URI that identifies the concept of the meter. Not only do the representations she is considering fail to represent the concept of the meter, they each have a different <em>essence</em> and so they should each have their own URI. As a consequence, it would also be inappropriate to use content negotiation as a way to provide them as alternate representations when the URI for the concept of the meter is dereferenced.</p></blockquote>
<p>So assuming we are agreed about the problem what's the solution? Basically you can use content negotiation and a 303 See Other <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html">HTTP status code</a> to redirect to the appropriate resource. For an example of the basic idea in action fire up curl and take a look at how <a href="http://ontoworld.org/wiki/">this</a> instance of the <a href="http://meta.wikimedia.org/wiki/Semantic_MediaWiki">SemanticMediaWiki</a> responds to a GET request:</p>
<pre>%  curl --head http://ontoworld.org/wiki/Special:URIResolver/Ruby
HTTP/1.1 303 See Other
Date: Thu, 31 May 2007 20:03:12 GMT
Server: Apache/2.2.3 (Debian) ...
Location: http://ontoworld.org/wiki/Ruby
Content-Type: text/html; charset=UTF-8</pre>
<p>Nothing too surprising there--basically just got redirected to another URL that serves up some friendly HTML describing the Ruby programming language. But send along an extra Accept header:</p>
<pre>% curl --head  --header 'Accept: application/rdf+xml
http://ontoworld.org/wiki/Special:URIResolver/Ruby
HTTP/1.1 303 See Other
Date: Thu, 31 May 2007 20:04:36 GMT
Server: Apache/2.2.3 (Debian) ...
Location: http://ontoworld.org/wiki/Special:ExportRDF/Ruby
Content-Type: text/html; charset=UTF-8</pre>
<p>Notice how you are redirected to another URL that results in rdf/xml describing Ruby coming down the pipe?  RubyOnRails and other frameworks have good REST support built in for doing content negotiation to provide multiple representations of a single information resource. But the use of the 303 See Other here is a new subtle twist to accommodate the fact that the resource in question isn't really a canonical set of bits on disk somewhere. The good news is that your browser will display the human readable resource when you visit <a href="http://ontoworld.org/wiki/Special:URIResolver/Ruby">http://ontoworld.org/wiki/Special:URIResolver/Ruby</a></p>
<p>Some folks would argue that resources that are outside the web don't deserve URLs and should instead be identified with URIs like <a href="http://info-uri.info">info-uris</a> that are not required to resolve.  My personal feeling is that info-uris do have a great deal of use in the enterprise (where they are most likely resolvable). But in situations like Angela's where she is creating a public RDF document that needs to refer to concepts like "length" and "meter" I think it makes sense that these concepts should resolve to appropriate representations that will guide appropriate usage. Or as  the <a href="http://www.w3.org/TR/webarch/#representation-management">Architecture of the World Wide Web</a> puts it:</p>
<blockquote><p>A URI owner may supply zero or more authoritative representations of the resource identified by that URI. There is a benefit to the community in providing representations. A URI owner SHOULD provide representations of the resource it identifies</p></blockquote>
<p>It'll be interesting to see how these issues shake out as more and more structured data is made available on the web.</p>
