---
layout: post
status: publish
published: true
title: NYPL's Building Inspector
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 6333
wordpress_url: http://inkdroid.org/journal/?p=6333
date: '2013-10-22 08:25:57 +0000'
date_gmt: '2013-10-22 15:25:57 +0000'
tags:
- amazon
- javascript
- maps
- crowdsourcing
- leafletjs
- nypl
- heroku
comments: []
---
<p>You probably already saw the <a href="http://www.wired.com/wiredscience/2013/10/phone-map-game-new-york-city/">news</a> about NYPL's <a href="http://buildinginspector.nypl.org">Building Inspector</a> that was released yesterday. If you haven't, definitely check it out...it's a beautiful app. I hope Building Inspector represents the shape of things to come for engagement with the Web by cultural heritage institutions.</p>
<p>I think you'll find that it is strangely addictive. This is partly because you get to zoom in on random closeups of historic NYC maps: which is like candy if you are a map junkie, or have spent any time in the city. More importantly you get the feeling that you are helping NYPL build and enrich a dataset for further use. I guess you could say it's <a href="https://en.wikipedia.org/wiki/Gamification">gamification</a>, but it feels more substantial than that.</p>
<p>Building Inspector hits a sweet spot for a few reasons:</p>
<ol>
<li>It has a great name. Building Inspector describes the work you will be doing, and contextualizes the activity with a profession you may already be familiar with.</li>
<li>It opens with some playful yet thoughtfully composed instructions that describe how to do the inspection. The instructions aren't optional, but can easily be dismissed. They are fun while still communicating essential facts about what you are going to be doing.</li>
<li>There is an easy way to review the work you've done so far by clicking on the <em>View Progress</em> link. You use your Twitter, Facebook or Google account to login. It would be cool to be able to see the progress view from a global view: everyone's edits, in realtime perhaps. </li>
<li>The app is <em>very</em> responsive, displaying new parts of the map with sub-second response times.</li>
<li>The webapp <a href="http://www.flickr.com/photos/inkdroid/10423047076/">looks</a> and works great as a mobile app. I'd love to hear more about how they did this, since they don't appear to be using anything like Twitter Bootstrap to help. The mobile experience might be improved a little bit if you could zoom and pan with touch gestures. </li>
<li>It uses <a href="http://leafletjs.com/">LeafletJS</a>. I've done some very <a href="http://inkdroid.org/ici/">simplistic</a> work with Leaflet in the past, so it is good to see that it can be customized this much.</li>
<li>NYPL is embracing the cloud. Building Inspector is deployed on <a href="http://heroku.com">Heroku</a>, with map tiles on <a href="http://aws.amazon.com/cloudfront/">Amazon's CloudFront</a>. This isn't a big deal for lots of .com properties, but for libraries (even big research libraries like NYPL) I reckon it is a bigger deal than you might suspect.</li>
<li>The truly hard part of recognizing the outlines of buildings with OpenCV and other tools has been made available by NYPL <a href="https://github.com/NYPL/map-vectorizer">on Github</a> for other people to play around with.</li>
</ol>
<p>Another really fun thing about the way this app was put together was its release, with the (apparent) coordination with an <a href="http://www.wired.com/wiredscience/2013/10/phone-map-game-new-york-city/">article</a> at Wired, and subsequent follow up on the <a href="https://twitter.com/nypl_labs">nypl_labs</a> Twitter account.</p>
<h2>6:35 AM</h2>
<p><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script></p>
<blockquote class="twitter-tweet" data-conversation="none">
<p>
    Our latest project, Building Inspector, is now live! <a href="https://twitter.com/wiredmaps">@wiredmaps</a> has the full story <a href="http://t.co/32M51bjbkS">http://t.co/32M51bjbkS</a> <a href="http://t.co/gNbK8WZkaj">http://t.co/gNbK8WZkaj</a>
  </p>
