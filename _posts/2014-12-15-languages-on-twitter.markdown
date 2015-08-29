---
layout: post
status: publish
published: true
title: Languages on Twitter.
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 8318
wordpress_url: http://inkdroid.org/journal/?p=8318
date: '2014-12-15 09:12:58 +0000'
date_gmt: '2014-12-15 16:12:58 +0000'
tags:
- languages
- twitter
comments: []
---
<p>There have been some interesting visualizations of languages in use on Twitter, like <a href="http://bits.blogs.nytimes.com/2014/03/09/the-languages-of-twitter-users/">this one</a> done by Gnip and published in the New York Times. Recently I've been involved in some research on particular a topical collection of tweets. One angle that's been particularly relevant for this dataset is language. When perusing some of the tweet data we retrieved from Twitter's API we noticed that there were two <code>lang</code> properties in the JSON. One was attached to the embedded user profile stanza, and the other was a top level property of the tweet itself.</p>
<p>We presumed that the user profile language was the language the user (who submitted the tweet) had selected, and that the second language on the tweet was the language of the tweet itself. The first is what Gnip used in its visualization. Interestingly, Twitter's own <a href="https://dev.twitter.com/rest/reference/get/statuses/show/%3Aid">documentation</a> for the <code>/get/statuses/:id</code> API call only shows the user profile language. </p>
<p>When you send a tweet you don't indicate what language it is in. For example you might indicate in your profile that you speak primarily English, but send some tweets in French. I can only imagine that detecting language for each tweet isn't a cheap operation for the scale that Twitter operates at. Milliseconds count when you are sending 500 million tweets a day, in real time. So at the time I was skeptical that we were right...but I added a mental note to do a little experiment.</p>
<p>This morning I noticed my friend <a href="http://twitter.com/dchud">Dan</a> had posted a tweet in Hebrew, and figured now was as a good a time as any.</p>
<blockquote class="twitter-tweet" lang="en"><p>????? ?????</p>
<p>&mdash; Dan Chudnov (@dchud) <a href="https://twitter.com/dchud/status/540623422469185537">December 4, 2014</a></p></blockquote>
<p><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script></p>
<p>I downloaded the JSON for the Tweet from the Twitter API and sure enough, the user profile had language <code>en</code> and the tweet itself had language <code>iw</code> which is the deprecated ISO 639-1 code for Hebrew (current is <code>he</code>. Here's the raw JSON for the tweet, search for <code>lang</code>:</p>
<pre lang="javascript">
{
  "contributors": null,
  "truncated": false,
  "text": "\u05d0\u05e0\u05d7\u05e0\u05d5 \u05e0\u05ea\u05d2\u05d1\u05e8",
  "in_reply_to_status_id": null,
  "id": 540623422469185537,
  "favorite_count": 2,
  "source": "<a href=\"http://tapbots.com/software/tweetbot/mac\" rel=\"nofollow\">Tweetbot for Mac</a>",
  "retweeted": false,
  "coordinates": null,
  "entities": {
    "symbols": [],
    "user_mentions": [],
    "hashtags": [],
    "urls": []
  },
  "in_reply_to_screen_name": null,
  "id_str": "540623422469185537",
  "retweet_count": 0,
  "in_reply_to_user_id": null,
  "favorited": true,
  "user": {
    "follow_request_sent": false,
    "profile_use_background_image": true,
    "profile_text_color": "333333",
    "default_profile_image": false,
    "id": 17981917,
    "profile_background_image_url_https": "https://pbs.twimg.com/profile_background_images/3725850/woods.jpg",
    "verified": false,
    "profile_location": null,
    "profile_image_url_https": "https://pbs.twimg.com/profile_images/524709964905218048/-CuYZQQY_normal.jpeg",
    "profile_sidebar_fill_color": "DDFFCC",
    "entities": {
      "description": {
        "urls": []
      }
    },
    "followers_count": 1841,
    "profile_sidebar_border_color": "BDDCAD",
    "id_str": "17981917",
    "profile_background_color": "9AE4E8",
    "listed_count": 179,
    "is_translation_enabled": false,
    "utc_offset": -18000,
    "statuses_count": 14852,
    "description": "",
    "friends_count": 670,
    "location": "Washington DC",
    "profile_link_color": "0084B4",
    "profile_image_url": "http://pbs.twimg.com/profile_images/524709964905218048/-CuYZQQY_normal.jpeg",
    "following": true,
    "geo_enabled": false,
    "profile_banner_url": "https://pbs.twimg.com/profile_banners/17981917/1354047961",
    "profile_background_image_url": "http://pbs.twimg.com/profile_background_images/3725850/woods.jpg",
    "name": "Dan Chudnov",
    "lang": "en",
    "profile_background_tile": true,
    "favourites_count": 1212,
    "screen_name": "dchud",
    "notifications": false,
    "url": null,
    "created_at": "Tue Dec 09 02:56:15 +0000 2008",
    "contributors_enabled": false,
    "time_zone": "Eastern Time (US & Canada)",
    "protected": false,
    "default_profile": false,
    "is_translator": false
  },
  "geo": null,
  "in_reply_to_user_id_str": null,
  "lang": "iw",
  "created_at": "Thu Dec 04 21:47:22 +0000 2014",
  "in_reply_to_status_id_str": null,
  "place": null
}
</pre>
<p>Although tweets are short they certainly can contain multiple languages. I was curious what would happen if I tweeted two words, one in English and one in French.</p>
<blockquote class="twitter-tweet" lang="en"><p>testing, essai</p>
<p>&mdash; Ed Summers (@edsu) <a href="https://twitter.com/edsu/status/544516240665227264">December 15, 2014</a></p></blockquote>
<p><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script></p>
<p>When I fetched the JSON data for this tweet the language of the tweet was indicated to be <code>pt</code> or Portuguese! As far as I know neither <em>testing</em> nor <em>essai</em> are Portuguese.  </p>
<p>This made me think perhaps the tweet was a bit short so I tried something a bit longer, with the number of words in each language being equal.</p>
<blockquote class="twitter-tweet" lang="en"><p>Désolé for le noise, je suis just seeing how détection de la language works.</p>
<p>&mdash; Ed Summers (@edsu) <a href="https://twitter.com/edsu/status/544518525109698561">December 15, 2014</a></p></blockquote>
<p><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script></p>
<p>This one came across with lang <code>fr</code>. So having the text be a bit longer helped in this case. Admittedly this isn't a very sound experiment, but it seems interesting and useful to see that Twitter is detecting language in tweets. It isn't perfect, but that shouldn't be surprising at all given the nature of human language. It might be useful to try a more exhaustive test using a more complete list of languages to see how it fairs. I'm adding another mental note...</p>
