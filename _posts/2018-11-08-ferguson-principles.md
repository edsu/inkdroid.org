---
title: The Ferguson Principles
layout: post
tags:
- archives
- social-media
- docnow
---


<iframe width="800" height="400" src="https://www.youtube.com/embed/QgWkLnbN-8M"
frameborder="0" allow="accelerometer; encrypted-media; gyroscope;
picture-in-picture" allowfullscreen></iframe>

---

Thank you for the opportunity to speak with you today here in Wellington. It
really is a privilege to be here. For the next few minutes I'm going to be
talking about the efforts of the [Documenting the Now] project to build a
community of practice around social media archiving. For @Lave:1991 a *community
of practice* is a way of understanding how groups of people learn, by sharing
skills and tools in relationship with each other, and in their daily lived
experience. I think the best of what IIPC has to offer is as a community of
practice.

But before I tell you about DocNow I need to do a little framing. Please forgive me if this seems redundant or obvious. I've been interested in web archiving for close to 10 years, but this is my first time here at the Web Archiving Conference.

A significant part of our work in Documenting the Now has been appreciating, and coming to terms with, the scale of the web. As you know the work of archiving social media is intrinsically bound up with archiving the web. But archiving the web is a project whose scale is paradoxically both much bigger, and much, much smaller, than the IIPC and its member institutions.

<figure>
  <a href="http://embed.arcadefire.com/artwork/artwork_jpeg.html">
    <img class="img-fluid"  src="/images/iipc2018-cars.png">
  </a>
</figure>

So I said it is a privilege to be here, and I meant it. According to the [Carbon
Footprint Calculator] my return trip from Washington DC amounts to 2.19 metric
tons of CO₂. To put this in perspective the Environmental Defense Fund
[estimates] that the average American car emits about 7 tons of CO₂ in a year.
How many cars do you think our conference amounts to? Hopefully you'll see why
this is important in a moment.

### Bigger

Perhaps you saw [this story] in the Guardian about the projected energy
consumption of the Internet? According to the piece, researchers estimate that
by 2020 running the Internet will generate 3.5% of all global emissions, which
will exceed that of the entire aviation and shipping industries. That's only a
year away.

<figure>
<a href="https://www.theguardian.com/environment/2017/dec/11/tsunami-of-data-could-consume-fifth-global-electricity-by-2025">
  <img class="img-fluid" src="/images/iipc2018-tsunami.png">
</a>
</figure>

By 2025 the Internet and all its connected devices could use up to 20% of the world's electricity. By 2040 Internet carbon emissions will be up to 14%, which is roughly the same amount as the entire United States today. Even if 100% of future data centers use renewable energy sources the additional demand for electricity would significantly eat into any savings that would have made in overall energy use.

> We have a tsunami of data approaching. Everything which can be is being 
> digitalised. It is a perfect storm.
>
> Anders Andrae

Arguably the storm is here already. As the article goes on to point out it's the cost of keeping increasing amounts of data online, ready to be streamed, that accounts for these observed and forecasted increases.

Just as a thought experiment try to imagine archiving all this data. Imagine some new archiving technology that made it possible to archive it all. Some new decentralized digital vellum that's orchestrated with smart contracts and runs on cryptocurrency. What impact would archiving all this data have on our environment, and on our planet...to say nothing of our budgets?

This is not to say we don't need better tech for web archiving--we do. But better web archiving technology won't save us. We need to be able to think and talk about what we are saving and why. Because we can't archive it all. In fact, we *must not* archive it all because that would seriously jeopardize our ability to survive as a species.

<figure>
<img class="img-fluid" src="/images/iipc2018-envelope.png">
</figure>

The Internet Archive's mission is to archive the web and to provide universal access to all knowledge [@Kahle:2007]. How much of the web is in the Internet Archive? Of course it's hard, if not impossible, to say. But let's not let that stop us.

In 2016 [Google announced] that it had 130 trillion *URLs* in its index. In a [blog post] also written in 2016 the Internet Archive shared that they had saved 510 billion *web captures*. So we could estimate that in 2016 the world's largest public archive of web content, had collected 0.39% of the web. What 0.39% of the web do you think they archived?

