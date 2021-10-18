---
layout: post
status: publish
published: true
title: cloaking and fulltext
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 1432
wordpress_url: http://inkdroid.org/journal/?p=1432
date: '2009-11-10 08:16:50 +0000'
date_gmt: '2009-11-10 15:16:50 +0000'
tags: []
comments:
- id: 81556
  author: ardvaark.net/identity/br&hellip;
  author_email: ''
  author_url: https://ardvaark.net/identity/brian/
  date: '2009-11-10 10:31:25 +0000'
  date_gmt: '2009-11-10 17:31:25 +0000'
  content: "How significantly will it impact page loads?  Just on my poking around,
    with a couple of test pages, I'm showing a text-heavy page with 41K bytes in the
    OCR text.  If GZIP encoding were enabled, that would knock it down to 17K.  Viewing
    that image with all caching working correctly is 158K, so you're talking about
    a 10% increase in size, although most of that is in the JPG and not the HTML.\r\n\r\nThis
    is one of those nasty situations for which there is no good answer.  The reality
    here is that, like a Major League Umpire, \"correct\" is whatever Google says
    it is on any given day."
- id: 81557
  author: gluejar
  author_email: eric@hellman.net
  author_url: ''
  date: '2009-11-10 10:38:01 +0000'
  date_gmt: '2009-11-10 17:38:01 +0000'
  content: "What CA is doing is not cloaking- it's more akin to content-type negotiation.
    The one thing I'd worry about is that the OCR is poor enough for your example
    page that a human reviewing the text could get confused and think that it's not
    the ocr of the image.\r\n\r\nCloaking is when you give a spider juicy content
    and then give spam to a human."
- id: 81558
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-11-10 11:31:32 +0000'
  date_gmt: '2009-11-10 18:31:32 +0000'
  content: "@gluejar I agree in principle -- but google's docs don't really say that.
    The worry at LC was that If google are trying to identify cloaked content at scale
    on the web they may inadvertently flag Chronicling America content as cloaked
    -- since determining juicy-ness could be infeasible."
- id: 81561
  author: Martin Haye
  author_email: martin.haye@gmail.com
  author_url: https://www.google.com/accounts/o8/id?id=AItOawkGjOoZiKwVvLN2fpf3oKco87tZXrxETgo
  date: '2009-11-10 17:14:49 +0000'
  date_gmt: '2009-11-11 00:14:49 +0000'
  content: "@aardvark: Trouble is some of our (CDL's) items are entire monographs.
    Even compressed these would add quite a bit of overhead to each page view. Admittedly
    we're not totally optimized for tiny downloads, but currently we *could* optimize
    for size. Serving up the entire OCR text would foil that.\r\n\r\nThis is a subtle
    point and we debated it quite a bit. In the end we went with what's practical,
    and put our hopes in Google recognizing that we're not cloaking -- we're giving
    them what they need. Search engines need text, people need the whole page experience."
- id: 81562
  author: sgillies.net/
  author_email: ''
  author_url: http://sgillies.net/
  date: '2009-11-11 06:37:24 +0000'
  date_gmt: '2009-11-11 13:37:24 +0000'
  content: But what about other non-Google, non-browser agents? Would you want them
    to masquerade as the Googlebot, or arrange with you for the same special treatment
    (which you'd readily provide, I don't mean to imply otherwise at all)? Either
    seems to break the web a bit, yes? Tricky situation.
- id: 81563
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2009-11-11 07:17:15 +0000'
  date_gmt: '2009-11-11 14:17:15 +0000'
  content: '@sgillies in Chronicling America we do the same for all the big search
    engine bots. But, I agree: it does seem like the out-of-band coordination breaks
    the web a bit. Sometimes I try to rationalize it as a variant of content-negotiation,
    similar to what happens in practice on the mobile web...but it doesn''t work for
    very long. I''m definitely open to other solutions. I wish that rel=''canonical''
    could help here, but <a href="http://inkdroid.org/journal/2009/05/15/canonical-question/"
    rel="nofollow">I don''t think it does</a>. It would be nice if there were some
    rel="fulltext" or something that bots could follow. Perhaps @ardvaark is right
    and we should just bite the bullet now. But what does that do for @martin''s problem?
    /me shrugs'
