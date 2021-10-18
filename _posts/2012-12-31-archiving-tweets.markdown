---
layout: post
status: publish
published: true
title: archiving tweets
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 5364
wordpress_url: http://inkdroid.org/journal/?p=5364
date: '2012-12-31 12:42:48 +0000'
date_gmt: '2012-12-31 19:42:48 +0000'
tags:
- html
- javascript
- twitter
- css
comments:
- id: 85523
  author: Wat te verwachten van het Twitter archief &laquo; Dee&#039;tjes
  author_email: ''
  author_url: http://dymphie.com/2013/01/04/wat-te-verwachten-van-het-twitter-archief/
  date: '2013-01-04 00:05:00 +0000'
  date_gmt: '2013-01-04 07:05:00 +0000'
  content: "[...] heeft ze ook nog niet, maar vertelt over de structuur (Archiving
    tweets) : deels CSV, deels JSON, maar die tekst is nogal [...]"
---

<p>If you are an active Twitter user you may have <a href="http://blogs.wsj.com/digits/2012/12/19/how-to-download-your-entire-twitter-history-and-laugh-at-how-bad-it-is/?mod=e2tw">heard</a> that you can now download your complete archive of tweets. The functionality is still being rolled out across the millions of accounts, so don't be surprised if you don't see the function yet in your settings.</p>
<p>The WSJ piece kind of joked about the importance of this move on Twitter's part, which is a bit unfortunate, since it's a pretty important issue. Yes you can use a 3rd party apps for downloading your Twitter data, but it says a lot when a company takes "archiving" seriously enough to offer it as a service to its users.</p>
<p>If you work in the digital preservation space it's kind of fun to take a look at the way that Twitter makes these personal archives available. Luckily (if you don't have the archive download button yet like me) <a href="http://davewiner.com/">Dave Winer</a> has started <a href="http://threads2.scripting.com/2012/december/uploadYourTwitterArchive">collecting</a> some archives, and making them publicly available for browsing and download off of S3. For example we can look at <a href="http:/twitter.com/sarahebourne">Sarah Bourne's</a> (who tipped me off to Dave's work--thanks Sarah!).  After you've downloaded the ZIP file you get a directory that looks like:</p>
<pre>
sarahebourne/
|-- css
|   `-- application.min.css
|-- data
|   |-- csv
|   |   |-- 2008_08.csv
|   |   |-- 2008_09.csv
|   |   |-- 2008_10.csv
|   |   |-- 2008_11.csv
|   |   |-- 2008_12.csv
|   |   |-- 2009_01.csv
|   |   |-- 2009_02.csv
|   |   |-- 2009_03.csv
|   |   |-- 2009_04.csv
|   |   |-- 2009_05.csv
|   |   |-- 2009_06.csv
|   |   |-- 2009_07.csv
|   |   |-- 2009_08.csv
|   |   |-- 2009_09.csv
|   |   |-- 2009_10.csv
|   |   |-- 2009_11.csv
|   |   |-- 2009_12.csv
|   |   |-- 2010_01.csv
|   |   |-- 2010_02.csv
|   |   |-- 2010_03.csv
|   |   |-- 2010_04.csv
|   |   |-- 2010_05.csv
|   |   |-- 2010_06.csv
|   |   |-- 2010_07.csv
|   |   |-- 2010_08.csv
|   |   |-- 2010_09.csv
|   |   |-- 2010_10.csv
|   |   |-- 2010_11.csv
|   |   |-- 2010_12.csv
|   |   |-- 2011_01.csv
|   |   |-- 2011_02.csv
|   |   |-- 2011_03.csv
|   |   |-- 2011_04.csv
|   |   |-- 2011_05.csv
|   |   |-- 2011_06.csv
|   |   |-- 2011_07.csv
|   |   |-- 2011_08.csv
|   |   |-- 2011_09.csv
|   |   |-- 2011_10.csv
|   |   |-- 2011_11.csv
|   |   |-- 2011_12.csv
|   |   |-- 2012_01.csv
|   |   |-- 2012_02.csv
|   |   |-- 2012_03.csv
|   |   |-- 2012_04.csv
|   |   |-- 2012_05.csv
|   |   |-- 2012_06.csv
|   |   |-- 2012_07.csv
|   |   |-- 2012_08.csv
|   |   |-- 2012_09.csv
|   |   |-- 2012_10.csv
|   |   |-- 2012_11.csv
|   |   `-- 2012_12.csv
|   `-- js
|       |-- payload_details.js
|       |-- tweet_index.js
|       |-- tweets
|       |   |-- 2008_08.js
|       |   |-- 2008_09.js
|       |   |-- 2008_10.js
|       |   |-- 2008_11.js
|       |   |-- 2008_12.js
|       |   |-- 2009_01.js
|       |   |-- 2009_02.js
|       |   |-- 2009_03.js
|       |   |-- 2009_04.js
|       |   |-- 2009_05.js
|       |   |-- 2009_06.js
|       |   |-- 2009_07.js
|       |   |-- 2009_08.js
|       |   |-- 2009_09.js
|       |   |-- 2009_10.js
|       |   |-- 2009_11.js
|       |   |-- 2009_12.js
|       |   |-- 2010_01.js
|       |   |-- 2010_02.js
|       |   |-- 2010_03.js
|       |   |-- 2010_04.js
|       |   |-- 2010_05.js
|       |   |-- 2010_06.js
|       |   |-- 2010_07.js
|       |   |-- 2010_08.js
|       |   |-- 2010_09.js
|       |   |-- 2010_10.js
|       |   |-- 2010_11.js
|       |   |-- 2010_12.js
|       |   |-- 2011_01.js
|       |   |-- 2011_02.js
|       |   |-- 2011_03.js
|       |   |-- 2011_04.js
|       |   |-- 2011_05.js
|       |   |-- 2011_06.js
|       |   |-- 2011_07.js
|       |   |-- 2011_08.js
|       |   |-- 2011_09.js
|       |   |-- 2011_10.js
|       |   |-- 2011_11.js
|       |   |-- 2011_12.js
|       |   |-- 2012_01.js
|       |   |-- 2012_02.js
|       |   |-- 2012_03.js
|       |   |-- 2012_04.js
|       |   |-- 2012_05.js
|       |   |-- 2012_06.js
|       |   |-- 2012_07.js
|       |   |-- 2012_08.js
|       |   |-- 2012_09.js
|       |   |-- 2012_10.js
|       |   |-- 2012_11.js
|       |   `-- 2012_12.js
|       `-- user_details.js
|-- img
|   |-- bg.png
|   `-- sprite.png
|-- index.html
|-- js
|   `-- application.min.js
|-- lib
|   |-- bootstrap
|   |   |-- bootstrap-dropdown.js
|   |   |-- bootstrap.min.css
|   |   |-- bootstrap-modal.js
|   |   |-- bootstrap-tooltip.js
|   |   |-- bootstrap-transition.js
|   |   |-- glyphicons-halflings.png
|   |   `-- glyphicons-halflings-white.png
|   |-- hogan
|   |   `-- hogan-2.0.0.min.js
|   |-- jquery
|   |   `-- jquery-1.8.3.min.js
|   |-- twt
|   |   |-- sprite.png
|   |   |-- sprite.rtl.png
|   |   |-- twt.all.min.js
|   |   `-- twt.min.css
|   `-- underscore
|       `-- underscore-min.js
`-- README.txt
</pre>
<p>So why is this interesting?</p>
<h2>The Data</h2>
<p>The archive includes data both as CSV and as JavaScript. The CSV is perfect for throwing into a spreadsheet, and doing stuff with it there. The JavaScript is actually a very light shim over some JSON data that is quite a bit richer than the CSV. The JavaScript shim is needed so that it can be used by the app that comes in the archive (more on that later). For example here's a randomly picked tweet from Sarah:</p>
<p>https://twitter.com/sarahebourne/status/281405942321532929</p>
<p>Here is how the Tweet shows up in the CSV:</p>
<pre lang="csv">

