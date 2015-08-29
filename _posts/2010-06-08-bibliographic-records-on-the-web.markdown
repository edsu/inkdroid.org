---
layout: post
status: publish
published: true
title: bibliographic records on the web
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2020
wordpress_url: http://inkdroid.org/journal/?p=2020
date: '2010-06-08 10:02:11 +0000'
date_gmt: '2010-06-08 17:02:11 +0000'
tags:
- foaf
- linkeddata
- urls
comments:
- id: 82696
  author: jakoblog.de/
  author_email: jakob@nichtich.de
  author_url: http://jakoblog.de/
  date: '2010-06-09 00:05:10 +0000'
  date_gmt: '2010-06-09 07:05:10 +0000'
  content: "The issue you and Erik Hetzner raised is not specific to bibliographic
    records on the web. It occurs as soon as you want to make assertions about data
    - for instance you want to express who created a MARC record and when it was changed.
    In RDF you could use reification but named graphs seem to become the more adopted
    solution. Moreover we have HTTP headers to express some of this metadata about
    serializations. This all adds additional layers of complexity which is nice in
    theory but stupid in practice.\r\n\r\nIn practice you are less interested in \"data
    about data about data ... about things\" but just in data about things - and in
    practice you do think about \"information resources\" vs \"non-information resource\".
    That's why a flat model is more useful in most situations:\r\n\r\n<pre>\r\n a
    foaf:Person ;\r\n  rdfs:isDefinedBy\r\n     ,\r\n     ,\r\n     ,\r\n     .\r\n</pre>\r\n\r\nIn
    practice there is no need to model \"a bibliographic record\" because you should
    not care about bibliographic records. You should care about the information that
    happens to be encoded in bibliographic records instead. Why do libraries always
    try to make users think like them instead of just providing useful service from
    the users point of view? Bibliographic records are irrelevant - it's the content
    that matters."
- id: 82697
  author: jakoblog.de/
  author_email: jakob@nichtich.de
  author_url: http://jakoblog.de/
  date: '2010-06-09 00:05:50 +0000'
  date_gmt: '2010-06-09 07:05:50 +0000'
  content: "The issue you and Erik Hetzner raised is not specific to bibliographic
    records on the web. It occurs as soon as you want to make assertions about data
    - for instance you want to express who created a MARC record and when it was changed.
    In RDF you could use reification but named graphs seem to become the more adopted
    solution. Moreover we have HTTP headers to express some of this metadata about
    serializations. This all adds additional layers of complexity which is nice in
    theory but stupid in practice.\r\n\r\nIn practice you are less interested in \"data
    about data about data ... about things\" but just in data about things - and in
    practice you do think about \"information resources\" vs \"non-information resource\".
    That's why a flat model is more useful in most situations:\r\n\r\n<pre> a foaf:Person
    ;\r\n  rdfs:isDefinedBy\r\n     ,\r\n     ,\r\n     ,\r\n     .</pre>\r\n\r\nIn
    practice there is no need to model \"a bibliographic record\" because you should
    not care about bibliographic records. You should care about the information that
    happens to be encoded in bibliographic records instead. Why do libraries always
    try to make users think like them instead of just providing useful service from
    the users point of view? Bibliographic records are irrelevant - it's the content
    that matters."
- id: 82698
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2010-06-09 13:36:34 +0000'
  date_gmt: '2010-06-09 20:36:34 +0000'
  content: "I don't agree Jakob. I don't think it has to be terribly overthought and
    complicated myself. I think this assertion would work fine to indicate that a
    particular bibliographic record was created by someone named James Billington:\r\n\r\n<pre>\r\n&lt;http://lccn.loc.gov/99027665&gt;
    dc:creator \"James Billington\" .\r\n</pre>\r\n\r\nIf this isn't good enough for
    asserting who the creator of a particular bibliographic record is, then maybe
    we need a better piece of vocabulary than dc:creator. <em>My apologies if your
    example somehow got garbled in the publication workflow.</em>\r\n\r\nAlso, for
    what it's worth, I completely disagree about bibliographic records not mattering.
    I care deeply about bibliographic records for books, people, subjects, places,
    etc being on the web where people can get them by resolving a URL. Of course it
    is the information that is contained in them that's most important. But unless
    you can get them using today's predominant publishing system (the Web) what good
    are they? Another way of putting this would be, don't you think encyclopedia entries
    still matter? Sure it's the information contained in the entry that matters most,
    but that encyclopedia entry resource on the web, say at Wikipedia, is tremendously
    important."
