---
layout: post
status: publish
published: true
title: Martin Malmsten and linked library data
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 315
wordpress_url: http://inkdroid.org/journal/?p=315
date: '2008-09-02 07:13:49 +0000'
date_gmt: '2008-09-02 14:13:49 +0000'
tags:
- rdf
- libraries
- podcasts
- semweb
- linkeddata
comments:
- id: 72844
  author: Roy Tennant
  author_email: roytennant@gmail.com
  author_url: http://roytennant.com/
  date: '2008-09-03 12:22:21 +0000'
  date_gmt: '2008-09-03 19:22:21 +0000'
  content: Not to be a monkey on your back (he says, as he clambers on for another
    ride), but I don't think you've yet met my challenge. That is, what problem does
    this solve and how does it work better than anything previous? As far as I can
    tell you've solved a problem (aggregating data) that was solved back when you
    could pack a VW bus with mag tapes. What is so useful about this that will have
    people sit up and saying "Yeah! I WANT me one of those?"
- id: 72943
  author: Internet Alchemy &raquo; Bookmarks for May 7th through September 2nd
  author_email: ''
  author_url: http://iandavis.com/blog/2008/09/bookmarks-for-may-7th-through-september-2nd
  date: '2008-09-04 02:08:47 +0000'
  date_gmt: '2008-09-04 09:08:47 +0000'
  content: "[...] Martin Malmsten and linked library data - [...]"
- id: 73084
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2008-09-04 20:42:36 +0000'
  date_gmt: '2008-09-05 03:42:36 +0000'
  content: "@royt ok, I honestly didn't think you'd think I had met your challenge
    :-) I'd need another blog post to talk about why I think aggregating resources
    in this way (web harvesting) is superior to mag tapes in a VW bus. I would've
    thought it was self-evident, but there you go... A better comparison, I think
    would be with OAI-PMH. Do you think OAI-PMH is useful?"
- id: 73517
  author: Roy Tennant
  author_email: roytennant@gmail.com
  author_url: http://roytennant.com/
  date: '2008-09-08 10:54:43 +0000'
  date_gmt: '2008-09-08 17:54:43 +0000'
  content: 'The point I''m trying to make about your specific demonstration can be
    equally made with OAI-PMH. Both that protocol and your technique have the same
    problem: they are a good way to aggregate _unique_ records, but they will always
    be flawed when aggregating records for commonly held items. This is because variations
    in those records are much easier to deal with in a batch mode over time than dynamically.
    Ask anyone who has ever had to create and maintain a union catalog.  This is why
    I don''t find this demonstration a compelling of linked data, as fun as it may
    have been to be asleep while the catalog was being sucked down -- which as you
    point out could have been done via OAI-PMH as well. Solve a problem that many
    of us have in a more effective way than before and you may have something. Without
    that, why should we care?'
- id: 85389
  author: Bookmarks for May 7th through September 2nd &laquo; Internet Alchemy
  author_email: ''
  author_url: http://blog.iandavis.com/2008/09/04/bookmarks-for-may-7th-through-september-2nd/
  date: '2012-05-08 12:12:50 +0000'
  date_gmt: '2012-05-08 19:12:50 +0000'
  content: "[...] Martin Malmsten and linked library data &#8211; [...]"
