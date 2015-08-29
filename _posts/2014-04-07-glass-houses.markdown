---
layout: post
status: publish
published: true
title: Glass Houses
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 7348
wordpress_url: http://inkdroid.org/journal/?p=7348
date: '2014-04-07 09:29:16 +0000'
date_gmt: '2014-04-07 16:29:16 +0000'
tags:
- flickr
- wikipedia
- internet archive
- Brooklyn Museum
comments:
- id: 86924
  author: bernsteins
  author_email: shelley.bernstein@brooklynmuseum.org
  author_url: ''
  date: '2014-04-07 12:24:29 +0000'
  date_gmt: '2014-04-07 19:24:29 +0000'
  content: |
    Hi Ed,

    Thanks for your thoughts here and allowing comments on your blog, where I can respond.  I've also been following the discussion on twitter @shell7.

    So, a few things to clarify.

    The bots you are referencing from three years ago did upload the bulk of our collection objects to Wikimedia Commons and the Internet Archive, but there's an important distinction in the content.  The Flickr Commons images were part of our archives not images of accessioned objects in our the collection so they were not part of the bot migration three years ago.  That's one reason why you are seeing a discrepancy.

    Why are you not seeing more uploads via the bot?  A couple of issues there - first Wikimedia really dislikes bots.  We coded the bot, but in the end we had to constantly watch over the upload process and it was never fully automated to the degree where we felt we could "set it and forget it" and just allow it to run in the background.  (By comparison, the transfer to IA was much easier.)  In the end, we did one full dump of the appropriately licensed collection objects and then stopped using the bot.

    What's our Wiki upload strategy now?  Ever since the bot debacle, we have worked on a series of projects to contribute content to Wikipedia and Wikimedia, but more in a manner which works better for the wiki community.  Assets are more carefully looked at, uploaded to wikimedia, and then seeded into articles.  It's a process which we do by hand and with a lot of thinking behind it.  We've been lucky to have funding to do so and <a href="http://www.brooklynmuseum.org/community/blogosphere/tag/kress/" rel="nofollow">these posts</a> by our former Kress fellow might be of interest.

    In terms of this migration (Flickr Commons to Wikimedia), we had a number of volunteers each take a set of the Flickr images, migrate them to wikicommons and now we are in the process of seeding them into appropriate articles.

    However, just moving assets to Wikimedia Commons is not everything.  As stated, what happens to the community driven content?  <a href="http://www.brooklynmuseum.org/community/posse/profiles/FlickrCommons" rel="nofollow">Tags</a> were being fairly consistently brought over into our collection online, so those contributions have been retained.  Throughout the years, our archivist has also corrected official records through community input and that remains vitally important and has made being a part of The Commons a worthwhile endeavor from the start.

    That said, did we get every single thing migrated, archived, updated, etc?   No, for sure that's not the case.  But, we felt like we did a lot of due diligence and much of the really valuable information has been migrated even if some of it is only internal at this point.

    I hope that answers some of the questions and I'm happy to field more.

    Shelley
- id: 86925
  author: Where Brooklyn At? | inkdroid
  author_email: ''
  author_url: http://inkdroid.org/journal/2014/04/08/where-brooklyn-at/
  date: '2014-04-08 12:41:24 +0000'
  date_gmt: '2014-04-08 19:41:24 +0000'
  content: |
    This Article was mentioned on <a href="http://inkdroid.org/journal/2014/04/08/where-brooklyn-at/" rel="nofollow">inkdroid.org</a>
