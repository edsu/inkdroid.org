---
layout: post
title: GDPR Archive
tags:
- social-media
- archives
---


This is just a short post to write down an idea (that I'm assuming others have
had) that for me was born of frustration on the [Documenting the Now] project
and inspiration while reading @Escobar:2017, here on the 5th anniversary of the
killing of [Mike Brown].

Let's get the frustration out of the way first.

We're trying to create tools that help people document events that get shared in
social media. We started out trying to collect what was happening in Twitter
during the [Ferguson Uprising].  As we all learned later with [Cambridge
Analytica] it was actually a bit too easy to get at this data, especially if you
have the technical skills to figure out how to talk to their API, and the
credibility to get a set of app keys.

Getting the data is the easy part. Getting the [consent] of the people that
created it, so that you can archive it is something else entirely.

Thankfully now it's harder for just anyone to get at this data. But the policies
around *who* gets access and *how* they get access to it act as a gateway that
limits the people and organizations who can use the data. This is by design.
Increasingly this is a big problem for researchers who are no longer able to
study social media as they could before Cambridge Analytica [@Bruns:2019 ;
@Freelon:2018a].  But its also a huge problem for just regular people, the
billions of people who use social media every day.

However (and this is where the inspiration comes in) through a series of
[workshops] starting in Ferguson and now being held in [locations around the US]
organized by the tireless [Bergis Jules], the Documenting the Now team has had
the opportunity to hear from community and activist groups who are using social
media as a place to document their own work. And they would like to get their
data out to have it for themselves.

For example the [Texas After Violence Project] we met with last week have a
website, and a Twitter account, and an Instagram account. They use these spaces
to publish oral histories that help document state-sanctioned violence on people
and communities. While there are tools for pushing content into these spaces
there aren't really any for getting their stuff out again. They want to have
their data in case the platform decides their content is no longer welcome
there, or the platforms policies change and *they* no longer want their content
on there. As you can imagine there are lots of reasons why people might want to
get their own data out of a social media platform. At its heart its just the
nagging awareness that lots of copies keeps stuff safe.

And yet (back to the frustration) it's a big investment for these groups to be
able to download and install the [DocNow] application as it stands now. It
involves standing up an application in the cloud that's composed of a database
or two, and a webserver, and managing little worker processes that harvest
metadata, unshorten links, etc. Even with devops tools to automate that build
process it's complicated, and kinda expensive for an activist organization.

Plus the DocNow app is centered on Twitter, because of the public API access it
still provide, and its use by journalists and the media. But the world of social
media is so much bigger that just Twitter. Even accessing Twitter requires
someone to create an app and get approved to get the keys to run it, which
includes convincing Twitter that you are worthy of that, which is an
increasingly opaque process to navigate.  We have a command line tool [twarc]
which doesn't require such an expensive set up as DocNow, but the command line
isn't for everyone, and it still requires you to get app keys. Then there are
tools like [twint] that scrape content out of Twitter because they can, even if
that's against the platform Terms of Service.

A year ago the [General Data Protection Regulation (GDPR)] kicked in in the EU,
and a nice side effect of [Article 15] is that social media platforms had to
provide a way for you to get your data out of their platform. [Alexandra
Dolan-Mescal] recently created a short zine called [Social Control] the provides
people with instructions of how to get their data out of Facebook, Twitter,
Instagram and Snapchat. Some of the platforms provide rudimentary guides to the
downloaded data, but that's not always the case.

So what's the idea already you say?

What if there were an application that you could run on *your computer* that
allowed you to import these GDPR archives and access your photos, posts, etc in
a meaningful way so you could have them yourself? This idea has been tried
before by folks like [Aaron Straup-Cope] with his [PrivateSquare], or [Dan
Phiffer]'s [smol.archive]. But these have been a bit hamstrung by the fact that
they require you to get keys so that you can access your data. This, and setting
up an application aren't things just anybody can typically do. Working off of
the GDPR download would be slower, and less up to date, but it would at least
would only require you to download a zip file from the said platform and then
start up a desktop app and import it. Then you'd have to repeat that process
occasionally. 

