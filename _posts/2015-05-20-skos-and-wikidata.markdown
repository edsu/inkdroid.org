---
layout: post
status: publish
published: true
title: SKOS and Wikidata
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 8615
wordpress_url: http://inkdroid.org/journal/?p=8615
date: '2015-05-20 10:53:51 +0000'
date_gmt: '2015-05-20 17:53:51 +0000'
tags:
- rdf
- skos
- python
- astronomy
- wikidata
comments: []
---

<p>For <a href="https://twitter.com/dayofdh">#DayOfDH</a> yesterday I created a <a href="https://vimeo.com/128305641">quick video</a> about some data normalization work I have been doing using Wikidata entities. I may write more about this work later, but the short version is that I have a bunch of spreadsheets with names in them (authors) in a variety of formats and transliterations, which I need to collapse into a unique identifier so that I can provide a unified display of the data per unique author. So for example, my spreadsheets have information for Fyodor Dostoyevsky using the following variants:</p>
<ul>
<li>Dostoeieffsky, Feodor</li>
<li>Dostoevski</li>
<li>Dostoevski, F. M.</li>
<li>Dostoevski, Fedor</li>
<li>Dostoevski, Feodor Mikailovitch</li>
<li>Dostoevskii</li>
<li>Dostoevsky</li>
<li>Dostoevsky, Fiodor Mihailovich</li>
<li>Dostoevsky, Fyodor</li>
<li>Dostoevsky, Fyodor Michailovitch</li>
<li>Dostoieffsky</li>
<li>Dostoieffsky, Feodor</li>
<li>Dostoievski</li>
<li>Dostoievski, Feodor Mikhailovitch</li>
<li>Dostoievski, Feodore M.</li>
<li>Dostoievski, Thedor Mikhailovitch</li>
<li>Dostoievsky</li>
<li>Dostoievsky, Feodor Mikhailovitch</li>
<li>Dostoievsky, Fyodor</li>
<li>Dostojevski, Feodor</li>
<li>Dostoyeffsky</li>
<li>Dostoyefsky</li>
<li>Dostoyefsky, Theodor Mikhailovitch</li>
<li>Dostoyevski, Feodor</li>
<li>Dostoyevsky</li>
<li>Dostoyevsky, Fyodor</li>
<li>Dostoyevsky, F. M.</li>
<li>Dostoyevsky, Feodor Michailovitch</li>
<li>Dostoyevsky, Feodor Mikhailovich</li>
</ul>
<p>So, obviously, I wanted to normalize these. But I also want to link the name up to an identifier that could be useful for obtaining other information, such as an image of the author, a description of their work, possibly link to works by the author, etc. I'm going to try to map the authors to Wikidata, largely because there are links from Wikidata to other places like the Virtual International Authority File, and Freebase, but there are also images on Wikimedia Commons, and nice descriptive text for the people. As an example <a href="https://www.wikidata.org/wiki/Q991">here</a> is the Wikidata page for Dostoyevsky.</p>
<p>To aid in this process I created a very simple command line tool and library called <a href="http://github.com/edsu/wikidata_suggest">wikidata_suggest</a> which uses Wikidata's suggest API to interactively match up a string of text to a Wikidata entity. If Wikidata doesn't have any suggestions as a fallback the utility looks in a page of Google's search results for a Wikipedia page and then will optionally let you use that text.</p>
<h2>SKOS</h2>
<p>Soon after tweeting about the utility and the video I made about it I heard from Alberto who works on the <a href="https://en.wikipedia.org/wiki/Astrophysics_Data_System">NASA Astrophysics Data System</a> and was interested in using wikidata_suggest to try to link up the <a href="http://astrothesaurus.org/">Unified Astronomy Thesaurus</a> to Wikidata.</p>
<blockquote class="twitter-tweet" lang="en">
<p lang="en" dir="ltr">
    <a href="https://twitter.com/libcce">@libcce</a> map UAT to <a href="https://twitter.com/wikidata">@wikidata</a>? <a href="https://t.co/sqyPRdqd9U">https://t.co/sqyPRdqd9U</a>
  </p>
<p>— Alberto Accomazzi (@aaccomazzi) </p>
<p>  <a href="https://twitter.com/aaccomazzi/status/600842809910894593">May 20, 2015</a>
</p></blockquote>
<p><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script> Fortunately the UAT is made available as a SKOS RDF file. So I wrote a little proof of concept script named <a href="https://github.com/edsu/skos_wikidata">skos_wikidata.py</a> that loads a SKOS file, walks through each skos:Concept and asks you to match the skos:prefLabel to Wikidata using <a href="http://github.com/edsu/wikidata_suggest">wikidata_suggest</a>. Here's a quick video I made of what this process looks like:</p>
<p><iframe src="https://player.vimeo.com/video/128396304" width="500" height="313" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></p>
<p>I guess this is similar to what you might do in <a href="http://openrefine.org/">OpenRefine</a>, but I wanted a bit more control over how the data was read in, modified and matched up. I'd be interested in your ideas on how to improve it if you have any.</p>
<p>It's kind of funny how Day of Digital Humanities quickly morphed into Day of Astrophysics...</p>
