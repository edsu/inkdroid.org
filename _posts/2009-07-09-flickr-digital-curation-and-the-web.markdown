---
layout: post
status: publish
published: true
title: flickr, digital curation and the web
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 1072
wordpress_url: http://inkdroid.org/journal/?p=1072
date: '2009-07-09 07:26:25 +0000'
date_gmt: '2009-07-09 14:26:25 +0000'
tags:
- python
- web
- repositories
- flickr
- curation
comments:
- id: 81615
  author: Peter Keane's Miscellanea &middot; Take Two
  author_email: ''
  author_url: http://blogs.law.harvard.edu/pkeane/2010/01/03/take-two/
  date: '2010-01-04 00:29:06 +0000'
  date_gmt: '2010-01-04 07:29:06 +0000'
  content: "[...] Why authorities are not available as web resources is mind-boggling
    to me.  Oh wait, they are!  Ed Summers et. al. at the Library of Congress are
    at the forefront of this whole approach I am talking about.  Keep an eye on their
    work for ideas/inspiration. [...]"
- id: 85048
  author: Social Meta-data collection &laquo; The Journeyler
  author_email: ''
  author_url: http://hugh.thejourneyler.org/social-meta-data-collection
  date: '2011-07-02 16:42:51 +0000'
  date_gmt: '2011-07-02 23:42:51 +0000'
  content: "[...] model has been implemented by the Library of Congress in the Chronicling
    America project. Where the Library of Congress is putting images out on Flickr
    and the public is annotating [...]"
---
<p>The Library of Congress has started to put selected content from <a href="http://chroniclingamerica.loc.gov">Chronicling America</a> into <a href="http://flickr.com">Flickr</a> as part of the <a href="http://www.flickr.com/photos/library_of_congress/sets/72157619452486566/">Illustrated Newspaper Supplements</a> set. More details on the rationale and process involved can be found in a <a href="http://www.loc.gov/rr/news/flickr/flickrFAQ.html">FAQ</a> on the LC Newspapers and Current Periodical Reading Room website. </p>
<p>So for example this newspaper page on Chronicling America:</p>
<p><a href="http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-12-26/ed-1/seq-13/"><img src="http://inkdroid.org/images/chronam_flickr_2.png" style="width: 500px; border: none;" /></a></p>
<p>Is also available on Flickr:</p>
<p><a href="http://www.flickr.com/photos/library_of_congress/3608741612"><img src="http://inkdroid.org/images/chronam_flickr_1.png" style="width: 500px; border: none;" /></a></p>
<p>I haven't written about it here yet, but Chronicling America is just a regular vanilla Django/MySQL/Apache webapp which <a href="http://lists.w3.org/Archives/Public/public-lod/2009May/0301.html">exposes machine readable metadata</a> for the newspaper content using the <a href="http://www.w3.org/DesignIssues/LinkedData.html">Linked Data</a> pattern. It just so happens that <a href="http://twitter.com/davewoodward">Dave</a> was able to use these linked data views to determine the metadata to use when uploading content to Flickr. For example if a curator wants to have <a href="http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-12-26/ed-1/seq-13/">this newspaper page</a> uploaded to Flickr,  Dave's flickr uploading program is able to use the associated <a href="http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-12-26/ed-1/seq-13.rdf">metadata</a> (referenced in a link element inthe HTML) to get the newspaper title, issue, date, and other related metadata. The beauty of this was Dave was able to do the technical work on his own, and it didn't require any formal project coordination.</p>
<p>A few weeks ago, on learning of the Flickr / Chronicling America integration <a href="http://www.csc.liv.ac.uk/~azaroth/">Rob Sanderson</a> asked if we could possibly reference the Flickr content in our own data views. Rob became interested in Chronicling America because of its use of the Open Archives Initiative <a href="http://www.openarchives.org/ore/1.0/vocabulary.html">Object Reuse and Exchange Vocabulary</a> in the linked data views. Rob has written a rather nice oai-ore Greasemonkey visualization tool called <a href="http://foresite.cheshire3.org/explorer/foresite-explorer.user.js">foresite-explorer</a>, which can visualize oai-ore links to Flickr. It also makes sense from a curatorial perspective to want to capture these bi-directional links between Chronicling America and Flickr in the Chronicling America database.</p>
<p>After agreeing with Rob I've had it on my plate to get the list of Flickr URLs and their associated Chronicling America URLs from Dave, for loading into Chronicling America so that the links can be served up in the data views, and perhaps maybe in the HTML. But yesterday morning I had the realization that I didn't really need to ask (and keep asking every month) Dave for the list. Since Dave created a Flickr set for these pages, and has embedded the URI for the Chronicling America page as a machine tag I can get it right from Flickr. So I hacked together a quick <a href="http://gist.github.com/142889">script</a>, and now I have the list too.</p>
<pre>
ed@rorty:~$ ./flickr_chronam.py
(u'http://www.flickr.com/photos/library_of_congress/3608399458', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-01-03/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3608400834', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-01-10/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3608402104', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-01-17/ed-1/seq-16/')
(u'http://www.flickr.com/photos/library_of_congress/3608403362', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-01-24/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3607588861', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-01-31/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3608405718', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-02-07/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3608407068', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-02-14/ed-1/seq-16/')
(u'http://www.flickr.com/photos/library_of_congress/3608408274', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-02-21/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3607593693', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-02-28/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3608410606', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-03-07/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3607596267', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-03-14/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3607597927', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-03-21/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3608414374', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-03-28/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3608415708', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-04-04/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3607601559', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-04-11/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3608418042', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-04-18/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3608419060', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-04-25/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3607604705', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-05-02/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3608421240', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-05-09/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3608422694', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-05-16/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3607608459', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-05-23/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3608425436', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-05-30/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3607611709', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-06-06/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3607637819', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-06-13/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3607638897', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-06-20/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3608455948', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-06-27/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3607641409', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-07-04/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3607642551', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-07-11/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3607889205', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-07-18/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3608709982', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-07-25/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3607894517', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-08-01/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3607896027', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-08-08/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3608713826', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-08-15/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3608715804', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-08-22/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3607900561', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-08-29/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3608718394', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-09-05/ed-1/seq-15/')
(u'http://www.flickr.com/photos/library_of_congress/3608719874', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-09-12/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3608721302', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-09-19/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3607906387', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-09-26/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3608724542', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-10-03/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3607909093', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-10-10/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3607910739', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-10-17/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3608728408', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-10-24/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3607913989', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-10-31/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3607915481', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-11-07/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3607916497', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-11-14/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3608734354', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-11-21/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3607919583', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-11-28/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3608737124', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-12-05/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3608738658', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-12-12/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3608740242', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-12-19/ed-1/seq-17/')
(u'http://www.flickr.com/photos/library_of_congress/3608741612', u'http://chroniclingamerica.loc.gov/lccn/sn83030214/1909-12-26/ed-1/seq-13/')
</pre>
<p>The point of this blog post is that Dave, Rob and I were able to independently work on tools for pushing the same repository content around without having to talk much at all. The World Wide Web, and URIs in particular, enables this sort of integration. I guess some people would argue that this is a Web2.0 Mashup, and I guess they would be right in a way. But really it is using the Web the way it was designed to be used--as a decentralized information space. Flickr can tell me about the Chronicling America content that's on Flickr; and Chronicling America can tell other people about the repository objects themselves.</p>
<p>Now I just need to make those links available for Rob in the data views :-)</p>
