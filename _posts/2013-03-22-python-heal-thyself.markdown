---
layout: post
status: publish
published: true
title: python heal thyself
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 5552
wordpress_url: http://inkdroid.org/journal/?p=5552
date: '2013-03-22 06:26:40 +0000'
date_gmt: '2013-03-22 13:26:40 +0000'
tags:
- python
- twitter
- gender
- pycon
- d3
- tagcloud
- wordclouds
comments:
- id: 85770
  author: pbinkley
  author_email: peter.binkley@ualberta.ca
  author_url: ''
  date: '2013-03-22 10:15:14 +0000'
  date_gmt: '2013-03-22 17:15:14 +0000'
  content: "\"so?\" (male) vs \"OMG!\" (female) is eloquent, I think.\r\n\r\nA friend
    who's doing sociological research mentioned LIWC (http://www.liwc.net/), which
    calculates \"the degree any text uses positive or negative emotions, self-references,
    causal words, and 70 other language dimensions\". It might be interesting to see
    what it can do with a corpus of tweets. But it's $100 for the full version and
    $30 for the lite version."
---
<p>https://twitter.com/ginatrapani/status/314552254592069632</p>
<p>After seeing Gina's tweet, I was curious to see if there was any difference by gender in the tweets directed at <a href="http://twitter.com/adriarichards">@adriarichards</a> over the recent <a href="https://news.ycombinator.com/item?id=5391667">controversy</a> at PyCon. I wasn't confident I would find anything. It was more a feeble attempt to try to make Python make sense of something senseless that happened at PyCon; or to paraphrase Physician, heal thyself...for Python to heal itself.</p>
<p>I used <a href="http://github.com/edsu/twarc">twarc</a> to collect 13,472 tweets that mentioned @adriarichards from the search API. I then added a <a href="https://github.com/edsu/twarc/blob/master/utils/gender.py">utility filter</a> that uses <a href="https://github.com/bmuller/genderator">genderator</a> to filter the line oriented JSON based on a guess at the gender (Twitter doesn't track it). genderator identified 2,433 (18%) tweets from women, 5,268 (39%) from men, and 5,771 (42%) that were of unknown gender. I then added another <a href="https://github.com/edsu/twarc/blob/master/utils/wordcloud.py">utility</a> that reads a stream of Tweets and generates a tag cloud as a standalone HTML file using <a href="https://github.com/jasondavies/d3-cloud">d3-cloud</a>.</p>
<p>I put them all together on the command line like this:</p>
<pre>
% twarc.py @adriarichards
% cat @adriarichards-20130321200320.json | utils/gender.py --gender male | utils/wordcloud.py > male.html
% cat @adriarichards-20130321200320.json | utils/gender.py --gender female | utils/wordcloud.py > female.html
</pre>
<p>I realize word clouds <a href="http://www.niemanlab.org/2011/10/word-clouds-considered-harmful/">aren't probably the greatest</a> way to visualize the differences in these messages. If you have better ideas let me know. I made the <a href="http://inkdroid.org/data/adriarichards.json.gz" rel="nofollow">tweet JSON</a> available if you want to try your own visualization.</p>
<p><a href="http://inkdroid.org/data/adriarichards-male.html"><img src="http://inkdroid.org/images/adriarichards-male.png"/></a><br />
<a href="http://inkdroid.org/data/adriarichards-female.html"><img src="http://inkdroid.org/images/adriarichards-female.png"/></a></p>
<p>Looking at these didn't yield much insight. So instead of visualizing all the words that each gender used, I wondered what the clouds would look like if I limited them to words that were uniquely spoken by each gender. In other words, what words did males use in their tweets which were not used by females, and vice-versa. There were 1,333 (11%) uniquely female words, and 4,767 (39%) uniquely male words, with a shared vocabulary of 5,988 (50%) words. </p>
<p><a href="http://inkdroid.org/data/adriarichards-male-unique.html"><img src="http://inkdroid.org/images/adriarichards-male-unique.png"/></a><br />
<a href="http://inkdroid.org/data/adriarichards-female.html"><img src="http://inkdroid.org/images/adriarichards-female-unique.png"/></a></p>
<p>I'm not sure there is much more insight here either. I guess there is some weak comfort in the knowledge that 1/2 of the words used in these tweets were shared by both sexes.</p>
