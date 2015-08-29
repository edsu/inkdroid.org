---
layout: post
status: publish
published: true
title: fido test suite
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 4904
wordpress_url: http://inkdroid.org/journal/?p=4904
date: '2012-09-02 20:29:48 +0000'
date_gmt: '2012-09-03 03:29:48 +0000'
tags:
- digital preservation
- file formats
- openplanets
- pronom
- drupal
comments:
- id: 85457
  author: anjackson
  author_email: anj@anjackson.net
  author_url: ''
  date: '2012-09-03 01:30:18 +0000'
  date_gmt: '2012-09-03 08:30:18 +0000'
  content: "Thanks for the feedback. The reason the RDF is missing is simply that
    you need to choose a set of concept/predicate URIs to map the Drupal content types/fields
    onto, and I didn't get around to mocking the URIs up or picking them out of the
    LD PRONOM prototype. I started exploring a Drupal 7 version, which has even better
    RDF support, but lost the will to carry on as it didn't seem that enough people
    were interested in using the thing anyway. As a solution, it seems too dependent
    upon me, as there don't seem to be many Drupal folks in the DigiPres community.
    Having said that, most of the time was spend on the Python script that syncs with
    PRONOM, which is perhaps best done in other ways, or avoided altogether. Not sure
    there's any need to manage the binary signatures etc. outside PRONOM, as that's
    where TNA are focussing effort.\r\n\r\nStepping back, I fear I fell into the same
    trap as UDFR - I started building a solution without engaging with the users and
    letting them lead, but with an 'if I built it they will come' attitude. Who are
    the users? Who will have time to contribute? Do they really need a pretty UI or
    is some YAML in a GitHub repo + jekyll scripts to publish it sufficient?"
- id: 85458
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2012-09-03 06:08:49 +0000'
  date_gmt: '2012-09-03 13:08:49 +0000'
  content: 'Thanks for responding Andy. I didn''t mean to imply that people should
    use your prototype in place of the official PRONOM registry. I just thought that
    in the spirit of being a proof of concept it seems to capture what PRONOM itself
    would do well to emulate: opensource, SEO friendly, easily linkable, editable
    with authentication, etc. I have a hunch that the <a href="http://ascii.textfiles.com/archives/3645"
    rel="nofollow">Just Solve the Problem</a> month will show that there are more
    people than you might think who care about this stuff.'
- id: 85464
  author: ross-spencer
  author_email: all.along.the.watchtower2001@gmail.com
  author_url: http://www.exponentialdecay.co.uk
  date: '2012-09-25 10:28:15 +0000'
  date_gmt: '2012-09-25 17:28:15 +0000'
  content: "Hi Ed, \r\n\r\nThis is really good work. I hope to take a better look
    at FIDO soon. Creating a test suite for DROID/FIDO is something I am quite interested
    in. I wanted to point you in the direction of a project I have been working on
    here: \r\n\r\nhttps://github.com/exponential-decay/skeleton-test-suite-generator\r\n\r\nI
    wonder if some of the suite I output as part of this work is beneficial to you?\r\n\r\nThere
    is a testing report here [PDF]: https://github.com/downloads/exponential-decay/skeleton-test-suite-generator/skeleton-test-suite-generator-v0.1-BETA-results.pdf\r\nAnd
    the first output of the tool is here [ZIP]: https://github.com/downloads/exponential-decay/skeleton-test-suite-generator/skeleton-suite-v0.1-BETA.zip\r\n\r\nThis
    is the first iteration in a longer process, I'm currently gauging its usefulness
    and we'll see where it can be taken. I've already managed to solve some of the
    issues in the tool following the BETA results report so now the problems are much
    more focused around DROID's capabilities, although there are some other parts
    of the code I will go on to improve.\r\n\r\nRoss"
