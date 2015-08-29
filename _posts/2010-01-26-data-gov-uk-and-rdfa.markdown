---
layout: post
status: publish
published: true
title: data.gov.uk and rdfa
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 1602
wordpress_url: http://inkdroid.org/journal/?p=1602
date: '2010-01-26 15:41:19 +0000'
date_gmt: '2010-01-26 22:41:19 +0000'
tags:
- rdf
- rdfa
- python
- egov
comments:
- id: 81697
  author: jonathangray.org/
  author_email: jonathan.gray@okfn.org
  author_url: http://jonathangray.org/
  date: '2010-01-27 05:43:11 +0000'
  date_gmt: '2010-01-27 12:43:11 +0000'
  content: "Thanks for the post!\r\n\r\nJust a quick note to say the OKF's domain
    name (first paragraph) is okfn.org, not okfn.net.\r\n\r\nAlso you might be interested
    in this:\r\n\r\n  http://blog.okfn.org/2010/01/26/sources-of-data-on-datagovuk/\r\n\r\nJonathan"
- id: 81721
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2010-01-28 05:13:27 +0000'
  date_gmt: '2010-01-28 12:13:27 +0000'
  content: Hi Jonathan, thanks for the broken link report :-) I had seen that other
    post on the okfn blog. The relationship between the info at data.gov.uk and ckan.net
    still isn't very clear to me. But I was really pleased to see how easy it was
    to scrape the information out of the data.gov.uk pages.
- id: 81731
  author: inkdroid &rsaquo; data.australia.gov.au and rdfa
  author_email: ''
  author_url: http://inkdroid.org/journal/2010/01/29/data-australia-gov-au-and-rdfa/
  date: '2010-01-29 07:37:08 +0000'
  date_gmt: '2010-01-29 14:37:08 +0000'
  content: "[...] my previous blog post I was trying to demonstrate the virtues of
    data.gov.uk making the descriptions of their datasets [...]"
- id: 81791
  author: Luxcommons &raquo; Blog Archive &raquo; &#8220;les petites cases&#8221;
    sur les linked data
  author_email: ''
  author_url: http://www.luxcommons.lu/?p=122
  date: '2010-02-10 02:54:58 +0000'
  date_gmt: '2010-02-10 09:54:58 +0000'
  content: "[...] des technlogies du Web sémantique. Le site en lui-même a été construit
    avec Drupal 6 avec du RDFa à l&#8217;intérieur, la plupart des donnnées a été
    convertie en RDF grâce, entre autres, aux bons soins de Jeni [...]"
- id: 81793
  author: Do we have a Linked Data research agenda? « Web of Data
  author_email: ''
  author_url: http://webofdata.wordpress.com/2010/02/13/linked-data-research-agenda/
  date: '2010-02-13 03:27:20 +0000'
  date_gmt: '2010-02-13 10:27:20 +0000'
  content: "[...] the process for drafting a &#8216;Research Agenda For Linked Data&#8217;.
    Since then, a couple of things [...]"
