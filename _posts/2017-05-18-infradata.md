---
layout: post
title: Infradata
tags:
- twitter
- metadata
- history
---

If you enjoy reading about the relationship between data and metadata and/or the
history of the Internet you'll definitely want to check out [Bradley Fidler] and
[Amelia Acker]'s excellent paper *Metadata, infrastructure, and
computer-mediated communication in historical perspective* [@Fidler:2016]. If
you need a copy drop me an [email]).

In this paper Acker and Fidler develop the idea of *infradata* which is a
specific kind of metadata that is required *maintain* infrastructure. They use
this idea to examine the evolution of the Arpanet by taking a close look at the
development of the [Host/Host Protocol] that allowed computers to connect to
each other. The source for this history is found in the IETF RFC's many of which
were originally circulated in hard copy but have been digitized and made
available online.

In my work with metadata as a software developer I've always been biased to
metadata that is immediately *useful*. I've found focusing on use helps ground
and scope discussions about what metadata standards should be. For example
during my work on the National Digital Newspaper Project I had to work with a
[data specification] that was quite complicated, and (I felt) raised the bar
unreasonably high for data producers (awardees). I worked on a team that built a
[website] that provided access to the historical newspaper content. In building
that application we only used a small fraction of the metadata that awardees
were required to produce. The specification struck me as unnecessarily
complicated at the time, and perhaps it still is. 

But maybe I was overly focused on the *infradata*, or the data that was required
for me to build an access system, and not seeing the larger picture that
includes the (sometimes unknown) requirements of digital preservation. Future
scenarios when knowing what camera was used to image the microfilm frame was
actually important are easy to talk about, but they can also expand to fill up
all available space.

At the time I comforted myself with the idea that "Digital preservation is
access in the future" [@Summers:2013b] and therfore focusing on access in the
present was the best way to ensure preservation. But now I'm not so sure. This
idea of infradata highlights that while some metadata is actively used to
maintain the system it is a part of, not all of it is, or necessarily should be.

Acker and Fidler got me thinking about the difficulties of studying these
systems historically. The IETF has done such a great job of publishing RFCs over
its history. But I wonder how easy it is to get at the stories around these
specifications, and their various versions?

Since I'm actively engaged in a [project] to think about the preservation of
social media, I began thinking about how the metadata in a tweet has changed
over the years. Projects like [Hitch] make it possible to look at how APIs like
Twitter's change over time.  Documentation is sometimes available in the
Internet Archive where it can be used to bring historical snapshots of
documentation [back to life]. I thought it could be useful to create [a bot]
that watches the Twitter sample stream and notices any new or changed metadata
in the [JSON] for a Tweet. If you are are interested you can follow it at
[\@tweetjson]. 

<img class="img-responsive" src="/images/tweetjson.png">

Here's how it works. The bot watches the Twitter sample stream, and for each
tweet it creates a *blueprint* of the data. It then compares this blueprint
against a master blueprint, and announces any new or changed data properties on
Twitter. The master blueprint is really just a snapshot of all the previous data
fields the bot has seen, which is currently 1229 fields that you can see [here].

The blueprint is a uses a [jq] like syntax to represent each path in the JSON
data.  It's a bit more difficult to notice when fields are removed because not
all tweets contain all fields. Just because a given field isn't present in a
tweet doesn't mean it has been removed. I guess the bot could keep some kind of
timestamp associated with each field and then if it grows really stale (like
months?) it could assume that it has been removed? That was a bit more
adventurous for the time I had available to test this idea out.

Anyway, I thought I'd write this up briefly here as a small example of how
research can be generative for software projects. I hope that it can work the
other way sometimes too.

### References

[Amelia Acker]: https://twitter.com/amelia_acker
[Bradley Fidler]: https://twitter.com/brfidler
[email]: mailto:ehs@pobox.com
[Host/Host Protocol]: https://www.rfc-editor.org/info/rfc6529
[data specification]: http://www.loc.gov/ndnp/guidelines/NDNP_201719TechNotes.pdf
[website]: https://chroniclingamerica.loc.gov
[back to life]: http://twitter-field-guide.apievangelist.com/tweets/
[Hitch]: https://www.hitchhq.com/
[JSON]: https://dev.twitter.com/overview/api/tweets
[a bot]: https://twitter.com/metatweet
[\@tweetjson]: https://twitter.com/tweetjson
[here]: https://github.com/edsu/metatweet/blob/master/blueprint.json
[project]: http://www.docnow.io
[jq]: https://stedolan.github.io/jq/
