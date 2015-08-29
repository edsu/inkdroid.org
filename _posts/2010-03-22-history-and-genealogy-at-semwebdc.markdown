---
layout: post
status: publish
published: true
title: history and genealogy at semwebdc
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 1809
wordpress_url: http://inkdroid.org/journal/?p=1809
date: '2010-03-22 01:41:57 +0000'
date_gmt: '2010-03-22 08:41:57 +0000'
tags:
- libraries
- oai-ore
- archives
- history
- genealogy
- pbs
- django
comments:
- id: 82413
  author: Now I&#8217;M seeing the semantic web everywhere I look! :-) &laquo; Dr.
    MacCall&#8217;s Metadata Spot
  author_email: ''
  author_url: http://daryl.slis.ua.edu/slis/courses/ls590/spring2009/maccall/01/35/wordpress/?p=175
  date: '2010-03-29 13:42:46 +0000'
  date_gmt: '2010-03-29 20:42:46 +0000'
  content: "[...] Part of a genealogy community&#8217;s project: history and genealogy
    at semwebdc [...]"
- id: 82432
  author: Ryan Shaw
  author_email: ryan.shaw@stanfordalumni.org
  author_url: http://people.ischool.berkeley.edu/~ryanshaw/wordpress/bio
  date: '2010-04-02 11:32:18 +0000'
  date_gmt: '2010-04-02 18:32:18 +0000'
  content: <a href="http://linkedevents.org/ontology/" rel="nofollow">LODE</a>is a
    vocabulary that in intended to more appropriate for historical events than calendar-focused
    vocabularies. There's a <a href="http://escholarship.org/uc/item/4pd6b5mh" rel="nofollow">paper</a>
    with more information, if you're interested.
- id: 82433
  author: Ryan Shaw
  author_email: ryan.shaw@stanfordalumni.org
  author_url: http://people.ischool.berkeley.edu/~ryanshaw/wordpress/bio
  date: '2010-04-02 11:33:17 +0000'
  date_gmt: '2010-04-02 18:33:17 +0000'
  content: Sorry, that should read "is intended to be more appropriate".
