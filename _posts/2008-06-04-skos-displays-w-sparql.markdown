---
layout: post
status: publish
published: true
title: SKOS displays w/ SPARQL
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 202
wordpress_url: http://inkdroid.org/journal/?p=202
date: '2008-06-04 06:10:03 +0000'
date_gmt: '2008-06-04 13:10:03 +0000'
tags:
- rdf
- skos
- sparql
comments: []
---
<p>I'm just in the process of getting my head around <a href="http://www.w3.org/TR/rdf-sparql-query/">SPARQL</a> a bit more. At $work, Clay and I ran up against a situation where we wanted a query that would return a subgraph from an entire SKOS concept scheme for any assertions involving a particular concept URI as the subject. Easy enough right?</p>
<pre>
  DESCRIBE &lt;http://lcsh.info/sh96010624#concept&gt;
</pre>
<p>The thing is, for human readable displays we don't want to display the URIs for related concepts (skos:broader, skos:narrower or skos:related) ... we want to display the nice skos:prefLabel for them. Something akin to:</p>
<p>  <img src="http://inkdroid.org/images/ethnoscience.png" /></p>
<p>So how can we get a subgraph for a concept as well as any concept that might be directly related to it, in a single query? We came up with the following but I'd be interested in more elegant solutions:</p>
<pre>
PREFIX skos: &lt;http://www.w3.org/2004/02/skos/core#&gt;

CONSTRUCT {&lt;http://lcsh.info/sh96010624#concept&gt; ?p1 ?o1. ?s2 ?p2 ?o2}
WHERE
{
    {&lt;http://lcsh.info/sh96010624#concept&gt; ?p1 ?o1.}
    UNION 
    {
        {&lt;http://lcsh.info/sh96010624#concept&gt; skos:narrower ?s2.}
        {?s2 ?p2 ?o2.}
    }
    UNION
    { 
        {&lt;http://lcsh.info/sh96010624#concept&gt; skos:broader ?s2.}
        {?s2 ?p2 ?o2.}
    }
    UNION
    { 
        {&lt;http://lcsh.info/sh96010624#concept&gt; skos:related ?s2.}
        {?s2 ?p2 ?o2.}
    }           
}
</pre>
<p>The above ran quite nicely in my <a href="http://arc.semsol.org/">Arc</a> playground. Any suggestions or ideas on how to boil this down would be appreciated. I also wanted to jot this query in the likely event that I forget how I did it.</p>
