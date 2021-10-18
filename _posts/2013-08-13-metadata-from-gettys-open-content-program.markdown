---
layout: post
status: publish
published: true
title: metadata from Getty's Open Content Program
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 5906
wordpress_url: http://inkdroid.org/journal/?p=5906
date: '2013-08-13 06:52:56 +0000'
date_gmt: '2013-08-13 13:52:56 +0000'
tags:
- getty
- metadata
comments: []
---

<p><a href="http://www.getty.edu/art/gettyguide/artObjectDetails?artobj=335657"><img style="float: left; margin-right: 10px;" width="100" src="http://www.getty.edu/art/collections/images/l/33565701.jpg"></a><br />
<a href="http://loribyrdphillips.com/">Lori Phillips</a> recently <a href="http://lists.okfn.org/pipermail/open-glam/2013-August/000693.html">mentioned</a> on the open-glam discussion list that Getty are <a href="http://blogs.getty.edu/iris/open-content-an-idea-whose-time-has-come/">starting</a> to make high-resolution images of some of their public domain material available as part of their <a href="http://www.getty.edu/about/opencontent.html">Open Content Program</a>. The announcement mentions that metadata is included in each file, so I thought I'd take a look. It's <a href="https://www.adobe.com/products/xmp/">Adobe Extensible Media Platform (XMP)</a> aka RDF. Here's an example I pulled from <a href="http://www.getty.edu/art/gettyguide/artObjectDetails?artobj=335657">The Portrait of Madame Brunet</a> (I apologize if reading RDF as <a href="http://www.w3.org/TeamSubmission/turtle/">Turtle</a> burns your eyes, but I find it much easier to read than the equivalent RDF/XML).</p>
<pre lang="n3">
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix Iptc4xmpCore: <http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/> .
@prefix Iptc4xmpExt: <http://iptc.org/std/Iptc4xmpExt/2008-02-29/> .
@prefix dc: <http://purl.org/dc/elements/1.1/> .
@prefix photoshop: <http://ns.adobe.com/photoshop/1.0/> .
@prefix xmpRights: <http://ns.adobe.com/xap/1.0/rights/> .

<https://d2hiq5kf5j4p5h.cloudfront.net/33565701.jpg>
    Iptc4xmpCore:CreatorContactInfo [
        Iptc4xmpCore:CiAdrCity "Los Angeles" ;
        Iptc4xmpCore:CiAdrCtry "United States" ;
        Iptc4xmpCore:CiAdrExtadr "1200 Getty Center Drive" ;
        Iptc4xmpCore:CiAdrPcode "90049" ;
        Iptc4xmpCore:CiAdrRegion "California" ;
        Iptc4xmpCore:CiEmailWork "rights@getty.edu" ;
        Iptc4xmpCore:CiUrlWork "www.getty.edu"
    ] ;
    Iptc4xmpExt:ArtworkOrObject [
        a rdf:Bag ;
        rdf:_1 [
            Iptc4xmpExt:AOCreator [
                a rdf:Seq ;
                rdf:_1 "Édouard Manet"
            ] ;
            Iptc4xmpExt:AOSource "The J. Paul Getty Museum, Los Angeles" ;
            Iptc4xmpExt:AOSourceInvNo "2011.53" ;
            Iptc4xmpExt:AOTitle [
                a rdf:Alt ;
                rdf:_1 "Portrait of Madame Brunet"@x-default
            ]
        ] 
    ] ;
    photoshop:Source "The J. Paul Getty Museum, Los Angeles" ;
    xmpRights:UsageTerms [
        a rdf:Alt ;
        rdf:_1 "http://www.getty.edu/legal/image_request/"@x-default
    ] ;
    dc:creator [
        a rdf:Seq ;
        rdf:_1 "The J. Paul Getty Museum" 
    ] ;
    dc:date [
        a rdf:Seq ;
        rdf:_1 "2013-06-30T15:14:52"
    ] ;
    dc:description [
        a rdf:Alt ;
        rdf:_1 "Portrait of Madame Brunet; Édouard Manet, French, 1832 - 1883; France, Europe; about 1860 -1863, reworked by 1867; Oil on canvas; Unframed: 132.4 x 100 cm (52 1/8 x 39 3/8 in.), Framed: 153.7 x 121.9 x 7.6 cm (60 1/2 x 48 x 3 in.); 2011.53"@x-default
    ] ;
    dc:title [
        a rdf:Alt ;
        rdf:_1 "Portrait of Madame Brunet"@x-default
    ] .
</pre>
<p>The description is kind of heavy on information about the Getty, but light on information about the painting. For example it's not clear from the metadata that this is even a painting. You can see from the HTML detail page that there is a fair bit more about it available:</p>
<pre>
Édouard Manet (French, 1832 - 1883)
Portrait of Madame Brunet, about 1860 -1863, reworked by 1867, Oil on canvas
Unframed: 132.4 x 100 cm (52 1/8 x 39 3/8 in.)
Framed: 153.7 x 121.9 x 7.6 cm (60 1/2 x 48 x 3 in.)
The J. Paul Getty Museum, Los Angeles
</pre>
<p>Still, it's an incredible step forward to see these high resolution images being made available on the Web for download.</p>
