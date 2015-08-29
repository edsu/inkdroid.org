---
layout: post
status: publish
published: true
title: finding soundcloud users with lastfm
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 4940
wordpress_url: http://inkdroid.org/journal/?p=4940
date: '2012-09-10 08:31:52 +0000'
date_gmt: '2012-09-10 15:31:52 +0000'
tags:
- html
- javascript
- apis
- lastfm
- soundcloud
comments:
- id: 85461
  author: google.com/accounts/o8…
  author_email: brian.cassidy@gmail.com
  author_url: https://www.google.com/accounts/o8/id?id=AItOawlT40Vc7qbygawSgPrTovJFOqeuoz7bH1k
  date: '2012-09-10 11:21:06 +0000'
  date_gmt: '2012-09-10 18:21:06 +0000'
  content: "I see that the last.fm API returns MBIDs for artists -- you're probably
    better off checking the Musicbrainz data for soundcloud links.\r\n\r\nHere's the
    MB webservice call for \"Jon Fratelli\":\r\n\r\nhttp://musicbrainz.org/ws/2/artist/c2190969-53a8-4cab-8762-1abc05cbdb70?inc=url-rels\r\n\r\nYou
    can see the soundcloud link there. Obviously this requires the soundcloud metadata
    to be linked rather than implied, but it's certainly more reliable."
---
<p>I stumbled upon the lovely <a href="http://developers.soundcloud.com/docs">Soundcloud API</a> this weekend, and before I knew it I was hacking together something that would use the <a href="http://www.last.fm/api">LastFM API</a> to lookup artists that I listen to, and then look to see if they are on Soundcloud. If you haven't seen it before <a href="http://soundcloud.com">Soundcloud</a> is a social networking site for musicians and audiophiles to share tracks. Sometimes artists will share works in progress, which is really fascinating.</p>
<p>It's kind of amazing what you can accomplish in just HTML and JavaScript these days. It sure makes it easy to deploy, which I did at <a href="http://inkdroid.org/lastcloud/">http://inkdroid.org/lastcloud/</a>. If you want to give it a try enter your LastFM username, or the username of someone you know, like mine: inkdroid. As you can see the hack <em>sorta</em> worked. I say <em>sorta</em> because there seem to be a fair amount of users who are squatting on names of musicians. There also seem to be accounts that are run by fans, pretending to be the artist. Below is a list of seemingly legit Soundcloud accounts I found, and have followed. If you have any ideas for improving the hack, I put the code up on <a href="http://github.com/edsu/lastcloud">GitHub</a>.</p>
<ul style="float: left; display: inline;">
<li style="list-style: none"><a href="http://soundcloud.com/radiohead"><img src="http://userserve-ak.last.fm/serve/126/317976.jpg"/></a></li>
<li style="list-style: none"><a href="http://soundcloud.com/four-tet"><img src="http://userserve-ak.last.fm/serve/126/55697721.jpg"/></a></li>
<li style="list-style: none"><a href="http://soundcloud.com/deathcabforcutie"><img src="http://userserve-ak.last.fm/serve/126/60010487.jpg"/></a></li>
<li style="list-style: none"><a href="http://soundcloud.com/lalipuna"><img src="http://userserve-ak.last.fm/serve/126/52628081.jpg"/></a></li>
<li style="list-style: none"><a href="http://soundcloud.com/frightened-rabbit"><img src="http://userserve-ak.last.fm/serve/126/10397305.jpg"/></a></li>
<li style="list-style: none"><a href="http://soundcloud.com/jamesblackshaw"><img src="http://userserve-ak.last.fm/serve/126/13458341.jpg"/></a></li>
</ul>
<ul style="float: left; display: inline;">
<li style="list-style: none"><a href="http://soundcloud.com/wyeoak"><img src="http://userserve-ak.last.fm/serve/126/52986843.jpg"/></a></li>
<li style="list-style: none"><a href="http://soundcloud.com/the-album-leaf"><img src="http://userserve-ak.last.fm/serve/126/2857325.jpg"/></a></li>
<li style="list-style: none"><a href="http://soundcloud.com/caleparks"><img src="http://userserve-ak.last.fm/serve/126/38401967.jpg"/></a></li>
<li style="list-style: none"><a href="http://soundcloud.com/dirty-projectors"><img src="http://userserve-ak.last.fm/serve/126/79702089.png"/></a></li>
<li style="list-style: none"><a href="http://soundcloud.com/thurstonmoore"><img src="http://userserve-ak.last.fm/serve/126/4020136.jpg"/></a></li>
<li style="list-style: none"><a href="http://soundcloud.com/johnvanderslice"><img src="http://userserve-ak.last.fm/serve/126/2289629.jpg"/></a></li>
</ul>
<ul style="float: left;">
<li style="list-style: none"><a href="http://soundcloud.com/davidwenngren"><img src="http://userserve-ak.last.fm/serve/126/2247728.jpg"/></a></li>
<li style="list-style: none"><a href="http://soundcloud.com/boombip"><img src="http://userserve-ak.last.fm/serve/126/85278.jpg"/></a></li>
<li style="list-style: none"><a href="http://soundcloud.com/matesofstate"><img src="http://userserve-ak.last.fm/serve/126/13595289.jpg"/></a></li>
<li style="list-style: none"><a href="http://soundcloud.com/dntel"><img src="http://userserve-ak.last.fm/serve/126/4117918.jpg"/></a></li>
<li style="list-style: none"><a href="http://soundcloud.com/gold-panda"><img src="http://userserve-ak.last.fm/serve/126/58226915.jpg"/></a></li>
<li style="list-style: none"><a href="http://soundcloud.com/grizzlybearband"><img src="http://userserve-ak.last.fm/serve/126/42459789.png"/></a></li>
<li style="list-style: none"><a href="http://soundcloud.com/ramonafalls"><img src="http://userserve-ak.last.fm/serve/126/33597075.png"/></a></li>
</ul>