---
<div xmlns:cc="http://creativecommons.org/ns#" about="http://www.flickr.com/photos/spine/2076729686/" style="float: left; margin-right: 10px; text-align: center;"><a href="http://www.flickr.com/photos/spine/2076729686"><img src="http://inkdroid.org/images/familytree.jpg" style="height: 250px" /></a><br /><a href="http://www.flickr.com/photos/spine/">spine</a> <a rel="license" href="http://creativecommons.org/licenses/by/2.0/">CC BY 2.0</a>
</div>
<p>Last week's <a href="http://semweb.meetup.com/31/">Washington DC Semantic Web Meetup</a> focused on <a href="http://semweb.meetup.com/31/calendar/12368900/">History and Genealogy Semantics</a>. It was a pretty small, friendly crowd (about 15-20) that met for the first time at the Library of Congress. The group included folks from <a href="http://pbs.org">PBS</a>, the <a href="http://archives.gov">National Archives</a>, the <a href="http://loc.gov">Library of Congress</a>, and the <a href="http://chnm.gmu.edu/">Center for History and New Media</a>--as well as some regulars from the <a href="http://www.eccnet.com/xmlug/">Washington DC SGML/XML Users Group</a>.</p>
<p><a href="http://semweb.meetup.com/31/members/6323472/">Brian Eubanks</a> gave a <a href="http://files.meetup.com/987383/History%20and%20Genealogy%20Semantics.pdf">presentation</a> on what the Semantic Web, <a href="http://linkeddata.org">Linked Data</a> and specifically <a href="http://en.wikipedia.org/wiki/Resource_Description_Framework">RDF</a> and <a href="http://www.w3.org/2004/03/trix/">Named Graphs</a> have to offer genealogical research. He took us on a tour through a variety of websites, such as <a href="http://www.blm.gov/or/landrecords">Land Records Database</a> at the Bureau of Land Management, <a href="http://www.ancestry.com/">Ancestry.com</a>, <a href="http://www.footnote.com/">Footnote</a> and <a href="http://books.google.com">Google Books</a> and made a strong case for using RDF to link these sorts of documents with a family tree. </p>
<p>As more and more historic records make their way online as Web Documents with URIs, RDF becomes an increasingly useful data model for providing provenance and source information for a family tree. On sites like Ancestry.com it is important to understand the provenance of genealogical assertions, since Ancestry.com allows you to merge other people's family trees into your own, based on likely common ancestors. In situations like this researchers need to be able to evaluate the credibility or truthfulness of other people's trees--and being able to source the family tree links to the documents that support them is an essential part of the equation.</p>
<p>Along the way Brian let people know about a variety of vocabularies that are available for making assertions that are of value to genealogical research: </p>
<ul>
<li><a href="http://www.w3.org/TR/rdfcal/#Locations">rdfcal</a> : for Events</li>
<li><a href="http://vocab.org/bio/0.1/.html">BIO</a> : for biographical information</li>
<li><a href="http://vocab.org/relationship/.html">Relationship</a> : for describing the links between people</li>
<li><a href="http://xmlns.com/foaf/spec/">FOAF</a> : for describing people</li>
<li><a href="http://www4.wiwiss.fu-berlin.de/bizer/TriG/">TriG</a> : for identifying the assertions that a researcher makes and linking them to a given document</li>
</ul>
<p>The beautiful thing about RDF for me, is that it's possible to find and use these vocabularies in concert, and I'm not tempted to create the-greatest-genealogy-vocabulary that does it all. In addition, Brian pointed out that sites like <a href="http://dbpedia.org">dbpedia</a> and <a href="http://geonames.org">geonames</a> are great sources of names (URIs) for people, places and events that can be used in building descriptions. Brian has started the <a href="http://groups.google.com/group/history-and-genealogy-semantics-wg/">History and Genealogy Semantics Working Group</a> which has an open membership, and encourages anyone with interest in this area to join. While writing this post I happened to run across a Wikipedia page about <a href="http://en.wikipedia.org/wiki/Family_tree_mapping">Family Tree Mapping</a>, which indicated that some genealogical software already supports geocoding family trees. As usual it seems like the geo community is leading the way in making semantics on the web down to earth and practical. </p>
<p>I followed Brian by giving a brief talk about the <a href="http://chroniclingamerica.loc.gov">Chronicling America</a>, which is the web front-end for data collected by <a href="http://en.wikipedia.org/wiki/National_Digital_Newspaper_Program">National Digital Newspaper Program</a>, which in turn is a joint project of the <a href="http://loc.gov">Library of Congress</a> and the <a href="http://neh.gov">National Endowment for the Humanities</a>. After giving a brief overview of the program, I described how we were naturally led to using Linked Data and embracing a generally <a href="http://en.wikipedia.org/wiki/Representational_State_Transfer">RESTful</a> approach by a few factors:</p>
<ul>
<li>a need to create persistent <a href="http://www.w3.org/Provider/Style/URI">Cool URIs</a> for newspaper titles, issues and pages so that people could reference them.</li>
<li>the desire to make views available for the <a href="http://chroniclingamerica.loc.gov/awardees/">institutions</a> around the United States that supply us with <a href="http://chroniclingamerica.loc.gov/batches/">data</a></li>
<li>the need to make our data available as a participant in the  <a href="http://www.diggingintodata.org/">Digging Into Data Challenge</a></li>
<li>a desire to kick the tires on the relatively new <a href="http://www.openarchives.org/ore/1.0/vocabulary">Open Archives Initiative Object Reuse and Exchange vocabulary</a> for describing aggregations of resources on the Web so that they can be meaningfully harvested
</li>
</ul>
<p>One thing that I learned during Brian's presentation is that sites like <a href="http://footnote.com">Footnote</a> are not only <a href="http://fcw.com/articles/2009/09/29/online-collection-helps-people-remember-holocaust.aspx">going around</a> digitizing historic collections for inclusion in their service,  but they also give their subscribers a rich editing environment to search and <em>annotate</em> document text. These annotations are exactly the sort of stuff that would be perfect to represent as and RDF graph, if you wanted to serialize the data. In fact the NSF funded <a href="http://www.openannotation.org/">Open Annotation Collaboration</a> project is exploring patterns and emerging best practices in this area. I've had it in the back of my mind that allowing users to annotate page content in Chronicling America would be a really nice feature to have. If not at chroniclingamerica.loc.gov proper, then perhaps showing how it could be done by a 3rd party using the API. To some extent we're already seeing annotation happening in Wikipedia, where people are creating links to newspaper pages and titles in their entries, which we can see in the <a href="http://en.wikipedia.org/wiki/Referrer">referrer</a> information in our web server logs. <em>Update: and I just learned that wikipedia themselves provide a <a href="http://en.wikipedia.org/w/index.php?title=Special:LinkSearch">service</a> that allows you to discover entries that have outbound links to a particular site, like <a href="http://en.wikipedia.org/w/index.php?title=Special:LinkSearch&target=http://chroniclingamerica.loc.gov&limit=500&offset=0">chroniclingamerica.loc.gov</a>.</em></p>
<p>Speaking of the API (which really is just REST) if you are interested in learning more about it check out the  <a href="http://chroniclingamerica.loc.gov/about/api/">API Document</a> that <a href="http://onebiglibrary.net">Dan Chudnov</a> prepared. I also made my <a href="http://docs.google.com/present/view?id=dv89m3d_38246f986km">slides</a> available, hopefully the speaker notes provide a bit more context for what I talked about when showing images of various things.</p>
<p><iframe src="http://docs.google.com/present/embed?id=dv89m3d_38246f986km" frameborder="0" width="410" height="342" style="float: left; margin-right: 10px;"></iframe></p>
<p>Afterwards a bunch of us headed across the street to have a drink. I was really interested to hear from <a href="http://twitter.com/samdeng">Sam Deng</a> that (like the group I work in at LC) <a href="http://pbs.org">PBS</a> are big <a href="http://python.org">Python</a> and <a href="http://djangoproject.com">Django</a> shop. We're going to try to get a little brown bag lunch going on between PBS and LC to talk about their use of Django on <a href="http://aws.amazon.com/ec2/">Amazon EC2</a>, as well as software like <a href="http://celeryproject.org/">Celery</a> for managing asynchronous task queues. </p>
<p>Also, after chatting with <a href="http://twitter.com/GlennClatworthy">Glenn Clatworthy</a> of PBS, I learned that he has been experimenting with making Linked Data views available for their programs. It was great to hear Glenn describe how assigning each program a URI, and leveraging the nature of the web would make a perfect fit for distributing data in the PBS enterprise. It makes me think that perhaps having a session on what the <a href="http://bbc.co.uk">BBC</a> are <a href="http://derivadow.com/2009/03/31/linking-bbccouk-to-the-linked-data-cloud/">doing</a> with Linked Data would be timely?</p>
