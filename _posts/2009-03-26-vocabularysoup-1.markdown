---
layout: post
status: publish
published: true
title: VocabularySoup (1)
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 923
wordpress_url: http://inkdroid.org/journal/?p=923
date: '2009-03-26 06:20:23 +0000'
date_gmt: '2009-03-26 13:20:23 +0000'
tags:
- html
- rdf
- rdfa
- web
- microformats
- dublincore
- semweb
comments: []
---

<p>It's been great to see <a href="http://www.w3.org/TR/xhtml-rdfa-primer/">RDFa</a> being picked up by web2.0 publishers like Digg and MySpace.  You can use the <a href="http://www.w3.org/2007/08/pyRdfa/">RDFa Distiller</a> to extract the RDFa from a given web page <em>u</em> by constructing a URI like:</p>
<pre>
http://www.w3.org/2007/08/pyRdfa/extract?format=turtle&uri=<em>u</em>
</pre>
<p>Which translates kind of nicely into a command line utility to add to your ~/bin:</p>
<pre>
#!/bin/sh
curl "http://www.w3.org/2007/08/pyRdfa/extract?format=turtle&uri=$1"
</pre>
<p>So with that little shell script in hand I can now look at the RDFa something like Yo La Tengo's page on MySpace:</p>
<pre>
ed@rorty:~$ rdfa http://www.myspace.com/yolatengo

@prefix myspace: &lt;http://x.myspacecdn.com/modules/sitesearch/static/rdf/profileschema.rdf#&gt; .
@prefix rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt; .
@prefix rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt; .
@prefix xhv: &lt;http://www.w3.org/1999/xhtml/vocab#&gt; .
@prefix xml: &lt;http://www.w3.org/XML/1998/namespace&gt; .
@prefix xsd: &lt;http://www.w3.org/2001/XMLSchema#&gt; .

&lt;http://www.myspace.com/YO LA TENGO&gt; a myspace:MusicProfile ;
     myspace:profileType "Music" .

&lt;http://www.myspace.com/yolatengo&gt; xhv:stylesheet
         &lt;http://x.myspacecdn.com/modules/common/static/css/global_j03fjftp.css&gt;,
         &lt;http://x.myspacecdn.com/modules/common/static/css/header/profileheader008.css&gt;,
         &lt;http://x.myspacecdn.com/modules/common/static/css/myspace_jvtnwmp4.css&gt;,
         &lt;http://x.myspacecdn.com/modules/common/static/css/profile_adl4r-y8.css&gt;,
         &lt;http://x.myspacecdn.com/modules/profiles/static/css/musicv2_wo4zzzd-.css&gt; ;
     myspace:addToFriends &lt;http://friends.myspace.com/index.cfm?fuseaction=invite.addfriend_verify&friendID=91362837&gt; ;
     myspace:friendCount "33993" ;
     myspace:headline "\"&lt;b&gt;YO LA TENGO IS MURDERING THE CLASSICS&lt;/b&gt;\""^^rdf:XMLLiteral ;
     myspace:photo &lt;http://viewmorepics.myspace.com/index.cfm?fuseaction=user.viewAlbums&friendID=91362837&gt; ;
     myspace:sendMessage &lt;http://messaging.myspace.com/index.cfm?fuseaction=mail.message&friendID=91362837&MyToken=62964687-f06b-4b8b-8227-ba97f133a029&gt; ;
     myspace:viewPictures &lt;http://viewmorepics.myspace.com/index.cfm?fuseaction=user.viewAlbums&friendID=91362837&gt; .
</pre>
<p>Today I <a href="http://lists.w3.org/Archives/Public/public-rdfa/2009Mar/0064.html">learned</a> that "the world's largest community for sharing presentations" <a href="http://slideshare.net">SlideShare</a> is now using RDFa as well. For example here is the metadata SlideShare makes available for <a href="http://derivadow.com">Tom Scott</a>'s recent presentation at CERN for the 20th birthday of the web:</p>
<pre>
ed@rorty:~$ rdfa http://www.slideshare.net/derivadow/www20-what-does-the-history-of-the-web-tell-us-about-its-future

@prefix dc: &lt;http://purl.org/dc/terms/&gt; .
@prefix hx: &lt;http://purl.org/NET/hinclude&gt; .
@prefix media: &lt;http://search.yahoo.com/searchmonkey/media/&gt; .
@prefix rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt; .
@prefix rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt; .
@prefix xhv: &lt;http://www.w3.org/1999/xhtml/vocab#&gt; .
@prefix xml: &lt;http://www.w3.org/XML/1998/namespace&gt; .
@prefix xsd: &lt;http://www.w3.org/2001/XMLSchema#&gt; .

