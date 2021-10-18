---
layout: post
status: publish
published: true
title: archival context on the web
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2210
wordpress_url: http://inkdroid.org/journal/?p=2210
date: '2010-08-12 15:16:19 +0000'
date_gmt: '2010-08-12 22:16:19 +0000'
tags:
- archives
- xml-schema
- people
- authority-control
comments:
- id: 83033
  author: 'SNAC: The Social Networks and Archival Context Project &laquo; Walker Sampson'
  author_email: ''
  author_url: http://wsampson.wordpress.com/2010/08/24/snac-the-social-networks-and-archival-context-project/
  date: '2010-08-24 10:05:25 +0000'
  date_gmt: '2010-08-24 17:05:25 +0000'
  content: "[...] 24, 2010   A post over at Inkdroid highlights the SNAC project,
    an effort to uncover and formalize person and agent data that is [...]"
- id: 85345
  author: ryanprice
  author_email: rprice@ryanpricemedia.com
  author_url: http://ryanpricemedia.com
  date: '2012-02-25 16:03:29 +0000'
  date_gmt: '2012-02-25 23:03:29 +0000'
  content: "Hi ed,\r\n\r\nI found your post because I've been asked to create an obituary
    website that produces EAC - do you know of anyone who is embedding EAC in HTML
    as you discussed in your \"cool to see\" at the end of the post?"
- id: 85346
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2012-02-27 04:43:55 +0000'
  date_gmt: '2012-02-27 11:43:55 +0000'
  content: Hi Ryan, no I haven't seen any examples of how to use EAC in HTML...yet.
    As far as I know EAC is still XML schema based. What I was thinking is that it
    might be interesting to see how to use microdata and schema.org vocabularies or
    rdfa and existing rdf vocabularies to express the same XML data in HTML. Perhaps
    an experiment is in order?
---

