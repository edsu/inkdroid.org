---
layout: post
status: publish
published: true
title: A Tale of Two Searches
author:
  display_name: Administrator
  login: admin
  email: ed.summers@gmail.com
  url: http://www.inkdroid.org
author_login: admin
author_email: ed.summers@gmail.com
author_url: http://www.inkdroid.org
wordpress_id: 24
wordpress_url: http://www.inkdroid.org/journal/?p=24
date: '2005-08-19 14:46:20 +0000'
date_gmt: '2005-08-19 21:46:20 +0000'
tags:
- worldcat
- oclc
comments: []
---

<p>There's been some interesting discussion about <a href="http://www.loc.gov/z3950/agency/zing/srw/">SRW/U</a> vs <a href="http://opensearch.a9.com/">OpenSearch</a> on <a href="http://listserv.loc.gov/cgi-bin/wa?A2=ind0506&L=zng&T=0&F=&S=&P=6898">some</a> library <a href="http://web.archive.org/web/20100115140731/http://lists.webjunction.org:80/wjlists/web4lib/2005-July/thread.html">email lists</a>, <a href="http://dilettantes.blogspot.com/2005/08/librarians-are-arrogant-asses.html">blogs</a>, and over in <a href="irc://irc.freenode.net/code4lib">#code4lib</a>. I worked on the <a href="http://search.cpan.org/dist/SRU">SRU</a> and <a href="http://search.cpan.org/dist/CQL-Parser">CQL::Parser</a> modules for the <a href="http://www.ockham.org/">Ockham Initiative</a>, and have watched the comparisons to A9's RSS based OpenSearch with great interest. It's amazing how similar the goals of these two search technologies are, and yet how different the implementations and developer communities are.</p>
<p>At their most basic both SRW/U and OpenSearch aim to make it easy to conduct searches over the web. They both want to spread distributed searching over the web for the masses. SRW/U grew up before OpenSearch at the Library of Congress, mainly on a small implementors list. It allows you to use SOAP as a transport layer, or simple XML over HTTP using a RESTful interface. The results can really be any type of XML, and there is no lingua franca of DublinCore like in OAI-PMH. SRW/U comes with an attendent query specification known as the Common Query Language (CQL). So there are a fair amount of moving pieces in building even a barebones SRW/U server.</p>
<p>OpenSearch on the other hand is relatively new, and was developed by A9 (a subsidiary of Amazon who know a thing or two about building robust easy to use web services). Really it's just a RESTful interface for obtaining search results in RSS 2.0. There is <a href="http://blog.a9.com/blog/2005/07/27/opensearch-11-preview/">talk</a> that v1.1 might have some extensions to support more refined queries and xmlnamespaces for bundling different types of XML results...but at the moment there's no need to parse queries, or to be able to handle any flavor of XML other than RSS 2.0.</p>
<p>When comparing the two sites one thing makes itself clear: the SRW/U <a href="http://www.loc.gov/z3950/agency/zing/srw/">site</a> is a shambles--the specification itself is fragmented, and as a result there's information all over the place.  The OpenSearch <a href="http://opensearch.a9.com/">page</a> is neatly laid out with examples, rationale and even has a developers blog. The key here I think is that OpenSearch started simple and is slowly adding functionality that might be needed. SRW/U started out trying to simplify an existing standard and is slowly trying to make it simpler (there's even been suggestions to drop the SOAPy SRW altogether and focus on the RESTful SRU). They're moving in opposite directions.  I don't really have any doubts about which standard will see the widest deployment. The virtues of keeping things simple have been noted (very eloquently) by <a href="http://web.archive.org/web/20080517174900/http://www.adambosworth.net/archives/000031.html">Adam Bosworth</a>.</p>
<p>There is hope for library technologists though. OCLC is doing some really good work like their <a href="http://www.oclc.org/worldcat/open/isbnissnlinking/">Open WorldCat</a> program which allows you to link directly to local holdings for a book with a URL like:</p>
<p><a href="http://worldcatlibraries.org/wcpa/isbn/0670032506&loc=60014">http://worldcatlibraries.org/wcpa/isbn/0670032506&amp;loc=60014</a></p>
<p>Yeah, that's an ISBN and a ZIP code. Oh, and I installed Chris Fairbanks' nice <a href="http://www.williamsburger.com/wb/archives/opensearch-v-1-0">OpenSearch/WordPress plugin</a> in like 5 minutes. Here's an example:</p>
<p><a href="http://www.inkdroid.org/journal/os-query?s=code4lib">http://www.inkdroid.org/journal/os-query?s=code4lib</a>.</p>
<p>Drop it in an RSS reader and you can see whenever I write about code4lib. Not that you would really want to do that. Hmm but maybe it would be useful with say an <a href="http://web.archive.org/web/20110726164412/http://open-ils.org/blog/?p=34">online catalog</a> or bibliographic database!</p>
