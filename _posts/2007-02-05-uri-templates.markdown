---
layout: post
status: publish
published: true
title: uri-templates
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 138
wordpress_url: http://www.inkdroid.org/journal/2007/02/05/uri-templates/
date: '2007-02-05 14:36:33 +0000'
date_gmt: '2007-02-05 21:36:33 +0000'
tags: []
comments: []
---
<p>I've been playing with <a href="http://bitworking.org/news/URI_Templates">uri-templates</a> a little bit at $work to help formulate clean urls for a newspaper application. The goal is to provide urls such as:</p>
<ul>
<li>http://example.gov/issn/0362-4331</li>
<li>http://example.gov/issn/0362-4331/1969-05-28</li>
<li>http://example.gov/issn/0362-4331/1969-05-28/1</li>
<li>http://example.gov/issn/0362-4331/1969-05-28/1/31</li>
</ul>
<p>I was hoping something like this would work:</p>
<ul>
<li>http://example.gov/issn/{issn}/{date}/{edition}/{page}</li>
</ul>
<p>But I'd like to indicate that the date, edition and page parameters are optional. After reading the <a href="http://web.archive.org/web/20070208032916/http://www.ietf.org:80/internet-drafts/draft-gregorio-uritemplate-00.txt">spec</a> and some <a href="http://lists.w3.org/Archives/Public/uri/2006Nov/0048">discussion</a> it becomes clear that there is no way to indicate that part of the path is optional. OpenSearch addresses the issue to some extent by making parameters optional with '?':</p>
<ul>
<li>http://example.gov/issn/{issn}/{date?}/{edition?}/{page?}</li>
</ul>
<p>Which seems to be what I want. But there are some wrinkles such as when a page is included without a date. But perhaps these details could be application specific?</p>
<p>The <a href="http://lists.w3.org/Archives/Public/uri/2006Nov/0052">discussion</a> seemed to indicate that the template could be bundled with a written description of how the parameters are to be used. Or instead an additional template specification for optionality could be created which references the URI Template spec. There were also some nods towards <a href="https://wadl.dev.java.net/">WADL</a>, which apparently has some richer conventions for this sort of thing.</p>
<p>I guess for the moment using</p>
<ul>
<li>http://example.gov/issn/{issn}/{date}/{edition}/{page}</li>
</ul>
<p>with some descriptive text will work good enough. But I think it would be useful if the uri-template draft commented on the issue somehow...since it's bound to come up again.</p>
