---
layout: post
status: publish
published: true
title: scoping intertwingularity
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2067
wordpress_url: http://inkdroid.org/journal/?p=2067
date: '2010-07-01 07:16:25 +0000'
date_gmt: '2010-07-01 14:16:25 +0000'
tags:
- rdf
- linkeddata
- intertwingularity
- yaks
- email
comments: []
---
<p><a href="http://www.flickr.com/photos/danbri/4030764915/"><img src="http://inkdroid.org/images/share-what-we-know.jpg" style="float: right; border: none; margin-left: 10px; width: 200px;" /></a></p>
<p><a href="http://danbri.org/words/">Dan Brickley's</a> <a href="http://lists.w3.org/Archives/Public/public-lod/2010Jul/0020.html">recent post</a> to the public-lod discussion list about the <a href="http://www.w3.org/2010/06/rdf-work-items/table">future of RDF</a> is one of the best articulations of why I appreciate the practice of linking data:</p>
<blockquote><p>
And why would anyone care to get all this semi-related, messy Web data? Because problems don't come nicely <a href="http://en.wikipedia.org/wiki/Scope_(project_management)">scoped</a> and packaged into cleanly distinct <a href="http://en.wikipedia.org/wiki/Domain_knowledge">domains</a>. Whenever you try to solve one problem, it borders on a dozen others that are a higher priority for people elsewhere. You think you're working with '<a href="http://www.w3.org/TR/rdfcal/">events</a>' data but find yourself with information describing <a href="http://musicontology.com/">musicians</a>; you think you're describing musicians, but find yourself describing <a href="http://www.w3.org/2003/12/exif/">digital images</a>; you think you're describing digital images, but find yourself describing <a href="http://www.geonames.org/ontology/">geographic locations</a>; you think you're building a database of geographic locations, and find yourself modeling the opening hours of the <a href="http://www.epimorphics.com/public/vocabulary/org.html">businesses</a> based at those locations. To a poet or idealist, these interconnections might be beautiful or inspiring; to a project manager or product manager, they are as likely to be <a href="http://browsertoolkit.com/fault-tolerance.png">terrifying</a>.</p>
<p>Any practical project at some point needs to be able to say "Enough with all this <a href="http://www.youtube.com/watch v=iE2A95HXP4Y">intertwingularity</a>! this is our bit of the problem space, and forget the rest for now". In those terms, a linked Web of RDF data provides a kind of safety valve. By dropping in identifiers that link to a big pile of other people's data, we can hopefully make it easier to keep projects nicely scoped without needlessly restricting future functionality. An events database can remain an events database, but use <a href="http://musicbrainz.org/">identifiers for artists and performers</a>, making it possible to filter events by properties of those participants. A <a href="http://geonames.org">database of places</a> can be only a link or two away from records describing the opening hours or business offerings of the things at those places. <a href="http://linkeddata.org">Linked Data</a> (and for that matter <a href="http://www.foaf-project.org/">FOAF</a>...) is fundamentally a story about information sharing, rather than about triples. Some information is in RDF triples; but lots more is in documents, videos, spreadsheets, custom formats, or [hence FOAF] <a href="http://en.wikipedia.org/wiki/Thought">in people's heads</a>.
</p></blockquote>
<p>Dan's description is also a nice illustration of how the web can help us avoid <a href="http://joi.ito.com/weblog/2005/03/05/yak-shaving.html">Yak Shaving</a>, by leveraging the work of others:</p>
<blockquote><p>
Any seemingly pointless activity which is actually necessary to solve a problem which solves a problem which, several levels of recursion later, solves the real problem you're working on.
</p></blockquote>
<p>I'm just stashing that away here so I can find it again when I need it. Thanks danbri!</p>
