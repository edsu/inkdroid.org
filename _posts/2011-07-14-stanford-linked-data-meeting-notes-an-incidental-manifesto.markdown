---
layout: post
status: publish
published: true
title: meeting notes and a manifesto
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 3489
wordpress_url: http://inkdroid.org/journal/?p=3489
date: '2011-07-14 07:49:36 +0000'
date_gmt: '2011-07-14 14:49:36 +0000'
tags:
- libraries
- archives
- linked-data
- museums
- stanford
- workshops
comments:
- id: 85062
  author: bibwild.wordpress.com/
  author_email: rochkind@jhu.edu
  author_url: http://bibwild.wordpress.com/
  date: '2011-07-19 16:38:34 +0000'
  date_gmt: '2011-07-19 23:38:34 +0000'
  content: "I have to admit that I only get more and more suspicious of RDF, \"linked
    data\" and \"semantic web\" the more I learn/see/occasioally-use it. \r\n\r\nHowever,
    I STILL heartily endorse every single point in your manifesto, the technology/standard-neutral
    language of which is presumably intentional. The manifesto hits the nail on the
    head."
- id: 85066
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2011-07-22 02:22:10 +0000'
  date_gmt: '2011-07-22 09:22:10 +0000'
  content: "Thanks Jonathan. I think RDF is an OK technology as it stands. The data
    model is present in a lot of places, and I think the fact that it has a data model
    with different serializations is itself a good model for the library community.\r\n\r\nBut
    you are right, I tried to keep the language in the manifesto neutral about particular
    technologies and standards--except for \"the Web\" of course, which most of us
    don't need to argue about much anymore. I'm glad you like it by the way--thanks
    for writing to let me know."
---

