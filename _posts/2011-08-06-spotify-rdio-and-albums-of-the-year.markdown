---
layout: post
status: publish
published: true
title: Spotify, Rdio and Albums of the Year
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 3603
wordpress_url: http://inkdroid.org/journal/?p=3603
date: '2011-08-06 22:21:09 +0000'
date_gmt: '2011-08-07 05:21:09 +0000'
tags:
- web-services
- rdio
- spotify
- music
comments:
- id: 85280
  author: 'Spotify vs. Rdio: Who Has The Exclusives? |'
  author_email: ''
  author_url: http://rhazi.wordpress.com/2011/12/14/spotify-vs-rdio-who-has-the-exclusives/
  date: '2011-12-14 10:12:18 +0000'
  date_gmt: '2011-12-14 17:12:18 +0000'
  content: "[...] more? Ed Summers did his own fascinating deep-dive into Spotify
    and Rdio uses top album lists from Alf Eaton&#8217;s Album of the Year list [...]"
- id: 86867
  author: 'Spotify vs. Rdio: Who Has The Exclusives? | Business | Wired'
  author_email: ''
  author_url: http://mstag.wired.com/2011/12/spotify-vs-rdio/
  date: '2014-03-05 07:10:09 +0000'
  date_gmt: '2014-03-05 14:10:09 +0000'
  content: |
    [&#8230;] more? Ed Summers did his own fascinating deep-dive into Spotify and Rdio uses top album lists from Alf Eaton&rsquo;s Album of the Year list [&#8230;]
---

<p>I've recently started listening to streamed music a bit more on <a href="http://rdio.com">Rdio</a> right around when <a href="http://spotify.com">Spotify</a> launched in the US. I noticed that some albums that I might want to listen to weren't available for streaming on Rdio, so I got it into my head that I'd like to compare the coverage of Rdio and Spotify--but I wasn't sure what albums to check. Earlier this week I remembered that since 2007 <a href="http://twitter.com/invisiblecomma">Alf Eaton</a> has put together <a href="http://aoty.hubmed.org">Albums of the Year (AOTY)</a> lists, where he has compiled the top albums of the year from a variety of sources. I think Alf's tastes tend a bit toward independent music, which suits me fine because that's the kind of stuff I listen to. So ...</p>
<p>The AOTY HTML is eminently readable (thanks Alf), so I wrote a <a href="https://github.com/edsu/aotycmp/blob/master/aoty.py">scraper</a> to pull down the albums and store it as <a href="https://raw.github.com/edsu/aotycmp/master/aoty.json">a JSON file</a>. With this in hand I was able to use the Rdio and Spotify web services to look up the albums, and record whether it was found, and whether it was streamable in the United States, which I saved off as <a href="https://raw.github.com/edsu/aotycmp/master/aoty-cmp.json">another JSON file</a>. So, of the 7,406 unique albums on AOTY, <strike>60% of them were available in Spotify, and 46% in Rdio</strike> 32% of them were available on Spotify, and 46% on Rdio (the strikeout is because of a bug that Alf spotted in the Spotify lookup code). I put the data in a <a href="http://www.google.com/fusiontables/DataSource?dsrcid=1256513">public Fusion Table</a> if you want to look at the results. If you notice anomalies please let me know. And speaking of anomalies...</p>
<h2>Caveat Lector!</h2>
<p>I was kind of surprised that <a href="http://en.wikipedia.org/wiki/Teen_Dream">Teen Dream</a> by <a href="http://en.wikipedia.org/wiki/Beach_House">Beach House</a> (which was mentioned on 27 AOTY lists in 2010) wasn't showing up as being streamable on Spotify. So I asked on <a href="http://twitter.com/#!/edsu/status/99966705723379712">Twitter</a> and <a href="https://plus.google.com/100036494993214603355/posts/PCG4ms88xDr">Google+</a> if people in the US saw it as streamable. The results were kind of surprising. People from Michigan, Illinois, Texas, New York and the District of Columbia confirmed what the Web Service told me, that the album was not streamable. But then there were people in Massachusetts and California who reported it as streamable. What's more, premium membership didn't seem to affect the availability: the Massachusetts subscriber had a free account, and the Californian had a premium account, and both could stream it. So take the numbers above with a boulder sized grain of salt. It's not clear what's going on.</p>
<p>The spotify <a href="http://developer.spotify.com/en/metadata-api/search/album/">search API</a> does not require authentication, and they have nice results that include all territories where the content is available. Rdio's <a href="http://developer.rdio.com/docs/read/rest/Methods#catalog">search API</a> does require authentication, which <a href="http://groups.google.com/group/rdio-api/msg/c37b6b1b742d8aac">apparently</a> is used to tie your account to a geographic region, which in turn effects what whether the API will say the album is streamable or not.</p>
<p>So anyway, it was interesting to play around with the APIs a bit. It didn't seem like the service agreements for the various APIs prevented this sort of exploration. I like the fact that Rdio is web based (go Django), and doesn't require a proprietary client to use. But it looks like the coverage in Spotify is better. I'm not sure I will make any changes. If anyone has any information about whether streamability of content can vary within the United States I would be interested to hear it. This rights stuff is <em>hard</em>. Given the complexity of managing the rights to this content I'm kind of amazed that Rdio and Spotify exist at all...and I'm very glad that they do.</p>
<p><em>Update: it turns out that the folks who saw Teen Dream as available had it in their personal collection (Spotify is smart like that), which is why Spotify said it was available to them. So, no crazy state-by-state rights issues need to be entertained :-)</em></p>
