---
layout: post
title: API Studies
tags:
- api
- platform studies
- twitter
- docnow
---

Because of my work in the iSchool and at MITH, and the influence of various
people in both, I'm getting increasingly interested in looking at social media 
through the lens of [software] and [platform studies].

When you think about it, it's not hard to conceive of the application
programming interface or API as a contract or blueprint for what a social media
platform allows and does not allow. If you want to get information into or out
of a platform and there's no API endpoint for it, you can't do it...at least not
easily without scraping or other [hijinks]. So the API is a material 
expression of a platform's politics, its governance and business models.

What's really quite interesting is how these APIs are situated in time as
documents. In some ways they are similar to the Terms of Service documents. 
But since I'm a software developer and not a lawyer, the API documentation 
feels more explicit or actionable. Either the API call works, or it doesn't. If
you want to test whether it works you try it out. The API docs clearly define 
the limits of what is possible with the social media platform. This is unlike 
the ToS, which one can be unintentionally oblivious of, or choose to blithely
disregard or even transgress.

But as most people involved in information technology know, there can often be
significant gaps between our technical documentation and how things actually
work. Sometimes this is the result of drift: the code changes but the
documentation does not. Sometimes I think it's also because the behavior of a
complex system isn't understood well enough to be able to make it understandable
in prose.

If this sort of thing interests you too you might be interested in a little
service called [API Changelog].  They monitor the documentation of over 
100 different APIs (Twitter, Facebook, Slack, GitHub, Weibo, etc) and email 
you little alerts when there have been changes. Because of [some work] I'm
involved in I'm particularly interested in the Twitter API, so I've been
watching the changes for a few months now.

For example consider [this change] that arrived in my inbox this morning.

<a href="https://www.apichangelog.com/changes/2cf10ce4-813c-4c18-bef7-8e585e3d03d0"><img src="/images/twitter-api-change.png" class="img-responsive" style="border: thin solid gray;"></a>

There are lots of little changes highlighted here in a [diff style] format. One
thing that popped out at me was the addition of this phrase:

> The Twitter Search API searches against a **sampling** of recent Tweets 
> published in the past 7 days.

Like most people who work with the Twitter API I've known about the 7 day limit
for some time. What poppoed out at me (and what I emphasized in the quote) was
the use of the word *sampling* ... which indicated to me that not all tweets in
that time period are being searched. Of course this raises questions about what
sort of sample is being employed, and recalls research into the bias present
in Twitter's search and streaming APIs [@Gonzalez:2014], [@Driscoll:2014]. 

Now this might sound academic, but really [it's not], right? I'm actually kind
of curious how API ChangeLog itself works. It might be a straight up
diff, but there is some smarts to what they are doing since it seems sensitive
to the textual content but not the styling of the documentation. It's
interesting how a service for developers that use the APIs and businesses 
that provide APIs can have a mirror purpose for those that are studying APIs.

### References

[platform studies]: http://platformstudies.com/
[software]: https://en.wikipedia.org/wiki/Software_studies
[some work]: http://docnow.io
[this change]: https://www.apichangelog.com/changes/2cf10ce4-813c-4c18-bef7-8e585e3d03d0
[diff style]: https://en.wikipedia.org/wiki/Diff_utility
[it's not]: http://www.citypages.com/news/black-lives-matter-minneapolis-says-facebook-shut-down-its-page-7993718
[API ChangeLog]: https://www.apichangelog.com
[hijinks]: https://en.wikipedia.org/wiki/Exploit_(computer_security)
