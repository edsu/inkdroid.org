---
layout: post
status: publish
published: true
title: an ode to node
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 3665
wordpress_url: http://inkdroid.org/journal/?p=3665
date: '2011-11-07 05:40:52 +0000'
date_gmt: '2011-11-07 12:40:52 +0000'
tags:
- javascript
- wikipedia
- node
comments:
- id: 85226
  author: kapilt
  author_email: kapilt@gmail.com
  author_url: http://twitter.com/kapilvt
  date: '2011-11-22 03:33:20 +0000'
  date_gmt: '2011-11-22 10:33:20 +0000'
  content: "That's pretty awesome ed! I just did my first wikipedia hackathon last
    month, its a great group of folks.\r\n\r\nJust for giggles, python's eventlet/gevent
    could give you the same scalability/concurrency and libraries without that callback
    aftertaste (also lua, but the lib support is more esoteric)."
- id: 85227
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2011-11-22 04:17:16 +0000'
  date_gmt: '2011-11-22 11:17:16 +0000'
  content: "Hey Kapil. The DC Wikipedia group are great. I haven't been able to attend
    much recently because the meetups are often on the weekend when it is harder for
    me to \"get away\". It's pretty awesome that <a href=\"http://wikimania2012.wikimedia.org/wiki/Main_Page\"
    rel=\"nofollow\">WikiMania</a> is going to happen here in DC next year!\r\n\r\nI'll
    definitely take a look at <a href=\"http://eventlet.net/\" rel=\"nofollow\">eventlet</a>.
    The callback pattern does take some getting used to, and is often hard to read.
    But actually the thing that drove me to node.js for <a href=\"http://wikistream.inkdroid.org\"
    rel=\"nofollow\">wikistream</a> was <a href=\"http://socket.io/\" rel=\"nofollow\">SocketIO</a>.
    I see that there is a Python <a href=\"http://pypi.python.org/pypi/SocketTornad.IO\"
    rel=\"nofollow\">version</a> available for use on top of Tornado, but I haven't
    tried it."
---

