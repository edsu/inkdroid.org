---
layout: post
status: publish
published: true
title: terminology services sneak peak
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 353
wordpress_url: http://inkdroid.org/journal/?p=353
date: '2008-09-11 12:31:20 +0000'
date_gmt: '2008-09-11 19:31:20 +0000'
tags:
- oclc
- rdf
- xml
- lcsh
- mesh
- tgm
- json
- javascript
comments:
- id: 73933
  author: Ian Davis
  author_email: nospam@iandavis.com
  author_url: ''
  date: '2008-09-12 05:35:33 +0000'
  date_gmt: '2008-09-12 12:35:33 +0000'
  content: There's no way that JSON is valid - it has functions in it :)
- id: 74175
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2008-09-14 18:01:24 +0000'
  date_gmt: '2008-09-15 01:01:24 +0000'
  content: Aye, maybe that's why they opted for application/javascript as the MIME
    type?
- id: 74242
  author: Andrew Houghton
  author_email: houghton@oclc.org
  author_url: ''
  date: '2008-09-15 09:36:42 +0000'
  date_gmt: '2008-09-15 16:36:42 +0000'
  content: "Note application/rdf+xml is not accepted as a content type, it returns
    an HTTP 406 Not Acceptable status code, since there could be multiple RDF representations
    for a concept.  Similarly asking for application/xml is not acceptable since the
    service cannot determine whether you want MARC-XML, Zthes, or some other XML representation.
    \ This is a problem with content types that are too generic like RDF and XML.\r\n\r\nWhen
    a user agent requests the generic URI from the service, e.g., http://tspilot.oclc.org/lcsh/sh2008114004
    it retrieves a striped RDF/XML response entity that describes an agent-driven
    content negotiation scheme, see http://tools.ietf.org/html/rfc2616#section-12.2.
    \ The striped RDF/XML response entity describes the dimensions that a user agent
    can request.\r\n\r\nTo do content negotiation with an HTTP Accept header the user
    agent needs to look at the first dc:format property that has an RDF datatype of
    http://purl.org/dc/terms/IMT.  The secondary dc:format properties that have an
    RDF datatype of http://purl.org/dc/terms/IMT describe conflicting MIME types for
    a representation.\r\n\r\nSo if your user agent was looking for application/rdf+xml
    resources, it would search all dc:format properties that had an RDF datatype of
    http://purl.org/dc/terms/IMT and a value of application/rdf+xml, then use the
    first dc:format that had an RDF datatype of http://purl.org/dc/terms/IMT for each
    representation that it wanted to request from the service.\r\n\r\nUsing your example
    URI http://tspilot.oclc.org/lcsh/sh2008114004 the search would return only one
    representation, at this point in time, for representation describing SKOS.  The
    user agent could request the resource with the specific URI based on the value
    of the rdf:about attribute (implicitly based on the xml:base attribute in the
    stripped RDF/XML) on the Representation collection member or it could request
    content negotiation using the first dc:format property with the RDF datatype http://purl.org/dc/terms/IMT
    as the value for the HTTP Accept header, which in this case is the local service
    application/x-oclc-tspilot.skos MIME type.\r\n\r\nWhat the service is currently
    missing is when a user agent sends in a content type such as application/rdf+xml
    or application/xml, the service will automatically select the representations
    that have that content type as the value of a dc:format property with the RDF
    datatype http://purl.org/dc/terms/IMT and return an HTTP 300 Multiple Choices
    status code with an agent-driven content negotiation entity for only those resources.
    \ Basically, the user agent would receive a subset of the generic URI agent-driven
    content negotiation response entity.  Currently the service just returns an HTTP
    406 Not Acceptable response code to user agents.\r\n\r\nThe service needs to document
    the agent-driven content negotiation scheme that it is using, but we have been
    busy trying to add some additional features such as hierarchy for controlled vocabularies
    that have a coherent hierarchal reference structure...\r\n\r\nAs far as the JSON
    issues are concerned, the first dc:format with an RDF datatype of http://purl.org/dc/terms/IMT
    is the application/json MIME type.  Doing content negotiation with an HTTP Accept
    header that has a value of application/json, does return the JSON representation
    for me and I believe that the JSON being returned in valid JSON as it has been
    tested in both Firefox and Internet Explorer without issue.\r\n\r\nThere are issues
    with using browsers as your user agent to access the service.  The service currently
    tries to accomodate oddites with Internet Explorer.  Sending back application/rdf+xml
    or application/json to Internet Explorer will cause the browser to pop-up a download
    dialog box since by default Internet Explorer doesn't understand those MIME types.
    \ When the service detects that Internet Explorer is the user agent then application/rdf+xml
    is changed to application/xml and application/json is changed to application/javascript
    or text/plain.  Firefox is also not without issue since requests to the generic
    URI will always return the XHTML representation.  This is because Firefox automatically
    adds an HTTP Accept header that says it prefers application/xhtml+xml over */*.
    \ The service may need to sniff for Firefox and override its behaviour too.\r\n\r\nFeel
    free to contact the project with comments or questions at http://www.oclc.org/programsandresearch/feedback/form.asp?project=Terminology%20Services\r\n\r\n"
- id: 74243
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2008-09-15 09:53:49 +0000'
  date_gmt: '2008-09-15 16:53:49 +0000'
  content: Yeah, but why not return all the RDF triples at once? They are all about
    the same subject no? As for the xml responses...you can't identify the response
    with a MIME type or extension?
- id: 74246
  author: Andrew Houghton
  author_email: houghton@oclc.org
  author_url: ''
  date: '2008-09-15 10:36:17 +0000'
  date_gmt: '2008-09-15 17:36:17 +0000'
  content: "When a user agent requests the generic URI without an HTTP Accept header
    or an HTTP Accept header with the value */*, then the agent-driven content negotiation
    response entity, the stripped RDF/XML, contains all the RDF triples necessary
    to describe all the dimensions that can be used for content negotiation that can
    be used to request a representation of the generic URI.\r\n\r\nAs I indicated
    with MARC-XML vs. Zthes example it's ambiguous when a user agent sends an HTTP
    Accept header with application/xml.  Neither MARC-XML or Zthes is described by
    a specific IANA MIME type, however both are application profiles of the application/xml
    content type.  The only reasonable thing the service can do is to return an HTTP
    300 Multiple Choices status along with an entity that the user agent can use to
    disambiguate which representation it really wants.  This part of the service,
    as I indicated, has not been implemented and instead the service returns an HTTP
    406 Not Acceptable status.\r\n\r\nPS. Ed I mistakenly in my last post used angle
    brackets around URI's in the text so the blog made them disappear.  Would it be
    possible to edit my last post so it shows the URI's. Thx."
