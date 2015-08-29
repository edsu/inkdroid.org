---
layout: post
status: publish
published: true
title: SemanticProxy
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 472
wordpress_url: http://inkdroid.org/journal/?p=472
date: '2008-10-27 11:54:31 +0000'
date_gmt: '2008-10-27 18:54:31 +0000'
tags:
- rdf
- reuters
- calais
- nlp
comments:
- id: 77020
  author: Bookmarks for October 22nd through October 28th &#171; context:forge
  author_email: ''
  author_url: http://contextforge.com/2008/10/bookmarks-for-october-22nd-through-october-28th/
  date: '2008-10-28 19:40:56 +0000'
  date_gmt: '2008-10-29 02:40:56 +0000'
  content: "[...] inkdroid &raquo; Blog Archive &raquo; SemanticProxy - [...]"
- id: 77048
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2008-10-29 05:15:14 +0000'
  date_gmt: '2008-10-29 12:15:14 +0000'
  content: "From Alf Eaton via email (sorry I had registration turned off Alf, it's
    back on)\r\n\r\n<blockquote>\r\nHi Ed, ... [just] wanted to say that the OpenCalais
    ontology is supposed to be published 'in late Q4' - hopefully it'll be under a
    completely open license, but we'll see...http://opencalais.com/node/489\r\n</blockquote>"
- id: 77052
  author: Ttague
  author_email: tlt@intivo.com
  author_url: ''
  date: '2008-10-29 07:36:06 +0000'
  date_gmt: '2008-10-29 14:36:06 +0000'
  content: "Ed:\r\n\r\nTom Tague from Calais here.\r\n\r\nJust a short note on a couple
    of things. \r\n\r\nFirst - yes the URIs will be resolvable at the end of the year.
    We're going to focus at populating interesting endpoint information and links
    to other linked data assets for company, geography and a few other types for that
    release - we'll continue to expand the endpoints over time.\r\n\r\nSecond - yes,
    we really are going to publish the ontology at the end of the year. This required
    a little more work than we expected around naming standardization and other boring
    stuff - but it's coming. We have to figure out the exact language - but we plan
    to make it open and usable by all. \r\n\r\nLast - Terms of Service. We'll be revisiting
    these in the next few weeks with goals of 1) improving privacy safeguards, and
    2) removing ambiguity where possible. Ambiguity in TOS's is scary - and we want
    to eradicate it wherever possible. \r\n\r\nThanks for creating and making the
    sample code available - we appreciate anything that can jump start people's usage
    of Calais.\r\n\r\n I'd also encourage you to jump into events and facts. While
    entity extraction is cool - the real power of Calais starts to become more apparent
    when you begin playing with the relationships contained in the source material.\r\n\r\nRegards,"
- id: 80920
  author: Entity Extraction of URL&#8217;s made easy&#8230;. Partly. &laquo; HighTechCville
  author_email: ''
  author_url: http://hightechcville.wordpress.com/2009/02/24/entity-extraction-of-urls-made-easy-partly/
  date: '2009-02-24 16:38:20 +0000'
  date_gmt: '2009-02-24 23:38:20 +0000'
  content: "[...] a comment &raquo;  Thanks to Ed Summers at the Library of Congress
    for his post on SemanticProxy. Semantic proxy offers a dead simple API for feeding
    URL&#8217;s to the OpenCalais entity [...]"
