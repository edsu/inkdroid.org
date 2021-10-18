---
layout: post
status: publish
published: true
title: canonical question
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 1015
wordpress_url: http://inkdroid.org/journal/?p=1015
date: '2009-05-15 11:50:23 +0000'
date_gmt: '2009-05-15 18:50:23 +0000'
tags:
- html
- web
- search
- google
- crawling
comments:
- id: 81526
  author: jenitennison.com/
  author_email: ''
  author_url: http://www.jenitennison.com/
  date: '2009-05-15 12:45:02 +0000'
  date_gmt: '2009-05-15 19:45:02 +0000'
  content: I think you'd be hard pressed to get Google to index a page but have any
    search results that include that page actually point to a different page. Perhaps
    you'd be better off doing a bit of content negotiation and serving up the OCRed
    content when Google (or another 'bot) requests the page viewer URL? Or, of course,
    including the OCRed content within the page viewer page.
- id: 81527
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-05-15 13:42:10 +0000'
  date_gmt: '2009-05-15 20:42:10 +0000'
  content: Yes, thanks Jeni -- two good options there. Sometimes the obvious isn't
    so obvious when you are working with a legacy website...so your advice is much
    appreciated.
- id: 81534
  author: claimid.com/egh
  author_email: ''
  author_url: http://claimid.com/egh
  date: '2009-05-20 22:45:32 +0000'
  date_gmt: '2009-05-21 05:45:32 +0000'
  content: "Can't help with the rel=canonical issue, just wanted to say thanks for
    making sure that google indexes your content. It's nice to see something like
    this being made available to ordinary searchers.\r\n\r\nThis might be a place
    where that annoying \"feature\" of pulling the search term out of the referer
    and highlighting it on the page might be useful. I clicked the link to the NY
    Trib but I can't find Dr Burnham."
- id: 81535
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-05-22 08:34:38 +0000'
  date_gmt: '2009-05-22 15:34:38 +0000'
  content: erik, funny you should mention that -- it's high on the list of features
    the stakeholders would like added, so it's likely to go in soon.
---

<p>As the last post indicated I'm part of a team at loc.gov working on an <a href="http://chroniclingamerica.loc.gov">application</a> that serves up page views like <a href="http://chroniclingamerica.loc.gov/lccn/sn83030214/1901-08-25/ed-1/seq-15/">this</a> for historic newspapers--almost a million of them in fact. For each page view there is another URL for a view of the OCR text gleaned from that image, such as <a href="http://chroniclingamerica.loc.gov/lccn/sn83030214/1901-08-25/ed-1/seq-15/ocr/">this</a>. Yeah, kind of yuckster at the moment, but we're working on that.</p>
<p>Perhaps it's obvious, but the goal of making the OCR html view available is so that search engine crawlers can come and index it. Then when someone is searching for someone's name, say <a href="http://www.google.com/search?q=Dr.+Herbert+D.+Burnham">Dr. Herbert D. Burnham</a> in Google they'll come to <a href="http://chroniclingamerica.loc.gov/lccn/sn83030214/1901-08-25/ed-1/seq-15/">page 3</a> in the <a href="http://chroniclingamerica.loc.gov/lccn/sn83030214/1901-08-25/ed-1/">08/25/1901 issue</a> of the <a href="http://chroniclingamerica.loc.gov/lccn/sn83030214/">New York Tribune</a>. And this can happen without the searcher needing to know anything about the Chronicling America project beforehand. Classic <a href="http://en.wikipedia.org/wiki/Search_engine_optimization">SEO</a>...</p>
<p>The current OCR view at the moment is quite confusing, so we wanted to tell Google that when they link to the page in their search results they use the page zoom view instead. We reached for Google's (and now other major search engine's) <a href="http://googlewebmastercentral.blogspot.com/2009/02/specify-your-canonical.html">rel="canonical"</a>, since it seemed like a perfect fit. </p>
<blockquote><p>
... we now support a format that allows you to publicly specify your preferred version of a URL. If your site has identical or vastly similar content that's accessible through multiple URLs, this format provides you with more control over the URL returned in search results. It also helps to make sure that properties such as link popularity are consolidated to your preferred version.
</p></blockquote>
<p>From our logs we can see that Google has indeed come and fetched both the page viewer and the ocr view for this particular page, and also the text/plain and application/xml views.</p>
<pre>
66.249.71.166 - - [05/May/2009:23:31:51 -0400] "GET /lccn/sn83030214/1901-08-25/ed-1/seq-15/ HTTP/1.1" 200 15566 "-" "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)" "*/*"
66.249.71.227 - - [06/May/2009:02:02:51 -0400] "GET /lccn/sn83030214/1901-08-25/ed-1/seq-15.pdf HTTP/1.1" 200 3119248 "-" "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)" "*/*"
66.249.71.165 - - [06/May/2009:02:03:46 -0400] "GET /lccn/sn83030214/1901-08-25/ed-1/seq-15/ocr/ HTTP/1.1" 200 47075 "-" "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)" "*/*"
66.249.71.172 - - [06/May/2009:04:34:02 -0400] "GET /lccn/sn83030214/1901-08-25/ed-1/seq-15/ocr.txt HTTP/1.1" 200 40300 "-" "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)" "*/*"
66.249.71.202 - - [06/May/2009:04:36:07 -0400] "GET /lccn/sn83030214/1901-08-25/ed-1/seq-15/ocr.xml HTTP/1.1" 200 1447056 "-" "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)" "*/*"
</pre>
<p>But it doesn't look like the ocr html view is being indexed, at least based on the results for <a href="http://www.google.com/search?q=Dr.+Herbert+D.+Burnham">this</a> query I just ran. We can see the .txt file is showing up, which was harvested just after the OCR html view ... so it really ought to be in the search results.</p>
<p>A bit of text in a recent www2009 paper <a href="http://data.semanticweb.org/conference/www/2009/paper/100/html">Sitemaps: Above and Beyond the Crawl of Duty</a> by Uri Schonfeld and Narayanan Shivakumar made me think ...</p>
<blockquote><p>
Amazon.com also suffers from URL canonicalization issues, multiple URLs reference identical or similar content. For example, our (Google's) Discovery crawl crawls both</p>
<ul>
<li>http://.../B0000FEFEFW?showViewpoints=1</li>
<li>http://.../B0000FEFEFW?filterBy=addFiveStar</li>
</ul>
<p>The two URLs return identical content and offer little value since these pages off two "different" views on an empty customer review list. Simple crawlers cannot detect these type of duplicate URLs without downloading all duplicate URLs first, processing their content, and <em>wasting resources in the process</em>.
</p></blockquote>
<p>So. Could it be that google crawls and indexes <a href="http://chroniclingamerica.loc.gov/lccn/sn83030214/1901-08-25/ed-1/seq-15/">http://chroniclingamerica.loc.gov/lccn/sn83030214/1901-08-25/ed-1/seq-15/</a>, where it discovers <a href="http://chroniclingamerica.loc.gov/lccn/sn83030214/1901-08-25/ed-1/seq-15/ocr/">http://chroniclingamerica.loc.gov/lccn/sn83030214/1901-08-25/ed-1/seq-15/ocr/</a> which it crawls and sees the canonical URI, which it knows it has already indexed, so it doesn't waste any resources re-indexing?</p>
<p>It seems like a somewhat non-obvious (to me) side effect of asserting a canonical relationship with another URI is that Google will not index the document at the alternate URI. I guess I'm just learning to only use canonical when a site has "identical or vastly similar content that's accessible through multiple URLs" ... Does this seem about right to you?</p>
<p>(thanks <a href="http://dret.net/netdret/">Erik Wilde</a> for the pointer to the Schonfeld and Shivakuma paper) </p>
