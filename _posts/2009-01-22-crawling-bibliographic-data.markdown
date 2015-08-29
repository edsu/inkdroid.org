---
layout: post
status: publish
published: true
title: crawling bibliographic data
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 663
wordpress_url: http://inkdroid.org/journal/?p=663
date: '2009-01-22 05:37:12 +0000'
date_gmt: '2009-01-22 12:37:12 +0000'
tags:
- oclc
- http
- libraries
- google
- crawling
- robots
- books
- indexing
comments:
- id: 80852
  author: Thom
  author_email: hickey@oclc.org
  author_url: http://
  date: '2009-02-13 14:54:03 +0000'
  date_gmt: '2009-02-13 21:54:03 +0000'
  content: "Actually, we notice the major crawlers and send them HTML rather than
    the raw XML.  We do this if we think you are on a mobile device too, since most
    the the current browsers on phones don't handle the XML+XSLT very well.\r\n\r\nWe've
    also turned off the 'do not follow' header to make harvesting of Identities work
    better.\r\n\r\n--Th"
- id: 80868
  author: teetsm
  author_email: teetsm@oclc.org
  author_url: ''
  date: '2009-02-20 12:41:26 +0000'
  date_gmt: '2009-02-20 19:41:26 +0000'
  content: "Ed,\r\n\r\nI wanted to jump in and clarify something...  You are absolutely
    right in your description of robots.txt and potential implications.  What is not
    obvious from looking at our robots.txt is that we have alternative methods in
    place with the major engines.  When our relationships with the engines started
    many years ago, it was necessary to put special feeds to accommodate the size
    and structure of Worldcat.  We worked directly with them to provide the data in
    a way that worked best for their services.  There are aspects such as our robots.txt
    and no-follows that are remnants of their requests in previous years and prevented
    multiple feeds from conflicting within their environments.  With advances and
    changes within the engines and our services, much of what we did then can now
    be accomplished more standard methods.  You will see some changes such as what
    Th suggests above, as well as others over the next while as we transition away
    from the older models with the search engine partners.\r\n\r\nMike Teets, OCLC"
- id: 85444
  author: What to do with Linked Data? &raquo; Overdue Ideas
  author_email: ''
  author_url: http://www.meanboyfriend.com/overdue_ideas/2012/08/what-to-do-with-linked-data/
  date: '2012-08-01 10:55:50 +0000'
  date_gmt: '2012-08-01 17:55:50 +0000'
  content: "[...] her specific use case - 271,429,346 bibliographic records in WorldCat
    this is no small feat. Also Ed Summer&#8217;s post about crawling WorldCat points
    at some issues &#8211; although things have moved on since 2009, and now the sitemap
    files [...]"
---
<p>Today's Guardian article <a href="http://www.guardian.co.uk/technology/2009/jan/22/library-search-engines-books">Why you can't find a library book in your search engine</a> prompted me to look at <a href="http://www.worldcat.org/robots.txt">Worldcat's robots.txt file</a> for the first time. Part of the beauty of the web is that it's an open information space where anyone (people and robots) can start with a single URL and <a href="http://efoundations.typepad.com/efoundations/2008/01/following-your.html">follow their nose</a> to other URLs. This seemingly simple principle is what has allowed a advertising^w search company like Google (that we all use every day) to grow and prosper. </p>
<p>The <a href="http://www.robotstxt.org/">robots.txt</a> file is a simple mechanism that allows web publishers to tell web crawlers what they are allowed to look at on a website. Predictably, the files are always found at the root of a website in a file named <em>robots.txt</em>. You don't have to have one, but many publishers like to control what gets indexed on their website, sometimes to hide content, and other times to shield what may be costly server side operations. Anyway, here's what you see today for worldcat.org:</p>
<pre>
User-agent: *
Disallow: /search

Sitemap: http://worldcat.org/identities/sitemap_index.xml
</pre>
<p>So this instructs a web crawler to not follow any links that match /search in the path, such as:</p>
<blockquote><p>
<a href="http://www.worldcat.org/search?qt=worldcat_org_all&q=everything+is+miscellaneous">http://www.worldcat.org/search?qt=worldcat_org_all&q=everything+is+miscellaneous</a>
</p></blockquote>
<p>Now if you look on the homepage for Worldcat there are very few links into the dense bibliographic information space that is worldcat. But you'll notice a few in the lower left box "Create lists".  So a crawler could for example discover a link to:</p>
<blockquote><p>
<a href="http://www.worldcat.org/oclc/77271226">http://www.worldcat.org/oclc/77271226</a>
</p></blockquote>
<p>This URL is allowed by the robots.txt so the harvester could go on to that page.  Once at that item page there are lots of links to other bibliographic records: but notice the ones to other record displays all seem to match the /search pattern disallowed by the robots.txt, such as:</p>
<blockquote><p>
<a href="http://www.worldcat.org/search?q=au%3AC++S+Harris&qt=hot_author">http://www.worldcat.org/search?q=au%3AC++S+Harris&qt=hot_author</a>
</p></blockquote>
<p>or</p>
<blockquote><p>
<a href="http://www.worldcat.org/search?q=su%3ALondon+%28England%29+Fiction.&qt=hot_subject">http://www.worldcat.org/search?q=su%3ALondon+%28England%29+Fiction.&qt=hot_subject</a>
</p></blockquote>
<p>So a web crawler will not be able to wander into the rich syndetic structure of Worldcat and start indexing.</p>
<p>However, all is not lost. Notice above that OCLC does reference a <a href="http://worldcat.org/identities/sitemap_index.xml">Worldcat sitemap</a> in their robots.txt. <a href="http://www.sitemaps.org/">Sitemaps</a> are a lightweight mechanism that Yahoo, Google and Microsoft developed for instructing a web harvester on how to walk through a site. </p>
<p>So if we look at OCLC's sitemap <a href="http://worldcat.org/identities/sitemap_index.xml">sitemap</a> we'll see this:</p>
<pre lang="xml">
< ?xml version="1.0" encoding="UTF-8"?>
<sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
        http://www.sitemaps.org/schemas/sitemap/0.9/siteindex.xsd">
    <sitemap>
      <loc>http://worldcat.org/identities/lccn-no99-80690.sitemap.xml</loc>
      <lastmod>2008-05-19</lastmod>
    </sitemap>
    <sitemap>
      <loc>http://worldcat.org/identities/lccn-sh95-8559.sitemap.xml</loc>
      <lastmod>2008-05-19</lastmod>
    </sitemap>
  </sitemapindex>
