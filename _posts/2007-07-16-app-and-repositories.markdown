---
layout: post
status: publish
published: true
title: app and repositories
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 158
wordpress_url: http://www.inkdroid.org/journal/2007/07/16/app-and-repositories/
date: '2007-07-16 06:32:49 +0000'
date_gmt: '2007-07-16 13:32:49 +0000'
tags: []
comments:
- id: 38549
  author: Dorothea Salo
  author_email: dorothea@textartisan.com
  author_url: http://cavlec.yarinareth.net/
  date: '2007-07-16 09:42:06 +0000'
  date_gmt: '2007-07-16 16:42:06 +0000'
  content: "Speaking from the trenches... institutional-repository deposits are OFTEN
    done on behalf of other people. In fact, that's the substantial majority of 'em
    to date, at least in the States. So, yes, mediated deposit is a big win.\r\n\r\nSWORD
    is amazing. I want it yesterday!"
- id: 38755
  author: Jonathan Rochkind
  author_email: rochkind@jhu.edu
  author_url: ''
  date: '2007-07-17 12:31:10 +0000'
  date_gmt: '2007-07-17 19:31:10 +0000'
  content: "\"Perhaps there are cases (as the doc suggests) where a deposit is done
    for another user?\"\r\n\r\nWhere a mediating application is doing the deposit,
    and the mediating application does not have access to the user's credentials (and
    should not for security purposes)?"
- id: 39125
  author: Julie Allinson
  author_email: j.allinson@ukoln.ac.uk
  author_url: http://www.ukoln.ac.uk/repositories/digirep/index/SWORD
  date: '2007-07-20 04:46:08 +0000'
  date_gmt: '2007-07-20 11:46:08 +0000'
  content: Hi Ed, thanks for the positive comments about our project - good to see
    growing interest in APP, and SWORD, from the repositories community.  To comment
    on your questions - there was a pretty strong use case for including mediated
    deposit - it does happen in practice.  This could support either an authenticated
    'person' depositing on behalf of someone else (say a repository manager on behalf
    of an author) or an authenticated or non-authenticated machine doing the same.  Regarding
    collection lists, we don't want to mandate against repositories doing this (or,
    indeed, against them supporting update and delete if they wish to) we just don't
    have time to implement this in the context of our very small project.  Your comments
    makes me wonder whether we should find time, though. If you get chance to do any
    implementation of the profile, I'd be really interested to hear how you got on.
- id: 39129
  author: Martin Morrey
  author_email: m.morrey@intrallect.com
  author_url: http://www.intrallect.com
  date: '2007-07-20 06:43:56 +0000'
  date_gmt: '2007-07-20 13:43:56 +0000'
  content: Yes, the main use-case for mediated deposit, is when a user is working
    in another environment, such as a Learning Management System (LMS), and chooses
    to make their materials available to others through a shared repository.  The
    LMS system would  make the deposit into the repository on behalf of the user,
    but it is important that the actual owner of the material is identified at the
    repository end.  The user would either already have an account in the repository
    system itself, or it would be able to pull their details out of a shared directory
    of users, such as an LDAP server.
- id: 39138
  author: Jim Downing
  author_email: ojd20@cam.ac.uk
  author_url: http://wwmm.ch.cam.ac.uk/blogs/downing/
  date: '2007-07-20 09:23:01 +0000'
  date_gmt: '2007-07-20 16:23:01 +0000'
  content: "Jonathan; that's exactly the case we're thinking of. \r\n\r\nEd; the lack
    of collection listing basically comes down to the fact that there is no consensus
    between repo softwares on what a \"collection\" is. APP defines it in a way which
    is subtly different to each of the current repo platform implementations.\r\n\r\nPersonally
    I'm hoping SWORD will encourage a move to more RESTful, web oriented interfaces
    in repository softwares that will mean a future SWORD spec can be closer to APP."
- id: 39200
  author: Repository deposits via APP and SWORD &laquo; Humanitarian Relief Deployment
    Coordination System
  author_email: ''
  author_url: http://ryansdissertation.wordpress.com/2007/07/21/repository-deposits-via-app-and-sword/
  date: '2007-07-20 19:42:12 +0000'
  date_gmt: '2007-07-21 02:42:12 +0000'
  content: "[...] APP and Repositories, Inkdroid, July 16, 2007. (Thanks to Charles
    Bailey.) Excerpt: Pete Johnston blogged recently about a very nice use of the
    Atom Publishing Protocol (APP) to provide digital library repository functionality.
    The project is supported by UKOLN at the University of Bath and is called Simple
    Web-service Offering Repository Deposit (SWORD). [...]"
