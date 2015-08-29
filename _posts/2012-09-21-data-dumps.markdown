---
layout: post
status: publish
published: true
title: data dumps
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 5005
wordpress_url: http://inkdroid.org/journal/?p=5005
date: '2012-09-21 13:22:53 +0000'
date_gmt: '2012-09-21 20:22:53 +0000'
tags:
- data
- newspapers
- ocr
- atom
- json
- ndnp
- bzip
comments: []
---
<p><em>As usual, the following comments are the reflections of a software developer working at the Library of Congress and are not an official statement of my employer.</em>.</p>
<p>One of the challenges that we've had at the <a href="http://www.loc.gov/ndnp/">National Digital Newspaper Program'</a>s website <a href="http://chroniclingamerica.loc.gov">Chronicling America</a> has been access to data. At the surface level Chronicling America is a conventional web application that provides access to millions of pages of historic newspapers. Here "access" means a researcher's ability to browse to each newspaper, issue and page, as well as search across the OCR text for each page. </p>
<p>Digging a bit deeper "access" also means programmatic access via a <a href="http://chroniclingamerica.loc.gov/about/api/">Web API</a>. Chronicling America's API enables custom software to issue queries using the popular <a href="http://opensearch.org">OpenSearch</a> protocol, and it also makes URL addressable data available using  principles of <a href="http://chroniclingamerica.loc.gov/about/api/#linked-data">Linked Data</a>. In addition the website also makes the so called "batch" data that each NDNP awardee sends to the Library of Congress <a href="http://chroniclingamerica.loc.gov/data/batches/">available</a> on the Web. The advantage to making the batch data available is that it allows 3rd parties are then able to build their own custom search indexes on top of the data so their own products and services don't have a runtime dependency on our Web API. Also researchers can choose to index things differently, perform text mining operations, or conduct other experiments. Each batch contains JPEG 2000, PDF, OCR XML and METS XML data for all the newspaper content; and it is in fact the very same data that the Chronicling America web application ingests. The batch data views makes it possible for interested parties to crawl the content using wget or some similar tool that talks HTTP, and fetch a lot of newspaper data.</p>
<p>But partly because of NDNP's participation in the NEH's <a href="http://www.diggingintodata.org/">Digging Into Data</a> program, as well as the interest from other individuals and organizations we've recently started making data dumps of the OCR content available. This same OCR data is available as part of the batch data mentioned above, but the dumps provide two new things:</p>
<ol>
<li>The ability to download a small set of large compressed files with checksums to verify their transfer, as opposed to having to issue HTTP GETs for millions of uncompressed files with no verification.</li>
<li>The ability to easily map each of the OCR files to their corresponding URL on the web. While it is theoretically possible to extract the right bits from the METS XML data in the batch data, the best of expression of how to do this is encapsulated in the Chronicling America ingest code, and is non-trivial.</li>
</ol>
<p>So when you download, decompress and untar one of the files you will end up with a directory structure like this:</p>
<pre>
sn86063381/
|-- 1908
|   |-- 01
|   |   |-- 01
|   |   |   `-- ed-1
|   |   |       |-- seq-1
|   |   |       |   |-- ocr.txt
|   |   |       |   `-- ocr.xml
|   |   |       |-- seq-2
|   |   |       |   |-- ocr.txt
|   |   |       |   `-- ocr.xml
|   |   |       |-- seq-3
|   |   |       |   |-- ocr.txt
|   |   |       |   `-- ocr.xml
|   |   |       `-- seq-4
|   |   |           |-- ocr.txt
|   |   |           `-- ocr.xml
|   |   |-- 02
|   |   |   `-- ed-1
|   |   |       |-- seq-1
|   |   |       |   |-- ocr.txt
|   |   |       |   `-- ocr.xml
|   |   |       |-- seq-2
|   |   |       |   |-- ocr.txt
|   |   |       |   `-- ocr.xml
|   |   |       |-- seq-3
|   |   |       |   |-- ocr.txt
|   |   |       |   `-- ocr.xml
|   |   |       `-- seq-4
|   |   |           |-- ocr.txt
|   |   |           `-- ocr.xml