---
<p><img src="http://inkdroid.org/images/flickr-brooklyn.png" alt="" />You may have noticed Brooklyn Museum's recent <a href="http://www.brooklynmuseum.org/community/blogosphere/2014/04/04/social-change/">announcement</a> that they have pulled out of <a href="https://secure.flickr.com/commons">Flickr Commons</a>. Apparently they've seen a "steady decline in engagement level" on Flickr, and decided to remove their content from that platform, so they can focus on their own website as well as Wikimedia Commons.</p>
<p>Brooklyn Museum <a href="http://www.brooklynmuseum.org/community/blogosphere/2010/04/12/cross-posting-the-collection-to-wikimedia-commons-and-the-internet-archive/">announced</a> three years ago that they would be cross-posting their content to Internet Archive and Wikimedia Commons. Perhaps I'm not seeing their current bot, but they <a href="https://commons.wikimedia.org/wiki/Brooklyn_Museum">appear</a> to have two, neither of which have done an upload since March of 2011, based on their <a href="https://commons.wikimedia.org/wiki/Special:Contributions/BrooklynMuseum">user</a> <a href="https://commons.wikimedia.org/wiki/Special:Contributions/BrooklynMuseumBot">activity</a>. It's kind of ironic that content like <a href="https://commons.wikimedia.org/wiki/File:Paris_Exposition_Champ_de_Mars_and_Eiffel_Tower,_Paris,_France,_1900_n1.jpg">this</a> was uploaded to Wikimedia Commons by <a href="https://commons.wikimedia.org/wiki/User:Flickr_upload_bot">Flickr Uploader Bot</a> and not by one of their own bots.</p>
<p>The announcement stirred up a fair bit of <a href="https://twitter.com/benfinoradin/status/452422242467864577">discussion</a> about how an institution devoted to the preservation and curation of cultural heritage material could delete all the curation that has happened at Flickr. The theory being that all the comments, tagging and annotation that has happened on Flickr has not been migrated to Wikimedia Commons. I'm not even sure if there's a place where this structured data could live at Wikimedia Commons. Perhaps some sort of template could be created, or it could live in <a href="http://wikidata.org">Wikidata</a>?</p>
<p>Fortunately, <a href="https://twitter.com/thisisaaronland">Aaron Straup-Cope</a> has a backup copy of Flickr Commons metadata, which includes <a href="https://github.com/straup/flickr-commons-metadata/tree/master/data/83979593@N00">a snapshot</a> of the Brooklyn Museum's content. He's been harvesting this metadata out of concern for Flickr's future, but surprise, surprise -- it was an organization devoted to preservation of cultural heritage material that removed it. It would be interesting to see how many comments there were. I'm currently unpacking a tarball of Aaron's metadata on an ec2 instance just to see if it's easy to summarize.</p>
<p>But:</p>
<div style="text-align: center; margin: 15px;">
  <a title="People who live in glass houses shouldn't throw stones." href="https://en.wikipedia.org/wiki/File:Billy_Joel_-_Glass_Houses.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/8/81/Billy_Joel_-_Glass_Houses.jpg" /></a>
</div>
<p>I'm pretty sure I'm living in one of those.</p>
<p>I agree with Ben:</p>
<blockquote class="twitter-tweet" lang="en">
<p>
    <a href="https://twitter.com/edsu">@edsu</a> <a href="https://twitter.com/textfiles">@textfiles</a> <a href="https://twitter.com/dantobias">@dantobias</a> <a href="https://twitter.com/waxpancake">@waxpancake</a> <a href="https://twitter.com/brooklynmuseum">@brooklynmuseum</a> Yep. Unfortunately this is a blind spot even for orgs doing things relatively well
  </p>
<p>— Ben Fino-Radin (@benfinoradin) </p>
<p>  <a href="https://twitter.com/benfinoradin/statuses/453181565976473600">April 7, 2014</a>
</p></blockquote>
<p><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script> It would help if we had a bit more method to the madness of our own Web presence. Too often the Web is treated as a marketing platform instead of our culture's predominant content delivery mechanism. Brooklyn Museum deserves a lot of credit for talking about this issue openly. Most organizations just sweep it under the carpet and hope nobody notices.</p>
<p>What do you think? Is it acceptable that Brooklyn Museum discarded the user contributions that happened on Flickr, and that all the people who happened to be pointing at said content from elsewhere now have broken links? Could Brooklyn Museum instead decided to leave the content there, with a banner of some kind indicating that it is no longer actively maintained? Don't lots of copies keep stuff safe?</p>
<p>Or perhaps having too many copies detracts from the perceived value of the currently endorsed places of finding the content? Curators have too many places to look, which aren't synchronized, which add confusion and duplication. Maybe it's better to have one place where people can focus their attention?</p>
<p>Perhaps these two positions aren't at odds, and what's actually at issue is a framework for thinking about how to migrate Web content between platforms. And different expectations about content that is self hosted, and content that is hosted elsewhere?</p>