---
<p><img src="http://inkdroid.org/talks/app/images/atom.png" style="float: left; margin-right: 10px;" width="150" /><a href="http://efoundations.typepad.com/efoundations/2007/07/putting-them-wi.html">Pete Johnston</a> blogged recently about a very nice use of the <a href="http://tools.ietf.org/wg/atompub/">Atom Publishing Protocol </a>(APP) to provide digital library repository functionality. The project is supported by <a href="http://www.ukoln.ac.uk/">UKOLN</a> at the University of Bath and is called <a href="http://www.ukoln.ac.uk/repositories/digirep/index/SWORD">Simple Web-service Offering Repository Deposit</a> (SWORD). </p>
<p>If you are interested in digital repositories and web services take a look at their <a href="http://www.ukoln.ac.uk/repositories/digirep/index/SWORD_APP_Profile_0.4">APP profile</a>. It's a great example of how APP encourages the use of the Atom XML format and RESTful practices, which can then be extended to suit the particular needs of a community of practice.</p>
<p>To understand APP you really only need to grok a handful of concepts from the data model and <a href="http://en.wikipedia.org/wiki/Representational_State_Transfer">REST</a>. The data model is basically made up of a <i>service </i>document, which describes a set of <i>collections, </i>which aggregates <i>member entries,</i> which can in turn point to a <i>media entry</i>. All of these types of resources are identified with URLs. Since they are URLs you can interact with the objects with plain old HTTP--just like your web browser. For example you can list the <i>entries </i>in a <i>collection </i>by issuing a GET to the <i>collection </i>URL. Or you can create a <i>member resource </i>by doing a POST to the <i>collection </i>URL. Similarly you can delete a <i>member entry</i> by issuing a DELETE to the <i>member</i> <i>entry</i>. The full details are available in the <a href="http://tools.ietf.org/id/draft-ietf-atompub-protocol-17.txt">latest draft</a> of the RFC--and also in a wide variety of articles including <a href="http://www.xml.com/pub/a/2006/07/19/implementing-atom-publishing-protocol-python-wsgi.html">this one</a>.</p>
<p>So to perform a SWORD deposit a program would have to:</p>
<ol>
<li>get the service document for the repository (GET http://www.myrepository.ac.uk/app/servicedocument</li>
<li>see what collections it can add objects to</li>
<li>create some IMS, METS or DIDL metadata to describe your repository object and ZIP it up with any of the objects datastreams</li>
<li>POST the zip file to the appropriate collection URL with the appropriate <i>X-Format-Namespace</i> to identify the format of the submitted object</li>
<li>check that you got a <i>201 Created</i> status code and record the <i>Location</i> of the newly created resource</li>
<li>profit!</li>
</ol>
<p>1 and 2 are perhaps not even necessary if the URL for the target collection is already known. Some notable things about the SWORD profile of APP:</p>
<ul>
<li>two levels of conformance (one really minimalistic one)</li>
<li>the idea that collections imply particular <i>treatments</i> or workflows associated with how the object is ingested</li>
<li>service documents dynamically change to describe only the collections that a particular user can see</li>
<li>no ability to edit resources</li>
<li>no ability to delete resources </li>
<li>no ability to list collections </li>
<li>repository objects are POSTed as ZIP files to collections</li>
<li>HTTP Basic Authentication + TLS for security</li>
<li>the use of DublinCore to describe collections and their respective policies.</li>
<li>collections can support <i>mediated</i> deposit which means deposits can include the <i>X-On-Behalf-Of</i> HTTP header to identify the user to create the resource for. </li>
<li>the use of <i>X-Format-Namespace </i>HTTP header to explicitly identify the format of the submission package that is zipped up: for example IMS, METS or DIDL.</li>
</ul>
<p>While I understand why update and delete would be disabled for deposited packages I don't really understand why the listing of collections would be disabled. An atom feed for a collection would essentially enable harvesting of a repository, much like ListRecords in OAI-PMH.</p>
<p>I'm not quite sure I completely understand X-On-Behalf-Of and sword:mediation either. I could understand X-On-Behalf-Of in an environment where there is no authentication. But if a user is authenticated couldn't their username be used to identify who is doing the deposit? Perhaps there are cases (as the doc suggests) where a deposit is done for another user?</p>
<p>All in all this is really wonderful work. Of particular value for me was seeing the list of <a href="http://www.ukoln.ac.uk/repositories/digirep/index/SWORD_APP_Profile_0.4#SWORD_Extensions_to_the_APP">SWORD extensions</a> and also the <a href="http://www.ukoln.ac.uk/repositories/digirep/index/SWORD_APP_Profile_0.4#5._Protocol_Operations">use of HTTP status codes.</a> If I have the time I'd like to throw together a sample repository server and client to see just how easy it is to implement SWORD. I did try some <a href="http://code4lib.org/2007/summers">experiments</a> along these lines for my <a href="http://code4lib.org/2007/summers">presentation</a> back in February...but they never got as well defined as SWORD.</p>
