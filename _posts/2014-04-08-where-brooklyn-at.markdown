---
layout: post
status: publish
published: true
title: Where Brooklyn At?
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 7378
wordpress_url: http://inkdroid.org/journal/?p=7378
date: '2014-04-08 12:41:20 +0000'
date_gmt: '2014-04-08 19:41:20 +0000'
tags:
- flickr
- redis
- brooklyn-museum
comments:
- id: 86926
  author: bernsteins
  author_email: shelley.bernstein@brooklynmuseum.org
  author_url: ''
  date: '2014-04-09 06:36:02 +0000'
  date_gmt: '2014-04-09 13:36:02 +0000'
  content: |
    Thanks for this...
    Keep in mind, we had a "blended" account and were the only Commons member to have that.  So, uploads included museum goings on (artist load-ins) as well as Commons material.  If you are pulling stats, make sure you are pulling only Commons material so you can do an apples to apples comparison - there's a flag for Commons in the metadata.
    Tags...
    48 tags - that's not correct.  I think you were just looking at the posse home page for that Flickr user, which only displays the latest tags.  All tags were pulled over via a nightly running script.  Interestingly, however, our script pulled 15,098 tags over the years.  I'm not sure where the discrepancy lies in the numbers you have vs. our own.  We did have trouble with the script every so often and could have dupes, but 48 is not right :)
    The machine tags "bm=" helped us match up tags to objects in the scripting, so we could pull things back over.  My understanding, though, is that all of the commons images had those, so 849 does not seem right.  The geotags were coming in b/c we had placed suggestify links in the descriptions of every image asking users to geotag...you can see few did -- it was difficult to get participation at this level.
    Comments were moved over when they corrected records and became part of our internal records.  Ditto for notes, which we only took screenshots of b/c the note without the image doesn't tell the whole story.  Unfortunately, we can't surface that material in our own collection online, so this info will remain internal (at least for now).
    Flickr peaked in 2008, for sure, but that's because that is when we joined.  We were the third institution to sign up and there was a lot of press at that time.  I wouldn't necessarily say that's a good basis for a peak, but it has been on steady decline since then.
- id: 86927
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2014-04-09 07:42:08 +0000'
  date_gmt: '2014-04-09 14:42:08 +0000'
  content: |
    <p>Re: the 48 tags. My only insight into what tags were pulled over was the link you included in your <a href="http://inkdroid.org/journal/2014/04/07/glass-houses/comment-page-1/#comment-86924" rel="nofollow">last reply</a>. That page appears to only have 49 tags on it? I'm glad to hear you managed to get a snapshot of the comments, notes and tags, even if it can only be kept internal for now. I must admit, the more I look at the data, the worse it makes me feel that it was removed. But it is what it is. I can well understand how it could simplify things to focus more on your local web presence.</p>
- id: 86928
  author: bernsteins
  author_email: shelley.bernstein@brooklynmuseum.org
  author_url: ''
  date: '2014-04-09 08:09:53 +0000'
  date_gmt: '2014-04-09 15:09:53 +0000'
  content: |
    Right, that page only displays the recent and does not show the aggregated total, unfortunately, so it was an easy misread.  I'm happy to clarify things in advance of publication, always (for what it's worth in the future - you can always email me if you want to).
    It is what it is.  We pulled the plug because our focus changed.  The metrics helped us make that decision, but the goals are what is most important.
    Generally, however, we think this may be a much bigger issue down the line as platforms continue to change.  We think it's better to talk about this now and set examples (for bringing data back, correcting records, etc) than when the sun sets :/
- id: 86929
  author: Flickr Commons LAMs | inkdroid
  author_email: ''
  author_url: http://inkdroid.org/journal/2014/04/11/flickr-commons-lams/
  date: '2014-04-11 13:58:42 +0000'
  date_gmt: '2014-04-11 20:58:42 +0000'
  content: |
    This Article was mentioned on <a href="http://inkdroid.org/journal/2014/04/11/flickr-commons-lams/" rel="nofollow">inkdroid.org</a>
---

