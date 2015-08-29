---
layout: post
status: publish
published: true
title: a middle way for linked data at the bbc
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 1701
wordpress_url: http://inkdroid.org/journal/?p=1701
date: '2010-03-02 13:13:00 +0000'
date_gmt: '2010-03-02 20:13:00 +0000'
tags:
- rdf
- web
- bbc
- linked data
- semantic web
- radio
- television
- dbpedia
- uberblic
comments:
- id: 82000
  author: Apis and APIS a wildlife ontology &laquo; Derivadow.com
  author_email: ''
  author_url: http://derivadow.com/2010/03/02/apis-and-apis-a-wildlife-ontology/
  date: '2010-03-02 15:36:04 +0000'
  date_gmt: '2010-03-02 22:36:04 +0000'
  content: "[...] Finder &#8211; how we&#8217;re starting to publish and consume data
    on the web. Ed Summers has a great write up of what we&#8217;re doing I&#8217;ve
    also published my slides [...]"
- id: 86682
  author: 'A Symbiotic Relationship: Information Architecture and the Semantic Web
    | ANTELOPE AS DOCUMENT'
  author_email: ''
  author_url: http://antelopeasdocument.wordpress.com/2013/12/02/a-symbiotic-relationship-information-architecture-and-the-semantic-web/
  date: '2013-12-02 12:55:35 +0000'
  date_gmt: '2013-12-02 19:55:35 +0000'
  content: |
    [&#8230;] Summers, E. (04/02/10). a middle way for linked data at the bbc. Inkdroid. Retrieved December 1, 2013, from http://inkdroid.org/journal/2010/03/02/a-middle-way-for-linked-data-at-the-bbc/ [&#8230;]
---
<p>I got the chance to attend the <a href="http://www.meetup.com/Web-Of-Data/calendar/12317420/">2nd London Linked Data Meetup</a> that was co-located with  <a href="http://dev8d.org">dev8d</a> last week, which turned out to be a whole lot of fun. I figured if I waited long enough other people would save me from having to write a good summary/discussion of the event...and they have: thanks <a href="http://efoundations.typepad.com/efoundations/2010/02/the-2nd-linked-data-london-meetup-trying-to-bridge-a-gap.html">Pete Johnston</a>, <a href="http://bens.me.uk/2010/london-linked-data-meetup">Ben Summers</a>, <a href="http://blogs.cetis.ac.uk/sheilamacneill/2010/02/26/2nd-linked-data-meetup-london/">Sheila Macneill</a>, <a href="http://www.currybet.net/cbet_blog/2010/03/linked_data_human_readable_uris.php">Martin Belam</a> and <a href="http://www.frankieroberto.com/weblog/1621">Frankie Roberto</a>.</p>
<p><img src="http://inkdroid.org/images/bbc.png" style="margin-right: 10px; margin-bottom: 5px; float: left;"/> The main thing that I took away is how much good work the <a href="http://bbc.com">BBC</a> is doing in this space. Given the recent news of <a href="http://www.nytimes.com/2010/03/03/business/media/03bbc.html">cuts</a> at the BBC, it seems like a good time to say publicly how important some of the work they are doing is to the web technology sector. As part of the Meetup <a href="http://derivadow.com/">Tom Scott</a> gave a  <a href="http://www.slideshare.net/derivadow/apis-and-apis-a-wildlife-ontology">presentation</a> on how the BBC are using Linked Data to integrate distinct web properties in the BBC enterprise, like their <a href="http://www.bbc.co.uk/programmes">Programmes</a> and the <a href="http://www.bbc.co.uk/wildlifefinder/">Wildlife Finder</a> web sites.</p>
<p>The basic idea is that they categorize (dare I say catalog?) <a href="http://www.bbc.co.uk/programmes">television and radio content</a> using wikipedia/dbpedia as a <a href="http://en.wikipedia.org/wiki/Controlled_vocabulary">controlled vocabulary</a>. Just doing this relatively simple thing means that they can create another site like the <a href="http://www.bbc.co.uk/wildlifefinder/">Wildlife Finder</a> that provides a topical guide to the natural world (and also happens to use wikipedia/dbpedia as a controlled vocabulary), that then links to their audio and video content. Since the two sites share a common topic vocabulary, they are able to automatically create links from the topic guides to all the radio and television content that are on a particular topic.</p>
<p>For a practical example take a look consider this page for the <a href="http://www.bbc.co.uk/nature/species/Pinus_longaeva">Great Basin Bristlecone Pine</a>:</p>
<p><a href="http://www.bbc.co.uk/nature/species/Pinus_longaeva"><img src="http://inkdroid.org/images/bristlecone.png" style="border: none; width: 80%;" /></a></p>
<p>If you scroll down on the page you'll see a link to a <a href="http://www.bbc.co.uk/programmes/p005fs5p">video clip</a> from David Attenborough's documentary <a href="http://www.bbc.co.uk/programmes/b00lbpcy">Life</a> on the Programmes portion of the website. Now take a step back and consider how these are two separate applications in the BBC enterprise that are able to build a rich network of links between each other. It's the shared controlled vocabulary (in this case dbpedia derived from wikipedia) which allows them to do this.</p>
<p>If you take a peak in the html you'll see the resource has an alternate RDF version:</p>
<pre>
&lt;link rel="alternate" type="application/rdf+xml" href="<a href="http://www.bbc.co.uk/nature/species/Pinus_longaeva.rdf">/nature/species/Pinus_longaeva.rdf</a>" /&gt;
</pre>
<p>The Resource Description Framework (RDF) is really just the best data model we have for describing stuff that's on the Web, and the type of links between resources that are on (and off) the Web. Personally, I prefer to look at RDF as <a href="http://www.w3.org/TeamSubmission/turtle/">Turtle</a> which is pretty easily done with <a href="http://www.dajobe.org/">Dave Beckett</a>'s handy <a href="http://librdf.org/raptor/rapper.html">rapper</a> utility (<code>aptitude install raptor-utils</code> if you are following from home).</p>
<pre>
rapper -o turtle http://www.bbc.co.uk/nature/species/Pinus_longaeva
</pre>
<p>The key bits of the RDF are the description of the Great Basin bristlecone pine:</p>
<pre> 
&lt;http://www.bbc.co.uk/nature/species/Pinus_longaeva&gt;
    rdfs:seeAlso &lt;http://www.bbc.co.uk/nature/species&gt; ;
    foaf:primaryTopic &lt;http://www.bbc.co.uk/nature/species/Pinus_longaeva#species&gt; .

&lt;http://www.bbc.co.uk/nature/species/Pinus_longaeva#species&gt;
    dc:description "Great Basin bristlecone pines are restricted to the mountain ranges of California, Nevada and Utah and have a remarkable ability to survive in this extremely harsh and challenging environment. They grow extremely slowly, and are some of the oldest living organisms in the world. With some aged at almost 5,000 years these amazing trees can reveal information about Earth's climate variations. Amazingly, the leaves, or needles, can remain green for over 45 years." ;
    wo:class &lt;http://www.bbc.co.uk/nature/class/Pinopsida#class&gt; ;
    wo:family &lt;http://www.bbc.co.uk/nature/family/Pinaceae#family&gt; ;
    wo:genus &lt;http://www.bbc.co.uk/nature/genus/Pinus#genus&gt; ;
    wo:growsIn &lt;http://www.bbc.co.uk/nature/habitats/Mountain#habitat&gt;, &lt;http://www.bbc.co.uk/nature/habitats/Temperate_coniferous_forest#habitat&gt; ;
    wo:kingdom &lt;http://www.bbc.co.uk/nature/kingdom/Plant#kingdom&gt; ;
    wo:name &lt;http://www.bbc.co.uk/nature/species/Pinus_longaeva#name&gt; ;
    wo:order &lt;http://www.bbc.co.uk/nature/order/Pinales#order&gt; ;
    wo:phylum &lt;http://www.bbc.co.uk/nature/phylum/Pinophyta#phylum&gt; ;
    a wo:Species ;
    rdfs:label "Great Basin bristlecone pine" ;
    <span style="color: red">owl:sameAs &lt;http://dbpedia.org/resource/Pinus_longaeva&gt; ;</span>
    foaf:depiction &lt;http://open.live.bbc.co.uk/dynamic_images/naturelibrary_640_credits/downloads.bbc.co.uk/earth/naturelibrary/assets/p/pi/pinus_longaeva/pinus_longaeva_1.jpg&gt; .
</pre>
<p>And then the description of the clip that is related to the topic of Great Basin bristlecone pine:</p>
<pre>
&lt;http://www.bbc.co.uk/programmes/p005fs5p#programme&gt;
    dc:title "Ancient bristlecones" ;
    po:subject &lt;http://www.bbc.co.uk/nature/species/Pinus_longaeva#species&gt; ;
    a po:Clip .
</pre>
<p>And we can follow our nose and fetch a description of the  <a href="http://www.bbc.co.uk/programmes/p005fs5p">Ancient bristelcones clip</a>:</p>
<pre>
rapper -o turtle http://www.bbc.co.uk/programmes/p005fs5p
</pre>
<p>Which tells us lots of stuff, like that it's a documentary part of the science and nature genre, gives us a synopsis, and even links the clip to the episode and series it is a part of:</p>
<pre>
&lt;http://www.bbc.co.uk/programmes/p005fs5p#programme&gt;
    dc:title "Ancient bristlecones" ;
    po:format &lt;http://www.bbc.co.uk/programmes/formats/documentaries#format&gt; ;
    po:genre &lt;http://www.bbc.co.uk/programmes/genres/factual/scienceandnature#genre&gt;, &lt;http://www.bbc.co.uk/programmes/genres/factual/scienceandnature/natureandenvironment#genre&gt; ;
    po:long_synopsis """Bristlecone pines live at the limit of life, above 3,000m in the mountains of  western America. Almost continuous freezing temperatures and savage winds make life so tough, that these bristlecones only grow for six weeks of the year.

Everything is about conserving energy.They hardly ever shed their needles which can last more than 30 years. After centuries of being blasted by storms a full grown tree still survives with only a strip of bark a few inches wide.

These trees live life at such a slow pace they can reach a great age. Some are over 5,000 years old. It has been said of the bristlecones that to live here is to take a very long time to die.""" ;
    po:medium_synopsis "Living above 3,000 metres, North America's bristlecones cope with freezing temperatures and battering winds by only growing for six weeks of the year. But seeing as they may live for more than 5,000 years, that's still a fair bit of growing in a single lifetime. Slowly but surely does it..." ;
    po:short_synopsis "The world's oldest trees have survived 5,000 years of harsh conditions." ;
    po:version &lt;http://www.bbc.co.uk/programmes/p005fs5r#programme&gt; ;
    a po:Clip .

&lt;http://www.bbc.co.uk/programmes/b00lbpcy#programme&gt;
    po:clip &lt;http://www.bbc.co.uk/programmes/p005fs5p#programme&gt; ;
    a po:Series .

&lt;http://www.bbc.co.uk/programmes/b00p90d6#programme&gt;
    po:clip &lt;http://www.bbc.co.uk/programmes/p005fs5p#programme&gt; ;
    a po:Episode .
</pre>
<p>Conspicuously missing from this description is something like:</p>
<pre>
&lt;http://www.bbc.co.uk/programmes/p005fs5p#programme&gt;
    dcterms:subject &lt;http://dbpedia.org/resource/Pinus_longaeva&gt; .
</pre>
<p>But presumably it's hiding underneath the covers in the Programmes database, and that's what lets them link stuff up?</p>
<p><img src="http://web.archive.org/web/20110130081539/http://uberblic.com/images/logo.png" style="float: right; margin-left: 10px" /> Also very interesting was <a href="http://blog.georgikobilarov.com/">Georgi Kobilarov</a>'s description of <a href="http://uberblic.org/2010/01/uberblic-release/">Uberblic</a>.  Since Georgi helped create <a href="http://dbpedia.org">dbpedia</a> and is now consulting with the BBC, it seems like uberblic is positioning itself to provide a platform for the BBC to have it's own local cache of the world of Linked Data. Having a local curated view of the world of linked data is something <a href="http://onebiglibrary.net">Dan Chudnov</a> identified as a real need at the <a href="http://wiki.code4lib.org/index.php/LinkedData">first Linked Data workshop at code4lib 2009</a> for <a href="http://onebiglibrary.net/story/code4lib-2009-talk-on-caching-and-proxying-linked-data">caching and proxying linked data</a>...so it is really cool to see solutions starting to appear in this space...and for them to be adopted by institutions like the BBC.</p>
<p>Georgi demo'd how an edit on wikipedia would be immediately reflected in the structured data available from uberblic. It was a real time update, and extremely impressive. It <a href="http://twitter.com/gkob/status/9734074624">looks like</a> part of the uberblic strategy is to crawl BBC's web site and other pockets of Linked Data to enable the sort of linking across web properties that Tom described. I'd also surmise given the realtime nature of this that Georgi is bypassing dbpedia dumps and using the Wikipedia <a href="http://en.wikipedia.org/w/index.php?title=Special:RecentChanges&feed=atom">changes atom feed</a> in conjunction with <a href="http://dbpedia.svn.sourceforge.net/viewvc/dbpedia/extraction/extractors/">extractors</a> that were built as part of the dbpedia project. But I'd love to know more of the mechanics of the update. It also would be interesting to know if uberblic has a notion of versions.</p>
<p>The really powerful message that the BBC is helping promote is this idea that good websites are APIs. Tom mentioned <a href="http://blog.whatfettle.com/">Paul Downey's</a> notion that <a href="http://blog.whatfettle.com/2007/01/11/good-web-apis-are-just-web-sites/">Web APIs Are Just Web Sites</a>. It's a subtle but extremely important point that I learned primarily working closely with <a href="http://eikeon.com">Dan Krech</a> for a year or so. It's an unfortunate side effect of lots market driven talk about web2.0, web3.0 and Linked Data in general that this simple REST message gets lost.  We took it seriously in the design of the <a href="http://chroniclingamerica.loc.gov/about/api/">"API"</a> at the Library of Congress' <a href="http://chroniclingamerica.loc.gov/">Chronicling America</a>. It's also something I tried to talk about later in the week at dev8d when I had to quickly put a presentation together:</p>
<p><iframe src="http://docs.google.com/present/embed?id=dv89m3d_374cpqzfnc9" frameborder="0" width="410" height="342"></iframe></p>
<p>The slides probably won't make much sense on their own, but the basic message was that we often hear about Linked Data in terms of pushing all your data to some triple store so you can start querying it with <a href="http://code.google.com/p/linked-data-api/wiki/Specification">SPARQL</a> and doing inferencing, and suddenly you're going to be sitting pretty, totally jacked up on the Semantic Web.</p>
<p>If you are like me, you've already got databases where things are modeled, and you've created little web apps that have extracted information from the databases and put them on the web as HTML docs for people around the world to read (queue some mid 1990s grunge music). Expecting people to chuck away the applications and technology stacks they have simply to say they do Linked Data is wishful thinking. What's missing is a simple migration strategy that would allow web publishers to easily recognize the value in publishing the contents of their database as Linked Data, and how it complements the HTML (and XML, JSON) publishing they are currently doing. My advice to folks at dev8d boiled down to:</p>
<ul>
<li>Keep modelling your stuff how you like</li>
<li>Identify your stuff with Cool URIs in your webapps</li>
<li>Link your stuff together in HTML</li>
<li>Link to machine friendly formats (RSS, Atom, JSON, etc)</li>
<li>Use RDF to make your database available on the web using vocabularies other people understand.</li>
<li>Start thinking about technologies like SPARQL that will let you query pools and aggregated views of your data.</li>
<li>Consider joining the <a href="http://lists.w3.org/Archives/Public/public-lod/">public-lod discussion list and joining the conversation.</a></li>
</ul>
<p>I got some nice comments afterwards from <a href="http://www.ninebynine.org/">Graham Klyne</a>,  <a href="http://users.ecs.soton.ac.uk/hg/">Hugh Glaser</a>, <a href="http://blogs.ukoln.ac.uk/adrianstevenson/">Adrian Stevenson</a> and <a href="http://vphill.com/">Mark Phillips</a> so I felt pretty happy...granted most of the hard line Linked Data folks had already left a couple days earlier.</p>
<p>So some really exciting stuff is going on at the BBC. They are using Linked Data in a practical way that benefits their enterprise in real ways. I'm crossing my fingers and hoping that the value of what is going on here is recognized, and the various cuts that are going on won't affect any of the fine work they are doing on improving the Web.</p>
<p>For more information check out the <a href="http://www.w3.org/2001/sw/sweo/public/UseCases/BBC/">Semantic Web Case Study</a> they folks at the BBC wrote summarizing their approach for the W3C.</p>
