---
layout: post
status: publish
published: true
title: oai-pmh tut
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 103
wordpress_url: http://www.inkdroid.org/journal/?p=103
date: '2006-06-13 06:12:07 +0000'
date_gmt: '2006-06-13 13:12:07 +0000'
tags: []
comments:
- id: 1040
  author: inkdroid &raquo; oai-pmh revisited
  author_email: ''
  author_url: http://www.inkdroid.org/journal/2006/06/21/oai-pmh-revisited/
  date: '2006-07-07 15:15:56 +0000'
  date_gmt: '2006-07-07 22:15:56 +0000'
  content: "[...] The other rubs were datestamps and resumption tokens which I got
    to hear about extensively in Simeon&#8217;s OAI-PMH tutorial. The point being
    that there are these little wrinkles to creating a data provider which don&#8217;t
    sound like much; but when multiplied out to many nodes can result in an explosion
    of administrative emails (170 messages per provider, per year) for the central
    hub. This amounts to a lot of (wo)man hours lost for both the central hub and
    the data providers. It makes one wonder at how lucky/brialliant tbl was in creating
    protocols which scaled massively to the web we know today&#8230;with a little
    help from his friends. [...]"
---
<p>I couldn't pass up the opportunity to hear Simeon Warner talk about <a href="http://www.openarchives.org">oai-pmh</a> in the second group of tutorials. I've implemented data and service providers before--so I consider myself fairly knowledgeable about the protocol. But Simeon works with this stuff constantly at Cornell since <a href="http://arxiv.org">arXiv</a> so I was certain there would be things to learn from him...he did not disappoint.</p>
<p>Using some recent work at <a href="http://web.archive.org/web/20070702003636/http://oai-best.comm.nsdl.org:80/cgi-bin/wiki.pl?">NSDL</a>, and his experience with the protocol Simeon provided some really useful advice on sing oai-pmh. Here are the things I picked up on:</p>
<ul>
<li>avoid using sets--especially overloading sets to do searches. There is an interesting edge case in the protocol when a record moves from a particular set A to set B, which makes harvesters who are harvesting set A totally miss the update.</li>
<li>pay attention to datestamps. Make sure datestamps are assigned to records when they actually change in the repository or else harvesters can miss updates. The protocol essentially is a way of exposing updates, so getting the datestamps right is crucial.</li>
<li>resumption tokens need to be idempotent. This means a harvester should be able to use the resumption token more than once and get the same result (barring updates to the repository). This is essential so that harvesters engaged in a lengthy harvest can recover from network failure and other exceptions.</li>
<li>pay attention to character encoding. Use a parser that decodes character entities in XML and store the utf8. This will make your live simpler as you layer new services over harvested data. Make sure that HTML entities aren't used in oai-pmh responses. <a href="http://www.cs.cornell.edu/people/simeon/software/utf8conditioner/">utf8conditioner</a> is Simeon's command line app for debugging utf8 data.</li>
<li>be aware of the two great myths of oai-pmh: the myth that oai-php only allows exposure of DC records, and that oai_pmh only allows a single metadata format to be exposed.</li>
</ul>
<p>There are lots more recommendations at NSDL, but it was useful to have this overview and have the chance to ask Simeon questions. For example even though oai-pmh requires records to have an XML schema, it would be possible to create a wrapping schema for freeform data like RDF.</p>
<p>The main reason I was interested in this tutorial was to hear more about using oai-pmh to distribute not only resource metadata records, but also the resources themselves. There were a couple of initial problems with using the protocol to provide access to the actual resources.</p>
<p>The first is that identifiers such as URLs in metadata records which point to the resource for capture had too much ambiguity. Some of the URLs point at splash screens where someone could download a particular flavor of the resource, others went directly to a PDF, etc. This made machine harvesting data-provider specific. In addition there is a problem with the datestamp semantics when a remote resource changes--when the resource is updated but the metadata stays the same the datestamp is not required to change. This makes it impossible for harvesters to know when it needs to download the resource again.</p>
<p>Fortunately there was a solution that is detailed more fully in a <a href="http://dlib.org/dlib/december04/vandesompel/12vandesompel.html">paper</a> written by Simeon and the usual suspects. It boils down to actually distributing the resource as a metadata format. This plays a little bit with what metadata itself is...but it makes the two previously mentioned problems disappear. Simeon gave a brief overview of MPEG21 DIDL but was keen to point out METS and other packaging formats can work the same. Using oai-pmh in this way is <em>really</em> interesting to me since it enables respositories to share actual objects with each other--with OAI-PMH working almost like an ingestion protocol.</p>
<p>I asked about mechanisms to autodiscover oai-pmh metadata in HTML, like <a href="http://unapi.info">unAPI</a>. Simeon pointed out that the usual suspects are actually extending/refining this idea a bit in some recent work done w/ the Andrew Mellon Foundation on <a href="http://msc.mellon.org/Meetings/Interop/presentations">interoperability</a>. Apparently they've experimented with the LiveClipboard idea in support of some of this work. More on this later.</p>
