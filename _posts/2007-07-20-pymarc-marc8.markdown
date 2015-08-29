---
layout: post
status: publish
published: true
title: pymarc, marc8 and nothingness
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 160
wordpress_url: http://www.inkdroid.org/journal/2007/07/20/pymarc-marc8/
date: '2007-07-20 05:51:23 +0000'
date_gmt: '2007-07-20 12:51:23 +0000'
tags: []
comments:
- id: 39150
  author: Gabriel Farrell
  author_email: gsf@perfectlygood.net
  author_url: http://perfectlygood.net
  date: '2007-07-20 10:58:16 +0000'
  date_gmt: '2007-07-20 17:58:16 +0000'
  content: "Great things, Ed (and thanks to Mark and Aaron, too).  I svn'd and tried
    it out on a dump I had lying around of 105,000 of our records.  Following the
    pymarc.__doc__, I did:\r\n\r\n&gt;&gt;&gt; reader = MARCReader('bibs105000.out')\r\n&gt;&gt;&gt;
    for record in reader:\r\n...     print record['245']['a']\r\n... \r\nTraceback
    (most recent call last):\r\n  File \"\", line 1, in ?\r\n  File \"build/bdist.linux-x86_64/egg/pymarc/reader.py\",
    line 51, in next\r\nValueError: invalid literal for int(): bibs1\r\n&gt;&gt;&gt;
    \r\n\r\nBut I noticed \"self.reader = pymarc.MARCReader(file('test/test.dat'))\"
    in test/reader.py, so I:\r\n\r\n&gt;&gt;&gt; marc8_file = file('bibs105000.out')\r\n&gt;&gt;&gt;
    reader = MARCReader(marc8_file)\r\n&gt;&gt;&gt; for record in reader:\r\n...     print
    record['245']['a']\r\n... \r\nMicroeconomics :\r\nThe multilateral development
    banks :\r\nThe Accountants digest.\r\nAchievement.\r\nALA bulletin.\r\nActa arithmetica.\r\nActa
    crystallographica.\r\nASLE transactions.\r\nActa mathematica.\r\nActa mechanica.\r\nActa
    physica Polonica,\r\nActa physica Austriaca /\r\nActa physica Polonica.\r\nActa
    polytechnica Scandinavica.\r\n[etc. -- big old list of titles, streaming by, very
    fast]\r\n\r\nSo MARCReader expects a file object, not a filename.  Does that doc
    string need updating or did I misread it?\r\n\r\nI then tried to test marc8_to_unicode:\r\n\r\n&gt;&gt;&gt;
    utf8_file = marc8_to_unicode(marc8_file)\r\nTraceback (most recent call last):\r\n
    \ File \"\", line 1, in ?\r\n  File \"build/bdist.linux-x86_64/egg/pymarc/marc8.py\",
    line 8, in marc8_to_unicode\r\n  File \"build/bdist.linux-x86_64/egg/pymarc/marc8.py\",
    line 43, in translate\r\nTypeError: len() of unsized object\r\n&gt;&gt;&gt; \r\n\r\nLooking
    at test/marc8.py I saw marc8_to_unicode expects a string, so I:\r\n\r\n&gt;&gt;&gt;
    marc8_file = file('bibs105000.out')\r\n&gt;&gt;&gt; marc8_file_str = marc8_file.read()\r\n&gt;&gt;&gt;
    utf8_file_str = marc8_to_unicode(marc8_file_str)\r\ncouldn't find 66 69 221 221\r\ncouldn't
    find 66 69 220 220\r\ncouldn't find 66 69 221 221\r\ncouldn't find 66 69 220 220\r\ncouldn't
    find 66 69 221 221\r\ncouldn't find 66 69 221 221\r\ncouldn't find 66 69 220 220\r\ncouldn't
    find 66 69 220 220\r\ncouldn't find 66 69 221 221\r\n&gt;&gt;&gt; \r\n\r\nThis
    took a long time, running at about 98% of my cpu and 20% of my ~4GB of  memory.
    \ So I timed it (only 3 times because, you know, I'm impatient):\r\n\r\n&gt;&gt;&gt;
    t = Timer(stmt='utf8_file_str = marc8_to_unicode(marc8_file_str)', setup='marc8_file
    = file(\"bibs105000.out\"); marc8_file_str = marc8_file.read(); from pymarc import
    marc8_to_unicode')\r\n&gt;&gt;&gt; t.timeit(3)\r\n[a bunch of the \"couldn't find
    66 69 22[01] 22[01]\", three times over]\r\n786.2618350982666\r\n\r\nSo it took
    a little while.  How big is the file?\r\n\r\n&gt;&gt;&gt; len(marc8_file_str)\r\n93747869\r\n&gt;&gt;&gt;
    len(utf8_file_str)\r\n87474412\r\n\r\nHmm.  Those should match, right?  Well,
    let's see if we can read the new file:\r\n\r\n&gt;&gt;&gt; pymarc_utf8_file =
    file('bibs105000_pymarc_utf8.dat', 'w')\r\n&gt;&gt;&gt; pymarc_utf8_file.write(utf8_file_str.encode('utf8'))\r\n&gt;&gt;&gt;
    reader = MARCReader(file('bibs105000_pymarc_utf8.dat'))\r\n&gt;&gt;&gt; for record
    in reader:\r\n...     print record['245']['a']\r\n... \r\nNone\r\nTraceback (most
    recent call last):\r\n  File \"\", line 1, in ?\r\n  File \"build/bdist.linux-x86_64/egg/pymarc/reader.py\",
    line 54, in next\r\n  File \"build/bdist.linux-x86_64/egg/pymarc/record.py\",
    line 46, in __init__\r\n  File \"build/bdist.linux-x86_64/egg/pymarc/record.py\",
    line 123, in decodeMARC\r\npymarc.exceptions.BaseAddressInvalid: Base address
    exceeds size of record\r\n&gt;&gt;&gt; \r\n\r\nHave I done something screwy, or
    is it something in the file?  I can get the file to you if you want to test on
    your system.  I also have a utf8 file to compare the output against, produced
    by `yaz-marcdump -f MARC-8 -t UTF-8 -I bibs105000.out &gt; bibs105000_utf8.out`,
    and of course the diff is a mile long.  If I get time later I'll test line by
    line, as done in test/marc8.py.  \r\n\r\nApologies for the long long comment --
    should be on some mailing list or something."
- id: 39168
  author: thesecretmirror.com &raquo; Blog Archive &raquo; When Life Hands You MARC,
    make pymarc
  author_email: ''
  author_url: http://thesecretmirror.com/cataloging/when-life-hands-you-marc-make-pymarc
  date: '2007-07-20 15:13:45 +0000'
  date_gmt: '2007-07-20 22:13:45 +0000'
  content: "[...] I&#8217;m no expert, but I&#8217;m glad that I could help bring
    pymarc up to version 1.0 and that I&#8217;ve had a chance to begin enjoy programming
    again. I&#8217;m also glad to see that Catalogablog has spread the word. Download
    a copy and start hacking; maybe you&#8217;ll be rewarded with rediscovering the
    joy of code like I was. [...]"
- id: 53141
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2008-01-30 20:13:32 +0000'
  date_gmt: '2008-01-31 03:13:32 +0000'
  content: "Wow, sorry for the delay gabe, this slipped my radar -- <a href=\"http://pypi.python.org/pypi/pymarc\"
    rel=\"nofollow\">1.7</a> was just released with some fixes you just recently sent
    to me in a patch. \r\n\r\nIn addition I documented the marc8_to_unicode function
    more so that it hopefully makes clear you aren't supposed to pass in a serialized
    marc record, but just a chunk of text extracted from the record that you'd like
    to translate.\r\n\r\nThanks for the info and the patch!"
- id: 59652
  author: Nodalities &raquo; Blog Archive &raquo; This Week&#8217;s Semantic Web
  author_email: ''
  author_url: http://blogs.talis.com/nodalities/2007/07/this_weeks_semantic_web_3.php
  date: '2008-04-17 10:05:39 +0000'
  date_gmt: '2008-04-17 17:05:39 +0000'
  content: "[...] pymarc, marc8 and nothingness - new function, marc8_to_unicode()
    [...]"
---
<p><a href="http://www.python.org/pypi/pymarc/" title="pymarc">pymarc 1.0</a> went out day before yesterday with a new function: <em>marc8_to_unicode()</em>. When trying to leverage MARC bibliographic data in today's networked world it is inevitable that the MARC8 character encoding will at some point rear its ugly head and make your brain hurt. The problem is that the standard character set tools for various programming languages do not support it. So you need to know to use a specialized tool like marc4j, yaz, MARC::Charset for converting from MARC8 into something useful like Unicode. The MARC8 support in pymarc is the brainchild of <a href="http://www.panix.com/~asl2">Aaron Lav</a> and <a href="http://thesecretmirror.com/">Mark Matienzo</a>. Aaron gave permission for us to package up some of is code from <a href="http://www.panix.com/~asl2/software/PyZ3950/">PyZ3950</a> into pymarc. In testing with equivalent MARC-8 and UTF-8 record batches from the Library of Congress we were able to find and fix a few glitches. The exercise was instructive to me because of my previous experience working with the <a href="http://cpan.org/MARC-Charset">MARC::Charset</a> Perl module. When I wrote MARC::Charset I was overly concerned with <em>not</em> storing the mapping table in memory, I used an on disk Berkeley-DB originally. Aaron's code simply stored the mapping in memory. Since python stores bytecode on disk after compiling there were some performance gains to be had over Perl--since Perl would compile the big mapping hash every time. But the main thing is that Aaron seemed to choose the simplest solution first-- whereas I was busy performing a premature optimization. I also went through some pains to enable mapping not only MARC-8 to Unicode but Unicode back to MARC-8. In hindsight this was a mistake because going back to MARC-8 is increasingly more insane as each day passes. Aaron's code as a result is much cleaner and easier to understand because, well, there's less of it. I'm reading <a href="http://www.oreilly.com/catalog/9780596510046/">Beautiful Code</a> at the moment and was just reading Jon Bentley's chapter "The Most Beautiful Code I Never Wrote" -- which really crystallized things. Definitely check out Beautiful Code if you have a chance. Maybe the quiet <a href="http://web.archive.org/web/20070617063746/http://books.code4lib.org/">books4code</a> could revive to read it as a group?</p>
