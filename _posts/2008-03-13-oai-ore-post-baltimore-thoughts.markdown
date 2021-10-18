---
layout: post
status: publish
published: true
title: oai-ore post baltimore thoughts
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 190
wordpress_url: http://inkdroid.org/journal/2008/03/13/oai-ore-post-baltimore-thoughts/
date: '2008-03-13 09:34:29 +0000'
date_gmt: '2008-03-13 16:34:29 +0000'
tags:
- metadata
- rdf
- libraries
- oaipmh
- oaiore
- harvesting
- web
- grddl
- xml
- atom
comments:
- id: 81629
  author: Open Repositories 2008 &laquo; pintiniblog
  author_email: ''
  author_url: http://pintiniblog.wordpress.com/2008/03/31/open-repositories-2008/
  date: '2010-01-08 00:06:00 +0000'
  date_gmt: '2010-01-08 07:06:00 +0000'
  content: "[...] Mind, 08/12/07) - OAI-ORE Open Meeting, Johns Hopkins University,
    March 3, 2008 (présentations) | Oai-Ore post Baltimore thoughts (à propos de la
    conférence précitée, sur inkdroid, [...]"
---

<p><img src="http://inkdroid.org/images/constellation.png" style="float: left; margin-right: 5px;" title="Herbert's (or was it Carl's) analogy of oai-ore resource maps as constellations in the night sky was perfect" />The recent <a href="http://www.openarchives.org/ore/meetings/hopkins/agenda.htm">OAI-ORE meeting</a> was just up the road in Baltimore, so it was easy for a bunch of us from the Library of Congress to attend. I work on a team at LC that is specifically looking at the role that repositories play at the library; I've implemented OAI-PMH data providers and harvesters, and in the past couple of years I've gotten increasingly interested in semantic web technologies -- so OAI-ORE is of particular interest to me. I've commented a bit about OAI-ORE on <a href="http://inkdroid.org/journal/2008/02/22/oai-ore-and-the-shadow-web/">here</a> <a href="http://inkdroid.org/journal/2007/11/02/good-ore/">before</a>, but I figure it can't hurt to follow in my <a href="http://onebiglibrary.net/story/the-cranky-librarians-guide-to-oai-ore">coworker's footsteps</a> and summarize my thoughts after the meeting.</p>
<p><em>(BTW, above is an image of some constellations I nabbed off of <a href="http://commons.wikimedia.org/wiki/Image:Tri%C3%A1ngulo_de_verano.png">wikipedia</a>. I included it here because the repeated analogy (during the meeting) of OAI-ORE resource maps as constellations was really compelling -- and quite poetic.)</em></p>
<h3>The Vocabulary</h3>
<p>It seems to me that the real innovation of the OAI-ORE effort is that it provides a lightweight RDF vocabulary for talking about aggregated resources on the web. Unfortunately I think that this kernel gets a little bit lost in the <a href="http://www.openarchives.org/ore/0.1/">6 specification documents</a> that were released en masse a few months ago.</p>
<p>The ORE vocabulary essentially consists of three new resource types: <code>ore:ResourceMap</code>, <code>ore:Aggregation</code>, <code>ore:AggregatedResource</code> ; and 5 new properties to use with those types: <code>ore:describes</code>, <code>ore:isDescribedBy</code>, <code>ore:aggregates</code>, <code>ore:isAggregatedBy</code>, <code>ore:analogousTo</code>. In addition, the <a href="http://www.openarchives.org/ore/0.1/vocabulary">Vocabulary</a> document<br />
provides guidance on how to use a few terms from the DublinCore vocabulary: <code>dc:creator</code>, <code>dc:rights</code>, <code>dcterms:modified</code>, <code>dcterms:created</code>.</p>
<p>The vocabulary is small, so if I were them I would publish the vocabulary elements using hash URIs, instead of slash URIs. The reason for this is that you don't have to jigger the web server to do a <a href="http://www.w3.org/2001/tag/issues.html#httpRange-14">httpRange-14</a> style 303 correctly:</p>
<ul>
<li>http://www.openarchives.org/ore/0.2/terms#Aggregation</li>
<li>http://www.openarchives.org/ore/0.2/terms#AggregatedResource</li>
<li>http://www.openarchives.org/ore/0.2/terms#ResourceMap</li>
<li>http://www.openarchives.org/ore/0.2/terms#describes</li>
<li>http://www.openarchives.org/ore/0.2/terms#isDescribedBy</li>
<li>http://www.openarchives.org/ore/0.2/terms#aggregates</li>
<li>http://www.openarchives.org/ore/0.2/terms#isAggregatedBy</li>
<li>http://www.openarchives.org/ore/0.2/terms#analogousTo</li>
</ul>
<p>Also, I think <code>ore:AggregatedResource</code> is currently missing from the <a href="http://www.openarchives.org/ore/0.2/terms">rdf/xml vocabulary</a>, so it should be added. Also <code>ore:isDescribedBy</code> seems to be commented out.</p>
<p>There is a lot of redundancy between the <a href="http://www.openarchives.org/ore/0.1/datamodel">Abstract Data Model</a> and the <a href="http://www.openarchives.org/ore/0.1/vocabulary">Vocabulary</a> documents--so I would recommend collapsing them down into a single, succinct document. This is in keeping with the <a href="http://en.wikipedia.org/wiki/Don't_repeat_yourself">DRY principle</a> and will have the added benefit of making it easier for newbies to hit the ground  running (not having to wade through multiple docs and mentally reconcile them). I could understand having a separate Abstract Data Model document if it were totally divorced from the web and semantic web technologies like RDF, but it's not.</p>
<h3>The Graph</h3>
<p>The OAI-ORE effort seemed to be mostly driven by a desire to take harvesting agents the last mile to the actual repository resources themselves--enabling  digital library objects (in addition to their metadata) to be harvested from  repositories (using HTTP) ; and to be referenced from other contexts (say objects in other repositories). This desire was born out of <a href="http://arxiv.org/abs/cs.DL/0601125">real, hard won experience</a> with harvesting metadata records, and marked a shift from metadata-centric harvesting to resource-centric harvesting.</p>
<p>In addition OAI-ORE marks a departure from predictable and mind-numbing arguments about SIP formats (<a href="http://www.loc.gov/standards/mets/">METS</a>, DIDL, <a href="http://www.fedora.info/download/2.0/userdocs/digitalobjects/introFOXML.html">FOXML</a>, <a href="http://ltsc.ieee.org/wg12/">IEEE LOM</a>, <a href="http://sindbad.gsfc.nasa.gov/xfdu">XFDU</a>, etc). Yet as soon as we have our shiny new OAI-ORE vocabulary we have to learn yet-another-packaging-format, this time one built on top of Atom.</p>
<p>First, let me just say I'm a big fan of <a href="http://www.ietf.org/rfc/rfc4287.txt">RFC 4287</a>, in particular how it is used in the RESTful <a href="http://www.ietf.org/rfc/rfc5023.txt">Atom Publishing Protocol</a> (RFC 5023). I also think it makes sense to have an Atom serialization for OAI-ORE resource maps -- assuming there is a GRDDL transform for turning it into RDF. But the workshop in Baltimore seemed to stress that the Atom serialization was <em>the only way</em> to do OAI-ORE, and didn't emphasize that there are in fact <em>lots of ways</em> of representing RDF graphs on the web. For example <a href="http://www.w3.org/TR/grddl/">GRDDL</a> allows you to associate arbitrary XML with an XSLT transform to extract a RDF graph. And you could encode your RDF graph directly with RDFa, N3, Turtle, ntriples, or RDF/XML.</p>
<p>Perhaps there is a feeling that stressing the RDF graph too much will alienate some people who are more familiar with XML technologies.  Or perhaps all these graph serialization choices could be perceived as being too overwhelming. But I think the opposite extreme of making it look like you can only use an overloaded Atom document as a means to publishing ORE resource maps is misguided, and will ultimately slow adoption.  Why not encourage people to publish GRDDL transforms for METS, DIDL or mark up their "splash pages" with RDFa?  This would bring the true value of the OAI-ORE work home--it's not about  yet-another-packaging format, it's about what the various packaging formats have in common on the web.</p>
<h3>Release Early, Release Often</h3>
<p>In hindsight I think it would've been helpful for the OAI-ORE group to privately build consensus about the core OAI-ORE vocabulary (if necessary), then release that into the world wild web for discussion. Then once the kinks were worked out, and there was general understanding, moving on to issues such as discovery and serialization.  As it stands the various documents were all dumped at the same time, and seem somewhat fragmented, and in places redundant. Clearly a lot of conversations have gone on that aren't happening on the public <a href="http://groups.google.com/group/oai-ore">discussion list</a>.</p>
<p>I expressed interest in being part of the OAI-ORE and was politely turned down. I'm actually kind of glad really because I also don't want to be part of some cabal of digital library practitioners. Maybe I should've titled this post "Sour Grapes" :-) Seriously though, the digital library needs good practical solutions and communities of users that encourage widespread adoption and tool support. We don't need research-ware. Having secret discussions and occasional public events that feel more like lectures than meetings isn't a good way to encourage adoption.</p>
<p>Anyhow, I hope that this isn't all seen as being too harsh. Everyone's a critic eh? All in all there is a lot in OAI-ORE to be proud of. The effort to integrate Web Architecture into Digital Library practices is most welcome indeed. Keep up the good work y'all.</p>
