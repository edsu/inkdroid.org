---
layout: post
status: publish
published: true
title: A Ferguson Twitter Archive
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 7967
wordpress_url: http://inkdroid.org/journal/?p=7967
date: '2014-08-30 18:06:55 +0000'
date_gmt: '2014-08-31 01:06:55 +0000'
tags:
- twitter
- ferguson
comments:
- id: 87159
  author: 'Editors&#8217; Choice: On Archiving Tweets | Digital Humanities Now'
  author_email: ''
  author_url: http://digitalhumanitiesnow.org/2014/09/editors-choice-on-archiving-tweets/
  date: '2014-09-02 08:31:11 +0000'
  date_gmt: '2014-09-02 15:31:11 +0000'
  content: |
    [&#8230;] A Ferguson Twitter Archive [&#8230;]
- id: 87162
  author: Archiving the web during the conflict and protest in Ferguson, MO | Learn
    More
  author_email: ''
  author_url: http://aitlearnmore.archive.org/2014/09/03/archiving-the-web-during-the-conflict-and-protest-in-ferguson-mo/
  date: '2014-09-03 11:07:58 +0000'
  date_gmt: '2014-09-03 18:07:58 +0000'
  content: |
    [&#8230;] (MITH), used a tool he developed called twarc to collect over 13 million tweets in JSON format. As part of his project, Ed has extracted the top 50 links mentioned in these archived tweets (see also his follow-up post, [&#8230;]
- id: 87166
  author: Recent news related to our class conversations | ACM Newberry Seminar 2014
  author_email: ''
  author_url: http://acmnewberryseminar2014.wordpress.com/2014/09/04/recent-news-related-to-our-class-conversations/
  date: '2014-09-04 15:54:10 +0000'
  date_gmt: '2014-09-04 22:54:10 +0000'
  content: |
    [&#8230;] For those interested in Ferguson and archiving, you may be interested in this campaign for a Ferguson Twitter Archive. [&#8230;]
- id: 87232
  author: "#Ferguson Supplement: Archival Resources"
  author_email: ''
  author_url: http://americanethnologist.org/2015/ferguson-supplement-archival-resources/
  date: '2015-01-15 05:56:12 +0000'
  date_gmt: '2015-01-15 12:56:12 +0000'
  content: |
    [&#8230;] Ferguson twitter archive initiative [&#8230;]
- id: 87351
  author: Archiving the web during events in Ferguson, MO &#8211;
  author_email: ''
  author_url: https://qa-archive-it.org/blog/post/archiving-the-web-during-the-conflict-and-protest-in-ferguson-mo/
  date: '2015-05-20 10:32:18 +0000'
  date_gmt: '2015-05-20 17:32:18 +0000'
  content: |
    [&#8230;] (MITH), used a tool he developed called twarc to collect over 13 million tweets in JSON format. As part of his project, Ed  extracted the top 50 links mentioned in the first 50,000 tweets from the evening of August [&#8230;]
- id: 87359
  author: Archiving tweets about Kingsborough
  author_email: ''
  author_url: https://kingsboroughlibtech.commons.gc.cuny.edu/2015/05/25/archiving-tweets-about-kingsborough/
  date: '2015-05-25 20:31:17 +0000'
  date_gmt: '2015-05-26 03:31:17 +0000'
  content: |
    [&#8230;] events in Ferguson, MO as they unfolded over the course of 17 days. He blogged about the process here. Twarc brought an archivist’s collecting impulse to events that were happening very quickly, [&#8230;]
---

<p><em>If you are interested in an update about where/how to get the data after reading this see <a href="http://inkdroid.org/journal/2014/11/18/on-forgetting/">here</a>.</em></p>
<p>Much has been <a href="http://pinboard.in/u:user/t:twitter+ferguson">written</a> about the significance of Twitter as the <a href="https://en.wikipedia.org/wiki/Shooting_of_Michael_Brown">recent events</a> in Ferguson echoed round the Web, the country, and the world. I happened to be at the Society of American Archivists meeting 5 days after Michael Brown was killed. During our <a href="http://inkdroid.org/journal/2014/08/14/one-big-archive/">panel discussion</a> someone asked about the role that archivists should play in documenting the event.</p>
<p>There was wide agreement that Ferguson was a painful reminder of the type of event that archivists working to "interrogate the role of power, ethics, and regulation in information systems" should be documenting. But what to do? Unfortunately we didn't have time to really discuss exactly how this agreement translated into action.</p>
<p>Fortunately the very next day the <a href="http://archiveit.org">Archive-It</a> service run by the <a href="http://archive.org">Internet Archive</a> <a href="https://twitter.com/archiveitorg/status/500315270440058880">announced</a> that they were collecting seed URLs for a Web archive related to Ferguson. It was only then, after also having finally read <a href="https://twitter.com/zeynep">Zeynep Tufekci</a>'s terrific <a href="https://medium.com/message/ferguson-is-also-a-net-neutrality-issue-6d2f3db51eb0">Medium post</a>, that I slapped myself on the forehead ... of course, we should try to archive the tweets. Ideally there would be a "we" but the reality was it was just "me". Still, it seemed worth seeing how much I could get done.</p>
<h3>twarc</h3>
<p>I had some <a href="http://inkdroid.org/journal/2013/01/19/aaronsw/">previous experience</a> archiving tweets related to <a href="https://en.wikipedia.org/wiki/Aaron_Swartz">Aaron Swartz</a> using Twitter's search API. <em>(Full disclosure: I also worked on the Twitter archiving project at the Library of Congress, but did not use any of that code or data then, or now.)</em> I wrote a small Python command line program named <a href="http://github.com/edsu/twarc">twarc</a> (a portmanteau for Twitter Archive), to help manage the archiving.</p>
<p>You give twarc a search query term, and it will plod through the search results, in reverse chronological order (the order that they are returned in), while handling quota limits, and writing out line-oriented-json, where each line is a complete tweet. It worked quite well to collect 630,000 tweets mentioning "aaronsw", but I was starting late out of the gate, 6 days after the events in Ferguson began. One downside to twarc is it is completely dependent on Twitter's <a href="https://dev.twitter.com/docs/api/1.1/get/search/tweets">search API</a>, which only returns results for the past week or so. You can search back further in Twitter's Web app, but that seems to be a privileged client. I can't seem to convince the API to keep going back in time past a week or so.</p>
<p>So time was of the essence. I started up twarc searching for all tweets that mention <em>ferguson</em>, but quickly realized that the volume of tweets, and the order of the search results meant that I wouldn't be able to retrieve the earliest tweets. So I tried to guesstimate a Twitter ID far enough back in time to use with twarc's <code>--max_id</code> parameter to limit the initial query to tweets before that point in time. Doing this I was able to get back to 2014-08-10 22:44:43 -- most of August 9th and 10th had slipped out of the window. I used a similar technique of guessing a ID further in the future in combination with the <code>--since_id</code> parameter to start collecting from where that snapshot left off. This resulted in a bit of a fragmented record, which you can see visualized (sort of below):</p>
<p><img class="img-fluid" src="http://inkdroid.org/images/twarc-ferguson-timeline.png" style="border: thin solid #cccccc;" /></p>
<p>In the end I collected 13,480,000 tweets (63G of JSON) between August 10th and August 27th. There were some gaps because of mismanagement of twarc, and the data just moving too fast for me to recover from them: most of August 13th is missing, as well as part of August 22nd. I'll know better next time how to manage this higher volume collection.</p>
<p>Apart from the data, a nice side effect of this work is that I fixed a socket timeout error in twarc that I hadn't noticed before. I also refactored it a bit so I could use it programmatically like a library instead of only as a command line tool. This allowed me to write a program to archive the tweets, incrementing the max_id and since_id values automatically. The longer continuous crawls near the end are the result of using twarc more as a library from another program.</p>
<p><iframe height=371 width=600 src="//docs.google.com/spreadsheets/d/1K7rlWVcYRXz2XreIGDEqiLdrrl1oL1c_hefV6yWv68w/gviz/chartiframe?oid=1827253224" seamless frameborder=0 scrolling=no></iframe></p>
<h3>Bag of Tweets</h3>
<p>To try to arrange/package the data a bit I decided to order all the tweets by tweet id, and split them up into gzipped files of 1 million tweets each. Sorting 13 million tweets was pretty easy using <a href="https://pypi.python.org/pypi/leveldb">leveldb</a>. I first loaded all 16 million tweets into the db, using the tweet id as the key, and the JSON string as the value.</p>
<pre lang="python">import json
import leveldb
import fileinput

db = leveldb.LevelDB('./tweets.db')

for line in fileinput.input():
    tweet = json.loads(line)
    db.Put(tweet['id_str'], line)
</pre>
<p>This took almost 2 hours on a medium ec2 instance. Then I walked the leveldb index, writing out the JSON as I went, which took 35 minutes:</p>
<pre lang="python">import leveldb

db = leveldb.LevelDB('./tweets.db')
for k, v in db.RangeIter(None, include_value=True):
    print v,
</pre>
<p>After splitting them up into 1 million line files with <a href="https://en.wikipedia.org/wiki/Cut_(Unix)">cut</a> and gzipping them I put them in a <a href="http://en.wikipedia.org/wiki/BagIt">Bag</a> and uploaded it to s3 (8.5G).</p>
<h3> </h3>
<p>I am planning on trying to extract URLs from the tweets to try to come up with a list of seed URLs for the Archive-It crawl. If you have ideas of how to use it definitely get in touch. I haven't decided yet if/where to host the data publicly. If you have ideas please get in touch about that too!</p>
