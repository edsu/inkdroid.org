---
layout: post
status: publish
published: true
title: lcsh, thesauri and skos
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 184
wordpress_url: http://inkdroid.org/journal/2008/01/23/lcsh-thesauri-and-skos/
date: '2008-01-23 07:46:29 +0000'
date_gmt: '2008-01-23 14:46:29 +0000'
tags:
- skos-semweb-rdf-lcsh-metadata-libraries-thesarui
comments:
- id: 52231
  author: John Cowan
  author_email: cowan@ccil.org
  author_url: http://www.ccil.org/~cowan
  date: '2008-01-23 08:56:05 +0000'
  date_gmt: '2008-01-23 15:56:05 +0000'
  content: "I believe that transitivity is not really essential here: the fundamental
    issue is class inclusion vs. prototypes.  For example, is \"stone lion\" a hyponym
    of \"lion\"?  If we say no, we are hard put to it to understand what the relationship
    is; if we say yes, we have to abandon such obvious facts about lions as that they
    are made out of meat (hat tip to Terry Bisson here) and that they have parents
    that are also lions.   Similar issues arise over \"teddy bear\" and \"bear\",
    \"ostrich\" and \"bird\", and \"T-girl\" and \"girl\" :-).\r\n\r\nIf on the other
    hand we treat \"lion\" as a prototype category, then it's easy to see that stone
    lions are lions that simply lack some of the prototypical lion properties while
    preserving others such as the mane, the tail, the jaws, and the pugnacious expression.\r\n\r\nThe
    OO version of this problem has people deriving a ColoredPoint or 3DPoint class
    directly from a (2D, colorless) Point class, because it's easy to add just one
    instance variable, though it should be obvious that a 3D point is not a 2D point.
    \ Instead, both should be derived from AbstractPoint, a class that is uncommitted
    to issues of dimensionality and color.  Similarly we could have \"abstract lion\"
    as the hypernym of both \"meat lion\" and \"stone lion\".  But then how much do
    we factor out?  It's impossible to say a priori.  By having a lion prototype object,
    we can clone it several times to create real or stone lions as appropriate by
    overriding prototype properties.\r\n\r\nAnd yet.  Class inclusion is so handy
    when it does work, so powerful and expressive, it's hard to think of abandoning
    it altogether."
- id: 52345
  author: Graham Fawcett
  author_email: graham.fawcett@gmail.com
  author_url: http://fawcett.blogspot.com
  date: '2008-01-24 08:15:39 +0000'
  date_gmt: '2008-01-24 15:15:39 +0000'
  content: "Spot-on, John.\r\n\r\nCocktails aside, \"alcoholic beverages\" and \"non-alcoholic
    beverages\" are clearly disjoint sets, can this be exploited somehow?\r\n\r\nThe
    fact that \"non-alcoholic cocktails\" has a path (indirectly) to both might be
    used to derive a score for edges in the graph, hinting at how strict the parental
    relationships are. We can derive from your graph that \"cocktails share many properties
    of alcoholic drinks, but not all of them\", and this could be presented as an
    annotation on the edge between cocktails and alcoholic beverages.\r\n\r\nA simple
    score model might be to count the number of edges in a node's subtree which link
    to a peer of the current node, and apply this value to the edge connecting the
    current node to its parent. The distance of the subnode from the current node
    should probably be factored into the score. So, cocktails-to-alcoholic beverages
    might get a weight of 0.5, since it has a child that refers to Non-alcoholic beverages.
    \r\n\r\nI'm not a graph expert by any means, and this weighting approach may be
    naive, but at least it is something that can be derived programatically, and can
    be presented visually (e.g. the thickness of the edges could depend on their scores),
    and that might help others in studying relationships in the graph, especially
    when viewing subgraphs like the one in your post. (For example, \"Beer\" isn't
    on the graph, but its influence could be implied by edge annotation.)"
- id: 52366
  author: Jakob
  author_email: jakob.voss@gbv.de
  author_url: http://jakoblog.de
  date: '2008-01-24 11:15:52 +0000'
  date_gmt: '2008-01-24 18:15:52 +0000'
  content: You stubled upon the classical <a href="http://en.wikipedia.org/wiki/Diamond_problem"
    rel="nofollow">diamond problem</a> of object oriented knowledge modelling. Just
    forget about transivity and secondary differences between IS-A and HAS-A. In a
    general thesaurus there is only a broader/narrower relationship, everything else
    depends on your specific use case and can be discussed.
