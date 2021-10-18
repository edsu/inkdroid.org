---
layout: post
status: publish
published: true
title: the librarian's store
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 112
wordpress_url: http://www.inkdroid.org/journal/2006/08/01/the-librarians-store/
date: '2006-08-01 12:41:33 +0000'
date_gmt: '2006-08-01 19:41:33 +0000'
tags: []
comments: []
---

<p>While working at <a href="http://follett.com">Follett</a> I always thought it was just a matter of time till Amazon turned it's eye on the library market. Much of the web development that went on at Follett was done with an eye towards what Amazon was doing...while tailoring the experience for librarians and library book ordering/processing. The management I expressed this idea to seemed to think that Amazon wouldn't be interested in Follett's business. It was my opinion at the time that it would be better to have Amazon as a partner than a competitor. This is really just common sense right? No leap of intuition there.</p>
<p>...time passes...</p>
<p>Now it looks like (thanks <a href="http://blog.ryaneby.com/">eby</a>) that Follett has some <a href="http://www.amazon.com/gp/browse.html/104-4592833-0688700?node=13753131">company</a>. When a web savvy company like Amazon notices your niche in the ecosystem it's definitely important to pay attention. Amazon has decided to partner with TLC and Marcive for MARC data and with OCLC to automatically update holdings. This is big news.</p>
<p>Somewhat related and even more interesting in some ways <a href="http://dilettantes.code4lib.org/">rsinger</a> and eby report in #code4lib that they've seen Library of Congress Subject Headings and Dewey Decimal Classification Numbers in <a href="http://aws.amazon.com">Amazon Web Service</a> responses. For an example splice your Amazon Token in here:</p>
<pre>
http://web.archive.org/web/20120913073818/http://webservices.amazon.com/onca/xml
?Service=AWSECommerceService
&amp;Version=2006-06-28
&amp;Operation=ItemLookup
&amp;ContentType=text%2Fxml
&amp;SubscriptionId=YOUR_TOKEN_HERE
&amp;ItemId=097669400X
&amp;IdType=ASIN
&amp;ResponseGroup=ItemAttributes,Large,Subjects
</pre>
<p>scan for:</p>
<blockquote><p>
Ruby (Computer program language)
</p></blockquote>