"tweet_id","in_reply_to_status_id","in_reply_to_user_id","retweeted_status_id","retweeted_status_user_id","timestamp","source","text","expanded_urls"
"281405942321532929","281400879465238529","61233","","","2012-12-19 14:29:39 +0000","<a href=""http://janetter.net/"" rel=""nofollow"">Janetter</a>","@monkchips Ouch. Some regrets are harsher than others."

</pre>
<p>And here's the archived JSON for the Tweet:</p>
<pre lang="javascript">
{
  "source" : "<a href=\"http://janetter.net/\" rel=\"nofollow\">Janetter</a>",
  "entities" : {
    "user_mentions" : [ {
      "name" : "James Governor",
      "screen_name" : "monkchips",
      "indices" : [ 0, 10 ],
      "id_str" : "61233",
      "id" : 61233
    } ],
    "media" : [ ],
    "hashtags" : [ ],
    "urls" : [ ]
  },
  "in_reply_to_status_id_str" : "281400879465238529",
  "geo" : {
  },
  "id_str" : "281405942321532929",
  "in_reply_to_user_id" : 61233,
  "text" : "@monkchips Ouch. Some regrets are harsher than others.",
  "id" : 281405942321532929,
  "in_reply_to_status_id" : 281400879465238529,
  "created_at" : "Wed Dec 19 14:29:39 +0000 2012",
  "in_reply_to_screen_name" : "monkchips",
  "in_reply_to_user_id_str" : "61233",
  "user" : {
    "name" : "Sarah Bourne",
    "screen_name" : "sarahebourne",
    "protected" : false,
    "id_str" : "16010789",
    "profile_image_url_https" : "https://si0.twimg.com/profile_images/638441870/Snapshot-of-sb_normal.jpg",
    "id" : 16010789,
    "verified" : false
  }
}
</pre>
<p>So there's quite a bit more structured data in the archived JSON including whether geo coordinates, hash tags, urls mentioned, etc. Also, the avatar images are still referenced out on the Web, where they can change, disappear, etc. It's also interesting to compare the archived JSON against what you get back the from Twitter API for the same Tweet:</p>
<pre lang="javascript">
{
  "user": {
    "follow_request_sent": false, 
    "profile_use_background_image": true, 
    "default_profile_image": false, 
    "id": 16010789, 
    "verified": false, 
    "profile_text_color": "080C0C", 
    "profile_image_url_https": "https://si0.twimg.com/profile_images/638441870/Snapshot-of-sb_normal.jpg", 
    "profile_sidebar_fill_color": "FCFAEF", 
    "entities": {
      "url": {
        "urls": [
          {
            "url": "http://www.linkedin.com/in/sarahbourne", 
            "indices": [
              0, 
              38
            ], 
            "expanded_url": null
          }
        ]
      }, 
      "description": {
        "urls": []
      }
    }, 
    "followers_count": 2367, 
    "profile_sidebar_border_color": "FFFFFF", 
    "id_str": "16010789", 
    "profile_background_color": "DAE0D9", 
    "listed_count": 331, 
    "profile_background_image_url_https": "https://si0.twimg.com/profile_background_images/671143407/8544adf04bc3823d306c7f05efef2351.jpeg", 
    "utc_offset": -18000, 
    "statuses_count": 20090, 
    "description": "Internet technology strategist, Accessibility and assistive technologies. Views expressed/implied are my own. See my Twitter lists for more interests.", 
    "friends_count": 784, 
    "location": "Boston, MA, USA", 
    "profile_link_color": "800326", 
    "profile_image_url": "http://a0.twimg.com/profile_images/638441870/Snapshot-of-sb_normal.jpg", 
    "following": true, 
    "geo_enabled": false, 
    "profile_banner_url": "https://si0.twimg.com/profile_banners/16010789/1348096060", 
    "profile_background_image_url": "http://a0.twimg.com/profile_background_images/671143407/8544adf04bc3823d306c7f05efef2351.jpeg", 
    "screen_name": "sarahebourne", 
    "lang": "en", 
    "profile_background_tile": true, 
    "favourites_count": 3147, 
    "name": "Sarah Bourne", 
    "notifications": null, 
    "url": "http://www.linkedin.com/in/sarahbourne", 
    "created_at": "Wed Aug 27 12:24:25 +0000 2008", 
    "contributors_enabled": false, 
    "time_zone": "Eastern Time (US & Canada)", 
    "protected": false, 
    "default_profile": false, 
    "is_translator": false
  }, 
  "favorited": false, 
  "entities": {
    "user_mentions": [
      {
        "id": 61233, 
        "indices": [
          0, 
          10
        ], 
        "id_str": "61233", 
        "screen_name": "monkchips", 
        "name": "James Governor"
      }
    ], 
    "hashtags": [], 
    "urls": []
  }, 
  "contributors": null, 
  "truncated": false, 
  "text": "@monkchips Ouch. Some regrets are harsher than others.", 
  "created_at": "Wed Dec 19 14:29:39 +0000 2012", 
  "retweeted": false, 
  "in_reply_to_status_id_str": "281400879465238529", 
  "coordinates": null, 
  "in_reply_to_user_id_str": "61233", 
  "source": "<a href=\"http://janetter.net/\" rel=\"nofollow\">Janetter</a>", 
  "in_reply_to_status_id": 281400879465238529, 
  "in_reply_to_screen_name": "monkchips", 
  "id_str": "281405942321532929", 
  "place": null, 
  "retweet_count": 0, 
  "geo": null, 
  "id": 281405942321532929, 
  "in_reply_to_user_id": 61233
}
</pre>
<p>Using <a href="https://npmjs.org/package/json-diff">json-diff</a> it's not too difficult to see what the differences are between the archived version and the API version:</p>
<pre lang="diff">
 {
+  favorited: false
+  contributors: null
+  truncated: false
+  retweeted: false
+  coordinates: null
+  place: null
+  retweet_count: 0
   entities: {
-    media: [
-    ]
   }
-  geo: {
-  }
+  geo: null
   user: {
+    follow_request_sent: false
+    profile_use_background_image: true
+    default_profile_image: false
+    profile_text_color: "080C0C"
+    profile_sidebar_fill_color: "FCFAEF"
+    entities: {
+      url: {
+        urls: [
+          {
+            url: "http://www.linkedin.com/in/sarahbourne"
+            indices: [
+              0
+              38
+            ]
+            expanded_url: null
+          }
+        ]
+      }
+      description: {
+        urls: [
+        ]
+      }
+    }
+    followers_count: 2367
+    profile_sidebar_border_color: "FFFFFF"
+    profile_background_color: "DAE0D9"
+    listed_count: 331
+    profile_background_image_url_https: "https://si0.twimg.com/profile_background_images/671143407/8544adf04bc3823d306c7f05efef2351.jpeg"
+    utc_offset: -18000
+    statuses_count: 20090
+    description: "Internet technology strategist, Accessibility and assistive technologies. Views expressed/implied are my own. See my Twitter lists for more interests."
+    friends_count: 784
+    location: "Boston, MA, USA"
+    profile_link_color: "800326"
+    profile_image_url: "http://a0.twimg.com/profile_images/638441870/Snapshot-of-sb_normal.jpg"
+    following: true
+    geo_enabled: false
+    profile_banner_url: "https://si0.twimg.com/profile_banners/16010789/1348096060"
+    profile_background_image_url: "http://a0.twimg.com/profile_background_images/671143407/8544adf04bc3823d306c7f05efef2351.jpeg"
+    lang: "en"
+    profile_background_tile: true
+    favourites_count: 3147
+    notifications: null
+    url: "http://www.linkedin.com/in/sarahbourne"
+    created_at: "Wed Aug 27 12:24:25 +0000 2008"
+    contributors_enabled: false
+    time_zone: "Eastern Time (US & Canada)"
+    default_profile: false
+    is_translator: false
   }
 }
