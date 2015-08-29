---
layout: post
status: publish
published: true
title: info-uris and opening up library data
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 99
wordpress_url: http://www.inkdroid.org/journal/?p=99
date: '2006-05-16 20:34:17 +0000'
date_gmt: '2006-05-17 03:34:17 +0000'
tags: []
comments:
- id: 1146
  author: inkdroid &raquo; more on web identifiers
  author_email: ''
  author_url: http://www.inkdroid.org/journal/2006/07/11/more-on-web-identifiers/
  date: '2006-07-11 04:25:28 +0000'
  date_gmt: '2006-07-11 11:25:28 +0000'
  content: "[...] I monitor the www-tag discussion list, but half of it goes right
    over my head&#8211;so I was pleased when a colleague forwarded URNs, Namespaces
    and Registries to me. Don&#8217;t let the 2001 in the URL fool you, it has been
    updated quite recently. This finding provides an interesting counterpoint to rfc
    4452 which I wrote about earlier. [...]"
- id: 1149
  author: PeteJ
  author_email: pete.johnston@gmail.com
  author_url: ''
  date: '2006-07-11 04:30:29 +0000'
  date_gmt: '2006-07-11 11:30:29 +0000'
  content: "I don't think it is correct to say that \"info-uris are designed to identify
    persistent namespaces not the resources themselves\". RFC 4452 refers to the use
    of info URIs to describe \"information assets\", and says\r\n\r\nWhen referencing
    an information asset by means of its \"info\" URI, the asset SHALL be considered
    a \"resource\" as defined in RFC 3986\r\n\r\nAnd your examples above refer to
    info URIs for people, i.e. resources/things other than \"persistent namespaces\".\r\n\r\nThe
    examples of info URIs from the LCCN namespace does raise an interesting question.
    According to http://www.loc.gov/marc/lccn-namespace.html and http://info-uri.info/registry/OAIHandler?verb=GetRecord&amp;metadataPrefix=reg&amp;identifier=info:lccn/\r\n\r\nAn
    LCCN is an identifier assigned by the Library of Congress for a\r\nmetadata record
    (e.g., bibliographic record, authority record)\r\n\r\nwhich seems quite unambiguous
    that an LCCN (and an info URI in the LCCN namespace?) is an identifier for LoC's
    metadata record. If that is the case, then I think using that same identifier
    for the subject of the metadata record (the person etc) contradicts that statement
    by LoC and introduces ambiguity about what asset/resource is identified. The person
    who created the LoC authority record describing the Notorious B.I.G.is a different
    person from the one who created the Notorious B.I.G. (Probably.)\r\n\r\nBut I'm
    really of the school that says anything the info URI scheme provides could be
    achieved more easily and cheaply - still without writing an RFC to refister my
    namespace ;-) - using the http URI scheme e.g. as suggested here\r\n\r\nhttp://lists.w3.org/Archives/Public/www-rdf-interest/2003Oct/0000\r\n\r\nCheers\r\nPeteJ"
- id: 37649
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2007-07-11 06:27:49 +0000'
  date_gmt: '2007-07-11 13:27:49 +0000'
  content: Total agreement Pete :-) One of the benefits of writing down ones thoughts
    is to see how much they change over time.