<p>As a follow up to my <a href="http://inkdroid.org/journal/2014/04/07/glass-houses/">last post</a> I added a <a href="https://github.com/edsu/py-flarchive/blob/master/flarchive/activity.py">script</a> to my fork of Aaron's <a href="https://github.com/straup/py-flarchive">py-flarchive</a> that will load up a <a href="http://redis.io/">Redis</a> instance with comments, notes, tags and sets for Flickr images that were uploaded by Brooklyn Museum. The script assumes you've got a snapshot of the archived metadata, which I <a href="https://github.com/straup/flickr-commons-metadata/releases">downloaded</a> as a tarball. It took several hours to unpack the tarball on a medium ec2 instance; so if you want to play around and just want the redis database <a href="mailto:ehs@pobox.com">let me know</a> and I'll get it to you.</p>
<p>Once I loaded up Redis I was able to generate some high level stats:</p>
<ul>
<li>images: 5,697</li>
<li>authors: 4,617</li>
<li>tags: 6,132</li>
<li>machine tags: 933</li>
<li>comments: 7,353</li>
<li>notes: 963</li>
<li>sets: 141</li>
</ul>
<p>Given how many images there were there it represents an astonishing number of authors: unique people who added tags, comments or notes. If you are curious I generated a list of the tags and saved them as a <a href="https://docs.google.com/spreadsheets/d/1_YAfB2PdRZ-PLtEkPaQzlgbmqaxEQLTGlNKBLhTWEEk/edit?usp=sharing">Google Doc</a>. The machine tags were particularly interesting to me. The majority (849) of them look like Brooklyn Museum IDs of some kind, for example:</p>
<blockquote>
<p>bm:unique=S10_08_Thebes/9928</p>
</blockquote>
<p>But there were also 51 geotags, and what looks like 23 links to items in <a href="http://pleiades.stoa.org/home">Pleiades</a>, for example:</p>
<blockquote>
<p>tag:pleiades:depicts=721417202</p>
</blockquote>
<p>If I had to guess I'd say this particular machine tag indicated that the Brooklyn Museum image depicted <a href="http://pleiades.stoa.org/places/721417202">Abu Simbel</a>. Now there weren't tons of these machine tags but it's important to remember that other people use Flickr as a scratch space for annotating images this way.</p>
<p>If you aren't familiar with them, Flickr notes are annotations of an image, where the user has attached a textual note to a region in the image. Just eyeballing the list, it appears that there is quite a bit of diversity in them, ranging from the whimsical:</p>
<ul>
<li>cool! they look soo surreal</li>
<li>teehee somebody wrote some graffiti in greek</li>
<li>Lol are these painted?</li>
<li>Steaks are ready!</li>
</ul>
<p>to the seemingly useful:</p>
<ul>
<li>Hunter's Island</li>
<li>Ramesses III Temple</li>
<li>Lapland Village</li>
<li>Lake Michigan</li>
<li>Montuemhat Crypt</li>
<li>Napoleon's troops are often accused of destroying the nose, but they are not the culprits. The nose was already gone during the 18th century.</li>
</ul>
<p>Similarly the general comments run the gamut from:</p>
<ul>
<li>very nostalgic...</li>
<li>always wanted to visit Egypt</li>
</ul>
<p>to:</p>
<ul>
<li>Just a few points. This is not 'East Jordan' it is in the Hauran region of southern Syria. Second it is not Qarawat (I guess you meant Qanawat) but Suweida. Third there is no mention that the house is enveloped by the colonnade of a Roman peripteral temple.</li>
<li>The fire that destroyed the buildings was almost certainly arson. it occurred at the height of the Pullman strike and at the time, rightly or wrongly, the strikers were blamed.</li>
<li>You can see in the background, the TROCADERO with two towers .. This "medieval city" was built on the right bank where are now buildings in modern art style erected for the exposition of 1937.</li>
</ul>
<p>Brooklyn Museum pulled over 48 tags from Flickr before they deleted the account. That's just 0.7% of the tags that were there. None of the comments or notes were moved over.</p>
<p>In the data that Aaron archived there was one indicator of user engagement: the datetime included with comments. Combined with the upload time for the images it was possible to create a <a href="https://docs.google.com/spreadsheets/d/1oONIt77ASpVHmeL1zwbJytCdn5cGLYWR1AFs46KrHCE/edit?usp=sharing">spreadsheet</a> that correlates the number of comments with the number of uploads per month:</p>
<p><a href="https://docs.google.com/spreadsheets/d/1oONIt77ASpVHmeL1zwbJytCdn5cGLYWR1AFs46KrHCE/edit?usp=sharing"><img src="http://inkdroid.org/images/flickr-brooklyn-graph.png" alt="Brooklyn Museum Flickr Activity" /></a></p>
<p>I'm guessing the drop off in December of 2013 is due to that being the last time Aaron archived Brooklyn Museum's metadata. You can see that there was a decline in user engagement: the peak in late 2008 / early 2009 was never matched again. I was half expecting to see that user engagement fell off when Brooklyn Museum's interest in the platform (uploads) fell off. But you can see that they continued to push content to Flickr, without seeing much of a reward, at least in the shape of comments. It's impossible now to tell if tagging, notes or sets trended differently.</p>
<p>Since Flickr includes the number of times each image was viewed it's possible to look at all the images and see how many times images were viewed, the answer?</p>
<blockquote>
<p>9,193,331</p>
</blockquote>
<p>Not a bad run for 5,697 images. I don't know if Brooklyn Museum downloaded their metadata prior to removing their account. But luckily Aaron did.</p>