</pre>
<p>To be fair some of the user profile information has been normalized in the archive (perhaps to save space for the viewing application) out to a user_details.js file, which looks like:</p>
<pre lang="javascript">{
  "screen_name" : "sarahebourne",
  "location" : "Boston, MA, USA",
  "full_name" : "Sarah Bourne",
  "bio" : "Internet technology strategist, Accessibility and assistive technologies. Views expressed/implied are my own. See my Twitter lists for more interests.",
  "id" : "16010789",
  "created_at" : "Wed Aug 27 12:24:25 +0000 2008"
}
</pre>
<p>Notably missing from this is a homepage for the user, their number of favourites, their number of friends, followers, whether geo is enabled, etc.</p>
<p>All these details aside, Twitter deserves a lot of credit for making the data available as CSV for ease of use, and also as JavaScript for programmatic use.</p>
<h2>The Code</h2>
<p>So the really, really neat thing about the archive is that it comes with a pure HTML, CSS and JavaScript application that you can open locally in your browser and view your archive. It looks pretty, for example <a href="http://static.scripting.com/twitterArchives/bourne/index.html">here</a> is Sarah's archive that Dave Winer mounted up on S3. It even has a keyword search across all your tweets, which takes a bit of time (it interactively loads all your tweet JavaScript files mentioned above), but it works. You can zip the data up, give it to someone else, and it all just works. </p>
<p>The archive uses some third party libraries such as jQuery, Underscore, Twitter Bootstrap and Hogan, which all come minified and bundled statically in the archive. The application itself is called Grailbird and comes minified as well. Grailbird loads the static JavaScript (as needed) and displays it. The only network traffic I saw while it was running was fetching avatar images.</p>
<p>Assuming JavaScript backwards compatibility, and browser support for JavaScript, the Twitter archive's contextual display for the underlying data could last a long, long time. At least that's a possible interpretation based on David Rosenthal's <a href="http://blog.dshr.org/2012/10/formats-through-time.html">hypothesis</a> about the Web's effect on format obsolescence. I think it's safe to say that this app written for the local Web platform is likely last longer than a GUI application written in another language environment. The separation of code and data, and independence from a particular browser implementation are big wins. These are qualities that we all had to fight and work hard for on the Web, and I think it makes sense to re-purpose them here in an archival context.</p>
<p>I doubt anyone from Twitter has read this far, but if someone has, it would be great to see Grailbird show up with the other great stuff you have released to Github. I found myself wanting to quickly search across tweets looking for things, like geo-enabled tweets (to make sure that they are there). I could look at the minified Grailbird source in Chrome using developer tools, but it wasn't good enough for me to figure out how to dynamically load data. I resorted to using NodeJS, and evaling the JavaScript files...and was able to confirm that there is geo data in the archives if you have it enabled. Here's the simplistic script I came up with:</p>
<pre lang="javascript">
var fs = require('fs');

