---
title: Less is (sometimes) More
layout: post
tags:
- social media
---

*Below is a short presentation that I prepared for [iPRES 2020] (a.k.a
[#WeMissiPRES]) which was held remotely due to the Coronavirus pandemic.*

---

In the next 9 minutes I hope to convince you that a text file of numbers is an
important resource for archiving the web. Yes, that's right just a list of
numbers like this:

<img class="img-responsive" src="/images/ipres2020-01.png">

My hat is off to the organizers because I couldn't have asked for a better
person to speak after than Rhiannon, since she just presented on the topic of
*significant properties* and OAIS. Hopefully you will see the connection too in
a moment.

There doesn't appear to be *anything* significant about these numbers. What
possible preservation value could a list of numbers like this have for archiving
the web?

Of course *significant properties* have been the topic of significant critique
from the digital preservation community. In 2006 Chris Rusbridge noted that: 

> .. there is no way of precisely defining the designated community, and 
> similarly no way of foretelling the properties that future users might deem
> significant. This leads to pressure for preservation that must be faithful to
> the original in all respects. [@Rusbridge:2006]

And this pressure to remain faithful to the "original" can sometimes work
perniciously to guarantee that instead nothing is preserved. It's all or nothing
-- and most of the time that means nothing.

15 years ago John Kunze (who has an uncanny ability for naming things) gave a
talk here at iPRES titled [Future Proofing the Web] in which he introduced the
idea of "preservation through desiccation". He drew attention to the properties
of paper that made is such a successful preservation medium, and asked us to
consider the venerable IETF RFC standards archive which used plain text files
without fonts, graphics, colors, diacritics, but which retained "essential
cultural value".  Part of the argument John made was:

> The simplest technologies to maintain and understand today are the simplest to
> carry forward and to recreate in the future.

Today this principle is known as [minimal computing]--at least in some digital
humanities circles. But the idea goes back further to the earlyish days of the
web, when in 1998 Tim Berners-Lee wrote down the [Principle of Least Power] to
describe his process for designing web standards like HTML:

> When designing computer systems, one is often faced with a choice between
> using a more or less powerful language for publishing information, for
> expressing constraints, or for solving some problem. This finding explores
> tradeoffs relating the choice of language to reusability of information. The
> "Rule of Least Power" suggests choosing the least powerful language suitable
> for a given purpose. 

Ok, so what does a all this have to do with a list of numbers? To understand
that I need to quickly tell you about three interrelated problems we encountered
on the [Documenting the Now] project (they should sound familiar). Documenting
the Now is a project (thank you Mellon Foundation) that is building a community
of practice for social media and web archiving that centers the rights, safety
and voices of content creators. The project started in 2014 in the wake of the
murder of Michael Brown in Ferguson, Missouri with the recognition that:

1. Social media presents a huge opportunity for documenting previously
   undocumented historical events. However cultural organizations steer clear of
   engaging in it because of concerns about how to provide meaningful access
   without harming the people doing the documentation. For more about this
   please see Michelle Caswell's keynote [Whose Digital Preservation?] from last
   year.
2. Researchers of all disciplinary stripes routinely create collections of
   social media for use as data in their research. But they were by and large
   not providing access to these collections because platforms forbade it.
3. Content creators in social media have little control over how their data is
   being used in archives, and are largely a commodity in surveillance
   capitalism [@Zuboff:2015]. 

Why would we want to wade into this river you might ask? Honestly, it was the
voices of [the activists] [in Ferguson] that kept us going as we tried to find
what we could do so that their work was not forgotten. It is worth saying
clearly at this point, that *there is no technical-fix* for this problem.
Memory is a people problem. Tools can help but they aren't going to solve this
problem. 

Over the past five years we've developed a few tools that can be used separately
or in combination to address parts of these problems given the right set of
actors to use them responsibly. Here's the basic intervention we made while
focused on the social media platform Twitter, which was so critical to
documenting the events in Ferguson:

1. Twitter do not allow data to be collected from them and then reshared with
   third parties. It's bad for business, because they want to sell it. But they
   do allow the sharing tweet identifiers (long numbers like above), and
   [explicitly] encourage academic researchers to do this. Why not encourage he
   sharing of tweet id datasets in digital repositories and provide a view into
   them as a whole. That's why we created [The Catalog](https://catalog.docnow.io/).

2. But how do you create these lists of tweet identifiers? And what would you do
   with a list once you downloaded them? We created a few tools, mostly [twarc]
   for collecting data from the Twitter API and [Hydrator] which lets you turn
   those identifiers back into data again.

3. Ok, fine. But what about the rights of content creators? What say do they
   have in how their data is collected? First, twarc only collects *public*
   tweets. So if their account is protected it won't show up in the filter
   stream or search API endpoits that twarc uses. But the same is also true of
   the API endpoint that the Hydrator uses. If a tweet id dataset is published
   and then the creator decides to delete it or protect their account the data
   can no longer be "hydrated". This gives some measure of agency back to
   content creators.

This obviously isn't a perfect solution because many content creators need more
control, and [some] need less (we're working on [that] too). Researchers
studying things like disinformation campaigns won't be happy with the deletes
that go missing from hydrated datasets. But the Catalog's primary purpose is to
serve as a clearinghouse for where these datasets live in fuller representations
in repositories. I'm normally neutral on OAIS but in this case I think its
actually useful to consider the tweet identifiers as an OAIS Dissemination
Information Package (DIP). Using the contact information in the Catalog it's
within the realm of possibility to gain access to the original data by reaching
out and becoming a project partner rather than a third party.

But rather than convincing you that the work we've done on Documenting the Now
is the bees knees, the cat's meow, or a real humdinger (sorry I got lost in a
thesaurus) I hope to have convinced you that (sometimes) less is more.
Strategically sharing *less data* can serve the interests of digital
preservation and access. Less isn't just a matter of technical sustainability
but it's also lever [@Shilton:2012] that we have at our disposal when we
consider the positionality of our memory work. Digital preservation isn't always
about the highest resolution representation with the most significant
properties. Use this value lever wisely!

---

[iPRES 2020]: https://www.dpconline.org/events/wemissipres

[Future Proofing the Web]: https://ipres-conference.org/ipres05/download/Future-Proofing%20The%20Web%20What%20We%20Can%20Do%20Today%20-%20John%20Kunze.pdf

[Principle of Least Power]: https://www.w3.org/2001/tag/doc/leastPower

[Documenting the Now]: https://www.docnow.io

[minimal computing]: http://go-dh.github.io/mincomp/

[the activists]: https://www.youtube.com/watch?v=aspqxYklqQk

[in Ferguson]: https://www.docnow.io/meetings/stl-2017/

[#WeMissiPRES]: https://twitter.com/hashtag/WeMissiPRES

[explicitly]: https://developer.twitter.com/en/developer-terms/policy

[Whose Digital Preservation?]: https://www.youtube.com/watch?v=atX14DDvKbw

[that]: https://www.docnow.io

[some]: https://twitter.com/realDonaldTrump

[Hydrator]: https://github.com/docnow/hydrator

[Catalog]: https://catalog.docnow.io

[twarc]: https://github.com/docnow/twarc

[other approaches]: https://en.wikipedia.org/wiki/Differential_privacy