- id: 74250
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2008-09-15 12:11:50 +0000'
  date_gmt: '2008-09-15 19:11:50 +0000'
  content: 'I''m still confused why there are multiple RDF representations for a concept.
    I can understand about the XML I suppose, although you could always register the
    ones you want: say application/zthes+xml or some such.'
- id: 74251
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2008-09-15 12:17:24 +0000'
  date_gmt: '2008-09-15 19:17:24 +0000'
  content: 'Re: the links, sorry they''re not in the entry I can''t seem to recover
    them. Which is a shame because they look interesting, particularly what you have
    for "agent-driven content negotiation scheme".'
- id: 74324
  author: Andrew Houghton
  author_email: houghton@oclc.org
  author_url: ''
  date: '2008-09-16 06:43:18 +0000'
  date_gmt: '2008-09-16 13:43:18 +0000'
  content: "A concept in the terminology service may be represented by multiple RDF
    application profiles.  SKOS is just one type of RDF application profile.  Actually
    SKOS currently is two RDF application profiles, one for the SKOS 2005 draft and
    one for the SKOS 2008 draft.  These two SKOS drafts have different semantics and
    namespaces.  The terminology service that Diane described could support both SKOS
    drafts which would result in an ambigious condition when a user agent sent an
    HTTP Accept header with the value application/rdf+xml.\r\n\r\nPrior to SKOS there
    was the Thesaurus Interchange Format (TIF) which is another RDF application profile
    specifically for describing thesauri.  Further the OWL Web Ontologoy language
    is another RDF application profile for describing ontologies.  In addition, your
    blog post shows the URI for the meta format, e.g., http://tspilot.oclc.org/lcsh/sh2008114004.meta.
    \ A closer examination of the meta format reveals that it's a stripped RDF/XML
    representation of the service's internal information about the concept.  Yet another
    RDF application profile used to describe a representation of the concept.\r\n\r\nI
    touched on a few RDF application profiles available to describe controlled vocabularies.
    \ The terminology service does not want to assume that SKOS is the only RDF application
    profile that is available in the present, near or distant future.  This is why
    when a user agent sends an HTTP Accept header with a value of application/rdf+xml,
    the terminology service treats it as an ambigious condition.\r\n\r\nIn regard
    to the ambigious condition for application/xml, the terminology service could
    register with IANA a specific MIME type for XML application profiles such as MARC-XML,
    MADS, Zthes, etc.  However, registration really needs to be done by the markup's
    authorized agent and not OCLC.  There are issues with registration that OCLC isn't
    prepared to answer on behalf of the markup's authorized agent.  For example, should
    MARC-XML have one media type and/or a media type for MARC authorities, bibliographic,
    classification, holdings, community information, where the generic media type
    would be used to describe mixed MARC-XML collections?  Instead the terminology
    service used the documented IANA media type extension mechanism and created local
    service specific media types that begin with application/x-oclc-tspilot to distinguish
    specific representations of XML and RDF application profiles so content negotiation
    was possible by user agents."
