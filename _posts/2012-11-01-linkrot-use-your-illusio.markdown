---
layout: post
status: publish
published: true
title: 'linkrot: use your illusion'
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 5318
wordpress_url: http://inkdroid.org/journal/?p=5318
date: '2012-11-01 08:01:04 +0000'
date_gmt: '2012-11-01 15:01:04 +0000'
tags:
- urls
- linkrot
- terms-of-service
comments:
- id: 85480
  author: google.com/accounts/o8&hellip;
  author_email: markleightonfisher@gmail.com
  author_url: https://www.google.com/accounts/o8/id?id=AItOawno6PSI9v-DWjDQ6hJORHSiNf9oxVDhrYU
  date: '2012-11-21 10:26:00 +0000'
  date_gmt: '2012-11-21 17:26:00 +0000'
  content: You might want to look at the Purdue University Research Repository, as
    it provides specific Terms of Service (https://research.hub.purdue.edu/legal)
    for the research datasets it stores.
- id: 85482
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2012-11-25 04:22:10 +0000'
  date_gmt: '2012-11-25 11:22:10 +0000'
  content: Mark, many thanks for the link to the PURR ToS. The details about the personal
    information that HubZero collects is really important. I guess it's good that
    it lets people know up front that you can do whatever you want with the account
    at any time. But I was actually thinking of ToS that help users understand what
    a "repository" does in the context of Purdue. Can people reliably link to resources
    housed in the repository? How is this ToS distinguish PURR as a different sort
    of application that is concerned with the longevity of scholarly publishing on
    the Web?
---

<p>Mike Giarlo <a href="http://www.personal.psu.edu/mjg36/blogs/2012/10/understanding-eg-dois-for-data-sets.html">wrote a bit</a> last week about the issues of citing datasets on the Web with <a href="https://en.wikipedia.org/wiki/Digital_object_identifier">Digital Object Identifiers (DOI)</a>. It's a really nice, concise characterization of why libraries and publishers have promoted and used the DOI, and <em>indirect identifiers</em> more generally. Mike defines indirect identifiers as</p>
<blockquote><p>
... identifiers that point at and resolve to other identifiers.
</p></blockquote>
<p>I might be reading between the lines a bit, but I think Mike is specifically talking about any identifier that has some documented or ad-hoc mechanism for turning it into a Web identifier, or <a href="https://en.wikipedia.org/wiki/Uniform_Resource_Locator">URL</a>. A quick look at the Wikipedia <a href="https://en.wikipedia.org/wiki/Category:Identifiers">identifier</a> category yields lots of these, many of which (but not all) can be expressed as a <a href="https://en.wikipedia.org/wiki/Uniform_Resource_Identifier">URI</a>.</p>
<p>The reason why I liked Mike's post so much is that he was able to neatly summarize the psychology that drives the use of indirect identifier technologies:</p>
<blockquote><p>
... cultural heritage organizations and publishers have done a pretty poor job of persisting their identifiers so far, partly because they didn’t grok the commitment they were undertaking, or because they weren’t deliberate about crafting sustainable URIs from the outset, or because they selected software with brittle URIs, or because they fell flat on some area of sustainability planning (financial, technical, or otherwise), and so because you can’t trust these organizations or their software with your identifiers, you should use this other infrastructure for minting and managing quote persistent unquote identifiers
</p></blockquote>
<p>Mike goes on to get to the heart of the problem, which is that indirect identifier technologies don't solve the problem of broken links on the Web, they just push it elsewhere. The real problem of maintaining the indirect identifier when the actual URL changes becomes <em>someone else's problem</em>. Out of sight, out of mind ... except it's not really out of sight right? Unless you don't really care about the content you are putting online. </p>
<p>We all know that <a href="https://en.wikipedia.org/wiki/Link_rot">linkrot</a> on the Web is <a href="http://arxiv.org/abs/1105.3459">a real thing</a>. I would be putting my head in the sand if I were to say it wasn't. But I would also be putting my head in the sand if I said that things don't <a href="http://www.washingtonpost.com/wp-dyn/content/article/2007/10/23/AR2007102301784.html">go missing</a> from our brick and mortar libraries. But still, we should be able to do better than 1/2 the URLs in <a href="http://arxiv.org">arXiv</a> going dead right? I make a living as a web developer, I'm an occasional advocate for linked data, and I'm a big fan of the <a href="http://www.w3.org/2001/tag/doc/URNsAndRegistries-50">work</a> Henry Thompson and David Orchard did for the W3C analyzing the use of alternate identifier schemes on the Web...so, admittedly, I'm a bit of a zealot when it comes to promoting URLs as identifiers, and taking the Web seriously as an information space.</p>
<p>Mike's post actually kicked off what I thought was a useful Twitter <a href="https://twitter.com/mjgiarlo/status/262373950447837184">conversation</a> (yes they can happen), which left me contemplating the future of libraries and archives on (or in) the Web. Specifically, it got me thinking that perhaps libraries and archives of the not too distant future will be places that take special care in how they put content on the Web, so that it can be accessed over time, just like a traditional physical library or archive. The places where links and the content they reference are less likely to go dead will be the new libraries and archives. These may not be the same institutions we call libraries today. Just like today's libraries, these new libraries may not necessarily be free to access. You may need to be part of some community to access them, or to pay some sort of subscription fee. But some of them, and I hope most, will be public assets.</p>
<p>So how to make this happen? What will it look like? Rather than advocating a particular identifier technology I think these new libraries need to think seriously about providing <a href="https://en.wikipedia.org/wiki/Terms_of_service">Terms of Service</a> documents for their content services. I think these library ToS documents will do a few things.</p>
<ul>
<li>They will require the library to think seriously about the service they are providing. This will involve meetings, more meetings, power lunches, and likely lawyers. The outcome will be an organizational understanding of what the library is putting on the Web, and the commitment they are entering into with their users. It won't simply be a matter of a web development team deciding to put up some new website...or take one down. This will likely be hard, but I think it's getting easier all the time, as the importance of the Web as a publishing platform becomes more and more accepted, even in conservative organizations like libraries and archives.</li>
<li>The ToS will address the institutions commitment for continued access to the content. This will involve a clear understanding of the URL namespaces that the library manages, and a statement about how they will be maintained over time. The Web has built in mechanisms for content moving from place to place (<a href="https://en.wikipedia.org/wiki/HTTP_301">HTTP 301</a>), and for when resources are removed (<a href="https://en.wikipedia.org/wiki/HTTP_401#4xx_Client_Error">HTTP 410</a>), so URLs don't need to be written in stone. But the library needs to commit to how resources will redirect permanently to new locations, and for how long--and how they will be removed.</li>
<li>The ToS will explicitly state the licensing associated with the content, preferably with Creative Commons licenses (hey I'm daydreaming here) so that it can be confidently used.</li>
<li>Libraries and archives will develop a shared palette of ToS documents. Each institution won't have it's own special snowflake ToS that nobody reads. There will be some normative patterns for different types of libraries. They will be shared across consortia, and among peer institutions. Maybe they will be incorporated into, or reflect shared principles found in documents like ALA's <a href="https://en.wikipedia.org/wiki/Library_Bill_of_Rights">Library Bill of Rights</a> or SAA's <a href="http://www2.archivists.org/statements/saa-core-values-statement-and-code-of-ethics">Code of Ethics.</a></li>
</ul>
<p>I guess some of this might be a bit reminiscent of the work that has gone into what makes a <a href="http://www.crl.edu/Archiving%20%2526%20Preservation/Digital%20Archives/Metrics%20for%20Assessing%20and%20Certifying-0">trusted repository</a>. But I think a Terms of Service between a library/archive and its researcher is something a bit different. It's more outward looking, less interested in certification and compliance and more interested in entering into and upholding a contract with the user of a collection.</p>
<p>As I was writing this post, Dan Brickley <a href="https://twitter.com/danbri/status/263834404592427010">tweeted</a> about a <a href="http://ecommons.eu/wp-content/uploads/Tony-Ageh-%E2%80%93%C2%A0The-Economies-of-Sharing.pdf">recent talk</a> Tony Ageh (head of the archive development team at the BBC) gave at the recent <a href="http://ecommons.eu/">Economies of the Commons</a> conference. He spoke about his ideas for a future Digital Public Space, and the role that archives and organizations like the BBC play in helping create it.</p>
<blockquote><p>
Things no longer ‘need’ to disappear after a certain period of time.  Material that once would have flourished only briefly before languishing under lock and key or even being thrown away — can now be made available forever. And our Licence Fee Payers increasingly expect this to be the way of things. We  will soon need to have a very, *very* good reason for why  anything at all disappears from view or is not permanently accessible in some way or other.</p>
<p>That is why the Digital Public Space has placed the  continuing and permanent availability of all publicly-funded  media, and its associated information, as the default and founding principle.
</p></blockquote>
<p>I think Tony and Mike are right. Cultural heritage organizations need to think more seriously, and more long term about the content they are putting on the Web. They need to put this thought into clear, and succinct contracts with their users. The organizations that do will be what we call libraries and archives tomorrow. I guess I need to start by getting my own house in order eh?</p>