---
<p>The recent public release of the UK Government's <a href="http://data.gov.uk">data.gov.uk</a> site got picked up by the press last week in articles at <a href="http://news.bbc.co.uk/2/hi/technology/8470797.stm">The Guardian</a>, <a href="http://www.prospectmagazine.co.uk/2010/01/whitehalls-web-revolution-the-inside-story/">Prospect Magazine</a> and elswhere. These have been supplemented by some more technical discussions at  <a href="http://www.readwriteweb.com/archives/uk_launches_open_data_site_puts_datagov_to_shame.php">ReadWriteWeb</a>,  <a href="http://blog.okfn.org/2010/01/21/datagovuk-goes-public-and-its-using-ckan/">Open Knowledge Foundation</a>, <a href="http://web.archive.org/web/20110912091006/http://blogs.talis.com:80/nodalities/2009/11/data-gov-uk-and-the-talis-platform.php">Talis</a>, <a href="http://www.jenitennison.com/blog/node/140">Jeni Tennison's blog</a>, and some helpful emails from <a href="http://lists.w3.org/Archives/Public/public-egov-ig/2010Jan/0048.html">Leigh Dodds</a> (<a href="http://web.archive.org/web/20120528202833/http://www.talis.com:80/platform/">Talis</a>) and <a href="http://lists.w3.org/Archives/Public/public-egov-ig/2010Jan/0040.html">Jonathan Gray</a> (<a href="http://okfn.org">Open Knowledge Foundation</a>) on the <a href="http://lists.w3.org/Archives/Public/public-egov-ig/">w3c egovernment discussion list</a>.</p>
<p>One thing that I haven't seen mentioned so far in public (which I just discovered today) is that data.gov.uk is using <a href="http://www.w3.org/TR/xhtml-rdfa-primer/">RDFa</a> to expose metadata about the datasets in a machine readable way. What this means is that in an HTML page for a dataset like <a href="http://data.gov.uk/dataset/agricultural_market_reports">this</a> there are some extra HTML attributes like <em>about</em>, <em>property</em>, <em>rel</em> that have been thoughtfully used to express some structured metadata about the dataset, which can be extracted from the HTML and expressed say as <a href="http://www.w3.org/TeamSubmission/turtle/">Turtle</a>:</p>
<pre>
&lt;http://data.gov.uk/id/dataset/agricultural_market_reports&gt; dct:coverage "Great Britain (England, Scotland, Wales)"@en ;
     dct:created "2009-12-04"@en ;
     dct:creator "Department for Environment, Food and Rural Affairs"@en ;
     dct:isReferencedBy &lt;http://data.gov.uk/wiki/index.php/Package:agricultural_market_reports&gt; ; 
     dct:license "Crown Copyright"@en ;
     dct:source &lt;http://statistics.defra.gov.uk/esg/publications/amr/default.asp&gt;, &lt;https://statistics.defra.gov.uk/esg/publications/amr/default.asp&gt; ;
     dct:subject
         &lt;http://data.gov.uk/data/tag/agriculture&gt;,
         &lt;http://data.gov.uk/data/tag/agriculture-and-environment&gt;,
         &lt;http://data.gov.uk/data/tag/environment&gt;,
         &lt;http://data.gov.uk/data/tag/farm-business&gt;,
         &lt;http://data.gov.uk/data/tag/farm-businesses&gt;,
         &lt;http://data.gov.uk/data/tag/farming&gt; .