</pre>
<p>This essentially defers to two other sitemaps. The first 30 lines of the <a href="http://worldcat.org/identities/lccn-no99-80690.sitemap.xml">first one (careful in clicking it's big!)</a> looks like:</p>
<pre lang="xml">
< ?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
        http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
  <url>
    <loc>http://worldcat.org/identities/lccn-no99-80690</loc>
    <lastmod>2008-05-19</lastmod>
    <changefreq>monthly</changefreq>
    <priority>1.0000</priority>
  </url>
  <url>
    <loc>http://worldcat.org/identities/lccn-n78-95332</loc>
    <lastmod>2008-05-19</lastmod>
    <changefreq>monthly</changefreq>
    <priority>1.0000</priority>
  </url>
  <url>
    <loc>http://worldcat.org/identities/lccn-n79-41716</loc>
    <lastmod>2008-05-19</lastmod>
    <changefreq>monthly</changefreq>
    <priority>1.0000</priority>
  </url>
  <url>
    <loc>http://worldcat.org/identities/lccn-n80-92173</loc>
    <lastmod>2008-05-19</lastmod>
    <changefreq>monthly</changefreq>
    <priority>1.0000</priority>
  </url>
  ...
</urlset>
</pre>
<p>Now we can see the beauty of sitemaps. They are basically just an XML representation for sets of web resources, much like syndicated feeds. There are actually 40,000 links listed in the first sitemap file, and 12,496 in the second. Now URLs like  </p>
<blockquote><p>
<a href="http://worldcat.org/identities/lccn-no99-80690">http://worldcat.org/identities/lccn-no99-80690</a>
</p></blockquote>
<p>are clearly allowed by the robots.txt file. So indexers can wander around and index the lovely identities portion of Worldcat.  It's interesting though, that the content served up by the identities portion of Worldcat is not HTML--it's XML that's transformed client side to HTML w/ XSLT.  So it's unclear how much a stock web crawler would be able to discover from the XML. If google/yahoo/microsoft's crawlers are able to apply the XSLT transform, they will get some HTML to chew on. But notice in the HTML view that all the links into Worldcat proper (that aren't other identities) are disallowed because they start with <em>/search</em>.</p>
<p>And a quick grep and perl pipeline confirm that all 52496 urls in the sitemap are to the identies portion of the site...</p>
<p>So this is a long way of asking: I wonder if web crawlers are crawling the books views on Worldcat at all?  I imagine someone else has written about this already, and there is a known answer, but I felt like writing about the web and library data anyhow.</p>
<p>Since OCLC has gone through the effort of providing a web presentation for millions of books, and even links out to the libraries that hold them, they seem uniquely positioned to provide a global gateway for web crawlers to the library catalogs around the world. The links from worldcat out to the rest of the world's catalogs would turn OCLC into a bibliographic <a href="http://www.worldcat.org/oclc/52315903">super node</a> in the graph of the web, much like Amazon and Google Books. But perhaps this is perceived as giving up the family jewels? Or maybe it would put to much stress on the system? Of course it would also be great to see machine readable data served up in a <a href="http://inkdroid.org/journal/2009/01/21/work-identifiers-and-the-web/">similar</a> linked way</p>
<p>So in conclusion, it to would be awesome to see either (or maybe both):</p>
<ul>
<li>the /search exclusion removed from the robots.txt file</li>
<li>sitemaps added for the web resources that look like http://www.worldcat.org/oclc/77271226</li>
</ul>
<p>Of course one of the big projects I work on at LC is <a href="http://loc.gov/chroniclingamerica">Chronicling America</a> which is currently excluded by LC's <a href="http://loc.gov/robots.txt">robots.txt</a>...so I know that there can be real reasons for restricting crawling access (in our case performance problems we are trying to fix).  </p>
<p><em><br />
Oh gosh, I just noticed when re-reading the Guardian article that my lcsh.info experiment was mentioned. Hopefully there will be good news to report from LC on this front shortly.<br />
</em></p>