var Grailbird = {data: {}};

// load all the tweet data
eval(fs.readFileSync("data/js/tweet_index.js", "utf8"));
for (var i = 0; i < tweet_index.length; i++) {
  eval(fs.readFileSync(tweet_index[i].file_name, "utf8"));
}

// look at each tweet and print out the date and geolocation if it's there
for (var slice in Grailbird.data) {
  for (var j = 0; j < Grailbird.data[slice].length; j++) {
    var tweet = Grailbird.data[slice][j];
    if (tweet.geo.coordinates) console.log(tweet.created_at, ",", tweet.geo.coordinates.join(","));
  }
}
</pre>
<p>and the output for <a href="https://twitter.com/adactio">Jeremy Keith's</a> archive.</p>
<pre>
% node geo.js
Fri Nov 30 13:08:33 +0000 2012,50.8262027605,-0.138112306595
Sat Nov 17 12:09:18 +0000 2012,54.6000387923,-5.9254288673
Fri Nov 16 22:32:03 +0000 2012,54.5925614526,-5.930852294
Thu Nov 15 13:35:35 +0000 2012,54.595909,-5.922033
Sat Nov 10 12:59:37 +0000 2012,50.825832,-0.142381
Fri Nov 09 13:54:51 +0000 2012,50.8262027605,-0.1381123066
Wed Nov 07 18:07:24 +0000 2012,50.825977,-0.138339
Tue Nov 06 16:58:49 +0000 2012,50.8378257671,-1.1800042739
Tue Oct 30 11:19:53 +0000 2012,50.8262027605,-0.1381123066
Thu Oct 18 17:51:22 +0000 2012,43.0733634985,-89.38608062
Tue Oct 16 17:29:20 +0000 2012,43.0872606735,-89.3659955263
Tue Oct 09 18:11:20 +0000 2012,40.7406891129,-74.0076184273
Sun Oct 07 14:27:50 +0000 2012,50.82906975,-0.126056
Sat Oct 06 16:29:30 +0000 2012,50.825832,-0.142381
Thu Oct 04 16:46:56 +0000 2012,50.8262027605,-0.1381123066
Tue Oct 02 17:46:42 +0000 2012,50.826646,-0.136921
Mon Oct 01 10:46:04 +0000 2012,50.8262027605,-0.1381123066
Mon Oct 01 10:43:46 +0000 2012,50.8262027605,-0.1381123066
Mon Oct 01 09:38:01 +0000 2012,50.8236703111,-0.1387184062
Mon Oct 01 08:53:15 +0000 2012,50.8236703111,-0.1387184062
Thu Sep 27 13:05:16 +0000 2012,59.915652,10.749959
Sun Sep 23 12:54:16 +0000 2012,50.8281663943,-0.128531456
Sat Sep 22 13:44:09 +0000 2012,50.87447886,0.017625
Thu Sep 20 13:16:11 +0000 2012,50.8262027605,-0.1381123066
Thu Sep 20 09:27:55 +0000 2012,50.8262027605,-0.1381123066
Mon Sep 17 07:51:20 +0000 2012,47.9952739036,7.8525775405
Sun Sep 16 09:01:28 +0000 2012,51.1599172667,-0.1787844393
Thu Sep 13 12:40:26 +0000 2012,50.822951,-0.136905
Tue Sep 11 18:41:47 +0000 2012,50.822746,-0.142274
Tue Sep 11 17:19:38 +0000 2012,50.822219,-0.140802
Tue Sep 11 13:05:59 +0000 2012,50.8262027605,-0.1381123066
Tue Sep 11 13:03:35 +0000 2012,50.8262027605,-0.1381123066
Tue Sep 11 12:48:51 +0000 2012,50.8262027605,-0.1381123066
Tue Sep 11 12:06:36 +0000 2012,50.8262027605,-0.1381123066
Tue Sep 11 08:23:00 +0000 2012,50.8262027605,-0.1381123066
Sun Sep 09 19:10:21 +0000 2012,50.826646,-0.136921
Tue Sep 04 17:33:44 +0000 2012,50.826646,-0.136921
Tue Sep 04 12:57:16 +0000 2012,50.822951,-0.136905
Mon Sep 03 16:03:37 +0000 2012,50.8262027605,-0.1381123066
Mon Sep 03 15:26:41 +0000 2012,50.8262027605,-0.1381123066
Sun Sep 02 19:40:38 +0000 2012,50.8229428584,-0.1390289018
Sun Sep 02 19:24:45 +0000 2012,50.8229428584,-0.1390289018
Sun Sep 02 19:08:55 +0000 2012,50.825977,-0.138339
Sun Sep 02 18:25:08 +0000 2012,50.825449,-0.137123
Sun Sep 02 17:04:15 +0000 2012,50.825449,-0.137123
Sun Sep 02 15:34:31 +0000 2012,50.8229428584,-0.1390289018
Fri Aug 31 17:33:20 +0000 2012,50.8291396274,-0.133923449
Fri Aug 31 09:20:04 +0000 2012,50.8311581116,-0.1335176435
Tue Aug 28 20:44:32 +0000 2012,41.8844650304,-87.6257600109
Mon Aug 27 13:57:24 +0000 2012,41.8844650304,-87.6257600109
Sat Aug 25 18:45:51 +0000 2012,41.8851594291,-87.6232355833
Wed Aug 22 12:32:45 +0000 2012,50.824415,-0.134691
Tue Aug 21 11:39:46 +0000 2012,50.8262027605,-0.1381123066
Mon Aug 20 11:01:28 +0000 2012,51.535132,-0.069309
Fri Aug 17 12:03:40 +0000 2012,50.8262027605,-0.1381123066
Sat Aug 11 16:08:13 +0000 2012,50.826646,-0.136921
Fri Aug 10 14:25:15 +0000 2012,50.8262027605,-0.1381123066
Wed Aug 08 11:51:45 +0000 2012,50.8262027605,-0.1381123066
Tue Aug 07 15:45:49 +0000 2012,50.8262027605,-0.1381123066
Fri Aug 03 16:38:55 +0000 2012,50.8262027605,-0.1381123066
Fri Aug 03 14:33:04 +0000 2012,50.8262027605,-0.1381123066
Sat Jul 28 14:57:52 +0000 2012,50.825449,-0.137123
Sat Jul 28 12:09:01 +0000 2012,50.828404,-0.137435
Thu Jul 26 17:17:22 +0000 2012,50.8266230357,-0.1367429505
Tue Jul 24 15:07:39 +0000 2012,50.8262027605,-0.1381123066
Mon Jul 23 12:25:35 +0000 2012,50.823104,-0.139515
Sat Jul 21 12:46:25 +0000 2012,50.827943,-0.136033
Fri Jul 20 13:21:41 +0000 2012,50.8262027605,-0.1381123066
Mon Jul 16 19:28:01 +0000 2012,50.825449,-0.137123
Sun Jul 15 10:48:44 +0000 2012,51.4714930776,-0.4883337021
Sat Jul 14 23:08:27 +0000 2012,41.974037,-87.890239
Tue Jul 10 13:44:08 +0000 2012,30.2655234842,-97.7385378752
Mon Jul 09 19:32:48 +0000 2012,30.2655234842,-97.7385378752
Mon Jul 09 14:40:21 +0000 2012,30.2656095537,-97.7385592461
Sat Jul 07 15:08:12 +0000 2012,51.4726745412,-0.4817537462
Fri Jun 29 10:55:03 +0000 2012,50.8262027605,-0.1381123066
Wed Jun 20 10:23:29 +0000 2012,51.488197,-0.120692
Mon Jun 18 12:12:01 +0000 2012,50.8262027605,-0.1381123066
Mon Jun 18 12:02:43 +0000 2012,50.8262027605,-0.1381123066
Sat Jun 16 15:51:15 +0000 2012,50.8244773427,-0.1387893509
Sat Jun 16 15:10:29 +0000 2012,50.827972412,-0.136271402
Fri Jun 15 22:15:44 +0000 2012,50.947306,0.090209
Fri Jun 15 12:58:27 +0000 2012,50.947306,0.090209
Wed Jun 13 12:12:49 +0000 2012,50.822951,-0.136905
Mon Jun 11 14:05:50 +0000 2012,50.825977,-0.138339
Wed Jun 06 16:31:48 +0000 2012,51.50361668,-0.683839
Wed Jun 06 15:38:45 +0000 2012,51.50361668,-0.683839
Sat Jun 02 15:40:48 +0000 2012,50.825449,-0.137123
Fri Jun 01 13:29:40 +0000 2012,50.8262027605,-0.1381123066
Thu May 31 16:37:18 +0000 2012,50.8262027605,-0.1381123066
Wed May 30 14:58:46 +0000 2012,50.8262027605,-0.1381123066
Wed May 30 12:45:33 +0000 2012,50.8262027605,-0.1381123066
Wed May 30 12:32:27 +0000 2012,50.8262027605,-0.1381123066
Tue May 29 12:12:15 +0000 2012,50.8242644595,-0.1329624653
Tue May 29 08:12:24 +0000 2012,50.8307708894,-0.1330473622
Sun May 27 21:06:57 +0000 2012,47.5608179303,-52.70936785
Mon May 21 19:15:05 +0000 2012,50.824975,3.26387
Mon May 21 13:56:02 +0000 2012,51.0541040608,3.7238935404
Mon May 21 12:19:17 +0000 2012,51.055163,3.720835
Sat May 19 15:52:22 +0000 2012,50.821309,-0.1434404
Sat May 19 14:19:38 +0000 2012,50.822215,-0.154896
Sun May 13 14:08:33 +0000 2012,50.8244462443,-0.139321602
Sun May 13 13:29:30 +0000 2012,50.8192217888,-0.1411056519
Sat May 12 19:32:13 +0000 2012,50.820359,-0.14243
Sat May 12 17:51:57 +0000 2012,50.822623,-0.142676
Fri May 11 09:22:05 +0000 2012,52.366239,4.894655
Tue May 08 12:39:36 +0000 2012,50.8287188784,-0.1423922896
Sun May 06 20:38:27 +0000 2012,50.871762,0.011501
Fri May 04 14:35:37 +0000 2012,50.8262027605,-0.1381123066
Thu May 03 16:03:52 +0000 2012,50.8262027605,-0.1381123066
Thu May 03 12:05:08 +0000 2012,50.8242644595,-0.1329624653
Wed May 02 12:43:38 +0000 2012,50.8262027605,-0.1381123066
Tue May 01 14:50:47 +0000 2012,50.8244094849,-0.1399479955
Tue May 01 13:17:36 +0000 2012,50.8262027605,-0.1381123066
Tue May 01 12:01:59 +0000 2012,50.826779,-0.138462
Tue May 01 11:22:41 +0000 2012,50.8262027605,-0.1381123066
Mon Apr 30 15:58:14 +0000 2012,50.8262027605,-0.1381123066
Fri Apr 27 17:26:19 +0000 2012,50.825449,-0.137123
Thu Apr 26 12:44:54 +0000 2012,50.8262027605,-0.1381123066
Tue Apr 24 11:30:25 +0000 2012,50.8262027605,-0.1381123066
Sat Apr 21 14:37:59 +0000 2012,50.8244773427,-0.1387893509
Wed Apr 18 11:05:28 +0000 2012,51.514461,-0.15415
Tue Apr 17 11:38:39 +0000 2012,50.8262027605,-0.1381123066
Mon Apr 16 17:28:09 +0000 2012,50.825449,-0.137123
Fri Apr 13 17:35:30 +0000 2012,50.825449,-0.137123
Fri Apr 13 11:39:01 +0000 2012,50.8262027605,-0.1381123066
Thu Apr 12 20:59:46 +0000 2012,50.8284865994,-0.1406764984
Thu Apr 12 20:43:24 +0000 2012,50.8284865994,-0.1406764984
Thu Apr 12 12:38:06 +0000 2012,50.8262027605,-0.1381123066
Wed Apr 04 17:35:46 +0000 2012,50.829236,-0.130433
Wed Apr 04 11:20:06 +0000 2012,50.8262027605,-0.1381123066
Wed Mar 28 19:51:57 +0000 2012,50.82533,-0.1371919
Wed Mar 28 17:41:06 +0000 2012,50.8266230357,-0.1367429505
Sat Mar 24 15:24:22 +0000 2012,50.82578,-0.139591
Sat Mar 24 14:42:14 +0000 2012,50.8244773427,-0.1387893509
Thu Mar 22 20:33:36 +0000 2012,50.821049,-0.140416
Thu Mar 15 16:00:20 +0000 2012,32.8975517297,-97.0442533493
Wed Mar 14 15:41:13 +0000 2012,30.265426,-97.740498
Tue Mar 13 19:52:43 +0000 2012,30.2647199679,-97.7443528175
Tue Mar 13 16:29:12 +0000 2012,30.2653850259,-97.7383099888
Mon Mar 12 02:03:53 +0000 2012,30.2669212002,-97.745683415
Sun Mar 11 17:45:31 +0000 2012,30.2626071693,-97.739803791
Sun Mar 11 15:18:53 +0000 2012,30.2647199679,-97.7443528175
Fri Mar 09 15:11:51 +0000 2012,30.2671521557,-97.7396624407
Mon Mar 05 10:56:37 +0000 2012,50.8262027605,-0.1381123066
Thu Mar 01 09:55:16 +0000 2012,50.8304057758,-0.1329698575
Wed Feb 22 23:56:59 +0000 2012,-33.8782765912,151.221249511
Wed Feb 22 02:00:43 +0000 2012,-41.328228677,174.809947014
Thu Feb 16 01:13:27 +0000 2012,-41.2890508786,174.777774995
Wed Feb 15 21:39:06 +0000 2012,-41.2893031956,174.777374268
Wed Feb 15 18:50:42 +0000 2012,-41.2893031956,174.777374268
Wed Feb 15 02:10:18 +0000 2012,-41.29336192,174.776485
Mon Feb 13 04:07:07 +0000 2012,-41.2893031956,174.777374268
Mon Feb 13 03:36:49 +0000 2012,-41.2924914456,174.776140451
Mon Feb 13 03:00:13 +0000 2012,-41.293314,174.776395
Mon Feb 13 02:40:18 +0000 2012,-41.2934345895,174.775958061
Mon Feb 13 01:22:04 +0000 2012,-41.2939726591,174.775840044
Sat Feb 11 23:39:04 +0000 2012,-36.405247,174.65600431
Sat Feb 11 07:32:16 +0000 2012,-36.405247,174.65600431
Sat Feb 11 06:49:42 +0000 2012,-36.405247,174.65600431
Wed Feb 08 23:20:25 +0000 2012,-33.878302,151.221256
Sat Feb 04 11:14:52 +0000 2012,50.828205,-0.1378011703
Thu Feb 02 13:41:42 +0000 2012,50.8262027605,-0.1381123066
Wed Feb 01 16:57:16 +0000 2012,50.8262027605,-0.1381123066
Sat Jan 28 16:57:35 +0000 2012,50.827062,-0.135349
Sat Jan 28 15:55:49 +0000 2012,50.828295,-0.138769
Thu Jan 26 12:42:08 +0000 2012,50.8262027605,-0.1381123066
Mon Jan 23 12:34:45 +0000 2012,50.822219,-0.140802
Sun Jan 22 15:18:32 +0000 2012,50.825832,-0.142381
Sat Jan 21 14:27:51 +0000 2012,50.8213,-0.1409
Fri Jan 20 12:45:34 +0000 2012,51.9479484763,-0.5020558834
Thu Jan 19 20:49:09 +0000 2012,52.9556027724,-1.1504852772
Thu Jan 19 12:38:47 +0000 2012,52.954584773,-1.1563324928
Wed Jan 18 16:42:24 +0000 2012,52.954584773,-1.1563324928
Wed Jan 18 16:39:09 +0000 2012,52.954584773,-1.1563324928
Tue Jan 17 15:00:09 +0000 2012,50.8262027605,-0.1381123066
Mon Jan 16 10:03:12 +0000 2012,50.8303548561,-0.1329055827
Sat Jan 14 16:11:55 +0000 2012,50.824838842,-0.1516896486
Wed Jan 11 21:07:19 +0000 2012,51.522789913,-0.0784921646
Wed Jan 11 19:27:24 +0000 2012,51.5237223711,-0.0770612686
Sat Jan 07 14:49:09 +0000 2012,50.824424,-0.138875
...
Fri Apr 09 01:52:12 +0000 2010,47.4412234282,-122.3010026978
Fri Apr 09 00:00:15 +0000 2010,47.4432422071,-122.3010595342
Thu Apr 08 01:29:11 +0000 2010,47.6873506139,-122.3341637453
Wed Apr 07 00:16:03 +0000 2010,47.6109922102,-122.3480262842
Sun Apr 04 18:47:33 +0000 2010,47.7083958758,-122.3272574643
Sat Apr 03 18:06:54 +0000 2010,47.6687063559,-122.3942997359
Sat Apr 03 18:05:00 +0000 2010,47.6687063559,-122.3942997359
</pre>
<p>I guess it's kind of scary that you can do this, and is perhaps why Twitter doesn't let you export anyone's account, even if it is public. But returning to the issue of Grailbird being on Github, I imagine there would be people that would write code that uses Grailbird as an API to the archive data, to provide extensions that would display a map of where you've been over time for example, or an analysis of your friendship network, or a view on hashtags you've used, events you've been at etc. </p>
<p>I think from an archival perspective, it would be really useful to be able to receive something like a Tweet archive from a donor, and overlay functionality on top of it. The model of using the Web as a local application platform for this sort of archival content seems like it could be a growth area.</p>