Of course this is mixing apples and oranges, because on the one hand we are talking about web captures and on the other URLs. But comparing distinct URLs in the Internet Archive would only make this percentage smaller. Even worse, Google themselves don't really know how big the web is: they just know how many distinct URLs their bots have wandered into.

But this low percentage probably doesn't come as any surprise to the archivists
in the room, who know that between 1 and 5 percent of all institutional records
will survive as archives [@Cook:2011]. As @Harris:2007 would perhaps say, the
Wayback Machine and all our web archives will always be "a sliver of a sliver of
a sliver of a window into process" [@Harris:2007]. This is why they are so
important to us, and why an environmental analysis is so fundamental to digital
preservation work [@Goldman:2018].

We need to decide what to collect. How we decide is what's important. We need to
talk about about how we decided. This is what you do here.

### Smaller

Ok, so the web is a lot bigger than us, and trying to archive it all might kill us all, if we were able to do it. But how is web archiving smaller than the IIPC and its individual member institutions?

<video width="100%" autoplay controls>
  <source src="/videos/blm-tweets.mp4">
</video>

In August of 2014, my friend and collaborator [Bergis Jules] and I sat in a bar with a small group of friends at the Society of American Archivists meeting in Washington DC. We were talking about what it would take to collect the tweets about the protests in Ferguson, Missouri that were happening as we spoke.

These protests were in direct response to the murder of African American teenager [Mike Brown] by police officer Darren Wilson. We were thinking about Zeynep Tufekci's new piece [What Happens in #Ferguson Affects Ferguson] about the disparity in what she was seeing in Facebook versus Twitter. We weren't exactly sure what the right way to do this collection was, but we did know *why* we wanted to do it. We knew that Ferguson was a significant political and cultural moment that scholars would some day want to study. Forget about the future, we knew researchers would want to study it *right now*.

So we used a nascent utility called [twarc] to collect [13 million tweets] that contained the word "Ferguson" from August 9 through August 27, 2014. We started writing [in a blog] about how we were doing the work, and how to use the tweet metadata that had been assembled. We continued doing [data collection] around the protests of [Walter Scott], [Freddie Gray], [Sandra Bland], [Samuel DuBose], [Alton Sterling], [Philando Castille], [Korryn Gaines], and the [BlackLivesMatter] movement that catalyzed heightened awareness about police violence against people of color, and structural racism. We were emboldened to hear that others wanted to help out, and to do this work too.

Four years and a Mellon grant later we've had the opportunity to work together as a team to improve that twarc utility we started with in 2014, and to create a few more tools along the way to help in doing some of this work. These probably don't seem like your typical web archiving tools, but I'd like you to think about why.

* [twarc] - a command line tool for collecting tweets from Twitter's search and streaming APIs, and can collect threaded conversations and user profile information. It also comes with a kitchen sink of utilities contributed by members of the community.
* [Catalog] - a clearinghouse of Twitter identifier datasets that live in institutional repositories around the web. These have been collected by folks like the University of North Texas, George Washington University, UC Riverside,  University of Maryland, York University, Society of Catalan Archivists,  University of Virginia, tUniversity of Puerto Rico, North Carolina State University, University of Alberta, Library and Archives Canada, and more.
* [Hydrator] - A desktop utility for turning tweet identifier datasets (from the Catalog) back into structured JSON and CSV for analysis. It was designed to be able to run for weeks on your laptop, to slowly reassemble a tweet dataset, while respecting Twitter's Terms of Service, and users right to be forgotten.
* [unshrtn] - A microservice that makes it possible to bulk normalize and extract metadata from a large number of URLs.
* [DiffEngine] - a utility that tracks changes on a website using its RSS feed, and publishes these changes to Twitter and Mastodon. As an example see [whitehouse_diff] which announces changes to the Executive orders made on the White House blog.
* [DocNow] - An application (still under development) that allows archivists to observe Twitter activity, do data collection, analyze referenced web content, and optionally send it off to the Internet Archive to be archivd.

