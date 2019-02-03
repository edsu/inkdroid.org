---
layout: post
title: Archival Shapes
tags:
- archive
- web
---

If you've wandered across this blog before you'll have gathered that over the
past few years I've become interested in studying how web archives are
assembled. By *web archives* I generally mean collections of web content, that
are often (but not necessarily) also on the web. *Web Archives* are often
thought to have a particular architectural shape, e.g. as a Wayback Machine,
running atop a corpus of WARC data, that has been assembled with Heritrix -- or
some variation on that theme (e.g.  Webrecorder). But I'd like to suggest that
this is not the only shape that web archives come in, and that artificially
limiting our assessment of web archives in this way shortchanges us from
recognizing the full spectrum of archiving that is being practiced on the web
today.

For example while indexing the web Google routinely collect content from the web
which sometimes leaks out in the form of fleeting citations to the [Google
Cache](https://support.google.com/websearch/answer/1687222?hl=en). Not all
archives keep everything forever (whatever forever means). So the fact that
Google Cache isn't permanent doesn't necessarily mean it's not archival. I think
it's actually kind of useful to look at Google Cache as one aspect of an
archival process at work. Google has built particular distributed workflows for
collecting content from the web, to use in their indexing, search, advertising
and other business operations. They aren't using Heretrix and Wayback Machine--I
guess there's the possibility of WARC being used somewhere in their
infrastructure, but I doubt it (if you know otherwisee it would be great to
[hear from you](mailto:ehs@pobox.com).

For the last 6 months I've been collecting tweets that reference particular web
archives including Google's Cache to see how web archives are shared in social
media. The thought being that this data could provide some insight into how
archival representations are being used on the web (props to [Jess
Ogden](https://archivingtheweb.me/) for the idea).  So far it has found 631,811
tweets, only 10,053 of which point at Google's Cache. Here's an example of one
such tweet:

<a href="https://twitter.com/1o5CleanEnergy/status/1081938670616231938"><img class="img-responsive" src="/images/twitter-google-cache.png"></a>

As another archival shape consider the social media site
[Pinterest](https://pinterest.com), which allows users to build their own
collections of images from the web.  Users add images as *pins* to *boards*
where they can be described, put into different *sections* and then shared and
reshared with others both inside and outside of the Pinterest platform.
Pinterest provide a [browser
extension](https://about.pinterest.com/en/browser-button) that lets you hover
over any image you see on the web and easily add it to one of your boards.  This
*pinning* operation doesn't capture the entire page, but just the one image that
you have selected. Pinterest does attempt to extract the title and description
of the image, and they also remember where the image has from in terms of its
original URL if you want to go back to see where this image came from. In this
example below I've added a [portrait of Michelle
Obama](https://npg.si.edu/object/npg_NPG.2018.15) from the National Portrait
Gallery to a Pinterest board. You can see near the bottom of the third screen
that the link to the National Portrait Gallery is preserveed. I think this
simple measure of provenance is what gives Pinterest an archival shape.

<img class="img-responsive" src="/images/pinterest1.png">
<img class="img-responsive" src="/images/pinterest2.png">
<img class="img-responsive" src="/images/pinterest3.png">

The architecture of the Internet Archive has done a lot to promulgate the idea
that web archives have a particular architectural shape. I think part of the
reason for this is because of the astounding job IA does in providing access to
both the portions of the web that they have archived, as well as the descriptive
metadata for their collections. They make the data they have collected from the
web available for *replay* through their Wayback machine, and also through a
variety of REST APIs as well as BitTorrent.

This data is gold mine for people wanting to view the web over time, and also
for researchers studying the processes by which web archives are built. But it's
important to remember that IA is just one particular type of web archive, and
that other archival representations of the web exist. As @Ogden:2017 hasve
pointed out, it's important to understand not only the architectural formations
of web archives, but also the forms of labor that go into producing them.

One of the interesting aspects to the way that Internet Archive decide what to
collect from the web is their collaboration with the
[ArchiveTeam](https://archiveteam.org/). ArchiveTeam is a loose collective of
volunteers that work to collect content from sites that are going offline.  For
example they are working [right
now](https://motherboard.vice.com/en_us/article/d3bekm/archivists-say-tumblr-ip-banned-them-for-trying-to-preserve-adult-content)
to collect Tumblr as it is removing large portions of its content so they can
get their iOS app
[back](https://tumblr.zendesk.com/hc/en-us/articles/360012260613-November-16-2018-Issues-with-the-iOS-app)
in the iOS App Store. ArchiveTeam build crawling/archiving bots using their own
infrastructure and transfer the collected WARC data to the InternetArchive.

Since this data is deposited at the Internet Archive you can use the Internet
Archive's API to examine how the data has grown over time. The data itself is
not available to the general public outside of the Wayback Machine. But any
member of the public is able to view the metadata for each item, where an item
is a set of WARC data delivered from the ArchiveTeam to the Internet Archive.
I've documented this process in [a Jupyter notebook](https://github.com/edsu/notebooks/blob/master/ArchiveTeam.ipynb) if
you are interested in the details, but here is a resulting graph of the ingest
rate per month:

<img class="img-responsive" src="/images/archiveteam-ingest.png">

For now let's set aside the ethical questions raised by Tumblr's decision to
purge their site, and ArchiveTeam's response to unilaterally archive the at risk
Tumblr content for perpetuity without with the content creator's consent. These
are important questions, and are a big part of what I'm concerned with in my own
research, but they aren't really the focus of this post. Instead what I wanted
to emphasize is that the different shapes of web archives extend outside of
their technical architectures and into the forms of labor that they make
possible, or are made possible by, and that the assemblages of technology. We
can think about this as usability, collaboration, or crowdsourcing, but
ultimately these amount to different types of labor.

Allow me to close this meandering blog post by connecting the discussion of
archival shapes back to archives. In his genealogical exploration of the
development of the Records Continuum model Frank Upward suggests that the idea
of the records continuum sits atop the foundation Australian recordkeeping
established by Ian Maclean [@Upward:1994 ; @Maclean:1959].  According to Upward,
Maclean broke with the (at the time) established
[Jenkinsonian](https://en.wikipedia.org/wiki/Hilary_Jenkinson) idea that
archival records accrue as part of *natural* processes. For Jenkinson the
archivist is an impartial actor who merely cares for the records that have been
generated as part of the functioning of some administrative body. Upward saw
that Maclean returned to an older conception of archival records found in the so
called Dutch Manual [@Muller:2003], where archival records are *created* or
*produced*.  Archival records aren't simply collected but created, and *made* to
be archival. In this view the archivist plays a significant role in that
creative process, and is not a neutral, unbiased participant.

I mention this here just as a personal place holder for a larger discussion.
Sometimes web resources are published in such a way that reflects archival
thinking. For example Wikipedia's publishing of the version history of an
article. Or when a blog post is published with a *permalink* that makes it
easier to cite, and move about on the web. But sometimes (most of the time) web
resources are published without thinking about the archive at all. But these
resources are made archival by placing them into an archival context, such as
Google Cache or Pinterest mentioned above. The mechanics of this placement
(which let's be honest is really a type of creation) are significant to the
study of archival shapes on the web.

### References
