---
layout: post
status: publish
published: true
title: lots of copies keeps epubs safe
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2414
wordpress_url: http://inkdroid.org/journal/?p=2414
date: '2010-08-30 14:38:27 +0000'
date_gmt: '2010-08-30 21:38:27 +0000'
tags:
- google
- books
- epub
- internet archive
- google books
comments: []
---
<p>Over the weekend you probably saw the <a href="http://booksearch.blogspot.com/2009/08/download-over-million-public-domain.html">announcements</a> <a href="http://www.readwriteweb.com/archives/google_opens_up_its_epub_archive_download_1_million_books_for_free.php">going</a> <a href="http://www.engadget.com/2009/08/26/google-makes-over-a-million-public-domain-books-available-in-epu/">around</a> about Google Books releasing +1 million public domain ebooks on the web as <a href="http://en.wikipedia.org/wiki/EPUB">epubs</a>. This is great news: epub is a web friendly, open format -- and having all this content available as epub is important.</p>
<p>Now I might be greedy, but when I saw that 1 million epubs are available my mind immediately jumps to thinking of getting them, indexing them and whatnot. Then I guiltily justified my greedy thoughts by pondering the conventional digital preservation wisdom that <a href="http://en.wikipedia.org/wiki/LOCKSS">Lots of Copies Keeps Stuff Safe</a> (LOCKSS). The books are in the public domain, so .... why not?</p>
<p>Google Books has a really nice <a href="http://web.archive.org/web/20120415030517/http://code.google.com:80/apis/books/docs/gdata/developers_guide_protocol.html">API</a>, which lets you get back search results as Atom, with lots of links to things like thumbnails, annotations, item views, etc. You also get a nice amount of <a href="http://dublincore.org/">Dublin Core</a> metadata. And you can limit your search to books published before 1923. For example here's a search for pre-1923 books that mention "Stevenson" (disclaimer: I don't think the 1923 limit is actually working):</p>
<pre>
curl 'http://books.google.com/books/feeds/volumes?tbs=cd_max:Jan%2001_2%201923&q=Stevenson' | xmllint --format -
</pre>
<p>which yields:</p>
<pre lang="xml">
< ?xml version="1.0" encoding="UTF-8"?>
<feed xmlns="http://www.w3.org/2005/Atom" xmlns:openSearch="http://a9.com/-/spec/opensearchrss/1.0/" xmlns:gbs="http://schemas.google.com/books/2008" xmlns:dc="http://purl.org/dc/terms" xmlns:batch="http://schemas.google.com/gdata/batch" xmlns:gd="http://schemas.google.com/g/2005">
  <id>http://www.google.com/books/feeds/volumes</id>
  <updated>2010-08-30T20:37:27.000Z</updated>
  <category scheme="http://schemas.google.com/g/2005#kind" term="http://schemas.google.com/books/2008#volume"/>
  <title type="text">Search results for Stevenson</title>
  <link rel="alternate" type="text/html" href="http://www.google.com"/>
  <link rel="http://schemas.google.com/g/2005#feed" type="application/atom+xml" href="http://www.google.com/books/feeds/volumes"/>
  <link rel="self" type="application/atom+xml" href="http://www.google.com/books/feeds/volumes?q=Stevenson"/>
  <link rel="next" type="application/atom+xml" href="http://www.google.com/books/feeds/volumes?q=Stevenson&amp;start-index=11&amp;max-results=10"/>
  <author>
    <name>Google Books Search</name>
    <uri>http://www.google.com</uri>
  </author>
  <generator version="beta">Google Book Search data API</generator>
  <opensearch:totalresults>206</opensearch:totalresults>
  <opensearch:startindex>1</opensearch:startindex>
  <opensearch:itemsperpage>10</opensearch:itemsperpage>
  <entry>
    <id>http://www.google.com/books/feeds/volumes/ENMWAAAAYAAJ</id>
    <updated>2010-08-30T20:37:27.000Z</updated>
    <category scheme="http://schemas.google.com/g/2005#kind" term="http://schemas.google.com/books/2008#volume"/>
    <title type="text">Kidnapped</title>
    <link rel="http://schemas.google.com/books/2008/thumbnail" type="image/x-unknown" href="http://bks4.books.google.com/books?id=ENMWAAAAYAAJ&amp;printsec=frontcover&amp;img=1&amp;zoom=5&amp;edge=curl&amp;sig=ACfU3U0dHqcPyQYmX-QBDY7DqGofAlUvvw&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/info" type="text/html" href="http://books.google.com/books?id=ENMWAAAAYAAJ&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/preview" type="text/html" href="http://books.google.com/books?id=ENMWAAAAYAAJ&amp;printsec=frontcover&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;cd=1&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/annotation" type="application/atom+xml" href="http://www.google.com/books/feeds/users/me/volumes"/>
    <link rel="http://schemas.google.com/books/2008/acsepubfulfillmenttoken" type="application/vnd.adobe.adept+xml" href="http://books.google.com/books/download/Kidnapped.acsm?id=ENMWAAAAYAAJ&amp;format=epub&amp;output=acs4_fulfillment_token"/>
    <link rel="alternate" type="text/html" href="http://books.google.com/books?id=ENMWAAAAYAAJ&amp;dq=Stevenson&amp;ie=ISO-8859-1"/>
    <link rel="self" type="application/atom+xml" href="http://www.google.com/books/feeds/volumes/ENMWAAAAYAAJ"/>
    <gbs:embeddability value="http://schemas.google.com/books/2008#embeddable"/>
    <gbs:openaccess value="http://schemas.google.com/books/2008#enabled"/>
    <gbs:viewability value="http://schemas.google.com/books/2008#view_all_pages"/>
    <dc:creator>Robert Louis Stevenson</dc:creator>
    <dc:date>1909</dc:date>
    <dc:format>308 pages</dc:format>
    <dc:format>book</dc:format>
    <dc:identifier>ENMWAAAAYAAJ</dc:identifier>
    <dc:identifier>HARVARD:HN1JZ9</dc:identifier>
    <dc:title>Kidnapped</dc:title>
    <dc:title>being memoirs of the adventures of David Balfour in the year 1851 ...</dc:title>
  </entry>
  <entry>
    <id>http://www.google.com/books/feeds/volumes/WZ0vAAAAMAAJ</id>
    <updated>2010-08-30T20:37:27.000Z</updated>
    <category scheme="http://schemas.google.com/g/2005#kind" term="http://schemas.google.com/books/2008#volume"/>
    <title type="text">Treasure Island</title>
    <link rel="http://schemas.google.com/books/2008/thumbnail" type="image/x-unknown" href="http://bks8.books.google.com/books?id=WZ0vAAAAMAAJ&amp;printsec=frontcover&amp;img=1&amp;zoom=5&amp;edge=curl&amp;sig=ACfU3U3AusJAerfzUTAoo8iLZkeOL755rg&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/info" type="text/html" href="http://books.google.com/books?id=WZ0vAAAAMAAJ&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/preview" type="text/html" href="http://books.google.com/books?id=WZ0vAAAAMAAJ&amp;printsec=frontcover&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;cd=2&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/annotation" type="application/atom+xml" href="http://www.google.com/books/feeds/users/me/volumes"/>
    <link rel="http://schemas.google.com/books/2008/acsepubfulfillmenttoken" type="application/vnd.adobe.adept+xml" href="http://books.google.com/books/download/Treasure_Island.acsm?id=WZ0vAAAAMAAJ&amp;format=epub&amp;output=acs4_fulfillment_token"/>
    <link rel="alternate" type="text/html" href="http://books.google.com/books?id=WZ0vAAAAMAAJ&amp;dq=Stevenson&amp;ie=ISO-8859-1"/>
    <link rel="self" type="application/atom+xml" href="http://www.google.com/books/feeds/volumes/WZ0vAAAAMAAJ"/>
    <gbs:embeddability value="http://schemas.google.com/books/2008#embeddable"/>
    <gbs:openaccess value="http://schemas.google.com/books/2008#enabled"/>
    <gbs:viewability value="http://schemas.google.com/books/2008#view_all_pages"/>
    <dc:creator>Robert Louis Stevenson</dc:creator>
    <dc:creator>George Edmund Varian</dc:creator>
    <dc:date>1918</dc:date>
    <dc:description>CHAPTER I THE OLD SEA DOG AT THE &amp;quot;ADMIRAL BENBOW&amp;quot; SQUIRE Trelawney, Dr. Livesey, 