These tools *emerged* as part of doing work with social media archives. Rather than building one tool that attempts to solve some of the many problems of archiving social media, we wanted to create small tools that fit particular problems, and could be composed into other people's projects and workflows. We wanted to thoughtfully intervene into a scholarly communications landscape where researchers were using social media, but not always sharing their methods, and their data sources.

### The Ferguson Principles

<figure>
  <a href="https://medium.com/on-archivy/were-all-bona-fide-f502bdaea029">
    <img class="img-fluid" src="/images/iipc2018-ferguson.jpg">
  </a>
  <caption>Ferguson, Missouri (2017)</caption>
</figure>

Truth be told, these tools are actually just a sideshow for what we've really been trying to do. Over the past four years we've been able to work with an emerging community of archivists, researchers, and activists who already see the value of social media and web archiving, but are interested in developing practices that speak to the ethical concerns that arise when doing this work.

Documenting the Now is a distributed team, with porous boundaries, so having an open Slack channel was useful for coordinating. But the real work happened in several face-to-face meetings in St Louis and Ferguson, Missouri where we [heard from activists] about how they wanted their social justice work to be remembered. This was only made possible by facilitating direct conversations between archivists, technologists, researchers and activists about how to remember the protests.

These conversations also took place at the [Ethics and Archiving the Web] conference that was hosted by [Rhizome] held earlier this year. Drawing on our reading of existing guidelines from the [Society of American Archivists] and the [International Association of Internet Researchers], we developed a set of recommendations described in a [white paper], that we have come to informally refer to as the Ferguson Principles. We can discuss in more detail during the Q&amp;A or during a [workshop] we are holding Friday.

1. Archivists must engage and work with the communities they wish to document on the web. Archives are often powerful institutions. Attention to the positionality of the archive vis-à-vis content creators, particularly in the case of protest, is a primary consideration that can guide efforts at preservation and access.

2. Documentation efforts must go beyond what can be collected without permission from the web and social media. Social media collected with the consent of content creators can form a part of richer documentation efforts that include the collection of oral histories, photographs, correspondence, and more. Simply telling the story of what happens in social media is not enough, but it can be a useful start.

3. Archivists should follow social media platforms’ terms of service only where they are congruent with the values of the communities they are attempting to document. What is legal is not always ethical, and what is ethical is not always legal. Context, agency and (again) positionality matter.

4. When possible, archivists should apply traditional archival practices such as appraisal, collection development, and donor relations to social media and web materials. It is hard work adapting these concepts to the collection of social media content, but they matter now, more than ever.

These aren't meant to be global principles to be applied in every situation when you are archiving social media. They are meant to be touchstones for conversations to have, particularly when you are doing web archiving work in the context of social justice.

### Now

We recently announced that we received a new round of funding to continue this work, which you can read more about in a post about [phase 2]. But in a nutshell this funding will allow us to do three interrelated things.

The first is to continue to support and develop the tools we've worked on so far. If you'd like to be part of these conversations we will be opening up our technical development calls shortly.

We will also be developing a series of workshops, to help build digital community-based archives in direct partnership with social justice activist organizations. Look for information about how to apply to be part of this in the new year.

And thirdly we will be working with a new project partner, [Meredith Clark] at the University of Virginia, to develop an openly licensed, college-level curriculum that gives students meaningful experience with, and frameworks for, the ethical use of social media in their research.

So returning to where we started, I've been excited to see the IIPC developing its own virtual community in Slack, and that there are efforts such as the [Online Hours Supporting Open Source] (OH-SOS) and the [Training Working Group] that allow engagement to grow outside of the select few who are able to attend these yearly face-to-face meetings.

Since I don't work at an IIPC member institution I'm not totally up on what is going on. But I do think there may be opportunities for the IIPS to adopt some approaches to web archiving tools and practice that get outside of the institutional walls we so often finds ourselves operating in.

I'm specifically thinking of the decades of work by the Australian school, on
the Records Continuum model developed by Sue McKemmish, Frank Upward and others
[@McKemmish:2010], which takes an expansive and integrative view of what counts
as records, and the contexts in which they are produced. Also, strategies
drawing on community archiving, where records continue to live in the
environments that they were produced could be very generative for moving efforts
in this direction [@Flinn:2007 ; @Punzalan:2009 ; @Caswell:2016c]. What if we
also thought of web archiving work as getting out into the world to help people
sustain their websites rather than only taking their content and putting it in a
Wayback instance, as what @Brugger:2013 calls "reborn digital material".

