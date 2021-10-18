---
layout: post
status: publish
published: true
title: Notes on Social Mobilization and the Networked Public Sphere
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 5854
wordpress_url: http://inkdroid.org/journal/?p=5854
date: '2013-08-07 11:27:58 +0000'
date_gmt: '2013-08-07 18:27:58 +0000'
tags:
- perl
- politics
- networks
- graphs
- research
- bruno-latour
comments: []
---

<p>If the ecosystem of the Web and graph visualizations are your thing, <a href="https://twitter.com/YochaiBenkler">Yochai Benkler</a> & co's recent <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2295953">Social Mobilization and the Networked Public Sphere: Mapping the SOPA-PIPA Debate</a> has lots of eye candy for you. I was going to include some here to entice you over there, but it doesn't seem to be available under <a href="https://www.ssrn.com/terms_of_use.html">terms</a> that would allow for that (sigh).</p>
<p>You probably remember how Wikipedia went dark to protest the <a href="https://en.wikipedia.org/wiki/Stop_Online_Piracy_Act">Stop Online Piracy Act</a>, and how phone bridges in legislative offices melted down. You may also have watched Aaron Swartz's <a href="http://www.democracynow.org/2013/1/14/freedom_to_connect_aaron_swartz_1986">moving talk</a> about the role that Demand Progress played in raising awareness about the legislation, and mobilizing people to act. If you haven't go watch it now. </p>
<p>Benkler's article really digs in to take a close look at how the "attention backbone" provided by non-traditional media outlets allowed much smaller players to coordinate and cooperate across the usual political boundaries to disrupt and ultimately defeat some of the most powerful lobby groups and politicians in the United States. I'll risk a quote from the conclusion:</p>
<blockquote><p>
Perhaps the high engagement of young, net-savvy individuals is only available for the politics of technology; perhaps copyright alone is sufficiently orthogonal to traditional party lines to traverse the left-right divide; perhaps Go Daddy is too easy a target for low-cost boycotts; perhaps all this will be easy to copy in the next cyber-astroturf campaign. Perhaps.</p>
<p>But perhaps SOPA-PIPA follows William Gibson’s “the future is already here—it’s just not very evenly distributed.” Perhaps, just as was the case with free software that preceded widespread adoption of peer production, the geeks are five years ahead of a curve that everyone else will follow. If so, then SOPA-PIPA provides us with a richly detailed window into a more decentral-ized democratic future, where citizens can come together to overcome some of the best-funded, best-connected lobbies in Washington, DC.
</p></blockquote>
<p>Obviously, I don't know what the future holds. But I hope Benkler's hunch is right, and that we have just started to see how the Web can shift political debate into a much more interactive and productive mode. </p>
<p>I've just come off of a stint of reading <a href="https://en.wikipedia.org/wiki/Bruno_Latour">Bruno Latour</a>, so the data driven network analysis and identification of human and non-human actors participating in a <em>controversy</em> that needed mapping really struck a chord with me. I felt like I wandered across an extremely practical, relevant and timely example of how Latour's ideas can be put into practice, in a domain I work with every day--the Web.</p>
<p>But I must admit the article was most interesting to me because of some of the technical aspects of how the work was performed. The appendix at the end of the paper provides a very lucid description of how they used a tool called <a href="http://www.mediacloud.org/">MediaCloud</a> to collect, house and analyze the data that formed the foundation of their study. MediaCloud is an open source project devloped at the Berkman Center and is available on <a href="https://github.com/berkmancenter/mediacloud">GitHub</a>. MediaCloud allows researchers to collect material from the Web, and then perform various types of analysis on it. Conceptually it's in a similar space as the (recently IMLS funded) <a href="https://github.com/gwu-libraries/social-feed-manager">Social Feed Manager</a> that <a href="http://twitter.com/dchud">Dan Chudnov</a> is working on at George Washington University, now with help from Yale, the University of North Texas and the Center for Jewish History. The appendix is an excellent picture of the sorts of questions we can expect social science researchers to ask of data collections--thankfully absent the distracting term <em>big data</em>. What's important is the questions they asked, and how they went about answering them -- not whether they were keyword compliant.</p>
<p>A few things about MediaCloud and its use that stood out for me:</p>
<h3>RSS</h3>
<p>Even after all these years, syndication technologies like RSS and Atom continue to be useful. Somewhat paradoxically the death of Google Reader and the increasing awareness of the importance of the <a href="http://indiewebcamp.com/why">indieweb</a> seem to have ushered in a sort of <a href="http://dashes.com/anil/2013/07/the-golden-age-of-rss.html">golden age of RSS</a>. Or at least their is increased awareness of its role. I think it's important for content providers to know that simple technologies like RSS still perform an important function in this age of fit to purpose Web APIs.</p>
<h3>Time</h3>
<p>Time is a very important dimension to doing this sort of research. Benkler's analysis hinges on the view of the graph <em>over time</em> as the controversy of the SOPA debate evolved. It's not just a picture of what the graph of content looks like afterwards. It's only when looking at it over time that the various actors are revealed. Getting the time out of RSS feeds wasn't so bad, but the lather-rinse-repeat nature to finding more stories and media outlets on the web, meant that they had to come up with some heuristics for determining where the content should be situated in time.</p>
<h3>Density</h3>
<p>Similarly not all content and links on pages is relevant for this sort of analysis. Advertisements and boilerplate headers/footers around content can often add unwanted noise to the analysis. The authors drew on some <a href="http://ai-depot.com/articles/the-easy-way-to-extract-useful-text-from-arbitrary-html/">research</a> from 2007 on <em>HTML density</em> to extract just the salient bits of content in the HTML representation. Services like Readability have <a href="http://stackoverflow.com/questions/3652657/what-algorithm-does-readability-use-for-extracting-text-from-urls">algorithms and heuristics</a> for doing similar things, but I hadn't heard it described so succinctly before as it was in Benkler's article. The more dense the HTML tags, the less likely it is that the text is the primary content of the page. Truth be told, I'm writing this post for my future self when I go looking for this technique. I think I found the <a href="https://github.com/berkmancenter/mediacloud/blob/master/lib/MediaWords/Crawler/AnalyzeLines.pm#L38<br />
">MediaCloud function</a> for generating the HTML density. It might be nice to spin this out into a separate reusable piece...</p>
<h3>Perl</h3>
<p>Speaking of code, according to Github, MediaCloud is 85.9% Perl and 10.8% JavaScript, and was coded up mainly by <a href="https://twitter.com/dlarochelle">David Larouchelle</a>, <a href="http://wiki.pypt.lt/">Linas Valiukas</a>, <a href="http://blogs.law.harvard.edu/hroberts/">Hal Roberts</a>. There is a fair bit of text munging going on in MediaCloud, so I shouldn't be surprised to see Perl so heavily used...but I was. I don't reach for Perl much these days, but I imagine there's no shortage of demand in certain circles (nudge, nudge, wink, wink, say no more) for Perl hackers. <a href="https://en.wikipedia.org/wiki/Larry_Wall">Larry Wall</a> was a linguist, and Perl's roots are in this sort of linguistic analysis cooked together with the medium of the Web -- it's nice to see some constants in the software development world as it so often froths over with the latest tech trend or meme.</p>
<p>So, it was a good read. Highly recommended. 5 stars. <a href="https://cyber.law.harvard.edu/wealth_of_networks/Main_Page">Wealth of Networks</a> is now in my queue.</p>
