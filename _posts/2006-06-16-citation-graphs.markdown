---
layout: post
status: publish
published: true
title: citation graphs
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 104
wordpress_url: http://www.inkdroid.org/journal/?p=104
date: '2006-06-16 23:03:40 +0000'
date_gmt: '2006-06-17 06:03:40 +0000'
tags: []
comments: []
---
<p>JCDL2006 was chock-a-block full of good content. A set of papers presented on the first day in the <a href="http://jcdl2006.org/program/sessions/named-entities-1/">Named Entities</a> track explored a common theme of applying <a href="http://en.wikipedia.org/wiki/Graph_theory">graph theory</a> to citation networks in order to cluster works by the same author. For example an author name may appear as Daniel Chudnov, D Chudnov, Dan Chudnov. There is also a similar problem when two authors with the same name are actually two different people. Being able to group all the works by an author is very important for good search interfaces...and also for calculating citation counts and impact factors.</p>
<p>The most interesting paper in the bunch (for me) was <a href="http://eprints.ecs.soton.ac.uk/12704/">Also By The Same Author: AKTiveAuthor, A Citation Graph Approach To Name Disambiguation</a>. This paper revolves around the hypothesis that authors tend to cite their own works more frequently than others--so called 'self-citation'. Self-citation isn't the result of navel gazing or self-promotion so much as it is the result of researchers building on the work that they've done previously. In addition to self-citation graphs co-authorship and source URL graphs are also used to build a graph of a particular authors works.</p>
<p>The paper concludes some good precision/recall figures (.997/.818) which points to the value in using self-citation for name clustering. This paper made and some growing interest I have in RDF and Jena have made me realize that I'd like to spend a bit of time over the coming year learning about graph theory.</p>
