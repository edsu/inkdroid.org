---
layout: post
status: publish
published: true
title: a citation microformat - when worlds collide
author:
  display_name: Administrator
  login: admin
  email: ed.summers@gmail.com
  url: http://www.inkdroid.org
author_login: admin
author_email: ed.summers@gmail.com
author_url: http://www.inkdroid.org
wordpress_id: 41
wordpress_url: http://www.inkdroid.org/journal/?p=41
date: '2005-11-03 11:55:54 +0000'
date_gmt: '2005-11-03 18:55:54 +0000'
tags: []
comments: []
---

<p><a href="http://web.archive.org/web/20081118135651/http://www.tjameswhite.com/blog/archives/2005/11/citation-microformat/">Tim White</a> has taken the time to <a href="http://microformats.org/discuss/mail/microformats-discuss/2005-November/001813.html">prod </a> the microformats list about the <a href="http://microformats.org/wiki/cite">citation microformat</a> that's been floating around for a few months. It's really encouraging that a developer at <a href="http://www.galegroup.com/">Gale</a> is thinking of using a citation microformat.  While I <a href="http://www.follettebooks.com">also</a> work in the industry I've been coming at the citation microformat from a slightly different angle.  For the past few months I've been monitoring activity in microformat land while watching another group of library technologists. Recently, Bill Burcham's <a href="http://lesscode.org/2005/10/21/baby-steps-to-synergistic-web-apps/">Baby Steps to Synergistic Web Apps</a> and <a href="http://lesscode.org/2005/11/02/half-a-baby-step/">Half a Baby Step</a> confirmed a nagging feeling I was having that the two communities were converging.</p>
<p>The "other" group are library/programmer friends of mine in  <a href="irc://irc.code4lib.org/code4lib">#code4lib</a>. These guys have been brainstorming about adapting the widely used <a href="http://web.archive.org/web/20071009055221/http://www.niso.org:80/committees/committee_ax.html">OpenURL</a> for use in HTML. OpenURL is used extensively in the academic library environment to enable linking to licensed content from online indexes. OpenURL essentially provides guidelines for encoding citation metadata in URLs, which has given birth to an ecosystem of vendors/developers who can provide resolver and content services. <a href="http://ocoins.info/">Context Object in Spans (COinS)</a> provides a microformatty way to put openurls (without reference to an openurl resolver) into HTML.  I'm not doing this work justice, so if you're curious to see how COinS got started there's lots of content in the <a href="http://web.archive.org/web/20070204041210/http://cipolo.med.yale.edu:80/mailman/listinfo/gcs-pcs-list">gather-create-share</a> discussion list. COinS exists in the wild at <a href="http://www.citeulike.org/">citeulike</a>, <a href="http://hublog.hubmed.org/archives/001163.html">hubmed</a>, <a href="http://law.wlu.edu/library/CLJC/">Current Law Journal Content</a>.</p>
<p>Now after reading up about microformats and <a href="http://microformats.org/discuss/mail/microformats-discuss/2005-August/000653.html">posting</a> to the discussion list, and talking to <a href="http://suda.co.uk/">Brian Suda</a> it became clear that COinS as it stands now isn't really usable as a microformat. Microformats center around marking up human readable data with semantic HTML, whereas COinS hides citation data encoded as a query string in HTML. However it is possible to encode openurl's as XML, so there's still hope I suppose. I want to sketch out what this could look like for the microformat wiki.</p>
<p>Before Tim's post I'd never even heard of the <a href="http://web.archive.org/web/20060928101302/http://www.niso.org/standards/resources/z3980-3.pdf">Standard Format for Downloading Bibliographic Records z39.80</a>. While it's only a draft it's used by Gale for providing downloadable citations, can be imported by <a href="http://www.refworks.com/">RefWorks</a> and most likely others. It bears a lot of resemblance to other citation formats that I've come across, but is obviously pre XML. The microformats brain storming that Brian has done has centered around DublinCore, BibTeX, MODS. At the moment I'm thinking BibTeX, Z39.80 and OpenURL stand the best chance of working. Honestly I think we could debate formats till the cows come home (and have left their cow paths ;-), but what microformats needs is some workable solution like semantic-html for OpenURL or Z39.80 and get some examples out there ane people using it while there's momentum.  It feels like there's a swell here and a wave to ride.</p>