- id: 52372
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2008-01-24 12:24:47 +0000'
  date_gmt: '2008-01-24 19:24:47 +0000'
  content: "Thanks for the helpful comments John, Graham and Jakob. I agree, I kind
    of muddied the waters focusing on transitivity in this post. The distinction between
    class inclusion vs prototypes is what I was after, and I appreciate the clarification.\r\n\r\nThe
    good news is there is nothing preventing SKOS from being extended in a way to
    capture these two specializations of skos:broader...the bad news is that, well
    you have to extend SKOS, and multiple communities might do it totally differently.
    This is the double-edged sword of trying to serve multiple communities.\r\n\r\nGraham,
    if memory serves Alistair Miles' <a href=\"http://isegserv.itd.rl.ac.uk/retrieval/\"
    rel=\"nofollow\">thesis</a> contains some details about the weighting of links
    between concepts along similar lines to what you suggested. I'm not a graph expert
    either, so these suggestions are most welcome."
- id: 52379
  author: Jonathan Rochkind
  author_email: rochkind@jhu.edu
  author_url: http://bibwild.wordpress.com
  date: '2008-01-24 13:40:28 +0000'
  date_gmt: '2008-01-24 20:40:28 +0000'
  content: Nice embedded COinS! One click, and I'm reading Dykstra's article. SO COOL.
- id: 52380
  author: Jonathan Rochkind
  author_email: rochkind@jhu.edu
  author_url: http://bibwild.wordpress.com
  date: '2008-01-24 13:44:31 +0000'
  date_gmt: '2008-01-24 20:44:31 +0000'
  content: "And, damn. \r\n\r\nDykstra says \"We librarians have lived with LCSH as
    a liability for a long time. The matter now, however, must no longer be lived
    with, for it has become a professional disgrace.\"\r\n\r\nOUCH. She said that
    in 1988. Read her essay. Pretty much everything she complains about is still with
    us 20 years later. 20 YEARS.  That's an awful long time to still be living with
    what Dykstra was not afraid to call a professional disgrace. Ouch ouch ouch."
- id: 52420
  author: Graham Fawcett
  author_email: graham.fawcett@gmail.com
  author_url: http://fawcett.blogspot.com/
  date: '2008-01-24 20:55:49 +0000'
  date_gmt: '2008-01-25 03:55:49 +0000'
  content: Thanks for the link to Miles' paper, Ed, it looks interesting.
- id: 59654
  author: Nodalities &raquo; Blog Archive &raquo; This Week&#8217;s Semantic Web
  author_email: ''
  author_url: http://web.archive.org/web/20100807213341/http://blogs.talis.com:80/nodalities/2008/02/this_weeks_semantic_web_29.php
  date: '2008-04-17 10:08:27 +0000'
  date_gmt: '2008-04-17 17:08:27 +0000'
  content: |
    <p>[...] lcsh, thesauri and skos [...]</p>
---

