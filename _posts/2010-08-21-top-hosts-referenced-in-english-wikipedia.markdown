---
layout: post
status: publish
published: true
title: top hosts referenced in english wikipedia
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2277
wordpress_url: http://inkdroid.org/journal/?p=2277
date: '2010-08-21 23:01:51 +0000'
date_gmt: '2010-08-22 06:01:51 +0000'
tags:
- wikipedia
- mysql
- unix
comments:
- id: 82993
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2010-08-23 06:39:23 +0000'
  date_gmt: '2010-08-23 13:39:23 +0000'
  content: "From Jodi Schneider, whose OpenID doesn't work with my site:\r\n\r\n<blockquote>\r\nDid
    you get the dump of just article space, or everything (e.g. Talk, File, ....)?\r\nhttp://inkdroid.org/journal/2010/08/21/top-hosts-referenced-in-english-wikipedia/\r\nI'm
    surprised that Google would be so highly-used in article space.\r\n\r\nOne possible
    audience for your stats: wiki-research-l@lists.wikimedia.org\r\n</blockquote>"
- id: 82994
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2010-08-23 06:43:07 +0000'
  date_gmt: '2010-08-23 13:43:07 +0000'
  content: 'Jodi: I pulled down the complete dump of external links from <a href="http://dumps.wikimedia.org/enwiki/latest/"
    rel="nofollow">here</a>. I''m pretty sure this includes all external links, not
    just from articles. The externallinks table only has a numeric page id, so it
    wasn''t possible for me to limit to only articles. But I''m planning on pulling
    down the pages data, so I''ll theoretically be able to join with that, and limit
    just to articles. Thanks for the great feedback!'
---
<p>I've recently been <a href="http://github.com/edsu/linkypedia">experimenting a bit </a>to provide some tools to allow libraries, archives and museums to see how Wikipedians are using their content as primary source material. I didn't actually anticipate the interest in having a specialized tool like linkypedia to monitor who is using your institutions content on Wikipedia. So, the demo site is having some scaling problems--not the least of which is the feeble VM that it is running on. That's why I wanted to make the code available for other people to run where it made sense. At least before I had some time to think through how to scale it better.</p>
<p>Anyhow, I wanted to get a handle on <em>just how many</em> external links there are in the full snapshot of English Wikipedia. A month or so ago <a href="http://jakobvoss.de/">Jakob Voss</a> pointed me at the External Links SQL dump over at <a href="http://dumps.wikimedia.org/enwiki/latest/">Wikipedia</a> as a possible way to circumvent heavy use of the <a href="http://en.wikipedia.org/w/api.php">Wikipedia's API</a>, by providing a baseline to update against. So I thought to myself that I could just suck this down, and import it into MySQL and run some analysis on that to see how many links and what sorts of host name concentrations there were.</p>
<p>Sucking down the file didn't take too long. But the mysql import on the dump spent about 24hrs (on my laptop) before I killed it. On a hunch I peeked into the 4.5G sql file and noticed that the table had several indexes defined. So I went through some contortions with <a href="http://www.oreillynet.com/linux/cmd/cmd.csp?path=c/csplit">csplit</a> to remove the indexes from the DDL, and lo and behold it loaded in something like 20 minutes. Then I wrote a some python to query the database, get each external link url, extract the hostname from the url, and write it out through a unix pipeline to count up the unique hostnames:</p>
<pre>
./hosts.py | sort -S 1g | uniq -c | sort -rn > enwiki-externallinks-hostnames.txt
</pre>
<p>This is a little unix trick my old boss Fred Lindberg taught me years ago, and it stills works remarkably well: 30,127,734 urls were sorted into 2,162,790 unique domains in another 20 minutes or so. If you are curious the full output is available <a href="http://inkdroid.org/data/enwiki-externallinks-hostnames.txt.gz">here</a>. The number 1 host was <a href="http://toolserver.org">toolserver.org</a> with 3,169,993 links. This wasn't too surprising since it is a hostname heavily used by wikipedians as they go about their business. Next is <a href="http://www.google.com">www.google.com</a> at 2,117,967 links, which appeared to be quite a few canned searches. This wasn't terribly exciting either. So I removed toolserver.org and www.google.com (so as not to visually skew things too much), and charted the rest of the top 100:</p>
<p><img src="http://inkdroid.org/images/en-wikipedia-externallinks-chart.png" alt="Top 100-2 Hostnames in Wikipedia External Links" /></p>
<p>I figured that could be of some interest to somebody, sometime. I didn't find similar current stats available anywhere on the web. But if you know of them please let me know. The high ranking of <a href="http://www.ncbi.nlm.nih.gov">www.ncbi.nlm.nih.gov</a> and <a href="http://dc.doi.org">dx.doi.org</a> were pleasant surprises. I did a little superficial digging and found some <a href="http://stats.wikimedia.org/EN/TablesWikipediaEN.htm#bots">fascinating bots</a> like <a href="http://en.wikipedia.org/wiki/User:Citation_bot">Citation Bot</a> and <a href="http://en.wikipedia.org/wiki/User:ProteinBoxBot">ProteinBoxBot</a>, which seem to trawl external article databases looking for appropriate Wikipedia pages to add links to. Kind of amazing. </p>
