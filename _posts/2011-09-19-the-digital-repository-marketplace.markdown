---
layout: post
status: publish
published: true
title: the digital repository marketplace
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 3690
wordpress_url: http://inkdroid.org/journal/?p=3690
date: '2011-09-19 07:23:12 +0000'
date_gmt: '2011-09-19 14:23:12 +0000'
tags:
- web
- preservation
- cdl
- repositories
- cdn
- access
- california
- usc
- markets
comments: []
---

<p>The University of Southern California recently <a href="http://repository.usc.edu/">announced</a> its Digital Repository (USCDR) which is a joint venture between the <a href="http://dornsife.usc.edu/vhi/">Shoah Foundation Institute</a> and the <a href="http://www.usc.edu/">University of Southern California</a>. The site is quite an impressive brochure that describes the various services that their digital preservation system provides. But a few things struck me as odd. I was definitely pleased to see a prominent description of <a href="http://repository.usc.edu/web-access/">access services</a> centered on the Web:</p>
<blockquote><p>
The USCDR can provide global access to digital collections through an expertly managed, cloud-computing environment. With its own content distribution network (CDN), the repository can make a digital collection available around the world, securely, rapidly, and reliably. <strong>The USCDR’s CDN is an efficient, high-performance alternative to leading commercial content distribution networks.</strong> The USCDR’s network consists of a system of disk arrays that are strategically located around the world. Each site allows customers to upload materials and provides users with high-speed access to the collection. The network supports efficient content downloads and real-time, on-demand streaming. The repository can also arrange content delivery through commercial CDNs that specialize in video and rich media.
</p></blockquote>
<p>But from this description it seems clear that the USCDR is creating their own content delivery network, despite the fact that there is already a <a href="http://en.wikipedia.org/wiki/Content_delivery_network">good marketplace</a> for these services. I would have thought it would be more efficient for the USCDR to provide plugins for the various CDNs rather than go through the effort (and cost) of building out one themselves. Digital repositories are just a drop in the ocean of Web publishers that need fast and cheap delivery networks for their content. Does the USCDR really think they are going to be able to compete and innovate in this  marketplace? I'd also be kind of curious to see what public websites there are right now that are built on top of the USCDR.</p>
<p>Secondly, in the section on <a href="http://web.archive.org/web/20111112060505/http://repository.usc.edu:80/cataloging/">Cataloging</a> this segment jumped out at me:</p>
<blockquote><p>
The USC Digital Repository (USCDR) offers cost-effective cataloging services for large digital collections by applying a sophisticated system that tags groups of related items, making them easier to find and retrieve. The repository can convert archives of all types to indexed, searchable digital collections. The repository team then creates and manages searchable indices that are customized to reflect the particular nature of a collection.</p>
<p>The USCDR’s cataloging system employs <strong>patented software created by the USC Shoah Foundation Institute (SFI)</strong> that lets the customers define the basic elements of their collections, as well as the relationships among those elements. The repository’s control standards for metadata verify that users obtain consistent and accurate search results. The repository also supports the use of any standard thesaurus or classification system, as well as the use of customized systems for special collections.</p></blockquote>
<p>I'm certainly not a patent expert, but doesn't it seem ill advised to build a digital preservation system around a patented technology? Sure, most of our running systems use possibly thousands of patented technologies, but ordinarily we are insulated from them by standards like <a href="http://en.wikipedia.org/wiki/POSIX">POSIX</a>, <a href="http://en.wikipedia.org/wiki/HTTP">HTTP</a>, or <a href="http://en.wikipedia.org/wiki/Internet_Protocol_Suite">TCP/IP</a> that allow us to swap out various technologies for other ones. If the particular technique to cataloging built into the USCDR is protected by a patent for 20 years, won't that limit the dissemination of the technique into other digital preservation systems, and ultimately undermine the ability of people to move their content in and out of digital preservation systems as they become available--what <a href="http://www.alexandria.ucsb.edu/~gjanee/">Greg Janée</a> calls <a href="http://www.ijdc.net/index.php/ijdc/article/view/102/77">relay supporting archives</a>. I guess without more details of the patented technology it's hard to say, but I would be worried about it.</p>
<p>After working in this repository space for a few years I guess I've become pretty jaded about turnkey digital repository systems that say they do it all. Not that it's impossible, but it always seems like a risky leap for an organization to take. I guess I'm also a software developer, which adds quite a bit of bias. But on the other hand it's great to see a repository systems that are beginning to address the basic concerns raised by the <a href="http://brtf.sdsc.edu/">Blue Ribbon Task Force on Sustainable Digital Preservation and Access</a>, which identified the need for building sustainable models for digital preservation. The <a href="http://www.cdlib.org/">California Digital Library</a> is doing something similar with its <a href="http://www.cdlib.org/services/uc3/merritt/">UC3 Merritt</a> system, which offers fee based curation services to the University of California (which USC is not part of).</p>
<p>Incidentally the service costs of USCDR and Merritt are quite difficult to compare. Merritt's <a href="http://www.cdlib.org/uc3/docs/Merritt-cost-calculator-v3.xlsx">Excel Calculator</a> says their cost is $1040 per TB per year (which is pretty straightforward, but doesn't seem to account for the degree to which the data is accessed). The USCDR <a href="http://web.archive.org/web/20111211211652/http://repository.usc.edu:80/pricing/">is listed</a> as $70/TB per month for Disk-based File-Server Access, and $1000/TB for 20 years for Preservation Services. That would seem indicate the raw storage is a bit less than Merritt at $840.00 per TB per year. But what the preservation services are, and how the 20 year cost would be applied over a growing collection of content seems unclear to me. Perhaps I'm misinterpreting <em>disk-based file-server access</em>, which might actually refer to terabytes of data sent outside their USCDR CDN. In that case the $70/TB measures up quite nicely with a <a href="http://calculator.s3.amazonaws.com/calc5.html">recent quote</a> from Amazon S3 at $120.51 per terabyte transferred out per month. But again, does USCDR really think it can compete in the cloud storage space?</p>
<p>Based on the current pricing models, where there are no access driven costs, the USCDR and Merritt might find a lot of clients outside of the traditional digital repository ecosystem (I'm thinking online marketing or pornography) that have images they would like to serve at high volume for no cost other than the disk storage. That was my bad idea of a joke, if you couldn't tell. But seriously I sometimes worry that digital repository systems are oriented around the functionality of a dark archive, where lots of data goes in, and not much data comes back out for access.</p>
