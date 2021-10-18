---
layout: post
status: publish
published: true
title: and then the web happened
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 4745
wordpress_url: http://inkdroid.org/journal/?p=4745
date: '2012-07-11 13:35:27 +0000'
date_gmt: '2012-07-11 20:35:27 +0000'
tags: []
comments: []
---

<p>Here is the text of my talk I'm giving at Wikimania today, and the <a href="http://bit.ly/wikimania-wikistream">slides</a>.</p>
<p>Let me begin by saying thank you to the conference organizers for accepting my talk proposal. I am excited to be here at my first WikiMania conference, and hope that it will be the first of many. Similar to millions of other people around the world, I use Wikipedia every day at work and at home. In the last three years I've transitioned from being a consumer to a producer, by making modest edits to articles about libraries, archives, and occasionally music. I had heard horror stories of people having their work reverted and deleted, so I was careful to cite material in my edits. I was pleasantly surprised when editors swooped in not to delete my work, but to improve it. So, I also want to say thanks to all of you for creating such an improbably open and alive community. I know there is room for improvement, but it's a pretty amazing thing you all have built.</p>
<p>And really, this is all my talk about Wikistream is about. Wikistream was born out of a desire to share just how amazing the Wikipedia community is, with people who didn't know it already. I know, I'm preaching to the choir. I also know that I'm speaking in the Technology and Infrastructure track, and I promise to get to some details about how Wikistream works. But really, there's nothing that radically new in Wikistream--and perhaps what I'm going to say would be more appropriate for the GLAM track, or a performance art track, if there was one. If you are a multi-tasker and want to listen to me with one ear, please pull up http://wikistream.inkdroid.org in your browser, and try to make sense of it as I talk. Lets see what breaks first, the application or the wi-fi connection--hopefully neither.</p>
<h2>Wikipedia and the BBC</h2>
<p>A couple years ago I was attending the dev8d conference in London and dropped into a <a href="http://www.meetup.com/Web-Of-Data/events/12317420/">2nd Linked Data Meetup</a> that happened to be going on nearby. Part of the program included presentations from Tom Scott, Silver Oliver and Georgi Kobilarov about some work they did at the BBC. They demo'd two web applications, the BBC Wildlife Finder and BBC Music, that used Wikipedia as a content management platform <sup><a href="#cite1">1</a>, <a href="#cite2">2</a></sup>.</p>
<p><a href="http://www.bbc.co.uk/nature/life/Blue_Whale"><img src="http://inkdroid.org/images/wikistream-talk/1.png"/></a><br />
<a href="http://www.bbc.co.uk/nature/life/Blue_Whale"><img src="http://inkdroid.org/images/wikistream-talk/2.png"/></a><br />
<a href="http://en.wikipedia.org/wiki/Blue_Whale"><img src="http://inkdroid.org/images/wikistream-talk/3.png"/></a><br />
<a href="http://www.bbc.co.uk/music/artists/3c8ff4c9-b5b9-4e78-ad9d-5157c323de24"><img src="http://inkdroid.org/images/wikistream-talk/4.png"/></a><br />
<a href="http://www.bbc.co.uk/music/artists/3c8ff4c9-b5b9-4e78-ad9d-5157c323de24"><img src="http://inkdroid.org/images/wikistream-talk/5.png"/></a><br />
<a href="http://en.wikipedia.org/wiki/Wye_Oak_(band)"><img src="http://inkdroid.org/images/wikistream-talk/6.png"/></a></p>
<p>If I'm remembering right it was Tom who demonstrated how an edit to a Wikipedia article resulted in the content being immediately updated at the BBC. It seemed like magic. More than that it struck me as mind-blowingly radical for an organization like the BBC to tap into the Wikipedia platform and community like this.</p>
<p>After a few questions I learned from Georgi that part of the magic of this update mechanism was a bot that the BBC created which sits in the #en.wikipedia IRC chatroom, where edits are announced <sup><a href="#cite4">4</a></sup>. I logged into the chatroom and was astonished by the number of edits flying by:</p>
<p><iframe width="420" height="315" src="http://www.youtube.com/embed/tP89Rxttl7o" frameborder="0" allowfullscreen></iframe></p>
<p>And remember this was just the English language Wikipedia channel. There are more than <a href="http://meta.wikimedia.org/wiki/IRC/Channels#Raw_feeds">730</a> other Wikimedia related channels where updates are announced. The BBC's use of Wikipedia really resonated with me, but to explain why I need to back up a little bit more.</p>
<h2>Crowdsourcing in the Library</h2>
<p>I work as a software developer at the Library of Congress. In developing web applications there I often end up using data about books, people and topics that have been curated for hundreds of years, and which began to be made available in electronic form in the early 1970s. The library community has had a longstanding obsession with collaboration, or (dare I say) crowdsourcing, to maintain its information about the bibliographic universe. Librarians would most likely call it cooperative cataloging instead of crowdsourcing, but the idea is roughly the same. </p>
<p>As early as 1850, Charles Jewett proposed that the Smithsonian be established as the national library of the United States, which would (among other things) collect the catalogs of libraries all around the country <a href="#cite3"><sup>2</sup></a>. The Smithsonian wasn't as sure as Jewett, so it wasn't until the 1890s that we saw his ideas take hold when the Library of Congress assumed the role of the national library, and home to the Copyright Office. To this day, copyright registration results in a copy of a registered book being deposited at the Library of Congress. In 1901 the Library of Congress established its printed card service which made its catalog cards available to libraries around the United States and the world.</p>
<p><a href="http://www.loc.gov/pictures/resource/cph.3c18630/"><img src="http://inkdroid.org/images/wikistream-talk/6.jpg"/></a></p>
<p>This meant that a book could be cataloged once by one of the growing army of catalogers at the Library of Congress, instead of the same work being done over and over by all the libraries all over the country. But the real innovation happened in 1971 when Fred Kilgour's dream of an online shared cataloging database was powered up at OCLC. This allowed a book to be cataloged by any library, and instantly shared with other libraries around the country. It was at this point that the cataloging became truly cooperative, because catalogers could be anywhere, at any member institution, and weren't required to be in an office at the Library of Congress.</p>
<p><iframe width="420" height="315" src="http://www.youtube.com/embed/StWinA_Juns" frameborder="0" allowfullscreen></iframe></p>
<p>This worked for a bit, but then the Web happened. As the Web began to spread in the mid to late 1990s the library community got it into their head that they would catalog it, with efforts like the Cooperative Online Resource Catalog. But the Web was growing too fast, there just weren't enough catalogers who cared, and the tools weren't up to the task, so the project died. </p>
<p>So when I saw Tom, Silver and Georgi present on the use of Wikipedia as a curated content platform at the BBC, and saw how active the community was I had a bit of a light bulb moment. It wasn't a if-you-can't-beat-em-join-em moment in which libraries and other cultural heritage organizations (like the BBC) fade into the background and become irrelevant, but one in which Wikipedia helps libraries do their job better...and maybe libraries can help make Wikipedia better. It just so happened that this was right as the <a href="http://en.wikipedia.org/wiki/Wikipedia:GLAM">Galleries, Libraries, Archives and Museums (GLAM)</a> effort was kicking off at Wikipedia. I really wanted to be able to help show librarians and others not likely to drop into an IRC chat how active the Wikipedia community was, and that's how Wikistream came to be.</p>
<p><iframe width="420" height="315" src="http://www.youtube.com/embed/qiukWH-LUxY" frameborder="0" allowfullscreen></iframe></p>
<h2>How</h2>
<p>So now that you understand the <em>why</em> of Wikistream I'll tell you briefly about the <em>how</em>. When I released Wikistream I got this really nice email from Ward Cunningham, who is a personal hero of mine, and I imagine a lot of you too:</p>
<pre lang="text">
To: wiki-research-l@lists.wikimedia.org
From: Ward Cunningham &lt;ward@c2.com&gt;
Subject: Re: wikistream: displays wikipedia updates in realtime
Date: Jun 16, 2011 7:43:11 am