- id: 74327
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2008-09-16 07:38:21 +0000'
  date_gmt: '2008-09-16 14:38:21 +0000'
  content: I'm not sure I understand what RDF application profile means. There's no
    reason whatsoever that you can't mash (mesh?) up all the descriptions of the resource
    into one response. It's the power of RDF afterall. You can evolve the triples
    over time, as namespaces change.
- id: 74341
  author: Andrew Houghton
  author_email: houghton@oclc.org
  author_url: ''
  date: '2008-09-16 09:52:48 +0000'
  date_gmt: '2008-09-16 16:52:48 +0000'
  content: "Ahh... I finally understand your position now.  The terminology service
    is based on the notion that a controlled vocabulary and each concept in that controlled
    vocabulary have a generic URI.  That generic URI, when dereferenced, responds
    with an agent-driven content negotiation response entity that details the dimensions
    that a user agent can access resource representations either through content negotiation
    or direct URI dereference.  The service is built around representations.\r\n\r\nSince
    RDF application profiles describe the collections, resources, classes, properties
    and literals (along with their semantics in a defined namespace) that can be used
    in RDF, you can as you suggest, throw all the triples into one big pot and send
    that back to the user agent when the user agent sends the service an HTTP Accept
    header with the value application/rdf+xml.  If the service is supporting many
    RDF application profiles, then the service has the computational cost of generating
    the RDF for each RDF application profile and could send back tens of megabytes
    of RDF triples that the user agent is unable to digest due to bandwidth, storage
    or processing issues.\r\n\r\nFrom a service and user agent perspective I don't
    see that strategy as beneficial since it doesn't seem to be a balanced approach
    for a service or its user agents.  You might be tempted to discount the bandwidth
    issue, everyone in the world has broadband right?  Err... no I'm living in the
    U.S. and I am unable to get broadband where I live which is only 13 miles outside
    a major city in my state.  Also, there is a whole new world out there called mobile
    devices that do have limited bandwidth, storage, and processing capabilities and
    we would like the terminology service to be used in mobile device mashups."