I mentioned this idea on Twitter, and got some interesting responses. One of
which is to try out Solid which I should look at more closely. I'm much more
familiar with [Mastodon] and [Scuttlebutt] in the federated/distributed social
media space, and understood Solid to be working to achieve similar goals.  I
absolutely think we need these new models for social media, but we also have a
lot of people using centralized forms that have evolved on the (once)
distributed web. We have an obligation to help people work with the web we have
now, while also helping build a better one.

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">I&#39;m starting to wonder if the only way for people to manage their own social media data is for them to periodically download their GDPR archive and give it to an app that they can run themselves (off cloud). Has this been done already? Is it a crazy idea?</p>&mdash; Ed Summers (@edsu) <a href="https://twitter.com/edsu/status/1159835291198328832?ref_src=twsrc%5Etfw">August 9, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script> 

Another alternative to a new app would be to get folks working with the soon to
be released [Webrecorder-Desktop]. We actually did this in our workshop with the
Texas After Violence Project. Webrecorder-Desktop is an application you run on
your workstation that you can use to archive and replay all kinds of web
content.  Since it uses your browser to do it it creates a high fidelity copy
that is driven by how you interact with content in the browser.  One thing that
could be tedious is having to do repetitive actions like click on the detail of
an Instagram post to get the larger image and comments.  Fortunately they are
working on what they called [Behaviors] that allow you to semi-automate the
collection, so you could point your Webrecorder-Desktop app at your Instagram
account and tell it to autoscroll the page and click on each item to get the
details automatically.

So maybe instead of creating a new app to make sense of the GDPR download,
perhaps it would be better (and more collaborative) to think about enhancing
these behaviors to allow people to collect content from these sites? Maybe
Webrecorder-Desktop could use the GDPR archive in some way in order to know what
to crawl?

The obvious benefit to using the GDPR data is that the only person who has
access to it is you. You are the only person who can request it and download it.
Services like [TwArxiv] that ask you to upload your GDPR data to another service
on the web are interesting experiments, but they are also risky propositions
that you have every right to be wary of. Plus, you may not want to analyze your
data, but just have your own copy of it, for yourself. Because it's yours,
right? 

PS. I don't particularly want to argue about whether the GDPR download is an
*archive* or not.  We all know that it's not *that* kind of archive. But it's a
useful convenience to call it that. And maybe if it were more useful, and could
be managed and backed up, it would be a little bit more like *that* kind of
archive ;-)

### References

[Documenting the Now]: https://www.docnow.io

[locations around the US]: https://twitter.com/documentnow/status/1110555760948199425

[PrivateSquare]: http://straup.github.io/privatesquare/

[Bergis Jules]: http://straup.github.io/privatesquare/

[workshops]: https://www.docnow.io/#meetings

[Alexandra Dolan-Mescal]: https://twitter.com/fromADMwithlove/

[Article 15]: https://gdpr-info.eu/art-15-gdpr/

[Social Control]: https://www.docnow.io/workshops/social-control-2019/

[Dan Phiffer]: https://twitter.com/dphiffer

[Aaron Straup-Cope]: https://twitter.com/thisisaaronland

[Webrecorder-Desktop]: https://github.com/webrecorder/webrecorder-desktop/

[Behaviors]: https://github.com/webrecorder/behaviors

[Mike Brown]: https://en.wikipedia.org/wiki/Shooting_of_Michael_Brown

[Ferguson Uprising]: https://en.wikipedia.org/wiki/Ferguson_unrest

[Cambridge Analytica]: https://en.wikipedia.org/wiki/Facebook%E2%80%93Cambridge_Analytica_data_scandal

[Texas After Violence Project]: http://texasafterviolence.org/

[DocNow]: https://github.com/docnow/docnow

[General Data Protection Regulation (GDPR)]: https://en.wikipedia.org/wiki/General_Data_Protection_Regulation

[Mastodon]: https://en.wikipedia.org/wiki/Mastodon_(software)

[Scuttlebutt]: https://www.scuttlebutt.nz/

[consent]: https://news.docnow.io/designing-for-consent-2f9e9cb2ab4f

[TwArxiv]: https://twtr-analyser.herokuapp.com/users/

[twarc]: https://github.com/docnow/twarc

[twint]: https://github.com/twintproject/twint

[smol.archive]: https://github.com/smoldata/smol.archive
