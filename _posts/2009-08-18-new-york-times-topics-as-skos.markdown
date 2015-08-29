---
layout: post
status: publish
published: true
title: New York Times Topics as SKOS
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 1094
wordpress_url: http://inkdroid.org/journal/?p=1094
date: '2009-08-18 21:46:59 +0000'
date_gmt: '2009-08-19 04:46:59 +0000'
tags:
- rdf
- skos
- newspapers
- rdfa
- python
- nytimes
- rdflib
- beautifulsoup
comments:
- id: 81543
  author: Ryan Shaw
  author_email: ryan.shaw@stanfordalumni.org
  author_url: http://people.ischool.berkeley.edu/~ryanshaw/wordpress/bio
  date: '2009-08-19 13:42:09 +0000'
  date_gmt: '2009-08-19 20:42:09 +0000'
  content: http://open.blogs.nytimes.com/2009/06/26/nyt-to-release-thesaurus-and-enter-linked-data-cloud/
- id: 81544
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-08-19 15:32:56 +0000'
  date_gmt: '2009-08-19 22:32:56 +0000'
  content: Thanks Ryan, I did see this announcement come out of SemTech a few months
    ago. It is great news, both in its potential and its enthusiasm. The point of
    my post was that it is achievable right now, with minimal technical effort ...
    and there might be a small first step they could take into the Linked Data arena,
    while they work on the big idea.
- id: 81545
  author: Karl Dubost
  author_email: karl@la-grange.net
  author_url: http://karl.dubost.myopenid.com/
  date: '2009-08-26 05:03:39 +0000'
  date_gmt: '2009-08-26 12:03:39 +0000'
  content: A long time ago (in 2004), Aaron had explored this topic using RDF and
    SVG for plotting relationships of NY Times See the work at http://aaronland.info/nytimes/
- id: 81566
  author: Uche Ogbuji
  author_email: uche@ogbuji.net
  author_url: http://uche.myopenid.com/
  date: '2009-11-28 13:35:46 +0000'
  date_gmt: '2009-11-28 20:35:46 +0000'
  content: |
    <p>Came across this and decided to spend 10 minutes porting it to Amara 2.x http://web.archive.org/web/20100620115354/http://wiki.xml3k.org:80/Amara2 - nice cut in LOC), and updating to changed site structure.  Purely a demo.  I know NYT have provided a better way now :)</p>

    <p>http://bitbucket.org/uche/scatter-share/src/tip/demos/akara/amara/nyt2skos.py</p>

    <p>http://web.archive.org/web/20100609160203/http://wiki.xml3k.org:80/Amara2/Recipes</p>
- id: 83264
  author: Internet Alchemy &raquo; links for 2009-09-14
  author_email: ''
  author_url: http://blog.iandavis.com/2009/09/links-for-2009-09-14
  date: '2010-09-21 17:58:09 +0000'
  date_gmt: '2010-09-22 00:58:09 +0000'
  content: "[...] inkdroid » Blog Archive » New York Times Topics as SKOS (tags: skos
    rdf linkeddata python web howto semantic semweb) [...]"
- id: 85387
  author: links for 2009-09-14 &laquo; Internet Alchemy
  author_email: ''
  author_url: http://blog.iandavis.com/2009/09/14/links-for-2009-09-14/
  date: '2012-05-08 11:28:25 +0000'
  date_gmt: '2012-05-08 18:28:25 +0000'
  content: "[...] inkdroid &raquo; Blog Archive &raquo; New York Times Topics as SKOS
    (tags: skos rdf linkeddata python web howto semantic semweb) [...]"
