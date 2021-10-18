---
layout: post
status: publish
published: true
title: gems...on ice
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 113
wordpress_url: http://www.inkdroid.org/journal/2006/08/12/gemson-ice/
date: '2006-08-12 17:14:31 +0000'
date_gmt: '2006-08-13 00:14:31 +0000'
tags: []
comments: []
---

<p><a href="http://www.rubygems.org"><img src="http://web.archive.org/web/20070628193008/http://rubygems.org/images/rubygems-125x125t.png" align="left" border="0" /></a><br />
When developing and deploying <a href="http://rubyonrails.org">RubyOnRails</a> applications you've often got to think about the <a href="http://www.rubygems.org/">gem</a> dependencies your project might have. It's particularly useful to freeze a version of rails in your <i>vendor</i> directory so that your app uses that version of rails rather than a globally installed (or not installed) one. It's easy to do this by simply invoking:</p>
<pre>
  rake freeze_gems
</pre>
<p>Which will unpack all the rails gems into vendor, and your application will magically use these instead of the globally installed rails gems.</p>
<p>The cool thing is that with a little bit of plugin help you can freeze your other gems in <i>vendor</i> as well. Simply install Rick Olson's elegantly simple <a href="http://web.archive.org/web/20070729055327/http://svn.techno-weenie.net/projects/plugins/gems/">gem plugin</a> into vendor/plugins. Then assuming you are using let's say my <a href="http://www.textualize.com/ruby-oai">oai-pmh</a> gem you can simply:</p>
<pre>
  rake gems:freeze GEM=oai
</pre>
<p>and the gem will be unpacked in vendor, and the $LOAD_PATH for your application will automatically include the library path for the new gem. Very useful, thanks Rick!</p>