<p>A few weeks ago I was in sunny (mostly) Palo Alto, California at a Linked Data Workshop hosted by Stanford University, and funded by <a href="http://www.clir.org/news/pressrelease/11mellonpr2.html" title="CLIR">Council on Library and Information Resources</a>. It was an invite-only event, with very little footprint on the public Web, and an attendee list that was distributed via email with "Confidential PLEASE do not re-distribute" across the top. So it feels more than a little bit foolhardy to be writing about it here, even in a limited way. But I was going to the meeting as an employee of the Library of Congress, so I feel a bit responsible for making some kind of public notes/comments about what happened. I suspect this might impact future invitations to similar events, but I can live with that :-)</p>
<p>A week is a long time to talk about anything...and Linked Data is certainly no exception. The conversation was buoyed by the fact that it was a pretty small group of around 30 folks from a wide variety of institutions including: <a href="http://stanford.edu/">Stanford University</a>, <a href="http://www.bibalex.org/">Bibliotheca Alexandrina</a>, <a href="http://www.bnf.fr">Bibliothèque nationale de France</a>, <a href="http://www.aalto.fi/">Aalto University</a>, <a href="http://www.emory.edu">Emory University</a>, <a href="http://www.google.com">Google</a>, <a href="http://www.nii.ac.jp/">National Institute of Informatics</a>, <a href="http://www.virginia.edu">University of Virginia</a>, <a href="http://www.umich.edu">University of Michigan</a>, <a href="http://www.d-nb.de/">Deutschen Nationalbibliothek</a>, <a href="http://www.bl.uk">British Library</a>, <a href="http://www.kb.dk/">Det Kongelige Bibliotek</a>, <a href="http://www.cdlib.org/">California Digital Library</a> and <a href="http://seme4.com">Seme4</a>. So the focus was definitely on cultural heritage institutions, and specifically what Linked Data can offer them. There was a good mix of people in attendance: some who were relatively new to Linked Data and RDF, to others who had been involved in the space before the term Linked Data, RDF or the Web existed...and there were people like me who were somewhere in between.</p>
<p>A few of us took collaborative <a href="http://piratepad.net/YJLUIp164y">notes</a> in PiratePad, which sort of tapered off as the week progressed and more discussion happened. After some initial lighting-talk-style presentations from attendees on Linked Data projects they were involved in, we spent most of the rest of the week breaking up into 4 groups, to discuss various issues, and then joining back up with the larger group for discussion. If things go as planned you can expect to see a report from Stanford that covers the opportunities and challenges that Linked Data offers the cultural heritage sector, which were raised during these sessions. I think it'll be a nice compliment to the report that the W3C Library Linked Data Incubator Group is preparing, which recently became available as a <a href="http://www.w3.org/2005/Incubator/lld/wiki/DraftReportWithTransclusion">draft</a>.</p>
<p>One thing that has stuck with me a few weeks later, is the continued need in the cultural heritage Linked Data sector for reconciliation services, that help people connect up their resources with appropriate resources that other folks have published. If you work for a large organization, there is often even a need for reconciliation services <em>within</em> the enterprise. For example the British Library reported that it has some 300 distinct data systems within the organization, that sometimes need to be connected together. Linking is the essential ingredient, the <em>sine qua non</em> of Linked Data. Linking is what makes Linked Data and the RDF data model different. It helps you express the work you may have done in joining up your data with other people's data. It's the 4th design pattern in Tim Berners-Lee's Linked Data Design Issues:</p>
<blockquote><p>
Include links to other URIs. so that they can discover more things.
</p></blockquote>
<p>But, expressing the links is the easy part...creating them where they do not currently exist is harder.</p>
<p>Fortunately, <a href="http://www.seme4.com/who-we-are/profile/hugh-glaser/">Hugh Glaser</a> was on hand to talk about the role that <a href="http://sameas.org">sameas.org</a> plays in the Linked Data space, and how the <a href="http://www.rkbexplorer.com/">RKBexplorer</a> managed to reconcile authors names across institutional repositories. He also has described some work with the British Museuem linking up two different data silos about museum objects, to provide a unified web views for those objects. Hugh, if you are reading this, can you comment with a link to this work you did, and how it surfaces in British Museum website?</p>
<p>Similarly <a href="http://www.betaversion.org/~stefano/">Stefano Mazzocchi</a> talked about how Google's tools like <a href="http://www.freebase.com/docs/suggest">Freebase Suggest</a> and their <a href="http://ids.freebaseapps.com/">WebID</a> app can make it easy to integrate Freebase's identity system into your applications. If you are building a cataloging tool, take a serious look at what using something like Freebase Suggest (a jquery plugin) can offer your application. In addition, as part of the <a href="http://code.google.com/p/google-refine/">Google Refine</a> data cleanup tool, Google has created an API for data <a href="http://code.google.com/p/google-refine/wiki/ReconciliationServiceApi">reconciliation services</a>, which other service providers could supply. Stefano indicated that Google was considering releasing the code behind this reconciliation service, and stressed that it is useful for the community to make more of these reconciliation services available, to help others link their data with other peoples data. It seems obvious I guess, but I was interested to hear that Google themselves are encouraging the use of Freebase IDs to join up data within their enterprise.</p>
<p>Almost a year ago <a href="http://www.ldodds.com/">Leigh Dodds</a> created <a href="http://www.ldodds.com/blog/2010/08/gridworks-reconciliation-api-implementation/">a similar API layer</a> for data that is stored in the Talis Platform. Now that the <a href="http://www.bl.uk/bibliographic/datafree.html">British National Bibliography</a> is being made available in a Talis Store, it might be possible to use Leigh's code to put a reconciliation service on top of that data. Caveat being that not all the BNB is currently available there. By the way, hats off to the British Library for iteratively making that data available, and getting feedback early, instead of waiting for it all to be "done"...which of course they never will be, if they are successful at integrating Linked Data into their existing data work flows.</p>
<p>If you squint right, I think it's also possible to look at the  <a href="http://www.oclc.org/developer/documentation/virtual-international-authority-file-viaf/request-types#autosuggest">VIAF AutoSuggest</a> service as a type reconciliation service. It would be useful to have a similar service over the <a href="http://web.archive.org/web/20110720034058/http://id.loc.gov:80/authorities">Library of Congress Subject Headings</a> at id.loc.gov. Having similar APIs for these services could be a handy thing as we begin to build new descriptive cataloging tools that take advantage of these pools of data. But I don't think it's necessarily essential, as the APIs could be orchestrated in a more ad hoc, web2.0 mashup style. I imagine I'm not alone in thinking we're now at the stage when we can start building new cataloging tools that take advantage of these data services. Along those lines <a href="http://twitter.com/rlfrick">Rachel Frick</a> had an excellent idea to try to enhance collection building applications like <a href="http://omeka.org/">Omeka</a> and <a href="http://archivesspace.org/">Archives Space</a> to take advantage of reconciliation services under the covers. Adding a bit of suggest-like functionality to these tools could smooth out the description of resources that libraries, museums and archives are putting online. I think the <a href="http://omeka.org/forums/topic/lcsh-plugin">Omeka-LCSH plugin</a> is a good example of steps in this direction.</p>
<p>One other thing that stuck with me from the workshop is that the new (dare I say buzzwordy) focus on Library Linked Data is somewhat frightening to library data professionals. There is a lot of new terminology, and issues to work out (as the Stanford report will hopefully highlight). Some of this scariness is bound up with the <a href="http://en.wikipedia.org/wiki/Resource_Description_and_Access">Resource Description and Access</a> sea change that is underway. But crufty as they are, data systems built around MARC have served the library community well over the past 30 years. Some of the motivations for Linked Data are specifically for Linked <em>Open</em> Data, where the linking isn't as important as the <em>openness</em>. The LOD-LAM summit captured some of this spirit in the <a href="http://lod-lam.net/summit/2011/06/06/proposed-a-4-star-classification-scheme-for-linked-open-cultural-metadata/">4 Star Classification Scheme for Linked Open Cultural Metadata</a>, which focuses on licensing issues. There was a strong undercurrent at the Stanford meeting about licensing issues. The group recognized that explicit licensing is important, but it was intentionally kept out of scope of most of the discussion. Still I think you can expect to see some of the heavy hitters from this group exert some influence in this arena to help bring clarity to licensing issues around our data. I think that some of the ideas of opening up the data, and disrupting existing business workflows around the data can seem quite scary to those who have (against a lot of odds) gotten them working. I'm thinking of the various cooperative cataloging efforts that allow work to get done in libraries today.</p>
<p>Truth be told, I may have inspired some of the "fear" around Linked Data by suggesting that the Stanford group work on a manifesto to rally around, much like what the <a href="http://agilemanifesto.org/">Agile Manifesto</a> did for the Agile software development movement. I don't think we had come to enough consensus to really get a manifesto together, but on the last day the sub-group I was in came up with a straw man (near the bottom of the <a href="http://piratepad.net/YJLUIp164y">piratepad notes</a>) to throw darts at. Later on (on my own) I kind of wordsmithed them into a briefer list. I'll conclude this blog post by including the "manifesto" here not as some official manifesto of the workshop (it certainly is not), but more as a personal manifesto, that I'd like to think has been guiding some of the work I have been involved in at the Library of Congress over the past few years:</p>
<div style="background-color: #eee; padding: 10px 20px 10px 20px;">
<h1>Manifesto for Linked Libraries</h1>
<p>We are uncovering better ways of publishing, sharing and using information by doing it and helping others do it. Through this work we have come to value:</p>
<ul>
<li><b>Publishing data on the Web for discovery</b> over preserving it in dark archives.</li>
<li><b>Continuous improvement of data</b> over waiting to publish perfect data.</li>
<li><b>Semantically structured data</b> over flat unstructured data.</li>
<li><b>Collaboration</b> over working alone.</li>
<li><b>Web standards</b> over domain-specific standards.</li>
<li><b>Use of open, commonly understood licenses</b> over closed, local licenses.</li>
</ul>
<p>That is, while there is value in the items on the right, we value the items on the left more.</p>
</div>
<p>The manifesto is also on a <a href="http://bit.ly/sldw-mf">publicly editable Google Doc</a>; so if you feel the need to add or comment please have a go. I was looking for an alternative to "Linked Libraries" since it was not inclusive of archives and museums ... but I didn't spend much time obsessing on it. One of the selfish motivations for publishing the manifesto here was to capture it a particular point in time where I was happy with it :-)</p>
