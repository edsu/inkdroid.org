---
layout: post
status: publish
published: true
title: Hacking O'Reilly RDFa
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 1535
wordpress_url: http://inkdroid.org/journal/?p=1535
date: '2009-12-22 11:17:03 +0000'
date_gmt: '2009-12-22 18:17:03 +0000'
tags:
- rdfa
- identifiers
- linked-data
- oreilly
- graphs
comments:
- id: 81671
  author: links for 2010-01-22 &laquo; Claudio Bergamini Blog
  author_email: ''
  author_url: http://cbergamini.wordpress.com/2010/01/22/links-for-2010-01-22/
  date: '2010-01-22 03:03:55 +0000'
  date_gmt: '2010-01-22 10:03:55 +0000'
  content: "[...] inkdroid › Hacking O’Reilly RDFa (tags: semantic rdfa) [...]"
- id: 82435
  author: Hacking O&#8217;Reilly RDFa &laquo; ronjea&#39;s Blog
  author_email: ''
  author_url: http://ronjea.wordpress.com/2010/04/03/hacking-oreilly-rdfa/
  date: '2010-04-03 07:41:05 +0000'
  date_gmt: '2010-04-03 14:41:05 +0000'
  content: "[...] http://inkdroid.org/journal/2009/12/22/hacking-oreilly-rdfa/ [...]"
- id: 85248
  author: abdelazer
  author_email: abdelazer@gmail.com
  author_url: ''
  date: '2011-12-01 12:46:30 +0000'
  date_gmt: '2011-12-01 19:46:30 +0000'
  content: An alternative way to get a lot of RDF data about these books is http://labs.oreilly.com/opmi.html  (maybe
    old data)
---

<p>I recently learned from <a href="http://ivan-herman.name/2009/12/12/rdfa-usage-spreading…/">Ivan Herman</a>'s blog that O'Reilly has begun publishing RDFa in their online catalog of books. So if you go and install the <a href="http://www.w3.org/2001/sw/BestPractices/HTML/rdfa-bookmarklet/">RDFa Highlight</a> bookmarklet and then visit a page like <a href="http://oreilly.com/catalog/9780596516499/">this</a> and click on the bookmarklet you'll see something like:</p>
<p><a href="http://oreilly.com/catalog/9780596516499/"><br />
<img src="http://inkdroid.org/images/oreilly-rdfa.png" style="width: 600px;"/><br />
</a></p>
<p>Those red boxes you see are graphical depictions of where metadata can be found interleaved in the HTML. In my screenshot you can maybe barely see an assertion involving the title being displayed:</p>
<pre>
&lt;urn:x-domain:oreilly.com:product:9780596516499.IP&gt; dc:title "Natural Language Processing with Python"
</pre>
<p>But there is actually quite a lot of metadata hiding in the page, which can be found by running the page through the <a href="http://www.w3.org/2007/08/pyRdfa">RDFa Distiller</a> (quickly skim over this if your eyes glaze over when you see Turtle):</p>
<pre style="height: 300px;">
@prefix dc: &lt;http://purl.org/dc/terms/&gt; .
@prefix foaf: &lt;http://xmlns.com/foaf/0.1/&gt; .
@prefix frbr: &lt;http://vocab.org/frbr/core#&gt; .
@prefix gr: &lt;http://purl.org/goodrelations/v1#&gt; .
@prefix rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt; .
@prefix rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt; .
@prefix xml: &lt;http://www.w3.org/XML/1998/namespace&gt; .
@prefix xsd: &lt;http://www.w3.org/2001/XMLSchema#&gt; .

