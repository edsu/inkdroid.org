---
layout: post
status: publish
published: true
title: Washington Post U.S. Congress Votes Database
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 50
wordpress_url: http://www.inkdroid.org/journal/2005/12/05/washington-posts-us-congress-votes-database/
date: '2005-12-05 15:18:22 +0000'
date_gmt: '2005-12-05 22:18:22 +0000'
tags: []
comments: []
---

<p>Umm, wow! Adrian Holovaty <a href="http://www.holovaty.com/blog/archive/2005/12/05/1513">announced</a> the Washington Post <a href="http://projects.washingtonpost.com/congress/">Congressional Votes Database</a>.  This site is of important for at least two reasons:</p>
<ul>
<li>it offers <a href="http://projects.washingtonpost.com/congress/rss/">RSS feeds</a> for  tracking the voting of your house/senate representative</li>
<li>it is powered by <a href="http://www.python.org">Python</a> and the <a href="http://www.djangoproject.com/">Django</a> web framework.
</li>
</ul>
<p>As far as the RSS goes I just pulled up Dick Durbin's <a href="http://projects.washingtonpost.com/congress/members/d000563/">recent votes</a> and there were over 20 events since 11/17/2005, whereas the comparable service from <a href="http://www.govtrack.us">GovTrack</a> had only one event since then.</p>
<p>After the election I daydreamed about somehow getting involved in the political process in a technical way...which is how I found my way to GovTrack, who are essentially doing very elaborate screen scraping of the <a href="http://thomas.loc.gov/">Thomas</a> database at the Library of Congress. One thing I really like about the GovTrack project is they are making their <a href="http://web.archive.org/web/20080517173534/http://www.govtrack.us/source.xpd">data</a> available as RDF, for downstream applications. Adrian's work seems to draw on a richer data source, as I imagine is the case at a place like the Post.  All I can say is well done, and damn...you've only been there for a couple months right? Talk about hitting the ground running.</p>
<p>At the recent Snakes and Rubies Adrian indicated that there was going to be some huge Django related news. When the voting db hit my Instant Messenger, IRC client and RSS aggregator I thought that this was it. But according to Adrian there's something bigger in the works...</p>
