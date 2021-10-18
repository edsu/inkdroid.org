---
layout: post
status: publish
published: true
title: oai-pmh and xmpp
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 1262
wordpress_url: http://inkdroid.org/journal/?p=1262
date: '2009-09-23 21:14:57 +0000'
date_gmt: '2009-09-24 04:14:57 +0000'
tags: []
comments:
- id: 81551
  author: Thom
  author_email: hickey@oclc.org
  author_url: http://
  date: '2009-09-25 11:46:18 +0000'
  date_gmt: '2009-09-25 18:46:18 +0000'
  content: "Nice Ed, but all that white space in the Python code makes me feel woozy.\r\n\r\n--Th"
---

<p><a href="http://xmpp.org"><img src="http://xmpp.org/images/xmpp.png" style="border: none; margin-right: 15px; float: left;"/></a>As an experiment to learn more about <a href="http://xmpp.org">xmpp</a> I created a little utility that will poll an <a href="http://www.openarchives.org/OAI/openarchivesprotocol.html">oai-pmh</a> server and send new records as a chunk of xml over xmpp.  The idea wasn't necessarily to see all the xml coming into my jabber client (although you can do that). I wanted  to enable downstream applications to have records pushed to them, instead of them having to constantly poll for updates.  So you could write a client that archived away metadata and potentially articles as they are found, or write a current awareness tool that listened for articles that matched a particular users research profile, etc...</p>
<p>Here's how you start it up:</p>
<pre>
oai2xmpp.py http://www.doaj.org/oai.article from@example.com to@example.org
</pre>
<p>which would poll <a href="http://doaj.org">Directory of Open Access Journals</a> for new articles every 10 minutes, and send them via xmpp to to@example.org. You can adjust the poll interval, and limit to records within a particular set with the --pollinterval and --set options, e.g.:</p>
<pre>
oai2xmpp.py http://export.arxiv.org/oai2 currents@jabber.org ehs@jabber.org --set cs --pollinterval 86400
</pre>
<p>It's a one file python hack in the spirit of Thom Hickey's <a href="http://web.archive.org/web/20090611032757/http://www.oclc.org:80/research/software/oai/2page.htm">2PageOAI</a> that has a few dependencies documented in the file (lxml, xmpppy, httplib2). I've run it for about a week against DOAJ and arxiv.org without incident (it does respect 503 HTTP status codes telling it to slow down). You can find it <a href="http://github.com/edsu/oai2xmpp/">here</a>.</p>
<p>If you try it out, have any improvements, or ideas let me know.</p>
