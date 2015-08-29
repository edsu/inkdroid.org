---
layout: post
status: publish
published: true
title: 'openurl as microformat  '
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
excerpt: "\t<div class='hreview x-wpsb-review-book'>\t\t<div>\t\t\t<h3 class='item
  fn'><span class='btitle'>The Search</span></h3>\t\t\t\t\t\t                        <p><b>Author</b>:
  <span class='au'>John Battelle</span></p>                                                <p><b>Year</b>:
  <span class='date'>2005</span></p>\t\t\t                        <p><b>Publisher</b>:
  <span class='pub'>Portfolio Hardcover</span></p>\t\t\t\t\t\t<p><b>ISBN</b>: <span
  class='Z3988 isbn' title='ctx_ver=Z39.88-2004&amp;rft_val_fmt=info:ofi/fmt:kev:mtx:book&amp;rft.isbn=1591840880'>1591840880</span></p>\t\t</div>\t\t<div
  class='description'><p>Ok, so The Search is a great book so far...but I'm really
  just testing some <a href=\"/docs/review-book.xml\">local modifications</a> I made
  to the <a href=\"http://structuredblogging.org\">structured blogging</a> tool to
  use <a href=\"http://alcme.oclc.org/openurl/servlet/OAIHandler/extension?verb=GetMetadata&metadataPrefix=mtx&identifier=info:ofi/fmt:kev:mtx:book\">Book
  OpenURL KEV</a> parameter names as a microformat. Take a look in the HTML and you
  should see them hiding there.\r\n\r\nHere's a somewhat prettified version as an
  image since I couldn't get my syntax highlighter plugin to do a nice enough job
  with the HTML.\r\n\r\n<img src=\"/images/openurl-microformat.png\" style=\"border:
  thin dashed black; padding: 10px;\"/>\r\n\r\nPretty simple stuff right? Notice the
  COinS in there too? That's thanks to Dan's <a href=\"http://onebiglibrary.net/node/14\">hacking</a>
  at structured blogging. Actually getting openurl KEV support into structured blogging
  is another idea of Dan's. Go Chudnov.\r\n\r\n<i>Update 01/19/2006 09:39 CST</i>:
  Dan <a href=\"http://onebiglibrary.net/project/coins/openurl-microformat-for-journals\">got</a>
  similar support for journal articles. If this stuff caught on it could really revolutionize
  academic blogging...and more.</p></div>\t\t\t</div>"
