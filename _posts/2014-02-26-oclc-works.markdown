---
layout: post
status: publish
published: true
title: OCLC Works
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 7183
wordpress_url: http://inkdroid.org/journal/?p=7183
date: '2014-02-26 10:44:23 +0000'
date_gmt: '2014-02-26 17:44:23 +0000'
tags:
- oclc
- linked-data
- isbn
- jsonld
comments:
- id: 86844
  author: sschindehette
  author_email: schindes@oclc.org
  author_url: ''
  date: '2014-02-26 13:26:16 +0000'
  date_gmt: '2014-02-26 20:26:16 +0000'
  content: |
    Thank you for the suggestions.  We are already working on some of the ideas and we will add the others to our list.
    Just a note on retrieving Work URIs - Your screen shot of xISBN results lists the OWI so you could have taken the value from the first step.
    The good thing about your examples is that they show you can come at it from a number of angles.  Knowing any one of the xID identifiers (ISBN, OCN or LCCN) will allow you to get the Work identifier.  Having the Work URI released in the WorldCat linked data will make this step even easier.
- id: 86846
  author: Can you please remove &#8216;meaningful punctuation&#8217; from field contents,
    librarians? |Bende
  author_email: ''
  author_url: http://ben.companjen.name/2014/02/can-you-please-remove-meaningful-punctuation-from-field-contents-librarians/
  date: '2014-02-26 16:02:13 +0000'
  date_gmt: '2014-02-26 23:02:13 +0000'
  content: |
    [&#8230;] structure and semantics can be improved, as Richard Wallis of OCLC says in a blog post. The example that Ed took in his blog post, &#8220;Weaving the Web&#8221; by Tim Berners-Lee, demonstrates my issue (which is not touched upon [&#8230;]
- id: 86847
  author: 194 Million Linked Open Data Bibliographic Work Descriptions Released by
    OCLC - Semanticweb.com
  author_email: ''
  author_url: http://semanticweb.com/194-million-linked-open-data-bibliographic-work-descriptions-released-oclc_b41921
  date: '2014-02-26 16:31:53 +0000'
  date_gmt: '2014-02-26 23:31:53 +0000'
  content: |
    [&#8230;] now, it&#8217;s great to see this start, and as Ed Summers says in this post, &#8220;OCLC didn’t let the perfect be the enemy of the good.&#8221; [&#8230;]
- id: 86849
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2014-02-27 02:55:50 +0000'
  date_gmt: '2014-02-27 09:55:50 +0000'
  content: |
    <p>Thanks for noticing that -- I'm kind of embarrassed I didn't! That simplifies things significantly, so I've adjusted the blog post appropriately.</p>
- id: 86853
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2014-03-01 04:57:54 +0000'
  date_gmt: '2014-03-01 11:57:54 +0000'
  content: |
    <p>I've flipped the blog post back to the original content (2 xID lookups) but with the correct JSON response this time. Hopefully xID can be updated to return the OCLC Work Identifier consistently. Thanks very much Stephan Schindehette and Alf Eaton for noticing the inconsistencies.</p>
---

<p>The news about OCLC's Linked Data service <a href="http://dataliberate.com/2014/02/oclc-preview-194-million-open-bibliographic-work-descriptions/">circulated</a> <a href="http://hangingtogether.org/?p=3614">widely</a> on Twitter yesterday. I've never been a big OCLC cheerleader, but the news really hit home for me. I've been writing in my rambling way about <a href="http://inkdroid.org/journal/tag/linked-data/">Linked Data</a> here for about <a href="http://inkdroid.org/journal/2008/01/04/following-your-nose-to-the-web-of-data/">6 years</a>. Of course there are many others who've been at it much longer than I have ... and in a way I think librarians and archivists feel a kinship with the effort because it is cooked into the DNA of how we think about the Web as an information space.</p>
<h2>Like Button</h2>
<p>This new OCLC service struck me as an excellent development for the library Web community for a few reasons, that I thought I would quickly jot down:</p>
<ul>
<li><strong>it's evolutionary</strong>: OCLC didn't let the perfect be the enemy of the good. It's great to hear links to VIAF, FAST, LCSH, etc are planned. But you have to start somewhere, and there is already significant value in expressing the FRBR workset data they have as Linked Data on the Web for others to use. Also, the domain <code>experiment.worldcat.org</code> clearly reflects this is an experiment...but they didn't let anxiety about changing URLs prevent them from publishing what they can now. The future is longer than the past.</li>
<li><strong>it's snappy</strong>: I don't know if they've written about the technical architecture they are using, but the views are quite responsive. Of course I have no idea what kind of load it is under, but so far so good. <em>Update: Ron Buckley of OCLC <a href="https://twitter.com/buckley_ron/status/438819400313868288">let me know</a> the service is built on top of a shared <a href="https://twitter.com/buckley_ron/status/438819400313868288">Apache HBase</a> Hadoop cluster.</em></li>
<li><strong>schema.org</strong>: OCLC has the brains and the market position to create their own vocabulary for bibliographic data. But they worked hard at engaging openly with the <a href="http://www.w3.org/community/schemabibex/">Web community</a> to help clarify and adapt the Schema.org vocabulary so that it can be used by our community. There is lots of thrashing going on in this space at the moment, and OCLC is being a great model in trying to work with the Web we have, and iterating to make it better, instead of trying to take a quantum leap forward.</li>
<li><strong>json-ld</strong>: JSON-LD has been cooking for a while, but it's a brand new W3C standard for representing RDF as idiomatic JSON. RDF has been somewhat plagued in the past by esoteric and/or hard to understand representations. JSON-LD really seems to have <a href="http://manu.sporny.org/2014/json-ld-origins-2/">hit</a> a sweet-spot between the expressivity of RDF and the usability of the Web. It's refreshing to see OCLC kicking JSON-LD's tires.</li>
</ul>
<h2>Rubber Meet Road</h2>
<p>So how do you discover these Work URIs? Richard's <a href="http://dataliberate.com/2014/02/oclc-preview-194-million-open-bibliographic-work-descriptions/">post</a> led me to believe I could get them directly from the xID service using an ISBN. But I found it to be a two step process: first get any OCLC Number associated with an ISBN from xID, and then use the OCLC Number to get the Work Identifier from the xID service:</p>
<p>So for example, to discover the Work URI for Tim Berners-Lee's <a href="http://www.w3.org/People/Berners-Lee/Weaving/">Weaving the Web</a> you first look up the ISBN:</p>
<p><code>http://xisbn.worldcat.org/webservices/xid/isbn/0062515861?method=getMetadata&amp;format=json&amp;fl=*</code></p>
<p>which should yield:</p>
<pre language="json">{
    "list": [
        {
            "author": "Tim Berners-Lee with Mark Fischetti.",
            "city": "San Francisco",
            "ed": "1st ed.",
            "form": [
                "AA",
                "BA"
            ],
            "isbn": [
                "0062515861"
            ],
            "lang": "eng",
            "lccn": [
                "99027665",
                "00039593"
            ],
            "oclcnum": [
                "300691968",
                "318261941",
                "410824754",
                "41238513",
                "470718156",
                "558595430",
                "628749869",
                "768228949",
                "807901805",
                "43903751",
                "699807622"
            ],
            "publisher": "HarperSanFrancisco.",
            "title": "Weaving the Web : the original design and ultimate destiny of the World Wide Web by its inventor",
            "url": [
                "http://www.worldcat.org/oclc/300691968?referer=xid"
            ],
            "year": "1999"
        }
    ],
    "stat": "ok"
}
</pre>
<p>Then pick one of the OCLC Numbers (oclcnum) at random and use it to do an xID call:</p>
<p><code>http://xisbn.worldcat.org/webservices/xid/oclcnum/300691968?method=getMetadata&amp;format=json&amp;fl=*</code></p>
<p>Which should return:</p>
<pre language="json">{
    "list": [
        {
            "isbn": [
                "9780062515865",
                "9780062515872"
            ],
            "lccn": [
                "99027665"
            ],
            "oclcnum": [
                "300691968"
            ],
            "owi": [
                "owi27331745"
            ]
        }
    ],
    "stat": "ok"
}
</pre>
<p>You can then dig out the Work Identifier (owi), trim off the owi prefix, and put it on the end of a URL like:</p>
<p><code>http://experiment.worldcat.org/entity/work/data/27331745</code></p>
<p>or, if you want the JSON-LD without doing content negotiation:</p>
<p><code>http://experiment.worldcat.org/entity/work/data/27331745.jsonld</code></p>
<p>This returns a chunk of JSON data that I won't reproduce here, but do <a href="http://experiment.worldcat.org/entity/work/data/27331745.jsonld">check it out</a>.</p>
<p><em>Update: After hitting publish on this blog post I've corresponded a bit with Stephan Schindehette at OCLC and <a href="http://twitter.com/invisiblecomma">Alf Eaton</a> about some inconsistencies in my blog post (which I've fixed), and uncertainty about what the xID API should be returning. Hopefully xID can be updated to return the OCLC Work Identifier when you lookup by ISBN. I'll update this blog post if I am notified of a change.</em></p>
<h2>Peanut Gallery</h2>
<p>One bit of advice that I was given by <a href="https://github.com/dlongley">Dave Longley</a> on the #json-ld IRC channel, which I will pass along to OCLC, is that it might be better to use CURIE-less properties, e.g. <code>name</code> instead of <code>schema:name</code>, to make it easier to use (and read) the JSON from JavaScript. To do this you would need a more expressive <code>@context</code> but I think it might make sense to <a href="http://www.w3.org/TR/json-ld/#the-context">reference an external context document</a> and cut down on the size of the JSON-LD document even more.</p>
<p>It's wonderful to see that the data is being licensed ODC-BY, but maybe assertions to that effect should be there in the data as well? I think schema.org have steered clear of licensing properties, but cc:license seems like a reasonable property to use, assuming it's used with the right subject URI.</p>
<p>And one last tiny suggestion I have is that it would be nice to see the service mainstreamed into <a href="http://www.oclc.org/data/data-sets-services.en.html">other</a> <a href="http://oclc.org/research/activities/linkeddata.html">parts</a> of OCLC's website. But I understand all too well the divides between R&amp;D and production ... and how challenging it can be to integrate them sometimes, even in the simplest of ways.</p>