So if any of this sounds useful and interesting to you please get in touch with me or Bergis here at IIPC. I believe that Bergis will be around next week at the National Digital Forum as well. As I mentioned we are also hosting a workshop Friday morning in which we are going to be exploring some of the Ferguson Principles and more in a group setting. And finally please consider joining our Slack, asking questions, and joining the conversation there.

Thanks!

### References

[Training Working Group]: https://netpreserve.org/about-us/working-groups/training-working-group/
[Online Hours Supporting Open Source]: https://netpreserveblog.wordpress.com/2018/10/12/oh-sos/
[heard from activists]: https://www.youtube.com/watch?v=ykgvgW21iP4&t=186s
[workshop]: https://netpreserve.org/ga2018/programme/workshops-tutorials/#DocNow
[phase 2]: https://news.docnow.io/documenting-the-now-phase-2-83d76a9ee0a8
[Mike Brown]: https://en.wikipedia.org/wiki/Shooting_of_Michael_Brown
[white paper]: https://news.docnow.io/documenting-the-now-ethics-white-paper-43477929ea3e
[hyperthymesia]: https://en.wikipedia.org/wiki/Hyperthymesia
[DocNow]: https://github.com/docnow/docnow
[data collection]: http://timemapper.okfnlabs.org/edsu/blacklivesmatter
[whitehouse_diff]: https://twitter.com/whitehouse_diff
[DiffEngine]: https://github.com/docnow/diffengine
[Bergis Jules]: https://twitter.com/bergisjules
[Catalog]: https://www.docnow.io/catalog/
[twarc]: https://github.com/docnow/twarc
[in a blog]: https://medium.com/on-archivy
[Carbon Footprint Calculator]: https://calculator.carbonfootprint.com
[estimates]: http://blogs.edf.org/climate411/2007/02/20/picturing-a-ton-of-co2/
[Documenting the Now]: https://www.docnow.io/
[this story]: https://www.theguardian.com/environment/2017/dec/11/tsunami-of-data-could-consume-fifth-global-electricity-by-2025
[Google announced]: https://searchengineland.com/googles-search-indexes-hits-130-trillion-pages-documents-263378
[blog post]: https://blog.archive.org/2016/10/23/defining-web-pages-web-sites-and-web-captures/
[13 million tweets]: https://archive.org/details/ferguson-tweet-ids/
[Walter Scott]: https://en.wikipedia.org/wiki/Shooting_of_Walter_Scott
[Freddie Gray]: https://en.wikipedia.org/wiki/Death_of_Freddie_Gray
[Sandra Bland]: https://en.wikipedia.org/wiki/Death_of_Sandra_Bland
[Samuel Dubose]: https://en.wikipedia.org/wiki/Shooting_of_Samuel_DuBose
[Alton Sterling]: https://en.wikipedia.org/wiki/Shooting_of_Alton_Sterling
[Philando Castille]: https://en.wikipedia.org/wiki/Shooting_of_Philando_Castile
[Korryn Gaines]: https://en.wikipedia.org/wiki/Shooting_of_Korryn_Gaines
[BlackLivesMatter]: https://en.wikipedia.org/wiki/Black_Lives_Matter
[Meredith Clark]: https://twitter.com/meredithdclark
[What Happens in #Ferguson Affects Ferguson]: https://medium.com/message/ferguson-is-also-a-net-neutrality-issue-6d2f3db51eb0
[Society of American Archivists]: https://www2.archivists.org/statements/saa-core-values-statement-and-code-of-ethics#code_of_ethics
[International Association of Internet Researchers]: https://aoir.org/ethics/
[Ethics and Archiving the Web]: https://eaw.rhizome.org
[Rhizome]: https://rhizome.org
[Hydrator]: https://github.com/docnow/hydrator/#readme
[unshrtn]: https://github.com/docnow/unshrtn/

