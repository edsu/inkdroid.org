---
layout: post
status: publish
published: true
title: polling and pushing with the Times Newswire API
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 4125
wordpress_url: http://inkdroid.org/journal/?p=4125
date: '2011-12-21 08:53:23 +0000'
date_gmt: '2011-12-21 15:53:23 +0000'
tags:
- http
- web-services
- nytimes
- nodejs
comments: []
---

<p>I've been continuing to play around with <a href="http://nodejs.org">Node.js</a> some. Not because it's the <a href="http://mrjoes.github.com/2011/12/15/sockjs-bench.html">only game in town</a>, but mainly because of the  <a href="http://dannorth.net/2011/12/19/the-rise-and-rise-of-javascript/"> renaissance</a> that's going in the JavaScript community, which is kind of fun and slightly addictive. Ok, I guess that makes me a fan-boy, whatever...</p>
<p>So the latest in my experiments is <a href="http://nytimestream.herokuapp.com">nytimestream</a>, which is a visualization (ok, it's just a list) of <a href="http://nytimes.com">New York Times</a> headlines using the <a href="http://developer.nytimes.com/docs/times_newswire_api">Times Newswire API</a>. When I saw <a href="http://blog.thescoop.org/">Derek Willis</a> recently put some work into a <a href="https://github.com/NYTimes/times_wire">Ruby library</a> for the API I got to thinking what it might be like to use <a href="http://nodejs.org">Node.js</a> and <a href="http://socket.io">Socket.IO</a> to provide a push stream of updates. It didn't take too long. I actually highly doubt anyone is going to use nytimestream much. So you might be wondering why I bothered to create it at all. I guess it was kind more of an academic exercise than anything to reinforce some things that Node.js has been teaching me.</p>
<p>Normally if you wanted a web page to dynamically update based on events elsewhere you'd have some code running in the browser routinely poll a webservice for updates. In this scenario our clients (c1, c2 and c3) poll the Times Newswire directly:</p>
<p><img src="http://inkdroid.org/images/nytimestreampoll.png"/></p>
<p>But what happens if lots of people start using your application? Yup, you get lots of requests going to the web service...which may not be a good thing, particularly if you are limited to a certain number of requests per day.</p>
<p>So a logical next step is to create a proxy for the webservice, which will reduce hits on the Times Newswire API.</p>
<p><img src="http://inkdroid.org/images/nytimestreamws.png"/></p>
<p>But still, the client code needs to poll for updates. This can result in the proxy web service needing to field lots of requests as the number of clients increases. You can poll less, but that will diminish the real time nature of your app. If you are interested in having the real time updates in your app in the first place this probably won't seem like a great solution.</p>
<p>So what if you could have the proxy web service <em>push</em> updates to the clients when it discovers an update?</p>
<p><img src="http://inkdroid.org/images/nytimestreamnodejs.png"/></p>
<p>This is basically what an event-driven webservice application allows you to do (labelled NodeJS in the diagram above). Node's <a href="http://socket.io">Socket.IO</a> provides a really nice abstraction around streaming updates in the browser. If you view source on <a href="http://nytimestream.herokuapp.com">nytimestream</a> you'll see a bit of code like this:</p>
<pre lang="javascript">
var socket = io.connect();
socket.on('connect', function() {
  socket.on('story', function(story) {
    addStory(story);
    removeOld();
    fadeList();
  });
});
</pre>
<p><code>story</code> is a JavaScript object that comes directly from the proxy webservice as a chunk of JSON. I've got the app running on Heroku, which <a href="http://devcenter.heroku.com/articles/using-socket-io-with-node-js-on-heroku">currently</a> recommends Socket.IO be configured to only do <a href="http://en.wikipedia.org/wiki/Push_technology#Long_polling">long polling</a> (xhr-polling). Socket.IO actually supports a <a href="http://socket.io/#browser-support">bunch</a> of other transports suitable for streaming, including web sockets. xhr-polling  basically means the browser keeps a connection open to the server until an update comes down, after which it quickly reconnects to wait for the next update. This is still preferable to constant polling, especially for the NYTimes API which often sees 15 minutes or more go by without an update. Keeping connections open like this can be expensive in more typical web stacks where each connection translates into a thread or process. But this is what Node's <a href="http://www.stumbleupon.com/su/AtWYKW/www.ibm.com/developerworks/opensource/library/os-nodejs/">non-blocking IO</a> programming environment fixes up for you.</p>
<p>Just because I could, I added a little easter egg view in nytimestream, which allows you to see new stories come across the wire as JSON when nytimestream discovers them. It's similar to Twitter's <a href="https://dev.twitter.com/docs/streaming-api">stream API</a> in that you can call it with curl. It's different in that, well, there's hardly the same amount of updates. Try it out with:</p>
<pre>
curl http://nytimestream.herokuapp.com/stream/
</pre>
<p>The occasional newlines are there to prevent the connection from timing out.</p>
