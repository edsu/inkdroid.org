---
layout: post
status: publish
published: true
title: oai/sru and ruby
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 94
wordpress_url: http://www.inkdroid.org/journal/?p=94
date: '2006-04-20 12:59:45 +0000'
date_gmt: '2006-04-20 19:59:45 +0000'
tags: []
comments: []
---

<pre>
biblio:~/Projects/ruby-oai ed$ ruby test.rb
Loaded suite test
Started
..........
Finished in 171.247595 seconds.

10 tests, 280 assertions, 0 failures, 0 errors
</pre>
<p>So after about 4 hours of hacking I've got <a href="http://oai.rubyforge.org">ruby-oai</a> which is a <a href="http://openarchives.com">OAI-PMH</a> client library for ruby. Included is a test suite that puts all 6 oai-pmh verbs through their paces using OAI-PMH servers at the <a href="http://loc.gov">loc.gov</a>, <a href="http://lanl.gov">lanl.gov</a>, <a href="http://pubmedcentral.gov">pubmedcentral.gov</a>.</p>
<p>Just a few days before I did something with <a href="http://sruby.rubyforge.org">sruby</a> which is a <a href="http://www.loc.gov/standards/sru">SRU</a> client library for Ruby. Now these are just the initial versions, and I'm sure there are ways that they can be improved. But after doing a few years of solid Java coding it's just another reminder of how dynamic languages such as Ruby and Python can really help catapault productivity.</p>
<p>I have to admit, I do miss javac sitting on my shoulder reminding me of things I'm doing wrong at compile time compared with discovering bugs/errors at run time in python and ruby. But I've really come around to Bruce Eckel's point about <a href="http://web.archive.org/web/20100209072034/http://mindview.net:80/WebLog/log-0025">Strong Typing vs Strong Testing</a>. Building sruby and ruby-oai using test driven development really makes me more confident that my code is working properly...and what's more it makes me much happier with the look and feel of the API. This look n' feel aspect is something that the mechanical javac can't really help with. Doing test driven development in Java with Eclipse approaches this level--but somehow isn't as fun--but I imagine it scales better to larger teams. However, I don't work on any of these uber large teams anyhow. Hopefully I'll find a moment to talk about the new work I'm doing in the coming weeks.</p>
