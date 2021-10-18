---
layout: post
status: publish
published: true
title: genealogy of a typo
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 4161
wordpress_url: http://inkdroid.org/journal/?p=4161
date: '2011-12-25 19:12:36 +0000'
date_gmt: '2011-12-26 02:12:36 +0000'
tags:
- oclc
- data
- amazon
- books
- librarything
- goodreads
- googlebooks
- bowker
comments:
- id: 85333
  author: dakvid
  author_email: david@frig.gen.nz
  author_url: ''
  date: '2012-01-03 20:51:52 +0000'
  date_gmt: '2012-01-04 03:51:52 +0000'
  content: "LibraryThing can get data from hundreds of sources, including manual\r\nentry
    - but in this case both of the people (there are only two users with the book
    at the moment) imported from Amazon:\r\nhttp://www.librarything.com/work/11420163/details/81245530\r\nhttp://www.librarything.com/work/11420163/details/74768154\r\n\r\nHowever
    you'll find that the typo has disappeared from the work page\r\n(as with the series
    title in brackets) because I've set the Canonical\r\nTitle field in the Common
    Knowledge section:\r\nhttp://www.librarything.com/work/11420163"
---

<p>I got a <a href="http://www.amazon.com/gp/product/B005890G8O/">Kindle Touch</a> today for Christmas--thanks Kesa! Admittedly I'm pretty late to this party. As I made ready to purchase my first ebook I hopped over to my GoodReads <a href="http://www.goodreads.com/review/list/5899086?shelf=to-read">to-read</a> list, to pick something out. I scanned  the list quickly, and my eye came to rest on <a href="http://lenz.unl.edu/">Stephen Ramsey</a>'s recent book <a href="http://www.goodreads.com/book/show/11296511-reading-machines">Reading Machines</a>. But I got hung up on something irrelevant: the subtitle was <em>Toward <span style="color: red;">and</span> Algorithmic Criticism</em> instead of <em>Toward <span style="color: red;">an</span> Algorithmic Criticism</em>, the latter of which is clearly correct based on the cover image.</p>
<p><a href="http://www.goodreads.com/book/show/11296511-reading-machines"><img style="border: thin solid gray;" src="http://inkdroid.org/images/reading-machines/reading-machines-goodreads.png"/></a></p>
<p>Having recently looked at API services for book data I got curious about how the title appeared on other popular web properties, such as <a href="http://www.amazon.com/Reading-Machines-Algorithmic-Criticism-Humanities/dp/0252078209">Amazon</a>:</p>
<p><a href="http://www.amazon.com/Reading-Machines-Algorithmic-Criticism-Humanities/dp/0252078209"><img style="border: thin solid gray;" src="http://inkdroid.org/images/reading-machines/reading-machines-amazon.png"/></a></p>
<p><a href="http://books.google.com/books?id=14KPI0ORQigC">GoogleBooks</a>:</p>
<p><a href="http://books.google.com/books?id=14KPI0ORQigC"><img style="border: thin solid gray;" src="http://inkdroid.org/images/reading-machines/reading-machines-googlebooks.png"/></a></p>
<p><a href="http://www.barnesandnoble.com/w/reading-machines-stephen-ramsay/1100565003">Barnes & Noble</a>: </p>
<p><a href="http://www.barnesandnoble.com/w/reading-machines-stephen-ramsay/1100565003"><img style="border: thin solid gray;" src="http://inkdroid.org/images/reading-machines/reading-machines-bn.png"/></a></p>
<p>and <a href="http://www.librarything.com/work/11420163">LibraryThing</a></p>
<p><a href="http://www.librarything.com/work/11420163"><img style="border: thin solid gray;" src="http://inkdroid.org/images/reading-machines/reading-machines-librarything.png"/></a></p>
<p>I wasn't terribly surprised not to find it on <a href="http://openlibrary.org">OpenLibrary</a>. But it does seem interesting that the exact same typo is present on all these book websites as well, while the title appears correct on the <a href="http://www.press.uillinois.edu/books/catalog/75tms2pw9780252036415.html">publisher's website</a>:</p>
<p><a href="http://www.press.uillinois.edu/books/catalog/75tms2pw9780252036415.html"><img style="border: thin solid gray;" src="http://inkdroid.org/images/reading-machines/reading-machines-ui.png"/></a></p>
<p>and at <a href="http://www.worldcat.org/title/reading-machines-toward-an-algorithmic-criticism/oclc/708761605">OCLC</a>:</p>
<p><a href="http://www.worldcat.org/title/reading-machines-toward-an-algorithmic-criticism/oclc/708761605"><img style="border: thin solid gray;" src="http://inkdroid.org/images/reading-machines/reading-machines-worldcat.png"/></a></p>
<p>It's hard to tell for sure, but my guess is that Amazon, Barnes & Noble, and GoogleBooks got the error from <a href="http://www.bowkerlink.com/corrections/common/titleexpress.asp">Bowker Link</a> (the Books in Print data service), and that LibraryThing then picked up the data from Amazon, and similarly GoodReads picked up the data from GoogleBooks. LibraryThing can pull data from a variety of sources, including Amazon; and I'm not entirely sure where GoodReads gets their data from, but it seems likely that it comes from the GoogleBooks API given other tie-ins with Google.</p>
<p>If you know more about the lineage of data in these services I would be interested to hear it. Specifically if you have a subscription to BowkerLink it would be great if you could check the title. It would be nice to live in a world where these sorts of data provenance issues were easier to read.</p>