- id: 82700
  author: google.com/profiles/Fe…
  author_email: felix.ostrowski@googlemail.com
  author_url: ''
  date: '2010-06-10 02:06:10 +0000'
  date_gmt: '2010-06-10 09:06:10 +0000'
  content: "Agreed: End-users (whoever that may be) usually care about \"data about
    things\".  But this does not imply that the concept of a record is dispensable.
    In fact, those litte fellows are everywhere. Each and every information resource
    on the web can be considered a record (most of them containing rather unstructured
    data). And if we care about authorship, creation date etc. of a blog post, why
    should metadata for a bibliographic record be neglected?\r\n\r\nI admit that metadata
    for a blog post is probably more interesting for a broad audience. But I still
    strongly disagree with Jakob saying that \"[i]n practice there is no need to model
    'a bibliographic record' because you should not care about bibliographic records\".\r\n\r\nFirst
    of all: there is no such thing as free-floating statements.  Assertions are always
    materialized. From an RDF point of view, triples are always asserted in graphs
    - be it the default graph or a named graph in a triplestore, or an RDF-Document
    available at some URL (I would actually also consider that a named graph). Since
    we have records, we should care about them.\r\n\r\nBesides that, records are and
    will most likely continue to be very useful on an infrastructural level. They
    are neatly packed snippets of information that can be exchanged easily (e.g. by
    simply writing them to a file), merging is simple, and they provide a good boundary
    for version control. (I am assuming the \"One Resource per Graph\"-scenario discussed
    in Leigh Dodds' <a href=\"http://www.ldodds.com/blog/2009/12/approaches-to-publishing-linked-data-via-named-graphs/\"
    rel=\"nofollow\">Approaches to Publishing Linked Data via Named Graphs</a> here.)
    In a massively distributed environment such as librarianship, update notifications
    are also important.  Maybe bibliographic data would be a good playground to explore
    \"<a href=\"http://www.ldodds.com/blog/2010/04/rdf-dataset-notifications/\" rel=\"nofollow\">notifications
    of graph structural changes to a dataset, e.g. adding or removing named graphs</a>\".\r\n\r\nThe
    nice thing about a record model based on RDF and named graphs is the fact that
    it is easy to make the record \"transparent\". The way e.g. <a href=\"http://4store.org/\"
    rel=\"nofollow\">4store</a> handles named graphs is that it provides the aggregate
    of all assertions within all named graphs as the default graph. That would be
    the view on the data when \"you are less interested in 'data about data about
    data ... about things'\"."
- id: 82701
  author: Owen Stephens
  author_email: owen_stephens@yahoo.com
  author_url: https://me.yahoo.com/owen_stephens#ed007
  date: '2010-06-10 05:49:47 +0000'
  date_gmt: '2010-06-10 12:49:47 +0000'
  content: "I'm going to comment on the first issue you raise, rather than your main
    point (sorry!)\r\n\r\nThe issue for me is the differentiation between the person
    who actually wrote the book, and how they are described by a particular book (and
    thought of by that books audience). I don't think this is about control but about
    how we model the data (I may be wrong - perhaps it is just the librarian in me
    coming through)\r\n\r\nTo take a relatively well known example, Iain (M) Banks
    writes under two names to differentiate his science fiction and non-genre fiction
    writings.\r\n\r\nTo take another example 'Devil May Care' is authored (according
    to the cover) by 'Sebastian Faulks, writing as Ian Fleming'\r\n\r\nAnother example
    might be a ghost written memoir.\r\n\r\nI'm also reminded of the story that having
    read Alice in Wonderland, Queen Victoria asked for other books by the same author,
    and got delivered academic mathematics books by Charles Dodgson.\r\n\r\nIn these
    cases it seems to me that we have a persona that has been created to represent
    the author - and when we come to search for a book, or view the details of a book,
    we are as likely to be interested in that persona as we are in the person who
    actually wrote the book.\r\n\r\nI do have a lot of sympathy with your argument
    that we need to take a pragmatic approach, and have some doubts about my own argument
    - perhaps I'm worrying about edge cases. On the otherhand the I think that there
    is a risk that we lose some of the information that is actually useful to people
    searching for this stuff if we aren't careful."
- id: 82702
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2010-06-10 06:49:58 +0000'
  date_gmt: '2010-06-10 13:49:58 +0000'
  content: "Hey Owen. Yeah, it was kind of a mistake for me to have addressed both
    issues in the same post. \r\n\r\nThe different names for people is a good example
    of where FOAF is currently lacking. This was actually the topic of the <a href=\"http://lists.foaf-project.org/pipermail/foaf-dev/2010-June/010253.html\"
    rel=\"nofollow\">discussion</a> over on  foaf-dev that I mentioned.\r\n\r\nIt
    seemed like there was general agreement that there are ways of using skos:altLabel
    (a variant on Leigh and Ian's <a href=\"http://patterns.dataincubator.org/book/preferred-label.html\"
    rel=\"nofollow\">preferred-label pattern</a>), or a new property foaf:alias, creating
    different foaf:Person resources and linking them together, or perhaps introducing
    the notion of a <a href=\"http://ontologi.es/persona\" rel=\"nofollow\">Persona</a>.
    \r\n\r\nBut at the end of the day, I think we are describing authors who are people,
    and we should try to stay concrete if we can...instead of treating them as new
    special library resources.\r\n\r\nI think worrying about edge-cases is an endemic
    problem in the library community -- not quite sure why that is. Probably because
    we end up dealing with so many of them :-) The library world is just starting
    out using RDF vocabularies, and I think it's important to stand on a few giant's
    heads, and look around instead of immediately embarking on vocabulary engineering."
- id: 82703
  author: google.com/accounts/o8&hellip;
  author_email: rossfsinger@gmail.com
  author_url: https://www.google.com/accounts/o8/id?id=AItOawlBhPsOb5GN8bfRnBAf9sp8p3TO9o2CYyA
  date: '2010-06-10 06:53:16 +0000'
  date_gmt: '2010-06-10 13:53:16 +0000'
  content: "Owen, I think there is quite a lot of value in your argument (and, in
    some ways, I have been making a similar argument in this regard, re: \"personas\").\r\n\r\nI
    don't think modeling it would be terribly hard, but I am not sure how the execution
    would work.  More specifically, is this just yet another area where librarians
    will alienate themselves from the rest of the information universe simply because
    they get bogged down in the minutiae when the rest of the world just \"does what
    feels right\" (see also the schism between concept and thing).\r\n\r\nOn the flip
    side of that, it could also be viewed as an opportunity.  Were the library community
    to model this in a reusable way, it might help establish relevance.\r\n\r\nNow
    on to Jakob's comment... Jakob, maybe it would be better to think of bibliographic
    records as \"web documents\" rather than \"information resources\"?"
- id: 82704
  author: Owen Stephens
  author_email: owen_stephens@yahoo.com
  author_url: https://me.yahoo.com/owen_stephens#ed007
  date: '2010-06-10 07:20:29 +0000'
  date_gmt: '2010-06-10 14:20:29 +0000'
  content: "That's a good thread - sorry I should have read that first. Having gone
    through that discussion and given it at least 30 seconds thought, my immediate
    instinct is to go with the use of different foaf:Person resources, and then look
    at how we link them together.\r\n\r\nAlthough I'm not entirely happy with this,
    I think it has some real advantages:\r\n\r\nIt is easier to understand an author
    as a person rather than a persona\r\nIn most cases the author is a person (or
    there is a one-to-one equivalence between person and persona)\r\nEverything is
    there to do it now\r\nSome people have already done it\r\nIt allows backwards
    compatibility for data already published\r\n\r\nWhile I do like the 'persona'
    model proposed in the thread, and suspect it models the reality more accurately
    in some ways I suspect it will just put bib data on the outside again by adopting
    complexity beyond most people's interest.\r\n\r\nNow will try to strongly hold
    this opinion for the next 24 hours :)"