---
<p>I spent a 1/2 an hour goofing around with with the new (to me) <a href="http://semanticproxy.opencalais.com/">SemanticProxy</a> service from Calais. You  give the service a URL along with your API key, and it'll go pull down the content and then give you back some HTML or RDF/XML. The call is pretty simple, it's just a GET:</p>
<pre>
GET http://service.semanticproxy.com/processurl/{key}/rdf/{url}
</pre>
<p>Here's an example of some <a href="http://inkdroid.org/data/obl.txt">turtle</a> you can get for my friend Dan's <a href="http://onebiglibrary.net">blog</a>. Obviously there's a lot of data there, but I wanted to see exactly what entities are being recognized, and their labels. It doesn't take long to notice that most of the resource types are in the namespace: <code>http://s.opencalais.com/1/type/em/e/</code></p>
<p>For example:</p>
<ul>
<li><code>http://s.opencalais.com/1/type/em/e/Person</code></li>
<li><code>http://s.opencalais.com/1/type/em/e/Country</code></li>
<li><code>http://s.opencalais.com/1/type/em/e/Company</code></li>
</ul>
<p>And most of these resources have a property which seems to assign a literal string label to the resource:</p>
<p>  <code>http://s.opencalais.com/1/pred/name</code> </p>
<p>It's kind of a bummer that these vocabulary terms don't resolve, because it would be sweet to get a bigger picture look at their vocabulary.</p>
<p>At any rate, with these two little facts gleaned from looking at the RDF for a few moments I wrote a little <a href="http://inkdroid.org/bzr/calais/entities.py">script</a> (using <a href="http://rdflib.net">rdflib</a>) which you feed a URL and it'll munge through the RDF and print out the recognized entities:</p>
<pre>
ed@curry:~/bzr/calais$ ./entities.py http://onebiglibrary.net
a Company named Lehman Bros.
a Company named Southwest Airlines
a Company named Costco
a Company named Everbank
a Holiday named New Year's Day
a ProvinceOrState named Illinois
a ProvinceOrState named Arizona
a ProvinceOrState named Michigan
a IndustryTerm named media ownership rules
a IndustryTerm named unreliable technologies
a IndustryTerm named bank
a IndustryTerm named health care insurance
a IndustryTerm named bank panics
a IndustryTerm named free software
a City named Lansing
a Facility named Big Library
a Person named Ralph Nader
a Person named Dan Chudnov
a Person named Shouldn't Bob Barr
a Person named John Mayer
a Person named Daniel Chudnov
a Person named Cynthia McKinney
a Person named Bob Barr
a Person named John Legend
a Country named Iraq
a Country named United States
a Country named Afghanistan
a Organization named FDIC
a Organization named senate
a Currency named USD
</pre>
<p>Quite easy and impressive IMHO. One thing that is missing from this output are the URIs that identify the various resources that are recognized like Dan's:</p>
<p><code><br />
http://d.opencalais.com/pershash-1/f7383d60-c27b-309c-889a-4e34d0938a0f<br />
</code></p>
<p>Like the vocabulary URIs it doesn't resolve (at least outside the Reuters media empire). Sure would be nice if it did. It's got the fact that it's a person cooked into it (pershash)...but otherwise seems to be just a simple hashing algorithm applied to the string "Dan Chudnov".</p>
<p>I didn't actually spend any time looking at the licensing issues around using the service. I've heard they are somewhat stultifying and vague, which is to be expected I guess. The news about <a href="http://www.nature.com/nature/journal/v455/n7214/full/455708a.html">Reuters and Zotero</a> isn't exactly encouraging ... but it is interesting to see how good some of the NLP analysis is getting at institutions like Reuters. It would be lovely to get a backend look at how this technology is actually being used internally at Reuters.</p>
<p>If you want to take this entities.py for a spin and can't be bothered to download it, just drop into <a href="irc://chat.freenode.net/code4lib">#code4lib</a> and ask #zoia for entities:</p>
<pre>
14:45 < edsu> @entities http://www.frbr.org/2008/10/21/xid-updates-at-oclc
14:45 < zoia> edsu: 'ok I found: a Facility Library of Congress, a Company FRBR 
              Review Group, a City York, a EmailAddress wtd@pobox.com, a Person 
              Jenn Riley, a Person Robert Maxwell, a Person Arlene Taylor, a 
              Person William Denton, a Person Barbara Tillett, a Organization 
              Congress, a Organization Open Content Alliance, a Organization 
              York \nUniversity'
</pre>
