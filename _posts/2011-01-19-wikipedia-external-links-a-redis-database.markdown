---
layout: post
status: publish
published: true
title: 'wikipedia external links: a redis database'
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2855
wordpress_url: http://inkdroid.org/journal/?p=2855
date: '2011-01-19 08:47:15 +0000'
date_gmt: '2011-01-19 15:47:15 +0000'
tags:
- wikipedia
- urls
- dns
- redis
comments: []
---
<p>As part of my continued meandering <a href="https://github.com/edsu/linkypedia/wiki/linkypedia-v2">linkypedia v2</a> experiments I created a Redis database of high level statistics about host names and top-level-domain names in external links from Wikipedia articles. <a href="http://web.archive.org/web/20110201040356/http://tom.opiumfield.com:80/">Tom Morris</a> happened to <a href="http://twitter.com/tommorris/status/27717927000088576">mention</a> he has been loading the external links as well (thanks <a href="http://twitter.com/invisiblecomma/status/27735169200824321">Alf</a>), so I thought I'd make the <a href="http://inkdroid.org/data/wikipedia-extlinks.rdb" rel="nofollow">redis database dump</a> available to anyone that is interested in looking at it. If you want to give it a whirl try this out:</p>
<pre>
% wget http://inkdroid.org/data/wikipedia-extlinks.rdb
% sudo aptitude install redis-server
% sudo mv wikipedia-extlinks.rdb /var/lib/redis/dump.rdb
% sudo chown redis:redis /var/lib/redis/dump.rdb
% sudo /etc/init.d/redis-server restart
% sudo pip install redis # or easy_install (version in apt is kinda old)
% python 
Python 2.6.5 (r265:79063, Apr 16 2010, 13:57:41) 
[GCC 4.4.3] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import redis
>>> r = redis.Redis()
>>> r.zrevrange("hosts", 0, 25, True)
[('toolserver.org', 2360809.0), ('www.ncbi.nlm.nih.gov', 508702.0), ('dx.doi.org', 410293.0), ('commons.wikimedia.org', 408986.0), ('www.imdb.com', 398877.0), ('www.nsesoftware.nl', 390636.0), ('maps.google.com', 346997.0), ('books.google.com', 323111.0), ('news.bbc.co.uk', 214738.0), ('tools.wikimedia.de', 181215.0), ('edwardbetts.com', 168102.0), ('dispatch.opac.d-nb.de', 166322.0), ('web.archive.org', 165665.0), ('www.insee.fr', 160797.0), ('www.iucnredlist.org', 155620.0), ('stable.toolserver.org', 155335.0), ('www.openstreetmap.org', 154127.0), ('d-nb.info', 141504.0), ('ssd.jpl.nasa.gov', 137200.0), ('www.youtube.com', 133827.0), ('www.google.com', 131011.0), ('www.census.gov', 124182.0), ('www.allmusic.com', 117602.0), ('maps.yandex.ru', 114978.0), ('news.google.com', 102111.0), ('amigo.geneontology.org', 95972.0)]
>>> r.zrevrange("hosts:edu", 0, 25, True)
[('nedwww.ipac.caltech.edu', 28642.0), ('adsabs.harvard.edu', 25699.0), ('animaldiversity.ummz.umich.edu', 21747.0), ('www.perseus.tufts.edu', 20438.0), ('genome.ucsc.edu', 20290.0), ('cfa-www.harvard.edu', 14234.0), ('penelope.uchicago.edu', 9806.0), ('www.bucknell.edu', 8627.0), ('www.law.cornell.edu', 7530.0), ('biopl-a-181.plantbio.cornell.edu', 5747.0), ('ucjeps.berkeley.edu', 5452.0), ('plato.stanford.edu', 5243.0), ('www.fiu.edu', 5004.0), ('www.volcano.si.edu', 4507.0), ('calphotos.berkeley.edu', 4446.0), ('www.usc.edu', 4345.0), ('ftp.met.fsu.edu', 3941.0), ('web.mit.edu', 3548.0), ('www.lpi.usra.edu', 3497.0), ('insects.tamu.edu', 3479.0), ('www.cfa.harvard.edu', 3447.0), ('www.columbia.edu', 3260.0), ('www.yale.edu', 3122.0), ('www.fordham.edu', 2963.0), ('www.people.fas.harvard.edu', 2908.0), ('genealogy.math.ndsu.nodak.edu', 2726.0)]
>>> r.zrevrange("tlds", 0, 25, True)
[('com', 11368104.0), ('org', 7785866.0), ('de', 1857158.0), ('gov', 1767137.0), ('uk', 1489505.0), ('fr', 1173624.0), ('ru', 897413.0), ('net', 868337.0), ('edu', 793838.0), ('jp', 733995.0), ('nl', 707177.0), ('pl', 590058.0), ('it', 486441.0), ('ca', 408163.0), ('au', 387764.0), ('info', 296508.0), ('br', 276599.0), ('es', 242767.0), ('ch', 224692.0), ('us', 179223.0), ('at', 163397.0), ('be', 132395.0), ('cz', 92683.0), ('eu', 91671.0), ('ar', 89856.0), ('mil', 87788.0)]
>>> r.zscore("hosts", "www.bbc.co.uk")
56245.0
</pre>
<p>Basically there are a few sorted sets in there:</p>
<ul>
<li>"hosts": all the hosts sorted by the number of externallinks</li>
<li>"hosts:%s": where %s is a top level domain ("com", "uk", etc)</li>
<li>"tlds": all the tlds sorted by the number of externallinks</li>
<li>"wikipedia": the wikipedia langauges sorted by total number of externallinks</li>
</ul>
<p>I'm not exactly sure how portable redis databases are but I was able to move it between a couple Ubuntu machines and <a href="http://ryaneby.com/">Ryan</a> successfully looked at it on a Gentoo box he had available. You'll need roughly 300MB of RAM available. I must say I was impressed with redis and in particular sorted sets for this stats collection task. Thanks to <a href="http://chris.improbable.org/">Chris Adams</a> for pointing me in the direction of redis in the first place.</p>