and the rest of these gentlemen having asked me to write down the whole ...</dc:description>
    <dc:format>306 pages</dc:format>
    <dc:format>book</dc:format>
    <dc:identifier>WZ0vAAAAMAAJ</dc:identifier>
    <dc:identifier>NYPL:33433075793830</dc:identifier>
    <dc:subject>Fiction</dc:subject>
    <dc:title>Treasure Island</dc:title>
  </entry>
  <entry>
    <id>http://www.google.com/books/feeds/volumes/REUrAQAAIAAJ</id>
    <updated>2010-08-30T20:37:27.000Z</updated>
    <category scheme="http://schemas.google.com/g/2005#kind" term="http://schemas.google.com/books/2008#volume"/>
    <title type="text">Stevenson</title>
    <link rel="http://schemas.google.com/books/2008/thumbnail" type="image/x-unknown" href="http://bks6.books.google.com/books?id=REUrAQAAIAAJ&amp;printsec=frontcover&amp;img=1&amp;zoom=5&amp;sig=ACfU3U2pRkGJW1MpjNMZgSc6jDIp3HuT0Q&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/info" type="text/html" href="http://books.google.com/books?id=REUrAQAAIAAJ&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/preview" type="text/html" href="http://books.google.com/books?id=REUrAQAAIAAJ&amp;q=Stevenson&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;cd=3&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/annotation" type="application/atom+xml" href="http://www.google.com/books/feeds/users/me/volumes"/>
    <link rel="http://schemas.google.com/books/2008/acsepubfulfillmenttoken" type="application/vnd.adobe.adept+xml" href="http://books.google.com/books/download/Stevenson.acsm?id=REUrAQAAIAAJ&amp;format=epub&amp;output=acs4_fulfillment_token"/>
    <link rel="alternate" type="text/html" href="http://books.google.com/books?id=REUrAQAAIAAJ&amp;dq=Stevenson&amp;ie=ISO-8859-1"/>
    <link rel="self" type="application/atom+xml" href="http://www.google.com/books/feeds/volumes/REUrAQAAIAAJ"/>
    <gbs:embeddability value="http://schemas.google.com/books/2008#not_embeddable"/>
    <gbs:openaccess value="http://schemas.google.com/books/2008#disabled"/>
    <gbs:viewability value="http://schemas.google.com/books/2008#view_no_pages"/>
    <dc:creator>Adlai Ewing Stevenson</dc:creator>
    <dc:creator>Grace Darling</dc:creator>
    <dc:creator>David Darling</dc:creator>
    <dc:date>1977-10</dc:date>
    <dc:format>127 pages</dc:format>
    <dc:format>book</dc:format>
    <dc:identifier>REUrAQAAIAAJ</dc:identifier>
    <dc:identifier>STANFORD:36105037014342</dc:identifier>
    <dc:publisher>McGraw-Hill/Contemporary</dc:publisher>
    <dc:subject>Biography &amp; Autobiography</dc:subject>
    <dc:title>Stevenson</dc:title>
  </entry>
  <entry>
    <id>http://www.google.com/books/feeds/volumes/3ibdGgAACAAJ</id>
    <updated>2010-08-30T20:37:27.000Z</updated>
    <category scheme="http://schemas.google.com/g/2005#kind" term="http://schemas.google.com/books/2008#volume"/>
    <title type="text">Stevenson</title>
    <link rel="http://schemas.google.com/books/2008/thumbnail" type="image/x-unknown" href="http://bks1.books.google.com/books?id=3ibdGgAACAAJ&amp;printsec=frontcover&amp;img=1&amp;zoom=5&amp;sig=ACfU3U2ryyj2yW3FOO9-8WPQtihovQqQOA&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/info" type="text/html" href="http://books.google.com/books?id=3ibdGgAACAAJ&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/preview" type="text/html" href="http://books.google.com/books?id=3ibdGgAACAAJ&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;cd=4&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/annotation" type="application/atom+xml" href="http://www.google.com/books/feeds/users/me/volumes"/>
    <link rel="http://schemas.google.com/books/2008/acsepubfulfillmenttoken" type="application/vnd.adobe.adept+xml" href="http://books.google.com/books/download/Stevenson.acsm?id=3ibdGgAACAAJ&amp;format=epub&amp;output=acs4_fulfillment_token"/>
    <link rel="alternate" type="text/html" href="http://books.google.com/books?id=3ibdGgAACAAJ&amp;dq=Stevenson&amp;ie=ISO-8859-1"/>
    <link rel="self" type="application/atom+xml" href="http://www.google.com/books/feeds/volumes/3ibdGgAACAAJ"/>
    <gbs:embeddability value="http://schemas.google.com/books/2008#not_embeddable"/>
    <gbs:openaccess value="http://schemas.google.com/books/2008#disabled"/>
    <gbs:viewability value="http://schemas.google.com/books/2008#view_no_pages"/>
    <dc:creator>Robert Louis Stevenson</dc:creator>
    <dc:date>2007-01-17</dc:date>
    <dc:description>This scarce antiquarian book is included in our special Legacy Reprint Series.</dc:description>
    <dc:format>128 pages</dc:format>
    <dc:format>book</dc:format>
    <dc:identifier>3ibdGgAACAAJ</dc:identifier>
    <dc:identifier>ISBN:1430495375</dc:identifier>
    <dc:identifier>ISBN:9781430495376</dc:identifier>
    <dc:publisher>Kessinger Pub Co</dc:publisher>
    <dc:subject>Poetry</dc:subject>
    <dc:title>Stevenson</dc:title>
    <dc:title>Day by Day</dc:title>
  </entry>
  <entry>
    <id>http://www.google.com/books/feeds/volumes/3QI-AAAAYAAJ</id>
    <updated>2010-08-30T20:37:27.000Z</updated>
    <category scheme="http://schemas.google.com/g/2005#kind" term="http://schemas.google.com/books/2008#volume"/>
    <title type="text">A child's garden of verses</title>
    <link rel="http://schemas.google.com/books/2008/thumbnail" type="image/x-unknown" href="http://bks0.books.google.com/books?id=3QI-AAAAYAAJ&amp;printsec=frontcover&amp;img=1&amp;zoom=5&amp;edge=curl&amp;sig=ACfU3U1KKV9Y2E1jnnc83b4NA_GNAouwbA&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/info" type="text/html" href="http://books.google.com/books?id=3QI-AAAAYAAJ&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/preview" type="text/html" href="http://books.google.com/books?id=3QI-AAAAYAAJ&amp;printsec=frontcover&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;cd=5&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/annotation" type="application/atom+xml" href="http://www.google.com/books/feeds/users/me/volumes"/>
    <link rel="http://schemas.google.com/books/2008/acsepubfulfillmenttoken" type="application/vnd.adobe.adept+xml" href="http://books.google.com/books/download/A_child_s_garden_of_verses.acsm?id=3QI-AAAAYAAJ&amp;format=epub&amp;output=acs4_fulfillment_token"/>
    <link rel="alternate" type="text/html" href="http://books.google.com/books?id=3QI-AAAAYAAJ&amp;dq=Stevenson&amp;ie=ISO-8859-1"/>
    <link rel="self" type="application/atom+xml" href="http://www.google.com/books/feeds/volumes/3QI-AAAAYAAJ"/>
    <gbs:embeddability value="http://schemas.google.com/books/2008#embeddable"/>
    <gbs:openaccess value="http://schemas.google.com/books/2008#enabled"/>
    <gbs:viewability value="http://schemas.google.com/books/2008#view_all_pages"/>
    <dc:creator>Robert Louis Stevenson</dc:creator>
    <dc:date>1914</dc:date>
    <dc:description>IN winter I get up at night And dress by yellow candle-light. In summer, quite 
