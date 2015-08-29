---
layout: post
status: publish
published: true
title: A Personal Panopticon
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 8597
wordpress_url: http://inkdroid.org/journal/?p=8597
date: '2015-05-09 05:16:34 +0000'
date_gmt: '2015-05-09 12:16:34 +0000'
tags: []
comments: []
---
<p>Here is how you can use your <a href="https://google.com/history">Google Search History</a> and <a href="http://stedolan.github.io/jq/">jq</a> to create a top 10 list of the things you've googled for the most.</p>
<p>First download your data from your <a href="https://google.com/history">Google Search History</a>. Yeah, <em>creepy</em>. Then install <a href="http://stedolan.github.io/jq/">jq</a>. Wait for the email from Google that your archive is ready and download then unzip it. Open a terminal window in the Searches directory, and run this:</p>
<pre><code>jq --raw-output '.event[].query.query_text' *.json \
  | sort | uniq -c | sort -rn | head -10
</code></pre>
<p>Here's what I see for the 75,687 queries I've typed into google since July 2005.</p>
<pre lang="text">309 google analytics
 130 hacker news
 116 this is my jam
  83 site:chroniclingamerica.loc.gov
  68 jquery
  54 bagit
  48 twitter api
  44 google translate
  37 wikistream
  37 opds
</pre>
<p>These are (mostly) things that I hadn't bothered to bookmark, but visited regularly. I suspect there is something more compelling and interesting that could be done with the data. A personal <a href="https://en.wikipedia.org/wiki/Panopticon">panopticon</a> perhaps.</p>
<p>Oh, and I'd delete the archive from your Google Drive after you've downloaded it. If you ever grant other apps the ability to read from your drive they could read your search history. Actually maybe this whole exercise is fraught with peril. You should just ignore it.</p>
