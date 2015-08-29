---
layout: post
status: publish
published: true
title: lcsh.info SPARQL endpoint
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 207
wordpress_url: http://inkdroid.org/journal/?p=207
date: '2008-07-07 07:45:46 +0000'
date_gmt: '2008-07-07 14:45:46 +0000'
tags:
- rdf
- sparql
- lcsh
- semweb
- php
comments:
- id: 66332
  author: Bruce D'Arcus
  author_email: bdarcus@gmail.com
  author_url: ''
  date: '2008-07-07 16:26:13 +0000'
  date_gmt: '2008-07-07 23:26:13 +0000'
  content: Would be nice if it was almost as easy to setup an endpoint with rdflib
    for those of us not exactly thrilled with using php. Will be curious see what
    you come up with.
- id: 70943
  author: Alistair
  author_email: alistair.rutherford@gmail.com
  author_url: http://www.netthreads.co.uk
  date: '2008-08-18 05:36:01 +0000'
  date_gmt: '2008-08-18 12:36:01 +0000'
  content: "Ed, As part of testing a Flex app I have developed which queries SPARQL
    endpoints I have pointed it at your endpoint. \r\n\r\nYou can see a demo of it
    here:\r\n\r\nhttp://ccgi.arutherford.plus.com/website/flex/dbPedia/fb3/sparqlQueryViewer/#\r\n\r\nAnyway,
    I am stuck in the first simple query. The format I request back is XML. The XML
    comes back but the parser throws an error because there appears to be some strange
    characters tagged onto the result. Specifically the number 0 and a bunch of spaces.\r\n\r\nYou
    can test this your self by pulling sticking this proxy request into IE:\r\n\r\nhttp://ccgi.arutherford.plus.com/cgi-bin/sparql-proxy-al.cgi?format=application%2Fsparql%2Dresults%2Bxml&amp;query=PREFIX%20skos%3A%20%3Chttp%3A%2F%2Fwww%2Ew3%2Eorg%2F2004%2F02%2Fskos%2Fcore%23%3E%20%0D%0ASELECT%20%3Fs%20%3Fp%20%3Fo%20%0DWHERE%20%7B%20%0D%20%20%3Fs%20%3Fp%20%3Fo%20%2E%20%0D%20%20%3Fs%20skos%3AprefLabel%20%27Buddhism%27%40en%20%2E%20%0D%7D%20%0D%20LIMIT%2040&amp;url=http%3A%2F%2Fsparql%2Elcsh%2Einfo%2F\r\n\r\n\r\nJust
    paste it in as is.\r\n\r\nAll the best,\r\nAl."
- id: 70956
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2008-08-18 08:51:50 +0000'
  date_gmt: '2008-08-18 15:51:50 +0000'
  content: Alistair, I upgraded to the latest version of <a href="http://arc.semsol.org/download"
    rel="nofollow">Arc</a> and this bug went away. Thanks for letting me know about
    it!
---
<p><em>disclaimer: <a href="http://web.archive.org/web/20130812145007/http://lcsh.info/">lcsh.info</a> was a prototype, and is no longer available, see <a href="http://id.loc.gov">id.loc.gov</a> for the service from the <a href="http://id.loc.gov">Library of Congress</a></em></p>
<p><a href="http://arc.semsol.org/"><img src="http://inkdroid.org/images/arc.gif" style="float: left; margin-right: 10px; border: 0;" /></a> I've set up a <a href="http://en.wikipedia.org/wiki/SPARQL">SPARQL endpoint</a> for <a href="http://web.archive.org/web/20130812145007/http://lcsh.info/">lcsh.info</a> at <a href="http://web.archive.org/web/20090316095546/http://sparql.lcsh.info:80/?">sparql.lcsh.info</a>. If you are new to SPARQL endpoints, they are essentially REST web services that allow you to query a pool of RDF data using a query language that combines features of pattern matching, set logic and the web, and then get back results in a variety of formats. If you are a regular expression and/or SQL junkie, and like data, then SPARQL is definitely worth taking a look at.</p>
<p>If you are new to SPARQL and/or LCSH as SKOS you can try the default query and you'll <a href="http://sparql.lcsh.info/?query=SELECT+%3Fs+%3Fp+%3Fo+WHERE+0D%0A++%3Fs+%3Fp+%3Fo+.%0D%0A}%0D%0ALIMIT+10%0D%0A++++++++++++&output=htmltab&jsonp=&key=">get back</a> the first 10 triples in the triple store:</p>
<pre>
SELECT ?s ?p ?p 
WHERE {?s ?p ?o}
LIMIT 10
</pre>
<p>As a first tweak try increasing the limit to 100. If you are feeling more adventurous perhaps you'd like to look up all the triples for a concept like <a href="http://sparql.lcsh.info/?query=PREFIX+skos%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2004%2F02%2Fskos%2Fcore%23%3E%0D%0A%0D%0ASELECT+%3Fs+%3Fp+%3Fo+WHERE+0D%0A++%3Fs+%3Fp+%3Fo+.%0D%0A++%3Fs+skos%3AprefLabel+%22Buddhism%22%40en+.%0D%0A}%0D%0ALIMIT+3000%0D%0A%0D%0A++++++++++++&output=htmltab&jsonp=&key">Buddhism</a>:</p>
<pre>
PREFIX skos: &lt;http://www.w3.org/2004/02/skos/core#&gt;