<p>When I made my first edit to Wikipedia a few years ago I can remember watching the <a href="http://en.wikipedia.org/wiki/Special:RecentChanges">recent changes</a> page to see my contribution pop up. I was shocked to see just how quickly my edit was swept up in the torrent of edits that are going on all the time. I think everyone who googles for topical information is familiar with the experience of having Wikipedia articles routinely appear near the top of their search results. In hindsight it should've been obvious, but the level of participation in the curation of content at Wikipedia struck me as significant...and somehow different. It was wonderful to see living evidence of so many people caring to collaboratively document our world.</p>
<h2>The Obsession</h2>
<p>I work as a software developer in the cultural heritage sector, and often find myself building editing environments for users to collaboratively create and edit content. These systems typically get used here and there; but they in no way compare to the sheer volume of edit activity that Wikipedia sees from around the world, every single day. I guess I'd read about crowdsourcing, but had never been provided with a window into it like this before. My wife encourages her 5th grade students to think critically about Wikipedia as an information source. One way she has done this in the past was by having them author an article for <a href="http://en.wikipedia.org/wiki/Lowell_School_(Washington,_DC)">their school</a>, which didn't have an article previously. I wanted to help her and her students see how they were part of a large community of Wikipedia editors; and to give them a tactile sense of the amount of people who are actively engaged in making Wikipedia better.</p>
<p>A few months later <a href="http://www.twitter.com/gkob">Georgi Kobilarov</a> let me know about the <a href="http://meta.wikimedia.org/wiki/IRC/Channels#Recent_changes">many IRC channels</a> where various bits of metadata about recent changes in Wikipedia are announced. Georgi told me about a bot that the BBC run to track changes to Wikipedia, so that relevant article content can be pulled back to the BBC. I guess a light bulb turned on. Could I use these channels to show people how much Wikipedia is actively curated, without requiring them to reload the recent changes page, connect to some cryptic IRC channels, or dig around in some (wonderfully) detailed <a href="http://stats.wikimedia.org/">statistics</a>. More importantly, could it be done in a playful way?</p>
<h2>The Apps</h2>
<p>Some more time passed and I came across some new tools (more about these below) that made it easy to throw together a Web visualization of the Wikipedia update stream. The tools proved to be so much fun that I ended up making two.</p>
<p><a href="http://wikistream.inkdroid.org"><img src="http://inkdroid.org/images/wikistream.png" style="border: thin gray solid;"/></a></p>
<p><a href="http://wikistream.inkdroid.org">wikistream</a> displays the edits to 38 language wikipedias as a river of flowing text. The content moves by so quickly that I had to add a pause button (the letter p) in order to test things like clicking on the update to see the change that was made. The little icons to the left indicate whether the edit was made by a registered Wikipedia user, an anonymous user, or a bot (there are lots of them). After getting some good feedback on the <a href="http://www.gossamer-threads.com/lists/wiki/wikitech/238445">wikitech-l</a> discussion list I added some knobs to limit updates to specific languages and types of user, or size of the edit. I also added a periodically updating background image based on uploads to the <a href="http://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a>. </p>
<p><a href="http://wikipulse.herokuapp.com"><img width="300" src="http://inkdroid.org/images/wikipulse.png" style="border: none; float: left; margin-right: 10px;"/></a></p>
<p>The second visualization app is called <a href="http://wikipulse.herokuapp.com">wikipulse</a>. <a href="http://nitens.org/taraborelli/home">Dario Taraborelli</a> of the <a href="http://wikimediafoundation.org/">Wikimedia Foundation</a> emailed me with the idea to use the same update data stream I used in <a href="http://wikistream.inkdroid.org">wikistream</a> to fuel a higher level view of the edit activity using the <a href="http://code.google.com/apis/chart/interactive/docs/gallery/gauge.html">gauge widget</a> in Google's Chart API. To the left is one of these gauges which displays the edits per minute on 36 wikipedia properties. If you visit <a href="http://wikipulse.herokuapp.com">wikipulse</a> you will also see individual gauges for each language wikipedia. It's a bit overkill seeing all the gauges on the screen, but it's also kind of fun to see them update automatically every second relative to each other, based on the live edit activity.</p>
<h2>The Tools</h2>
<div style="width: 205px; float: right">
<a href="http://nodejs.org"><img src="https://github.com/edsu/wikistream/raw/master/public/images/node.png" width="200"/></a><br />
<a href="http://redis.io"><img src="https://github.com/edsu/wikistream/raw/master/public/images/redis.png" width="200"/></a>
</div>
<p>For both of these apps I needed to log into the wikimedia IRC server, listen on ~30 different channels, push all the updates through some code that helped visualize the data in some way, and then get this data out to the browser. I had heard good things about <a href="http://nodejs.org">node</a> for high concurrency network programming from several people. I ran across a node library called <a href="http://socket.io">socket.io</a> that reported to make it easy to stream updates from the server to the client, in a browser independent way, using a variety of <a href="http://socket.io/#browser-support">transport protocols</a>. Instinctively it felt like the <a href="http://en.wikipedia.org/wiki/Publish/subscribe">pub/sub</a> model would also be handy for connecting up the IRC updates with the webapp. I had been wanting to play around with the pub/sub features in <a href="http://redis.io">redis</a> for some time, and since there is a nice <a href="https://github.com/mranney/node_redis">redis library</a> for node I decided to give it a try.</p>
<p>Like many web developers I am used to writing JavaScript for the browser. Tools like <a href="http://jquery.com">jQuery</a> and <a href="http://documentcloud.github.com/underscore/">underscore.js</a> successfully raised the bar to the point that I'm able to write JavaScript and still look myself in the mirror in the morning. But I was still a bit skeptical about JavaScript running on the server side. The thing I didn't count on was how well node's event driven model, the library support (socket.io, redis, express), and the functional programming style fit the domain of making the Wikipedia update stream available on the Web.</p>
<p>For example here's is the code to connect to the ~30 IRC chatrooms stored in the <code>channels</code> variable, and send all the messages to a function <code>processMessage</code>:</p>
<pre lang="javascript" line="1">
var client = new irc({server: 'irc.wikimedia.org', nick: config.ircNick});

