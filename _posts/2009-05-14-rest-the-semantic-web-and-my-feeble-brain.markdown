---
layout: post
status: publish
published: true
title: rest, the semantic web and my feeble brain
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 974
wordpress_url: http://inkdroid.org/journal/?p=974
date: '2009-05-14 20:29:40 +0000'
date_gmt: '2009-05-15 03:29:40 +0000'
tags:
- semanticweb
- newspapers
- web
- rest
- loc
- uris
comments:
- id: 81518
  author: bibwild.wordpress.com/
  author_email: ''
  author_url: http://bibwild.wordpress.com/
  date: '2009-05-15 06:10:58 +0000'
  date_gmt: '2009-05-15 13:10:58 +0000'
  content: "I have to say, and I guess I've said before, that I've always found http-range14
    and the \"real world\" vs \"information\" thing to be somewhat confusing, and
    a pretty hacky \"solution\" that seems to make everything consistent but really
    just confuses as much as it answers. \r\n\r\nI think you should do whatever seems
    to be simplest and easiest while still supporting all the use cases you can think
    of fairly well. It seems like you have several options that support most of your
    use cases fairly well; in which case to me it comes down to whatever is simplest,
    easiest to implement, easiest to understand. Rather than whatever is most abstractly
    theoretically sound according to httpRange-14. \r\n\r\nWe're all working this
    stuff out in practice, right?  So you'll try something, and people will learn
    from it.  Now, it would still be unfortunate if you tried something without understand
    what was going on and what other people were trying -- but I really believe this
    isn't a done deal answered question, smart intelligent reasonable people can disagree
    on the best way to do it. I've never completely bought into to the httpRange-14
    stuff -- now, perhaps that's cause I still don't completely understand it, but
    as we frequently say critisizing overly complex library standards, if someone
    who's motivated and reasonably clever can't understand something even spending
    some time trying, that doens't say good things about it's eventual widespread
    adoption."
- id: 81519
  author: Jeff Young
  author_email: ''
  author_url: http://realworldobject.myopenid.com/
  date: '2009-05-15 07:02:59 +0000'
  date_gmt: '2009-05-15 14:02:59 +0000'
  content: Note that this example indicates there are 2 text/html (one supposedly
    plain text but not really), 1 PDF, and 1 JP2 representation available. Even though
    these are separate resources with different URIs, they are still representations
    of some one thing. This something is the Real World Object and it deserves a URI
    of its own.Ideally, in this case, the RWO URI will do a 303 redirect to a Generic
    Document from which clients can negotiate for the representation of their choice.
    Some of the triples you refer to such as the publisher of the newspaper need to
    use this RWO URI as the subject which may be different from the publisher of the
    representation.
- id: 81520
  author: Daniel Bennett
  author_email: daniel@citizencontact.com
  author_url: http://citizencontact.myopenid.com/
  date: '2009-05-15 08:11:47 +0000'
  date_gmt: '2009-05-15 15:11:47 +0000'
  content: "I am still confused by all of the server side machinations for using URI
    for describing parts of XML documents of any sort. I was under the impression
    that anchors and ids within a document would allow for finding a portion of a
    document. XLINKS and especially XPointer provides fine grained exposure of an
    XML document. Then extra features, either server or client side, based on those
    standards can be built, allowing for gentle degrading to the link to the whole
    document. Fewer HTTP error messages, I assume, easier caching especially when
    supported with static documents that do not depend on server side processing and
    ...\r\n\r\nAnd the result is still a URI (e.g. \r\nhttp://example.com/document1#part1_subsec5
    )\r\n\r\nDaniel Bennett"
- id: 81521
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-05-15 08:13:07 +0000'
  date_gmt: '2009-05-15 15:13:07 +0000'
  content: "Jeff, yeah you have a point. If there were a URI for the page it should
    content-negotiate to all the representations. I still think it's debatable based
    on the language in the AWWW  whether this is a RWO or not though. Not probably
    worthy of much debate though in the long run.\r\n\r\nOn the subject of the text/plain
    representation ... why do you say <a href=\"http://chroniclingamerica.loc.gov/lccn/sn85066387/1898-01-01/ed-1/seq-1/ocr.txt\"
    rel=\"nofollow\">http://chroniclingamerica.loc.gov/lccn/sn85066387/1898-01-01/ed-1/seq-1/ocr.txt</a>
    isn't text/plain?"