&lt;urn:x-domain:oreilly.com:product:9780596516499.IP&gt; a frbr:Expression ;
     dc:creator &lt;urn:x-domain:oreilly.com:agent:pdb:3343&gt;, &lt;urn:x-domain:oreilly.com:agent:pdb:3501&gt;, &lt;urn:x-domain:oreilly.com:agent:pdb:3502&gt; ;
     dc:issued "2009-06-12"^^xsd:dateTime ;
     dc:publisher "O'Reilly Media"@en ;
     dc:title "Natural Language Processing with Python"@en ;
     frbr:embodiment &lt;urn:x-domain:oreilly.com:product:9780596516499.BOOK&gt;, &lt;urn:x-domain:oreilly.com:product:9780596803346.SAF&gt;, &lt;urn:x-domain:oreilly.com:product:9780596803391.EBOOK&gt; . 

&lt;http://customer.wileyeurope.com/CGI-BIN/lansaweb?procfun+shopcart+shcfn01+funcparms+parmisbn(a0130):9780596516499+parmqty(p0050):1+parmurl(l0560):http://oreilly.com/store/&gt; a gr:Offering ;
     gr:includesObject
         [ a gr:TypeAndQuantityNode ;
             gr:ammountOfThisGood "1"^^xsd:float ;
             gr:hasPriceSpecification
                 [ a gr:UnitPriceSpecification ;
                     gr:hasCurrency "GBP"@en ;
                     gr:hasCurrencyValue "34.50"^^xsd:float
                 ] ;
             gr:typeOfGood &lt;urn:x-domain:oreilly.com:product:9780596516499.BOOK&gt;
         ] . 

&lt;http://my.safaribooksonline.com/9780596803346&gt; a gr:Offering ;
     gr:includesObject
         [ a gr:TypeAndQuantityNode ;
             gr:ammountOfThisGood "1"^^xsd:float ;
             gr:typeOfGood &lt;urn:x-domain:oreilly.com:product:9780596803346.SAF&gt;
         ] . 

&lt;https://epoch.oreilly.com/shop/cart.orm?p=BUNDLE&prod=9780596516499.BOOK&prod=9780596803391.EBOOK&bundle=1&retUrl=http%3A%252F%252Foreilly.com%252Fstore%252F&gt; a gr:Offering ;
     gr:includesObject
         [ a gr:TypeAndQuantityNode ;
             gr:ammountOfThisGood "1"^^xsd:float ;
             gr:includesObject
                 [ a gr:TypeAndQuantityNode ;
                     gr:ammountOfThisGood "1"^^xsd:float ;
                     gr:hasPriceSpecification
                         [ a gr:UnitPriceSpecification ;
                             gr:hasCurrency "None"@en ;
                             gr:hasCurrencyValue "49.49"^^xsd:float
                         ] ;
                     gr:typeOfGood &lt;urn:x-domain:oreilly.com:product:9780596803391.EBOOK&gt;
                 ] ;
             gr:typeOfGood &lt;urn:x-domain:oreilly.com:product:9780596516499.BOOK&gt;
         ] . 

&lt;https://epoch.oreilly.com/shop/cart.orm?prod=9780596516499.BOOK&gt; a gr:Offering ;
     gr:includesObject
         [ a gr:TypeAndQuantityNode ;
             gr:ammountOfThisGood "1"^^xsd:float ;
             gr:hasPriceSpecification
                 [ a gr:UnitPriceSpecification ;
                     gr:hasCurrency "USD"@en ;
                     gr:hasCurrencyValue "44.99"^^xsd:float
                 ] ;
             gr:typeOfGood &lt;urn:x-domain:oreilly.com:product:9780596516499.BOOK&gt;
         ] . 

&lt;https://epoch.oreilly.com/shop/cart.orm?prod=9780596803391.EBOOK&gt; a gr:Offering ;
     gr:includesObject
         [ a gr:TypeAndQuantityNode ;
             gr:ammountOfThisGood "1"^^xsd:float ;
             gr:hasPriceSpecification
                 [ a gr:UnitPriceSpecification ;
                     gr:hasCurrency "USD"@en ;
                     gr:hasCurrencyValue "35.99"^^xsd:float
                 ] ;
             gr:typeOfGood &lt;urn:x-domain:oreilly.com:product:9780596803391.EBOOK&gt;
         ] . 