- id: 74373
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2008-09-16 20:19:23 +0000'
  date_gmt: '2008-09-17 03:19:23 +0000'
  content: "I don't discount the bandwidth issue. But I also think it's a bit of a
    red-herring. The issue for me is that something meaningful should come back when
    an agent resolves your Concept URIs like http://tspilot.oclc.org/lcsh/sh2008114004
    asking for application/rdf+xml. At the moment it seems to do just fine when asking
    for text/html and application/json. \r\n\r\nPerhaps I've missed the reason in
    the previous comments (I'm sorry if I have) -- but why don't you return the RDF
    description of the Concept and it's constituent representations when someone requests
    the application/rdf+xml from http://tspilot.oclc.org/lcsh/sh2008114004 ?\r\n\r\nOr
    put differently, when someone asks for application/rdf+xml why not return what
    you currently do for */* ?"
- id: 74440
  author: Andrew Houghton
  author_email: houghton@oclc.org
  author_url: ''
  date: '2008-09-17 12:00:56 +0000'
  date_gmt: '2008-09-17 19:00:56 +0000'
  content: "Ed, I think we just went around in a circle when you said: \"... why not
    return what you currently do for */*\" :)  One of the missing pieces to the terminology
    service, mention above, is that when a user agent asks for a overloaded media
    type, such as application/rdf+xml, application/rdf+n3, application/xml, text/xml,
    etc., the service is suppose to respond with an entity based on */* that has been
    filtered for the media type that the user agent requested.\r\n\r\nSo when a user
    agent sends an HTTP Accept header with the value application/rdf+xml to the generic
    URI, then the terminology service would respond with the representation metadata
    for http://tspilot.oclc.org/lcsh/sh2008114004.meta and http://tspilot.oclc.org/lcsh/sh2008114004.skos
    since both are RDF application profiles.\r\n\r\nI hacked together an XSL transform
    and the configuration rules to do this last night.  The changes have been committed
    to our SVN repository and should be pushed to the public server in the next couple
    of days or by the latest next Monday evening, 2008-09-22T23:59:00.0-05:00, which
    is our  regularly scheduled integration cycle."
- id: 74441
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2008-09-17 12:25:57 +0000'
  date_gmt: '2008-09-17 19:25:57 +0000'
  content: Cool I look forward to seeing it. Thanks for the conversation!
---

<p>I just saw Diane Vizine-Goetz demo <a href="http://tspilot.oclc.org/resources">OCLC's Terminology Services</a> at the CENDI/SKOS meeting and was excited to see various things out on the public web. For example, the LCSH concept "World Wide Web" is over here:</p>
<blockquote><p>
  <a href="http://tspilot.oclc.org/lcsh/sh2008114004">http://tspilot.oclc.org/lcsh/sh2008114004</a>
</p></blockquote>
<p>At the moment it's not the most friendly human readable display, but that's just a XSLT stylesheet away (assuming TS follows the patterns of other OCLC Services). I'm not quite sure what the default namespace urn:uuid:D30A7E67-31BF-40A3-9956-9668674FCD84 is. But the response looks like it indicates what resources are related to a given conceptual resource.</p>
<ol>
<li><a href="http://tspilot.oclc.org/lcsh/sh2008114004.html">http://tspilot.oclc.org/lcsh/sh2008114004.html</a></li>
<li><a href="http://tspilot.oclc.org/lcsh/sh2008114004.json">http://tspilot.oclc.org/lcsh/sh2008114004.json</a></li>
<li><a href="http://tspilot.oclc.org/lcsh/sh2008114004.marcxml">http://tspilot.oclc.org/lcsh/sh2008114004.marcxml</a></li>
<li><a href="http://tspilot.oclc.org/lcsh/sh2008114004.meta">http://tspilot.oclc.org/lcsh/sh2008114004.meta</a></li>
<li><a href="http://tspilot.oclc.org/lcsh/sh2008114004.skos">http://tspilot.oclc.org/lcsh/sh2008114004.skos</a></li>
<li><a href="http://tspilot.oclc.org/lcsh/sh2008114004.stats">http://tspilot.oclc.org/lcsh/sh2008114004.stats</a></li>
<li><a href="http://tspilot.oclc.org/lcsh/sh2008114004.zthes">http://tspilot.oclc.org/lcsh/sh2008114004.zthes</a></li>
</ol>
<p>And LCSH is just one of the vocabularies available through the pilot service, if you examine the <a href="http://tspilot.oclc.org/ ">XML</a> you'll see references to FAST, TGM and MESH + SRU services for each. </p>
<p>I think this is way cool, and a step in the right direction...particulary because they are going to make vocabularies available for free as long as the original publisher has no problem with it. My only complaint is that the URIs for the concepts don't appear to do content-negotiation for application/rdf+xml. It looks like text/html and application/javascript (isn't it application/json?) work just fine though. Try them out:</p>
<pre>
curl --header "Accept: application/javascript" http://tspilot.oclc.org/lcsh/sh2008114004
curl --header "Accept: text/html" http://tspilot.oclc.org/lcsh/sh2008114004
</pre>
<p>But not application/rdf+xml:</p>
<pre>
curl --header "Accept: application/rdf+xml" http://tspilot.oclc.org/lcsh/sh2008114004
</pre>
<p>It seems like it would be a pretty easy fix, and pretty important for being able to follow your nose on the semantic web.</p>
