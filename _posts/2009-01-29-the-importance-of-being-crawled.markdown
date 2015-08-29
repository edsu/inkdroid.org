---
layout: post
status: publish
published: true
title: the importance of being crawled
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 734
wordpress_url: http://inkdroid.org/journal/?p=734
date: '2009-01-29 03:33:56 +0000'
date_gmt: '2009-01-29 10:33:56 +0000'
tags:
- search
- lcsh
- google
- crawling
- microsoft
- yahoo
comments: []
---
<p>While lcsh.info was up and running harvesters actively crawled it. At its core all lcsh.info did was mint a URI for every Library of Congress Subject Heading. This is similar in spirit to <a href="http://en.wikipedia.org/wiki/Brewster_Kahle">Brewster Kahle's</a> more ambitious <a href="http://openlibrary.org">OpenLibrary</a> project to mint a URI for every book, or in his words:</p>
<blockquote><p>
One web page for every book
</p></blockquote>
<p><em>Aside: It's also similar in spirit to RESTful web development, and to the linked data, semantic web effort generally.</em></p>
<p>Minting a URI for every Library of Congress Subject Heading meant that there were lots of densely interlinked pages. Some researchers at Stanford did a data visualization of LCSH two years ago, which illustrates just how deeply linked LCSH is:</p>
<div align="middle">
<img src="http://inkdroid.org/images/lcsh-viz.png"  />
</div>
<p>I wanted lcsh.info to get crawled so I intentionally put some high level, well connected concepts (Humanities, Science, etc) on the home page to provide a doorway for web crawlers to walk through into the site and begin discovering all the broader, narrower, related links between concepts--without having to perform a search.</p>
<p>So lcsh.info is <a href="http://lcsh.info/comments1.html">down</a> now, but it turns out you can still see its shadow living on in quite a usable form in web search engines. For example type this into any of the big three search engines:</p>
<blockquote><p>
site:lcsh.info mathematics
</p></blockquote>
<p>And you'll see:</p>
<h2>Google</h2>
<p><a href="http://www.google.com/search?q=site:lcsh.info+mathematics"><img src="http://inkdroid.org/images/lcsh_google.png" width="450" /></a></p>
<h2>Yahoo</h2>
<p><a href="http://search.yahoo.com/search?p=site:lcsh.info+mathematics"><br />
<img src="http://inkdroid.org/images/lcsh_yahoo.png" width="450" /><br />
</a></p>
<h2>Microsoft</h2>
<p><a href="http://search.live.com/results.aspx?q=site:lcsh.info+mathematics"><br />
<img src="http://inkdroid.org/images/lcsh_microsoft.png" width="450" /><br />
</a></p>
<p>It's interesting that (unlike Google and Yahoo) Microsoft's relevancy ranking actually puts the heading for "Mathematics" at the top. Also note that simple things like giving the page a good title, and descriptive text make the heading show up in usable form in each search engine.</p>
<p>It's not too surprising that trying the same for <a href="http://www.google.com/search?q=site%3Aauthorities.loc.gov+mathematics">authorities.loc.gov</a> doesn't work out so well. Umm, yeah <a href="http://authorities.loc.gov/robots.txt">http://authorities.loc.gov/robots.txt</a>...</p>
<p>On the one hand, I'm just being nostalgic looking at the content that once was there &sigh;. But on the other there seems to be a powerful message here, that putting data out onto the open web, and making it crawlable means your content is viewable via lots of different lenses. Maybe you don't have to get search exactly right on your website, let other people do it for you.</p>
<p>Two other things come to mind: <a href="http://en.wikipedia.org/wiki/LOCKSS">LOCKSS</a> and Brewster's even more ambitious <a href="http://archive.org">project</a>. I've been sort <a href="http://www.flickr.com/photos/ari/2238959127/">hoping</a> that somehow or another the Internet Archive and the Open Library would find there way into being publicly funded projects. What if? I can daydream right?</p>
