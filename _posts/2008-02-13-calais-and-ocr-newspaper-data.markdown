---
layout: post
status: publish
published: true
title: calais and ocr newspaper data
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 186
wordpress_url: http://inkdroid.org/journal/2008/02/13/calais-and-ocr-newspaper-data/
date: '2008-02-13 13:30:16 +0000'
date_gmt: '2008-02-13 20:30:16 +0000'
tags:
- rdf
- semanticweb
- datamining
- sparql
- newspapers
- ocr
- webservices
comments:
- id: 54590
  author: Dave
  author_email: david.e.woodward@gmail.com
  author_url: ''
  date: '2008-02-13 19:38:44 +0000'
  date_gmt: '2008-02-14 02:38:44 +0000'
  content: This is real cool Ed. Mmmm, Angostura Bitters - I think I'm going to make
    a Manhattan.
- id: 55224
  author: Pete
  author_email: peter.skomoroch@gmail.com
  author_url: ''
  date: '2008-02-22 11:18:52 +0000'
  date_gmt: '2008-02-22 18:18:52 +0000'
  content: "Tried the example, but seem to be having a problem with rdflib... any
    ideas?\r\n\r\n<pre lang=\"text\">\r\n$ ./calais.py data/ndnp:1396148\r\n\r\nTraceback
    (most recent call last):\r\n  File \"./calais.py\", line 127, in ?\r\n    print
    g.serialize(format='n3')\r\n  File \"/opt/local/lib/python2.4/site-packages/rdflib/Graph.py\",
    line 414, in serialize\r\n    return serializer.serialize(destination, base=base,
    encoding=encoding)\r\n  File \"/opt/local/lib/python2.4/site-packages/rdflib/syntax/serializer.py\",
    line 28, in serialize\r\n    self.serializer.serialize(stream, base=base, encoding=encoding)\r\n
    \ File \"/opt/local/lib/python2.4/site-packages/rdflib/syntax/serializers/N3Serializer.py\",
    line 17, in serialize\r\n    self._ser(self.store, stream)\r\n  File \"/opt/local/lib/python2.4/site-packages/rdflib/syntax/serializers/N3Serializer.py\",
    line 22, in _ser\r\n    for s, p, o in store:\r\nValueError: need more than 2
    values to unpack\r\n</pre>"
- id: 55225
  author: Pete
  author_email: peter.skomoroch@gmail.com
  author_url: ''
  date: '2008-02-22 11:27:08 +0000'
  date_gmt: '2008-02-22 18:27:08 +0000'
  content: "Another one:\r\n\r\n<pre lang=\"text\">\r\n$ python people.py ndnp:774348
    \       \r\n\r\nTraceback (most recent call last):\r\n  File \"people.py\", line
    22, in ?\r\n    for row in g.query(sparql):\r\nAttributeError: 'ConjunctiveGraph'
    object has no attribute 'query'\r\n</pre>"
- id: 55227
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2008-02-22 13:55:05 +0000'
  date_gmt: '2008-02-22 20:55:05 +0000'
  content: "What version of rdflib are you running?\r\n\r\n<pre lang=\"text\">\r\nuqbar:~/bzr/calais
    ed$ python\r\nPython 2.5.1 (r251:54869, Apr 18 2007, 22:08:04) \r\n[GCC 4.0.1
    (Apple Computer, Inc. build 5367)] on darwin\r\nType \"help\", \"copyright\",
    \"credits\" or \"license\" for more information.\r\n>>> import rdflib\r\n>>> print
    rdflib.__version__\r\n2.4.0\r\n</pre>"
- id: 55230
  author: Pete
  author_email: peter.skomoroch@gmail.com
  author_url: ''
  date: '2008-02-22 14:09:25 +0000'
  date_gmt: '2008-02-22 21:09:25 +0000'
  content: "Thanks, looks like I just have some python path cleaning to do...\r\n\r\n&gt;&gt;&gt;
    import rdflib\r\n&gt;&gt;&gt; print rdflib.__version__\r\n2.3.1"
- id: 55231
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2008-02-22 14:17:01 +0000'
  date_gmt: '2008-02-22 21:17:01 +0000'
  content: "Yeah, you'll need 2.4.0 (eikeon is here sitting next to me telling me).
    \r\n\r\n<pre lang=\"text\">\r\neasy_install -U rdflib==2.4.0\r\n</pre>"
- id: 74718
  author: Open Libraries &#8211; Mining for Meaning
  author_email: ''
  author_url: http://www.bookism.org/open/2008/07/28/mining-for-meaning/
  date: '2008-09-20 14:46:39 +0000'
  date_gmt: '2008-09-20 21:46:39 +0000'
  content: "[...] text, but it also works for extracting meaning from the most recent
    weblog posting to historic newspapers newly scanned into text via Optical Character
    Recognition (OCR). Since human-created metadata and [...]"
