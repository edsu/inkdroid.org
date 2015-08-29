---
layout: post
status: publish
published: true
title: viaf ntriples
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 4650
wordpress_url: http://inkdroid.org/journal/?p=4650
date: '2012-06-24 19:05:06 +0000'
date_gmt: '2012-06-25 02:05:06 +0000'
tags:
- python
- amazon
- viaf
- elastic mapreduce
- lzo
comments:
- id: 85419
  author: christopher wanko
  author_email: remo_williams@yahoo.com
  author_url: https://me.yahoo.com/a/RZIPFwBw1I6ZdzkEP8Ba1jF2U0NSLCJZtys-#c3bec
  date: '2012-06-25 03:02:51 +0000'
  date_gmt: '2012-06-25 10:02:51 +0000'
  content: This may seem naive, but couldn't you have piped the decompression into
    Hadoop Streaming, and just fed it the data that way?
- id: 85420
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2012-06-25 03:13:01 +0000'
  date_gmt: '2012-06-25 10:13:01 +0000'
  content: Hi Chris, good question. Hadoop Streaming, at least on Elastic MapReduce,
    wants to have the input file on Amazon S3. I thought about decompressing the file
    on S3 but was kind of put off that I couldn't get the LZO compressed file to split
    properly. I'm a Hadoop newbie, so definitely don't take any of this as gospel--not
    that you would :-)
---
<p>I had a few requests for the Virtual International Authority File ntriples file I <a href="http://inkdroid.org/journal/2012/05/15/diving-into-viaf/">wrote about</a> earlier. Having the various flavors of <a href="http://viaf.org/viaf/data/">VIAF data</a> available is great, but if an RDF dump is going to be made available I think <a href="http://en.wikipedia.org/wiki/N-Triples">ntriples</a> kinda makes more sense than line oriented rdf/xml. I say this only because most RDF libraries and tools have support for bulk loading ntriples, and none (to my knowledge) support loading line oriented rdf/xml files.</p>
<p>I've made the 1.9G bzipped ntriples file available on Amazon S3 if you are interested in having at it:</p>
<blockquote>
<p><a rel="nofollow" href="http://viaf-ntriples.s3.amazonaws.com/viaf-20120524-clusters-rdf.nt.bz2">http://viaf-ntriples.s3.amazonaws.com/viaf-20120524-clusters-rdf.nt.bz2</a><br />
  Incidentally you can torrent it as well, which would help spread the download of the file (and would spare me some cost on s3) by pointing your BitTorrent client at:</p>
<p><a rel="nofollow" href="http://viaf-ntriples.s3.amazonaws.com/viaf-20120524-clusters-rdf.nt.bz2?torrent">http://viaf-ntriples.s3.amazonaws.com/viaf-20120524-clusters-rdf.nt.bz2?torrent</a><br />
  As with the original VIAF dataset, this ntriples VIAF download contains information from VIAF (Virtual International Authority File) which is made available under the <a href="http://opendatacommons.org/licenses/by/1.0/">ODC Attribution License (ODC-By)</a>. Similarly, I am making the ntriples VIAF download available using the <a rel="license" href="http://opendatacommons.org/category/odc-by/">ODC-By License</a> as well, because I think I have to given the of <a href="http://opendatacommons.org/licenses/by/1.0/#4-0-conditions-of-use">viral nature</a> of ODC-By. At least that's my unprofessional (I am not a lawyer) reading of the license. I'm not really complaining either, I'm all for openness going viral :-)</p>
</blockquote>
<hr />
<p>On a side note, I upgraded my laptop after the 4 days it took to initially create the ntriples file. In the process I accidentally deleted the ntriples file when I reformatted my hard drive. So the second time around I spent some time seeing if I could generate it quicker on <a href="http://aws.amazon.com/elasticmapreduce/">Elastic MapReduce</a> by splitting the file across multiple workers that would generate the ntriples from the rdf/xml and merge it back together. The conversion of the rdf/xml to ntriples using rdflib was largely CPU bound on my laptop, so I figured <a href="http://web.archive.org/web/20120829035941/http://hadoop.apache.org:80/common/docs/r0.15.2/streaming.html">Hadoop Streaming</a> would help me run my little Python script on as many workers nodes as I needed.</p>
<p>EMR made setting up and running a job quite easy, but I ran into my own ignorance pretty quickly. It turns out that Hadoop was not able to split the gzipped VIAF data, which meant data was only ever sent to one worker, no matter how many I ran. I then ran across some advice to use LZO compression, which is <a href="https://forums.aws.amazon.com/thread.jspa?messageID=347820&amp;#347820">supposedly splittable</a> on EMR, but after lots of experimentation I couldn't get it to split either. I thought about uncompressing the original gzipped file on S3, but felt kind of depressed about doing that for some reason.</p>
<p>I time-boxed only a few days to try to get EMR working, so I backpedaled to rewriting the conversion script with Python's <a href="http://docs.python.org/library/multiprocessing.html">multiprocessing</a> library. I thought multiprocessing would let me take advantage of a multi-core EC2 machine. But oddly the conversion ran slower using multiprocessing's <a href="http://docs.python.org/library/multiprocessing.html#using-a-pool-of-workers">Pool</a> than it did as a single process. I chalked this up to the overhead of pickling large strings of rdf/xml and ntriples to send them around during inter-process-communication...but I didn't investigate further.</p>
<p>So, in the end, I just re-ran the script for 4 days, but this time up at EC2 so that I could use my laptop during that time. &sigh;</p>
