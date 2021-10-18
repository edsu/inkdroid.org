---
layout: post
status: publish
published: true
title: pymarc PEP-8 cleanup
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 188
wordpress_url: http://inkdroid.org/journal/2008/02/28/pymarc-pep-8-cleanup/
date: '2008-02-28 02:21:19 +0000'
date_gmt: '2008-02-28 09:21:19 +0000'
tags:
- marc
- python
- code4lib
- bazaar
- subversion
- hats
comments:
- id: 56238
  author: Gabriel Sean Farrell
  author_email: gsf@fruct.us
  author_url: http://fruct.us/
  date: '2008-03-04 09:35:22 +0000'
  date_gmt: '2008-03-04 16:35:22 +0000'
  content: Glad I could help, Ed, and I second the call for anyone who might have
    even a passing fancy to grab the code and dig into it.  Also, thanks to <a href="http://www.logilab.org/857"
    rel="nofollow">pylint</a> for some pointers on the way to PEP 8 goodness.
---

<p><a href="http://memory.loc.gov/cgi-bin/query/r?ammem/cdn:@field(NUMBER+@band(ichicdn+s066678)) "><img title="[Pugilist, Gene Tunney tipping his hat in front of a passenger train car in a railroad station]."src="http://inkdroid.org/images/hattip.gif" style="margin-right: 10px; float: left" /></a><a href="http://pypi.python.org/pypi/pymarc/">pymarc v2.0</a> was released yesterday afternoon. I'm mentioning it here to give a big tip of the hat to <a href="http://web.archive.org/web/20080409175507/http://fruct.us:80/bio">Gabriel Farrell</a> (gsf on <a href="irc://chat.freenode.net/code4lib">#code4lib</a>) who spent a significant amount of time cleaning up the code to be <a href="http://www.python.org/dev/peps/pep-0008/">PEP-8</a> compliant.</p>
<p>If you are a current user of pymarc your code will most likely break, since methods like: addField() will now look like add_field(). This is a small price to pay for pythonistas who typically prefer clean, consistent and more coherent code (how's that for alliteration?). It had to be done and I'm very grateful to gsf for taking the time to do it.</p>
<p><a href="http://bazaar-vcs.org/"><img src="http://inkdroid.org/images/bzr.png" style="float: right; margin-left: 10px; border: none;"/></a>Another big thing is that we've switched from using <a href="http://subversion.tigris.org/">subversion</a> to <a href="http://bazaar-vcs.org/">bzr</a> for revision control. Initially it seemed like a lightweight way for gsf and I to collaborate without monkeying with svn authentication (again)...and to learn the zen of <a href="http://www.youtube.com/watch?v=4XpnKHJAok8">distributed revision control</a>. We both liked it so much that we moved the repository to <a href="https://launchpad.net/pymarc">LaunchPad</a>.</p>
<p>So if you like the latest/greatest/shiniest, and/or want to contribute some of your own changes to pymarc:</p>
<pre lang="text">
  % bzr branch lp:pymarc
  % # hack, hack, hack, hackety, hack
  % bzr commit
  % bzr send --mail-to gsf@fruct.us --message "Gabe, I added a jammies method to the record object!"
  % # or publish your own repo and point us at it :-)
</pre>