client.connect(function () {
  client.join(channels);
  client.on('privmsg', processMessage);
});
</pre>
<p>The <code>processMessage</code> function then parses the IRC message into a JavaScript dictionary and publishes it to a 'wikipedia' channel in redis:</p>
<pre lang="javascript" line="1">
function processMessage (msg) {
  m = parse_msg(msg.params);
  redis.publish('wikipedia', m);
}
</pre>
<p>Then over in my wikistream web application I set up socket.io so that when a browser goes to my webapp it negotiates for the best way to get updates from the server. Once a connection is established the server subscribes to the <code>wikipedia</code> channel and sends any updates it receives out to the browser. When the browser disconnects, the connection to redis is closed.</p>
<pre lang="javascript" line="1">
var io = sio.listen(app);

io.sockets.on('connection', function(socket) {
  var updates = redis.createClient();
  updates.subscribe('wikipedia');
  updates.on("message", function (channel, message) {
    socket.send(message);
  });
  socket.on('disconnect', function() {
    updates.quit();
  });
});
</pre>
<p>Each update is represented as a JavaScript dictionary, which socket.io and node's redis client transparently serialize and deserialize. In order to understand the socket.io protocol a bit more, I wrote a little <a href="https://github.com/edsu/wikistream/blob/master/stream.py">python script</a> that connects to wikistream.inkdroid.org, negotiates for the xhr-polling transport, and prints out the stream JSON to the console. It's a demonstration of how a socket.io instance like wikistream can be used as an API for creating a firehose like service. Although I guess the example might've been a bit cleaner to negotiate for a websocket instead.</p>
<pre lang="javascript" line="1">
{
  'anonymous': False,
  'comment': '/* Anatomy */  changed statement that orbit was the eye to saying that the orbit was the eye socket for accuracy',
  'delta': 7,
  'flag': '',
  'namespace': 'article',
  'newPage': False,
  'page': 'Optic nerve',
  'pageUrl': 'http://en.wikipedia.org/wiki/Optic_nerve',
  'robot': False,
  'unpatrolled': False,
  'url': 'http://en.wikipedia.org/w/index.php?diff=449570600&oldid=447889877',
  'user': 'Moearly',
  'userUrl': 'http://en.wikipedia.org/wiki/User:Moearly',
  'wikipedia': '#en.wikipedia',
  'wikipediaLong': 'English Wikipedia',
  'wikipediaShort': 'en',
  'wikipediaUrl': 'http://en.wikipedia.org'
}
</pre>
<p>This felt so easy, it really made me re-evaluate everything I thought I knew about JavaScript. Plus it all became worth it when <a href="http://en.wikipedia.org/wiki/Ward_Cunningham">Ward Cunningham</a> (the creator of the Wiki idea) wrote on the <a href="http://www.mail-archive.com/wiki-research-l@lists.wikimedia.org/msg01267.html">wiki-research list</a>:</p>
<blockquote><p>
I've written this app several times using technology from text-to-speech to quartz-composer. I have to tip my hat to Ed for doing a better job than I ever did and doing it in a way that he makes look effortless. Kudos to Ed for sharing both the page and the software that produces it. You made my morning.
</p></blockquote>
<p>Ward is a personal hero of mine, so making his morning pretty much made my professional career. </p>
<p>I guess this is all a long way of saying what many of you probably already know...the tooling around JavaScript (and especially <a href="http://nodejs.org">node</a>) has changed so much, that it really does offer a radically new programming environment, that is worth checking out, especially for network programming. The event driven model that is baked into node, and the fact that v8 runs blisteringly fast, make it possible to write apps that do a whole lot in one low memory process. This is handy when deploying an app to an EC2 mini instance or <a href="http://heroku.com">Heroku</a>, which is where <a href="http://wikipulse.herokuapp.com">wikipulse</a> is running...<em>for free</em>.</p>
<p>Of course it helped that my wife and kids got a kick out of <a href="http://wikistream.inkdroid.org">wikistream</a> and <a href="http://wikipulse.herokuapp.com">wikipulse</a>. I suspect that they think I'm a bit obsessed with Wikipedia, but that's ok ... because I kinda am.</p>
