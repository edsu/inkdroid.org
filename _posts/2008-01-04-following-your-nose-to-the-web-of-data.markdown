---
layout: post
status: publish
published: true
title: following your nose to the web of data
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 180
wordpress_url: http://www.inkdroid.org/journal/2008/01/04/following-your-nose-to-the-web-of-data/
date: '2008-01-04 08:57:33 +0000'
date_gmt: '2008-01-04 15:57:33 +0000'
tags:
- html
- rdf
- semanticweb
- uri
- url
- http
comments:
- id: 64893
  author: Lost in Knowledge
  author_email: ''
  author_url: http://lostinknowledge.org/post/interesting-overview-about-how-it-works/
  date: '2008-06-12 10:53:09 +0000'
  date_gmt: '2008-06-12 17:53:09 +0000'
  content: |-
    <strong>Interesting overview about how it works&#8230;...</strong>

    Semantic Web, Linked data, RDF, Web 3.0 and the like are now buzz. A lot is being written about them but sometimes it&#8217;s hard for the newbie to fully understand how this data is to be related and how any software could navigate through it.
    At inkd...
- id: 76263
  author: Interesting Semantic Web links &laquo; Derivadow.com
  author_email: ''
  author_url: http://derivadow.com/2008/10/15/interesting-semantic-web-links/
  date: '2008-10-15 14:40:19 +0000'
  date_gmt: '2008-10-15 21:40:19 +0000'
  content: "[...] Following your nose to the web of data [inkdroid] The philosophy
    is quite different from other data discovery methods, such as the typical web2.0
    APIs of Flickr, Amazon, YouTube, Facebook, Google, etc., which all differ in their
    implementation details and require you to digest their API documentation before
    you can do anything useful. Contrast this with the Web of Data which uses the
    ubiquitous technologies of URIs and HTTP plus the secret sauce of the RDF triple.
    [...]"