the other way, I have to go to bed by day. I have to go to bed and see The ...</dc:description>
    <dc:format>136 pages</dc:format>
    <dc:format>book</dc:format>
    <dc:identifier>3QI-AAAAYAAJ</dc:identifier>
    <dc:identifier>CORNELL:31924052752262</dc:identifier>
    <dc:subject>Children's poetry, Scottish</dc:subject>
    <dc:title>A child's garden of verses</dc:title>
    <dc:title>by Robert Louis Stevenson; illustrated by Charles Robinson</dc:title>
  </entry>
  <entry>
    <id>http://www.google.com/books/feeds/volumes/Gmk-AAAAYAAJ</id>
    <updated>2010-08-30T20:37:27.000Z</updated>
    <category scheme="http://schemas.google.com/g/2005#kind" term="http://schemas.google.com/books/2008#volume"/>
    <title type="text">Travels with a donkey in the Cevennes</title>
    <link rel="http://schemas.google.com/books/2008/thumbnail" type="image/x-unknown" href="http://bks5.books.google.com/books?id=Gmk-AAAAYAAJ&amp;printsec=frontcover&amp;img=1&amp;zoom=5&amp;edge=curl&amp;sig=ACfU3U1CM_jn5vHlfF0va-U32zu2Rr2QIg&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/info" type="text/html" href="http://books.google.com/books?id=Gmk-AAAAYAAJ&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/preview" type="text/html" href="http://books.google.com/books?id=Gmk-AAAAYAAJ&amp;printsec=frontcover&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;cd=6&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/annotation" type="application/atom+xml" href="http://www.google.com/books/feeds/users/me/volumes"/>
    <link rel="http://schemas.google.com/books/2008/acsepubfulfillmenttoken" type="application/vnd.adobe.adept+xml" href="http://books.google.com/books/download/Travels_with_a_donkey_in_the_Cevennes.acsm?id=Gmk-AAAAYAAJ&amp;format=epub&amp;output=acs4_fulfillment_token"/>
    <link rel="alternate" type="text/html" href="http://books.google.com/books?id=Gmk-AAAAYAAJ&amp;dq=Stevenson&amp;ie=ISO-8859-1"/>
    <link rel="self" type="application/atom+xml" href="http://www.google.com/books/feeds/volumes/Gmk-AAAAYAAJ"/>
    <gbs:embeddability value="http://schemas.google.com/books/2008#embeddable"/>
    <gbs:openaccess value="http://schemas.google.com/books/2008#enabled"/>
    <gbs:viewability value="http://schemas.google.com/books/2008#view_all_pages"/>
    <dc:creator>Robert Louis Stevenson</dc:creator>
    <dc:date>1916</dc:date>
    <dc:description>THE DONKEY, THE PACK, AND THE PACK - SADDLE IN a little place called Le 