I've written this app several times using technology from text-to-speech 
to quartz-composer. I have to tip my hat to Ed for doing a better job 
than I ever did and doing it in a way that he makes look effortless. 
Kudos to Ed for sharing both the page and the software that produces 
it. You made my morning. -- Ward
</pre>
<p>Sure enough, my idea wasn't really new at all. But at least I was in good company. I was lucky to stumble across the idea for Wikistream when a Google search for streaming to the browser pulled up <a href="http://socket.io">SocketIO</a>. If you haven't seen it before SocketIO is a JavaScript library that allows you to easily stream data to the browser without needing to care about the transport mechanisms that the browser supports: WebSocket, Adobe FlashSocket, AJAX long polling, AJAX multipart-streaming, Forever iframe, JSONP Polling. It autodetects the capabilities of the browser and the server, and gives you a simple callback API for publishing and consuming events. For example here is the code that runs in your browser to connect to the server and start getting updates:</p>
<pre lang="javascript">
$(document).ready(function() {
  var socket = io.connect();
  socket.on('message', function(msg) {
    addUpdate(msg);
  });
});
</pre>
<p>There's a bit more to it, like loading the SocketIO library, and the details of adding the information about the change stored in the <code>msg</code> JavaScript object (more on that below) to the DOM, but SocketIO makes the hard part of streaming data from the server to the client easy. </p>
<p>Of course you need a server to send the updates, and that's where things get a bit more interesting. SocketIO is designed to run in a <a href="http://nodejs.org">NodeJS</a> environment with the <a href="http://expressjs.com/">Express</a> web framework. Once you have your webapp set up, you can add SocketIO to it:</p>
<pre lang="javascript">
var express = require("express");
var sio = require("socket.io");