- id: 82706
  author: jakoblog.de/
  author_email: jakob@nichtich.de
  author_url: http://jakoblog.de/
  date: '2010-06-11 03:13:34 +0000'
  date_gmt: '2010-06-11 10:13:34 +0000'
  content: "Surely there are use cases that require you to model bibliographic records
    as entities with their own URL and make links from and to this specific records
    - but there is no end in adding another level of complexity. You could also put
    the whole record into a string and say\r\n\r\n&lt;http://lccn.loc.gov/99027665&gt;
    format:hasmarcrecord \"put record here\" .\r\n\r\nThere is no \"right\" way to
    model it because it all depends on your use case. The most common use case is
    to express information about things (authors, publications etc.) but not about
    records. \r\n\r\nRecords are only the method to pack and transport this information.
    You do not model TCP packets in RDF, do you? I do not argue against using URIs
    for records at all but records are not the goal - you should better first express
    what is really needed and this is not a bibliographic record, but its content.
    Aggregating and selecting records is based on other methods (HTTP Content negotiation,
    ATOM, OAI, unAPI ...) but not RDF."
- id: 82707
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2010-06-11 03:53:23 +0000'
  date_gmt: '2010-06-11 10:53:23 +0000'
  content: Jakob, now I think we are in agreement. Our bibliographic records really
    should be just a class of web documents with URLs. I could imagine some linked
    data advocates making a case for an abstract notion of a bibliographic records
    (so called Real World Object), so that they could be described. You actually can
    see some of this approach in the use of viaf:EstablishedHeading, viaf:NameAuthorityCluster,
    etc in the <a href="http://viaf.org" rel="nofollow">Virtual International Authority
    File</a> (<a href="http://viaf.org/viaf/79454736/rdf.xml" rel="nofollow">example</a>).
    But I don't think this is necessary, and would ultimately make it difficult for
    people to put their records on the web. As Herbert van de Sompel <a href="http://twitter.com/hvdsomp/status/15777598515"
    rel="nofollow">put it</a>, this would be "one bridge too far".