Monastier, in a pleasant highland valley fifteen miles from Le Puy, I spent 
about a ...</dc:description>
    <dc:format>287 pages</dc:format>
    <dc:format>book</dc:format>
    <dc:identifier>Gmk-AAAAYAAJ</dc:identifier>
    <dc:identifier>HARVARD:HWP541</dc:identifier>
    <dc:subject>Cévennes Mountains (France)</dc:subject>
    <dc:title>Travels with a donkey in the Cevennes</dc:title>
    <dc:title>An inland voyage</dc:title>
  </entry>
  <entry>
    <id>http://www.google.com/books/feeds/volumes/f3A-AAAAYAAJ</id>
    <updated>2010-08-30T20:37:27.000Z</updated>
    <category scheme="http://schemas.google.com/g/2005#kind" term="http://schemas.google.com/books/2008#volume"/>
    <title type="text">St. Ives</title>
    <link rel="http://schemas.google.com/books/2008/thumbnail" type="image/x-unknown" href="http://bks6.books.google.com/books?id=f3A-AAAAYAAJ&amp;printsec=frontcover&amp;img=1&amp;zoom=5&amp;edge=curl&amp;sig=ACfU3U0HtuxZqcqgneZTtM0LH5rk4F2E4w&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/info" type="text/html" href="http://books.google.com/books?id=f3A-AAAAYAAJ&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/preview" type="text/html" href="http://books.google.com/books?id=f3A-AAAAYAAJ&amp;printsec=frontcover&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;cd=7&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/annotation" type="application/atom+xml" href="http://www.google.com/books/feeds/users/me/volumes"/>
    <link rel="http://schemas.google.com/books/2008/acsepubfulfillmenttoken" type="application/vnd.adobe.adept+xml" href="http://books.google.com/books/download/St__Ives.acsm?id=f3A-AAAAYAAJ&amp;format=epub&amp;output=acs4_fulfillment_token"/>
    <link rel="alternate" type="text/html" href="http://books.google.com/books?id=f3A-AAAAYAAJ&amp;dq=Stevenson&amp;ie=ISO-8859-1"/>
    <link rel="self" type="application/atom+xml" href="http://www.google.com/books/feeds/volumes/f3A-AAAAYAAJ"/>
    <gbs:embeddability value="http://schemas.google.com/books/2008#embeddable"/>
    <gbs:openaccess value="http://schemas.google.com/books/2008#enabled"/>
    <gbs:viewability value="http://schemas.google.com/books/2008#view_all_pages"/>
    <dc:creator>Robert Louis Stevenson</dc:creator>
    <dc:date>1906</dc:date>
    <dc:description>IVES CHAPTER IA TALE OF A LION RAMPANT IT was in the month of May,, that I was 