var app = express.createServer();
// set up standard app routes/views
var io = sio.listen(app);
</pre>
<p>Then the last bit is to do the work of listening to the IRC chatrooms and pushing the updates out to the clients that want to be updated. To make this a bit easier I created a reusable library called <a href="http://github.com/edsu/wikichanges/">wikichanges</a> that abstracts away the business of connecting to the IRC channels and parsing the status updates into a JavaScript object, and lets you pass in a callback function that will be given updates as they occur.</p>
<pre lang="javascript">
var wikichanges = require('wikichanges');

var w = wikichanges.WikiChanges();
w.listen(function(msg) {
  io.sockets.emit('message', msg);
});
</pre>
<p>This results in updates being delivered as JSON objects to the client code we started with, where each update looks something like: </p>
<pre lang="javascript">
{ 
  channel: '#en.wikipedia',
  wikipedia: 'English Wikipedia',
  page: 'Persuasion (novel)',
  pageUrl: 'http://en.wikipedia.org/wiki/Persuasion_(novel)',
  url: 'http://en.wikipedia.org/w/index.php?diff=498770193&oldid=497895763',
  delta: -13,
  comment: '/* Main characters */',
  wikipediaUrl: 'http://en.wikipedia.org',
  user: '108.49.244.224',
  userUrl: 'http://en.wikipedia.org/wiki/User:108.49.244.224',
  unpatrolled: false,
  newPage: false,
  robot: false,
  anonymous: true,
  namespace: 'Article'
  flag: '',
}
</pre>
<p>As I already mentioned I extracted the interesting bit of connecting to the IRC chatrooms, and parsing the IRC colored text into a JavaScript object as a NodeJS library called <a href="http://github.com/edsu/wikichanges">wikichanges</a>. Working with the stream of edits is surprisingly addictive, and I found myself wanting to create some other similar applications:</p>
<ul>
<li><a href="http://wikipulse.herokuapp.com">wikipulse</a> which displays the rate of change of wikipedias as a set of accelerator displays</li>
<li><a href="http://wikitweets.herokuapp.com/">wikitweets</a>: a visualization of how Wikipedia is cited on Twitter</li>
<li><a href="https://github.com/dchud/wikibeat">wikibeat</a>: a musical exploration of how Wikipedia is changing created by <a href="http://twitter.com/dchud">Dan Chudnov</a> and <a href="http://twitter.com/unrulymusic">Chris Burns</a>.
</li>
</ul>
<p>So wikichanges is there to make it easier to bootstrap applications that want to do things with the Wikipedia update stream. Here is a brief demo of getting wikichanges working on a stock Ubuntu ec2 instance:</p>
<p><iframe width="420" height="315" src="http://www.youtube.com/embed/XKw7G0y-NJY" frameborder="0" allowfullscreen></iframe></p>
<h2>What's Next?</h2>
<p>So this was a bit of wild ride, I hope you were able to follow along. I could have spent some time explaining why Node was a good fit for wikistream. Perhaps we can talk about that in the Q/A if there is any time for that. Let's just say I actually reach for Python first when working on a new project, but the particular nature of this application, and tool availability made Node a natural fit. Did we crash it yet?</p>
<p>The combination of the <a href="http://en.wikipedia.org/wiki/Wikipedia:GLAM">GLAM</a> effort with the <a href="http://meta.wikimedia.org/wiki/Wikidata">WikiData</a> are poised to really transform the way cultural heritage organizations contribute to and use Wikipedia. I hope wikistream might help you make the case for Wikipedia in your organization as you make presentations. If you have ideas on how to use the wikistream library to do something with the update stream I would love to hear about them.</p>
<ol>
<li id="cite1"><a href="http://www.w3.org/2001/sw/sweo/public/UseCases/BBC/">Case Study: Use of Semantic Web Technologies on the BBC Web Sites</a> by Yves Raimond, et al.</li>
<li id="cite2"><a href="http://derivadow.com/2009/01/13/the-web-as-a-cms/">The Web as a CMS</a> by Tom Scott.</li>
<li id="cite3"><a href="http://books.google.com/books?id=AVnpwHYP-nIC&lpg=PA3&pg=PA5">Catalog It Once And For All: A History of Cooperative Cataloging in the United States Prior to 1967 (Before MARC)</a> by Barbara Tillett, in Cooperative Cataloging: Past, Present, and Future. Psychology Press, 1993, page 5.</li>
<li id="cite4">After hitting publish on this post I <a href="http://twitter.com/metade/status/223536432684351489">learned</a> that the BBC's bot was written by <a href="http://www.metade.org/">Patrick Sinclair</a></li>
</ol>
