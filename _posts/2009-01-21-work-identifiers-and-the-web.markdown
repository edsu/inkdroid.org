---
layout: post
status: publish
published: true
title: work identifiers and the web
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 626
wordpress_url: http://inkdroid.org/journal/?p=626
date: '2009-01-21 14:06:43 +0000'
date_gmt: '2009-01-21 21:06:43 +0000'
tags: []
comments:
- id: 80433
  author: Lorcan Dempsey
  author_email: dempseyl@oclc.org
  author_url: http://claimid.com/lisld
  date: '2009-01-21 15:43:24 +0000'
  date_gmt: '2009-01-21 22:43:24 +0000'
  content: I am interested that you do not include the Library of Congress or national
    libraries in your list of organizations ....
- id: 80436
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-01-21 19:12:37 +0000'
  date_gmt: '2009-01-22 02:12:37 +0000'
  content: "@lorcan you are absolutely right. It wasn't intentional. I work at LC
    so it's a bit of a blind spot for me. The lccn.loc.gov service actually does implement
    the linked-data-lite pattern outlined in this post. For example if you look at
    http://lccn.loc.gov/2002405946 you'll see  a variety of link elements pointing
    at other xml documents.\r\n\r\nOf course the lccn.loc.gov only provides access
    to traditional bibliographic records, aka manifestations...so they aren't the
    Works that you all have toiled so hard to create in your FRBRizations. "
- id: 80439
  author: Andy Powell
  author_email: andy.powell@eduserv.org.uk
  author_url: http://andypowe11.net/
  date: '2009-01-22 05:50:51 +0000'
  date_gmt: '2009-01-22 12:50:51 +0000'
  content: 'Re: "One thing I would suggest to them is that they may want to make the
    ISTC codes have a URI equivalent ".  I would go further... why create a new ITSC
    as a string of characters and then create a URI equivalent?  Why not simply mint
    new ITSCs directly as ''http'' URIs?'
- id: 80442
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-01-22 08:34:13 +0000'
  date_gmt: '2009-01-22 15:34:13 +0000'
  content: "@andypowe11 absolute agreement. It seems like that particular leap of
    faith is hard for some people ; and for them perhaps its better to say they can
    have their cake and eat it too? /me shrugs"
- id: 80447
  author: yann nicolas
  author_email: ''
  author_url: http://variable.pip.verisignlabs.com/
  date: '2009-01-22 13:14:01 +0000'
  date_gmt: '2009-01-22 20:14:01 +0000'
  content: "Just a doubt about what http://www.worldcat.org/oclc/24630204 actually
    refers to ?\r\nDoes it refer to the Work or one privileged manifestation among
    the manifestations of that work ?"
- id: 80468
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-01-23 06:43:30 +0000'
  date_gmt: '2009-01-23 13:43:30 +0000'
  content: "@yann yes, a good amount of skepticism here is definitely warranted. I
    think calling the resource at that URI a Work (FRBR) may be wrong. I was told
    the same thing by Jonathan Rochkind in #code4lib. The links out to various editions
    is what made me think perhaps it was a Work, or perhaps an Expression. Perhaps
    <a href=\"http://www.worldcat.org/oclc/24630204/editions\" rel=\"nofollow\">http://www.worldcat.org/oclc/24630204/editions</a>
    works better? Maybe the story with LibraryThing is clearer? \r\n\r\nI guess my
    point is that the library community could be attempting to treat web applications,
    and the resources within them, as instances of the vocabularies we aspire to use.
    Lets use the web as a medium for using our descriptive languages like FRBR, RDA,
    etc. When we create a web applications (OPACS, etc), what are the resources in
    it that we are making available? \r\n\r\nPerhaps I'm just saying what some people
    have been saying for years in forums like <a href=\"http://dir.gmane.org/gmane.culture.libraries.ngc4lib\"
    rel=\"nofollow\">ngc4lib</a>. But I feel like the <a href=\"http://en.wikipedia.org/wiki/Representational_State_Transfer\"
    rel=\"nofollow\">REST</a> architectural style and notions of <a href=\"http://linkeddata.org\"
    rel=\"nofollow\">linked data</a> can help the library community grapple what it
    means to distribute its cataloging data on the web."