- id: 81522
  author: gluejar
  author_email: eric@hellman.net
  author_url: ''
  date: '2009-05-15 08:46:39 +0000'
  date_gmt: '2009-05-15 15:46:39 +0000'
  content: "inkdroid, don't worry, be happy; you work for the Library of Congress,
    not the US Mint. \r\n\r\nWhen I make an assertion about something digital you
    make available, I am the one who chooses the URI to use. I can be guided by your
    example- but I am free to reject your guidance. If I want to make an assertion
    about the representation you deliver distinct from the RWO, it's up to me to be
    clear what my subject is, and it's not your job to anticipate all my identifier
    needs."
- id: 81523
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-05-15 11:53:17 +0000'
  date_gmt: '2009-05-15 18:53:17 +0000'
  content: "gluejar, that makes me rest a bit easier...\r\n\r\nBut still: if I am
    publishing RDF assertions about the things I publish then I do need to think about
    the identifiers I use eh?"
- id: 81524
  author: johnwcowan
  author_email: cowan@ccil.org
  author_url: ''
  date: '2009-05-15 12:24:18 +0000'
  date_gmt: '2009-05-15 19:24:18 +0000'
  content: 'Topic Maps gets this right: it distinguishes *in the links* between  the
    use of URIs as subject indicators and their use as information resources.'
- id: 81525
  author: jenitennison.com/
  author_email: ''
  author_url: http://www.jenitennison.com/
  date: '2009-05-15 12:33:57 +0000'
  date_gmt: '2009-05-15 19:33:57 +0000'
  content: "I can tell you what we did in a similar situation with the London Gazette.
    We gave the notices (and issues, and editions) identifier URLs which 303 to an
    abstract document URL, which content negotiate to a number of different representation
    URLs.\r\n\r\nI think that there is a difference between \"page 1 of edition 1
    of The Call dated 1st Jan 1898\" and \"a web page that provides information about
    page 1 of edition 1 of The Call dated 1st Jan 1898\". The two items have different
    publishers and creation dates, for example. Therefore I'd give them separate URIs.
    If someone requests \"page 1 of edition 1 of The Call dated 1st Jan 1898\" you
    redirect them to the \"web page about ...\"."
- id: 81528
  author: Jeff Young
  author_email: ''
  author_url: http://realworldobject.myopenid.com/
  date: '2009-05-15 19:08:22 +0000'
  date_gmt: '2009-05-16 02:08:22 +0000'
  content: "Ed,\r\n\r\nLook closer at the \"View: Text\" link at http://chroniclingamerica.loc.gov/lccn/sn85066387/1898-01-01/ed-1/seq-1/.
    It leads to a text/html representation.\r\n\r\nIf you plan to buy into the Linked
    Data principles, you should be beware that Topic Maps seem to have a competing
    philosophy. This blog entry may help you decide which URIs are appropriate for
    use in the RDF you produce: http://q6.oclc.org/2009/05/linked_datahttp.html.\r\n\r\nJeff"
- id: 81529
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-05-16 05:18:30 +0000'
  date_gmt: '2009-05-16 12:18:30 +0000'
  content: "Jeff, yes ... but I thought you were talking about the link rel=\"alternate\"
    type=\"text/plain\" in the html ... which really does lead you to a text/plain
    representation. \r\n\r\nI am already aware of Topic Maps yes, but thanks for the
    link to your blog post. I am interested in exploring how linked data works in
    practice primarily at the moment."
- id: 81530
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-05-16 05:26:17 +0000'
  date_gmt: '2009-05-16 12:26:17 +0000'
  content: 'John: interesting, so would it be appropriate to say Topic Maps are more
    in line with Xiaoshu’s point about the confusion being a vocabulary issue rather
    than an identity issue? Will need to review Topic Maps again.'
- id: 81531
  author: hvdsomp
  author_email: hvdsomp@yahoo.com
  author_url: ''
  date: '2009-05-19 08:46:28 +0000'
  date_gmt: '2009-05-19 15:46:28 +0000'
  content: "Ed: Regarding the vocab issue, you might be interested in this paper that
    was presented at LDOW2009 (where I presented on ORE):\r\n\r\nAn Ontology of Resources
    for Linked Data  (Harry Halpin, Valentina Presutti) - http://events.linkeddata.org/ldow2009/papers/ldow2009_paper19.pdf"