---

<p>It's comforting to know that <a href="http://www.cdlib.org/">California Digital Library</a> are selectively serving up fulltext content in HTML from their <a href="http://escholarship.org">institutional repository</a> for search engines to chew on. For example, compare the output of:</p>
<pre>
curl http://escholarship.org/uc/item/2896686x
</pre>
<p>with:</p>
<pre>
curl --header "User-Agent: Googlebot/2.1 (+http://www.google.com/bot.html)" http://escholarship.org/uc/item/2896686x
</pre>
<p>You should see full-text content for the article in the latter and not in the former:</p>
<pre>
...

<div>qt2896686x repo "Wholly Visionary": the American Library Association, the 
Library of Congress, and the Card Distribution Program wholly visionary the american
 library association the library of congress and the card distribution program 2009 
2009 2009 2009-04-01 2009-04-01 20090401 yee yy::Yee, Martha M Yee, Martha M 
American Library Association American Library Association Library of Congress 
Library of Congress card distribution program card distribution program shared 
cataloging shared cataloging cooperative cataloging cooperative cataloging national 
bibliography national bibliography cataloging rules and standards cataloging rules and 
standards library history united states library history united states This paper offers a 
historical review of the events and institutional influences in the nineteenth century 
that led to the
...

</div></pre>
<p>The advantage to doing this is that when I was searching for a quote from Title 2, Chapter 5, Section 150 of the US Code:</p>
<blockquote><p>
The Librarian of Congress is authorized to furnish to such institutions or individuals as may  desire to buy them
</p></blockquote>
<p>I found Martha Yee's paper <a href="http://escholarship.org/uc/item/2896686x">"Wholly Visionary": the American Library Association, the Library of Congress, and the Card Distribution Program</a> as the 5th hit in the <a href="http://www.google.com/search?q=+The+Librarian+of+Congress+is+authorized+to+furnish+to+such+institutions+or+individuals+as+may++desire+to+buy+them&ie=utf-8&oe=utf-8&aq=t&rls=com.ubuntu:en-US:official&client=firefox-a">search results</a>.</p>
<p>We do this at the Library of Congress as well in <a href="http://chroniclingamerica.loc.gov">Chronicling America</a> to make the OCR text of historic newspaper pages available to search engines, while not burdening the UI search interface with all the (much noisier) textual content. Compare:</p>
<pre>
curl http://chroniclingamerica.loc.gov/lccn/sn84026749/1908-04-09/ed-1/seq-11/
</pre>
<p>with:</p>
<pre>
curl --header "User-Agent: Googlebot/2.1 (+http://www.google.com/bot.html)" http://chroniclingamerica.loc.gov/lccn/sn84026749/1908-04-09/ed-1/seq-11/
</pre>
<p>However we've got a ticket in our tracking system to revisit this practice in light of Google themselves <a href="http://www.google.com/support/webmasters/bin/answer.py?hl=en&answer=66355">frowning</a> on the practice of 'cloaking':</p>
<blockquote><p>
Cloaking refers to the practice of presenting different content or URLs to users and search engines. Serving up different results based on user agent may cause your site to be perceived as deceptive and removed from the Google index.
</p></blockquote>
<p>We were thinking of returning the OCR text in all the responses and putting it in a background pane of some kind that can be selected. But this will most likely increase the size of the HTTP response, and may significantly impact the load time. As more and more fulltext content moves online it would be nice to have a pattern digital libraries could follow for minting URIs for books, articles, etc while still making the fulltext content available to UserAgents that can effectively use it. </p>
<p>Google hasn't dropped Chronicling America's pages from its index yet, which is a good sign. After running across similar patter at CDL I'm wondering if it's OK to continue doing what we are doing. What do you think?</p>
<p><em>Update: <a href="http://www.ldodds.com/blog">Leigh Dodds</a> let me know in <a href="http://twitter.com/ldodds/statuses/5594083546">twitter</a> that much of the content gets into Google Scholar via cloaking.</em></p>