&lt;urn:x-domain:oreilly.com:agent:pdb:3343&gt; a foaf:Person ;
     foaf:homepage &lt;http://www.oreillynet.com/pub/au/3614&gt; ;
     foaf:name "Steven Bird"@en . 

&lt;urn:x-domain:oreilly.com:agent:pdb:3501&gt; a foaf:Person ;
     foaf:homepage &lt;http://www.oreillynet.com/pub/au/3615&gt; ;
     foaf:name "Ewan Klein"@en . 

&lt;urn:x-domain:oreilly.com:agent:pdb:3502&gt; a foaf:Person ;
     foaf:homepage &lt;http://www.oreillynet.com/pub/au/3616&gt; ;
     foaf:name "Edward Loper"@en . 

&lt;urn:x-domain:oreilly.com:product:9780596803346.SAF&gt; a frbr:Manifestation ;
     dc:type &lt;http://purl.oreilly.com/product-types/SAF&gt; . 

&lt;urn:x-domain:oreilly.com:product:9780596803391.EBOOK&gt; a frbr:Manifestation ;
     dc:identifier &lt;urn:isbn:9780596803391&gt; ;
     dc:issued "2009-06-12"^^xsd:dateTime ;
     dc:type &lt;http://purl.oreilly.com/product-types/EBOOK&gt; . 

&lt;urn:x-domain:oreilly.com:product:9780596516499.BOOK&gt; a frbr:Manifestation ;
     dc:extent """512"""@en ;
     dc:identifier &lt;urn:isbn:9780596516499&gt; ;
     dc:issued "2009-06-19"^^xsd:dateTime ;
     dc:type &lt;http://purl.oreilly.com/product-types/BOOK&gt; . 
</pre>
<p>So that's a lot of data. The nice thing about rdf is that you can look at the vocabularies that are being used to get an idea of the rough shape of the underlying data. Just looking at the namespace prefixes we can see that O'Reilly has chosen to use the following vocabularies:</p>
<ul>
<li><a href="http://dublincore.org/documents/dcmi-terms/">Dublin Core Terms</a>: for indicating the publisher, title, authors, issue date and identifiers for a book</li>
<li><a href="http://xmlns.com/foaf/spec/">Friend of a Friend (FOAF)</a>: for modeling authors as People</li>
<li><a href="http://vocab.org/frbr/core.html">Functional Requirements for Bibliographic Records (FRBR)</a>: for relating a particular book (Expression) to its various Manifestations of the title: ebook, printed book</li>
<li><a href="http://www.heppnetz.de/projects/goodrelations/">Good Relations</a>: for making pricing information available</li>
</ul>
<p>I was curious so I wrote a little <a href="https://gist.github.com/edsu/6214240">crawler</a> (41 lines of Python+rdflib) to collect all the metadata from the O'Reilly Catalog pages. Yes all the pages! It ended up pulling down 92,101 triples.</p>
<p>A nice side effect of having the data as a big ntriples file is you can do unix pipe tricks with sort, cut, uniq like <a href="https://gist.github.com/edsu/6214277">this</a> to get some ballpark numbers on what types of resources are in the rdf graph:</p>
<pre>
ed@curry:~/Projects/oreilly-crawler$ rdfsum catalog.nt
   6803 &lt;http://purl.org/goodrelations/v1#TypeAndQuantityNode&gt;
   5861 &lt;http://purl.org/goodrelations/v1#Offering&gt;
   4564 &lt;http://purl.org/goodrelations/v1#UnitPriceSpecification&gt;
   4065 &lt;http://vocab.org/frbr/core#Manifestation&gt;
   2100 &lt;http://vocab.org/frbr/core#Expression&gt;
   2023 &lt;http://xmlns.com/foaf/0.1/Person&gt;
