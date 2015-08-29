---
layout: post
status: publish
published: true
title: 'trackbacks at arXiv '
author:
  display_name: Administrator
  login: admin
  email: ed.summers@gmail.com
  url: http://www.inkdroid.org
author_login: admin
author_email: ed.summers@gmail.com
author_url: http://www.inkdroid.org
wordpress_id: 35
wordpress_url: http://www.inkdroid.org/journal/?p=35
date: '2005-09-22 08:01:15 +0000'
date_gmt: '2005-09-22 15:01:15 +0000'
tags: []
comments: []
---
<p>I just <a href="http://web.archive.org/web/20080724005305/http://endlesshybrids.com/2005/09/21/research-tools-enter-the-blogosphere/">read</a>  (thanks jeff) about how arXiv.org has <a href="http://arxiv.org/help/trackback/">implemented</a> experimental <a href="http://www.sixapart.com/pronet/docs/trackback_spec">trackback</a> support. Essentially this allows researchers who maintain online journals to simply reference an abstract like <a href="http://arxiv.org/abs/cs.DL/0503016">File-based storage of Digital Objects and constituent datastreams: XMLtapes and Internet Archive ARC files</a> (a great article by the way) and arXiv will receive a trackback ping at http://arxiv.org/trackback/0503016 that lets them know someone referenced the abstract. If you've followed this so far you might be wondering how the blogging software (wordpress, moveabletype, blosxom, etc) figure out where to ping arxiv.org. Take a look in the source code for the arXiv abstract and you'll see a chunk of RDF:</p>
<pre>

&lt;rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#'
  xmlns:dc='http://purl.org/dc/elements/1.1/'
  xmlns:trackback='http://madskills.com/public/xml/rss/module/trackback/'&gt;
&lt;rdf:Description
  rdf:about='http://arxiv.org/abs/cs/0503016'
  dc:identifier='http://arxiv.org/abs/cs/0503016'
  dc:title='File-based storage of Digital Objects and constituent datastreams: XMLtapes and Internet Archive ARC files'
  trackback:ping='http://arxiv.org/trackback/cs/0503016' /&gt;
&lt;/rdf:RDF&gt; 
</pre>
<p>So when you are finished composing a blog entry (like this one), wordpress will look at outbound links in blog entries, follow the URLs, look for trackback RDF in the HTML source, and then actually ping the respective trackback server. Pretty fancy to have all this stuff just happening automatically...and it's great to see how arXiv is continuing to blur the lines between electronic and traditional publishing models.</p>
<p>The fact that trackback autodiscovery uses RDF is a nice illustration for folks who are skeptical about the <a href="http://www.tantek.com/presentations/2004etech/realworldsemanticspres.html">semantic web</a> (note case).  I'm no expert, but I do think that the semantic web revolution will be a quiet one, and will not be televised (easily viewable).</p>