---
<p>I work in a digital preservation group at the Library of Congress where we do a significant amount of work in Python. Lately, I've been spending some time with <a href="https://github.com/openplanets/fido">OpenPlanet's FIDO</a> utility, mainly to see if I could refactor it so that it's a bit easier to use as a Python module, for use in other Python applications. At the moment FIDO is designed to be used from the command line. This work involved more than a little bit of refactoring, and the more I looked at the code, the more it became clear that a test suite would be useful to have as a safety net.</p>
<p>Conveniently, I also happened to have been reading a recent report from the National Library of Australia on <a href="http://www.openplanetsfoundation.org/blogs/2012-08-12-file-characterisation-tools-report-testing-project-conducted-national-library">File Characterization Tools</a>, which in addition to talking about FIDO, pointed me at the <a href="http://digitalcorpora.org/corpora/files">govdocs1</a> dataset. Govdocs1 is a dataset of 1 million files harvested from the .gov domain by the NSF funded <a href="http://digitalcorpora.org">Digital Corpora</a> project. The data was collected to serve as a public domain corpus for forensics tools to use as a test bed. I thought it might be useful to survey the filenames in the dataset, and cherry pick out formats of particular types for use in my FIDO test suite.</p>
<p>So I wrote a little <a href="https://github.com/edsu/fido/blob/master/test-data/download.py">script</a> that crawled all the filenames, and kept track of file extensions used. Here are the results:</p>
<table>
<tr>
<th>extension</th>
<th>count</th>
</tr>
<tr>
<td>pdf</td>
<td>232791</td>
</tr>
<tr>
<td>html</td>
<td>191409</td>
</tr>
<tr>
<td>jpg</td>
<td>109281</td>
</tr>
<tr>
<td>txt</td>
<td>84091</td>
</tr>
<tr>
<td>doc</td>
<td>80648</td>
</tr>
<tr>
<td>xls</td>
<td>66599</td>
</tr>
<tr>
<td>ppt</td>
<td>50257</td>
</tr>
<tr>
<td>xml</td>
<td>41994</td>
</tr>
<tr>
<td>gif</td>
<td>36301</td>
</tr>
<tr>
<td>ps</td>
<td>22129</td>
</tr>
<tr>
<td>csv</td>
<td>18396</td>
</tr>
<tr>
<td>gz</td>
<td>13870</td>
</tr>
<tr>
<td>log</td>
<td>10241</td>
</tr>
<tr>
<td>eps</td>
<td>5465</td>
</tr>
<tr>
<td>png</td>
<td>4125</td>
</tr>
<tr>
<td>swf</td>
<td>3691</td>
</tr>
<tr>
<td>pps</td>
<td>1629</td>
</tr>
<tr>
<td>kml</td>
<td>995</td>
</tr>
<tr>
<td>kmz</td>
<td>949</td>
</tr>
<tr>
<td>hlp</td>
<td>660</td>
</tr>
<tr>
<td>sql</td>
<td>632</td>
</tr>
<tr>
<td>dwf</td>
<td>474</td>
</tr>
<tr>
<td>java</td>
<td>323</td>
</tr>
<tr>
<td>pptx</td>
<td>219</td>
</tr>
<tr>
<td>tmp</td>
<td>196</td>
</tr>
<tr>
<td>docx</td>
<td>169</td>
</tr>
<tr>
<td>ttf</td>
<td>104</td>
</tr>
<tr>
<td>js</td>
<td>92</td>
</tr>
<tr>
<td>pub</td>
<td>76</td>
</tr>
<tr>
<td>bmp</td>
<td>75</td>
</tr>
<tr>
<td>xbm</td>
<td>51</td>
</tr>
<tr>
<td>xlsx</td>
<td>46</td>
</tr>
<tr>
<td>jar</td>
<td>34</td>
</tr>
<tr>
<td>zip</td>
<td>27</td>
</tr>
<tr>
<td>wp</td>
<td>17</td>
</tr>
<tr>
<td>sys</td>
<td>8</td>
</tr>
<tr>
<td>dll</td>
<td>7</td>
</tr>
<tr>
<td>exported</td>
<td>5</td>
</tr>
<tr>
<td>exe</td>
<td>5</td>
</tr>
<tr>
<td>tif</td>
<td>3</td>
</tr>
<tr>
<td>chp</td>
<td>2</td>
</tr>
<tr>
<td>pst</td>
<td>1</td>
</tr>
<tr>
<td>squeak</td>
<td>1</td>
</tr>
<tr>
<td>data</td>
<td>1</td>
</tr>
</table>
<p>With this list in hand, I downloaded an example of each file extension, ran it through the current release of FIDO, and used the output to generate a <a href="https://github.com/edsu/fido/blob/master/test.py">test suite</a> for my new refactored version. Interestingly, <a href="http://travis-ci.org/#!/edsu/fido/builds/2314989">two tests fail</a>:</p>
<pre>
Traceback (most recent call last):
  File "/home/ed/Projects/fido/test.py", line 244, in test_pst
    self.assertEqual(i.puid, "x-fmt/249")
AssertionError: 'x-fmt/248' != 'x-fmt/249'

======================================================================
FAIL: test_pub (test.FidoTests)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/home/ed/Projects/fido/test.py", line 260, in test_pub
    self.assertEqual(i.puid, "x-fmt/257")
