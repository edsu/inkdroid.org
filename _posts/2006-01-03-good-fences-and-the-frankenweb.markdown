---
layout: post
status: publish
published: true
title: good fences and the frankenweb
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 62
wordpress_url: http://www.inkdroid.org/journal/?p=62
date: '2006-01-03 11:09:02 +0000'
date_gmt: '2006-01-03 18:09:02 +0000'
tags: []
comments:
- id: 23
  author: Walter Lewis
  author_email: lewisw@hhpl.on.ca
  author_url: ''
  date: '2006-01-06 20:14:29 +0000'
  date_gmt: '2006-01-07 03:14:29 +0000'
  content: So is it Frankenweb or Service Oriented Architecture, when a block of Ruby
    code calls an SQL database before generated a response to an request from a Perl
    RESTful service that another site calls from an asp page, before passing the results
    through an XSLT transformation to handoff a valid XHTML page?  What matters is
    that a) it works b) in a timely fashion.
---

<p><img src="/images/frankenstein.jpg" width="200" align="left" /> Ian Bicking has some interesting <a href="http://blog.ianbicking.org/theres-so-much-more-than-rails.html">notes</a> about competing web development technologies--mainly in response to <a href="http://blogs.law.harvard.edu/ivan/2005/12/20#a42">some</a> <a href="http://blogs.law.harvard.edu/ivan/2005/07/12#a9">posts</a> from Ivan Krystic.  The discussion is definitely recommended, especially if you find yourself looking at web application frameworks for Python and Ruby. I found the pivot point of the discussion to be around a new term (for me) -- the "frankenweb".</p>
<p>My understanding is that like Frankenstein (a being created by stitching together random body parts from dead humans) the frankenweb is an unholy mixture of MVC components pulled from different projects, when put together result in an ugly partially functional whole. I think this characterization of Ian's work is really unpleasant, but strangely compelling. I think that this is mainly because of Ian's response:</p>
<blockquote><p>
The "Frankenweb" is a feature, and it describes the web we have, the software we have, and the future that is inevitable. The world was never all J2EE, or ASP(.NET), or PHP, and it won't be all Rails either.
</p></blockquote>
<p>I think Ian is right on about this: "frankenweb" does describe the web we have, and hopefully the web we will continue to have--and the degree to which we can all interoperate is the degree to which the web will succeed. Perhaps I'm seeing the frankenweb through Weinberger-Colored-Glasses, having just finished <a href="http://www.smallpieces.com/">Small Pieces Loosely Joined</a> (which I thoroughly enjoyed and plan to write about later if there is time).  Weinberger does an excellent job of distilling the essence of the web, and how its architecture enabled it to pull itself up from it's own bootstraps, grow and adapt:</p>
<blockquote><p>
In the real world, I can't just put in a door from my apartment to my neighbor's so that anyone can go through. But that's exactly how the web was built. Tim Berners-Lee orginally created the web so that scientists could link to the work of other scientists without having to ask their permission. If I put a page into the public Web, you can link to it without having to ask to do anything special, without asking me if it's alright with me, and without even letting me know that you've done it...The web couldn't have been built if everyone had to ask permission first.
</p></blockquote>
<p>Of course I'm conflating links between pages, and API links between software components...but what Ian says about embracing the frankenweb seems to resonate with this somehow. </p>
<p>It's also quite disorienting to hear Ivan and others lauding tight coupling: </p>
<blockquote><p>
You don't see the Ruby on Rails guys modularizing Rails to the point of pain. You see them delivering a single, high-polish, tightly coupled product that does its job well.
</p></blockquote>
<p>Given the various pluggable modules that <a href="http://dev.rubyonrails.org/browser/trunk">make up</a> Rails I think "tightly coupled" is largely an overstatement. Granted they are available in the same code base, and I haven't tried to use one of them in isolation--but I imagine it could be done if someone wanted to say, use a activerecord model in a script or something. <a href="http://www.pragmaticprogrammer.com/ppbook/index.shtml">The Pragmatic Programmer</a> has a really nice chapter on decoupling, and the authors are actually heavily involved in the Ruby/Rails community. The chapter starts out with a nice quote from Robert Frost's poem <a href="http://www.writing.upenn.edu/~afilreis/88/frost-mending.html">The Mending Wall</a>:</p>
<blockquote><p>
Good fences make good neighbors.
</p></blockquote>
<p>It seems to me that Ian is doing the hard work of patching some of these fences, and building a few and deserves a lot of credit for the effort and cat herding.</p>