</pre>
<p>Another nice thing about pulling the RDFa down with rdflib is you end up with a little berkeleydb triple store which you can query with SPARQL, say to pull out all the authors and titles:</p>
<pre>
    SELECT ?title ?author
    WHERE { 
      ?title_uri dct:title ?title .
      ?title_uri dct:creator ?author_uri .
      ?author_uri foaf:name ?author .
    }
</pre>
<p>And adding a little bit of <a href="http://networkx.lanl.gov/">networkx</a> <a href="https://gist.github.com/edsu/6214349">judo</a> you can get an <strong>xmas-friendly</strong> graph of authors (the green dots are books and the red ones are authors ; I limited author labels to authors who had written more than 2 books).</p>
<p><a href="http://inkdroid.org/images/oreilly-authorship.png"><img src="http://inkdroid.org/images/oreilly-authorship.png" /></a></p>
<p>Admittedly this is not very readable, but I imagine someone with more network visualization skillz could do something nicer in short order. There's a lot that could be done with the data. This exercise was mainly just to demonstrate how layering some new stuff into your HTML can really open up doors for how people use your website. Clearly O'Reilly did some deep thinking about what data they had, and what vocabularies they wanted to model it with. But once they'd done that they probably just had to go add 50 lines to an HTML template somewhere, and it was published (props to <a href="http://davidbrunton.com">David Brunton</a> for this turn of phrase). It's a really good sign that a tech publisher with the stature of O'Reilly is giving this method of data publishing a try.</p>
<p>My only suggestion (for anyone at O'Reilly who might be reading) would be that it would be nice if they used HTTP URLs instead of URNs for People, Works and Expressions. I understand why they did it: using URNs eases deployment somewhat since you don't have to worry about httpRange-14 stuff. But I think they could easily use a hash URI instead of an URN, and make it easy for people to link to their stuff in other data. The <a href="http://www.w3.org/TR/cooluris/">Cool URIs For the Semantic Web</a> has some other patterns they might want to consider, but simply adding a hash to their existing page URIs should do the trick. So for example, consider if <a href="http://openlibrary.org">OpenLibrary</a> wanted to link their notion of of a book to O'Reilly's notion of a book with owl:sameAs. If they used they URN they'd have:</p>
<pre>
&lt;http://openlibrary.org/b/OL23978297M&gt; owl:sameAs &lt;urn:x-domain:oreilly.com:product:9780596516499.IP&gt; .
</pre>
<p>but if O'Reilly identified their expressions with a URL they would enable something like:</p>
<pre>
&lt;http://openlibrary.org/b/OL23978297M&gt; owl:sameAs &lt;http://oreilly.com/catalog/9780596516499#expression&gt; .
</pre>
<p>This may seem like a minor point, but it's really important to be able to follow your nose on the web--particularly in <a href="http://linkeddata.org">Linked Data</a>. If a piece of software ran across the O'Reilly URL in a chunk of OpenLibrary RDF, the program could HTTP GET it, and learn more stuff about the book. <em>But if it got the URN it wouldn't really know how to fetch a representation for that resource without some special case logic that mapped the URN to a URL</em>. There is a reason why Tim Berners-Lee included the following as the second of his <a href="http://www.w3.org/DesignIssues/LinkedData.html">design principles</a> for Linked Data:</p>
<blockquote><p>
Use HTTP URIs so that people can look up those names.
</p></blockquote>
<p>Anyhow, hats off to O'Reilly for putting RDFa into practice. I hope the rest of the publishing (and library world) take note. If you are looking to learn more about RDFa <a href="http://adida.net/">Ben Adida</a> and <a href="http://web.archive.org/web/20111121115551/http://webbackplane.com/mark-birbeck/">Mark Birbeck</a>'s <a href="http://www.w3.org/TR/xhtml-rdfa-primer/">RDFa Primer: Bridging the Human and Data Webs</a> is a really nice intro.</p>
