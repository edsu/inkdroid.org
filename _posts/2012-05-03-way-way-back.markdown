---
layout: post
status: publish
published: true
title: way, way back
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 4387
wordpress_url: http://inkdroid.org/journal/?p=4387
date: '2012-05-03 09:04:09 +0000'
date_gmt: '2012-05-03 16:04:09 +0000'
tags:
- http
- xml
- internet-archive
- wayback
- memento
comments:
- id: 85377
  author: google.com/accounts/o8&hellip;
  author_email: raffaele.messuti@gmail.com
  author_url: https://www.google.com/accounts/o8/id?id=AItOawlwAIsdKcHJGYmWov34EWuNLE4MsGNoUtY
  date: '2012-05-03 10:49:02 +0000'
  date_gmt: '2012-05-03 17:49:02 +0000'
  content: "for question (2) i searched wayback configuration files with no success,
    \ and i asked developer list too a while ago (no response).\r\nwe've a private
    wayback archive in Italy at Biblioteca Centrale di Firenze, we should be happy
    to learn how to enable this api and eventually contribute to memento\r\n\r\nhttp://sourceforge.net/mailarchive/forum.php?forum_name=archive-access-discuss&amp;max_rows=25&amp;style=ultimate&amp;viewmonth=201202\r\n\r\nciao\r\n/raffaele
    (@atomotic)"
- id: 85378
  author: eric
  author_email: ''
  author_url: http://epugh.myopenid.com/
  date: '2012-05-04 16:23:48 +0000'
  date_gmt: '2012-05-04 23:23:48 +0000'
  content: The Archive is really focused on collecting the data, and preserving it.  Much
    less focused on the dissemination of that information!  They do make the various
    datasets available to folks doing research, but they aren't interested in collecting
    data just to make it easier for the rest of the world to mine it for any old purpose.
- id: 85379
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2012-05-05 13:34:30 +0000'
  date_gmt: '2012-05-05 20:34:30 +0000'
  content: "@atomotic thanks for the info regarding the setup of that XML response.
    It's surprising that there's no information about it. Perhaps I'll ask someone
    at the British Library if they found a knob to turn, or did it custom themselves.\r\n\r\n@eric
    I'm not really sure I agree with your distinguishing between preservation and
    dissemination. It seems like a pretty rudimentary task to be able to say if a
    given URL is in the archive, and they currently do this. Are you working for the
    Internet Archive and are able to speak on their behalf?"
- id: 85380
  author: Gordon Mohr
  author_email: gojomo-inkdroid@xavvy.com
  author_url: http://memesteading.com/
  date: '2012-05-05 15:05:24 +0000'
  date_gmt: '2012-05-05 22:05:24 +0000'
  content: "Hi!\r\n\r\nThe behavior of a Wayback installation is controlled via the
    (Spring 2.5 XML) configuration that sets up its 'access points' and 'renderers'
    from among the available choices. If you start from the included example 'wayback.xml'...\r\n\r\nhttps://github.com/internetarchive/wayback-machine/blob/master/wayback/wayback-webapp/src/main/webapp/WEB-INF/wayback.xml#L183\r\n\r\n...that
    \"org.archive.wayback.query.Renderer\" should offer the sort of XML results described
    above. That is, unless you've done something else to remove/change the expected/default
    XML-related JSPs, as mentioned at...\r\n\r\nhttp://archive-access.sourceforge.net/projects/wayback/administrator_manual.html#Query_UI\r\n\r\n...and
    reviewable in the source as the last two files in the subdirectory...\r\n\r\nhttps://github.com/internetarchive/wayback-machine/blob/master/wayback/wayback-webapp/src/main/webapp/WEB-INF/query/\r\n\r\nSo
    if you're working from a recent 'wayback' and haven't intentionally (or inadvertently)
    disabled this, or perhaps filtered out access (by URL patterns?) in some intervening
    layer, this style of access should be available from your Wayback install. \r\n\r\n-
    Gordon (oftentimes-contributor to web archive.org)"
- id: 85383
  author: google.com/accounts/o8&hellip;
  author_email: raffaele.messuti@gmail.com
  author_url: https://www.google.com/accounts/o8/id?id=AItOawlwAIsdKcHJGYmWov34EWuNLE4MsGNoUtY
  date: '2012-05-07 05:22:12 +0000'
  date_gmt: '2012-05-07 12:22:12 +0000'
  content: "thank you Gordon,\r\nbut is still not so clear, could you point me at
    a working examples?\r\n\r\nafter add/modify the bean org.archive.wayback.query.Renderer,
    where i define the route of this new renderer? web.xml ?\r\nsorry, but java is
    an obscure beast to me.\r\nciao\r\n\r\n/raffaele"
