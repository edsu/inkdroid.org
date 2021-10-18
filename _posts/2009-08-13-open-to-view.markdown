---
layout: post
status: publish
published: true
title: open to view
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 1103
wordpress_url: http://inkdroid.org/journal/?p=1103
date: '2009-08-13 08:54:41 +0000'
date_gmt: '2009-08-13 15:54:41 +0000'
tags:
- semweb
- web
- atom
- rest
- linked-data
- books
- hathitrust
- opensearch
comments:
- id: 81538
  author: dchud
  author_email: dchud@umich.edu
  author_url: http://onebiglibrary.net/
  date: '2009-08-13 14:37:46 +0000'
  date_gmt: '2009-08-13 21:37:46 +0000'
  content: I'm sure my employers at InfoToday would prefer me to point out that I'm
    writing for Computers in Libraries, not that other rag. :)  -Dan
- id: 81539
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-08-13 16:49:51 +0000'
  date_gmt: '2009-08-13 23:49:51 +0000'
  content: d'oh -- thanks dan :-)
- id: 81540
  author: Paul Miller
  author_email: paul.miller@cloudofdata.com
  author_url: http://paulmiller.myopenid.com/
  date: '2009-08-14 02:54:19 +0000'
  date_gmt: '2009-08-14 09:54:19 +0000'
  content: "\"I had always hoped (and continue to hope) that the Linked Data effort
    is bigger than a particular brand, or reformulation of the semantic web effort
    … for me it’s a pattern for building a better web.\"\r\n\r\nI would, of course,
    have to agree. I am convinced that RDF is almost certainly the 'best' way to do
    this... but it is definitely not the 'only' way. To suggest otherwise is unnecessary,
    unwise, and - ultimately - unhelpful."
- id: 81541
  author: bibwild.wordpress.com/
  author_email: ''
  author_url: http://bibwild.wordpress.com/
  date: '2009-08-18 13:21:03 +0000'
  date_gmt: '2009-08-18 20:21:03 +0000'
  content: "It's definitely a 'better web app', but it's better in a particular way
    it may be useful to be descriptive of. Better in that the data and services are
    more easily automatically discoverable by a machine, as they are exposed in a
    standard(ish) way.  \r\n\r\nAccessible Data?  An Exposed Web App?  A web app which
    exposes it's data in standard ways?\r\n\r\nI am not neccesarily myself convinced
    that RDF is always the 'best' way to do this -- at least not within a certain
    real world project where benefits and costs have to be balanced within externally
    set limits. But actually, I'm not even convinced that RDF is always the easiest
    for consumers to deal with either. Although I guess in an ideal world, we'd always
    have RDF _plus_ something else that might be easier for a consumer in a given
    context -- because I think RDF is an experiment well worth engaging in, although
    I'm less convinced of the ultimate success of this experiment than some Linked
    Data boosters.  But, back in the real world...  we don't always have the resources
    to do things ideally. The important thing to me is exposing your data, not how
    you do it.  Exposed Data?"
- id: 81542
  author: bibwild.wordpress.com/
  author_email: ''
  author_url: http://bibwild.wordpress.com/
  date: '2009-08-18 13:23:40 +0000'
  date_gmt: '2009-08-18 20:23:40 +0000'
  content: Exhibitionist Data? heh.
- id: 81696
  author: inkdroid &rsaquo; data.gov.uk and rdfa
  author_email: ''
  author_url: http://inkdroid.org/journal/2010/01/26/data-gov-uk-and-rdfa/
  date: '2010-01-26 18:53:14 +0000'
  date_gmt: '2010-01-27 01:53:14 +0000'
  content: "[...] comforting about being able to crawl the open web to find the information
    that&#8217;s there in open to view.   This was written by ed. Posted on Tuesday,
    January 26, 2010, at 3:41 pm. Filed under publishing, [...]"
