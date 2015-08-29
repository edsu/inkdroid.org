---
layout: post
status: publish
published: true
title: data.australia.gov.au and rdfa
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 1656
wordpress_url: http://inkdroid.org/journal/?p=1656
date: '2010-01-29 07:36:57 +0000'
date_gmt: '2010-01-29 14:36:57 +0000'
tags:
- rdfa
- w3c
- egov
- australia
comments: []
---
<p>In my <a href="http://inkdroid.org/journal/2010/01/26/data-gov-uk-and-rdfa/">previous blog post</a> I was trying to demonstrate the virtues of data.gov.uk making the descriptions of their datasets available as <a href="http://www.w3.org/TR/xhtml-rdfa-primer/">RDFa</a>. Just this morning I <a href="http://groups.google.com/group/uk-government-data-developers/msg/16599323836791e5">learned</a> from <a href="http://web.archive.org/web/20111121115551/http://webbackplane.com/mark-birbeck/">Mark Birbeck</a> that the folks down under at <a href="http://data.australia.gov.au">data.australia.gov.au</a> did this last October!</p>
<p>For example <a href="http://web.archive.org/web/20110301044400/http://data.australia.gov.au/414">this</a> page describing a dataset for public Internet locations has this RDF metadata inside it:</p>
<pre>
&lt;http://data.australia.gov.au/80&gt; cc:attributionName "http://www.centrelink.gov.au/"@en-au ;
     cc:attributionURL &lt;http://www.centrelink.gov.au/&gt; ;
     dc:coverage.geospatial "Australia"@en-au ;
     dc:coverage.temporal "Not specified"@en-au ;
     dc:creator "Centrelink"@en-au ;
     dc:date.modified "2009-08-31"^^xsd:date ;
     dc:date.published "2009-08-31"^^xsd:date ;
     dc:description """&lt;p xml:lang="en-au" xmlns="http://www.w3.org/1999/xhtml"&gt;Location of Centrelink Offices&lt;/p&gt;
"""^^rdf:XMLLiteral ;
     dc:identifier "80"@en-au ;
     dc:keywords "&lt;a href=\"http://data.australia.gov.au/tag/social-security\" rel=\"tag\" xml:lang=\"en-au\" xmlns=\"http://www.w3.org/1999/xhtml\"&gt;Social Security&lt;/a&gt;"^^rdf:XMLLiteral ;
     dc:license "&lt;a href=\"http://creativecommons.org/licenses/by/2.5/au/\" rel=\"licence\" xml:lang=\"en-au\" xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;img alt=\"Creative Commons License\" class=\"licence\" src=\"http://i.creativecommons.org/l/by/2.5/au/88x31.png\"/&gt;Creative Commons - Attribution 2.5 Australia (CC-BY)&lt;/a&gt;"^^rdf:XMLLiteral ;
     dc:source "&lt;a href=\"http://www.centrelink.gov.au/\" rel=\"dc:source\" xml:lang=\"en-au\" xmlns=\"http://www.w3.org/1999/xhtml\"/&gt;"^^rdf:XMLLiteral ;
     dc:subject "&lt;a href=\"http://data.australia.gov.au/catalogue/community\" rel=\"category tag\" title=\"View all posts in Community\" xml:lang=\"en-au\" xmlns=\"http://www.w3.org/1999/xhtml\"&gt;Community&lt;/a&gt;,  &lt;a href=\"http://data.australia.gov.au/catalogue/employment\" rel=\"category tag\" title=\"View all posts in Employment\" xml:lang=\"en-au\" xmlns=\"http://www.w3.org/1999/xhtml\"&gt;Employment&lt;/a&gt;,  &lt;a href=\"http://data.australia.gov.au/catalogue/government\" rel=\"category tag\" title=\"View all posts in Government\" xml:lang=\"en-au\" xmlns=\"http://www.w3.org/1999/xhtml\"&gt;Government&lt;/a&gt;"^^rdf:XMLLiteral ;
     dc:title "Location of Centrelink Offices"@en-au ;
     dc:type &lt;http://purl.org/dc/dcmitype/Text&gt; ;
     agls:jurisdiction "[Commonwealth of] Australia (AU)"@en-au ;

&lt;http://www1.australia.gov.au/datasets/Federal/Centrelink/Location%20of%20Centrelink%20offices%2031_08_09/centrelink_offices_31_08_2009.CSV&gt; dc:format "CSV"@en-au . 
</pre>
<p>Now this data isn't without problems: notice the XML literals as objects in the assertions involving subject, keyword, license and source? But it's a Beta after all, and lots of us are learning this as we go, so Australia deserves a ton of credit. One really nice thing they are doing is making assertions about the format and URL location of the dataset itself. It would be even better if the dataset description was linked up with the dataset files using <a href="http://www.openarchives.org/ore/1.0/vocabulary">oai-ore</a> or some other vocabulary.</p>
<p>In about 5 minutes I adapted the simplistic data.gov.uk crawler to crawl the data.australia.gov.au data.  There aren't as many datasets, so the <a href="http://web.archive.org/web/20101216224228/http://inkdroid.org/bzr/data-australia-gov-au/crawl.py">crawler</a> only pulled down <a href="http://web.archive.org/web/20101216224353/http://inkdroid.org/bzr/data-australia-gov-au/data.rdf">1725 triples</a> (minus the xhtml triples)...but perhaps I missed some in my simplistic crawl.</p>
<p>Seeing both the data.gov.uk and data.australia.gov.au efforts to make dataset descriptions available makes me wonder if it could be useful for the <a href="http://www.w3.org/2007/eGov/">W3C eGov Working Group</a> to provide some lightweight guidance on how to make dataset descriptions available: what sorts of vocabularies to use, the kinds of assertions that are important, etc. It's hard not to daydream of trying to provide an aggregated view of both pools of data, which is kept in synch using the web, and which perhaps could pull down aggregated datasets and archive them, etc. Perhaps a little spot checking tool that took at look at your HTML and let you know if it can work as a dataset description would be useful too?</p>