- id: 81532
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-05-19 09:10:11 +0000'
  date_gmt: '2009-05-19 16:10:11 +0000'
  content: "@hvdsomp thanks so much, I had seen your ldow2009 ore paper, but not this
    one on resources! \r\n\r\nI've been really pleased to see you and the rest of
    the OAI-ORE folks cross-fertilizing the digital-library/repository and linked-data/semweb
    crowds."
- id: 81533
  author: hvdsomp
  author_email: hvdsomp@yahoo.com
  author_url: ''
  date: '2009-05-19 11:58:44 +0000'
  date_gmt: '2009-05-19 18:58:44 +0000'
  content: "@ed thanks for your kind words. \r\n\r\nregarding your above question,
    I was wondering whether you had actually considered an ORE approach? I see the
    following resources:\r\n\r\n(*) Splash page that gives access to scanned image
    of newspaper - document resource\r\n(*) Scanned image - one or more document resources
    depending on whether you give each format the same (conneg) or different (non
    conneg) URI\r\n(*) Analog newspaper - non-document resource\r\n\r\nThe above 3
    could be aggregated in an ORE Aggregation, itself a non-document resource.  Now
    the URI of the ORE Aggregation is the one to ship around ;-)\r\n\r\nAnyhow, this
    is interesting because at a workshop a few months ago at the National Library
    of Sweden a related issue came up: the library there has the need to glue together
    the analog newspaper (issue of a day) and all its related digital products, such
    as the newspaper's website pages, the blog, the blog's comments, the videos, etc.
    In that context, ORE was also mentioned as a possible solution."
- id: 81536
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-05-22 09:02:15 +0000'
  date_gmt: '2009-05-22 16:02:15 +0000'
  content: '@herbert yes, in fact we were playing around w/ ore. I just sent a <a
    href="http://groups.google.com/group/oai-ore/browse_thread/thread/4a71d09b6b5a6feb"
    rel="nofollow">message</a> to the oai-ore discussion list about the use of the
    oai-ore vocabulary in the linked data views at chronicling america.'
- id: 81887
  author: inkdroid &rsaquo; web documents and axioms for linked data
  author_email: ''
  author_url: http://inkdroid.org/journal/2010/02/22/web-documents-and-axioms-for-linked-data/
  date: '2010-02-22 19:06:53 +0000'
  date_gmt: '2010-02-23 02:06:53 +0000'
  content: "[...] email exchange with Richard Cyganiak (one of the architects of the
    Linked Data pattern) about some trouble I&#8217;ve had understanding what Information
    Resources and Documents are in the context of [...]"
---
<p>Imagine you were minting close to a million URIs for historic newspaper pages such as:</p>
<blockquote><p>
<a href="http://chroniclingamerica.loc.gov/lccn/sn85066387/1898-01-01/ed-1/seq-1/">http://chroniclingamerica.loc.gov/lccn/sn85066387/1898-01-01/ed-1/seq-1/</a>
</p></blockquote>
<p>for pages like:</p>
<p><a href="http://chroniclingamerica.loc.gov/lccn/sn85066387/1898-01-01/ed-1/seq-1/"><img src="http://inkdroid.org/images/sn85066387_1898-01-01_ed-1_seq-1.png" width="450" border="0" /></a></p>
<p>The web page allows you to zoom in quite close and see lots of detail in the page:</p>
<p><a href="http://chroniclingamerica.loc.gov/lccn/sn85066387/1898-01-01/ed-1/seq-1/"><img src="http://inkdroid.org/images/sn85066387_1898-01-01_ed-1_seq-1-b.png" width="450" border="0" /></a></p>
<p>Now lets say I want to describe this Newspaper Page in RDF. I need to decide what subject URI to hang the description off of. Should I consider this Newspaper Page resource an information resource, or a real world resource? The answer to this question determines whether or not I can hang my description of the page off the above URI, for example:</p>
<pre>
&lt;http://chroniclingamerica.loc.gov/lccn/sn85066387/1898-01-01/ed-1/seq-1/&gt; 
  dcterms:issued "1898-01-01"^^&lt;http://www.w3.org/2001/XMLSchema#date&gt; .
</pre>
<p>Or if I need to mint a new URI for the page as a real world thing:</p>
<pre>
&lt;http://chroniclingamerica.loc.gov/lccn/sn85066387/1898-01-01/ed-1/seq-1#page&gt; 
  dcterms:issued "1898-01-01"^^&lt;http://www.w3.org/2001/XMLSchema#date&gt; .