- id: 85388
  author: links for 2009-08-23 &laquo; Internet Alchemy
  author_email: ''
  author_url: http://blog.iandavis.com/2009/08/23/links-for-2009-08-23/
  date: '2012-05-08 11:58:24 +0000'
  date_gmt: '2012-05-08 18:58:24 +0000'
  content: "[...] inkdroid &raquo; Blog Archive &raquo; open to view (tags: linkeddata
    apis hathitrust) [...]"
---

<p>I spent an hour checking out the <a href="http://www.hathitrust.org/data_api">HathiTrust API docs</a> this morning; mainly to see what the similarities and differences are with the as-of-yet undocumented API for <a href="http://chroniclingamerica.loc.gov">Chronicling America</a>. There are quite a few similarities in the general RESTful approach, and the use of Atom, METS and PREMIS in the metadata that is made available. </p>
<p>Everyone's a critic right? Nevertheless, I'm just going to jot down a few thoughts about the API, mainly for my friend over in <a href="irc://chat.freenode.net/code4lib">#code4lib</a> <a href="http://billdueber.com/">Bill Dueber</a> who works on the project. Let me just say at the outset that I think it's awesome that HathiTrust are providing this API, especially given some of the licensing constraints around some of the content. The API is a good example of putting library data on the web using both general and special purpose standards. But there are a few minor things that could be tweaked I think, to make the API fit into the web and the repository space a bit better.</p>
<p>it would be nice if the <a href="http://opensearch.org">OpenSearch</a> description document referenced in the <a href="http://catalog.hathitrust.org">HTML</a> at </p>
<blockquote><p>
<a href="http://catalog.hathitrust.org/Search/OpenSearch?method=describe ">http://catalog.hathitrust.org/Search/OpenSearch?method=describe</a>
</p></blockquote>
<p>worked. It should be pretty easy and non-invasive to add a basic description file for the HTML response since the search is already GET driven. Ideally it would be nice to see the responses also available as Atom and/or JSON with <a href="http://tools.ietf.org/html/rfc5005">Atom Feed Paging</a>. </p>
<p>Another thing that would be nice to see is the API being merged more into the human usable webapp. The best way to explain this is with an example. Consider the HTML page for this 1914 edition of Walt Whitman's <a href="http://catalog.hathitrust.org/Record/00020629">Leaves of Grass</a>, available with this clean URI:</p>
<blockquote><p>
<a href="http://catalog.hathitrust.org/Record/000206297">http://catalog.hathitrust.org/Record/000206297</a>
</p></blockquote>
<p>Now, you can get a <a href="http://services.hathitrust.org/api/htd/meta/mdp.39015056032132">few</a> <a href="http://services.hathitrust.org/api/htd/structure/mdp.39015056032132">flavors</a> of metadata for this book, and an aggregated <a href="https://services.hathitrust.org/api/htd/aggregate/mdp.39015056032132">zip file</a> of all the page images and OCR if you are a HathiTrust member. Why not make these alternate representations discoverable right from the item display? It could be as simple as adding some &lt;link&gt; elements to the HTML, that use the link relations they've already established for their Atom:</p>
<pre lang="html">
<head>
<link rel="http://schemas.hathitrust.org/htd/2009#meta" 
    type="application/atom+xml" 
    href="http://services.hathitrust.org/api/htd/meta/mdp.39015056032132" />
<link rel="http://schemas.hathitrust.org/htd/2009#structure " 
    type="application/atom+xml" 
    href="http://services.hathitrust.org/api/htd/structure/mdp.39015056032132" />
<link rel="http://schemas.hathitrust.org/htd/2009#aggregate" 
    type="application/zip" 
    href="https://services.hathitrust.org/api/htd/aggregate/mdp.39015056032132" />
