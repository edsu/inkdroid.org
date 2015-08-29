---
layout: post
status: publish
published: true
title: fascinating, hypnotic, inspirational, appalling, irrelevant
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 4050
wordpress_url: http://inkdroid.org/journal/?p=4050
date: '2011-12-06 23:36:00 +0000'
date_gmt: '2011-12-07 06:36:00 +0000'
tags:
- javascript
- node
- news
- twitter
- linode
comments: []
---
<p><a href="http://inkdroid.org/images/wikistream-tweeters.png"><img src="http://inkdroid.org/images/wikistream-tweeters-small.png"/ style="float: left; margin: 10px; width:50%;"/></a></p>
<p>Thanks to everyone that noticed the <a href="http://wikistream.inkdroid.org">Wikistream</a> coverage in the <a href="http://thenextweb.com/apps/2011/12/04/not-impressed-with-wikipedia-watch-all-of-its-activity-in-real-time/">NextWeb article</a> and elsewhere. If you happen to have tweeted about Wikistream in the last 2 days you should see your avatar to the left. Click on it to make it bigger. I'm in there somewhere too :-)</p>
<p>Before Sunday the site hadn't seen more than 180 unique visitors per day, and on Monday it saw almost 30,000. The site is kind of <a href="http://inkdroid.org/journal/2011/11/07/an-ode-to-node/">different</a> since it streams all the Wikipedia updates to the browser as JSON, where it is then displayed. I had some nail-biting moments as I watched <a href="http://nodejs.org">Node</a> frequently streaming up to 300 concurrent connections. It was a wild ride for my little <a href="http://www.linode.com/">Linode VPS</a> with 512MB of RAM, where <a href="http://inkdroid.org/journal">Wordpress</a> and a <a href="http://linkypedia.info">Django</a> website were also running...but it seemed to weather the storm OK. Mostly I think I could have used more RAM during peak usage when Node and Redis were wanting enough memory to cause the system to swap. Thanks to <a href="https://twitter.com/g5f">Gabe</a> and <a href="http://twitter.com/acdha">Chris</a> for helping me get the cache headers set right in <a href="http://expressjs.com/">Express</a>.</p>
<p>I thought briefly about upgrading to a larger Linode instance, putting the app on EC2, or maybe asking Wikimedia if they wanted to host it. But Wikistream is really more a piece of performance art than it is a useful website. I'm expecting people that have looked at Wikistream once will have seen how much Wikipedia is actively edited, and not feel compelled to look at it again. After a few days I expect the usage to plummet and it can go back to running comfortably on my little Linode VPS to serve as a live prop in presentations about Wikipedia, crowd-sourcing, Web culture, etc.</p>
<p>One of my favorite mentions of Wikistream came from Nat Torkington's <a href="http://radar.oreilly.com/2011/12/four-short-links-5-december-20.html">Four Short Links</a> on O'Reilly Radar. Nat described Wikistream as</p>
<blockquote><p>
 fascinating and hypnotic and inspirational and appalling and irrelevant all at once
