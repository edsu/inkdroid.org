---
layout: post
status: publish
published: true
title: stepping backwards
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 3723
wordpress_url: http://inkdroid.org/journal/?p=3723
date: '2011-09-22 20:42:46 +0000'
date_gmt: '2011-09-23 03:42:46 +0000'
tags:
- html
- rdfa
- microformats
- microdata
- html5
- citations
comments:
- id: 85118
  author: google.com/accounts/o8&hellip;
  author_email: christophergutteridge@googlemail.com
  author_url: https://www.google.com/accounts/o8/id?id=AItOawm0m65jY9yTh8OhKSSTpRjD1IAlOJI7awA
  date: '2011-09-23 01:34:29 +0000'
  date_gmt: '2011-09-23 08:34:29 +0000'
  content: "I think it's really important to give people a reason to create data,
    and an immediate ROI for doing so...\r\n\r\neg. javascript &amp; PHP libraries
    which augment your site, validators, services which consume your data and do something
    neat with it which you can try out right away.\r\n\r\nUnless the company gets
    something in return, why waste the time and bandwidth on this stuff the academics
    waffle on about but doesn't make you money? (we need quick easy-to-understand
    answers to that question)"
- id: 85119
  author: google.com/accounts/o8&hellip;
  author_email: christophergutteridge@googlemail.com
  author_url: https://www.google.com/accounts/o8/id?id=AItOawm0m65jY9yTh8OhKSSTpRjD1IAlOJI7awA
  date: '2011-09-23 01:38:35 +0000'
  date_gmt: '2011-09-23 08:38:35 +0000'
  content: "(obviously schema.org has the rather killer SEO as it's ROI.)"
- id: 85120
  author: jakoblog.de/
  author_email: jakob@nichtich.de
  author_url: http://jakoblog.de/
  date: '2011-09-23 06:37:05 +0000'
  date_gmt: '2011-09-23 13:37:05 +0000'
  content: 'You wrote: "At the end of the day it seems like making your decisions
    based on things you want to enable is a good way forward. Are you trying to get
    your content to show up nicely on Facebook or Google–or both? …or are you trying
    to do something else, like advertise some RIS citation metadata that is related
    to an HTML page so a citation manager can pick it up?" That''s the point. Most
    discussions about which technologies to use, miss a clear goal. In the end most
    standards are just defined by concrete applications: we want to make data accessible
    to to Mendeley and Zotero, Google, Facebook etc. - so we must give it in forms
    they want, no matter how ill-designed these forms are.'
- id: 85121
  author: Chris Adams
  author_email: chris@improbable.org
  author_url: https://www.google.com/accounts/o8/id?id=AItOawnjYt4eA4hzgDgYRfMpqMFitgKISVvzTc8
  date: '2011-09-23 08:09:06 +0000'
  date_gmt: '2011-09-23 15:09:06 +0000'
  content: 'To expand Jakob''s comment, I always recommend trying to imagine being
    a freelance or internal webdev: why would I go to my client and suggest they pay
    me to add this feature? I can make that case for SEO, for Google/Facebook/Twitter
    sharing, etc. For complex XML metadata cathedrals it''s a lot harder to make the
    case that we should spend an enormous amount of time implementing a cumbersome
    spec in the hope that it will prove useful in the future.'
- id: 85122
  author: More on microdata vs &#8216;rel&#8217; attribute | Bibliographic Wilderness
  author_email: ''
  author_url: http://bibwild.wordpress.com/2011/09/28/more-on-microdata-vs-rel-attribute/
  date: '2011-09-27 21:15:42 +0000'
  date_gmt: '2011-09-28 04:15:42 +0000'
  content: "[...] Ed Summers for referencing my post suggesting a microdata solution
    to &#8216;alternate format&#8217; advertisement for [...]"
- id: 85124
  author: bibwild.wordpress.com/
  author_email: rochkind@jhu.edu
  author_url: http://bibwild.wordpress.com/
  date: '2011-09-27 21:16:11 +0000'
  date_gmt: '2011-09-28 04:16:11 +0000'
  content: "I started to write a comment, but as is my habit, it ended up turning
    into a lengthy essay of it's own here: \r\n\r\nhttp://bibwild.wordpress.com/2011/09/28/more-on-microdata-vs-rel-attribute/"
- id: 85338
  author: The Code4Lib Journal – HTML5 Microdata and Schema.org | Programmer Solution
  author_email: ''
  author_url: http://www.programsolution.info/the-code4lib-journal-html5-microdata-and-schema-org.html
  date: '2012-02-03 09:49:50 +0000'
  date_gmt: '2012-02-03 16:49:50 +0000'
  content: "[...] is to link your HTML presentation to an alternate representation
    of your data. Here’s a simple example of making RIS formatted citation data [...]"
---