<p><a href="http://www.ibiblio.org/fred2.0/wordpress/?p=20">Simon Spero</a> has an interesting post on why LCSH cannot be considered a thesaurus. At $work I've been working on mapping <a href="http://www.loc.gov/marc/authority/">LCSH/MARC</a> to <a href="http://www.w3.org/2004/02/skos/">SKOS</a>, so Simon's efforts in both collecting and analyzing LCSH authority data have been extremely valuable. In particular <a href="http://lists.w3.org/Archives/Public/public-swd-wg/2007Dec/0076.html">Simon</a> and <a href="http://lists.w3.org/Archives/Public/public-swd-wg/2007Dec/0081.html">Leonard Willpower's</a> involvement with SKOS alerted me relatively early on to some of the problems that lie in store when thinking of LCSH in terms of a thesaurus.</p>
<p>The problem stems from very specific (standardized) notions of what thesauri are. <a href="http://www.niso.org/standards/resources/Z39-19-2005.pdf">Z39-19-2005</a> defines <em>broader</em> relationships in thesauri as being transitive. So if <em>a</em> has the broader term <em>b</em>, and <em>b</em> has the broader term <em>c,</em> then you can infer <em>a</em> has the broader term <em>c</em>.</p>
<p>Now consider the broader relationships (BT for those of you w/ the red books handy, or care to browse <a href="http://authorities.loc.gov">authorities.loc.gov</a> from the comfort of your chair) from the heading "Non-alcoholic cocktails":</p>
<p><img src="/images/non-alcoholic-cocktails.png" /></p>
<p>If broader relationships are to be considered transitive one is obliged to treat <em>Alcoholic beverages</em> as a broader term for <em>Non-alcoholic cocktails</em>. But clearly it's nonsense to consider a non-alcoholic cocktail a specialization of an alcoholic beverage. As Simon <a href="http://lists.w3.org/Archives/Public/public-swd-wg/2007Dec/0078.html">pointed out</a> the problem was recognized by Mary Dykstra soon after LCSH adopted terminology from the thesauri world (BT, NT, RT) in 1986. Her article, <em><span class="Z3988" title="ctx_ver=Z39.88-2004&amp;rft_val_fmt=info%3Aofi%2Ffmt%3Akev%3Amtx%3Ajournal&amp;rfr_id=info%3Asid%2Focoins.info%3Agenerator&amp;rft.genre=article&amp;rft.atitle=LC+Subject+Headings+Disguised+as+a+Thesaurus&amp;rft.title=Library+Journal&amp;rft.stitle=Library+Journal&amp;rft.issn=0363-0277&amp;rft.date=1988&amp;rft.volume=113&amp;rft.issue=4&amp;rft.spage=42&amp;rft.epage=46&amp;rft.aulast=Dykstra&amp;rft.aufirst=Mary&amp;rft.au=Mary+Dykstra">LC Subject Headings Disguised as a Thesaurus</span></em> describes the many difficulties of treating LCSH as a thesaurus. In the example above from LCSH the broader (BT) relationship is used for both hierarchical (IS-A) relationships, as well as part/whole (HAS-A) relationships. According to thesauri folks this is a no-no.</p>
<p>LCSH aside, the semantics of broader/narrower have been an <a href="http://www.w3.org/2006/07/SWD/track/issues/44">issue</a> for SKOS for a fair amount of time. <a href="http://www.cs.vu.nl/~guus/">Guus Schreiber</a> proposed a <a href="http://lists.w3.org/Archives/Public/public-swd-wg/2008Jan/0090.html">resolution</a>, which was just accepted at yesterday's SWD telecon. SKOS is trying to straddle several different worlds, enabling the representation of a range of knowledge organization systems from thesauri and taxonomies to subject heading lists, folksonomy and other controlled vocabularies. To remain flexible in this way, while still appealing to the thesaurus world a compromise was reached where the skos:broader and skos:narrower <a href="http://www.w3.org/2006/07/SWD/SKOS/reference/20080118#L1930">semantic relations</a> were declared to be sub-properties of two new properties: skos:broaderTransitive and skos:narrowerTransitive (respectively). Since transitivity is not inherited, SKOS can still be used by people who want to represent loose broader relationships (LCSH, and others). At the same time SKOS will allow vocabulary owners to infer transitive broader/narrower relationships across concepts. <em>Incidentally the <a href="http://www.w3.org/2006/07/SWD/SKOS/reference">SKOS Reference</a> was just approved yesterday as a W3C Working Draft, which is its first step along the way to hopefully becoming a Recommendation.</em></p>
<p>My pottering about with LCSH and SKOS has also illustrated the value in making links between concepts explicit. Modeling LCSH as a graph data structure (SKOS), where each concept has a unique identifier has been a simple and yet powerful step in working with the data. For example to generate the image above, I simply wrote a <a href="http://web.archive.org/web/20081011194200/http://inkdroid.org/svn/lcsh-skos/trunk/skos2dot">script</a> that transformed the <a href="http://inkdroid.org/data/non-alcoholic-cocktails.n3">subgraph</a> related to "Non-alcoholic cocktails" to a <a href="http://www.graphviz.org/">graphviz</a> dot file:</p>
<pre><code>
digraph G {
  rankdir = "BT"
  "Non-alcoholic cocktails" -> "Cocktails";
  "Alcoholic beverages" -> "Beverages";
  "Non-alcoholic beverages" -> "Beverages";
  "Cocktails" -> "Alcoholic beverages";
  "Non-alcoholic cocktails" -> "Non-alcoholic beverages";
  "Non-alcoholic beer" -> "Non-alcoholic beverages";
}
</code>
</pre>
<p>And then ran that through the graphviz dot utility:</p>
<pre>
<code>
% dot -T png non-alcoholic-cocktails.dot > non-alcoholic-cocktails.png
</code>
</pre>
<p>to generate the PNG file you see. It's my hope that making a richly linked graph like LCSH/SKOS available will enable not only enhanced use of the vocabulary, but also aid in creative, collaborative refactoring of the graph. I know that these issues are not new to LC, however tools that enable refactoring along the lines of what <a href="http://lists.w3.org/Archives/Public/public-swd-wg/2007Dec/0085.html">Margherita Sini</a> proposed for the cocktail problem above will only be possible in a world where the graph can easily be manipulated and, downstream applications (library catalogs, etc) can easily adapt to the changing concept scheme.</p>
