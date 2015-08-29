---
layout: post
status: publish
published: true
title: oai-pmh revisited
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 106
wordpress_url: http://www.inkdroid.org/journal/?p=106
date: '2006-06-21 12:59:15 +0000'
date_gmt: '2006-06-21 19:59:15 +0000'
tags: []
comments: []
---
<p>So the big news for me at JCDL was Carl Lagoze's presentation on the state of the NSDL in his paper <a href="http://arxiv.org/abs/cs.DL/0601125">Metadata Aggregation and "Automated Digital Libraries": A Retrospective on the NSDL Experience</a>. It ended up winning the <a href="http://web.archive.org/web/20120304165945/http://www.jcdl.org/awards.shtml">Vannevar Bush Best Paper Award</a> so I guess it was of interest to some other folks. I highly recommend printing out the paper for a train ride home if you are at all interested in digital libraries and metadata.</p>
<p>The paper is essentially a review of a three year effort to build a distributed digital library using the OAI-PMH protocol. Lagoze's pain in relating some of the findings was audible and understandable given his involvement in OAI-PMH...and the folks seated before him.</p>
<p>The findings boil down to a few key points:</p>
<h3>The OAI-PMH isn't low barrier enough</h3>
<p>Overall success rate for OAI-PMH harvesting has been 64%. I took the liberty of pulling out this graphic that Carl put up on the big screen at JCDL:</p>
<p><img width="450" src="http://www.inkdroid.org/images/harvest.png" /></p>
<p>The reason for harvest failure varied but centered around XML encoding problems (character sets, well-formedness, schema validation) as well as improper use of datestamps and resumption tokens. These errors are often unique to a particular harvest request--so that a repository that has passed "validation" can often turn around and randomly emit bad XML. So perhaps more than OAI-PMH not being low-barrier enough we are really talking about XML not being low barrier enough eh?</p>
<p>This issue actually came up in the Trusted Repositories workshop after JCDL (which I'll write about eventually) when Simeon Warner stated directly (in Mackenzie Smith's direction) that off the shelf repositories like DSpace should be engineered in such a way that they are unable to emit invalid/ill-formed XML. Mackenzie responded by saying that as far as she knew the issues had been resolved, but that she is unable to force people to upgrade their software. This situation sounds familiar to the bind that M$ finds themselves in--but at least with Windows you are prompted to upgrade your software...I wonder if DSpace has anything like that.</p>
<p>So anyway--bad XML. Perhaps on the flipside brittle XML tools are part of the problem...nd the fact that folks are generating XML by hand instead of using tools such as <a href="http://www.xml.com/pub/a/2006/01/04/creating-xml-with-ruby-and-builder.html">Builder</a>.</p>
<p>The other rubs were datestamps and resumption tokens which I got to hear about extensively in <a href="http://www.inkdroid.org/journal/2006/06/13/oai-pmh-tut/">Simeon's OAI-PMH tutorial</a>. The point being that there are these little wrinkles to creating a data provider which don't sound like much; but when multiplied out to many nodes can result in an explosion of administrative emails (170 messages per provider, per year) for the central hub. This amounts to a lot of (wo)man hours lost for both the central hub and the data providers.  It makes one wonder at how lucky/brialliant tbl was in creating protocols which scaled massively to the web we know today...with a little help from his friends.</p>
<h3>Good metadata is hard</h3>
<p>...or at least harder than expected. Good metadata requires domain expertise, metadata expertise and technical expertise--and unfortunately the NSDL data providers typically lacked people or a team with these skills (aka library technologists).</p>
<p>Essentially the NSDL was banking that the successful Union Catalog model (WorldCat) could be re-expressed using OAI-PMH and a minimalist metadata standard (oai_dc)...but WorldCat has professinally trained librarians and NSDL did not. oai_dc was typically too low-resolution to be useful, and only 50% of the collections used the recommended nsdl_dc qualified DC...which made it less than useful at the aggregator level. Furthermore only 10% of data providers even provided another type of richer metadata.</p>
<p>The NSDL team expended quite a bit of effort building software for scrubbing and transforming the oai_dc but:</p>
<blockquote><p>In the end, all of these transforms don't enhance the richness of the information in the metadata. Minimally descriptive metadata, like Dublin Core, is still minimally descriptive even after multiple quality repairs. We suggest that the time spent on such format-specific transforms might be better spent on analysis of the resource itself--the source of all manner of rich information.</p></blockquote>
<p>which brings us to...</p>
<h3>Resource-centric (rather than metadata-centric) DL systems are the future</h3>
<p>OAI-PMH by definition is essentially a protocol for sharing metadata. The system that the NSDL built is centered around a Metadata Repository which is essentially a RDBMs with a Dublin Core metadata record at it's core. Various services are built up around the MR including a service for Search and an Archiving service.</p>
<p>However as the NSDL has started to build out other digital library services they've discovered problems such as multiple records for the same resource. But more importantly they want to build services that provide context to resources, and the current MR model puts metadata at the center rather than the actual resource.</p>
<blockquote><p>In the future, we also want to express the relationships between resources and other information, such as annotations and standards alignments...we wish to inter-relate resources themselves, such as their co-existence within a lesson plan or curriculum.</p></blockquote>
<p>So it seems to me the NSDL folks have decided that the Union Catalog approach just isn't working out, and that the resource itself needs to be moved into the center of the picture. At the end of the day, the same is true of libraries--where the most important thing is the content that is stored there--not the organization of it. More information about this sea change can be found in <a href="http://arxiv.org/abs/cs.DL/0501080">An Information Network Overlay Architecture for the NSDL</a>, and in the work on Pathways, which was discussed and I hope to summarize here in the coming days.</p>
<h3>So...</h3>
<p>I think it's important to keep these findings in the context of the NSDL enterprise. For example the folks at lanl.gov are using OAI-PMH in their aDORe framework heavily. Control of data providers is implicit in the aDORe framework--so XML and metadata quality problems are mitigated. Furthermore aDORe is resource centric since MPEG21 surrogates for the resources themselves are being sent over OAI-PMH. But it does seem somehow odd that a metadata protocol is being overridden to transfer objects...but that begs a philosophical question about metadata which I'm not even going to entertain right now.</p>
<p>I think it's useful to compare the success of oai-pmh with the success of the www. Consider this thought experiment...Imagine that early web browsers (lynx/mosaic/netscrape/etc) required valid HTML in order to display a page. If the page was invalid you would get nothing but a blank page. If you really needed to view the page you'd have to email the document author and tell them to fix an unclosed tag, or a particular character encoding. Do you think that the web would've still propagated at the speed that it did?</p>
<p>fault_tolerant_xml_tools + using_xml_generator_libraries == happiness</p>
