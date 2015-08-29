---
layout: post
status: publish
published: true
title: metadata from Getty’s Open Content Program (part 2)
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 6097
wordpress_url: http://inkdroid.org/journal/?p=6097
date: '2013-09-13 10:16:07 +0000'
date_gmt: '2013-09-13 17:16:07 +0000'
tags:
- html
- rdf
- images
- getty
- photography
- sculture
comments: []
---
<p>A few weeks ago I wrote <a href="http://inkdroid.org/journal/2013/08/13/metadata-from-gettys-open-content-program/">a brief post</a> about the embedded metadata found in images from the (awesome) <a href="http://www.getty.edu/about/opencontent.html">Getty Open Content Program</a>. This led to a useful exchange with <a href="https://twitter.com/bpod">Brenda Podemski</a> on Twitter, which she gathered together with <a href="http://storify.com/bpod/getty-open-content-and-embedded-metadata">Storify</a>. I promised her I would write another blog post that showed how the metadata could be expressed a little bit better.</p>
<p>It's hard to read RDF as XML and Turtle isn't for everyone, so here's a picture of part of the XMP RDF metadata that is included in the highres download for a <a href="http://search.getty.edu/museum/records/musobject?objectid=70019">photo</a> by <a href="https://en.wikipedia.org/wiki/Eug%C3%A8ne_Atget">Eugène Atget</a> of a sculpture <a href="https://fr.wikipedia.org/wiki/Bosquet_de_l'Arc-de-Triomphe">Bosquet de l'Arc de Triomphe</a> by <a href="https://en.wikipedia.org/wiki/Jean-Baptiste_Tuby">Jean-Baptiste Tuby</a>. I haven't portrayed everything in the file since it would clutter up the point I'm trying to make.</p>
<p><img src="http://inkdroid.org/images/getty1.png" alt="Original Description" /></p>
<p>Depicted here are two resources described in the RDF, the JPEG file itself and what the IPTC vocabulary calls an <a href="http://www.iptc.org/std/photometadata/documentation/GenericGuidelines/index.htm#!Documents/iptcextensionartworkorobjectintheimagesection.htm">Artwork or Object</a>. Now, it is good that the description distinguishes between the file and the photograph. The Dublin Core somewhat famously (in metadata circles) call this the <a href="http://wiki.dublincore.org/index.php/Glossary/One-to-One_Principle">One-To-One Principle</a>. But notice how there is a <em>dc:description</em> attached to the file resource with lots of useful information concatenated together as a string? My question to Brenda was whether that string was actually available as structured data, and could it be expressed differently? Her <a href="https://gist.github.com/bepod/6288070">response</a> seemed to indicate that it was.</p>
<p>My suggestion is to unpack and move that concatenated string to describe the photograph, like so:</p>
<p><img src="http://inkdroid.org/images/getty2.png" alt="Unpacked description" /></p>
<p>Notice how the dimensions, format, type and were broken out into separate assertions about the photograph? I also quickly modified the description to use the Dublin Core vocabulary since it was more familiar to me. I wasn't able to quickly find good properties for height and width, but I imagine they are out there somewhere, and if not there could be.</p>
<p>Of course, one could go further, and say there are really three resources: the file, the photograph, and the sculpture.</p>
<p><img src="http://inkdroid.org/images/getty3.png" alt="Added Sculpture" /></p>
<p>But this could be extra work for the Getty, if they don't have this level of description yet. The half-step of enriching the description by indicating that it is a photograph of particular dimensions in a particular format seems like a useful thing to do for this example though, especially if they have that structured data already. My particular vocabulary choices (dc, foaf, etc) aren't important compared to hanging the descriptions off of the right resources.</p>
<p>But, and this is a <em>doozy</em> of a but, it looks like from other metadata in the RDF that the metadata is being input with Photoshop. So while it is technically possible to embed this metadata in XMP as RDF, it is quite likely that Photoshop doesn't give you the ability to enter it. In fact, it is fairly common for some image processing applications to strip parts or all of the embedded metadata. So to embed these richer descriptions into the files one might need to write a small program to do it.</p>
<p>There is another place where the metadata could be embedded though. What if <a href="http://search.getty.edu/museum/records/musobject?objectid=70019">the webpage</a> for the item had embedded RDFa or Microdata in it that expressed this information? If they could commit to a stable URL for the item it would be a perfect place for both the human and machine readable description. All they would have to do would be to link the XMP metadata to it somehow, and adjust the templates they are using that drive the HTML display.</p>
