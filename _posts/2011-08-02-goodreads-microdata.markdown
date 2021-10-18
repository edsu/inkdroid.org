---
layout: post
status: publish
published: true
title: GoodReads microdata
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 3561
wordpress_url: http://inkdroid.org/journal/?p=3561
date: '2011-08-02 12:30:04 +0000'
date_gmt: '2011-08-02 19:30:04 +0000'
tags:
- metadata
- rdfa
- google
- yahoo
- microdata
- facebook
- html5
- unapi
comments:
- id: 85071
  author: bibwild.wordpress.com/
  author_email: rochkind@jhu.edu
  author_url: http://bibwild.wordpress.com/
  date: '2011-08-02 19:34:45 +0000'
  date_gmt: '2011-08-03 02:34:45 +0000'
  content: "\" try writing a program to parse RDFa and Microdata. It will probably
    help clarify some things…\"\r\n\r\nWilling to enlighten us who don't have time
    to do the exersize?  I'm guessing you're suggesting parsing microdata is a lot
    easier than parsing RDFa?"
- id: 85073
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2011-08-03 17:47:21 +0000'
  date_gmt: '2011-08-04 00:47:21 +0000'
  content: "@bibwild sorry, it really is an exercise for the reader :-)"
- id: 85089
  author: The Artolater &raquo; Friday Links
  author_email: ''
  author_url: http://www.theartolater.com/?p=1065
  date: '2011-09-02 04:47:17 +0000'
  date_gmt: '2011-09-02 11:47:17 +0000'
  content: "[...] * Interesting GoodReads microdata. [...]"
---

<p>I'm not sure how long it has been there, but I just happened to notice that <a href="http://goodreads.com">GoodReads</a> (the popular social networking site for book lovers to share what they are reading and have read) has implemented <a href="http://dev.w3.org/html5/md/">HTML5 Microdata</a> to make metadata for books available in the HTML of their pages. GoodReads has chosen to use the the <a href="http://schema.org/Book">Book</a> type from <a href="http://schema.org/">schema.org</a> vocabulary, most likely because the big three search engines (Google, Bing and Yahoo) <a href="http://googlewebmastercentral.blogspot.com/2011/06/introducing-schemaorg-search-engines.html">announced</a> that they will use the metadata to enhance their search results. So web publishers are motivated to publish metadata in their pages, not because it's the "right" thing to do, but because they want to drive traffic to their websites.</p>
<p>If you are new to HTML5 Microdata, schema.org and what it means for books, check out Eric Hellman's recent post <a href="http://go-to-hellman.blogspot.com/2011/07/spoonfeeding-library-data-to-search.html">Spoonfeeding Library Data to Search Engines</a>. And if you are generally curious about HTML5 Microdata, the <a href="http://diveintohtml5.org/extensibility.html">chapter</a> in Mark Pilgrim's <a href="http://diveintohtml5.org/">Dive into HTML5</a> is really quite good.</p>
<p>But Microdata and schema.org are not just good for the search engines, they are actually good for the Web ecosystem, and for hackers like you and me. For example, go to the page for <a itemprop="image" href="http://www.goodreads.com/book/show/24220.Alice_s_Adventures_in_Wonderland_and_Through_the_Looking_Glass">Alice in Wonderland</a>:</p>
<p><a href="http://www.goodreads.com/book/show/24220.Alice_s_Adventures_in_Wonderland_and_Through_the_Looking_Glass"><img src="http://inkdroid.org/images/goodreads-alice.png"/></a></p>
<p>If you view source on the page, and search for <em>itemtype</em> or <em>itemprop</em> you'll see the extra Microdata markup. The latest <a href="http://dev.w3.org/html5/md/">HTML5 specification</a> has a <a href="http://dev.w3.org/html5/md/#json">section</a> on how to serialize microdata as JSON, and the processing model is straightforward enough for me to write a <a href="https://github.com/edsu/microdata/blob/master/microdata.py">parser</a> on top of html5lib in less than 200 lines of Python. So this means you can:</p>
<pre lang="python">
import urllib
import microdata

url = "http://www.goodreads.com/book/show/24220.Alice_s_Adventures_in_Wonderland_and_Through_the_Looking_Glass"
items = microdata.get_items(urllib.urlopen(url))

print items[0].json()
</pre>
<p>and you'll see:</p>
<pre lang="javascript">
{
  "numberOfPages": [
    "400"
  ],
  "isbn": [
    "9780141439761"
  ],
  "name": [
    "Alice's Adventures in Wonderland and Through the Looking-Glass"
  ],
  "author": [
    {
      "url": [
        "http://www.goodreads.com/author/show/8164.Lewis_Carroll",
        "http://www.goodreads.com/author/show/495248.Hugh_Haughton",
        "http://www.goodreads.com/author/show/180439.John_Tenniel"
      ],
      "type": "http://schema.org/Person"
    }
  ],
  "image": [
    "/book/photo/24220.Alice_s_Adventures_in_Wonderland_and_Through_the_Looking_Glass"
  ],
  "inLanguage": [
    "English"
  ],
  "ratingValue": [
    "4.03"
  ],
  "ratingCount": [
    "64,628 ratings"
  ],
  "bookFormatType": [
    "Paperback"
  ],
  "type": "http://schema.org/Book"
}
</pre>
<p>If you have spent a bit of time writing screenscrapers in the past, this should make your jaw drop a bit. What's more they've also added Microdata to the <a href="http://www.goodreads.com/search?query=world+wide+web">search results page</a>, so you can see metadata for all the books in the results, for example using <a href="http://www.google.com/webmasters/tools/richsnippets?url=http%3A%2F%2Fwww.goodreads.com%2Fsearch%3Fquery%3Dhtml5&view=">Google's Rich Snippets Testing Tool</a>.</p>
<p>Funnily enough, while I was writing this blog post, over in the <a href="irc://irc.freenode.net/code4lib">#code4lib</a> IRC chat room <a href="https://twitter.com/_cb_">Chris Beer</a> brought up the fact that some <a href="http://projectblacklight.org/">Blacklight</a> developers were concerned that &lt;link rel="unapi-server"&gt; wasn't valid HTML5. Chris was wondering if anyone was interested in trying to register "unapi-server" with the WHATWG... </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&amp;crickets;</p>
<p>Issues of "valid" HTML5 aside, this discussion highlighted for me just how far the world of metadata on the Web has advanced since a small group of library hackers worked on <a href="http://unapi.info">unAPI</a>. The use of HTML5 Microdata and schema.org by Google, Bing and Yahoo, and the use of <a href="https://developers.facebook.com/docs/opengraph/">RDFa</a> by Facebook are great examples of some mainstream solutions to what some of us were trying to achieve with unAPI. Seeing sites like GoodReads implement Microdata, and announcements like <a href="http://my.opera.com/desktopteam/blog/2011/07/27/latency-microdata-qresync">Opera support for Microdata</a> are good reminders that the library software development community is best served by paying attention to mainstream solutions, as they become available, even if they eclipse homegrown stopgap solutions.</p>
<p>It is somewhat problematic that Facebook has aligned with RDFa and the Open Graph Protocol, and Google, Bing and Yahoo have aligned with HTML5 and schema.org. GoodReads has implemented both incidentally. I heard a rumor that Facebook was invited to the schema.org table and declined. I have no idea if that is actually true. I also have heard a rumor that Ian Hickson of Google wrote up the Microdata spec in a weekend because he hates RDFa. I don't know it that's actually true either. The company and personality rivalries aside, if you are having trouble deciding which one to more fully support, try writing a program to parse RDFa and Microdata. It will probably help clarify some things...</p>