- id: 82709
  author: google.com/profiles/Fe…
  author_email: felix.ostrowski@googlemail.com
  author_url: ''
  date: '2010-06-18 03:29:24 +0000'
  date_gmt: '2010-06-18 10:29:24 +0000'
  content: "<blockquote>\r\nI could imagine some linked data advocates making a case
    for an abstract notion of a bibliographic records (so called Real World Object),
    so that they could be described.\r\n</blockquote>\r\n\r\nWith RDF you can describe
    anything that has a URI. This of course includes all information resources that
    have a URL, so \"an abstract notion of a bibliographic record\" is not a precondition
    to describing a (bibiographic) record in RDF. Yes, \"[o]ur bibliographic records
    really should be just a class of web documents with URLs\". Fortunately we can
    still use RDF to publish data about those records."
- id: 82710
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2010-06-18 03:51:32 +0000'
  date_gmt: '2010-06-18 10:51:32 +0000'
  content: Agreed. It's easy to forget with all this talk about Linked Data for "real
    world things" that RDF really excels at describing documents on the web.
---
<p><a href="http://openlibrary.org"><img src="http://inkdroid.org/images/openlibrary.png" style="float:left; margin-right: 10px; margin-bottom: 10px;" /></a>There are a couple <a href="http://www.mail-archive.com/ol-tech@archive.org/msg00048.html">interesting</a> <a href="http://www.mail-archive.com/ol-tech@archive.org/msg00075.html">threads</a> (disclaimer I inadvertently started one) going on over on the <a href="http://www.mail-archive.com/ol-tech@archive.org/info.html">Open Library technical discussion list</a> about making Linked Data views available for authors. Since the topic was largely how to model people, part of the discussion <a href="http://lists.foaf-project.org/pipermail/foaf-dev/2010-June/010253.html">spilled over</a> to <a href="http://lists.foaf-project.org/mailman/listinfo/foaf-dev">foaf-dev</a> (also my fault). </p>
<p>When making library Linked Data available my preference has been to follow the lead of <a href="http://twitter.com/geckomarma">Martin Malmsten</a>, <a href="http://twitter.com/brocadedarkness">Anders Söderbäck</a> and the <a href="http://libris.kb.se/">Royal Library of Sweden</a> by modeling authors as People using the <a href="http://xmlns.com/foaf/spec/">FOAF vocabulary</a>:</p>
<pre>
&lt;http://libris.kb.se/resource/auth/317488&gt;
    libris:key "Berners-Lee, Tim" ;
    a foaf:Person ;
    rdfs:isDefinedBy &lt;http://libris.kb.se/data/auth/317488&gt; ;
    skos:exactMatch &lt;http://viaf.org/viaf/23002995&gt; ;
    foaf:name "Berners-Lee, Tim", "Lee, Tim Berners-", "Tim Berners- Lee", "Tim Berners-Lee" .