so unlucky as to fall at last into the hands of the enemy. ...</dc:description>
    <dc:format>528 pages</dc:format>
    <dc:format>book</dc:format>
    <dc:identifier>f3A-AAAAYAAJ</dc:identifier>
    <dc:identifier>HARVARD:HWP61W</dc:identifier>
    <dc:title>St. Ives</dc:title>
    <dc:title>being the adventures of a French prisoner in England</dc:title>
  </entry>
  <entry>
    <id>http://www.google.com/books/feeds/volumes/4mb8LuKKwocC</id>
    <updated>2010-08-30T20:37:27.000Z</updated>
    <category scheme="http://schemas.google.com/g/2005#kind" term="http://schemas.google.com/books/2008#volume"/>
    <title type="text">Cruising with Robert Louis Stevenson</title>
    <link rel="http://schemas.google.com/books/2008/thumbnail" type="image/x-unknown" href="http://bks6.books.google.com/books?id=4mb8LuKKwocC&amp;printsec=frontcover&amp;img=1&amp;zoom=5&amp;edge=curl&amp;sig=ACfU3U3VC0jTy4rEC4rjtFjLofSY7bAf2Q&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/info" type="text/html" href="http://books.google.com/books?id=4mb8LuKKwocC&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/preview" type="text/html" href="http://books.google.com/books?id=4mb8LuKKwocC&amp;printsec=frontcover&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;cd=8&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/annotation" type="application/atom+xml" href="http://www.google.com/books/feeds/users/me/volumes"/>
    <link rel="http://schemas.google.com/books/2008/acsepubfulfillmenttoken" type="application/vnd.adobe.adept+xml" href="http://books.google.com/books/download/Cruising_with_Robert_Louis_Stevenson.acsm?id=4mb8LuKKwocC&amp;format=epub&amp;output=acs4_fulfillment_token"/>
    <link rel="alternate" type="text/html" href="http://books.google.com/books?id=4mb8LuKKwocC&amp;dq=Stevenson&amp;ie=ISO-8859-1"/>
    <link rel="self" type="application/atom+xml" href="http://www.google.com/books/feeds/volumes/4mb8LuKKwocC"/>
    <gbs:embeddability value="http://schemas.google.com/books/2008#embeddable"/>
    <gbs:openaccess value="http://schemas.google.com/books/2008#disabled"/>
    <gbs:viewability value="http://schemas.google.com/books/2008#view_partial"/>
    <dc:creator>Oliver S. Buckton</dc:creator>
    <dc:date>2007</dc:date>
    <dc:description>Cruising with Robert Louis Stevenson: Travel, Narrative, and the Colonial Body is the first book-length study about the influence of travel on Robert Louis ...</dc:description>
    <dc:format>344 pages</dc:format>
    <dc:format>book</dc:format>
    <dc:identifier>4mb8LuKKwocC</dc:identifier>
    <dc:identifier>ISBN:0821417568</dc:identifier>
    <dc:identifier>ISBN:9780821417560</dc:identifier>
    <dc:publisher>Ohio Univ Pr</dc:publisher>
    <dc:subject>Literary Criticism</dc:subject>
    <dc:title>Cruising with Robert Louis Stevenson</dc:title>
    <dc:title>travel, narrative, and the colonial body</dc:title>
  </entry>
  <entry>
    <id>http://www.google.com/books/feeds/volumes/4yo9AAAAYAAJ</id>
    <updated>2010-08-30T20:37:27.000Z</updated>
    <category scheme="http://schemas.google.com/g/2005#kind" term="http://schemas.google.com/books/2008#volume"/>
    <title type="text">New Arabian nights</title>
    <link rel="http://schemas.google.com/books/2008/thumbnail" type="image/x-unknown" href="http://bks0.books.google.com/books?id=4yo9AAAAYAAJ&amp;printsec=frontcover&amp;img=1&amp;zoom=5&amp;edge=curl&amp;sig=ACfU3U1_NeiJKS1J279NoYk98NzRZURI3Q&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/info" type="text/html" href="http://books.google.com/books?id=4yo9AAAAYAAJ&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/preview" type="text/html" href="http://books.google.com/books?id=4yo9AAAAYAAJ&amp;printsec=frontcover&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;cd=9&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/annotation" type="application/atom+xml" href="http://www.google.com/books/feeds/users/me/volumes"/>
    <link rel="http://schemas.google.com/books/2008/acsepubfulfillmenttoken" type="application/vnd.adobe.adept+xml" href="http://books.google.com/books/download/New_Arabian_nights.acsm?id=4yo9AAAAYAAJ&amp;format=epub&amp;output=acs4_fulfillment_token"/>
    <link rel="alternate" type="text/html" href="http://books.google.com/books?id=4yo9AAAAYAAJ&amp;dq=Stevenson&amp;ie=ISO-8859-1"/>
    <link rel="self" type="application/atom+xml" href="http://www.google.com/books/feeds/volumes/4yo9AAAAYAAJ"/>
    <gbs:embeddability value="http://schemas.google.com/books/2008#embeddable"/>
    <gbs:openaccess value="http://schemas.google.com/books/2008#enabled"/>
    <gbs:viewability value="http://schemas.google.com/books/2008#view_all_pages"/>
    <dc:creator>Robert Louis Stevenson</dc:creator>
    <dc:date>1922</dc:date>
    <dc:description>THE SUICIDE CLUB STORY OF THE YOUNG MAN WITH THE CREAM TARTS DURING his 