---
<p>I had a few moments to read the info-uri spec during a short flight from DC to Chicago this past weekend. info-uri aka <a href="ftp://ftp.rfc-editor.org/in-notes/rfc4452.txt">RFC 4452</a> is a spec that allows you to create URIs for identifiers in public namespaces.</p>
<p>So what does this mean in practice and why would you want to use one?</p>
<p>If you have a database of stuff you make available on the web, and you have ids for the stuff (say a primary_key on a Stuff table) you essentially have an identifier in a public namespace. Go <a href="http://info-uri.info/registry/register.html">register</a> the namespace!</p>
<p>So, the LoC assigns <a href="http://www.loc.gov/marc/lccn-namespace.html">identifiers</a> called Library of Congress Control Numbers (LCCN) to each of its metadata records. Here's the personal-name authority record (expressed as <a href="http://www.loc.gov/standards/mads/">MADS</a>) that allows works by Tim Berners-Lee to be grouped together:</p>
<pre>&lt;?xml version='1.0' encoding='UTF-8'?&gt;
&lt;madsCollection
xmlns:xlink='http://www.w3.org/1999/xlink'
xmlns='http://www.loc.gov/mods/v3'
xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance'
xsi:schemaLocation='http://www.loc.gov/mads
http://www.loc.gov/standards/mads/mads.xsd'&gt;
&lt;mads version='beta'&gt;
&lt;authority&gt;
&lt;name type='personal' authority='naf'&gt;
&lt;namePart&gt;Berners-Lee, Tim&lt;/namePart&gt;
&lt;/name&gt;
&lt;titleInfo authority='naf'&gt;
&lt;title/&gt;
&lt;/titleInfo&gt;
&lt;/authority&gt;
&lt;variant type='other'&gt;
&lt;name type='personal'&gt;
&lt;namePart&gt;Lee, Tim Berners-&lt;/namePart&gt;
&lt;/name&gt;
&lt;titleInfo&gt;
&lt;title/&gt;
&lt;/titleInfo&gt;
&lt;/variant&gt;
&lt;variant type='other'&gt;
&lt;name type='personal'&gt;
&lt;namePart&gt;Berners-Lee, Timothy J&lt;/namePart&gt;
&lt;/name&gt;
&lt;titleInfo&gt;
&lt;title/&gt;
&lt;/titleInfo&gt;
&lt;/variant&gt;
&lt;note type='source'&gt;The WWW virtual library Web site,
Feb. 15, 1999 about the virtual library (Tim Berners-Lee; creator
of the Web)&lt;/note&gt;
&lt;note type='source'&gt;OCLC, Feb. 12, 1999 (hdg.: Berners-Lee,
Tim; usage: Tim Berners-Lee)&lt;/note&gt;
&lt;note type='source'&gt;Gaines, A. Tim Berners-Lee and the
development of the World Wide Web, 2001: CIP galley
(Timothy J. Berners-Lee; b. London, England, June 8, 1955)&lt;/note&gt;
&lt;recordInfo&gt;
&lt;identifier&gt;no 99010609 &lt;/identifier&gt;
&lt;recordContentSource authority='marcorg'&gt;NBL&lt;/recordContentSource&gt;
&lt;recordCreationDate encoding='marc'&gt;990216&lt;/recordCreationDate&gt;
&lt;recordChangeDate encoding='iso8601'&gt;20010716094452.0&lt;/recordChangeDate&gt;
&lt;recordIdentifier&gt;1851704&lt;/recordIdentifier&gt;
&lt;languageOfCataloging&gt;
&lt;languageTerm authority='iso639-2b' type='code'&gt;eng&lt;/languageTerm&gt;
&lt;/languageOfCataloging&gt;
&lt;/recordInfo&gt;
&lt;/mads&gt;
&lt;/madsCollection&gt;</pre>
<p>In the record/recordInfo/identifier element you can find the LCCN:</p>
<pre>no 99010609</pre>
<p>Which can be represented as an info-uri:</p>
<pre>info:lccn/no9910609</pre>
<p>Now why would you *ever* want to express a LCCN as an info-uri? The LoC has spent a lot of <a href="http://www.loc.gov/catdir/pcc/naco/personnamefaq.html">time and effort</a> establishing these personal name and subject authorities. You might want to use a URI like info:lccn/no9910609 to identify Tim Berners-Lee as an individual in your data so that other people will know who you are talking about and be able to interoperate with you. For example you can now unambiguously say that Tim Berners-Lee created <a href="http://www.amazon.com/gp/product/006251587X">Weaving the Web</a></p>
<pre>&lt;info:lccn/no9910609&gt; &lt;http://purl.org/dc/elements/1.1/creator&gt;
&lt;info:lccn/99027665&gt;</pre>
<p>That was for you ksclarke :-) Pretty nifty eh? Now what's really cool is that while info-uris aren't necessarily resolvable (by design) OCLC does have the <a href="http://alcme.oclc.org/laf/index.html">Linked Authority File</a>, which allows you to look up these records. So tbl's record can be found here:</p>
<pre><a href="http://errol.oclc.org/laf/no99-10609.html">http://errol.oclc.org/laf/no99-10609.html</a></pre>
<p>I imagine that this is part of the joint OCLC/LoC/Die Deutsche Bibliothek project to build a <a href="http://www.oclc.org/research/projects/viaf/default.htm">Virtual International Authority File</a>...but I'm not totally sure. At any rate there's currently no way to drop a lccn info-uri in there and have it resolve to the XML--but that looks like an easy thing to add.</p>
<p>It feels like there is a real opportunity for libraries and archives to offer up their data to the larger web community. How can we make it easy for non-library folks to find and repurpose this data we've so assiduously collected over the years?</p>
<p>tbl is encouraging people to <a href="http://dig.csail.mit.edu/breadcrumbs/node/71">give themselves a URI</a>...I wonder if he knew that he (and millions of others) already have one!</p>
<ul>
<li>Nikola Tesla: <a href="http://errol.oclc.org/laf/n78-86404.html">info:lccn/n7887404</a></li>
<li>Madonna: <a href="http://errol.oclc.org/laf/n84-156128.html">info:lccn/n84156128</a></li>
<li>Notorious B.I.G.: <a href="http://errol.oclc.org/laf/no96-31850.html">info:lccn/no9631850</a></li>
<li>Henriette Avram: <a href="http://errol.oclc.org/laf/n50-29954.html">info:lccn/n5029954</a></li>
</ul>
<h2>Addendum:</h2>
<p>If you are interested section 6 of the RFC details the subtle rationale behind why the authors chose to create a new URI scheme rather than:</p>
<ol>
<li>using an existing <a href="http://www.iana.org/assignments/uri-schemes.html">URI scheme</a></li>
<li>creating a new <a href="http://www.iana.org/assignments/urn-namespaces">URN namespace</a></li>
</ol>
<p>In essence they didn't want to use an existing URI scheme because they all assume that you should be able to dereference the URI. An example of dereferencing in action can be found when clicking on a link like <a href="http://www.yahoo.com/">http://www.yahoo.com</a> where the magic of DNS allows you to find yahoo's web server and talk to it on port 80 in a predictable way. info-uris are designed to be agnostic as to whether or not the identifier can be dereferenced through a resolver of some kind.</p>
<p>Using URNs was thrown out since URNs are intended to persistently identify information resources and info-uris are designed to identify persistent namespaces not the resources themselves. Also the process of establishing a URN namespace isn't for the faint of heart, which is evidenced by the short list of them. info-uris by contrast have a <a href="http://info-uri.info/registry/">registrar</a> who will expedite the process of registering a namespace, and have set up a framework for publishing validation/normalization rules. The current registrar is run by OCLCRLGBORG^w OCLC on behalf of NISO. So basically you don't have to write an RFC to register your namespace.</p>