---
<p><a href="http://opencalais.com/"><img src="/images/calais.gif" style="margin-right: 10px; float: left;"/></a> Like you I've been <a href="http://web.archive.org/web/20080211070303/http://radar.oreilly.com:80/archives/2008/02/reuters_semantic_web_moneytech.html">reading</a> <a href="http://ebiquity.umbc.edu/blogger/2008/02/02/reuters-calais-offers-free-text-extraction-services-producing-rdf/">about</a> the new <a href="http://opencalais.com/">Reuters Calais Web Service</a>. The basic gist is you can send the service text and get back machine readable data about recognized entities (personal names, state/province names, city names, etc). The response format is kind of interesting because it's RDF that uses a bunch of homespun vocabularies.</p>
<p>At work <a href="http://eikeon.com">Dan</a>, <a href="http://ardvaark.net">Brian</a> and I have been working on ways to map document centric XML formats to intellectual models represented as OWL. At our last meeting one of our colleagues passed out the Calais documentation, and suggested we might want to take a look at it in the context of this work. It's a very different approach in that Calais is doing <a href="http://en.wikipedia.org/wiki/Natural_language_processing">natural language processing</a> and we instead are looking for patterns in the structure of XML. But the end result is the same--an RDF graph. We essentially have large amounts of XML metadata for newspapers, but we also have <a href="http://loc.gov/chroniclingamerica">large amounts</a> of OCR for the newspaper pages themselves. Perfect fodder for nlp and calais...</p>
<p>To aid in the process I wrote a helper utility (<a href="http://web.archive.org/web/20101216230820/http://inkdroid.org/bzr/calais/calais.py">calais.py</a>) that bundles up the Calais web service into a function call that returns a rdf graph, courtesy of Dan's <a href="http://rdflib.net">rdflib</a>:</p>
<pre lang="python">
  import calais
  graph = calais_graph(content)
</pre>
<p>This is dependent on you getting a calais <a href="http://web.archive.org/web/20080507000713/http://developer.opencalais.com:80/member/register">license key</a> and stashing it away in ~/.calais. I wrote a couple sample scripts that use calais.py to do stuff like output all the personal names found in the text. For example here's the <a href="http://web.archive.org/web/20101216230559/http://inkdroid.org/bzr/calais/people">people</a> script. <em>note, the angly brackets are missing from the sparql prefixes intentionally, since they don't render properly (yet) in wordpress</em>.</p>
<pre lang="python">
  from calais import calais_graph
  from sys import argv

  filename = argv[1]
  content = file(filename).read()
  g = calais_graph(content)

  sparql = """
          PREFIX rdf: http://www.w3.org/1999/02/22-rdf-syntax-ns#
          PREFIX ct: http://s.opencalais.com/1/type/em/e/
          PREFIX cp: http://s.opencalais.com/1/pred/
          SELECT ?name
          WHERE {
            ?subject rdf:type ct:People .
            ?subject cp:name ?name .
          }
          """

  for row in g.query(sparql):
      print row[0] 

</pre>
<p>Notice the content is sent to calais, the graph comes back, and then a SPARQL query is executed on it? Here's what we get when I run <a href="http://web.archive.org/web/20101216230637/http://inkdroid.org/bzr/calais/data/ndnp:774348">this</a> OCR data through (take a <a href="http://web.archive.org/web/20101216230637/http://inkdroid.org/bzr/calais/data/ndnp:774348">look</a> at the linked OCR to see just how irregular this data is).</p>
<pre>
  ed@curry:~/bzr/calais$ ./people data/ndnp\:774348 
  McKmley
  Edwin W. Joy
  A. Musto
  JOHN D. SPRECKELS
  George Dlxoh
  Le Roy
  Bryan
  Charles P. Braslan
  Siegerfs Angostura Bitters
  James Stafford
  Herbert Putnam
  H. G. Pond
  Charles F. Joy
  Santa Rosa
  Allen S. Qlmsted
  Pptter Palmer
</pre>
<p>Clearly there are some errors, but you could imagine ranked list of these as they occurred across a million pages, where the anomalies would fall off on the long tail somewhere. It could be really useful in faceted browse applications. And here's the output of <a href="http://web.archive.org/web/20101216230758/http://inkdroid.org/bzr/calais/cities">cities</a>.</p>
<pre>
  ed@curry:~/bzr/calais$ ./cities data/ndnp:774348 
  Valencia
  San Jose
  Seattle
  Newport
  Santa Clara
  St. Louis
  New York
  Haifa
  Venice
  Rochester
  Fremont
  San Francisco
  San Francisco
  Chicago
  Oakland
  Los Angeles
  Fresno
  Watsonville
  Philadelphia
  Washington
  CHICAGO
</pre>
<p>Not too shabby. If you want to try this out, install <a href="http://rdflib.net">rdflib</a>, and you can grab calais.py and the sample scripts and OCR samples from my bzr repo:</p>
<pre>
  bzr branch http://web.archive.org/web/20101217003936/http://inkdroid.org/bzr/calais/
</pre>
<p>If you do dive into calais.py you'll notice that currently the REST interface is returning the RDF escaped in an XML envelope of some kind. I think this is a bug, but calais.py extracts and unescapes the RDF.</p>