<p>— NYPL Labs (@nypl_labs) </p>
<p>  <a href="https://twitter.com/nypl_labs/statuses/392237770472955905">October 21, 2013</a>
</p></blockquote>
<h2>7:22 AM</h2>
<blockquote class="twitter-tweet">
<p>
    Building Inspector has been live for just under an hour and you’ve already inspected more than 800 buildings! <a href="http://t.co/gNbK8WZkaj">http://t.co/gNbK8WZkaj</a>
  </p>
<p>— NYPL Labs (@nypl_labs) </p>
<p>  <a href="https://twitter.com/nypl_labs/statuses/392249595180634112">October 21, 2013</a>
</p></blockquote>
<h2>10:12 AM</h2>
<blockquote class="twitter-tweet">
<p>
    You’re incredible, Historical Building Inspectors! You’ve already inspected 18,658 buildings this morning! <a href="http://t.co/gNbK8WZkaj">http://t.co/gNbK8WZkaj</a>
  </p>
<p>— NYPL Labs (@nypl_labs) </p>
<p>  <a href="https://twitter.com/nypl_labs/statuses/392292206029324288">October 21, 2013</a>
</p></blockquote>
<h2>6:43 PM</h2>
<blockquote class="twitter-tweet">
<p>
    Nice work, inspectors. You’ve made 77,447 inspections with the Building Inspector today! Not bad for your first day. <a href="http://t.co/gNbK8WZkaj">http://t.co/gNbK8WZkaj</a>
  </p>
<p>— NYPL Labs (@nypl_labs) </p>
<p>  <a href="https://twitter.com/nypl_labs/statuses/392420805403242497">October 21, 2013</a>
</p></blockquote>
<p>Or in other words:</p>
<p><img src="http://inkdroid.org/images/buildinginspector-chart-1.png" alt="BuildingInspector" /></p>
<p>Quite a first day! It would be interesting to know what portion of the work this represents. Also, I'd be curious to see if NYPL is able to sustain this level of engagement to get the work done.</p>
<h2>Day 2 Update</h2>
<h2>2:22 PM</h2>
<blockquote class="twitter-tweet" data-conversation="none">
<p>
    <a href="https://twitter.com/nypl_labs">@nypl_labs</a> here we are, midday, day 2... 125,068 buildings checked! Nearing double check on each of the 66k!
  </p>
<p>— mattknutzen (@mattknutzen) </p>
<p>  <a href="https://twitter.com/mattknutzen/statuses/392717633822277632">October 22, 2013</a>
</p></blockquote>
<h2>4:07 PM</h2>
<blockquote class="twitter-tweet">
<p>
    Building Inspectors, you’re amazing; 131,567 inspections! <a href="http://t.co/gNbK8WZkaj">http://t.co/gNbK8WZkaj</a> Show those space nerds at <a href="https://twitter.com/the_zooniverse">@the_zooniverse</a> who’s boss!
  </p>
<p>— NYPL Labs (@nypl_labs) </p>
<p>  <a href="https://twitter.com/nypl_labs/statuses/392744102028386304">October 22, 2013</a>
</p></blockquote>
<p>If I'm doing the math right (double check me if you really care), between those two data points there were 6,499 inspections over 63,000 seconds -- so an average of 1.03 inspections/second. Whereas between points 3 and 4 of yesterday it looks like they had an average of 1.91 inspections/second.</p>
<p><img src="http://inkdroid.org/images/buildinginspector-chart-2.png" alt="Days 1-2" /></p>
<h2>Day 3 Update</h2>
<blockquote class="twitter-tweet">
<p>
    We’re up to 163,035 Building inspections. And Building Inspector’s now available on the Firefox Marketplace! <a href="https://t.co/TPadi2I7yI">https://t.co/TPadi2I7yI</a>
  </p>
<p>— NYPL Labs (@nypl_labs) </p>
<p>  <a href="https://twitter.com/nypl_labs/statuses/393003845401731072">October 23, 2013</a>
</p></blockquote>
<p><img src="http://inkdroid.org/images/buildinginspector-chart-3.png" alt="Days 1-3" /></p>
