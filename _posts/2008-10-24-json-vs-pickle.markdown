---
layout: post
status: publish
published: true
title: json vs pickle
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 401
wordpress_url: http://inkdroid.org/journal/?p=401
date: '2008-10-24 00:09:02 +0000'
date_gmt: '2008-10-24 07:09:02 +0000'
tags:
- newspapers
- ocr
- python
- performance
- databases
comments: []
---

<p><em>in python JSON is faster, smaller and more portable than pickle ... </em></p>
<p>At work, I'm working on a project where we're modeling newspaper content in a relational database. We've got newspaper titles, issues, pages, institutions, places and some other fun stuff. It's a django app, and the db schema currently looks something like:</p>
<p><a href="http://inkdroid.org/images/ndnp-schema.png"><br />
<img width="500" src="http://inkdroid.org/images/ndnp-schema.png" title="Click for Big Picture" border="none" /><br />
</a></p>
<p>Anyhow, if you look at the schema you'll notice that we have a <code>Page</code> model, and that attached to that is an <code>OCR</code> model. If you haven't heard of it before OCR is an acronym for <a href="http://en.wikipedia.org/wiki/Optical_character_recognition">optical character recognition</a>. For each newspaper page we have, we have a TIF image for the original page, and we have rectangle coordinates for the position of every word on the page. Basically it's xml that looks something like <a href="http://inkdroid.org/data/ndnp-ocr.xml">this</a> (warning your browser may choke on this, you might want to right-click-download).</p>
<p>So there are roughly around 2500 words on a page of newspaper text, and there can sometimes be 350 occurrences of a particular word on a page...and we're looking to model 1,000,000 pages soon ... so if we got really prissy with normalization we could soon be looking at (worst case) 875,000,000,000 rows in a table. While I am interested in getting a handle on how to manage large databases like this, we just don't need the fine grained queries into the word coordinates. But we do need to be able to look up the coordinates for a particular word on a particular page to do hit highlighting in search results.</p>
<p>So let me get to the interesting part already. To avoid having to think about databases with billions of rows, I radically denormalized the data and stored the word coordinates as a blob of <a href="http://www.json.org/">JSON</a> in the database. So we just have a <code>word_coordinates_json</code> column in the OCR table, and when we need to look up the coordinates for a page we just load up the JSON dictionary and we're good to go. JSON is nice with django, since django's ORM doesn't seem to support storing blobs in the database, and JSON is just text. This worked just fine on single page views, but we also do hit highlighting on pages where there are 10 pages being viewed at the same time. So we started noticing large lags on these page views -- because it was taking a while to load the JSON (sometimes 327K * 10 of JSON).</p>
<p>As I mentioned we're using Django, so it was easy to use django.utils.simplejson for the parsing. When we noticed slowdowns I decided to compare django.utils.simplejson to the latest <a href="http://www.undefined.org/python/">simplejson</a> and <a href="http://pypi.python.org/pypi/python-cjson">python-cjson</a>. And just for grins I figured it couldn't hurt to see if using pickle or cPickle (protocols 0, 1 and 2) would prove to be faster than using JSON. So I wrote a little benchmark script that timed the loading of a 327K JSON and a 507K pickle file 100 times using each technique. Here are the results:</p>
<table padding="10px" style="border: thin solid gray; padding: 15px;">
<tr>
<th>method</th>
<th>total seconds</th>
<th>avg seconds</th>
</tr>
<tr>
<td>django-simplejson</td>
<td>140.606723</td>
<td>1.406067</td>
</tr>
<tr>
<td>simplejson</td>
<td>2.260988</td>
<td>0.022610</td>
</tr>
<tr>
<td>pickle</td>
<td>45.032428</td>
<td>0.450324</td>
</tr>
<tr>
<td>cPickle</td>
<td>4.569351</td>
<td>0.45694</td>
</tr>
<tr>
<td>cPickle1</td>
<td>2.829307</td>
<td>0.028293</td>
</tr>
<tr>
<td>cPickle2</td>
<td>3.042940</td>
<td>0.030429</td>
</tr>
<tr>
<td>python-cjson</td>
<td>1.852755</td>
<td>0.018528</td>
</tr>
</table>
<p><img src="http://chart.apis.google.com/chart?cht=bhs&chd=t:139.92,2.24,44.03,4.4,3.03,3.11,1.85&chdl=django-simplejson|simplejson|pickle|cpickle|cpickle1|cpickle2|python-cjson&chco=33FF33|9900FF|FF0033|3366FF|2211EE|99AAFF|00FFCC&chs=450x225&chg=20&chxt=x&chx0=0,100" /></p>
<p>Yeah, that's right. The real simplejson is 62 times faster than django.utils.simplejson! Even more surprising simplejson seems to be faster than even cPickle (even using binary protocols 1 and 2) python-cjson seems to have a slight edge on simplejson. This is good news for our search results page that has 10 newspaper pages to highlight on it, since it'll take 10 * 0.033183 = .3 seconds to parse all the JSON instead of the totally unacceptable 10 * 0.976193 = 9.7 seconds. I guess in some circles 0.3 seconds might be unacceptable, we'll have to see how it pans out. We may be able to remove the JSON deserialization from the page load time by pushing some of the logic into the browser w/ AJAX. If you want, please try out <a href="http://web.archive.org/web/20101216134637/http://inkdroid.org/bzr/jsonickle/">my benchmarks</a> yourself on your own platform. I'd be curious if you see the same ranking.</p>
<p>Here are the versions for various bits I used:</p>
<ul>
<li>python v2.5.2</li>
<li>django trunk: r9231 2008-10-13 15:38:18 -0400</li>
<li>simplejson 2.0.3</li>
</ul>
<p>So in summary for pythoneers: JSON is faster, smaller and more portable than pickle. Of course there are caveats in that you can only store simple datatypes that JSON allows you to, not the full fledged Python objects. But in my use case JSON's data types were just fine. Makes me that much happier that simplesjson aka <code>json</code> is now cooked into the <a href="http://docs.python.org/whatsnew/2.6.html">Python 2.6</a> standard library.</p>
<p><em>Note: if you aren't seeing simplejson performing better than cPickle you may need to have python development libraries installed:</p>
<pre>
  aptitude install python-dev # or the equivalent for your system
</pre>
<p>You can verify if the optimizations are available in simplejson by:</p>
<pre>
ed@hammer:~/bzr/jsonickle$ python
Python 2.5.2 (r252:60911, Jul 31 2008, 17:28:52) 
[GCC 4.2.3 (Ubuntu 4.2.3-2ubuntu7)] on linux2
Type "help", "copyright", "credits" or "license" for more information.
&lt;&lt;&lt; import simplejson
&lt;&lt;&lt; simplejson._speedups
&lt;module 'simplejson._speedups' from '/home/ed/.python-eggs/simplejson-2.0.3-py2.5-linux-i686.egg-tmp/simplejson/_speedups.so'&gt;
</pre>
<p>Thanks <a href="http://blog.ryaneby.com/">eby</a>, <a href="http://lackoftalent.org/michael/blog/">mjgiarlo</a>, <a href="http://oxfordrepo.blogspot.com/">BenO</a> and Kapil for their pointers and ideas.<br />
</em></p>