---
<p>I'm currently listening to Richard Wallis' <a href="http://blogs.talis.com/panlibus/archives/2008/08/semantic-future-for-libraries-martin-marlmsten-talks-with-talis.php">interview</a> w/ Martin Malmsten of the Royal Library of Sweden. It's a really fascinating view inside a library, and the mind of a developer that are <a href="http://article.gmane.org/gmane.culture.libraries.ngc4lib/4617">publishing bibliographic resources as linked data</a>.</p>
<p>Partly as a dare from Roy Tennant to do something useful with linked-data, I spent 30 minutes w/ <a href="http://rdflib.net">rdflib</a> creating a very simplistic (42 lines of code) <a href="http://web.archive.org/web/20101216213250/http://inkdroid.org/bzr/linked-data-crawler/crawl.py">crawler</a> that can walk the links in the Royal Library's linked data, and store the bibliographic resources encountered. I ran it over the weekend (it had a 3 second sleep between requests, so as not to arouse the ire of the Royal Library of Sweden), and it ended up pulling down <a href="http://web.archive.org/web/20090106021214/http://inkdroid.org/bzr/linked-data-crawler/libris.kb.se.n3">919,190 triples</a> describing a variety of resources (kind of a fun unix hack here to get the types of resources in a ntriples rdf dump):</p>
<pre>
ed@hammer:~/bzr/linked-data-crawler$ grep 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type' libris.kb.se.n3 \
  | cut -f 3 -d " " \
  | sort \ 
  | uniq -c \
  | sort -rn
  18445 &lt;http://purl.org/ontology/bibo/Book&gt;.
   1686 &lt;http://purl.org/ontology/bibo/Article&gt;.
    258 &lt;http://www.w3.org/2004/02/skos/core#Concept&gt;.
    245 &lt;http://purl.org/ontology/bibo/Film&gt;.
    237 &lt;http://xmlns.com/foaf/0.1/Organization&gt;.
    219 &lt;http://xmlns.com/foaf/0.1/Person&gt;.
     58 &lt;http://purl.org/ontology/bibo/Periodical&gt;.
      4 &lt;http://purl.org/ontology/bibo/Map&gt;.
      4 &lt;http://purl.org/ontology/bibo/Manuscript&gt;.
      1 &lt;http://purl.org/ontology/bibo/Collection&gt;.
</pre>
<p>As I pointed out on <a href="http://article.gmane.org/gmane.culture.libraries.ngc4lib/4647">ngc4lib</a>, the purpose of this wasn't to display any technical prowess--much to the contrary, it was to share how the nature of linked-data being on the web we know and love makes it natural to work with.</p>
<p>One of the many gems in the interview, was Martin's response to Richard's question about whether the "semantic web" that we talk about today is subtly different than the semantic web that was introduced in <a href="http://www.sciam.com/article.cfm?id=the-semantic-web">2001</a>.</p>
<blockquote><p>
People saw the words "semantic web" and then they sort of forgot the <em>web</em> part, and started to work on the <em>semantic</em> part (vocabularies)--and that can become arbitrarily complex. If you forget the <em>web</em> part then it is just metadata, and then people can ask "ok, you have this semantics thing and we have marc21, it's not really that different" and they'd be right. But now linked data is starting to feed the semantic <em>web</em>, and it's the <em>web</em> part that makes it special. <em>(about 34:00 into the interview)</em>.
</p></blockquote>
<p>I'm not an expert on the history of the web and libraries, but this seems to be spot on to me. The notion that traditional library assets (bibliographic resources like catalog records, name/subject authority records, holdings records, etc.) can be made available directly on the web as machine readable data is the real promise of linked-data for libraries. It feels like we're at an inflexion point like the one where libraries realized their catalogs could be made available on the web. The web-opac allowed there to be links between say bibliographic records and subject headings, which could be expressed in HTML for people to traverse. But now we can express these links explicitly in a machine readable way, for automated agents to traverse. If you (like Roy Tennant) are skeptical of the value in this ask yourself how companies like Google were able to build up their most valuable asset, their index of the web. They used the open architecture of the web, to walk the links between resources. Imagine if we could allow people to do the same with our data? To gather say a union catalog of Sweden by crawling it's member libraries catalogs, and periodically updating them with HTTP GET for that resource?</p>
<p>Martin's main point is that a lot of valuable effort has gone into vocabulary development like <a href="http://dublincore.org/">DublinCore</a>, <a href="http://www.loc.gov/standards/mods/">MODS</a> etc, and even some on the distribution of descriptions using these vocabularies using <a href="http://www.openarchives.org/">OAI-PMH</a>. But the real exciting part IMHO is giving these resources URLs, and linking them together...much as the web of documents is linked together. I agree with Martin, this is new territory, that really combines what librarians and web-technologists do best. I'm looking forward to meeting Martin at <a href="http://web.archive.org/web/20130722011956/http://dc2008.de/">DC2008</a>, where hopefully we can do a linked-data BOF or something.</p>