<p><a href="http://bibwild.wordpress.com/about/">Jonathan Rochkind</a> recently wrote a good <a href="http://bibwild.wordpress.com/2011/09/22/alternate-format-microdata/">blog post</a> about using <a href="http://dev.w3.org/html5/md/">HTML5 Microdata</a> to help citation managers like <a href="http://www.mendeley.com/">Mendeley</a> and <a href="http://www.zotero.org/">Zotero</a> discover citation metadata that is available in formats such as <a href="http://en.wikipedia.org/wiki/RIS_(file_format)">RIS</a>. It's an excellent and detailed complement to Eric Hellman's <a href="http://go-to-hellman.blogspot.com/2011/07/spoonfeeding-library-data-to-search.html">piece</a> on the same subject.</p>
<p>I contributed to the <a href="http://unapi.info">unAPI</a> effort 5 years ago, which aimed to fix the same problem: making citation metadata available to browsers. I wrote the <a href="http://validator.unapi.info/">unAPI validator</a> which helped implementors confirm they were doing things right, <a href="http://www.ariadne.ac.uk/issue48/chudnov-et-al/">articles</a> were written, and we saw implementations in software such as the opensource integrated library system <a href="http://open-ils.org/">Evergreen</a> and the popular citation manager <a href="http://zotero.org">Zotero</a>, which at one point looked first for unAPI metadata in pages...perhaps it still does.</p>
<p>As Jonathan points out, there are some issues with unAPI, such as <a href="http://microformats.org/wiki/abbr-design-pattern#Accessibility_issues">accessibility problems</a> around Microformats in general, which unAPI was partly modeled on. <a href="http://dev.w3.org/html5/md/">HTML5 Microdata</a> and <a href="http://www.w3.org/TR/xhtml-rdfa-primer/">RDFa</a> weren't around when we were working on unAPI, so I think Jonathan is right that it definitely makes sense to think about using these technologies nowadays instead of unAPI when making structured metadata available in HTML. I personally think the same thing goes for <a href="http://en.wikipedia.org/wiki/COinS">COinS</a> where OpenURL key value pairs are used to express the metadata. Companies like Google, Microsoft, Yahoo and Facebook actively scrape HTML5 Microdata and RDFa, and there are vocabularies for describing books and articles. And because these technologies are deployed wider than the small niche that libraries occupy, they fit the Web better.</p>
<p>But there is a fair bit of turmoil in the structured-data-on-the-Web space. Today's <a href="https://www.facebook.com/f8?sk=app_283743208319386">F8</a> product announcements seemed to indicate that Facebook is <a href="https://developers.facebook.com/docs/beta/">deepening its use</a> of the <a href="https://developers.facebook.com/docs/opengraph/">OpenGraphProtocol</a>, which is their rebranding of RDFa. We're seeing the <a href="http://www.iptc.org">International Press Telecommunications Council</a> standardizing <a href="http://dev.iptc.org/rNews">rNews</a> as an RDFa vocabulary for expressing online news metadata. And meanwhile Google, Microsoft and Yahoo are continuing to work on schema.org Microdata vocabularies. The recent <a href="http://semanticweb.com/schema-org-workshop-a-path-forward_b23387">Schema.org Workshop</a> seems to anticipate significant changes in that space in the near future, particularly regarding the output of the W3C <a href="http://www.w3.org/2001/sw/interest/webschema.html">Web Schema</a> and <a href="http://www.w3.org/wiki/Html-data-tf">HTML Data</a> task forces.</p>
<p>At <a href="http://lod-lam.net/summit/2011/09/16/525/">LODLAM-DC</a> we had a good conversation about RDFa, Microdata, Microformats and JSON publishing options for the cultural heritage sector. Perhaps I was just projecting, but it seemed like there was a fair bit of uncertainty about which to use. At the end of the day it seems like making your decisions based on things you want to enable is a good way forward. Are you trying to get your content to show up nicely on Facebook or Google--or both?</p>
<p>...or are you trying to do something else, like advertise some RIS citation metadata that is related to an HTML page so a citation manager can pick it up?</p>
<p>Even before the pixels had dried on the first version of the unAPI spec I was left with the nagging feeling that it had missed the point. I felt like we hadn't really used the mechanics of the Web that were already there, and had sort of inadvertently succumbed to how standards development would be lampooned later by XKCD:</p>
<div style="text-align: center;"><a href="http://xkcd.com/927/"><img src="http://imgs.xkcd.com/comics/standards.png"/></a></div>
<p>Specifically, I felt like we could have documented an even simpler pattern, namely using a &lt;link&gt; or &lt;a&gt; elements in conjunction with the <em>rel</em> and <em>type</em> parameters. So if you have a search result that is available as RIS, why not add this to your &lt;head&gt; element:</p>
<pre lang="html">
<link rel="alternate" type="application/x-research-info-systems" href="/search?q=cartoons&format=ris" />
</pre>
<p>My IRC conversation with Jonathan about his blog post was rolling around in my head when this Kurt Vonnegut quote went by in my Twitter stream:</p>
<div style="text-align: center"><a href="https://twitter.com/Kurt_Vonnegut/status/116889502353588226"><img src="http://inkdroid.org/images/step-backward.png" style="border: thin gray solid;"/></a></div>
<p>It seemed oddly appropriate given the uncertainty in the structured-data-on-the-web marketplace, and some missteps with unAPI. If all we want to do is replace unAPI with something easier and more web-friendly, then why not fall back on basic functionality that has been in HTML for years?</p>
<p>If you want to make structured metadata available directly in HTML, sure HTML5 Microdata and RDFa are important technologies to use. But if all you want to do is link to an external metadata file I personally think the scholarly community would be better served by a simpler and less controversial approach.</p>
