---
layout: post
title: On Technical Difficulties
tags: 
- Twitter
---

*I originally posted this on [Medium] but I'm adding it here too just for posterity. And by posterity I mean if this little blog outlasts a big web publisher like Medium. Hey, it could happen...*

---

It’s great to see the recent discussion of algorithms and archival work that
has been prompted by Clifford Lynch’s [recent piece] for First Monday. Alexis
Madrigal’s [response] in the Atlantic tied together some additional threads and
generally did a nice job of situating archival work and the work of history.
The record is never perfect, and part of the work of history is learning to
work with the records that have survived as a result of care and attention.
Both articles also do a nice job of pointing to the [significant body of work]
that has been done on the sociocultural study of algorithms.

But to make his point Madrigal used the Library of Congress Twitter Archive as
a case study to illustrate the perils of attempting to archive a large system
like Twitter:

> Unfortunately, one of the things the library learned was that the Twitter
> data overwhelmed the technical resources and capacities of the institution. 
> By 2013, the library had to admit that a single search of just the Twitter 
> data from 2006 to 2010 could take 24 hours. Four years later, the archive 
> still is not available to researchers.

As someone who was directly involved with some of the technical work I have a
bone to pick with this portrayal. From where I sat (not up on the 6th floor of
the Madison Building) the failing at the Library of Congress was not technical
in nature but one of policy and governance. Using technical difficulties as an
explanation for the failure is simply a convenient excuse for what were
actually larger and more interesting problems.

Searching through billions of tweets is by no means a simple matter. But the
team I worked on had several plans for how to do it. All of them involved a
modest investment in resources (we wanted to use Amazon Web Services at the
time) which management was unwilling to invest in. We arrived at these plans
after consulting with researchers like Jimmy Lin who had worked at Twitter to
set up their own Hadoop infrastructure. The technical infrastructure we had at
our disposal at the Library of Congress was only suitable for moving the tweets
to a tape archive, where (hopefully) the data still sits.

So there were technical challenges to be sure, but we had a plan to deal with
them. The plan was written up and sent up the food chain, and that was the last
we heard of it. The policy discussions around why not to invest in the
technical resources were, as they say, above my pay grade. But some of them
managed to filter down to me. Here were the big ones I heard about through the
grape vine:

Can we use Amazon Web Services? At the time the Library of Congress wasn’t
using Amazon Web Services — unless you count the [World Digital Library] Project
which was (and still is) a UNESCO project hosted at the Library. Other parts of
the Federal Government did use AWS, even in touchy areas like law
enforcement — so we knew it could be done. The General Services Administration
had a vehicle for using AWS. I think there are lots of good reasons not to use
AWS, but the question of why we couldn’t use AWS to provide access to the
Twitter data was never satisfactorily answered. At the time I chalked it up to
upper management not understanding what it meant to move computing to the
cloud, and being unwilling to learn how to adjust their existing mammoth
contracts with IBM.

Who is a researcher? The initial [donor agreement] between Twitter and the
Library of Congress indicates that the data should only be made available to
bona fide researchers who sign an agreement that they will not use the data for
commercial purposes. Access restrictions like this aren’t uncommon for archival
collections. But this agreement for the researcher to sign, which was to be
agreed upon by the Library of Congress and Twitter, never materialized. Why
not?

What is bulk access? The agreement also prohibits bulk access to the data on
the web. Is bulk access a thousand tweets, or a million? The agreement doesn’t
say. If someone travels to Washington DC, and goes to the Special Collections
Reading Room with a few hard drives and wants a copy of the entire archive is
that OK? How about a day or an hour? In [this] hearing before the House Committee
on Appropriations Robert Dizard indicated that providing this type of access
was possible without additional investment of resources (start listening at
01:16:53, or read the hearing transcript, p. 119). If it was easy and didn’t
cost any additional money why didn’t they do this? I bet more than a few
researchers would have been overjoyed to have this level of access.

What about deletes? The initial agreement mentions that only data more than 6
months old should be made available. But scuttlebutt while I was working there
had it that the initial donor agreement was followed by a series of
negotiations about a second agreement to iron out the details. A significant
portion of this involved Twitter’s insistence that tweets that were deleted not
be distributed by the Library of Congress. This was technically possible
because we received a feed of tweets and deletes. But from a policy perspective
it proved problematic. What if the person tweeting is a public official, like
the President of the United States? Aren’t those tweets part of the public
record? On the other hand, people who signed up to Twitter never really agreed
to having their tweets saved for the long term. I mean I guess they signed away
their ability to disagree. So honoring the rights of people to delete their
content is rightly important to Twitter. Enter the conundrum.

So, this is all just the tip of the iceberg, and partly hearsay I suppose,
since I wasn’t in the actual rooms where the policy issues were being
discussed. If you are interested in reading more Michael Zimmer has a really
[good article] (also for First Monday) that describes the policy issues that the
Library of Congress faced around the Twitter Archive. I just wanted to take a
brief moment to dig a little deeper into the causes of LC’s failure to provide
researcher access to the data — which, last I heard, is still flowing …
somewhere.

One more thought I’ll leave you with. If a researcher did have to wait 24 hours
to search through billions of tweets to get say, the tweets that used the
#blacklivesmatter hashtag, or all the tweets from Wikileaks, or all the tweets
from elected representatives in the US Congress, would that be such a bad
thing? 24 hours isn’t that long to wait for something you really want to read
is it?

[recent piece]: https://www.theatlantic.com/technology/archive/2017/12/it-might-be-impossible-for-future-historians-to-understand-our-internet/547463/
[response]: https://www.theatlantic.com/technology/archive/2017/12/it-might-be-impossible-for-future-historians-to-understand-our-internet/547463/
[significant body of work]: https://socialmediacollective.org/reading-lists/critical-algorithm-studies/
[World Digital Library]: https://www.wdl.org/
[donor agreement]: https://blogs.loc.gov/loc/files/2010/04/LOC-Twitter.pdf
[this]: http://www.ustream.tv/recorded/29603115
[hearing transcript]: https://www.gpo.gov/fdsys/pkg/CHRG-113hhrg81322/pdf/CHRG-113hhrg81322.pdf
[good article]: http://firstmonday.org/ojs/index.php/fm/article/view/5619/4653
[Medium]: https://medium.com/@edsu/on-technical-difficulties-22f6abfa41ae
