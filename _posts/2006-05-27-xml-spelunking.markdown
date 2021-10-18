---
layout: post
status: publish
published: true
title: xml spelunking
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 101
wordpress_url: http://www.inkdroid.org/journal/?p=101
date: '2006-05-27 06:04:38 +0000'
date_gmt: '2006-05-27 13:04:38 +0000'
tags: []
comments: []
---

<p>As part of my day job I've been rifling through large foreign XML files--learning the rhyme and reason of tags used, looking at content, etc... I opened files in Firefox and vim and that was OK--but I like working from the command line. After minimal searching I wasn't able to find a suitable tool that would simply outline the structure of an xml document in the way I wanted--although <a href="http://librarycog.uwindsor.ca:8087/artblog/librarycog/">artunit</a> pointed out <a href='http://simile.mit.edu/gadget/'>Gadget</a> from MIT which looks like a really wonderful GUI tool to try out.  So (predictably) I wrote <a href='http://textualize.com/svn/tilde_bin/xmltree'>my own</a>:</p>
<pre>
biblio:~ ed$ xmltree
Usage: xmltree foo.xml [--depth=n] [--xpath=/foo/bar] [--content]

Specific options:
    -d, --depth n                    max levels
    -x, --xpath /foo/bar             xpath to apply
    -c, --content                    include tag content
    -n, --namespaces                 include namespace information
    -h, --help                       show this message
</pre>
<p>You can use it to list all the elements in a document like this:</p>
<pre>
biblio:~ ed$ xmltree pmets.xml

PorticoMETS
 metsHdr
  agent
   name
 structMapContent
  div
   mdGroup
    descMDcurated
     mdWrap
      xmlData
       PorticoArticleMetadata
        article
... many lines of content removed
</pre>
<p>Maybe it's a huge file and you only want to see a few levels in:</p>
<pre>
biblio:~ed$ xmltree --depth=3 pmets.xml 

PorticoMETS
 metsHdr
  agent
   name
 structMapContent
  div
   mdGroup
   div
   div
   div
 structMapMetadata
  div
   mdGroup
   fileGrp
</pre>
<p>And if you just want to explore a particular node you can use an xpath:</p>
<pre>
biblio:~ed$ xmltree --xpath .//PorticoMETS/structMapContent/div/mdGroup/descMDextracted/mdWrap/xmlData sample.pmets

xmlData
 PorticoArticleMetadata
  article
   front
    journal-meta
     journal-id
     journal-title
     issn
     issn
    article-meta
     article-id
     article-id
     title-group
      article-title
     contrib-group
      contrib
     pub-date
      day
      month
      year
      string-date
     volume
     issue
     fpage
     page-range
     product
     copyright-year
     copyright-holder
     self-uri
</pre>
<p>And finally if you want to eyeball the content of the fields you can use the --content option:</p>
<pre>
biblio:~ ed$ xmltree --xpath .//PorticoMETS/structMapContent/div/mdGroup/
  descMDextracted/mdWrap/xmlData --content sample.pmets

xmlData
 PorticoArticleMetadata
  article
   front
    journal-meta
     journal-id='bull'
     journal-title='Bulletin of the American Mathematical Society'
     issn='0273-0979'
     issn='1088-9485'
    article-meta
     article-id='S0273-0979-00-00866-1'
     article-id='10.1090/S0273-0979-00-00866-1'
     title-group
      article-title='Book Review'
     contrib-group
      contrib='David Marker'
     pub-date
      day='02'
      month='03'
      year='2000'
      string-date='02 March 2000'
     volume='37'
     issue='03'
     fpage='351'
     page-range='351-357'
     product='Tame topology and o-minimal structures, by Lou van den Dries,
       Cambridge Univ. Press, New York (1998), x + 180 pp., $39.95,
       ISBN 0-521-59838-9'
     copyright-year='2000'
     copyright-holder='American Mathematical Society'
     self-uri='http://www.ams.org/jourcgi/jour-getitem?pii=S0273-0979-
       00-00866-1'</pre>
<p>Anyhow, if you have a favorite tool for doing this sort of stuff please let me know. If you want to try out xmltree you can <a href='http://textualize.com/svn/tilde_bin/xmltree'>grab it</a> out of my subversion repository. You'll just need a modern Ruby.</p>
