---
layout: post
status: publish
published: true
title: Fielding notes
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 5441
wordpress_url: http://inkdroid.org/journal/?p=5441
date: '2013-01-05 21:16:51 +0000'
date_gmt: '2013-01-06 04:16:51 +0000'
tags:
- uri
- http
- interviews
- rest
- roy fielding
- jon udell
- architecture
comments: []
---
<div style="float: left; font-size: 8pt; text-align: center; margin-right: 10px;"><a href="http://www.flickr.com/photos/psd/8271699529/"><img src="http://inkdroid.org/images/timbl_roy.jpg"/><br />a tongue-in-cheek change request from @timberners_lee<br />Paul Downey</a></div>
<p>I've been doing a bit of research into the design of the Web for a paper I'm trying to write. In my travels I ran across Jon Udell's <a href="http://jonudell.net/udell/2006-08-25-a-conversation-with-roy-fielding-about-http-rest-webdav-jsr-170-and-waka.html">2006 interview</a> with Roy Fielding. The interview is particularly interesting because of Roy's telling of how (as a graduate student) he found himself working on <a href="http://en.wikipedia.org/wiki/Library_for_WWW_in_Perl">libwww-perl</a> which helped him discover the architecture of the Web that was largely documented by Tim Berners-Lee's <a href="http://en.wikipedia.org/wiki/Libwww">libwww</a> HTTP library for Objective-C. </p>
<p>For the purposes of note taking, and giving some web spiders some text to index, here are a few moments that stood out:</p>
<blockquote><p>
<strong>Udell</strong>: A little later on [in Roy's dissertation] you talk about how systems based on what you call control messages are in a very different category from systems where the decisions that get made are being made by human beings, and that that's, in a sense, the ultimate rationale for designing data driven systems that are web-like, because people need to interact with them in lots of ways that you can't declaratively define. </p>
<p><strong>Fielding</strong>: Yeah, it's a little bit easier to say that people need to reuse them, in various unanticipated ways. A lot of people think that when they are building an application that they are building something that's going to last forever, and almost always that's false. Usually when they are building an application the only thing that lasts forever is the data, at least if you're lucky. If you're lucky the data retains some semblance of archivability, or reusability over time. </p>
<p>...</p>
<p><strong>Udell</strong>: There is a meme out there to the effect that what we now call REST architectural style was in a sense discovered post facto, as opposed to having been anticipated from the beginning. Do you agree with that or not?</p>
<p><strong>Fielding</strong>: No, it's a little bit of everything, in the sense that there are core principles involved that Berners-Lee was aware of when he was working on it. I first talked to Tim about what I was calling the HTTP Object Model at the time, which is a terrible name for it, but we talked when I was at the W3C in the summer of 95, about the software engineering principles. Being a graduate student of software engineering, that was my focus, and my interest originally. Of course all the stuff I was doing for the Web that was just for fun. At the time that was not considered research. </p>
<p><strong>Udell</strong>: But did you at the time think of what you then called the HTTP object model as being in contrast to more API like and procedural approaches?</p>
<p><strong>Fielding</strong>: Oh definitely. The reason for that was that the first thing I did for the Web was statistical analysis software, which turned out to be very effective at helping people understand the value of communicating over the Web. The second thing was a program called MOMSpider. It was one of the first Web spiders, a mechanism for testing all the links that were on the Web.</p>
<p><strong>Udell</strong>: And that was when you also worked on libwww-perl?</p>
<p><strong>Fielding</strong>: Right, and ... at the time it was only the second protocol library available for the Web. It was a combination of pieces from various sources, as well as a lot of my own work, in terms of filling out the details, and providing an overall view of what a Web client should do with an HTTP library. And as a result of that design process I realized some of the things Tim Berners-Lee had designed into the system. And I also found a whole bunch of cases where the design didn't make any sense, or the way it had been particularly implemented over at NCSA, or one of the other clients, or various history of the Web had turned out to be not-fitting with the rest of the design. So that led to a lot of discussions with the other early protocol developers particularly people like Rob McCool, Tony Sanders and Ari Luotonen--people who were building their own systems and understood both what they were doing with the Web, and also what complaints they were getting from their users. And from that I distilled a model of basically what was the core of HTTP. Because if you look back in the 93/94 time frame, the HTTP specification did not look all that similar to what it does now. It had a whole range of methods that were never used, and a lot of talk about various aspects of object orientation which never really applied to HTTP. And all of that came out of Tim's original implementation of libwww, which was an Objective-C implementation that was trying to be as portable as possible. It had a lot of the good principles of interface separation and genericity inside the library, and really the same principles that I ended up using in the Perl library, although they were completely independently developed. It was just one of those things where that kind of interaction has a way of leading to a more extensible design.</p>
<p><strong>Udell</strong>: So was focusing down on a smaller set of verbs partly driven by the experience of having people starting to use the Web, and starting to experience what URLs could be in a human context as well as in a programmatic context?</p>
<p><strong>Fielding</strong>: Well, that was really a combination of things. One that's a fairly common paradigm: if you are trying to inter-operate with people you've never met, try to keep it as simple as possible. There's also just inherent in the notion of using URIs to identify everything, which is of course really the basis of what the Web is, provides you with that frame of mind where you have a common resource, and you want to have a common resource interface.
</p></blockquote>
