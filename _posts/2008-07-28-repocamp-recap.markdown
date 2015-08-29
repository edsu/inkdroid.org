---
layout: post
status: publish
published: true
title: RepoCamp recap
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 210
wordpress_url: http://inkdroid.org/journal/?p=210
date: '2008-07-28 06:29:19 +0000'
date_gmt: '2008-07-28 13:29:19 +0000'
tags:
- oai-ore
- web
- atom
- semweb
- atompub
- sword
- oauth
- premis
- repositories
- loc
comments: []
---
<p>So <a href="http://barcamp.org/RepoCamp">RepoCamp</a> was a lot of fun. The goal was to discuss repository interoperability--and at the very least repository <em>practitioners</em> got to interoperate, and have a few beers afterwards. Hats off to <a href="http://dfflanders.wordpress.com/">David Flanders</a> who clearly has got running these events down to a fine art.</p>
<p>I finally got to meet <a href="http://oxfordrepo.blogspot.com/">Ben O'Steen</a> after bantering with him on <a href="irc://freenode.net/code4lib">#code4lib</a> and <a href="irc://freenode.net/talis">#talis</a> ... and also got to chat with <a href="/http://wwmm.ch.cam.ac.uk/blogs/downing/">Jim Downing</a> (Cambridge Univ) about <a href="http://www.ukoln.ac.uk/repositories/digirep/index/SWORD">SWORD</a> stuff, and Stephan Drescher (Los Alamos National Lab) about <a href="http://web.archive.org/web/20100408161955/http://african.lanl.gov/ovalnet/validate.jsp">validating OAI-ORE</a>.</p>
<p>Stephan and I had a varied and wide ranging discussion about the web in general, which was a lot of fun. I really dug his metaphor of the web as an aquatic ecosystem, with interdependent organisms and shared environments. It reminded me a bit of how shocked I was to <a href="http://twitter.pbwiki.com/Communities">discover</a> how rich and varied the ecosystem is around a "simple" service like <a href="http://twitter.com">twitter</a>. If I ever return to school it will be to study something along the lines of <a href="http://webscience.org/">web science</a>.</p>
<p>It was also interesting to hear that other people saw a parallel between <a href="http://www.openarchives.org/ore/0.9/primer.html#ResourceMap">OAI-ORE Resource Maps</a> and<a href="http://tools.ietf.org/html/draft-kunze-bagit"> BagIt's</a> fetch.txt. The parallel being that both resource maps and bags are aggregations of web resources. Of course bags can also just be files on disk, it's when the fetch.txt is present in the bag that the package is made up of web resources. It would be interesting to see what vocabularies are available for expressing fixity information (md5 checksums and the like), and if they could be layered into the resource map atom serialization. Perhaps <a href="http://inkdroid.org/journal/2008/07/21/premis-v20-and-schema-munging/">PREMIS v2.0</a>? It might be fun to code up what a simple OAI-ORE resource map harvester would look like, that checked fixity values -- using LC's existing BagIt parallelretriever.py as a starting point. God I wish I could just hyperlink to that :-(</p>
<p>At any rate, I now need to investigate <a href="http://oauth.net/">OAuth</a> because Jim thinks it fits really nicely with <a href="http://bitworking.org/projects/atom/rfc5023.html">AtomPub</a> and <a href="http://www.ukoln.ac.uk/repositories/digirep/index/SWORD">SWORD</a> in particular. And if it's good enough for <a href="http://www.readwriteweb.com/archives/google_oauth.php">Google</a> it's probably worth checking out. Jim also said that there is a possibility that the SWORD 2.0 might take shape as an IETF RFC, which would be good to see.</p>
<p>Thanks to all that made it happen, and for all of you that traveled long distances to join us at the Library of Congress.</p>