&lt;http://www.slideshare.net/derivadow/www20-what-does-the-history-of-the-web-tell-us-about-its-future&gt; dc:creator "Tom Scott"@en ;
     dc:description "Following my invitation to speak at the WWW@20 celebrations - this is my attempt to squash the interesting bits into a s"@en ;
     media:height "355"@en ;
     media:presentation &lt;http://static.slidesharecdn.com/swf/ssplayer2.swf?doc=www20departmentatalpresentation-090325122157-phpapp02&stripped_title=www20-what-does-the-history-of-the-web-tell-us-about-its-future&gt; ;
     media:thumbnail &lt;http://cdn.slidesharecdn.com/www20departmentatalpresentation-090325122157-phpapp02-thumbnail?1238020296&gt; ;
     media:title "www@20 what does the history of the web tell us about its future?"@en ;
     media:width "425"@en ;
     xhv:alternate &lt;http://www.slideshare.net/rss/latest&gt; ;
     xhv:icon &lt;http://www.slideshare.net/favicon.ico&gt; ;
     xhv:stylesheet &lt;http://public.slidesharecdn.com/v3/styles/slideview.css?1238021672&gt; .
</pre>
<p>I guess it's nerdy but I find it really interesting to look at the vocabulary usage. You can see SlideShare is using Yahoo's media vocabulary as well as DublinCore; and MySpace has opted to create their own <a href="http://x.myspacecdn.com/modules/sitesearch/static/rdf/profileschema.rdf">vocabulary</a>. The really wonderful thing about RDF is that it allows you to reuse parts of someone else's vocabulary, in addition to creating your own, or doing both. As a technology RDF <em>encourages</em> this, as do documents like <a href="http://www4.wiwiss.fu-berlin.de/bizer/pub/LinkedDataTutorial/#whichvocabs">How to Publish Linked Data on the Web</a> and the <a href="http://www.w3.org/2001/sw/SW-FAQ#findont">Semantic Web FAQ</a>.</p>
<p>A common perception of the 14 year <a href="http://dublincore.org">Dublin Core</a> effort is that it has largely been about coming to consensus about a set of vocabulary terms to use when describing web resources. I think it's important to recognize that the <a href="http://dublincore.org">Dublin Core</a> community has also been a role model for how to create and share your vocabulary on the web so it can be assembled, discovered, understood, used, and remixed.  More recently the <a href="http://microformats.org">Microformats</a> community has done something similar, but by targeting web developers (who are actually coding up the HTML) rather than library/infosci professionals. The real message of the Dublin Core and Microformats efforts aren't that there ought to be one vocabulary to describe information resources, but that we can use the web to collaboratively build and deploy the vocabularies we need.</p>
<p>As we see more and more metadata making it online as RDFa, LinkedData and Microformats the community really needs tool support for visualizing vocabulary use. These tools will aid data publishers in choosing what vocabularies they could use in their descriptions. They will also aid consumers, harvesters of the web to understand which vocabularies are important to understand (a.k.a write code for). How can we make this easier?</p>
<p>I guess the simplest visualization is the 'view source' feature that was built into early web browsers, and enabled the propagation of HTML--which is what my command line shell script approximates, and other plugins like <a href="https://addons.mozilla.org/en-US/firefox/addon/4106">Operator</a> and <a href="http://web.archive.org/web/20120120163224/http://rdfa.digitalbazaar.com:80/fuzz/trac/">Fuzz</a> make much more friendly. Another approach is to throw a query at an index like <a href="http://sindice.com/">Sindice</a> which indexes large swathes of linked data, rdfa and microformats, and easily click through to the "Ontologies" view for a search result that lists the vocabularies used.  Jay Luker covered some of these approaches in his <a href="http://docs.google.com/Present?docid=df2kgdvp_200cn99qqfq">Vocabularies for Linked Data: Finding, Selecting, Creating</a> presentation at code4lib last month.</p>
<p>But it would be really interesting to see more tools that detailed vocabulary usage in a more aggregated way--kind of like what Google did in 2005 for HTML in their <a href="http://code.google.com/webstats/">Web Authoring Statistics</a>. Are some people already doing this? I hope you know of something I don't.</p>
<p><em>Up next in part 2 (if I ever get the nerve to publish it) my insane ramblings about why I think XML Schema is nice, but not really web friendly enough to encourage metadata vocabulary use/reuse on the web.</em></p>