residence in London, the accomplished Prince Florizel of Bohemia gained the ...</dc:description>
    <dc:format>386 pages</dc:format>
    <dc:format>book</dc:format>
    <dc:identifier>4yo9AAAAYAAJ</dc:identifier>
    <dc:identifier>HARVARD:HWP51H</dc:identifier>
    <dc:subject>Fiction</dc:subject>
    <dc:title>New Arabian nights</dc:title>
  </entry>
  <entry>
    <id>http://www.google.com/books/feeds/volumes/z2Yf1FX02EkC</id>
    <updated>2010-08-30T20:37:27.000Z</updated>
    <category scheme="http://schemas.google.com/g/2005#kind" term="http://schemas.google.com/books/2008#volume"/>
    <title type="text">Robert Louis Stevenson</title>
    <link rel="http://schemas.google.com/books/2008/thumbnail" type="image/x-unknown" href="http://bks2.books.google.com/books?id=z2Yf1FX02EkC&amp;printsec=frontcover&amp;img=1&amp;zoom=5&amp;edge=curl&amp;sig=ACfU3U0gOHJkzL_2WLHxXwdINCOTt03bMw&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/info" type="text/html" href="http://books.google.com/books?id=z2Yf1FX02EkC&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/preview" type="text/html" href="http://books.google.com/books?id=z2Yf1FX02EkC&amp;printsec=frontcover&amp;dq=Stevenson&amp;ie=ISO-8859-1&amp;cd=10&amp;source=gbs_gdata"/>
    <link rel="http://schemas.google.com/books/2008/annotation" type="application/atom+xml" href="http://www.google.com/books/feeds/users/me/volumes"/>
    <link rel="http://schemas.google.com/books/2008/acsepubfulfillmenttoken" type="application/vnd.adobe.adept+xml" href="http://books.google.com/books/download/Robert_Louis_Stevenson.acsm?id=z2Yf1FX02EkC&amp;format=epub&amp;output=acs4_fulfillment_token"/>
    <link rel="alternate" type="text/html" href="http://books.google.com/books?id=z2Yf1FX02EkC&amp;dq=Stevenson&amp;ie=ISO-8859-1"/>
    <link rel="self" type="application/atom+xml" href="http://www.google.com/books/feeds/volumes/z2Yf1FX02EkC"/>
    <gbs:embeddability value="http://schemas.google.com/books/2008#embeddable"/>
    <gbs:openaccess value="http://schemas.google.com/books/2008#disabled"/>
    <gbs:viewability value="http://schemas.google.com/books/2008#view_partial"/>
    <dc:creator>Richard Ambrosini</dc:creator>
    <dc:creator>Richard Dury</dc:creator>
    <dc:date>2006</dc:date>
    <dc:description>As the editors point out in their Introduction, Stevenson reinvented the “personal essay” and the “walking tour essay,” in texts of ironic stylistic ...</dc:description>
    <dc:format>377 pages</dc:format>
    <dc:format>book</dc:format>
    <dc:identifier>z2Yf1FX02EkC</dc:identifier>
    <dc:identifier>ISBN:0299212246</dc:identifier>
    <dc:identifier>ISBN:9780299212247</dc:identifier>
    <dc:publisher>Univ of Wisconsin Pr</dc:publisher>
    <dc:subject>Literary Criticism</dc:subject>
    <dc:title>Robert Louis Stevenson</dc:title>
    <dc:title>writer of boundaries</dc:title>
  </entry>
