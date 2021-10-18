---
layout: post
status: publish
published: true
title: more on web identifiers
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 111
wordpress_url: http://www.inkdroid.org/journal/2006/07/11/more-on-web-identifiers/
date: '2006-07-11 04:25:23 +0000'
date_gmt: '2006-07-11 11:25:23 +0000'
tags: []
comments: []
---

<p>I monitor the <a href="http://web.archive.org/web/20090525091637/http://www.nabble.com:80/w3.org---www-tag-f11733.html">www-tag</a> discussion list, but more than half of it goes right over my head--so I was pleased when a colleague forwarded <a href="http://www.w3.org/2001/tag/doc/URNsAndRegistries-50">URNs, Namespaces and Registries</a> to me. Don't let the 2001 in the URL fool you, it has been updated quite recently. This finding provides an interesting counterpoint to <a href="http://www.ietf.org/rfc/rfc4452.txt">rfc 4452</a> which I <a href="http://www.inkdroid.org/journal/2006/05/16/info-uris-and-opening-up-library-data/">wrote</a> about earlier.</p>
<p>Essentially the authors go about examining the reasons why folks want to have URNs (persistence) and info-uris (non-dereferencability) and showing how URIs actually satisfy the requirements of these two communities.</p>
<p>I have to admit, it sure would be nice if (for example) LCCNs and OCLCNUMs resolved using the existing the infrastructure of http and dns. Let's say I run across an info-uri in a XML document identifying tbl as info:lccn/no9910609. What does that really tell me? Wouldn't it be nice if instead it was http://lccn.info/no9910609 and I could use my <a href="http://www.ruby-doc.org/stdlib/libdoc/net/http/rdoc/index.html">net/http</a> library of choice to fetch tbl's MADS record? Amusingly Henry Thompson (one of the authors of the finding) is holding <a href="http://lccn.info">http://lccn.info</a> and <a href="http://oclcnum.info">http://oclcnum.info</a> for ransom :-)</p>
<p>Instead, in the case of info-uri, OCLC is tasked with building a <a href="http://info-uri.info">registry</a> of these namespaces, and even when this is built the identifiers won't necessarily be resolvable in any fashion. This is the intent behind info-uris of course--that they need not be resolvable or persistent. But this finding raises some practical issues that are worth taking a look at, which seem to point to the ultimate power of the web-we-already-have.</p>
