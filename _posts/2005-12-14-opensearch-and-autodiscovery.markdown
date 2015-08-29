---
layout: post
status: publish
published: true
title: opensearch and autodiscovery
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 55
wordpress_url: http://www.inkdroid.org/journal/?p=55
date: '2005-12-14 00:50:38 +0000'
date_gmt: '2005-12-14 07:50:38 +0000'
tags: []
comments: []
---
<p>I just noticed that a9 has released a second draft of <a href="http://opensearch.a9.com/spec/changelog.jsp">opensearch v1.1</a>. This draft includes details on opensearch <a href="http://opensearch.a9.com/spec/1.1/description/#autodiscovery">autodiscovery</a> for providing a reference to the opensearch description file in an HTML page. This could have a lot of potential for browser plugins. Also, they've added a Query element that can be used for echoing back the query that was used to generate results...kinda like the  echoedRequest in <a href="http://www.loc.gov/z3950/agency/zing/srw/sru.html">SRU</a>. These are the things that popped out at me. Of course the big news in the first draft was that Atom can now be used in responses.</p>
<p>At any rate it was nice to see that they link to my <a href="http://www.textualize.com/opensearch">opensearch python library</a> from their <a href="http://opensearch.a9.com/docs/readers.jsp">tools</a> page. Once 1.1 moves from draft I'm going to work on upgrading it from 1.0 right away.</p>