<p>On <a href="http://matienzo.org/">Mark's</a> advice I attended the <a href="http://gslis.simmons.edu/blogs/jobs/2010/06/01/eac-cpf-moving-forward-with-authority-nara/">Moving Forward With Authority</a> Society of American Archivists pre-conference, which focused on the role of authority control in archival descriptions. There were lots of presentations/discussions over the day, but by and large most of them revolved around the recent release of the Encoded Archival Context: Corporate Bodies, Persons and Families (<a href="http://eac.staatsbibliothek-berlin.de/">EAC-CPF</a>) XML schema. Work on the EAC-CPF began in 2001 with the <a href="http://www.library.yale.edu/eac/torontotenets.htm">Toronto Tenets</a>, which articulated the need for encoding not only the contents of archival finding aids (w/ <a href="http://www.loc.gov/ead/">Encoded Archival Description</a>), but also the context (people, families, organizations) that the finding aid referenced:</p>
<blockquote><p>
Archival context information consists of information describing the circumstances under which records (defined broadly here to include personal papers and records of organizations) have been created and used.  This context includes the identification and characteristics of the persons, organizations, and families who have been the creators, users, or subjects of records, as well as the relationships amongst them.<br />
<em><a href="http://www.library.yale.edu/eac/torontotenets.htm">Toronto Tenets</a></em>
</p></blockquote>
<p>I'll admit I'm jaded. So much XML has <a href="http://www.dlib.indiana.edu/~jenlrile/metadatamap/">gone under the bridge</a>, that it's hard for me to get terribly excited (anymore) about yet-another-xml-schema. Yes, structured data is good. Yes, encouraging people make their data available similarly is important. But for me to get hooked I need a story for how this structured data is going to live, and be used on the Web. This is the main reason I found <a href="http://www.iath.virginia.edu/~dvp4c/">Daniel Pitti's</a> talk about the Social Networks of Archival Context (<a href="http://socialarchive.iath.virginia.edu/">SNAC</a>) to be so exciting.</p>
<p>SNAC is an NEH (and possibly IMLS soon) funded project of the University of Virginia, California Digital Library, and the Berkeley School for Information. The project's general goal is to:</p>
<blockquote><p>
... unlock descriptions of people from descriptions of their records and link them together in exciting new ways.
</p></blockquote>
<p>Where "descriptions of their records" are EAD XML documents, and "linking them together" means exposing the entities buried in finding aids (people, organizations, etc), assigning identifiers to them, and linking them together on the web. I guess I might be reading what I want a bit into the goal based on the presentation, and my interest in Linked Data. If you are interested, more accurate information about the project can be found in the <a href="http://socialarchive.iath.virginia.edu/proposal.html">NEH Proposal</a> that this quote came from. </p>
<p>Even though SNAC was only very recently funded, Daniel was already able to demonstrate a prototype application that he and <a href="http://www.cdlib.org/contact/staff_directory/btingle.html">Brian Tingle</a> worked on. If I'm remembering this right, Daniel basically got a hold of the EAD finding aids from the Library of Congress, extracted contextual information (people, families, corporate names) from relevant EAD elements, and serialized these facts as EAC-CPF documents. Brian then imported the documents using an <a href="http://bitbucket.org/btingle/cpf2html/wiki/Home">extension</a> to the <a href="http://sourceforge.net/apps/trac/xtf">eXtensible Text Framwork</a>, which allowed XTF to be EAC-CPF aware.</p>
<p>The end result is a web application that lets you view distinct web pages for individuals mentioned in the archival material.  For example here's one for <a href="http://en.wikipedia.org/wiki/John_von_Neumann">John von Neumann</a></p>
<p><a href="http://inkdroid.org/images/neumann-snac.png"><img src="http://inkdroid.org/images/neumann-snac.png" style="border: none;" /></a></p>
<p>All those names in the list on the right are themselves hyperlinks which take you to that person's page. If you were able to scroll down (the prototype hasn't been formally launched yet) you could see links to corporate names like Los Alamos Scientific Laboratory, The Institute for Advanced Study, US Atomic Energy Commission, etc. You would also see a Resources section that lists related finding aids and books, such as the <a href="http://lcweb2.loc.gov/cgi-bin/faidfrquery/r?faid/faidfr:@field(SOURCE+@band(von+neumann+john))">John von Neumann Papers finding aid</a> at the Library of Congress.</p>
<p>I don't think I was the only one in the audience to immediately see the utility of this. In fact it is territory well trodden by OCLC and the other libraries involved in the <a href="http://viaf.org">VIAF project</a> which essentially creates web pages for authority records for people like <a href="http://viaf.org/viaf/99899730/">John Von Neumann</a> who have written books. It's also similar to what <a href="http://trove.nla.gov.au/people">People Australia</a>, <a href="http://bibapp.org/">BibApp</a> and <a href="http://vivoweb.org/">VIVO</a> are doing to establish richly linked public pages for people. As Daniel pointed out: archives, libraries and museums do a lot of things differently; but ultimately they all have a deep and abiding interest in the intellectual output, and artifacts created by <em>people</em>. So maybe this is an area where we can see more collaboration across the cultural divides between cultural heritage institutions. The activity of putting EAD documents, and their transformed HTML cousins on the web is important. But for them to be more useful they need to be contextualized in the web itself using applications like this SNAC prototype.</p>
<p>I immediately found myself wondering if the URL say for this SNAC view of John von Neumann could be considered an identifier for the EAC-CPF record. And what if the HTML contained the structured EAC-CPF data using xml+xslt, a microformat, rdfa or a link rel pointing at an external XML document? Notice I said <em>an</em> instead of <em>the</em> identifier. If something like EAC-CPF is going to catch on lots of archives would need to start generating (and publishing) them. Inevitably there would be duplication: e.g. multiple institutions with their own notion of John von Neumann. I think this would be a good problem to have, and that having web resolvable identifiers for these records would allow them to be knitted together. It would also allow hubs of EAC-CPF to bubble up, rather than requiring some single institution to serve as *the* master database (as in the case of VIAF).</p>
<p>A few things that would be nice to see for EAC-CPF would be:</p>
<ul>
<li>Instructions on how to link EAD documents to EAC-CPF documents.</li>
<li>Recommendations on how to make EAC-CPF data available on the Web.</li>
<li>A wikipage or some low-cost page for letting people share where they are publishing EAC-CPF.</li>
</ul>
<p>In addition I think it would be cool to see:</p>
<ul>
<li>A microformat for making EAC-CPF data available in HTML. If not an official <a href="http://microformats.org">Microformat</a> then <a href="http://microformats.org/wiki/posh">Plain Old Semantic HTML</a> will do. It might also be possible to leverage some existing Microformats like hCard.</li>
<li>A EAC-CPF RDF schema for embedding EAC-CPF data in HTML using <a href="http://www.w3.org/TR/xhtml-rdfa-primer/">RDFa</a> and other Linked Data environments. Heck, <a href="http://developers.facebook.com/docs/opengraph">Facebook is doing it</a>. It might also be useful to leverage existing vocabularies like <a href=''http://xmlns.com/foaf/spec/">FOAF</a>, <a href="http://www.epimorphics.com/public/vocabulary/org.html">Organization Ontology</a>, etc using a <a href="http://dublincore.org/usage/documents/profile-guidelines/">Dublin Core Application Profile</a>.</li>
</ul>
<p>Anyhow I just wanted to take a moment to say how exciting it is to see the stuff hiding in finding aids making it out onto the Web, with URLs for resources like People, Corporations and Families. I hope to see more as the SNAC project integrates more with existing name authority files (work that <a href="http://people.ischool.berkeley.edu/~ray/">Ray Larson</a> at Berkeley is going to be doing), and importing finding aids from more institutions with different EAD encoding practices.</p>