- id: 76414
  author: Media companies should embrace the generative nature of the web &laquo;
    Derivadow.com
  author_email: ''
  author_url: http://derivadow.com/2008/10/18/media-companies-should-embrace-the-generative-nature-of-the-web/
  date: '2008-10-18 11:54:13 +0000'
  date_gmt: '2008-10-18 18:54:13 +0000'
  content: "[...] the Internet is a generative system it means it has a different
    philosophy from most other data discovery systems and APIs (including some that
    are built with Internet [...]"
- id: 86839
  author: FYN v FT$ | AI3:::Adaptive Information
  author_email: ''
  author_url: http://www.mkbergman.com/1713/fyn-v-ft/
  date: '2014-02-24 10:56:50 +0000'
  date_gmt: '2014-02-24 17:56:50 +0000'
  content: |
    [&#8230;] references of interest. FYN is a specific  pattern of linked data. Ed Summers provided one of the  better overviews of the use of FYN in the context of linked data and the Web of Data.[2] See the  MusicBrainz blog [&#8230;]
- id: 86843
  author: OCLC Works | inkdroid
  author_email: ''
  author_url: http://inkdroid.org/journal/2014/02/26/oclc-works/
  date: '2014-02-26 10:44:29 +0000'
  date_gmt: '2014-02-26 17:44:29 +0000'
  content: |
    This Article was mentioned on <a href="http://inkdroid.org/journal/2014/02/26/oclc-works/" rel="nofollow">inkdroid.org</a>
- id: 86980
  author: FYN v FT$ - Future Wave Web Development Information
  author_email: ''
  author_url: http://futurewavewebdevelopment.com/wp/semantic-web/fyn-v-ft/
  date: '2014-06-18 00:27:49 +0000'
  date_gmt: '2014-06-18 07:27:49 +0000'
  content: |
    [&#8230;] references of interest. FYN is a specific  pattern of linked data. Ed Summers provided one of the  better overviews of the use of FYN in the context of linked data and the Web of Data. [2] See the  MusicBrainz blog [&#8230;]
---
<p><em>This is a draft of a column that's slated to be published some time in <a href="http://www.niso.org/standards/std_resources.html">Information Standards Quarterly</a>. <a href="http://www.bookism.org/open/">Jay</a> was kind enough to let me post it here in this form before it goes to press. It seems <a href="http://onebiglibrary.net/story/will-i-need-to-understand-the-semantic-web-in-2008">timely</a> to put it out there. Please feel free to leave comments to point out inaccuracies, errors, tips, suggestions, etc.</em></p>
<hr />
<p><a href="http://en.wikipedia.org/wiki/Image:WWWlogo.png"><img src="http://upload.wikimedia.org/wikipedia/commons/2/25/WWWlogo.png" style="float: left; border: none; margin-right: 10px;"/></a></p>
<p>It&#8217;s hard to imagine today that in 1991 the entire World Wide Web existed on a single server at CERN in Switzerland. By the end of that year the first web server outside of Europe was <a href="http://www.w3.org/History.html">set up</a> at Stanford. The <a href="http://ksi.cpsc.ucalgary.ca/archives/WWW-TALK/www-talk-1991.index.html">archives</a> of the www-talk discussion list bear witness to the grassroots community effort that grew the early web&#8211;one document and one server at a time.</p>
<p>Fast forward to 2007 when 24.7 billion web pages are <a href="http://www.worldwidewebsize.com/">estimated</a> to exist. The rapid and continued growth of the Web of Documents can partly be attributed to the elegant simplicity of the hypertext link enabled by two of Tim Berners-Lee's creations: the HyperText Markup Language (HTML) and the Uniform Resource Locator (URL). There is a similar movement afoot today to build a new kind of web using this same linking technology, the so called <a href="http://en.wikipedia.org/wiki/Linked_Data">Web of Data</a>.</p>
<p>The Web of Data has its beginnings in the vision of a Semantic Web <a href="http://www.sciam.com/article.cfm?articleID=00048144-10D2-1C70-84A9809EC588EF21">articulated</a> by Tim Berners-Lee in 2001. The basic idea of the Semantic Web is to enable intelligent machine agents by augmenting the web of HTML documents with a web of machine processable information. A recent follow up <a href="http://www.sciam.com/article.cfm?id=the-semantic-web-in-action">article</a> covers the "layer cake" of standards that have been created since, and how they are being successfully used today to enable data integration in research, government, and business. However the repositories of data associated with these success stories are largely found behind closed doors. As a result there is little large scale integration happening across organizational boundries on the World Wide Web.</p>
<p>The Web of Data represents a distillation and simplification of the Semantic Web vision. It de-emphasizes the automated reasoning aspects of Semantic Web research and focuses instead on the actual linking of data across organizational boundaries. To make things even simpler the linking mechanism relies on already deployed web technologies: the HyperText Transfer Protocol (HTTP), Uniform Resource Identifiers (URI), and Resource Description Framework (RDF).  Tim Berners-Lee has called this technique Linked Data, and <a href="http://www.w3.org/DesignIssues/LinkedData.html">summarized</a> it as a short set of guidelines for publishing data on the web:</p>
<ol>
<li>Use URIs as names for things.</li>
<li>Use HTTP URIs so that people can look up those things.</li>
<li>When someone looks up a URI, provide useful information.</li>
<li>Include links to other URIs, so that they can discover more things.</li>
</ol>
<p>
The <a href="http://esw.w3.org/topic/SweoIG/TaskForces/CommunityProjects/LinkingOpenData">Linking Open Data</a> community project of the <a href="http://www.w3.org/2001/sw/sweo/">W3C Semantic Web Education and Outreach Group</a> has published two additional documents <a href="http://web.archive.org/web/20100531061447/http://www.dfki.uni-kl.de:80/~sauermann/2006/11/cooluris/">Cool URIs for the Semantic Web</a> and <a href="http://sites.wiwiss.fu-berlin.de/suhl/bizer/pub/LinkedDataTutorial/">How to Publish Linked Data on the Web</a> that help IT professionals understand what it means to publish their assets as linked data.  The goal of the Linking Open Data Project is to</p>
<blockquote><p>
extend the Web with a data commons by publishing various open datasets as RDF on the Web and by setting RDF links between data items from different sources.
</p></blockquote>
<p>Central to the Linked Data concept is the publication of RDF on the World Wide Web. The essence of RDF is the "triple" which is a statement about a resource in three parts: a subject, predicate and object. The RDF triple provides a way of modeling statements about resources and it can have multiple serialization formats including XML and some more human readable formats such as <a href="http://www.w3.org/DesignIssues/Notation3">notation3</a>. For example to represent a statement that the website at http://niso.org has the title "NISO - National Information Standards Organization" one can create the following triple:</p>
<pre>
<code>
&lt;http://niso.org&gt; &lt;http://purl.org/dc/elements/1.1/title&gt; "NISO - National Information Standards Organization" .
</code>
</pre>
<p>
The subject is the URL for the website, the predicate is "has title" represented as a URI from the Dublin Core vocabulary, and the object is the literal "NISO - National Information Standards Organization". The Linked Data movement encourages the extensive interlinking of your data with other people's data: so for example by creating another triple such as:</p>
<pre>
<code>
&lt;http://niso.org&gt; &lt;http://purl.org/dc/elements/1.1/creator&gt; &lt;http://dbpedia.org/resource/National_Information_Standards_Organization&gt; .
</code>
</pre>
<p>
This indicates that the website was created by NISO which is identified using URI from the dbpedia (a Linked Data version of the Wikipedia). One of the benefits of linking data in this way is the "follow your nose" effect.  When a person in their browser or an automated agent runs across the creator in the above triple they are able to dereference the URL and retrieve  more information about this creator. For example when a software agent dereferences a URL for NISO</p>
<pre>
<code>
http://dbpedia.org/resource/National_Information_Standards_Organization
</code>
</pre>
<p>
24 additional RDF triples are returned including one like:</p>
<pre>
<code>
&lt;http://dbpedia.org/resource/National_Information_Standards_Organization&gt; &lt;http://www.w3.org/2004/02/skos/core#subject&gt; &lt;http://dbpedia.org/resource/Category:Standards_organizations&gt; .
</code>
</pre>
<p>
This triple says that NISO belongs to a class of resources that are standards organizations. A human or agent can follow their nose to the dbpedia URL for standards organizations:</p>
<pre>
<code>
http://dbpedia.org/resource/Category:Standards_organizations
</code>
</pre>
<p>
and retrieve 156 triples describing other standards organizations are returned such as:</p>
<pre>
<code>
&lt;http://dbpedia.org/resource/World_Wide_Web_Consortium&gt; &lt;http://www.w4.org/2004/02/skos/core#subject&gt; &lt;http://dbpedia.org/resource/Category:Standards_organizations&gt; .
</code>
</pre>
<p>
And so on. This ability for humans and automated crawlers to follow their noses in this way makes for a powerfully simple data discovery heuristic. The philosophy is quite different from other data discovery methods, such as the typical web2.0 APIs of Flickr, Amazon, YouTube, Facebook, Google, etc., which all differ in their implementation details and require you to digest their API documentation before you can do anything useful. Contrast this with the Web of Data which uses the ubiquitous technologies of URIs and HTTP plus the secret sauce of the RDF triple.</p>
<p>
As with the initial growth of the web over 10 years ago the creation of the Web of Data is happening at a grassroots level by individuals around the world. Much of the work takes place on an open <a href="http://simile.mit.edu/mailman/listinfo/linking-open-data">discussion list</a> at MIT where people share their experiences of making data sets available,  discuss technical problems/solutions, and announce the availability of resources. At this time some 27 different data sets have been published including Wikipedia, the US Census, the CIA World Fact Book, Geonames, MusicBrainz, WordNet, OpenCyc. The data and relationships between the data are by definition distributed around the web and harvestable by anyone by anyone with a web browser or HTTP client. Contrast this openness with the relationships that Google extracts from the Web of Documents and locks up on their own private network.</p>
<p>
Various services aggregate Linked Data and provide services on top of it such as <a href="http://dbpedia.org">dbpedia</a> which has an estimated 3 million RDF links, and over 2 billion RDF triples. It's quite possible that the emerging set of Linked Data will serve as a data test bed for intiatives like the <a href="http://web.archive.org/web/20090630042349/http://www.mindswap.org:80/blog/2007/12/05/announcing-the-open-web-billion-triple-challenge-iswc-08">Billion Triple Challenge</a> which aims to foster creative approaches to data mining and Semantic Web research by making large sets of real data available. In much the same way that Tim Berners-Lee could not have predicted the impact of Google's PageRank algorithm, or the improbable success of Wikipedia's collaborative editing while creating the Web of Documents, it may be that simply building links between data sets on the Web of Data will bootstrap a new class of technologies we cannot begin to imagine today.</p>
<p><a href="http://richard.cyganiak.de/2007/10/lod/lod-datasets_2007-11-10.png"><img src="http://richard.cyganiak.de/2007/10/lod/lod-datasets_2007-11-10.png" border="0" /></a></p>
<p>
So if you are in the business of making data available on the web and have a bit more time to spare, have a look at Tim Berners-Lee's <a href="http://www.w3.org/DesignIssues/LinkedData.html">Linked Data</a> document and familiarize yourself with the simple web publishing techniques behind the Web of Data: HTTP, URI and RDF. If you catch the Linked Data bug join the <a href="http://simile.mit.edu/mailman/listinfo/linking-open-data">discussion list</a> and the conversation, and try publishing some of your data as a pilot project using the tutorials. Who knows what might happen--you might just help build a new kind of web, and rest assured you'll definitely have some fun.</p>
<p>Thanks to <a href="http://f00die.com/">Jay Luker</a>, <a href="http://paulmiller.typepad.com/">Paul Miller</a>, <a href="http://dannyayers.com">Danny Ayers</a> and <a href="http://onebiglibrary.net">Dan Chudnov</a> for their contributions and suggestions.</p>
