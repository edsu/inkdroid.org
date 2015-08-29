---
layout: post
status: publish
published: true
title: We've got five years, my brain hurts a lot
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 251
wordpress_url: http://inkdroid.org/journal/?p=251
date: '2008-08-07 06:47:21 +0000'
date_gmt: '2008-08-07 13:47:21 +0000'
tags:
- standards
- uri
- url
- http
- web
- xri
- identifiers
comments:
- id: 70064
  author: Tony Hammond
  author_email: t.hammond@nature.com
  author_url: ''
  date: '2008-08-07 09:04:08 +0000'
  date_gmt: '2008-08-07 16:04:08 +0000'
  content: "Hi Ed:\r\n\r\nYou're right - and then you're wrong!\r\n\r\nOf course it
    was Bowie's \"Five Years\" that I was riffing in the post title - \"Five years,
    that's all we've got\".  (And yes I know it's really 10 years that IANA caps DNS
    registations at, but Dan Brickley actually mentioned a figure of 5 years in his
    post and that was too good to turn down.)\r\n\r\nBut I do believe you misrepresent
    my post and my follow up comments where I was not advocating the use of handles
    or DOIs. In fact I never referred to either in the original post and only fleetingly
    in my comments, e.g.\r\n\r\n\"My point was not that HTTP URIs are bad or that
    DOI is any way better but rather that there is a fairly general belief that URLs
    are pretty stable things if managed carefully and that once somebody procures
    (er, leases) a DNS auth name they can churn out semantic terms till the cows come
    home.\"\r\n\r\nThe purpose of the post was to point out the fact that HTTP URIs
    are commonly based on DNS (leastways the W3C TAG seems to think so) and as such
    have an inherent time limitation associated with them which was the reason behind
    Dan's original post. So, there was obviously some cause for concern which motivated
    his post. And yet, this time limitation is nowhere (that I know of) talked about
    in the semantic web canon.\r\n\r\nPlease do me the kindness to re-read what I
    said because I think you do me a mischief.\r\n\r\nCheers,\r\n\r\nTony"
- id: 70095
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2008-08-07 20:33:22 +0000'
  date_gmt: '2008-08-08 03:33:22 +0000'
  content: Point taken. Sometimes it's difficult to take one thing that someone says
    out of the context of things that they have said in the past :-)
---
<p>Recently there's been a few discussions about persistent identifiers on the web: in particular one about the <a href="http://lists.w3.org/Archives/Public/www-tag/2008Aug/0005.html">persistence of XRIs</a>, and another about the <a href="http://www.crossref.org/CrossTech/2008/07/five_years.html">use of</a> HTTP URIs in semantic web applications like <a href="http://dbpedia.org">dbpedia</a>. </p>
<p>As you probably know already, the w3c <a href="http://lists.w3.org/Archives/Public/www-tag/2008May/0078">publicly recommended</a> against the use of Extensible Resource Identifiers (<a href="http://www.oasis-open.org/committees/xri/faq.php">XRI</a>). The net effect of this was to <a href="http://www.equalsdrummond.name/?p=130">derail</a> the standardization of XRIs within <a href="http://www.oasis-open.org">OAISIS</a> itself. Part of the process that Ray Denenberg (my colleague at the Library of Congress) helped kick off was a further discussion between XRI people and the w3c-tag about what XRI specifically provides that HTTP URIs do not. Recently that discussion hit a key point by Stuart Williams:</p>
<blockquote><p>
... the point that I'm trying to make is that the issue is with the social and administrative policies associated with the DNS system - and the solution is to establish a separate namespace outside the DNS system that has different social/adminsitrative policies (particularly wrt persistent name segments) that better suits the requirements of the XRI community. There is the question as to whether that alternate social/administrative system will endure into the long term such the the persistence intended guarantees endure... or not - however that will largely be determined by market forces (adoption) and 'crudely' the funding regime that enables the administrative structure of XRI to persist - and probably includes the use of IPRs to prevent duplicate/alternate root <a href="http://en.wikipedia.org/wiki/Alternative_DNS_root">problems</a> which we have seen  in the DNS world.
</p></blockquote>
<p>It'll be interesting to see the response. I basically have the same issue with <a href="http://en.wikipedia.org/wiki/Digital_object_identifier">DOIs</a> and the <a href="http://www.handle.net/">Handle System</a> that they depend on. Over at <a href="http://www.crossref.org/CrossTech/2008/07/five_years.html">CrossTech</a> Tony Hammond suggests that the Handle System would make RDF assertions such as those that involve <a href="http://dbpedia.org">DBPedia</a> more persistent. But just how isn't entirely clear to me. It seems that Handles like URLs are only persistent to the degree that they are maintained. </p>
<p>I'd love to see a use case from Tony that describes just how DOIs and the Handle System would provide more persistence than HTTP URLs in the context of RDF assertions involving dbpedia. As Stuart said eloquently in his email:</p>
<blockquote><p>
Again just seeking to understand - not to take a particular position
</p></blockquote>
<p><em>PS. Sorry if the blog post title is too cryptic, it's Bowie's <a href="http://www.lyricsfreak.com/d/david+bowie/five+years_20036908.html">"Five Years"</a> which Tony's post (perhaps intentionally) reminded me of :-)</em></p>
