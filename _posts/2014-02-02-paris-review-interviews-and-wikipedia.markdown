---
layout: post
status: publish
published: true
title: Paris Review Interviews and Wikipedia
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 7085
wordpress_url: http://inkdroid.org/journal/?p=7085
date: '2014-02-02 20:29:06 +0000'
date_gmt: '2014-02-03 03:29:06 +0000'
tags:
- linked data
- paris review
- literature
comments:
- id: 86852
  author: February Rundown | Library Manifesto
  author_email: ''
  author_url: http://librarymanifesto.com/2014/03/february-rundown/
  date: '2014-02-28 22:20:53 +0000'
  date_gmt: '2014-03-01 05:20:53 +0000'
  content: |
    [&#8230;] are using data analysis to show interesting relationships. Ed Summer&#8217;s data visualization shows how many times each Paris Review interview appears on [&#8230;]
---
<p><a href="http://parisreview.org"><img src="http://inkdroid.org/images/parisreview-35.jpg" style="margin-right: 20px; float: left;" /></a> I was recently reading an amusing piece by <a href="https://twitter.com/David_Dobbs">David Dobbs</a> about <a href="http://daviddobbs.net/smoothpebbles/william-faulkner-is-one-tough-interview/">William Faulkner being a tough interview</a>. Dobbs has been working through the <a href="http://www.theparisreview.org/interviews">Paris Review archive of interviews</a> which are available on the Web. The list of authors is really astonishing, and the interviews are great examples of longform writing on the Web.</p>
<p>The 1965 interview with <a href="http://www.theparisreview.org/interviews/4424/the-art-of-fiction-no-36-william-s-burroughs">William S. Burroughs</a> really blew me away. So much so that I got to wondering how many Wikipedia articles reference these interviews.</p>
<p>A few years ago, I experimented with a site called <a href="http://linkypedia.info">Linkypedia</a> for visualizing how a particular website is referenced on Wikipedia. It's actually pretty easy to write a script to see what Wikipedia articles point at a Website, and I've done it enough times that it was convenient to wrap it up in a little <a href="https://github.com/edsu/wplinks">Python module</a>.</p>
<pre lang="python">from wplinks import extlinks 

for src, target in extlinks('http://www.theparisreview.org/interviews'):
    print wikipedia_url, website_url

</pre>
<p>But I wanted to get a picture not only of what Wikipedia articles pointed at the Paris Review, but also Paris Review interviews which were not referenced in Wikipedia. So I wrote a little <a href="https://github.com/edsu/parisreview/blob/master/crawl.py">crawler</a> that collected all the Paris Review interviews, and then figured out which ones were pointed at by English Wikipedia.</p>
<p>This was also an excuse to learn about <a href="http://json-ld.org">JSON-LD</a>, which became a <a href="http://www.w3.org/TR/json-ld/">W3C Recommendation</a> a few weeks ago. I wanted to use JSON-LD to serialize the results of my crawling as an RDF graph so I could visualize the connections between authors, their interviews, and each other (via influence links that can be found on <a href="http://dbpedia.org">dbpedia</a>) using <a href="https://github.com/mbostock/d3/wiki/Force-Layout">D3's Force Layout</a>. Here's a little portion of the larger graph, which you can find by clicking on it.</p>
<p><a href="http://edsu.github.io/parisreview"><img style="border: thin solid gray;" src="http://inkdroid.org/images/parisreview.png" /></a></p>
<p>As you can see it's a bit of a hairball. If you want to have a go at visualizing the data the JSON-LD can be found <a href="https://github.com/edsu/parisreview/blob/master/js/parisreview.json">here</a>. The blue nodes are Wikipedia articles, the white and red nodes are Paris Review interviews. The red ones are interviews that are not yet linked to from Wikipedia. 322 of the 362 interviews are already linked to Wikipedia. Here is the list of 40 that still need to be linked, in the unlikely event that you are a Wikipedian looking for something to do:</p>
<ul>
<li><a href="http://www.theparisreview.org/interviews/1105/the-art-of-fiction-no-153-ismail-kadare">Ismail Kadaré</a></li>
<li><a href="http://www.theparisreview.org/interviews/3195/the-art-of-fiction-no-68-carlos-fuentes">Carlos Fuentes</a></li>
<li><a href="http://www.theparisreview.org/interviews/4779/the-art-of-fiction-no-22-james-jones">James Jones</a></li>
<li><a href="http://www.theparisreview.org/interviews/5197/the-art-of-fiction-no-2-francois-mauriac">François Mauriac</a></li>
<li><a href="http://www.theparisreview.org/interviews/2631/the-art-of-fiction-no-99-peter-taylor">Peter Taylor</a></li>
<li><strike><a href="http://www.theparisreview.org/interviews/2819/the-art-of-fiction-no-91-alain-robbe-grillet">Alain Robbe-Grillet</a></strike></li>
<li><strike><a href="http://www.theparisreview.org/interviews/1432/the-art-of-screenwriting-no-1-billy-wilder">Billy Wilder</a></strike></li>
<li><strike><a href="http://www.theparisreview.org/interviews/1551/the-art-of-humor-no-2-garrison-keillor">Garrison Keillor</a></strike></li>
<li><a href="http://www.theparisreview.org/interviews/3741/the-art-of-poetry-no-20-james-dickey">James Dickey</a></li>
<li><a href="http://www.theparisreview.org/interviews/4502/the-art-of-fiction-no-33-louis-ferdinand-celine">Louis-Ferdinand Céline</a></li>
<li><a href="http://www.theparisreview.org/interviews/1963/an-interview-sybille-bedford">Sybille Bedford</a></li>
<li><a href="http://www.theparisreview.org/interviews/5093/the-art-of-fiction-no-6-alberto-moravia">Alberto Moravia</a></li>
<li><a href="http://www.theparisreview.org/interviews/1218/the-art-of-poetry-no-76-robert-pinsky">Robert Pinsky</a></li>
<li><a href="http://www.theparisreview.org/interviews/2442/the-art-of-fiction-no-108-william-trevor">William Trevor</a></li>
<li><a href="http://www.theparisreview.org/interviews/5863/the-art-of-fiction-no-198-marilynne-robinson">Marilynne Robinson</a></li>
<li><a href="http://www.theparisreview.org/interviews/1395/the-art-of-fiction-no-146-william-f-buckley-jr">William F. Buckley Jr.</a></li>
<li><a href="http://www.theparisreview.org/interviews/3773/the-art-of-fiction-no-60-p-g-wodehouse">P. G. Wodehouse</a></li>
<li><a href="http://www.theparisreview.org/interviews/4463/the-art-of-theater-no-1-lillian-hellman">Lillian Hellman</a></li>
<li><a href="http://www.theparisreview.org/interviews/4537/the-art-of-fiction-no-30-evelyn-waugh">Evelyn Waugh</a></li>
<li><a href="http://www.theparisreview.org/interviews/4134/the-art-of-poetry-no-12-charles-olson">Charles Olson</a></li>
<li><strike><a href="http://www.theparisreview.org/interviews/5601/the-art-of-nonfiction-no-1-joan-didion">Joan Didion</a></strike></li>
<li><a href="http://www.theparisreview.org/interviews/5991/the-art-of-fiction-no-202-ha-jin">Ha Jin</a></li>
<li><a href="http://www.theparisreview.org/interviews/3228/the-art-of-fiction-no-66-donald-barthelme">Donald Barthelme</a></li>
<li><a href="http://www.theparisreview.org/interviews/2576/the-art-of-fiction-no-100-hortense-calisher">Hortense Calisher</a></li>
<li><a href="http://www.theparisreview.org/interviews/4052/the-art-of-poetry-no-16-john-berryman">John Berryman</a></li>
<li><strike><a href="http://www.theparisreview.org/interviews/1550/the-art-of-humor-no-1-woody-allen">Woody Allen</a></strike></li>
<li><a href="http://www.theparisreview.org/interviews/4283/the-art-of-poetry-no-9-conrad-aiken">Conrad Aiken</a></li>
<li><strike><a href="http://www.theparisreview.org/interviews/3605/the-art-of-fiction-no-64-kurt-vonnegut">Kurt Vonnegut</a></strike></li>
<li><a href="http://www.theparisreview.org/interviews/4242/the-art-of-fiction-no-42-isaac-bashevis-singer">Isaac Bashevis Singer</a></li>
<li><a href="http://www.theparisreview.org/interviews/2/the-art-of-fiction-no-182-haruki-murakami">Haruki Murakami</a></li>
<li><a href="http://www.theparisreview.org/interviews/5003/the-art-of-fiction-no-10-james-thurber">James Thurber</a></li>
<li><strike><a href="http://www.theparisreview.org/interviews/2467/the-art-of-theater-no-7-tom-stoppard">Tom Stoppard</a></strike></li>
<li><a href="http://www.theparisreview.org/interviews/4350/the-art-of-theater-no-4-edward-albee">Edward Albee</a></li>
<li><strike><a href="http://www.theparisreview.org/interviews/3209/the-art-of-theater-no-5-tennessee-williams">Tennessee Williams</a></strike></li>
<li><a href="http://www.theparisreview.org/interviews/4503/the-art-of-fiction-no-32-norman-mailer">Norman Mailer</a></li>
<li><strike><a href="http://www.theparisreview.org/interviews/3439/the-art-of-fiction-no-71-joan-didion">Joan Didion</a></strike></li>
<li><a href="http://www.theparisreview.org/interviews/5740/the-art-of-fiction-no-192-jorge-semprun">Jorge Semprún</a></li>
<li><a href="http://www.theparisreview.org/interviews/1396/the-art-of-fiction-no-145-camilo-jose-cela">Camilo José Cela</a></li>
<li><strike><a href="http://www.theparisreview.org/interviews/1250/the-art-of-fiction-no-149-john-le-carre">John le Carré</a></strike></li>
<li><strike><a href="http://www.theparisreview.org/interviews/3441/the-art-of-fiction-no-72-joyce-carol-oates">Joyce Carol Oates</a></strike></li>
</ul>
<p>I ran into my friend <a href="http://twitter.com/dchud">Dan</a> over coffee who sketched out a better way to visualize the relationships between the writers, the interviews and the time periods. Might be a good excuse to get a bit more familiar with D3 ...</p>
<p><a href="http://www.flickr.com/photos/inkdroid/12256021415/"><img src="http://inkdroid.org/images/parisreview-sketch.jpg" alt="@dchud sketch" /></a></p>
