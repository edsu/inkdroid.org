---
layout: post
status: publish
published: true
title: set your data free ... with unapi
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 115
wordpress_url: http://www.inkdroid.org/journal/2006/08/28/set-your-data-free-with-unapi/
date: '2006-08-28 09:58:01 +0000'
date_gmt: '2006-08-28 16:58:01 +0000'
tags: []
comments:
- id: 3583
  author: Bruce
  author_email: bdarcus@gmail.com
  author_url: ''
  date: '2006-08-28 11:54:33 +0000'
  date_gmt: '2006-08-28 18:54:33 +0000'
  content: "I actually think the centralized community process is the achilles heal
    of both microformats and OpenURL. \r\n\r\nFor hCite, there's really just one semi-large
    hilll to get over (\"monolithic and flat\" BibTeX vs. \"relational component-based\"
    DC approach), and the rest is easy. \r\n\r\nI guess to me, though, the identifiers
    are more important than the markup anyway."
---

<p><a href="http://www.onebiglibrary.net/">Dan</a>, <a href="http://digitallibrarian.org/">Jeremy</a>, <a href="http://www.wallandbinkley.com/quaedam/">Peter</a>, <a href="http://purl.org/net/leftwing/blog">Michael</a>, <a href="http://web.archive.org/web/20130502121736/http://open-ils.org/blog/">Mike</a>, <a href="http://dilettantes.code4lib.org/">Ross</a> and I wrote an <a href="http://www.ariadne.ac.uk/issue48/chudnov-et-al/">article</a> in the latest Ariadne introducing the lightweight web protocol <a href="http://unapi.info">unAPI</a>. Essentially unAPI is an easy way to include references to digital objects in your HTML which can then be predictably retrieved by a machine...yes 'machine' includes JavaScript running in a browser :-) Dan and a really nice cross section of developers around the world have been working on this spec for over a year now and I think it could be poised to play an important role in the emerging <a href="http://www.tbray.org/ongoing/When/200x/2006/07/28/Open-Data">open data</a> movement.</p>
<p>Imagine you have a <a href="http://canarydatabase.org/" hover="for example dan's :)">citation database</a> which is searchable via the web. The search results include hits. Wouldn't it be nice to align your human viewable results with machine readable representations so that people could write <a href="http://www.liveclipboard.org">browser hacks</a> and the like to remix your application data?</p>
<p>As far as I can tell there are a few options available to help you do this (apart from doing something ad-hoc).</p>
<ol>
<li>use a <a href="http://microformats.org/wiki/citation">citation microformat</a> and mark up your HTML predictably so that it can be recognized and parsed</li>
<li>use <a href="http://www.w3.org/2004/01/rdxh/spec">GRDDL</a> to map your HTML to RDF via an XLST profile.</li>
<li><a href="http://research.talis.com/2005/erdf/wiki/Main/RdfInHtml">embed RDF in your HTML</a> essentially using an RDF microformat.</li>
<li><a href="http://en.wikipedia.org/wiki/OpenURL">OpenURL</a> and/or <a href="http://ocoins.info/">COinS</a> to link in page IDs to OpenURL servers.</li>
<li>use <a href="http://unapi.info">unAPI</a> and include a unapi server url (familiar autodiscovery like RSS/Atom), and identifiers (simple element attributes) and write a simple server side script that emits xml for a given identifier.</li>
</ol>
<p>I like microformats a lot and I think a citation format will eventually get done. But it's been a long time coming and there's no indication it's going to get done any time soon. What's more unAPI is bigger than just citation data--and it allows you to publish all kinds of rich data objects without waiting for a community to ratify a particular representation in HTML.</p>
<p>Options 2 and 3 use RDF which I actually like quite a bit as well. GRDDL implies a GRDDL aware browser which would be cool but is a bit heavy weight. XSLT will require clean XHTML--or pipelines to clean it. Embedding RDF in HTML using microformat techniques is compelling because you can theoretically process the RDF data similarly--whereas unAPI doesn't require any particular kind of machine readable format (apart from HTML). Actually there's nothing stopping you from using unAPI to link human viewable objects with RDF representations. The advantage unAPI has here is you can learn RDF if you want to, but you don't have to learn RDF to get going with unAPI today.</p>
<p>Option 4 leverages work done in the library community on citation linking. OpenURL routers are widely deployed in libraries around the world and COinS is a quasi-microformat for putting OpenURL context objects into your HTML so that they can be extracted and fired off at an OpenURL server. OpenURL is a relatively complex and subtle standard which can do a lot more than <a href="http://q6.oclc.org/">just citation linking</a>. Compared to OpenURL/COinS unAPI allows for ease of implementation in languages like JavaScript and provides a simple introspection mechanism for discovering what formats a particular resource is available in. AFAIK this can't be done simply using OpenURL/COinS. If I'm wrong, comments should be open. I would argue that the sheer power and flexibility of OpenURL paradoxically make it hard to understand...and that unAPI in Dan's adherence to a one-page-spec is more limited and simple. Less is more...</p>
<p>So if this piques your interest read the <a href="http://www.ariadne.ac.uk/issue48/chudnov-et-al/">article</a>. It does a much better job of describing the origins of the work, where it's headed, has examples and links out to sites/tools that use unAPI today.  I must admit I wrote very little of the article, and mostly contributed text snippets and screenshots of the <a href="http://validator.unapi.info">unAPI validator</a> I wrote, which uses my <a href="http://www.textualize.com/unapi">unapi ruby gem</a>.</p>