...
</pre>
<p>The pattern here is:</p>
<pre>
{lccn}/{year}/{month}/{day}/{edition}/{sequence}/
</pre>
<p>If you don't work in a library, an lccn is a Library of Congress Control Number, which is a unique ID for each newspaper title. Each archive file will lay out in a similar way, such that you can process each .tar.bz2 file and will end up with a complete snapshot of the OCR data on your filesystem. The pattern maps pretty easily to URLs of the format:</p>
<pre>
http://chroniclingamerica.loc.gov/lccn/{lccn}/{year}-{month}-{day}/{edition}/{sequence}/
</pre>
<p>This is an obvious use case for a pattern like <a href="https://wiki.ucop.edu/display/Curation/PairTree">PairTree</a>, but there was some perceived elegance to using paths that were a bit more human readable, and easier on the filesystem, which stands a good chance of not being ZFS.</p>
<p>Another side effect of having a discrete set of files to download is that each dump file can be referenced in an <a href="http://chroniclingamerica.loc.gov/ocr/feed">Atom feed</a>, so that you can keep your snapshot up to date with a little bit of automation. Here's a snippet of the feed:</p>
<pre lang="xml">
< ?xml version="1.0" encoding="utf-8"?>
<feed xmlns="http://www.w3.org/2005/Atom">

    <title>Chronicling America OCR Data Feed</title>
    <link rel="self" type="application/atom+xml" href="http://chroniclingamerica.loc.gov/ocr/feed/" />
    <id>info:lc/ndnp/ocr</id>
    <author>
        <name>Library of Congress</name>
        <uri>http://loc.gov</uri>
    </author>
    <updated>2012-09-20T10:34:02-04:00</updated>

    <entry>
        <title>part-000292.tar.bz2</title>
        <link rel="enclosure" length="650169965" hash="sha1:bb7fa00e8e07041501a9703bf85afbe5040e3448" type="application/x-bzip2" href="http://chroniclingamerica.loc.gov/data/ocr/part-000292.tar.bz2" />
        <id>info:lc/ndnp/dump/ocr/part-000292.tar.bz2</id>
        <updated>2012-09-20T10:34:02-04:00</updated>
        <summary type="xhtml"><div xmlns="http://www.w3.org/1999/xhtml">OCR dump file <a href="http://chroniclingamerica.loc.gov/data/dumps/ocr/part-000292.tar.bz2">part-000292.tar.bz2</a> with size 620.1 MB generated Sept. 20, 2012, 10:34 a.m.</div></summary>
    </entry>

    ...

</feed>
</pre>
<p>As you can see it's a pretty vanilla Atom feed that should play nicely with whatever feed reader or library you are using. You may notice the &lt;link&gt; element has some attributes that you might not be used to seeing. The <code>enclosure</code> and <code>length</code> attributes are directly from <a href="http://tools.ietf.org/html/rfc4287">RFC 4287</a> for giving clients an idea that the referenced resource might be on the large side. The <code>hash</code> attribute is a generally useful attribute from James Snell's <a href="http://tools.ietf.org/html/draft-snell-atompub-link-extensions">Atom Link Extensions</a> IETF draft.</p>
<p>If parsing XML is against your religion, there's also a <a href="http://chroniclingamerica.loc.gov/ocr.json">JSON flavored feed</a> that looks like:</p>
<pre lang="javascript">
{
  ocr: [
    {
      url: "http://chroniclingamerica.loc.gov/data/ocr/part-000337.tar.bz2",
      sha1: "fd73d8e1df33015e06739c897bd9c08a48294f82",
      size: 283454353,
      name: "part-000337.tar.bz2",
      created: "2012-09-21T06:56:35-04:00"
    },
    ...
  ]
}
</pre>
<p>Again, I guess we could've kicked the tires on the emerging <a href="http://www.openarchives.org/rs/0.1/resourcesync">ResourceSync</a> specification to simliar effect. But ResourceSync is definitely still in development, and well, Atom is a pretty nice Internet standard for publishing changes. Syndication technologies like RSS and Atom have <a href="http://dumps.wikimedia.org/enwiki/latest/">already been used</a> by folks like Wikipedia for publishing the availability of data dumps. ResourceSync seems intent <a href="http://www.openarchives.org/rs/0.1/resourcesync#Dump">on using Zip</a> for compressing dump files, and bzip is common enough, and enough better than zip that it's worth diverging. In some ways this blog post has turned into a when-to-eschew-digital-library-standards in favor of more mainstream or straightforward patterns. I didn't actually plan that, but those of you that know me probably are not surprised.</p>
<p>If you plan to use the OCR dumps I, and others on the NDNP team, would love to hear from you. One of the big problems with them so far is that there is no explict statement about how the data is in the public domain, which it is. I'm hopeful this can be rectified soon. If you have feedback on the use of Atom here I would be interested in that too. But the nice thing about using it is really how uncontroversial it is, so I doubt I'll hear much feedback on that front.</p>
