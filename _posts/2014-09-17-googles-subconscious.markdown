---
layout: post
status: publish
published: true
title: Google's Subconscious
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 8134
wordpress_url: http://inkdroid.org/journal/?p=8134
date: '2014-09-17 04:19:17 +0000'
date_gmt: '2014-09-17 11:19:17 +0000'
tags:
- google
- poetry
- writing
- algorithms
comments: []
---

<p>Can a poem provide insight into the inner workings of a complex algorithm? If Google Search had a subconscious, what would it look like? If Google mumbled in its sleep, what would it say?</p>
<p>A few days ago, I ran across these two quotes within hours of each other:</p>
<blockquote>
<p>So if algorithms like autocomplete can defame people or businesses, our next logical question might be to ask how to hold those algorithms accountable for their actions.</p>
<p><cite><a href="http://www.nickdiakopoulos.com/2013/08/06/algorithmic-defamation-the-case-of-the-shameless-autocomplete/">Algorithmic Defamation: The Case of the Shameless Autocomplete</a> by <a href="https://twitter.com/ndiakopoulos">Nick Diakopoulos</a></cite></p>
</blockquote>
<p>and</p>
<blockquote>
<p>A beautiful poem should re-write itself one-half word at a time, in pre-determined intervals.</p>
<p><cite><a href="http://www.upne.com/0819569288.html">Seven Controlled Vocabluaries</a> by <a href="https://twitter.com/chalkknit">Tan Lin</a>.</cite></p>
</blockquote>
<p>Then I got to thinking about what a poem auto-generated from Google's autosuggest might look like. Ok, the idea is of dubious value, but it turned out to be pretty easy to do in just <a href="http://inkdroid.org/vogon">HTML and JavaScript</a> (low computational overhead), and I quickly pushed it up to <a href="http://github.com/edsu/vogon">GitHub</a>.</p>
<p>Here's the <a href="https://en.wikipedia.org/wiki/Heuristic">heuristic</a>:</p>
<ol>
<li>Pick a title for your poem, which also serves as a <code>seed</code>.</li>
<li>Look up the <code>seed</code> in Google's <a href="https://stackoverflow.com/questions/5102878/google-suggest-api">lightly documented</a> suggestion API.</li>
<li>Get the longest <code>suggestion</code> (text length).</li>
<li>Output the <code>suggestion</code> as a line in the poem.</li>
<li>Stop if more than <code>n</code> lines have been written.</li>
<li>Pick a random substring in the <code>suggestion</code> as the <code>seed</code> for the next line.</li>
<li>GOTO 2</li>
</ol>
<p>The initial results were kind of light on verbs, so I found a list of verbs and randomly added them to the suggested text, occasionally. The poem is generated in your browser using JavaScript so hack on it and send me a pull request.</p>
<p>Assuming that Google's suggestions are personalized for you (if you are logged into Google) and your location (your IP address), the poem is dependent on you. So I suppose it's more of a collective subconscious in a way.</p>
<p>If you find an amusing phrase, please hover over the stanza and tweet it -- I'd love to see it!</p>