AssertionError: 'x-fmt/252' != 'x-fmt/257'
</pre>
<p>I'll need to dig in to see what could be different between the two versions that would confuse <a href="http://beta.domd.info/pronom/x-fmt/248">x-fmt/248</a> with <a href="http://beta.domd.info/pronom/x-fmt/249">x-fmt/249</a> and <a href="http://beta.domd.info/pronom/x-fmt/252">x-fmt/252</a> with <a href="http://beta.domd.info/pronom/x-fmt/257">x-fmt/257</a>. Perhaps it is related to Dave Tarrant's <a href="http://www.openplanetsfoundation.org/blogs/2012-08-29-years-registry-why-has-preservation-community-not-solved-problem-well-managed-and">recent post</a> about how FIDO's identification patterns have flip flopped in the past.</p>
<p>You may have noticed that I'm linking the PUIDs to <a href="https://twitter.com/anjacks0n">Andy Jackson</a>'s <a href="http://beta.domd.info/">PRONOM Prototype Registry</a> (<a href="http://www.openplanetsfoundation.org/blogs/2011-01-14-building-collaborative-format-registry-editor">built in 6 days</a> with Drupal) instead of the official PRONOM registry. I did this because a <a href="https://www.google.com/#q=x-fmt/257">Google search</a> for the PRONOM identifier (PUID) pulled up a <a href="http://beta.domd.info/pronom/x-fmt/257">nice detail</a> page for the format in Andy's prototype, and it doesn't seem possible (at least in the 5 minutes I tried) to link directly to a file format record in the official PRONOM registry. I briefly tried the Linked Data prototype, but it proved difficult to search for a given PUID (server errors,  the unforgiving glare of SPARQL query textareas, etc). </p>
<p>I hope OpenPlanets and/or the National Archives give Andy's Drupal experiment a fair shake. Getting a functional PRONOM registry running in 6 days with an opensource toolkit like Drupal definitely seems more future proof than spending years with a contractor only to get closed source code. The Linked Data prototype looks promising, but as the recent final report on the <a href="http://udfr.org/project/UDFR-final-report.pdf">Unified Digital Format Registry</a> project highlights, choosing to build on a semantic web stack has its risks compared with more mainstream web publishing frameworks or content management systems like Drupal. PRONOM just needs an easy way for digital preservation practitioners to be able to collaboratively update the registry, and for each format to have a unique URL that uses the PUID. My only complaint is that Andy's prototype seemed to advertise RDF/XML in the HTML, but it seemed to return an empty RDF document, for example the HTML at <a href="http://beta.domd.info/pronom/x-fmt/248">http://beta.domd.info/pronom/x-fmt/248</a> has a &lt;link&gt; that points at <a href="http://beta.domd.info/node/1303/rdf">http://beta.domd.info/node/1303/rdf</a>. </p>
<p>I admit I am a fan of linked data, or being able to get machine readable data back (RDFa, Microdata, JSON, RDF/XML, XML, etc) from <a href="http://www.w3.org/Provider/Style/URI.html">Cool URLs</a>. But using triplestores, and SPARQL don't seem to be terribly important things for PRONOM to have at this point. And if they are there under the covers, there's no need to confront the digital preservation practitioner with them. My guess is that they want to have an application that lets them work with their peers to document file formats, not learn a new query or ontology language. Perhaps Jason Scott's <a href="http://ascii.textfiles.com/archives/3645">Just Solve the Problem</a> effort in October, will be a good kick in the pants to mobilize grassroots community work around digital formats.</p>
<p>Meanwhile, I've finished up the FIDO API changes and the test suite enough to have submitted a <a href="https://github.com/openplanets/fido/pull/31">pull request</a> to OpenPlanets. My fork of the OpenPlanets repository is similarly <a href="https://github.com/edsu/fido">on Github</a>. I'm not really holding my breath waiting for it to be accepted, as it represents a significant change, and they have their own published <a href="http://wiki.opf-labs.org/display/TR/FIDO+roadmap">roadmap</a> of work to do. But I am hopeful that they will recognize the value in having a test suite as a safety net as they change and refactor FIDO going forward. Otherwise I guess it could be the beginnings of a fido2, but I would like to avoid that particular future.</p>
<p><em>Update: after posting this Ross Spencer tweeted me some instructions for linking to PRONOM</p>
<p>https://twitter.com/beet_keeper/status/242515266146287616</p>
<p>Maybe I missed it, but PRONOM could use a page that describes this.</em></p>