---
<p><em>Serves 23,376 SKOS Concepts</em></p>
<p><strong>INGREDIENTS</strong></p>
<ul>
<li>Text editor: <a href="http://www.vim.org/">Vim</a>, <a href="http://www.gnu.org/software/emacs/">Emacs</a>, <a href="http://macromates.com/">TextMate</a>, etc</li>
<li><a href="http://python.org">Python</a></li>
<li><a href="http://www.crummy.com/software/BeautifulSoup/">BeautifulSoup</a></li>
<li><a href="http://rdflib.net">rdflib</a></li>
<li>Internet connection</li>
</ul>
<p><strong>DIRECTIONS</strong></p>
<ol>
<li>Open a new file using your favorite text editor.</li>
<li>Instantiate an RDF graph with a dash of rdflib.</li>
<li>Use python's urllib to extract the HTML for each of the Times Topics Index Pages, e.g. for <a href="http://topics.nytimes.com/top/reference/timestopics/all/a">A</a>.</li>
<li>Parse HTML into a fine, queryable data structure using BeautifulSoup.</li>
<li>Locate topic names and their associated URLs, and gently add them to the graph with a pinch of SKOS.</li>
<li>Go back to step 3 to fetch the next batch of topics, until you've finished <a href="http://topics.nytimes.com/top/reference/timestopics/all/z">Z</a>.</li>
<li>Bake the RDF graph as an rdf/xml file.</li>
</ol>
<p><strong>NOTES</strong></p>
<p>If you don't feel like cooking up the rdf/xml yourself you can download it from <a href="http://web.archive.org/web/20101216220314/http://inkdroid.org/bzr/timestopics/timestopics.rdf">here</a> (might want to right-click to download, some browsers might have trouble rendering the xml), or download the 68 line <a href="http://web.archive.org/web/20101216220252/http://inkdroid.org/bzr/timestopics/timestopics.py">implementation</a> and run it yourself.</p>
<p>The point of this exercise was mainly to show how thinking of the New York Times Topics as a <a href="http://en.wikipedia.org/wiki/Controlled_vocabulary">controlled vocabulary</a>, that can be serialized as a file, and still present on the Web, could be useful. Perhaps to someone writing an application that needs to integrate with the New York Times and who want to be able to tag content using the same controlled vocabulary. Or perhaps someone wants to be able to link your own content with similar content at the New York Times. These are all use cases for expressing the Topics as SKOS, and being able to ship it around with resolvable identifiers for the concepts.</p>
<p>Of course there is one slight wrinkle. Take a look at this <a href="http://en.wikipedia.org/wiki/Turtle_(syntax)">Turtle</a> snippet for the concept of Ray Bradbury:</p>
<pre>
@prefix rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt; .
@Prefix skos: &lt;http://www.w3.org/2004/02/skos/core#&gt; .

&lt;http://topics.nytimes.com/top/reference/timestopics/people/b/ray_bradbury#concept&gt; a skos:Concept;
    skos:prefLabel "Bradbury, Ray";
    skos:broader &lt;http://topics.nytimes.com/top/reference/timestopics/people#concept&gt;;
    skos:inScheme &lt;http://topics.nytimes.com/top/reference/timestopics#conceptScheme&gt; 
    .
</pre>
<p>Notice the URI being used for the concept?</p>
<pre>
http://topics.nytimes.com/top/reference/timestopics/people/b/ray_bradbury#concept</pre>
<p>The wrinkle is that there's no way to get RDF back from this URI currently. But since NYT is already using XHTML, it wouldn't be hard to sprinkle in some RDFa such that:</p>
<pre lang="html">
<html xmlns="http://www.w3.org/1999/xhtml"
    xmlns:skos="http://www.w3.org/2004/02/skos/core#">
...
<h1 about="http://topics.nytimes.com/top/reference/timestopics/people/b/ray_bradbury#concept" property="skos:prefLabel">Ray Bradbury</h1>
...
</html>
</pre>
<p>And <em>voila</em> you've got <a href="http://www.w3.org/DesignIssues/LinkedData.html">Linked Data</a>. I took the 5 minutes to mark up the HTML myself and put it <a href="http://inkdroid.org/data/bradbury.html">here</a> which you can run through the <a href="http://www.w3.org/2007/08/pyRdfa/">RDFa Distiller</a> to get some <a href="http://www.w3.org/2007/08/pyRdfa/extract?uri=http%3A%2F%2Finkdroid.org%2Fdata%2Fbradbury.html&format=turtle&warnings=false&parser=lax&space-preserve=true&submit=Go%21&text=">Turtle</a>. Of course if the NYT ever decided to alter their HTML to provide this markup this recipe would be simplified greatly: no more error prone scraping, the assertions could be pulled directly out of the HTML.</p>
