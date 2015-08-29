---
layout: post
status: publish
published: true
title: future archives
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 6695
wordpress_url: http://inkdroid.org/journal/?p=6695
date: '2013-10-31 08:18:10 +0000'
date_gmt: '2013-10-31 15:18:10 +0000'
tags:
- skos
- wikipedia
- bbc
- linked data
- dbpedia
- audio
comments:
- id: 86655
  author: Digital BBC World Service radio archives | all things cataloged
  author_email: ''
  author_url: http://allthingscataloged.wordpress.com/2013/11/01/digital-bbc-world-service-radio-archives/
  date: '2013-11-01 06:26:20 +0000'
  date_gmt: '2013-11-01 13:26:20 +0000'
  content: |
    [&#8230;] are used to annotate, correct and add metadata for search and navigation. Ed Summers has a blog post about this project, making a comment I wholeheartedly agree with: &#8221;… [I]t is the (implied) [&#8230;]
---
<p><a href="https://en.wikipedia.org/wiki/File:Magtape1.jpg"><img style="width: 200px; margin-right: 10px; float: left;" src="http://inkdroid.org/images/magtape.jpg" /></a> It's hard to read <a href="https://twitter.com/moustaki">Yves Raimond</a> and <a href="https://twitter.com/tristanf">Tristan Ferne</a>'s paper <a href="http://challenge.semanticweb.org/2013/submissions/swc2013_submission_5.pdf">The BBC World Service Archive Prototype </a> and not imagine a possible future for radio archives, archives on the Web, and archival description in general.</p>
<p>Actually, it's not just the future, it's also the present, as embodied in the <a href="http://worldservice.prototyping.bbc.co.uk/">BBC World Service Archive</a> prototype itself, where you can search and listen to 45 years of radio, and pitch in by helping describe it if you want.</p>
<p>As their paper describes, Raimond and Ferne came up with some automated techniques to connect up text about the programs (derived directly from the audio, or indirectly through supplied metadata) to Wikipedia and DBPedia. This resulted in some 20 million RDF assertions, that form the database that the (very polished) web application sits on top of. Registered users can then help augment and correct these assertions. I can only hope that some of these users are actually BBC archivists, who can also help monitor and tune the descriptions provided from the general public.</p>
<p>Their story is full of win, so it's understandable why the paper won the <a href="http://challenge.semanticweb.org/2013/winners.html">2013 Semantic Web Challenge</a>:</p>
<ul>
<li>They used <a href="http://wikipedia-miner.cms.waikato.ac.nz/">WikipedidMiner</a> to take a first pass at entity extraction of the text they were able to collect for each program. The <a href="http://maphub.github.io/">MapHub</a> project uses WikipediaMiner for the same purpose of adding structure to otherwise unstructured text.</li>
<li>They used Amazon Web Services (aka the cloud) to do what would have taken them 4 years in the space of 2 weeks, for a fixed, one time cost. </li>
<li>They use ElasticSearch for search, instead of trying to squeeze that functionality and scalability out of a triple store. </li>
<li>They wanted to encourage curation of the content, so they put an emphasis on usability and design that is often absent from Linked Data prototypes. </li>
<li>They have written in <a href="http://events.linkeddata.org/ldow2012/papers/ldow2012-paper-11.pdf">more detail</a> about the algorithms that they used to connect up their text to Wikipedia/DBpedia.</li>
<li>Their <a href="http://github.com/bbcrd">github</a> account reflects the nuts and bolts of how they did this work. Specifically their <a href="https://github.com/bbcrd/rdfsim">rdfsim</a> Python project that vectorizes a SKOS hierarchy, for determining the distance between concepts, seems like a really useful approach to disambiguating terms in text.</li>
</ul>
<p>But it is the (implied) role of the archivist, as the professional responsible for working with developers to tune these algorithms, evaluating/gauging user contributions, and helping describe the content themselves that excites me the most about this work. It's also the future role of the archive that is at stake too. In <a href="http://downloads.bbc.co.uk/rd/pubs/whp/whp-pdf-files/WHP260.pdf">another paper</a> Raimond, Smethurst, McParland and Lowiswhich describe how having this archival data allows them to augment live BBC News subtitles with links to the audio archive, where people can follow their nose (or ears in this case) to explore the context around news stories.</p>
<p>The fact that it's RDF and Linked Data isn't terribly important in all this. But the importance of using world curated, openly licensed entities derived from Wikipedia cannot be understated. It's the conceptual glue that allows connections to be made. As Wikidata grows in importance at Wikipedia it will be interesting to see if it supplants the role that DBpedia has been playing to date.</p>
<p>And of course, it's exciting because it's not just anyone doing this, it's the BBC.</p>
<p>My only nit is that it would be nice to see some of the structured data they've collected expressed more in their HTML. For example they have minted a URI for <a href="http://worldservice.prototyping.bbc.co.uk/tags/Brian_Eno">Brian Eno</a> which lists radio programs that are related to him. Why not display his bio, and perhaps a picture? Why not put links to other radio programs for people he is associated with him, like <a href="http://worldservice.prototyping.bbc.co.uk/tags/David_Byrne">David Byrne</a> or <a href="http://worldservice.prototyping.bbc.co.uk/tags/David_Bowie">David Bowie</a>, etc. Why not express some of this semantic metadata in microdata or RDFa in the page, to enable search engine optimization and reuse?</p>
<p>Luckily, it sounds like they have invested in the platform and data they would need to add these sorts of features.</p>
<p>PS. Apologies to the <a href="http://www.youtube.com/watch?v=eAbkh4TMRqg">Mighty Boosh</a> for the title of this post. "The future's dead ... Everyone's looking back, not forwards."</p>
