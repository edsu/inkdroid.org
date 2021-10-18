---
layout: post
status: publish
published: true
title: On Forgetting
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 8202
wordpress_url: http://inkdroid.org/journal/?p=8202
date: '2014-11-18 14:17:45 +0000'
date_gmt: '2014-11-18 21:17:45 +0000'
tags:
- twitter
- ferguson
- right-to-be-forgotten
comments:
- id: 87318
  author: Tweets and Deletes | inkdroid
  author_email: ''
  author_url: http://inkdroid.org/journal/2015/04/14/tweets-and-deletes/
  date: '2015-04-14 09:08:09 +0000'
  date_gmt: '2015-04-14 16:08:09 +0000'
  content: |
    This Article was mentioned on <a href="http://inkdroid.org/journal/2015/04/14/tweets-and-deletes/" rel="nofollow">inkdroid.org</a>
---

<p>After writing about the <a href="http://inkdroid.org/journal/2014/08/30/a-ferguson-twitter-archive/">Ferguson Twitter</a> archive a few months ago three people have emailed me out of the blue asking for access to the data. One was a principal at a small, scaryish defense contracting company, and the other two were from a prestigious university. I've also had a handful of people interested where I work at the University of Maryland.</p>
<p>I ignored the defense contractor. Maybe that was mean, but I don't want to be part of that. I'm sure they can go buy the data if they really need it. My response to the external academic researchers wasn't much more helpful since I mostly pointed them to  <a href="https://dev.twitter.com/overview/terms/policy#6._Be_a_Good_Partner_to_Twitter">Twitter's Terms of Service</a> which says:</p>
<blockquote><p>
If you provide Content to third parties, including downloadable datasets of Content or an API that returns Content, you will only distribute or allow download of Tweet IDs and/or User IDs.</p>
<p>You may, however, provide export via non-automated means (e.g., download of spreadsheets or PDF files, or use of a “save as” button) of up to 50,000 public Tweets and/or User Objects per user of your Service, per day. </p>
<p>Any Content provided to third parties via non-automated file download remains subject to this Policy.
</p></blockquote>
<p>It's my understanding that I can share the data with others at the University of Maryland, but I am not able to give it to the external parties. What I can do is give them the Tweet IDs. But there are 13,480,000 of them.</p>
<p>So that's what I'm doing today: publishing the tweet ids. You can download them from the Internet Archive:</p>
<blockquote><p>
<a href="https://archive.org/details/ferguson-tweet-ids">https://archive.org/details/ferguson-tweet-ids</a>
</p></blockquote>
<p>I'm making it available using the CC-BY license. </p>
<h3>Hydration</h3>
<p>On the one hand, it seems unfair that this portion of the public record is unshareable in its most information rich form. The barrier to entry to using the data seems set artificially high in order to protect Twitter's business interests. These messages were posted to the public Web, where I was able to collect them. Why are we prevented from re-publishing them since they are already on the Web? Why can't we have lots of copies to keep stuff safe? More on this in a moment.</p>
<p>Twitter limits users to 180 requests every 15 minutes. A user is effectively a unique access token. Each request can hydrate up to 100 Tweet IDs using the <a href="https://dev.twitter.com/rest/reference/get/statuses/lookup">statuses/lookup</a> REST API call. </p>
<pre>
180 requests * 100 tweets = 18,000 tweets/15 min 
                          = 72,000 tweets/hour
</pre>
<p>So to hydrate all of the 13,480,000 tweets will take about 7.8 days. This is a bit of a pain, but realistically it's not so bad. I'm sure people doing research have plenty of work to do before running any kind of analysis on the full data set. And they can use a portion of it for testing as it is downloading. But how do you download it?</p>
<p><a href="http://gnip.com">Gnip</a>, who were recently acquired by Twitter, offer a <a href="http://support.gnip.com/apis/rehydration_api/">rehydration API</a>. Their API is limited to tweets from the last 30 days, and similar to Twitter's API you can fetch up to 100 tweets at a time. Unlike the Twitter API you can issue a request every second. So this means you could download the results in about 1.5 days. But these Ferguson tweets are more than 30 days old. And a Gnip account costs some indeterminate amount of money, starting at $500...</p>
<p>I suspect there are other hydration services out there. But I adapted <a href="http://github.com/edsu/twarc'>twarc</a> the tool I used to collect the data, which already handled rate-limiting, to also do hydration. Once you have the tweet IDs in a file you just need to install twarc, and run it. Here's how you would do that on an Ubuntu instance: </p>
<pre>
    <code>
    sudo apt-get install python-pip
    sudo pip install twarc
    twarc.py --hydrate ids.txt > tweets.json
    </code>
</pre>
<p>After a week or so, you'll have the full JSON for each of the tweets.</p>
<h3>Archive Fever</h3>
<p>Well, not really. You will have <em>most</em> of them. But you won't have the ones that have been deleted. If a user decided to remove a Tweet they made, or decided to remove their account entirely you won't be able to get their Tweets back from Twitter using their API. I think it's interesting to consider Twitter's Terms of Service as what <a href="http://ischool.umd.edu/faculty-staff/katie-shilton">Katie Shilton</a> would call a <a href="http://mith.umd.edu/podcasts/katie-shilton-finding-values-levers-building-ethics-into-emerging-technologies/">value lever</a>.</p>
<p>The metadata rich JSON data (which often includes geolocation and other behavioral data) wasn't exactly posted to the Web in the typical way. It was made available through a Web API designed to be used directly by automated agents, not people. Sure, a tweet appears on the Web but it's in with the other half a trillion Tweets out on the Web, all the way back to the <a href="https://twitter.com/biz/status/21">first one</a>. Requiring researchers to go back to the Twitter API to get this data and not allowing it circulate freely in bulk means that users have an opportunity to remove their content. Sure it has already been collected by other people, and it's pretty unlikely that the NSA are deleting their tweets. But in a way Twitter is taking an ethical position for their publishers to be able to remove their data. To exercise their right to be forgotten. Removing a teensy bit of <a href="http://idlewords.com/bt14.htm">informational toxic waste</a>.</p>
<p>As any archivist will tell you, forgetting is an essential and unavoidable part of the archive. Forgetting is the <em>why</em> of an archive. Negotiating what is to be remembered and by whom is the principal concern of the archive. Ironically it seems it's the people who deserve it the least, those in positions of power, who are often most able to exercise their right to be forgotten. Maybe putting a value lever back in the hands of the people isn't such a bad thing. If I were Twitter I'd highlight this in the API documentation. I think we are still learning how the contours of the Web fit into the archive. I know I am.</p>
<p><em>If you are interested in learning more about value levers you can download a pre-print of Shilton's <a href="http://terpconnect.umd.edu/~kshilton/ShiltonSTHVpreprint.pdf">Value Levers: Building Ethics into Design</a>.</em></p>