wordpress_id: 74
wordpress_url: http://www.inkdroid.org/journal/?p=74
date: '2006-01-18 23:11:54 +0000'
date_gmt: '2006-01-19 06:11:54 +0000'
tags: []
comments:
- id: 31
  author: Edward Vielmetti
  author_email: emv@superpatron.com
  author_url: http://www.superpatron.com
  date: '2006-01-23 11:37:43 +0000'
  date_gmt: '2006-01-23 18:37:43 +0000'
  content: "Hm, interesting.\r\n\r\nI wrote a little XSLT and was able to generate
    a first pass at openurl microformatted pages from the Ann Arbor District Library's
    catalog.\r\n\r\nGrab http://www.superpatron.com/aadl-openurl.xsl as the stylesheet,
    and then apply it to http://www.superpatron.com/aadlexample.xml to see what it
    looks like.   I didn't get the COINS stuff working on a first go-around, but it
    should be straightforward enough.\r\n\r\nA few things were funky.  The AADL REST
    interface (see Blyberg's blog for details) doesn't have a separate \"publication
    year\" field, rather putting it formatted in the \"pubinfo\" field.  The \"author\"
    field I get easily is a string like \"Vielmetti, Edward 1964-\" rather than \"Edward
    Vielmetti\".  But it looks like it generates something reasonable.\r\n\r\nA second
    pass at doing this against a bigger catalog would be to do a similar transform
    against SRU so that you could snag these records from e.g. the Library of Congress."
---
<div class='hreview x-wpsb-review-book'>
<div>
<h3 class='item fn'><span class='btitle'>The Search</span></h3>
<p><b>Author</b>: <span class='au'>John Battelle</span></p>
<p><b>Year</b>: <span class='date'>2005</span></p>
<p><b>Publisher</b>: <span class='pub'>Portfolio Hardcover</span></p>
<p><b>ISBN</b>: <span class='Z3988 isbn' title='ctx_ver=Z39.88-2004&amp;rft_val_fmt=info:ofi/fmt:kev:mtx:book&amp;rft.isbn=1591840880'>1591840880</span></p>
</p></div>
<div class='description'>
<p>Ok, so The Search is a great book so far...but I'm really just testing some <a href="/docs/review-book.xml">local modifications</a> I made to the <a href="http://structuredblogging.org">structured blogging</a> tool to use <a href="http://alcme.oclc.org/openurl/servlet/OAIHandler/extension?verb=GetMetadata&metadataPrefix=mtx&identifier=info:ofi/fmt:kev:mtx:book">Book OpenURL KEV</a> parameter names as a microformat. Take a look in the HTML and you should see them hiding there.</p>
<p>Here's a somewhat prettified version as an image since I couldn't get my syntax highlighter plugin to do a nice enough job with the HTML.</p>
<p><img src="/images/openurl-microformat.png" style="border: thin dashed black; padding: 10px;"/></p>
<p>Pretty simple stuff right? Notice the COinS in there too? That's thanks to Dan's <a href="http://onebiglibrary.net/node/14">hacking</a> at structured blogging. Actually getting openurl KEV support into structured blogging is another idea of Dan's. Go Chudnov.</p>
<p><i>Update 01/19/2006 09:39 CST</i>: Dan <a href="http://onebiglibrary.net/project/coins/openurl-microformat-for-journals">got</a> similar support for journal articles. If this stuff caught on it could really revolutionize academic blogging...and more.</p>
</div></div>
<p><script type="application/x-subnode; charset=utf-8"><br />
       <!-- the following is structured blog data for machine readers. --><br />
       <subnode xmlns:data-view="http://www.w3.org/2003/g/data-view#" data-view:transformation="http://structuredblogging.org/subnode-to-rdf-interpreter.xsl" xmlns="http://www.structuredblogging.org/xmlns#subnode"><br />
       	    <xml-structured-blog-entry xmlns="http://www.structuredblogging.org/xmlns"><br />
       		    <generator id="wpsb-1" type="x-wpsb-post" version="1"/><review type="review/book"><subject name="The Search" author="John Battelle" year="2005" publisher="Portfolio Hardcover" isbn="1591840880"/><rating max="5" min="0"/><description>Ok, so The Search is a great book so far...but I'm really just testing some &lt;a href=&quot;/docs/review-book.xml&quot;&gt;local modifications&lt;/a&gt; I made to the &lt;a href=&quot;http://structuredblogging.org&quot;&gt;structured blogging&lt;/a&gt; tool to use &lt;a href=&quot;http://alcme.oclc.org/openurl/servlet/OAIHandler/extension?verb=GetMetadata&amp;metadataPrefix=mtx&amp;identifier=info:ofi/fmt:kev:mtx:book&quot;&gt;Book OpenURL KEV&lt;/a&gt; parameter names as a microformat. Take a look in the HTML and you should see them hiding there.</p>
<p>Here's a somewhat prettified version as an image since I couldn't get my syntax highlighter plugin to do a nice enough job with the HTML.</p>
<p>&lt;img src=&quot;/images/openurl-microformat.png&quot; style=&quot;border: thin dashed black; padding: 10px;&quot;/&gt;</p>
<p>Pretty simple stuff right? Notice the COinS in there too? That's thanks to Dan's &lt;a href=&quot;http://onebiglibrary.net/node/14&quot;&gt;hacking&lt;/a&gt; at structured blogging. Actually getting openurl KEV support into structured blogging is another idea of Dan's. Go Chudnov.</p>
<p>&lt;i&gt;Update 01/19/2006 09:39 CST&lt;/i&gt;: Dan &lt;a href=&quot;http://onebiglibrary.net/project/coins/openurl-microformat-for-journals&quot;&gt;got&lt;/a&gt; similar support for journal articles. If this stuff caught on it could really revolutionize academic blogging...and more.</description></review><br />
       	    </xml-structured-blog-entry><br />
       </subnode><br />
       </script></p>
