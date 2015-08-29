---
layout: post
status: publish
published: true
title: dcat:distribution considered helpful
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2720
wordpress_url: http://inkdroid.org/journal/?p=2720
date: '2010-12-02 08:30:01 +0000'
date_gmt: '2010-12-02 15:30:01 +0000'
tags:
- rest
- linked data
- digital preservation
- data.gov.uk
- digital-curation
comments: []
---
<p>The other day I happened to notice that the folks at <a href="http://data.gov.uk">data.gov.uk</a> have started using the <a href="http://vocab.deri.ie/dcat">Data Catalog Vocabulary</a> in the <a href="http://www.w3.org/TR/xhtml-rdfa-primer/">RDFa</a> they have embedded in their dataset webpages. As an example <a href="https://gist.github.com/716228">here</a> is the RDF you can pull out of the HTML for the <a href="http://data.gov.uk/dataset/anonymised_mot_test">Anonymised MOT tests and results</a> dataset. Of particular <a href="http://inkdroid.org/journal/2010/01/26/data-gov-uk-and-rdfa/">interest</a> to me is that the dataset description now includes an explicit link to the actual data being described using the <code><a href="http://vocab.deri.ie/dcat#distribution">dcat:distribution</a></code> property.</p>
<pre>
     &lt;http://data.gov.uk/id/dataset/anonymised_mot_test&gt; dcat:distribution
         &lt;http://www.dft.gov.uk/data/download/10007/DOC&gt;,
         &lt;http://www.dft.gov.uk/data/download/10008/ZIP&gt;,
         &lt;http://www.dft.gov.uk/data/download/10009/GZ&gt;,
         &lt;http://www.dft.gov.uk/data/download/10010/GZ&gt;,
         &lt;http://www.dft.gov.uk/data/download/10011/GZ&gt;,
         &lt;http://www.dft.gov.uk/data/download/10012/GZ&gt;,
         &lt;http://www.dft.gov.uk/data/download/10013/GZ&gt;,
         &lt;http://www.dft.gov.uk/data/download/10014/GZ&gt;,
         &lt;http://www.dft.gov.uk/data/download/10015/GZ&gt;,
         &lt;http://www.dft.gov.uk/data/download/10016/GZ&gt;,
         &lt;http://www.dft.gov.uk/data/download/10017/GZ&gt;,
         &lt;http://www.dft.gov.uk/data/download/10018/GZ&gt;,
         &lt;http://www.dft.gov.uk/data/download/10019/GZ&gt;,
         &lt;http://www.dft.gov.uk/data/download/10020/GZ&gt;,
         &lt;http://www.dft.gov.uk/data/download/10021/GZ&gt;,
         &lt;http://www.dft.gov.uk/data/download/10022/GZ&gt; .
