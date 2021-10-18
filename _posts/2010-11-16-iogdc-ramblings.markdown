---
layout: post
status: publish
published: true
title: iogdc ramblings
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2705
wordpress_url: http://inkdroid.org/journal/?p=2705
date: '2010-11-16 08:19:16 +0000'
date_gmt: '2010-11-16 15:19:16 +0000'
tags:
- conferences
- egov
comments: []
---

<p>Yesterday I was at the first day of the <a href="http://www.data.gov/conference">International Open Government Data Conference</a> in Washington DC. It was an exciting day, with a great deal of enthusiasm being expressed by luminaries like <a href="http://en.wikipedia.org/wiki/Tim_Berners-Lee">Tim Berners-Lee</a>, <a href="http://en.wikipedia.org/wiki/Jim_Hendler">Jim Hendler</a> , <a href="http://en.wikipedia.org/wiki/Beth_Simone_Noveck">Beth Noveck</a>, and <a href="http://en.wikipedia.org/wiki/Vivek_Kundra">Vivek Kundra</a> for enabling participatory democracy by opening up access to government data. Efforts like <a href="http://data.gov/">data.gov</a>, <a href="http://data.gov.uk">data.gov.uk</a>, <a href="http://data.govt.nz/">data.govt.nz</a>, <a href="http://data.australia.gov.au/">data.australia.gov.au</a> to aggregate egov datasets from their jurisdictions were well represented, although it would've been great to hear more from places like Spain, Sweden as well as groups like the <a href="http://sunlightfoundation.com/">Sunlight Foundation</a> and <a href="http://okfn.org/">Open Knowledge Foundation</a> ... but there are two more days to go. Here are my reflections so far from the first day:</p>
<h3>Licensing</h3>
<p>New Zealand is embracing the use of <a href="http://creativecommons.org/">Creative Commons</a> licenses to release their datasets onto the web. Their <a href="http://web.archive.org/web/20110812114105/http://www.e.govt.nz/policy/nzgoal">NZGOAL</a> project got cabinet approval for using CC licenses in June of this year. They are now doing outreach within government agencies, and building tools to help data owners put these license into play, so that data can go out on the web. Where I work at the Library of Congress, the general understanding is that our data is public domain (in the US) ... except when its not. For example some of the high resolution images in the <a href="http://loc.gov/pictures/">Prints and Photographs Catalog</a> aren't available outside the physical buildings of the Library of Congress, due to licensing concerns. So I'm totally envious of New Zealand's coordinated efforts to iron out these licensing issues.</p>
<h3>Centralization/Decentralization</h3>
<p>Vivek Kundra and Alan Mallie of the data.gov touted the number of datasets that they are federating access to. But it remains unclear exactly how content is federated, and how datasets flow from agencies into data.gov itself. Perhaps some of these details are included in the v1.0 release of the data.gov <a href="http://www.usa.gov/Help/Free_Downloads.shtml">Concept of Operations</a> (which Kundra announced). An excellent question posed to Berners-Lee and Kundra concerned what role centralized and distributed approaches play in publishing data. While there is value in one-stop-shopping where you can find data aggregated in one place, Berners-Lee really stressed that the web grew because it was distributed. Aggregated collections of datasets like data.gov need to be able to efficiently pull data from places where it is collected. We need to use the web effectively to enable this.</p>
<h3>Legacy Data</h3>
<p>There are tons of datasets waiting to be put on the web. Steve Young of the EPA described a few datasets such as the <a href="http://www.epa.gov/tri/">Toxics Release Inventory</a>, which has the goal to:</p>
<blockquote><p>
provide communities with information about toxic chemical releases and waste management activities and to support informed decision making at all levels by industry, government, non-governmental organizations, and the public.
</p></blockquote>
<p>This data has been collected for 22 years after the <a href="http://www.epa.gov/superfund/contacts/infocenter/epcra.htm">Emergency Planning and Right to Know Act</a>. Young emphasized how important it is that this data be used in applications, and combined with other datasets. The data is available for download <a href="http://www.epa.gov/tri/tridata/preliminarydataset/index.html">directly</a> from the EPA, and is also <a href="http://www.data.gov/raw/1615">available</a> on data.gov. It would've been interesting to learn more about the mechanics of how the EPA gets data onto data.gov ; and how updates can flow.</p>
<p>But a really important question came from Young's colleague at the EPA (sorry I didn't note her name). She asked about how the data in their relational databases could be made available on the web. Should they simply dump the database? Or is there something else they could do? Young said that it's early days, but he hoped that Linked Data might have some answers. The issues came up later in the day at the Is the Semantic Web Ready Yet panel. There was a question about how to make Linked Data relevant to folks whose focus is Enterprise data. In my opinion Linked Data advocates <a href="http://semanticommunity.wik.is/Federal_Semantic_Interoperability_Community_of_Practice/RDF_Access_to_Structured_Databases">over emphasize</a> the importance of using RDF and SPARQL (standards), and converting all the data over without completely understanding how invasive these solutions are. Not enough is done to show enterprise data folks, who typically think in terms of relational databases, what they can do to put their lovingly crafted and hugged data on the web. Consider a primary key in a database: what does it identify, what relations does that thing have with other things? Why not use that key in constructing a URL for that thing, and link things together using the URLs? Then other people could use your URLs as well in their own data. I think the drumbeat to use SPARQL and triple stores often misses explaining this fundamental baby step that data owners could take. As Derek Willis said (on the 2nd day, when I'm writing this), people want to use your data, but not your database...people want to browse your data using their web browser. Assigning URLs to the important stuff in your databases is the first important step to make with Linked Data.</p>
<h3>Community</h3>
<p>Robert Schaefer of the Applied Physics Lab at Johns Hopkins University pointed out that enabling virtual communities around our data is an essential part of making data available and usable. In my opinion this is the true potential of platform, data aggregator sites like data.gov...they can allow users of government datasets to share what they have done, and learn from each other. Efforts like <a href="http://civiccommons.com/">Civic Commons</a> also promise to be places where this collaboration can take place. The communities may be born inside or outside of government, but they inevitably must include both. The W3C Egov effort might also be a good place to collaborate on standards possibly.</p>