- id: 85384
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2012-05-08 05:14:01 +0000'
  date_gmt: '2012-05-08 12:14:01 +0000'
  content: Some of this discussion has moved over to a <a href="https://sourceforge.net/mailarchive/message.php?msg_id=29228547"
    rel="nofollow">thread</a> on the Wayback discussion list.
- id: 85385
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2012-05-08 05:29:58 +0000'
  date_gmt: '2012-05-08 12:29:58 +0000'
  content: "@atomotic wrote on Twitter:\r\n\r\n<blockquote>\r\non wayback and xml,
    it was not difficult. i should have read carefully the manual. <a href=\"http://gist.github.com/2634523\"
    rel=\"nofollow\">gist.github.com/2634523</a> ciao ;)\r\n</blockquote>"
- id: 85481
  author: anjackson
  author_email: anj@anjackson.net
  author_url: ''
  date: '2012-11-22 09:34:45 +0000'
  date_gmt: '2012-11-22 16:34:45 +0000'
  content: "Although we've been looking at serving from HDFS for a while, we're only
    just now moving this into production (http://britishlibrary.typepad.co.uk/webarchive/2012/11/upgrading-the-wayback-machine.html).
    \r\n\r\nPlease note that this will also change the way we expose the XML API,
    making things more consistent with other Wayback deployments. Specifically, the
    API calls will look like this once we are live:\r\n\r\nwww.webarchive.org.uk/wayback/archive/xmlquery.jsp?url=http://www.bl.uk/"
---

<p>For some experimental work I've been talking about with <a href="http://twitter.com/nullhandle">Nicholas Taylor</a> (his idea, which he or I will write about later if it pans out) I've gotten interested in programmatic ways of seeing when a URL is available in a <a href="http://en.wikipedia.org/wiki/Web_archiving">web archive</a>. Of course there is the <a href="http://archive.org">Internet Archive</a>'s collection; but what isn't as widely known perhaps is that web archiving is going on around the world at a smaller scale, often using similar software, and often under the auspices of the <a href="http://web.archive.org/web/20120831153724/http://netpreserve.org:80/about/index.php">International Internet Preservation Consortium</a>.</p>
<p>Nicholas pointed me at some <a href="http://code.google.com/p/memento-server/source/browse/trunk/proxies/<br />
">work</a> around Memento, which provides a proxy-like API in front of some web archives. If you aren't already familiar with it, <a href="http://www.mementoweb.org/guide/quick-intro/">Memento</a> is some machinery, or a REST API for deterimining when a given URL is available in a Web Archive--which is pretty useful. Of course, like many standardization efforts it relies on people actually implementing it. For Web Architecture folks, the core idea in Memento is pretty simple; but I think its core simplicity may be obscured from software developers who need to fully digest the <a href="http://www.mementoweb.org/guide/rfc/ID/">spec</a> in order to say they "do" Memento.</p>
<p>Meanwhile a lot of web archives have used the <a href="http://en.wikipedia.org/wiki/Wayback_Machine">Wayback Machine</a> from the <a href="http://archive.org">Internet Archive</a> to provide a human interface to the archived web content. While looking at the <a href="http://code.google.com/p/memento-server/source/browse/#svn%2Ftrunk%2Fproxies">memento-server code</a> I was surprised to learn that the Wayback can also return structured data about what URLs have been archived. For example, you can see what content the Internet Archive has for the New York Times homepage by visiting:</p>
<pre>
<a href="http://wayback.archive.org/web/xmlquery?url=http://www.nytimes.com">http://wayback.archive.org/web/xmlquery?url=http://www.nytimes.com</a>
</pre>
<p>which returns a chunk of XML like:</p>
<pre lang="xml">
< ?xml version="1.0" encoding="UTF-8"?>
<wayback>
  <request>
    <startdate>19960101000000</startdate>
    <numreturned>4425</numreturned>
    <type>urlquery</type>
    <enddate>20120503151837</enddate>
    <numresults>4425</numresults>
    <firstreturned>0</firstreturned>
    <url>nytimes.com/</url>
    <resultsrequested>40000</resultsrequested>
    <resultstype>resultstypecapture</resultstype>
  </request>
  <results>
    <result>
      <compressedoffset>68043717</compressedoffset>
      <mimetype>text/html</mimetype>
      <file>IA-001766.arc.gz</file>
      <redirecturl>-</redirecturl>
      <urlkey>nytimes.com/</urlkey>
      <digest>GY3</digest>
      <httpresponsecode>200</httpresponsecode>
      <url>http://www.nytimes.com:80/</url>
      <capturedate>19961112181513</capturedate>
    </result>
    <result>
      <compressedoffset>8107</compressedoffset>
      <mimetype>text/html</mimetype>
      <file>BK-000007.arc.gz</file>
      <redirecturl>-</redirecturl>
      <urlkey>nytimes.com/</urlkey>
      <digest>GY3</digest>
      <httpresponsecode>200</httpresponsecode>
      <url>http://www.nytimes.com:80/</url>
      <capturedate>19961121230155</capturedate>
    </result>
    ...
  </results>
</wayback>
</pre>
<p>Sort of similarly you can see what the British Library's <a href="http://www.webarchive.org.uk/ukwa/">Web Archive</a> has for the BBC homepage by visiting:</p>
<pre>
<a href="http://www.webarchive.org.uk/wayback/archive/*/http://www.bbc.co.uk">http://www.webarchive.org.uk/wayback/archive/*/http://www.bbc.co.uk/</a>
</pre>
<p>Where you will see:</p>
<pre lang="xml">
< ?xml version="1.0" encoding="UTF-8"?>
<wayback>
  <request>
    <startdate>19910806145620</startdate>
    <numreturned>201</numreturned>
    <type>urlquery</type>
    <enddate>20120503152750</enddate>
    <numresults>201</numresults>
    <firstreturned>0</firstreturned>
    <url>bbc.co.uk/</url>
    <resultsrequested>10000</resultsrequested>
    <resultstype>resultstypecapture</resultstype>
  </request>
  <results>
    <result>
      <compressedoffset>75367408</compressedoffset>
      <mimetype>text/html</mimetype>
      <file>BL-196764-0.warc.gz</file>
      <redirecturl>-</redirecturl>
      <urlkey>bbc.co.uk/</urlkey>
      <digest>sha512:b155b8dd868c17748405b7a8d2ee3606efea1319ee237507055f258189c0f620c38d2c159fc4e02211c1ff6d265f45e17ae7eb18f94a5494ab024175fe6f79c3</digest>
      <httpresponsecode>200</httpresponsecode>
      <url>http://www.bbc.co.uk/</url>
      <capturedate>20080410162445</capturedate>
    </result>
    <result>
      <compressedoffset>92484146</compressedoffset>
      <mimetype>text/html</mimetype>
      <file>BL-7307314-46.warc.gz</file>
      <redirecturl>-</redirecturl>
      <urlkey>bbc.co.uk/</urlkey>
      <digest>sha512:6e37c62b3aa7b60cccc50d430bc7429ecf0d2662bca5562b61ba0bc1027c824a2f7526c747bfca52db46dba5a2ae9c9d96d013e588b2ae5d78188ea4436c571f</digest>
      <httpresponsecode>200</httpresponsecode>
      <url>http://www.bbc.co.uk/</url>
      <capturedate>20080527231330</capturedate>
    </result>
    ...
  </results>
</wayback>
</pre>
<p>It turns out British Library are <a href="http://britishlibrary.typepad.co.uk/webarchive/2012/01/techtalk-wayback-hdfs.html">using</a> this structured data to access data from Hadoop where their web archives live on HDFS as <a href="http://www.digitalpreservation.gov/formats/fdd/fdd000236.shtml">WARC</a> files--which is pretty slick. Actually WARCs on spinning disk is pretty awesome by itself, no matter how you are doing it.</p>
<p>Unfortunately I wasn't able to make it to the International Internet Preservation Consortium <a href="http://web.archive.org/web/20120703040141/http://netpreserve.org:80/events/2012ga.php">meeting</a> going on right now at the Library of Congress. I'm at home heating bottles, changing diapers, and dozing off in comfy chairs with a boppy around my waist. If I was there I think I would be asking:</p>
<ol>
<li>Is there a list of Wayback Machine endpoints that are on the Web? There are multiple ones at the California Digital Library, the Library of Congress, and elsewhere I bet.</li>
<li>How many of them are configured to make this XML data available? Can it easily be turned on for those that don't have it?</li>
<li>Rather than requiring people to implement a new standard to improve interoperability, could we document the XML format that Wayback can already emit, and share the endpoints? This way web archives that don't run Heretrix and Wayback could also share what content they have collected in the same community.</li>
</ol>
<p>This isn't to say that Memento isn't a good idea (I think it is). I just think there might be some quick wins to be had by documenting and raising awareness about things that are already working away quietly behind the scenes. Perhaps the list of Wayback endpoints could be added to the <a href="http://en.wikipedia.org/wiki/Wayback_Machine">Wikipedia page</a>?</p>
<p>Ok, enough for now. I have a bottle to heat up :-)</p>