</feed>
</pre>
<p>Now it would be nice if the Atom included &lt;link&gt; elements for the epubs themselves. Perhaps the feed could even use the <a href="http://opds-spec.org/blog/2010/08/29/opds-catalogs-v1/">recently released</a> "acquisition" link relation defined by OPDS v1.0. For example, by including something like the following in each <code>atom:entry</code> element:</p>
<pre lang="xml">
<link type="application/epub+zip" rel="http://opds-spec.org/acquisition/open-access" href="http://books.google.com/books/download/Kidnapped.epub?id=ENMWAAAAYAAJ&output=epub" />
</pre>
<p>Theoretically it should be possible to construct the appropriate link for the epub, based on what data is available in the Atom. But it would enable quite a bit of use of the epubs to make their URLs available explicitly in a programmatic way. Unfortunately we would still be limited to dipping into the full dataset using a query, instead of being able to crawl the entire archive, with something like a paged Atom feed. From a conversation over on <a href="http://groups.google.com/group/get-theinfo/browse_thread/thread/e151c1f69a974d21">get-theinfo</a> it appears that this approach might not be as easy as it sounds. Also, it turns out that magically, many of the books have been uploaded to the <a href="http://groups.google.com/group/get-theinfo/browse_thread/thread/e151c1f69a974d21">Internet Archive</a>. 902,188 of them in fact.</p>
<p>So maybe not that much work needs to be done. But presumably more public domain content will become available from Google Books, and it would be nice to be able to say there was at least one other copy of it elsewhere, for digital preservation purposes. It would be great to see Google step up and <em>do some good</em>, by making their API usable for folks wanting to replicate the public domain content. Still, at least they haven't of <em>done evil</em> by locking it away completely. <a href="http://danbri.org">Dan Brickley</a> had an interesting <a href="http://groups.google.com/group/get-theinfo/msg/0d6120b268aeba59">suggestion</a> to possibly collaborate on this work.</p>
