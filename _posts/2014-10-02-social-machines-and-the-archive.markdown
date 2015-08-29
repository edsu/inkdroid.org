---
layout: post
status: publish
published: true
title: Social Machines and the Archive
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 8167
wordpress_url: http://inkdroid.org/journal/?p=8167
date: '2014-10-02 08:56:06 +0000'
date_gmt: '2014-10-02 15:56:06 +0000'
tags:
- twitter
- data curation
- mit
comments:
- id: 87200
  author: Running on Social Machines |
  author_email: ''
  author_url: http://karencooperfiles.wordpress.com/2014/11/10/running-on-social-machines/
  date: '2014-11-10 08:49:56 +0000'
  date_gmt: '2014-11-10 15:49:56 +0000'
  content: "[&#8230;] Ed Summers, who frequently discusses archiving social media,
    supports LSM as a formal recognition of these platforms as a &#8220;new medium
    that deserves its own research focus, and investment in infrastructure.&#8221;
     He relates his own project to collect and store tweets documenting the Ferguson
    protests. LSM will ideally develop a critical lens to understand &#8220;what sorts
    of interactions these automated social media agents can participate in, formulating
    their objectives, and for measuring their effects.&#8221; [&#8230;]"
---
<p>Yesterday MIT announced that Twitter made a 5 million dollar investment to help them create a <a href="http://socialmachines.media.mit.edu/">Laboratory for Social Machines (LSM)</a> as part of the <a href="http://www.media.mit.edu/">MIT Media Lab</a> proper:</p>
<blockquote class="twitter-tweet" lang="en"><p>MIT launches Laboratory for Social Machines with major Twitter investment <a href="http://t.co/HPupRkTWAm">http://t.co/HPupRkTWAm</a> <a href="https://twitter.com/mitlsm">@MITLSM</a> <a href="https://twitter.com/dkroy">@dkroy</a></p>
<p>&mdash; MIT Media Lab (@medialab) <a href="https://twitter.com/medialab/status/517361268580429824">October 1, 2014</a></p></blockquote>
<p><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script></p>
<p>It seems like an important move for MIT to formally recognize that social media is a new medium that deserves its own research focus, and investment in infrastructure. The language on the homepage gives a nice flavor for the type of work they plan to be doing. I was particularly struck by their frank assessment of how our governance systems are failing us, and social media's potential role in understanding and helping solve the problems we face:</p>
<blockquote><p>In a time of growing political polarization and institutional distrust, social networks have the potential to remake the public sphere as a realm where institutions and individuals can come together to understand, debate and act on societal problems. To date, large-scale, decentralized digital networks have been better at disrupting old hierarchies than constructing new, sustainable systems to replace them. Existing tools and practices for understanding and harnessing this emerging media ecosystem are being outstripped by its rapid evolution and complexity.</p></blockquote>
<p>Their notion of "social machines" as "networked human-machine collaboratives" reminds me a lot of my somewhat stumbling work on <a href="http://inkdroid.org/journal/2014/07/10/why-congressedits/">@congressedits</a> and <a href="http://inkdroid.org/journal/2014/08/30/a-ferguson-twitter-archive/">archiving Ferguson Twitter data</a>. As <a href="http://www.nickdiakopoulos.com/2014/07/16/diversity-in-the-robot-reporter-newsroom/">Nick Diakopoulos</a> has pointed out we really need a theoretical framework for thinking about what sorts of interactions these automated social media agents can participate in, formulating their objectives, and for measuring their effects. <em>Full disclosure: I work with Nick at the University of Maryland, but he wrote that post mentioning me before we met here, which was kind of awesome to discover after the fact.</em></p>
<p>Some of the <a href="http://blogs.wsj.com/digits/2014/10/01/twitter-mit-create-new-research-lab-to-analyze-social-media/">news stories</a> about the Twitter/MIT announcement have included this quote from <a href="https://twitter.com/dkroy">Deb Roy</a> from MIT who will lead the LSM:</p>
<blockquote><p>The Laboratory for Social Machines will experiment in areas of public communication and social organization where humans and machines collaborate on problems that can’t be solved manually or through automation alone.</p></blockquote>
<p>What a lovely encapsulation of the situation we find ourselves in today, where the problems we face are localized and yet global. Where algorithms and automation are indispensable for analysis and data gathering, but people and collaborative processes are all the more important. The ethical dimensions to algorithms and our understanding of them is also of growing importance, as the stories we read are mediated more and more by automated agents. It is super that Twitter has decided to help build this space at MIT where people can answer these questions, and have the infrastructure to support asking them.</p>
<p>When I read the quote I was immediately reminded of the problem that some of us were discussing at the last Society of American Archivists meeting in DC: how do we document the protests going on in Ferguson? </p>
<p>Much of the primary source material was being distributed through Twitter. Internet Archive were <a href="https://docs.google.com/forms/d/1uTyINjaFgLMzizrxqGzGbS8avb5_1xJJ2ostRnhvxXo/viewform">looking for</a> nominations of URLs to use in their web crawl. But weren't all the people tweeting about Ferguson including URLs for stories, audio and video that were of value? If people are talking about something can we infer its value in an archive? Or rather, is it a valuable place to start inferring from?</p>
<p>I ended up <a href="http://inkdroid.org/journal/2014/08/30/a-ferguson-twitter-archive/">archiving</a> 13 million of the tweets that mention "ferguson" for the 2 week period after the killing of Michael Brown. I then went through the URLs in these tweets, and <a href="http://github.com/edsu/unshrtn">unshortened</a> them and came up with a list of 417,972 unshortened URLs. You can see the top 50 of them <a href="https://edsu.github.io/ferguson-urls/">here</a>, and the top 50 for August 10th (the day after Michael Brown was killed) <a href="https://edsu.github.io/ferguson-urls/day1.html">here</a>.</p>
<p>I did a lot of this work in prototyping mode, writing quick one off scripts to do this and that. One nice unintended side effect was <a href="http://github.com/edsu/unshrtn">unshrtn</a> which is a microservice for unshortening URLs, which <a href="http://www.cdlib.org/contact/staff_directory/jkunze.html">John Kunze</a> gave me the idea for years ago. It gets a bit harder when you are unshortening millions of URLs. </p>
<p>But what would a tool look like that let us analyze events in social media, and helped us (archivists) collect information that needs to be preserved for future use? These tools are no doubt being created by those in positions of power, but we <a href="http://www2.archivists.org/statements/saa-core-values-statement-and-code-of-ethics">need</a> them for the archive as well. We also desperately need to explore what it means to explore these archives: how do we provide access to them, and share them? It feels like there could be a project here along the lines of what George Washington University University are doing with their <a href="http://social-feed-manager.readthedocs.org/">Social Feed Manager</a>. <em>Full disclosure again: I've done some contracting work with the fine folks at GW on a <a href="http://findit.library.gwu.edu/catalog/">new interface</a> to their library catalog.</em></p>
<p>The 5 million dollars aside, an important contribution that Twitter is making here (that's probably worth a whole lot more) is firehose access to the Tweets that are happening now, as well as the historic data. I suspect Deb Roy's <a href="http://dkroy.media.mit.edu/">role</a> at MIT as a professor and as Chief Media Scientist at Twitter helped make that happen. Since MIT has such strong history of supporting open research, it will be interesting to see how the LSM chooses to share data that supports its research.</p>
