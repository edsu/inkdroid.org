---
layout: post
status: publish
published: true
title: google's map api
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 16
wordpress_url: http://www.inkdroid.org/journal/?p=16
date: '2005-06-29 18:58:15 +0000'
date_gmt: '2005-06-30 01:58:15 +0000'
tags: []
comments: []
---

<p><a href="http://web.archive.org/web/20110215085610/http://www.holovaty.com/images/2005-06-18_tribune_article.jpg">Adrian</a> pointed out at the last <a href="http://chipy.org">chipy</a> meeting that a formal API for GoogleMaps was in the works...but I had no idea it was <a href="http://www.google.com/apis/maps/">this</a> close.</p>
<p>After you've got an authentication key for your site directory, all you need to do to embed a map in your page is include a javascript library source URL directly from google, create a &lt;div&gt; tag with an id (say "map") and add some javascript to your page.</p>
<pre lang="javascript">
    var map = new GMap( document.getElementById("map") );
    map.addControl( new GSmallMapControl() );
    map.centerAndZoom( new GPoint(-88.316385,42.247090), 4);                                                                    
</pre>
<p>This took <a href="http://web.archive.org/web/20061012034456/http://www.inkdroid.org/google.html">literally</a> 2 minutes to do, if that. It's a bit tedious that the token is only good on a per-directory basis, but I guess this is because of partitioned blogging sites where different users have different directories with the same hostname.</p>
<p><i>update: I guess I'm not the only one who finds the per-directory limit to be kind of a <a href="http://groups-beta.google.com/group/Google-Maps-API/browse_thread/thread/a70d545eeed46d40/c7e8b0ad540232ae#c7e8b0ad540232ae">hassle</a>.</i></p>
