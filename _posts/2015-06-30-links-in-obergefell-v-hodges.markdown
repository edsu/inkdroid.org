---
layout: post
status: publish
published: true
title: Links in Obergefell v. Hodges
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 8641
wordpress_url: http://inkdroid.org/journal/?p=8641
date: '2015-06-30 09:52:46 +0000'
date_gmt: '2015-06-30 16:52:46 +0000'
tags: []
comments: []
---

<p>Last week's landmark ruling from the Supreme Court on same sex marriage was routinely <a href="http://www.supremecourt.gov/opinions/14pdf/14-556_3204.pdf">published</a> on the Web as a PDF. Given the <a href="http://www.nytimes.com/2013/09/24/us/politics/in-supreme-court-opinions-clicks-that-lead-nowhere.html?_r=0">past history</a> of URL use in Supreme Court opinions I thought I would take a quick look to see what URLs were present. There are two, both are in Justice Alito's dissenting opinion, and one is broken ... just four days after the PDF was published. You can see it yourself at the bottom of page 100 in the <a href="http://www.supremecourt.gov/opinions/14pdf/14-556_3204.pdf">PDF</a>.</p>
<p><a href="http://www.supremecourt.gov/opinions/14pdf/14-556_3204.pdf"><img src="http://inkdroid.org/images/scotus-1.png" alt="" /></a></p>
<p>If you point your browser at</p>
<blockquote>
<p>http://www.cdc.gov/nchs/data/databrief/db18.pdf</p>
</blockquote>
<p>you will get a page not found error:</p>
<p><img src="http://inkdroid.org/images/scotus-2.png" alt="" /></p>
<p>Sadly even the Internet Archive doesn't have a snapshot of the page available.</p>
<p><a href="http://www.cdc.gov/nchs/data/databriefs/db18.pdf"><img src="http://inkdroid.org/images/scotus-3.png" alt="" /></a></p>
<p>But notice it thinks it can get a copy of it still. That's because the Center for Disease Control's website is responding with a 200 OK instead of a 404 Not Found:</p>
<pre>zen:~ ed$ curl -I http://www.cdc.gov/nchs/data/databrief/db18.pdf
HTTP/1.1 200 OK
Content-Type: text/html
X-Powered-By: ASP.NET
X-UA-Compatible: IE=edge,chrome=1
Date: Tue, 30 Jun 2015 16:22:18 GMT
Connection: keep-alive
</pre>
<p>At any rate, it's not Internet Archive's fault that they haven't archived the Webpage originally published in 2009, because the URL is actually a typo. Instead it should be</p>
<blockquote>
<p>http://www.cdc.gov/nchs/data/databriefs/db18.pdf</p>
</blockquote>
<p>which leads to:</p>
<p><a href="http://www.cdc.gov/nchs/data/databriefs/db18.pdf"><img src="http://inkdroid.org/images/scotus-4.png" alt="" /></a></p>
<p>So between the broken URL and the 200 OK for something not found we've got issues of link rot and reference rot all rolled up into a one character typo. Sigh.</p>
<p>I think a couple lessons for web publishers can be distilled from this little story:</p>
<ul>
<li>when publishing on the Web include link checking as part of your editorial process</li>
<li>if you are going to publish links on the Web use a format that's easy to check ... like HTML.</li>
</ul>