</pre>
<p>It seems sensible enough right? But there is some desire in the library community to model an author as a <em>Bibliographic Resource</em> and then relate this resource to a <em>Person</em> resource. While I can understand wanting to have this level of indirection to assert a bit more control, and to possibly use some emerging vocabularies for RDA, I think (for now) using something like FOAF for modeling authors as people is a good place to start. </p>
<p><img src="http://inkdroid.org/images/rdf.gif" style="float: right; margin-left: 10px;" /></p>
<p>It will engage folks from the FOAF community who understand RDF and Linked Data, and get them involved in the Open Library Project. It will make library data fit in with other Linked Data out on the web. Plus, it just kind of fits my brain better to think of authors as people...isn't that what libraries were trying to do all along with their authority data? I'm not saying that FOAF will have everything the library world needs (it won't), but it's an open world and we <a href="http://ontologi.es/persona">can</a> add stuff that we need, collaborate, and make it a better place.</p>
<p>Anyway, that's not really what I wanted to talk about here. Over the course of this discussion Erik Hetzner <a href="http://www.mail-archive.com/ol-tech@archive.org/msg00092.html">raised</a> what I thought was an important question:</p>
<blockquote><p>
Are you saying that there is a usable distinction between:</p>
<p>1. a bibliographic record, and<br />
2. the data contained in that bibliographic record?</p>
<p>From above, my first notion would be to model things as, in<br />
pseudo-Turtle::</p>
<p>  &lt;Victor Hugo&gt; a frbr:Person .<br />
  &lt;Victor Hugo&gt; rdfs:isDefinedBy &lt;bib record&gt; .<br />
  &lt;bib record&gt; dc:modified "..."^^xsd:date .</p>
<p>But it seems to me that you are adding a further distinction::</p>
<p>  &lt;Victor Hugo&gt; a frbr:Person .<br />
  &lt;Victor Hugo&gt; rdfs:isDefinedBy &lt;bib record&gt; .<br />
  &lt;bib record&gt; rdfs:isDefinedBy &lt;bib record data&gt;<br />
  &lt;bib record data&gt; dc:modified "..."^^xsd:date .</p>
<p>Is this a usable or useful distinction? Are there times when we want to distinguish between the abstract bibliographic record and the representation of a bibliographic record? <strong>In linked data-speak, is a bibliographic record a non-information resource?</strong> My thinking has been that a bibliographic record is an information resource, and that one does not need to distinguish between (1) and (2) above.
</p></blockquote>
<p>I think it's an important question because I don't think it's been really discussed much before, and has a direct impact on what sort of URL you can use to identify a <em>Bibliographic Record</em>, and what sort of HTTP response a client gets when it is resolved. This is the <a href="http://www.w3.org/2001/tag/issues.html#httpRange-14">httpRange-14</a> issue, which is covered in <a href="http://www.w3.org/TR/cooluris/">Cool URIs for the Semantic Web</a>. If a <em>Bibliographic Record</em> is an <em>Information Resource</em> then its OK to identify the record with any old URL, and for the server to say 200 OK like normal. If it's not an Information Resource then the URL should either have a hash fragment in it, or the server should respond 303 See Other, and redirect to another location.</p>
<p>In my view if a <em>Bibliographic Record</em> is on the web with a URL, it is useful to think of it as an <em>Information Resource</em>...or (as <a href="http://richard.cyganiak.de/">Richard Cyganiak</a> dubs it) a <a href="http://inkdroid.org/journal/2010/02/22/web-documents-and-axioms-for-linked-data/">Web Document</a>. I don't think it's worthwhile philosophizing about this, but instead to think about it pragmatically. I think it's useful to consider </p>
<ul>
<li><a href="http://lccn.loc.gov/99027665">http://lccn.loc.gov/99027665</a></li>
</ul>
<p>as being an identifier for a bibliographic record that happens to be in HTML. Likewise </p>
<ul>
<li><a href="http://lccn.loc.gov/99027665/mods">http://lccn.loc.gov/99027665/mods</a></li>
<li><a href="http://lccn.loc.gov/99027665/dc">http://lccn.loc.gov/99027665/dc</a></li>
<li><a href="http://lccn.loc.gov/99027665/marcxml">http://lccn.loc.gov/99027665/marcxml</a></li>
</ul>
<p>are all identifiers for <em>Bibliographic Records</em> in MODS, Dublin Core and MARCXML respectively. It might be useful to link them together as they are with &lt;link&gt; elements in the HTML, or in some RDF serialization. It also could be useful to treat one as canonical, and content negotiate from one of the URLs (e.g. curl --header "Accept: application/marc+xml" http://lccn.loc.gov/99027665).  But I think it simplifies deployment of library Linked Data to think of bibliographic records as things that can be put on the web as documents, without worrying too much about httpRange-14. A nice side effect of this is that it would grandfather in all the OPAC record views out there. Maybe it'll be useful to distinguish between an abstract notion of a bibliographic record, and the actual document that is the bibliographic record -- but I'm not seeing it right now...and I think it would introduce a lot of unnecessary complexity in this fragile formative period for library Linked Data.</p>
