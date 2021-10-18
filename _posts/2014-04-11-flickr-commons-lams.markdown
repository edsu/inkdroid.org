---
layout: post
status: publish
published: true
title: Flickr Commons LAMs
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 7401
wordpress_url: http://inkdroid.org/journal/?p=7401
date: '2014-04-11 13:58:39 +0000'
date_gmt: '2014-04-11 20:58:39 +0000'
tags:
- flickr
comments:
- id: 86931
  author: Trevor Owens
  author_email: trevor.johnowens@gmail.com
  author_url: http://tjowens.myopenid.com/
  date: '2014-04-14 06:39:42 +0000'
  date_gmt: '2014-04-14 13:39:42 +0000'
  content: |
    Thanks for sharing this Ed! The graphs you shared got me thinking. Since the museums have so much more content, it makes a lot of sense that they are bringing in more comments. I'd be curious to know what the ratio of comments per upload looks like if that were plotted?
    I'd also be curious to see these made relative to the number of libraries, archives and museums participating. That is, in the Brooklyn Museum analysis you did we saw commenting falling off over time. Here, we see a bit of that, but it mostly looks like commenting started a bit higher and then stabilized around 2010. With that said, I imagine there has been steady growth of the total number of organizations participating, which would potentially suggest that while the total number is staying relatively consistent each org is seeing a steady decline in the number of comments their photos are getting.
    Altogether, I think this is an amazingly rich data set for exploring a lot of ideas and notions of participation and engagement with collections. I hope we see some more folks dive into this data as I think further exploration like this could be invaluable.
- id: 86932
  author: jonvoss
  author_email: jon.voss@wearewhatwedo.org
  author_url: ''
  date: '2014-04-16 22:54:26 +0000'
  date_gmt: '2014-04-17 05:54:26 +0000'
  content: |
    Rockin Ed. do you have any other basic stats from this, like how many images are there in Flickr Commons?  I was just trying to quantify the groundswell of institutions putting stuff out there for reuse and there doesn't seem to be much out there for stats on Flickr Commons.
- id: 86933
  author: jonvoss
  author_email: jon.voss@wearewhatwedo.org
  author_url: ''
  date: '2014-04-16 22:59:17 +0000'
  date_gmt: '2014-04-17 05:59:17 +0000'
  content: |
    uh, sorry, answering my own question from your data:
    archives as of 12/13: 69,274
    libraries: 74,337
    museums: 188,804
    Total: 332,415
    Then there's the 1mil from BL on top of that, right?
- id: 86935
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2014-04-17 05:42:35 +0000'
  date_gmt: '2014-04-17 12:42:35 +0000'
  content: |
    <p>Trevor, yes I thought of graphing the ratio of comments/uploads. I'll see if I can put something together.</p>
    <p>Jon, yeah the BL data is missing from these stats, which kind of a glaring omission. If getting more complete and timely stats is of interest let <a href="http://twitter.com/edsu" rel="nofollow">let me know</a>.</p>
---

<p>After the <a href="http://inkdroid.org/journal/2014/04/08/where-brooklyn-at/">last post</a> <a href="http://twitter.com/sebchan">Seb</a> <a href="https://twitter.com/sebchan/status/454588043778097154">got me</a> wondering if there were any differences between libraries, archives and museums when looking at upload and comment activity in Flickr Commons in <a href="http://twitter.com/thisisaaronland">Aaron's</a> <a href="https://github.com/straup/flickr-commons-metadata/">snapshot</a> of the Flickr Commons metadata.</p>
<p>First I had to get a list of Flickr Commons organizations and classify them as either a library, museum or archive. It wasn't always easy to pick, but you can see the result <a href="https://github.com/edsu/py-flarchive/blob/master/flarchive/orgs.json">here</a>. I lumped galleries in with museums. I also lumped historical societies in with archives. Then I wrote a <a href="https://github.com/edsu/py-flarchive/blob/master/flarchive/engagement.py">script</a> that walked around in the Redis database I already had from <a href="https://github.com/edsu/py-flarchive/blob/master/flarchive/activity.py">loading</a> Aaron's data.</p>
<p>In doing this I noticed there were some Flickr Commons organizations that were missing from Aaron's snapshot:</p>
<ul>
<li>Tasmanian Archive and Heritage Office Commons</li>
<li>The Royal Library, Denmark</li>
<li>The Finnish Museum of Photography</li>
<li>Musée McCord Museum</li>
</ul>
<p><em>Update: Aaron quickly <a href="https://github.com/straup/flickr-commons-metadata/issues/16">fixed</a> this.</em></p>
<p>I didn't do any research to see if these organizations had significant activity. Also, since there were close to a million files, I didn't load the British Library activity yet. If there's interest in adding them into the mix I'll splurge for the larger ec2 instance.</p>
<p>Anyhow, below are the results. You can find the spreadsheet for these graphs up in <a href="https://docs.google.com/spreadsheets/d/16ykEftF5BZwUfHug_uKmnjht2cd0WV8fUA4YYm6axrE/edit?usp=sharing">Google Docs</a></p>
<p><iframe height=371 width=600 src="//docs.google.com/spreadsheets/d/16ykEftF5BZwUfHug_uKmnjht2cd0WV8fUA4YYm6axrE/gviz/chartiframe?oid=474842735" seamless frameborder=0 scrolling=no></iframe></p>
<p><iframe height=371 width=600 src="//docs.google.com/spreadsheets/d/16ykEftF5BZwUfHug_uKmnjht2cd0WV8fUA4YYm6axrE/gviz/chartiframe?oid=823979235" seamless frameborder=0 scrolling=no></iframe></p>
<p>This was all done rather quickly, so if you notice anything odd or that looks amiss please let me know. Initially it seemed a bit strange to me that libraries, archives and museums trended so similarly in each graph, even if the volume was different.</p>
