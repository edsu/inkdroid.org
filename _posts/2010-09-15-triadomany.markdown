---
layout: post
status: publish
published: true
title: triadomany
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2453
wordpress_url: http://inkdroid.org/journal/?p=2453
date: '2010-09-15 07:47:07 +0000'
date_gmt: '2010-09-15 14:47:07 +0000'
tags:
- python
- humor
- perl
- linkeddata
- graphs
- unix
- visualizations
- triples
- philosophy
comments: []
---
<blockquote>
I fully admit that there is not uncommon craze for trichotomies. I do not know but the psychiatrists have provided a name for it. If not, they should ... it might be called <b>triadomany</b>. I am not so afflicted; but I find myself obliged, for truth's sake, to make such a large number of trichotomies that I could not [but] wonder if my readers, especially those of them who are in the way of knowing how common the malady is, should suspect, or even opine, that I am a victim of it ... I have no marked predilection for trichotomies in general. </p>
<p><em><a href="http://en.wikipedia.org/wiki/Charles_Sanders_Peirce">Charles S. Peirce</a> quoted in <a href="http://www.amazon.com/Sign-Three-Holmes-Advances-Semiotics/dp/0253204879">The Sign of Three</a>, edited by <a href="http://en.wikipedia.org/wiki/Umberto_Eco">Umberto Eco</a> and <a href="http://en.wikipedia.org/wiki/Thomas_Sebeok">Thomas A. Sebeok</a>.</em>
</p></blockquote>
<p><a href="http://inkdroid.org/empirical-cloud"><br />
<img src="http://inkdroid.org/images/empirical-cloud.png" style="border: none; float: left;"/><br />
</a></p>
<p>It's hard not to read a bit of humor and irony into this quote from Peirce. My friend <a href="http://onebiglibrary.net">Dan Chudnov</a> observed once that all this business with RDF and Linked Data often  seems like <a href="http://en.wikipedia.org/wiki/Fetishism">fetishism</a>. RDF colored glasses are kind of hard to take off when you are a web developer and have invested a bit of time in understanding the <strike>Semantic Web</strike> <a href="http://linkeddata.org">Linked Data</a> vision. I seem to go through phases of interest with the triples: ebbs and flows.  Somehow it's comforting to read of Peirce's predilections for triples at the remove of a couple hundred years.</p>
<p>Seeing the Linked Open Data Cloud for the <a href="http://inkdroid.org/journal/2008/01/04/following-your-nose-to-the-web-of-data/">first time</a> was a revelation of sorts. It helped me understand concretely how the Web could be used to assemble a distributed, collaborative database. That same diagram is currently <a href="http://lists.w3.org/Archives/Public/public-lod/2010Sep/0009.html">being updated</a> to include new datasets. But a lot of Linked Data has been deployed since then ... and a lot of it has been collected as part of the annual <a href="http://challenge.semanticweb.org/">Billion Triple Challenge</a>. </p>
<p>It has always been a bit mysterious to me how nodes get into the LOD Cloud, so I wondered how easy it would be create a cloud from the <a href="http://challenge.semanticweb.org/">2010 Billion Triple Challenge dataset</a>. It <a href="http://github.com/edsu/empirical-cloud">turns out</a> that with a bit of <a href="http://github.com/edsu/empirical-cloud/blob/master/README">unix pipelining</a> and the nice <a href="http://vis.stanford.edu/protovis/">ProtoVis</a> library it's not too hard to get something <a href="http://inkdroid.org/empirical-cloud">"working"</a>. It sure is nice to work in an <a href="http://loc.gov">environment</a> with helpful <a href="http://twitter.com/yellowmoss">folk</a> who can set aside a bit of storage and compute time for experimenting like this, without having to bog down my laptop for a long time.</p>
<p>If you click on the image you should be taken to the visualization. It's kind of heavy on JavaScript processing, so a browser like Chrome will probably render it best. </p>
<p>But as <a href="http://blog.whatfettle.com/">Paul Downey</a> pointed out to me in Twitter:</p>
<p><a href="http://twitter.com/psd/status/24559831612"><br />
<img src="http://inkdroid.org/images/psd-tweet.png" style="border: none;"/><br />
</a></p>
<p>Paul is so right. I find myself drawn to these graph visualizations for magical reasons. I can console myself that I did manage to find a new linked data supernode that I didn't know about before: <a href="http://www.bibsonomy.org/">bibsonomy</a>--which doesn't appear to be in the latest curated view of the Linked Open Data Cloud. And I did have a bit of fun making the underlying data available as <a href="http://inkdroid.org/empirical-cloud/sameas.rdf">rdf/xml</a> and <a href="http://inkdroid.org/empirical-cloud/sameas.ttl">Turtle</a> using the <a href="http://vocab.deri.ie/void">Vocabulary of Interlinked Datasets (VoID)</a>. And I generated a similar visualization for the <a href="http://inkdroid.org/empirical-cloud/2009.html">2009 data</a>. But it does feel a bit navel-gazy, so a sense of humor about the enterprise is often a good tonic. I guess this is the whole point of the Challenge, to get something generally useful (and not navel-gazy) out of the sea of triples.</p>
<p>Oh and <a href="http://www.amazon.com/Sign-Three-Holmes-Advances-Semiotics/dp/0253204879">Sign of Three</a> is an excellent read so far :-)</p>