- id: 80548
  author: dchud
  author_email: dchud@umich.edu
  author_url: http://onebiglibrary.net/
  date: '2009-01-25 15:05:04 +0000'
  date_gmt: '2009-01-25 22:05:04 +0000'
  content: "I really agree with this that you said, Ed: \"treat web applications,
    and the resources within them, as instances of the vocabularies we aspire to use.\"\r\n\r\nJust
    some quick nits, not to distract from your main point, though:  COinS isn't a
    protocol (OpenURL is), and unAPI isn't optimized for anything in particular.\r\n\r\nIn
    any case, the only main gap I see with using the link header for more is how much
    leverage it provides to be specific about relationships between distinct URIs.
    @type is limited to MIME, and @rel/@rev are limited to the dozen or so specified
    in HTML, unless you get into defining profiles.  And I can't say I've much experience
    with profiles, and I don't know if many other people do.\r\n\r\nWith unAPI we
    just left the format[@name] open to address this issue, to allow more human-readable
    specificity next to the @type value.  It'd be a stretch to say there has been
    enough unAPI usage to draw any useful conclusions about how the @name values tend
    to be used, though.\r\n\r\nSo that's one of the biggest open questions for me,
    but I'd like to help work on an answer."
- id: 80549
  author: dchud
  author_email: dchud@umich.edu
  author_url: http://onebiglibrary.net/
  date: '2009-01-25 15:11:06 +0000'
  date_gmt: '2009-01-25 22:11:06 +0000'
  content: "Hmm, just a quick extra thought about that last comment... in the interest
    of \"using what's already there\", we could come up with a convention for using
    the link[@rel=\"contents\"] att/value pair to point to a human-readable HTML contents
    page which doubles as a \"resource map\"... with its own link[@rel=\"alternate\",
    @type=\"application/xml+ore\"] or whatever behind it.\r\n\r\nI wonder if anybody
    is already doing this?"
- id: 80594
  author: hvdsomp
  author_email: hvdsomp@yahoo.com
  author_url: ''
  date: '2009-01-26 15:43:28 +0000'
  date_gmt: '2009-01-26 22:43:28 +0000'
  content: "With my team here in Los Alamos, I have done something that comes very
    close to what Ed describes in an ORE experiment. If I remember correctly, I presented
    the experiment at the ORE Open Meeting at John Hopkins University, March 2008.
    A QuickTime recording of the experiment is at http://public.lanl.gov/herbertv/images/cite_no_manager.mov
    . I am afraid this movie (90 Mb) has no voice over, and the experiment is a tad
    more elaborate than what Ed describes. Actually what Ed describes is, in this
    experiment, an enabler for a Web-based scholarly authoring tool that automatically
    inserts references to cited articles as follows:\r\n\r\n1. The author links some
    text of his new article to (the HTTP URI of) the splash page of a to-be-cited
    article\r\n2. The to-be-cited article splash page has the HTML LINK mechanism
    suggested by Ed that points at an ORE Resource Map for the article. One of the
    aggregated resources in the Resource Map is a bibliographic record, appropriately
    typed so that it can be recognized as being a biblio record.\r\n3. Once the author
    is confident with the text, the Save button is clicked and a background process
    goes out to all links in the authors' text in search of biblio info, i.e. in search
    of HTML LINKs that point at ReMs that contain biblio info. That's the crawling
    biblio info part in Ed's post.\r\n4. If biblio info is found, it is inserted in
    the reference list and tada ...\r\n\r\nBasically, this experiment is about using
    the Web as the database for collecting article citations on a per need basis,
    instead of using a desktop tool with a local database.\r\n\r\nAnyhow, the experiment
    was done in the days that an ORE Resource Map was still expressed as an Atom Feed.
    In ORE 1.0, a Resource Map is expressed as an entry, and the HTML LINK element
    that one would use now to point at such an entry is:\r\n\r\n<pre lang=\"html\">\r\n<link
    href=\"http://example.net/hw.atom\"\r\n         type=\"application/atom+xml;type=entry\"
    \r\n         rel=\"resourcemap\" />\r\n</pre>\r\n\r\n(see http://www.openarchives.org/ore/1.0/discovery#HTMLLinkElement)\r\n\r\nThat
    is, of course, if one were to use ORE to achieve this all, as I did in the experiment."
---

<p>Michael Smethurst's <a href="http://www.bbc.co.uk/blogs/radiolabs/2009/01/in_search_of_cultural_identifi.shtml">In Search of Cultural Identifiers</a> post over at the BBC Radio Labs got me thinking about web identifiers for works, about LibraryThing and OCLC as linked library data providers, and finally about the <a href="http://www.istc-international.org">International Standard Text Code</a>. Admittedly it's kind of a hodge-podge of topics, and I'm going to taking some liberties with what 'linked data' and 'works' mean, so bear with me.</p>
<p>Both <a href="http://worldcat.org">OCLC Worldcat</a> and <a href="http://librarything.com">LibraryThing</a> mint URIs for bibliographic works, like these for Wide Sargasso Sea:</p>
<ul>
<li><a href="http://www.librarything.com/work/27239">http://www.librarything.com/work/27239</a></li>
<li><a href="http://www.worldcat.org/oclc/24630204">http://www.worldcat.org/oclc/24630204</a>
</li>
</ul>
<p>So the library community really <em>does</em> have web identifiers for works--or more precisely web identifiers for human readable <em>records</em> about works. What's missing (IMHO) is the ability to use that identifier to get back something meaningful for a machine. Tools like <a href="http://zotero.org">Zotero</a> need to scrape the screen to pull out the data points of interest to citation management. Sure, if you want you can implement <a href="http://ocoins.info">COinS</a> or <a href="http://unapi.info">unAPI</a> to allow the metadata to be extracted, but could there be a more web-friendly way of doing this?</p>
<p>Consider how blog syndication works on the web. You visit a blog (like this one) and your browser is able to magically figure out the location of an RSS or Atom feed for the blog, and give you an option to subscribe to it.</p>
<p><img src="http://inkdroid.org/images/inkdroid-screenshot.png" width="450" /></p>
<p> Well it's not really magic it's just a bit of markup in the HTML:</p>
<pre lang="xml">
<link rel="alternate" 
         type="application/rss+xml" 
         title="inkdroid RSS Feed" 
         href="http://inkdroid.org/journal/feed/" />
</pre>
<p>Simple right? </p>
<p>Now back to work identifiers.  Consider that both Worldcat and LibraryThing have <a href=http://www.oclc.org/productworks/worldcatapi.htm">web2.0</a> <a href="http://www.librarything.com/services/rest/documentation/1.0/">apis</a> for retrieving machine readable data for a work:</p>
<pre>
http://www.librarything.com/services/rest/1.0/?method=librarything.ck.getwork&id={work_id}&apikey={your_key}
</pre>
<p>or:</p>
<pre>
http://www.worldcat.org/webservices/catalog/content/{oclc_number}?wskey={key}
</pre>
<p>What if the web pages for these resources at OCLC and LibraryThing linked directly to these machine readable versions? For example if the page for <a href="http://www.librarything.com/work/27239">Wide Sargasso Sea</a> at LibraryThing contained this in its &lt;head&gt; element:</p>
<pre lang="html">
<link rel="alternate" 
         type="application/xml" 
         title="XML for Wide Sargasso Sea" 
         href="http://www.librarything.com/services/rest/1.0/?method=librarything.ck.getwork&id=27239&apikey=d231aa37c9b4f5d304a60a3d0ad1dad4" />
</pre>
<p>This would allow browsers, plugin tools like Zotero and web crawlers to follow the natural grain of the web and discover the machine readable representation. Admittedly this is something that <a href="http://ocoins.info">COinS</a> and <a href="http://unapi.info">unapi</a> are designed to do. But the COinS and unAPI protocols are really optimized for making citation data, and non web identifiers available and routable via a resolver of some kind. Maybe I'm just over reaching a bit, but this approach of using the &lt;link&gt; header seems to embrace the notion that there are resources within the Worldcat and Librarything websites, and there can be alternate representations of those resources that can be discovered in a <a href="http://roy.gbiv.com/untangled/2008/rest-apis-must-be-hypertext-driven">hypertext-driven</a> way.</p>
<p>Of course there is the issue of the API key. In the example above I used the demo key in LibraryThing's docs. More important in the context of web identifiers for works is the need to distinguish between the identifier for the record, and the identifier for the concept of the work, which is most elegantly solved (IMHO) by following a pattern from the <a href="http://www.w3.org/TR/cooluris/">Cool URIs for the Semantic Web</a> doc. But I think it's important that people realize that it's not necessary to jump headlong into RDF to start leveraging some of the principles behind the <a href="http://www.w3.org/TR/webarch/">Architecture of the World Wide Web</a>. Henry Thompson has a nice web-centric discussion of this issue in his <a href="http://www.ltg.ed.ac.uk/~ht/WhatAreURIs/">What's a URI and Why Does it Matter?</a></p>
<p>While writing this blog post I noticed a thread over on <a href="http://thread.gmane.org/gmane.education.libraries.autocat/18832">Autocat</a> that Bowker has been named the US Registrar for the <a href="http://www.istc-international.org/index.php?ci_id=1828.">International Standard Text Code</a>. The gist is that the ISTC will be a "global identification system for textual works", and that registrars (like Bowker) will mint identifiers for works, such as:</p>
<blockquote><p>
  ISTC 0A9 2002 12B4A105 7
</p></blockquote>
<p>Where the <a href="http://www.istc-international.org/index.php?ci_id=1817#structure">structure</a> of the identifier is roughly:</p>
<blockquote><p>
ISTC {registration agency} {year element} {work element} {check digit}
</p></blockquote>
<p>It's interesting that the meat of the ISTC is the <em>work element</em> that is:</p>
<blockquote><p>
... assigned automatically by the central ISTC registration system after a metadata record has been submitted for registration and the system has verified that the record is unique;
</p></blockquote>
<p>The metadata record in question is actually a chunk of ONIX, which presumably Bowker will send to the ISTC central registrar, and get back a work id.</p>
<p>This work that the ISTC is taking on is really important--and one would imagine quite costly. One thing I would suggest to them is that they may want to make the ISTC codes have a URI equivalent like:</p>
<blockquote><p>
  http://istc-international/0A9/2002/12B4A1057
</p></blockquote>
<p>They also should encourage Bowker and other registrars to publish their work identifiers on the web:</p>
<blockquote><p>
  http://bowker.com/istc/0A9/2002/12B4A1057
</p></blockquote>
<p>It seems to me that we might (in the long term) be better served by a system that embraces the distributed nature of the web. A web in which organizations like Bowker, ISTC, OCLC, LibraryThing, Library of Congress and national libraries publish their work identifiers using URIs,  and return meaningful metadata for them. Rather than waiting for other people to solve our problems, why don't we start solving them ourselves bottom-up instead of waiting for someone else to solve it top-down? </p>
<p>Anyhow I feel like I'm kind of being messy in suggesting this linked-data-lite idea. Is it heresy? My alibi/excuse is that I've been sitting in the same room as <a href="http://onebiglibrary.net/story/caching-and-proxying-linked-data">dchud</a> for extended periods of time.</p>
