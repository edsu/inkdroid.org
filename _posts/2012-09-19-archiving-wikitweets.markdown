---
layout: post
status: publish
published: true
title: archiving wikitweets
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 4970
wordpress_url: http://inkdroid.org/journal/?p=4970
date: '2012-09-19 13:32:59 +0000'
date_gmt: '2012-09-19 20:32:59 +0000'
tags:
- python
- digital preservation
- internet archive
- storage
comments: []
---
<p>Earlier this year I created a little toy webapp called <a href="http://wikitweets.herokuapp.com">wikitweets</a> that uses the <a href="https://dev.twitter.com/docs/api/1.1/post/statuses/filter">Twitter streaming API</a> to identify tweets that reference Wikipedia, which it then displays realtime in your browser. It was basically a fun experiment to kick the tires on NodeJS and <a href="http://socket.io/">SocketIO</a> using a free, single process Heroku instance.</p>
<p>At the time I <a href="http://lists.wikimedia.org/pipermail/wiki-research-l/2012-April/001982.html">announced</a> the app on the wiki-research-l discussion list to see if anyone was interested in it. Out of the responses I received were ones from <a href="http://lists.wikimedia.org/pipermail/wiki-research-l/2012-April/001985.html">Emilio Rodríguez-Posada</a> and <a href="http://lists.wikimedia.org/pipermail/wiki-research-l/2012-April/001989.html">Taha Yasseri</a> where they asked whether the tweets are archived as they stream by. This struck a chord with me, since I'm a software developer working in the field of "digital preservation". You know that feeling when you suddenly see one of your huge gaping blindspots? Yeah.</p>
<p>Anyway, some 6 months or so later I finally got around to adding an <a href="https://github.com/edsu/wikitweets/blob/master/app.js#L131">archive function</a> to wikitweets, and I thought it might be worth writing about very quickly. Wikitweets uses the <a href="http://archive.org/help/abouts3.txt">S3 API</a> at Internet Archive to store every 1000 tweets. So you can visit <a href="http://archive.org/details/wikitweets">this page</a> at Internet Archive and download the tweets. Now I don't know how long Internet Archive is going to be around, but I bet it will be longer than inkdroid.org, so it seemed like a logical (and free) safe harbor for the data. </p>
<p>In addition to being able to share the files Internet Archive also make a BitTorrent seed available, so the data can easily be distributed around the Internet. For example you could open <a href="http://archive.org/download/wikitweets/wikitweets_archive.torrent">wikitweets_archive.torrent</a> in your BitTorrent client and download a copy of the entire dataset, while providing a redundant copy. I don't really expect this to happen much with the wikitweets collection, but it seems to be a practical offering in the <em>Lots of Copies Keeps Stuff</em> Safe category.</p>
<p>I tried to coerce several of the seemingly excellent s3 libraries for NodeJS to talk to the Internet Archive, but ended up writing my own very small library that works specifically with Internet Archive. <a href="https://github.com/edsu/wikitweets/blob/master/lib/ia.js">ia.js</a> is bundled as part of wikitweets, but I guess I could put it on npm if anyone is really interested. It gets used by wikitweets like this:</p>
<pre lang="javascript">
  var c  = ia.createClient({
    accessKey: config.ia_access_key,
    secretKey: config.ia_secret_key,
    bucket: config.ia_bucket
  });

  c.addObject({name: "20120919030946.json", value: tweets}, function() {
    console.log("archived " + name);
  });
</pre>
<p>The nice thing is that you can use s3 libraries that have support for Internet Archive, like <a href="https://github.com/boto/boto">boto</a> to programatically pull down the data. For example, here is a Python program that goes through each file and prints out the Wikipedia article title that is referenced by the tweet:</p>
<pre lang="python">
  import json
  import boto

  ia = boto.connect_ia()
  bucket = ia.get_bucket("wikitweets")

  for keyfile in bucket:
      content = keyfile.get_contents_as_string()
      for tweet in json.loads(content):
          print tweet['article']['title']
</pre>
<p>The archiving has only been running for last 24 hours or so, so I imagine there will be tweaks that need to be made. I'm considering compression of the tweets as one of them. Also it might be nice to put the files in subdirectories, but it seemed that Internet Archive's API wanted to URL encode object names that have slashes in them. </p>
<p>If you have any suggestions I'd love to hear them.</p>
