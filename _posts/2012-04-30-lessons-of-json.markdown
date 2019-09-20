---
layout: post
status: publish
published: true
title: 'Lessons of JSON '
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 4438
wordpress_url: http://inkdroid.org/journal/?p=4438
date: '2012-04-30 04:22:11 +0000'
date_gmt: '2012-04-30 11:22:11 +0000'
tags: []
comments:
- id: 85368
  author: Ross Patterson
  author_email: Ross.Patterson@GMail.Com
  author_url: ''
  date: '2012-04-30 08:42:16 +0000'
  date_gmt: '2012-04-30 15:42:16 +0000'
  content: "Crockford is a very smart guy, with very deep experience.  Truly a bright
    light of the second wave in computing, an important figure now that almost all
    of the first wave are retired and many are dead.\r\n\r\nBut he makes the same
    mistake every creator/discover of something new and lightweight does: He assumes
    the heavyweight alternative has no good reason for its weight.  Fast-forward 10
    years, and JSON has some glaring defects that were noted early on and ignored.
    \ Perhaps the mot obvious is the lack of a JSON specification for representing
    dates and times - native datatypes in both of the languages Crockford initially
    used with JSON, and a traditional point of difficulty in most programming systems.\r\n\r\nJSON
    is simple, and XML is hard, because JSON sidesteps the hard things that XML supports.
    \ This is always how shiny, new things get started.  If you're old enough, you
    may remember that XML was initially touted as a simple, minimal system for data
    interchange."
- id: 85369
  author: Lessons of JSON - Monday By Noon
  author_email: ''
  author_url: http://mondaybynoon.com/20120430/lessons-of-json/
  date: '2012-04-30 10:16:30 +0000'
  date_gmt: '2012-04-30 17:16:30 +0000'
  content: "[...] Lessons of JSON | inkdroid. [...]"
- id: 85374
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2012-05-01 13:22:32 +0000'
  date_gmt: '2012-05-01 20:22:32 +0000'
  content: I'm old enough to remember yes. I'm also getting by OK with JSON even with
    the glaring defects you mention. I don't personally have an axe to grind about
    XML. XML seems pretty good for representing hierarchically structured documents.
    XML does have a lot of machinery, but my exposure to Semantic Web technologies
    have made them look pretty simple in comparison. I'm not sure if that's damning
    with faint praise...
- id: 85376
  author: alex@alexgrande.com
  author_email: alex@alexgrande.com
  author_url: ''
  date: '2012-05-03 09:09:11 +0000'
  date_gmt: '2012-05-03 16:09:11 +0000'
  content: One of my favorite points in this article is calling out the natural world.
    If you create something natural and necessary, you don't need massive marketing
    dollars to convince people to use it.
- id: 85409
  author: florin.jurcovici
  author_email: ''
  author_url: http://openid-provider.appspot.com/florin.jurcovici
  date: '2012-06-05 05:56:51 +0000'
  date_gmt: '2012-06-05 12:56:51 +0000'
  content: "The general evolution of web apps seems to show that dealing with JSON's
    glaring omissions is easier than dealing with XML's heavyweight correctness and
    completeness.\r\n\r\nI haven't seen XML being consistently used as a transfer
    format anywhere else except in enterprise apps. Such apps use XML not because
    it's the better choice (which it probably isn't), but because XML is regarded
    as the \"serious\" transfer format by consultants - you often risk to be considered
    unprofessional if you come up with reasonable technical propositions in the enterprise
    world.\r\n\r\nFrom personal experience, JSON is always the better choice when
    your data structure is relatively simple, and gets difficult to both read and
    control when your data structure is complex - but XML isn't a solution for complexity
    either.\r\n\r\nAlso, efforts like JSON-WSDL add the same convenience and heavyweight,
    enterprisey mechanism to JSON which are available for XML, only, without making
    the format itself similarly verbose and cluttered up with markup which just gets
    in the way."
---
<p>A recent (and short) <a href="https://web.archive.org/web/20120503181458/http://www.computer.org/portal/web/computingnow/computing-conversations/-/blogs/discovering-javascript-object-notation-with-douglas-crockford?_33_redirect=%2Fportal%2Fweb%2Fcomputingnow%2Fcomputing-conversations">IEEE Computing Conversations interview</a> with <a href="http://en.wikipedia.org/wiki/Douglas_Crockford">Douglas Crockford</a> about the development of <a href="http://en.wikipedia.org/wiki/JSON">JavaScript Object Notation (JSON)</a> offers some profound, and sometimes counter-intuitive, insights into standards development on the Web.</p>

<iframe width="560" height="315" src="https://www.youtube.com/embed/kc8BAR7SHJI"
frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope;
picture-in-picture" allowfullscreen></iframe>

<h2>Pave the Cowpaths</h2>
<blockquote><p>
I don't claim to have invented it, because it already existed in nature. I just saw it, recognized the value of it, gave it a name, and a description, and showed its benefits. I don't claim to be the only person to have discovered it.
</p></blockquote>
<p>Crockford is likeably humble about the origins of JSON. Rather than claiming he <em>invented</em> JSON he instead says he <em>discovered</em> it--almost as if he was a naturalist on an expedition in some uncharted territory. Looking at the Web as an ecosystem with forms of life in it might seem more like a stretched metaphor or sci-fi plot; but I think it's a useful and pragmatic stance. The Web is a complex space, and efforts to forcibly make it move in particular directions often fail, even when big organizations and trans-national corporations are behind them. Grafting, aligning and cross-fertilizing technologies, while respecting the communities that they grow from will probably feel more chaotic, but it's likely to yield better results in the long run.</p>
<h2>Necessity is the Mother of Invention</h2>
<p>Crockford needed JSON when building an application where a client written in JavaScript needed to communicate with a server written in Java. He wanted something simple that would let him solve a real need he had right in front of him. He didn't want the client to have to compose a query for the server, have the server perform the query against a database, and return something to the client that in turn needed to be queried again. He wanted something where the data serialization matched the data structures available to both programming language environments. He wanted something that made his life easier. Since Crockford was actually using JSON in his work it has usability at its core.</p>
<h2>Less is More</h2>
<p>Crockford tried very hard to strip unnecessary stuff from JSON so it stood a better chance of being language independent. When confronted with push back about JSON not being a "standard" Crockford registered <a href="http://json.org">json.org</a>, put up a specification that documented the data format, and declared it as a standard. He didn't expend a lot of energy in top-down mode, trying to convince industry and government agencies that JSON was the way to go. Software developers discovered it, and started using it in their applications because it made their life easier too. Some people complained that the X in AJAX stood for XML, and therefore JSON should not be used. But this dogmatism faded into the background over time as the benefits of JSON were recognized.</p>
<p>JSON is not versioned, and has no mechanism for revision. JSON cannot change. This probably sounds like heresy to many folks involved in standardization. It is more radical than the WHATWG's <a href="http://blog.whatwg.org/html-is-the-new-html5">decision</a> to remove the version number from HTML5. It may only be possible because Crockford focused so much on keeping the JSON specification so small and tight. Crockford is realistic about JSON not solving all data representation problems, and speculates that we will see use cases that JSON does not help solve. But when this happens something new will be created instead of extending JSON. This relieves the burden of backwards compatibility that can often drag projects down into a quagmire of complexity. Software designed to work with JSON will always work with whatever valid JSON is found in the wild.</p>
<h2>Anyhow</h2>
<p>Don't listen to me, go watch the <a href="http://www.youtube.com/watch?v=kc8BAR7SHJI">interview</a>!</p>