SELECT ?s ?p ?o 
WHERE {
  ?s ?p ?o .
  ?s skos:prefLabel "Buddhism"@en .
}
</pre>
<p>Or, perhaps you are interested in seeing what <a href="http://sparql.lcsh.info/?query=PREFIX+skos%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2004%2F02%2Fskos%2Fcore%23%3E%0D%0A%0D%0ASELECT+%3Fnarrower+%3Flabel+WHERE+0D%0A++%3Chttp%3A%2F%2Flcsh.info%2Fsh85017454%23concept%3E+skos%3Anarrower+%3Fnarrower+.%0D%0A++%3Fnarrower+skos%3AprefLabel+%3Flabel%0D%0A}%0D%0A++++++++++++&output=htmltab&jsonp=&key=">narrower terms</a> there are for Buddhism:</p>
<pre>
PREFIX skos: &lt;http://www.w3.org/2004/02/skos/core#&gt;

SELECT ?uri ?label 
WHERE {
  &lt;http://lcsh.info/sh85017454#concept&gt; skos:narrower ?uri .
  ?uri skos:prefLabel ?label
}
</pre>
<p>Or maybe you don't know the skos:prefLabel (aka authorized heading), so look for all the lcsh headings that start with <a href="http://sparql.lcsh.info/?query=PREFIX+skos%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2004%2F02%2Fskos%2Fcore%23%3E%0D%0A%0D%0ASELECT+%3Fs+%3Flabel++WHERE+0D%0A++%3Fs+skos%3AprefLabel+%3Flabel.%0D%0A++FILTER+regex(%3Flabel%2C+%27^independence%27%2C+%27i%27)%0D%0A}%0D%0A%0D%0A++++++++++++&output=htmltab&jsonp=&key=">Independence</a></p>
<pre>
PREFIX skos: &lt;http://www.w3.org/2004/02/skos/core#&gt;

SELECT ?s ?label  
WHERE {
  ?s skos:prefLabel ?label.
  FILTER regex(?label, '^independence', 'i')
}

</pre>
<p>Feel free to use the service however you want. I'm interested in seeing what its limitations are.</p>
<p><a href="http://bnode.org/">Benjamin Nowack's</a> <a href="http://arc.semsol.org/">ARC</a> made it extremely easy to load up the 2,441,494 LCSH triples in a few hours with a script like:</p>
<pre lang="php">
include_once('arc/ARC2.php');

$config = array(
    'db_name'               => 'arc',
    'db_user'               => 'arc',
    'db_pwd'                => 'notapassword',
    'store_name'            => 'lcsh',
    'store_log_inserts'     => 1,
);

$store = ARC2::getStore($config);

if (!$store->isSetup()) {
    $store->setUp();
}

$store->reset();
$rs = $store->query('LOAD &lt;http://lcsh.info/static/lcsh.nt&gt;');

print_r($rs);
</pre>
<p>Then it's just a simple matter of putting up a php script like:</p>
<pre lang="php">
/* ARC2 static class inclusion */
include_once('arc/ARC2.php');

/* MySQL and endpoint configuration */
$config = array(
  /* db */
  'db_host' => 'localhost', /* optional, default is localhost */
  'db_name' => 'arc',
  'db_user' => 'arc',
  'db_pwd' => 'fakepassword',

  /* store name */
  'store_name' => 'lcsh',


  /* endpoint */
  'endpoint_features' => array(
    'select', 'construct', 'ask', 'describe'
  ),
  'endpoint_timeout' => 60, /* not implemented in ARC2 preview */
  'endpoint_read_key' => '', /* optional */
  'endpoint_write_key' => 'fakekey', /* optional */
  'endpoint_max_limit' => 1000, /* optional */
);

/* instantiation */
$ep = ARC2::getStoreEndpoint($config);

/* request handling */
$ep->go();
</pre>
<p>Ideally I would've been able to quickly bring up a SPARQL endpoint on top of the <a href="http://rdflib.net/">rdflib</a> Sleepycat triple store that is being used to serve up the linked data at <a href="http://web.archive.org/web/20130812145007/http://lcsh.info/">lcsh.info</a>. But rather that pursuing elegance (this is kinda side work after all), I wanted to quickly put the SPARQL service out there for experimentation, and this was the quickest way for me to do that. If the service proves useful I'll look more at what it takes to create an rdflib SPARQL service, or porting over the little python code I have to php (gasp).</p>