</pre>
<p><a href="http://www.w3.org/TR/webarch/#id-resources">AWWW 1</a> provides some guidance:</p>
<blockquote><p>
By design a URI identifies one resource. We do not limit the scope of what might be a resource. The term "resource" is used in a general sense for whatever might be identified by a URI. It is conventional on the hypertext Web to describe Web pages, images, product catalogs, etc. as “resources”. The distinguishing characteristic of these resources is that all of their essential characteristics can be conveyed in a message. We identify this set as “information resources.”</p>
<p>This document is an example of an information resource. It consists of words and punctuation symbols and graphics and other artifacts that can be encoded, with varying degrees of fidelity, into a sequence of bits. There is nothing about the essential information content of this document that cannot in principle be transfered in a message. In the case of this document, the message payload is the representation of this document.
</p></blockquote>
<p>Can all of the <em>essential characteristics</em> of this newspaper page be sent down the wire as a message to a client? The text of the page is pretty legible after zooming in and you can see pictures, headlines, etc. You can't feel the texture of the page itself, but you can't in the microfilm that the page images were generated from. So I'm inclined to say yes.</p>
<p><a href="http://www.w3.org/TR/cooluris/#distinguishing">Cool URIs for the Semantic Web</a> also has some advice:</p>
<blockquote><p>
It is important to understand that using URIs, it is possible to identify both a thing (which may exist outside of the Web) and a Web document describing the thing. For example the person Alice is described on her homepage. Bob may not like the look of the homepage, but fancy the person Alice. So two URIs are needed, one for Alice, one for the homepage or a RDF document describing Alice. The question is where to draw the line between the case where either is possible and the case where only descriptions are available.</p>
<p>According to W3C guidelines ([AWWW], section 2.2.), we have a Web document (there called information resource) if all its essential characteristics can be conveyed in a message. Examples are a Web page, an image or a product catalog.</p>
<p>In HTTP, because a 200 response code should be sent when a Web document has been accessed, but a different setup is needed when publishing URIs that are meant to identify entities which are not Web documents.
</p></blockquote>
<p>This makes me think that I will need distinct identifiers for the abstract notion of the Newspaper Page, and the HTML document itself, if it is important to describe them separately. Say for example if I wanted to say the publisher of the web page was the Library of Congress, but the publisher of the Newspaper Page was Charles M. Shortridge. If I don't have distinct identifiers I will have to say:</p>
<pre>&lt;http://chroniclingamerica.loc.gov/lccn/sn85066387/1898-01-01/ed-1/seq-1/&gt; 
  dc:publisher &lt;http://loc.gov&gt;, 
  &lt;http://www.joincalifornia.com/candidate/12338&gt; 
  .
</pre>
<p>Pondering this <em>Information Resource Sniff-Test</em> got me re-reading Xiaoshu Wang's paper <a href="http://web.archive.org/web/20110903110301/http://dfdf.inesc-id.pt:80/tr/web-arch">URI Identity and Web Architecture Revisited</a> again. And I've come away more convinced that maybe he's right: that the real issue lies in my vocabulary usage (dc:publisher in this example), and not with whether my URI identifies an Information Resource or not. So maybe new vocabulary is needed in order to describe the representation?</p>
<pre>&lt;http://chroniclingamerica.loc.gov/lccn/sn85066387/1898-01-01/ed-1/seq-1/&gt; 
  web:repPublisher &lt;http://loc.gov&gt; ;
  dcterms:publisher &lt;http://www.joincalifornia.com/candidate/12338&gt; 
  .
</pre>
<p>But there isn't a community of practice behind Xiaoshu's position, at least not one like the Linked Data community.  Unless perhaps his position is closer to the REST community which is going strong at the moment, especially in AtomPub circles. Members of the linked-data/semweb community would most likely say that there needs to be either hash or 303'ing URIs for the Newspaper Page, distinct from the URIs for the document describing the Newspaper Page. As a late comer to the httpRange-14 debate I don't think I ever internalized how REST and the Semantic Web are slightly out of tune w/ each other regarding resources on the web.</p>
<p>So. Should I have two different URIs: one for the real-world Newspaper Page, and one for the HTML document that describes that page? Is the Newspaper Page an Information Resource? Am I muddling up something here? Am I thinking too much? Should I just let sleeping dogs lie? Your opinion, advice, therapy would be greatly appreciated.</p>