</p></blockquote>
<p>I took this as high-praise of course. I could only get the last two days out of Twitter's <a href="https://dev.twitter.com/docs/api/1/get/search">search API</a>, which misses the day that the NextWeb article appeared, followed by it getting picked up on <a href="http://news.ycombinator.com/item?id=3311612/">Hacker News</a>. But it was 226 tweets, and provided for a fun little data set to look at. I wrote a little script to look for URLs in the tweets, unshorten them and come up with a list of web pages that mentioned Wikistream in the past few days. One thing that was really interesting to me was the predominance of non-English websites. Here's a list of some of them if you are interested.</p>
<ul>
<li><a href="http://br.wwwhatsnew.com/2011/12/a-atividade-de-wikipedia%E2%80%A6-em-tempo-real/">A atividade de Wikipedia… em tempo real</a></li>
<li><a href="http://erreurs404.net/blog/Erreurs404.net-Partageons-plus-que-des-erreurs/wikipedia-voir-les-changements-en-temps-reel.html?utm_source=twitterfeed&utm_medium=twitter">Wikipedia // Voir les changements en temps réel | Erreurs404.net - Partageons plus que des erreurs | Erreurs404.net</a></li>
<li><a href="http://fr.appy-geek.com/Web/ArticleWeb3.aspx?regionid=2&articleid=1662476">Appy Geek</a></li>
<li><a href="http://web.archive.org/web/20111209034027/http://huscftc.wordpress.com:80/2011/12/06/wikistream-ou-le-flux-de-wikipedia-en-temps-reel/">Wikistream ou le flux de Wikipédia en temps réel</a></li>
<li><a href="http://networkedblogs.com/r7ZkL">Wikistream, El stream de Wikipedia en tiempo real</a></li>
<li><a href="http://news.geek.com.br/posts/18442-site-monitora-as-atividades-na-wikipedia-em-tempo-real?utm_source=twitterfeed&utm_medium=twitter">Geek | Site monitora as atividades na Wikipedia em tempo real</a></li>
<li><a href="http://redlight.blog.over-blog.com/article-wikistream-pour-constater-des-maj-d-articles-de-wikipedia-91357280.html">Wikistream, pour constater des MàJ d’articles de Wikipedia - Geekerie</a></li>
<li><a href="http://revdev.mx/index.php/Internet/wikistream-asi-se-ve-la-edicion-de-wikipedia-en-tiempo-real.html?utm_source=feedburner&utm_medium=twitter&utm_campaign=Feed%3A+revdev%2FGLeV+%28Blog+de+Revdev%29">Wikistream: Así se vé la edición de Wikipedia en tiempo real | Internet</a></li>
<li><a href="http://seetio.com/blog/2011/12/06/wikistream-la-wikipedia-en-tiempo-real/">Wikistream | La Wikipedia en tiempo real</a></li>
<li><a href="http://tecnoark.com/wikistream-visualiza-las-actualizaciones-wikipedia-en-tiempo-real/12280/">Wikistream, visualiza las actualizaciones Wikipedia en tiempo real</a></li>
<li><a href="http://tecnologia.ig.com.br/site-monitora-as-atividades-na-wikipedia-em-tempo-real/n1597398578011.html?utm_source=twitterfeed&utm_medium=twitter">Site monitora as atividades na Wikipedia em tempo real - Tecnologia - iG</a></li>
<li><a href="http://thenextweb.com/apps/2011/12/04/not-impressed-with-wikipedia-watch-all-of-its-activity-in-real-time/">Watch Wikipedia Activity Stream In Real-Time</a></li>
<li><a href="http://wikilovesbieb.nl/?p=421">Wikistream: wijzigingen op Wikipedia volgen in real-time &laquo;  Wiki loves bieb</a></li>
<li><a href="http://www.actualitte.com/actualite/patrimoine-education/education-international/wikistream-pour-suivre-wikipedia-a-la-lettre-en-temps-reel-30307.htm">Wikistream, pour suivre Wikipedia à la lettre, en temps réel</a></li>
<li><a href="http://www.gadgets.es/wikistream-visualiza-actualizaciones-de-la-wikipedia-en-tiempo-real/?utm_source=feedburner&utm_medium=twitter&utm_campaign=Feed%3A+GadgetsesTecnologia+%28Gadgets.es+Tecnologia%29">Wikistream visualiza actualizaciones de la Wikipedia en tiempo real</a></li>
<li><a href="http://www.geek.com/articles/geek-cetera/wikistream-shows-off-the-unbelieveable-amount-of-work-that-goes-into-wikipedia-2011126/">Wikistream shows off the unbelieveable amount of work that goes into Wikipedia | Geek.com</a></li>
<li><a href="http://www.generation-nt.com/wikistream-temps-reel-modifications-wikipedia-actualite-1511461.html">Wikistream : l'activité Wikipédia en temps réel</a></li>
<li><a href="http://www.gizmodo.fr/2011/12/06/wikistream-ou-le-flux-de-wikipedia-en-temps-reel.html">Wikistream ou le flux de Wikipédia en temps réel | Gizmodo</a></li>
<li><a href="http://www.ideepercomputeredinternet.com/2011/12/wikistream-per-visualizzare-in-tempo.html?utm_source=twitterfeed&utm_medium=twitter&utm_campaign=Feed%3A+ComputerChePassione+%28computer+che+passione%29">Wikistream per visualizzare in tempo reale l&#39;attività di Wikipedia.</a></li>
<li><a href="http://www.journaldugeek.com/2011/12/05/wikistream/">Wikistream, pour constater des MàJ d&#8217;articles de Wikipedia</a></li>
<li><a href="http://web.archive.org/web/20120512074246/http://www.letelegraphe-k5.eu/article-le-flux-wikipedia-en-direct-vertige-des-tendances-sur-wikistream-91346825.html">Le flux Wikipedia en direct ... vertige des tendances sur Wikistream ! - Le Telegraphe - k5</a></li>
<li><a href="http://www.microsiervos.com/archivo/internet/velocidad-wikipedia.html">Editoriales, igualad esto: la velocidad de la Wikipedia | Microsiervos  (Internet)</a></li>
<li><a href="http://web.archive.org/web/20120109032518/http://www.monmag.com:80/2011/12/06/wikistream-le-flux-de-wikipedia-en-temps-reel/">  Wikistream : le flux de Wikipédia en temps réel</a></li>
<li><a href="http://www.omicrono.com/2011/12/los-cambios-de-la-wikipedia-en-tiempo-real-con-wikistream/">Los cambios de la Wikipedia en tiempo real con Wikistream &laquo;  Omicrono</a></li>
<li><a href="http://www.pizcos.net/2011/12/wikistream-el-stream-de-wikipedia-en.html">Wikistream, El stream de Wikipedia en tiempo real | Pizcos.net</a></li>
<li><a href="http://www.scoop.it/t/veille-culture-numerique/p/776757733/wikistream-ou-le-flux-de-wikipedia-en-temps-reel">Wikistream ou le flux de Wikip&eacute;dia en temps r&eacute;el | Veille &amp; Culture num&eacute;rique | Scoop.it</a></li>
<li><a href="http://www.tecnologiabit.com/wikistream-visualiza-actualizaciones-de-la-wikipedia-en-tiempo-real/">Wikistream visualiza actualizaciones de la Wikipedia en tiempo real</a></li>
<li><a href="http://www.ubergizmo.com/2011/12/wikistream/">Wikistream shows you Wikipedia real-time activity | Ubergizmo</a></li>
<li><a href="https://plus.google.com/108266160060580572072/posts/C1fXHUzvBvM">Aleksandar Petrovi? - Google+ - U ?lanku koji linkujem je opisan sajt wikistream na…</a></li>
</ul>
<p>OK, I'm finished with the narcissistic navel gazing for a bit. But seriously, thanks for the attention. I've never experienced anything like that before. Wow.</p>