</pre>
<p>In fact since data.gov.uk has a nice paging mechanism that lists all the datasets it's not hard to write a little <a href="http://web.archive.org/web/20101216201605/http://inkdroid.org/bzr/data-gov-uk/crawl.py">script</a> that scrapes <a href="http://inkdroid.org/bzr/data-gov-uk/data.rdf">all the metadata for the datasets</a> (35,478 triples) right out of the web pages.</p>
<p>I also <a href="http://buytaert.net/data-gov-uk-using-drupal">noticed</a> via <a href="http://twitter.com/scorlosquet/status/8242145459">Stéphane Corlosquet</a> today that data.gov.uk is using the <a href="http://drupal.org">Drupal</a> open-source content management system. To what extent Drupal7's new <a href="http://drupal.org/node/574624">RDFa features</a> are being used to layer in this RDFa isn't clear to me. But it is an exciting development. It's exciting because data.gov.uk is a great example of how to bubble up data that's typically locked away in databases of some kind into the HTML that's out on the web for people to interact with, and for crawlers to crawl and re-purpose.</p>
<p>For example I can now write a <a href="http://web.archive.org/web/20101216202008/http://inkdroid.org/bzr/data-gov-uk/link_check.py">utility</a> to check the status of the external dataset links, to make sure they are they are there (200 OK). The <a href="http://web.archive.org/web/20101216201928/http://inkdroid.org/bzr/data-gov-uk/link_check.txt">complete results by URL</a> can be summarized by rolling up by status code:</p>
<table style="border: thin gray solid; width: 60%;">
<tr>
<th>Status Code</th>
<th>Number of Datasets</th>
</tr>
<tr style='background: #eeeeee'>
<td>200</td>
<td>2977</td>
</tr>
<tr style='background: #ffffff'>
<td>404</td>
<td>106</td>
</tr>
<tr style='background: #eeeeee'>
<td>502</td>
<td>23</td>
</tr>
<tr style='background: #ffffff'>
<td>503</td>
<td>14</td>
</tr>
<tr style='background: #eeeeee'>
<td>[Errno socket error] [Errno -2] Name or service not known</td>
<td>8</td>
</tr>
<tr style='background: #ffffff'>
<td>500</td>
<td>3</td>
</tr>
<tr style='background: #eeeeee'>
<td>nonnumeric port: ''</td>
<td>1</td>
</tr>
<tr style='background: #ffffff'>
<td>[Errno socket error] [Errno 110] Connection timed out</td>
<td>1</td>
</tr>
<tr style='background: #eeeeee'>
<td>400</td>
<td>1</td>
</tr>
</table>
<p>Or I can <a href="http://web.archive.org/web/20101216201748/http://inkdroid.org/bzr/data-gov-uk/subjects.py">generate</a> a <a href="http://web.archive.org/web/20101216201813/http://inkdroid.org/bzr/data-gov-uk/subjects.txt">list of dataset subjects</a> (eventhough it's already <a href="http://data.gov.uk/data/tag">available</a> I guess). Here's the top 25:</p>
<table style="border: thin gray solid; width: 60%;">
<tr>
<th>Subject</th>
<th>Number of Datasets</th>
</tr>
<tr style='background: #eeeeee'>
<td>health </td>
<td>645</td>
</tr>
<tr style='background: #ffffff'>
<td>care </td>
<td>427</td>
</tr>
<tr style='background: #eeeeee'>
<td>child </td>
<td>398</td>
</tr>
<tr style='background: #ffffff'>
<td>population </td>
<td>341</td>
</tr>
<tr style='background: #eeeeee'>
<td>children </td>
<td>295</td>
</tr>
<tr style='background: #ffffff'>
<td>school </td>
<td>273</td>
</tr>
<tr style='background: #eeeeee'>
<td>health-and-social-care </td>
<td>271</td>
</tr>
<tr style='background: #ffffff'>
<td>health-well-being-and-care </td>
<td>205</td>
</tr>
<tr style='background: #eeeeee'>
<td>economy </td>
<td>202</td>
</tr>
<tr style='background: #ffffff'>
<td>economics-and-finance </td>
<td>189</td>
</tr>
<tr style='background: #eeeeee'>
<td>census </td>
<td>188</td>
</tr>
<tr style='background: #ffffff'>
<td>education </td>
<td>176</td>
</tr>
<tr style='background: #eeeeee'>
<td>communities </td>
<td>154</td>
</tr>
<tr style='background: #ffffff'>
<td>benefit </td>
<td>153</td>
</tr>
<tr style='background: #eeeeee'>
<td>road </td>
<td>144</td>
</tr>
<tr style='background: #ffffff'>
<td>children-education-and-skills </td>
<td>121</td>
</tr>
<tr style='background: #eeeeee'>
<td>people-and-places </td>
<td>111</td>
</tr>
<tr style='background: #ffffff'>
<td>government-receipts-and-expenditure </td>
<td>110</td>
</tr>
<tr style='background: #eeeeee'>
<td>education-and-skills </td>
<td>110</td>
</tr>
<tr style='background: #ffffff'>
<td>housing </td>
<td>108</td>
</tr>
<tr style='background: #eeeeee'>
<td>environment </td>
<td>107</td>
</tr>
<tr style='background: #ffffff'>
<td>tax </td>
<td>107</td>
</tr>
<tr style='background: #eeeeee'>
<td>life-in-the-community </td>
<td>106</td>
</tr>
<tr style='background: #ffffff'>
<td>employment </td>
<td>105</td>
</tr>
<tr style='background: #eeeeee'>
<td>tax-credit </td>
<td>96</td>
</tr>
</table>
<p>I realize it's early days but here are a few things it would be fun to see at data.gov.uk:</p>
<ul>
<li>add some RDFa and <a href="http://www.w3.org/TR/2009/REC-skos-reference-20090818/">SKOS</a> or <a href="http://www.commontag.org/Home">CommonTag</a> in tag pages like <a href="http://data.gov.uk/data/tag/education">education</a>: this would allow things to be hooked up a bit more explicitly, tags to be given nice labels, and encourage the reuse of the tagging vocabulary within and outside data.gov.uk</li>
<li>link the dataset descriptions to the dataset resources themselves (the pdfs, excel spreadsheets, etc) that are online using a vocabulary like the <a href="http://www.openarchives.org/ore/1.0/vocabulary">Open Archives Reuse and Exchange</a> and/or <a href="http://www.w3.org/TR/powder-dr/">POWDER</a>. This would allow for the harvesting and aggregation not only of the metadata, but the datasets as well.</li>
</ul>
<p>I imagine much of this sort of hacking around can be enabled by querying the <a href="http://web.archive.org/web/20130127043417/http://data.gov.uk/sparql">data.gov.uk SPARQL endpoint</a>. But it hasn't been very clear to me exactly what data is behind there. And there is something comforting about being able to crawl the open web to find the information that's there in <a href="http://inkdroid.org/journal/2009/08/13/open-to-view/">open to view</a>.</p>
