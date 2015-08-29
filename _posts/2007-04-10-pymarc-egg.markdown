---
layout: post
status: publish
published: true
title: late easter present
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 145
wordpress_url: http://www.inkdroid.org/journal/2007/04/10/pymarc-egg/
date: '2007-04-10 19:43:37 +0000'
date_gmt: '2007-04-11 02:43:37 +0000'
tags: []
comments: []
---
<p>I finally took the time to make <a title="pymarc" href="http://textualize.com/pymarc">pymarc</a> <a title="setuptools" href="http://peak.telecommunity.com/DevCenter/setuptools">setuptools</a> friendly. This basically means that if you've got easy_install handy you can:</p>
<pre>sudo easy_install pymarc</pre>
<p>If you haven't looked at eggs yet, they are pretty much the defacto standard for distributing python code. The <a href="http://www.python.org/pypi">PyPi</a> (Python Package Index, aka Python Cheese Shop) allows <a href="http://peak.telecommunity.com/DevCenter/EasyInstall">easy_install</a> to locate and download packages, which are then unpacked and installed.</p>
<p>pymarc was basically an experiment to make sure I understood how eggs worked with pypi. Next up Rob Sanderson has sent me some code he and a colleague did for parsing Library of Congress Classification Numbers which I'm going to bundle up as an egg as well. Stay tuned.</p>