</pre>
<p><a href="http://www.ecs.soton.ac.uk/people/cjg">Chris Gutteridge</a> happened to see a Twitter <a href="http://twitter.com/edsu/status/7992720853307392">message</a> of mine about this, and <a href="http://twitter.com/cgutteridge/status/8159811686367233">asked</a> what consumes this data, and why I thought it was important. So here's a brief illustration. I reran a little <a href="https://github.com/edsu/data-gov-uk-harvester/blob/master/crawl.py">python program</a> I have that crawls all of the data.gov.uk datasets, extracting the RDF using <a href="http://rdflib.net">rdflib's</a> RDFa support (thanks <a href="http://www.ivan-herman.net/">Ivan</a>). Now there are <a href="https://github.com/edsu/data-gov-uk-harvester/raw/master/data.ntriples">92,550 triples</a> (up from 35,478 triples <a href="http://inkdroid.org/journal/2010/01/26/data-gov-uThanks!k-and-rdfa/">almost a year ago</a>).</p>
<p>So what can you do with the this metadata about datasets? I am a software developer working in the area where digital preservation meets the web. So I'm interested in not only getting the metadata for these datasets, but also the datasets themselves. It's important to enable 3rd party, automated access to datasets for a variety of reasons; but the biggest one for me can be summarized with the common-sensical: <a href="http://en.wikipedia.org/wiki/LOCKSS">Lots of Copies Keep Stuff Safe</a>.</p>
<p>It's kind of a no-brainer, but copies are important for digital preservation, when the <a href="http://www.dlib.org/dlib/july07/littman/07littman.html">unfortunate</a> happens. The subtlety is being able to know where the copies of a particular dataset are in the enterprise, in a distributed system like the Web, and the mechanics for relating them together. It's also important for <a href="http://www.dlib.org/dlib/september04/vandesompel/09vandesompel.html">scholarly communication</a>, so that researchers can cite datasets and follow citations of other research to the actual dataset it is based upon. And lastly aggregation services that collect datasets for dissemination on a particular platform, like data.gov.uk, need ways to predictably sweep domains for datasets that needs to be collected.</p>
<p>Consider this practical example: as someone interested in digital preservation I'd like to be able to know what format types are used within the data.gov.uk collection. Since they have used the <code>dcat:distribution</code> property to point at the referenced dataset, I was able to write a small <a href="https://github.com/edsu/data-gov-uk-harvester/blob/master/distributions.py">Python program</a> to crawl the datasets and log the media type and HTTP status code along the way, to generate some results like:</p>
<table>
<tr>
<th>media type</th>
<th>datasets</th>
</tr>
<tr style="background-color: #ffffff">
<td>text/html</td>
<td style="text-align: right;">5898</td>
</tr>
<tr style="background-color: #eeeeee">
<td>application/octet-stream</td>
<td style="text-align: right;">1266</td>
</tr>
<tr style="background-color: #ffffff">
<td>application/vnd.ms-excel</td>
<td style="text-align: right;">874</td>
</tr>
<tr style="background-color: #eeeeee">
<td>text/plain</td>
<td style="text-align: right;">234</td>
</tr>
<tr style="background-color: #ffffff">
<td>text/csv</td>
<td style="text-align: right;">220</td>
</tr>
<tr style="background-color: #eeeeee">
<td>application/pdf</td>
<td style="text-align: right;">167</td>
</tr>
<tr style="background-color: #ffffff">
<td>text/xml</td>
<td style="text-align: right;">81</td>
</tr>
<tr style="background-color: #eeeeee">
<td>text/comma-separated-values</td>
<td style="text-align: right;">51</td>
</tr>
<tr style="background-color: #ffffff">
<td>application/x-zip-compressed</td>
<td style="text-align: right;">36</td>
</tr>
<tr style="background-color: #eeeeee">
<td>application/vnd.ms-powerpoint</td>
<td style="text-align: right;">33</td>
</tr>
<tr style="background-color: #ffffff">
<td>application/zip</td>
<td style="text-align: right;">31</td>
</tr>
<tr style="background-color: #eeeeee">
<td>application/x-msexcel</td>
<td style="text-align: right;">28</td>
</tr>
<tr style="background-color: #ffffff">
<td>application/excel</td>
<td style="text-align: right;">21</td>
</tr>
<tr style="background-color: #eeeeee">
<td>application/xml</td>
<td style="text-align: right;">18</td>
</tr>
<tr style="background-color: #ffffff">
<td>text/x-comma-separated-values</td>
<td style="text-align: right;">14</td>
</tr>
<tr style="background-color: #eeeeee">
<td>application/x-gzip</td>
<td style="text-align: right;">13</td>
</tr>
<tr style="background-color: #ffffff">
<td>application/x-bittorrent</td>
<td style="text-align: right;">12</td>
</tr>
<tr style="background-color: #eeeeee">
<td>application/octet_stream</td>
<td style="text-align: right;">12</td>
</tr>
<tr style="background-color: #ffffff">
<td>application/msword</td>
<td style="text-align: right;">10</td>
</tr>
<tr style="background-color: #eeeeee">
<td>application/force-download</td>
<td style="text-align: right;">10</td>
</tr>
<tr style="background-color: #ffffff">
<td>application/x-vnd.oasis.opendocument.presentation</td>
<td style="text-align: right;">9</td>
</tr>
<tr style="background-color: #eeeeee">
<td>application/x-octet-stream</td>
<td style="text-align: right;">9</td>
</tr>
<tr style="background-color: #ffffff">
<td>application/vnd.excel</td>
<td style="text-align: right;">9</td>
</tr>
<tr style="background-color: #eeeeee">
<td>application/x-unknown-content-type</td>
<td style="text-align: right;">6</td>
</tr>
<tr style="background-color:Thanks! #ffffff">
<td>application/xhtml+xml</td>
<td style="text-align: right;">6</td>
</tr>
<tr style="background-color: #eeeeee">
<td>application/vnd.msexcel</td>
<td style="text-align: right;">5</td>
</tr>
<tr style="background-color: #ffffff">
<td>application/vnd.google-earth.kml+xml kml</td>
<td style="text-align: right;">5</td>
</tr>
<tr style="background-color: #eeeeee">
<td>application/octetstream</td>
<td style="text-align: right;">4</td>
</tr>
<tr style="background-color: #ffffff">
<td>application/csv</td>
<td style="text-align: right;">3</td>
</tr>
<tr style="background-color: #eeeeee">
<td>vnd.openxmlformats-officedocument.spreadsheetml.sheet</td>
<td style="text-align: right;">2</td>
</tr>
<tr style="background-color: #ffffff">
<td>application/vnd.openxmlformats-officedocument.spreadsheetml.sheet</td>
<td style="text-align: right;">2</td>
</tr>
<tr style="background-color: #eeeeee">
<td>application/octet-string</td>
<td style="text-align: right;">2</td>
</tr>
<tr style="background-color: #ffffff">
<td>image/jpeg</td>
<td style="text-align: right;">1</td>
</tr>
<tr style="background-color: #eeeeee">
<td>image/gif</td>
<td style="text-align: right;">1</td>
</tr>
<tr style="background-color: #ffffff">
<td>application/x-mspowerpoint</td>
<td style="text-align: right;">1</td>
</tr>
<tr style="background-color: #eeeeee">
<td>application/vnd.google-earth.kml+xml</td>
<td style="text-align: right;">1</td>
</tr>
<tr style="background-color: #ffffff">
<td>application/powerpoint</td>
<td style="text-align: right;">1</td>
</tr>
<tr style="background-color: #eeeeee">
<td>application/msexcel</td>
<td style="text-align: right;">1</td>
</tr>
</table>
<p>Granted some of these aren't too interesting. The predominance of <code>text/html</code> is largely an artifact of using <code>dcat:distribution</code> to link to the splash page for the dataset, not to the dataset itself. This is allowed by the dcat vocabulary ... but dcat's approach kind of assumes that the domain of the assertion is suitably typed as a <code>dcat:Download</code>, <code>dcat:Feed</code> or <code>dcat:WebService</code>. I personally think that dcat has some <a href="http://web.archive.org/web/20121107034506/http://www.w3.org/egov/IG/track/products/19">issues</a> that make it a bit more difficult to use than I'd like. But it's extremely useful that data.gov.uk are kicking the tires on the vocabulary, so that kinks like this can be worked out.</p>
<p>The <code>application/octet-stream</code> media-type (and its variants) are also kind of useless for these purposes, since it basically says the dataset is made of bits. It would be more helpful if the servers in these cases could send something more specific. But it ought to be possible to use something like <a href="https://confluence.ucop.edu/display/JHOVE2Info/Home">JHOVE</a> or <a href="http://sourceforge.net/apps/mediawiki/droid/index.php?title=Main_Page">DROID</a> to do some post-hoc analysis of the bitstream to figure out just what this data is, if it is valid etc.</p>
<p>The nice thing about using the Web to publish these datasets and their descriptions is that this sort of format analysis application could be decoupled from the data.gov.uk web publishing software itself. data.gov.uk becomes a clearinghouse for information and whereabouts of datasets, but a format verification service can be built as an orthogonal application. I think it basically fits the <a href="http://en.wikipedia.org/wiki/Representational_State_Transfer">RESTful</a> style of <a href="http://www.cdlib.org/services/uc3/curation/">Curation Microservices</a> being promoted by the California Digital Library:</p>
<blockquote><p>
Micro-services are an approach to digital curation based on devolving curation function into a set of independent, but interoperable, services that embody curation values and strategies. Since each of the services is small and self-contained, they are collectively easier to develop, deploy, maintain, and enhance. Equally as important, they are more easily replaced when they have outlived their usefulness. Although the individual services are narrowly scoped, the complex function needed for effective curation emerges from the strategic combination of individual services.
</p></blockquote>
<p>One last thing before you are returned to your regular scheduled programming. You may have noticed that the URI for the dataset being described in the RDF is different from the URL for the HTML view for the resource. For example:</p>
<blockquote><p>
<a href="http://data.gov.uk/id/dataset/anonymised_mot_test">http://data.gov.uk/id/dataset/anonymised_mot_test</a>
</p></blockquote>
<p>instead of:</p>
<blockquote><p>
<a href="http://data.gov.uk/dataset/anonymised_mot_test">http://data.gov.uk/dataset/anonymised_mot_test</a>
</p></blockquote>
<p>This is understandable given some of the dictums about Linked Data and trying to separate the Information Resource from the Non-Information Resource. But it would be nice if the URL resolved via a 303 redirect to the HTML as the <a href="http://www.w3.org/TR/cooluris/">Cool URIs for the Semantic Web</a> document prescribes. If this is going to be the identifier for the dataset it's important that it resolves so that people and automated agents can follow their nose to the dataset. I think this highlights some of the difficulties that people typically face when deploying Linked Data.</p>
