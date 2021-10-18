---
layout: post
status: publish
published: true
title: simplicity and digital preservation, sorta
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2388
wordpress_url: http://inkdroid.org/journal/?p=2388
date: '2010-08-27 09:21:28 +0000'
date_gmt: '2010-08-27 16:21:28 +0000'
tags:
- data
- cdl
- unix
- digital-preservation
- microservices
- design
comments:
- id: 83079
  author: claimid.com/egh
  author_email: ''
  author_url: http://claimid.com/egh
  date: '2010-08-27 12:48:23 +0000'
  date_gmt: '2010-08-27 19:48:23 +0000'
  content: Great comments, Ed. It just goes to show that simple is really complicated.
- id: 83080
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2010-08-27 13:06:41 +0000'
  date_gmt: '2010-08-27 20:06:41 +0000'
  content: That about sums it up eh? :-)
---

<p>Over on the <a href="http://groups.google.com/group/digital-curation">Digital Curation</a> discussion list <a href="http://www.cdlib.org/contact/staff_directory/ehetzner.html">Erik Hetzner</a> of the <a href="http://www.cdlib.org/">California Digital Library</a> <a href="http://groups.google.com/group/digital-curation/browse_thread/thread/ac208143d71f0ab7">raised</a> the topic of <em>simplicity</em> as it relates to <a href="http://en.wikipedia.org/wiki/Digital_preservation">digital preservation</a>, and specifically to CDL's notion of <a href="http://www.cdlib.org/services/uc3/curation/">Curation Microservices</a>. He referenced a recent bit of writing by <a href="http://lamp.epfl.ch/~odersky/">Martin Odersky</a> (the creator of <a href="http://www.scala-lang.org/">Scala</a>) with the title <a href="http://lamp.epfl.ch/~odersky/blogs/isscalacomplex.html">Simple or Complicated</a>. In one of the responses <a href="http://tingletech.tumblr.com/">Brian Tingle</a> (also of CDL) suggested that simplicity for an end user and simplicity for the programmer are often inversely related. My friend <a href="http://weblog.kevinclarke.info/">Kevin Clarke</a> prodded me in <a href="irc://irc.freenode.net/code4lib">#code4lib</a> into making my <a href="http://groups.google.com/group/digital-curation/browse_thread/thread/34a271426124f65c">response</a> to the discussion list into a blog post so, here it is (slightly edited).</p>
<p>For me, the <a href="http://lamp.epfl.ch/~odersky/blogs/isscalacomplex.html">Odersky piece</a> is a really nice essay on why <em>simplicity is often in the eye of the beholder</em>. Often the key to simplicity is working with people who see things in roughly the same way. People who have similar needs, that are met by using particular approaches and tools. Basically a shared and healthy culture to make emergent complexity palatable.</p>
<p>Brian made the <a href="http://groups.google.com/group/digital-curation/msg/b509d48ae3c97eb1">point</a> about simplicity for programmers having an inversely proportional relationship to simplicity for end users, or in his own words:</p>
<blockquote><p>
I think that the simpler we make it for the programmers, usually the more complicated it becomes for the end users, and visa versa.
</p></blockquote>
<p>I think the only thing to keep in mind is that the distinction between programmers and end users isn't always clear. </p>
<p>As a software developer I'm constantly using, or inheriting someone else's code: be it a third party library that I have a dependency on, or a piece of software that somebody wrote once upon a time, who has moved on elsewhere. In both these cases I'm effectively an end-user of a program that somebody else designed and implemented. The interfaces and abstractions that this software developer has chosen are the things I (as an end user) need to be able to understand and work with. Ultimately, I think that it's easier to keep software usable for end users (of whatever flavor) by keeping the software design itself  simple. </p>
<p>Simplicity makes the software easier to refactor over time  when the inevitable happens, and someone wants some new or altered behavior. Simplicity also should make it clear when a suggested change to a piece of software doesn't fit the design of the software in question, and is best done elsewhere. One of the best rules of thumb I've encountered over the years to help get to this place is the <a href="http://en.wikipedia.org/wiki/Unix_philosophy">Unix Philosophy</a>: </p>
<blockquote><p>
Write programs that do one thing and do it well. Write programs to work together.
</p></blockquote>
<p>As has been noted <a href="http://or2010.fecyt.es/Resources/documentos/GSabstracts/curationMicro-services.pdf">elsewhere</a>, composability is one of the guiding principles of the Microservices approach--and it's why I'm a big fan  (in principle). Another aspect to the Unix philosophy that Microservices seems to embody is: </p>
<blockquote><p>
Data dominates.
</p></blockquote>
<p>The software can (and will) come and go, but we are left with the data. That's the reality of digital preservation. It could be argued that the programs themselves are data, which gets us into sci-fi virtualization scenarios. Maybe someday, but I personally don't think we're there yet. </p>
<p>Another approach I've found that works well to help ensure code simplicity has been <a href="http://en.wikipedia.org/wiki/Unit_testing">unit testing</a>. Admittedly it's a bit of a <a href="http://www.codinghorror.com/blog/2006/07/i-pity-the-fool-who-doesnt-write-unit-tests.html">religion</a>, but at the end of the day, writing tests for your code encourages you to use the APIs, interfaces and abstractions that you are creating. So you notice sooner when things don't make sense. And of course, they let you refactor with a safety net, when the inevitable changes rear their head. </p>
<p>And, <a href="http://c2.com/cgi/wiki?CodeForTheMaintainer">another</a> slightly more humorous way to help ensure simplicity:</p>
<blockquote><p>
Always code as if the person who ends up maintaining your code is a violent psychopath who knows where you live.
</p></blockquote>
<p>Which leads me to a jedi mind trick my former colleague <strike><a href="http://en.wikipedia.org/wiki/Keyser_S%C3%B6ze">Keyser Söze</a></strike> <a href="http://andy.boyko.net">Andy Boyko</a> tried to teach me (I think): i<em>t's useful to know when you don't have to write any code at all</em>. Sometimes existing code can be used in a new context. And sometimes the perceived problem can be recast, or examined from a new perspective that makes the problem go away. I'm not sure what all this has to do with digital preservation. The  great thing about what CDL is doing with microservices is they are trying to focus on the *what*, and not the *how* of digital preservation. Whatever ends up happening with the implementation of<a href="https://confluence.ucop.edu/download/attachments/13860983/Merritt-latest.pdf"> Merritt</a> itself, I think they are discovering what the useful patterns of digital preservation are, trying them out, and documenting them...and it's incredibly important work that I don't really see happening much elsewhere. </p>
