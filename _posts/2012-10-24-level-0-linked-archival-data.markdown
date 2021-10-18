---
layout: post
status: publish
published: true
title: level 0 linked archival data
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 5183
wordpress_url: http://inkdroid.org/journal/?p=5183
date: '2012-10-24 03:29:49 +0000'
date_gmt: '2012-10-24 10:29:49 +0000'
tags:
- html
- python
- xml
- google
- ead
- nodejs
- archivegrid
comments: []
---

<div style="float: left; font-size: 8pt; text-align: center; margin-right: 10px;"><a href="https://en.wikipedia.org/wiki/File:Fondos_archivo.jpg"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Fondos_archivo.jpg/220px-Fondos_archivo.jpg"/><br />Depósito del Archivo de la Fundación<br />Sierra-Pambley</a></div>
<p><strong><em>TLDR; lets see if we can share structured archival data better by adding HTML &lt;link&gt; elements that point at our EAD XML files.</em></strong></p>
<p>A few weeks ago I attended a small meeting of DC museums, archives and libraries that were discussing what Linked Data means for Archives. Hillel Arnold and I took collaborative notes in <a href="http://piratepad.net/IB2zcWvFDz">Pirate Pad</a>. For a good part of the time we went around the room talking about how we describe archival collections with various workflows using Encoded Archival Description (EAD), and how this was mostly working (or not).</p>
<p>Some good work has already been done imagining how Linked Data can transform archival description by the <a href="http://blogs.ukoln.ac.uk/locah/">LOCAH</a> (now <a href="http://archiveshub.ac.uk/linkinglives/">Linking Lives</a>) as well as the <a href="http://socialarchive.iath.virginia.edu/">Social Networks and Archival Context</a> project. I think tools like <a href="http://editorsnotes.org/">Editors' Notes</a>, <a href="http://www.cwrc.ca/projects/infrastructure-projects/technical-projects/cwrc-writer/">CWRC Writer</a>, and Google's <a href="http://googledocs.blogspot.com/2012/05/find-facts-and-do-research-inside.html">Research Pane</a> could provide really useful models for how the work of an archivist could benefit from linking to external resources such as Wikipedia, dbpedia, VIAF, etc. But we really didn't talk about that in too much detail. The focus instead was on various tools people used in their EAD workflows: Archivists' Toolkit, Oxygen, ExistDB, Access databases, etc ... and the hope that <a href="http://www.archivesspace.org/">Archives Space</a> could possibly improve matters. We did touch briefly on what it means to make finding aids available on the Web, but not in a very satisfactory way.</p>
<p>I was really struck by how everyone was using EAD, even if their tools were different. I was also left with the lingering suspicion that not much of this EAD data was linked to from the HTML presentation of the finding aid. After some conversations it was also my understanding that even after 20 years of work on EAD, there is not a listing of websites that make EAD finding aids available. It seems particularly sad that institutions have invested a lot of time and effort in putting EAD into practice, and yet we still aren't really sharing them very well with each other.</p>
<p>So in a bit of a fit of frustration I did some <a href="http://github.com/edsu/ead-finder">hacking</a> to see if I could use <a href="http://google.com?q=ead+filetype:xml">Google</a> and <a href="http://beta.worldcat.org/archivegrid">ArchiveGrid</a> to identify websites that serve up finding aids either as HTML or as EAD XML. I wanted to:</p>
<ol>
<li>Get a list of websites that made HTML and EAD XML finding aids available. We can rely on Google to index the Web, but maybe we could index the archival web a bit better ourselves if we had a better understanding of where the EAD data was available. The idea is that this initial list could be used to bootstrap a list of websites making EAD finding aids available in the Wikipedia entry for <a href="https://en.wikipedia.org/wiki/Encoded_Archival_Description">EAD</a>.</li>
<li>To see which websites have HTML representations that link to an EAD XML representation. The rationale here is to encourage a very simple best practice for linking to structured archival data when it is available. More on that below.</li>
</ol>
<p>I was able to identify 201 hosts that served up finding aids either as HTML or XML. You should be able to see them here in this <a href="https://docs.google.com/spreadsheet/ccc?key=0Ak6uboYXcJbBdEFMODhhN1dSaWlUNTRQX05pcmEtLWc#gid=0">spreadsheet</a>. I also collected URLs for finding aids (both HTML and XML) that I was able to locate, which can be seen in this <a href="https://github.com/edsu/ead-finder/blob/master/dump.json">JSON file</a>. </p>
<p>With the URLs in hand I wrote a little script to examine which of the 156 hosts serving up HTML representations of finding aids had a link to an XML EAD document. I looked for a very simple kind of link that was <a href="http://www.rssboard.org/rss-autodiscovery">popularized</a> by the RSS and Atom syndication community for autodiscovery of blog feeds. A <code>&lt;link&gt;</code> tag that has a <code>rel</code> attribute of <code>alternate</code> and a <code>type</code> attribute set to <code>application/xml</code>. Out of the 156 websites serving up HTML representations of finding aids I could only find two websites that used this link pattern: Princeton University and Emory University. </p>
<p>For example if you view the HTML source for the <a href="http://findingaids.princeton.edu/collections/C1022">Einstein Collection</a> finding aid at Princeton you'll see this link:</p>
<pre lang="html">
<link rel="alternate" type="application/xml" href="http://findingaids.princeton.edu/collections/C1022.xml" />
</pre>
<p>Similarly the finding aid for the <a href="http://findingaids.library.emory.edu/documents/rushdie1000/">Salman Rushdie</a> collection at Emory University has this link:</p>
<pre lang="html">
<link rel="alternate" type="application/xml" href="/documents/rushdie1000/EAD/" />
</pre>
<p>As the title of this blog post suggests, I'm calling this pattern <em>level 0 linked data</em>. Linked Data purists would probably say this isn't Linked Data at all since it doesn't involve an RDF serialization. And I guess they would be right. But it does express a graph of HTML and EAD data that is linked, and it serves a real need. If you are interested in Linked Data and archives I encourage you to add these links to your HTML finding aids today. </p>
<p>So why is are these links important? </p>
<p>The main reason is they are found in HTML documents, which are the representations that matter most on the Web. HTML documents are read by people. They are hypertext documents that link to and from other places on an archives website and elswewhere on the Web at large. They are well understood technically by the Web development community...if you hire a developer they might have strong feelings about using PHP or Ruby, but they will know HTML backwards and forwards. They are crawled and indexed by search engine bots so that researchers around the world can discover our collections. They are cited in social environments like Twitter, Facebook, blog posts, etc. We have a responsibility to create stable homes (URLs) for our archival descriptions that fit into the Web.</p>
<p>The other reason is these links are important is that they make our investment in EAD visible on the Web for anyone who is looking. Nobody but ArchiveGrid actively crawl EAD XML data. They are the only ones that can find them, because they have been told where they are. If we did a better job of advertising the availability of our EAD documents I think we would see more tools and services around them. ArchiveGrid is a good example of the sort of tool that could be built on top of a web of EAD data. But what about archival collections in your local area? Perhaps it would be useful to have a service that let you look across the archival holdings of institutions in a consortium you belong to. Or perhaps you might want to create an alerting service that lets researchers know what new archival collections are being made available. Or maybe you need to collaborate with archives in a specific domain, and need tools that provide a custom experience for that distributed collection. I imagine there would be lots of ideas for apps if there were just a teensy bit more thought put into how finding aids (both the HTML and the XML) are put on the Web, and how we shared information about their availability.</p>
<p>Going forward I think HTML5 microdata and RDFa present some excellent opportunities for Linked Data representations of finding aids. Especially when you consider some of the vocabulary development <a href="http://purl.org/archival/vocab/arch">being</a> <a href="http://archivi.ibc.regione.emilia-romagna.it/ontology/reference_document/referencedocument.html">done</a> <a href="http://blogs.ukoln.ac.uk/locah/2011/02/16/two-changes-to-the-model-and-some-definitions/">around</a> them; as well as some of the <a href="http://discontents.com.au/tag/linked-data">work</a> being done by Tim Sherratt on using  linked data to create new user experiences around archival data. But if your institution has already invested in creating EAD documents I think trying this link pattern with data you already have could be a good first step towards introducing linked data into your archive. I hope it is a first baby step that archives can take in merging some of the structured data found in the EAD XML document into the HTML they publish about their collections.</p>
<p>I'm planning on getting the list of EAD publishers into the Wikipedia article for EAD, and putting out a call for others to add their website if it is missing. I also think that a simple crawling and aggregation service that use the links in some fashion could also encourage more linking. A lot of this blog post has been mental preparation for my involvement in an IMLS funded project run out of Tufts that will be looking at Linked Archival Metadata, which is about to be kicked off this winter. If you've read this far, and have any thoughts or suggestions about this I'd enjoy hearing them either here, on <a href="http://twitter.com/edsu">Twitter</a> or via <a href="mailto:ehs@pobox.com">email</a>.</p>