</head>
</pre>
<p>If you wanted to get fancy you could also put human readable links into the &lt;body&gt; and annotate them w/ <a href="http://www.w3.org/TR/xhtml-rdfa-primer/">RDFa</a>. But this would just be icing on the cake. There are a few reasons for doing at least the bare minimum. The big one is to enable in browser applications (like <a href="http://zotero.org">Zotero</a>, etc) to be able to learn more about a given resource in a relatively straightforward and commonplace way. The other big one is to let automated agents like <a href="http://www.google.com/bot.html">GoogleBot</a> and <a href="http://help.yahoo.com/help/us/ysearch/slurp">YahooSlurp</a> and Internet Archive's <a href="http://crawler.archive.org/">Heritrix</a>, etc. discover the <a href="http://en.wikipedia.org/wiki/Deep_Web">deep web</a> data that's held behind your API. Another nice side effect is that it helps people who might ordinarily scrape your site automatically discover the API in a straightforward way.</p>
<p>Lastly, I was curious to know if HathiTrust considered adjusting their Atom response to use the <a href="http://www.openarchives.org/ore/1.0/atom.html">Atom pattern</a> recommended by the OAI-ORE folks. They are pretty close already, and in fact seem to have modeled their own aggregation vocabulary on OAI-ORE. It would be interesting to hear why they diverged if it was intentional, and if it might be possible to use a bit of oai-ore in there so we can bootstrap an oai-ore harvesting ecosystem.</p>
<p>I'm <a href="http://iandavis.com/blog/2009/07/the-linked-data-brand">not sure</a> that I can still call this approach to integrating web2.0 APIs into web1.x applications <em>Linked Data</em> anymore, since it doesn't really involve RDF directly. It does  involve thinking in a RESTful way about the resources you are publishing on the web, and how they can be linked together to form a graph. My colleague <a href="http://onebiglibrary.net">Dan</a> has been writing in Computers in Libraries recently about how perhaps thinking in terms of "building a better web" may be a more accurate way of describing this activity. </p>
<p>For reasons I don't fully understand I've been reading a lot of Wittgenstein (well mainly books about Wittgenstein honestly) lately during the non-bike commute. The trajectory of his thought over his life is really interesting to me. He had this zen-like, controversial idea that </p>
<blockquote><p>
Philosophy simply puts everything before us, nor deduces anything. — Since everything lies open to view there is nothing to explain. For what is hidden, for example, is of no interest to us. <a href="http://books.google.com/books?id=ici7FXQZsFIC&lpg=PP1&dq=philosophical%20investigations&pg=PA43-IA1#v=onepage&q=126&f=false">(PI 126)</a>
</p></blockquote>
<p>I really like this idea that our data APIs on the web could be "open to view" by checking out the HTML, following your nose, and writing scrapers, bots and browser plugins to use what you find. I think it's unfortunate that the recent changes to the <a href="http://www.w3.org/DesignIssues/LinkedData.html">Linked Data Design Issues</a>, and the ensuing <a href="http://cloudofdata.com/2009/07/does-linked-data-need-rdf/">discussion</a> seemed to create this dividing line about the use of RDF and SPARQL. I had always hoped (and continue to hope) that the Linked Data effort is bigger than a particular brand, or reformulation of the semantic web effort ... for me it's a pattern for building a better web. I think RDF is very well suited to expressing the core nature of the web, the <a href="http://dig.csail.mit.edu/breadcrumbs/node/215">Giant Global Graph</a>. I've served up RDF representations in applications I've worked on just for this reason. But I think Linked Data pattern will thrive most if it is thought of as an inclusive continuum of efforts, similar to what <a href="http://webofdata.wordpress.com/2009/07/20/what-else/#comment-132">Dan Brickley</a> has suggested. Us technology people strive for explicitness, it's an occupational hazard -- but there's sometimes quite a bit of strength in ambiguity.</p>
<p>Anyhow, my little review of the HathiTrust API turned into a bit of a soapbox for me to stand on and shout like a lunatic. I guess I've been wanting to write about what I think Linked Data is for a few weeks now, and it just kinda bubbled up when I least expected it. Sorry Bill!</p>
