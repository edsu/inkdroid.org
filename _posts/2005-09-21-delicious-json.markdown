---
layout: post
status: publish
published: true
title: delicious json
author:
  display_name: Administrator
  login: admin
  email: ed.summers@gmail.com
  url: http://www.inkdroid.org
author_login: admin
author_email: ed.summers@gmail.com
author_url: http://www.inkdroid.org
wordpress_id: 34
wordpress_url: http://www.inkdroid.org/journal/?p=34
date: '2005-09-21 05:35:42 +0000'
date_gmt: '2005-09-21 12:35:42 +0000'
tags: []
comments: []
---

<p>I just noticed over on the <a>del.icio.us blog</a> that my data is available as <a href="http://del.icio.us/doc/feeds/json/">JavaScript Object Notation (JSON)</a> by following a simple URL like: http://del.icio.us/feeds/json/inkdroid.</p>
<p>Essentially you just load  the URL as javascript source in your HTML:</p>
<p><code><br />
&lt;script type="text/javascript" src="http://del.icio.us/feeds/json/inkdroid?count=20"&gt;&lt;/script&gt;<br />
</code></p>
<p>and voila you've magically got a new javascript array variable <code>Delicious.posts</code>, each element of which is a hash describing your link on delicious. It's a very elegant (and simple) technique...<i>much</i> more elegant than that taken in the <a href="http://search.cpan.org/dist/XML-RSS-JavaScript">XML::RSS::JavaScript</a> module which I helped create.  It's so elegant in fact that I got it working off to the side of this page in 2 minutes. I downloaded the python and ruby extensions for working with JSON just to take a look. The <a href="https://sourceforge.net/projects/json-py/">python</a> version is a pleasant read, especially the unittests! The <a href="http://rubyforge.org/snippet/detail.php?type=snippet&id=29">ruby version</a> is a lesson in minimalism:</p>
<pre lang="ruby">
jsonobj = eval(json.gsub(/(["'])\s*:\s*(['"0-9tfn\[{])/){"#{$1}=>#{$2}"})
</pre>
<p>Now, if I were to use this I'd probably put a wrapper around it :-) Although it's less minimalistic I think I prefer the explicitness of the python code. I've been digging into Ruby a bit more lately as I work on <a href="http://www.inkdroid.org:7000/textualize/browser/ruby-marc/trunk/">ruby-marc</a>, and while I'm really enjoying the language I tend to shy away from one line regex hacks like this...which more often than not turn out to be a pain to extend and maintain.</p>
<p>I first heard of JSON from <a href="http://web.archive.org/web/20111122231134/http://open-ils.org/blog/?p=31">Mike Rylander</a> at the <a href="http://open-ils.org">open-ils</a> project who are using JSON heavily in the opensource library catalog that they are developing for the state of Georgia.  It is nice to see library technologists leading the curve.</p>
