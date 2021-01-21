---
layout: post
date: 2020-12-31 13:02:00
title: noarchive
tags:
- web archives
- html
- metadata
---

I [wrote] a few weeks ago about the timeworn practice of using [robots.txt] to
control whether web content is playable in web archives. This practice started
back in 2002, with the Oakland Archive Policy. While it's imperfect, and
perhaps contrary to common sense, [technologies for consent in web archiving]
are important levers to have available, even while the web is designed to be an
[open information system].

While doing some research with Jess and Shawn into the use of web archives
I recently ran across something I felt like I should have known, or perhaps did
know once and then forgot about, which I thought might I'd drop a note about
here so I am less likely to forget it again. This concerns the [noarchive] meta
tag and HTTP header (see [this page] if the previous link fails).

It appears that since [at least 2007] Google and other major search engines
have allowed web publishers to control whether the content that Google has
crawled from their website will show up with a [Google Cache] link in search
results. I had certainly known about the use of *noindex* and *nofollow* in
meta tags and [on links] to control whether search engines index a page. But
even after writing an entire dissertation about web archiving practice I'm
somewhat abashed to admit that I didn't know *noarchive* existed.

The basic idea is that you can put this in your Web page:

```html
    <meta name="robots" content="noarchive" />
```

or have your web server respond using this HTTP header:

```text
    X-Robots-Tag: noarchive
```

and search engines like Google *will not* display a link to cached content of
the page. Reading between the lines a bit this doesn't mean that the content
isn't being stored/cached (it needs to be indexed afterall). It just means that
Google won't display a link to the cached content.

Maybe it's just me, but the directive is a bit oddly named because *noarchive*
controls a *cache*, and the content in caches, at least [in computing], is
typically thought to be temporary. Caches allow processes to be sped up by
localizing resources that are expensive to retrieve or compute. But caches
themselves have resource limits and often need to be methodically purged, which
is known as [cache invalidation]. The practice of using caches has long been an
[intrinsic feature] of the web, and is arguably is one of the primary reasons
for its success as a global information architecture.

In addition to this computational definition *cache* has some additional layers
of meaning. The OED offers this one for the noun form, which dates back to the
mid 1800s and the French verb cacher (to hide):

> 1. **a**. A hiding place, esp. of goods, treasure, etc. **b**. especially a hole or
   mound made by American pioneers and Arctic explorers to hide stores of
   provisions, ammunition, etc.
> 2. The store of provisions so hidden.

It also has a verb form that originated in the United States during the early
1800s:

> *transitive.* To put in a cache; to store (provision) under ground; said also
of animals.

These definitions suggest a less volatile state for cached contents, where the
cache could store content for some time. But it's interesting to note how these
definitions, along with the computational one, underscore *use*. The resources
that are being stored in the cache are valuable, and are have an intended use
in the future.

And speaking of value, in English *cache* sounds identical to another word...
*cash*, which seems to have an entirely different meaning. Of course *cash* is
usually used to talk about money. But interestingly it derives from another
French word *casse*, which is "a box, case, or chest, to carrie or kepe wares
in". Which really echoes the previous definition of cache. The tangled
connections between caches and money, as well as the semantic
interchangeability of the container with the contained seem significant here.

So what does all this have to do with *noarchive*? Well I'm not sure to be
honest :) These are just some rambling notes after all. But I do think it's
interesting how the noun and verb forms of *cache* mirror the noun and verb
forms of *archive*, and how this creative analogy has been cooked into web
standards and crawling practices.

But bringing us back to the question of the use of *noarchive* on the web, it
seems to me that *noarchive* is a striking example of an explicit practice for
expressing consent (or lack thereof) to having your content archived on the
web. It is better than robots.txt because it more accurately expresses the
intent that the content not be *archived*, and it allows for two modes of
expression (HTML and HTTP). The caveat being that the archive most likely still
exists, but only as a [shadow]. How long those shadows are cast would be an
interesting research project in itself. How much of an archive is the Google
Cache, really? Do any public (or private) web archiving projects actually look
for and act on *noarchive*?

But it also would be nice to know a bit more about the prehistory of noarchive.
It was introduced not long after a lawsuit was brought by Belgian company
Copiepresse against Google and Google News. The order in 2006 found that

> the activities of Google News and the use of cache by Google violates
copyrights and neighbouring rights (Act of 1994) and rights on databases (Act
of 1998).

Perhaps there was a direct connection between Google losing this case and the
introduction of a control for whether cache links are displayed? Maybe the
proceedings of that case provide more insight into how Google's cache operates?
And how did [noarchive.net](http://noarchive.net/mission/) come about, and who
is keeping it online? Answering those questions are for another day...

[wrote]: https://inkdroid.org/2020/12/02/robots/
[robots.txt]: https://en.wikipedia.org/wiki/Robots_exclusion_standard
[technologies for consent]: https://news.docnow.io/designing-for-consent-2f9e9cb2ab4f
[open information system]: https://www.w3.org/DesignIssues/Open.html
[at least 2007]: https://developers.google.com/search/blog/2007/03/using-robots-meta-tag
[Google Cache]: https://support.google.com/websearch/answer/1687222
[noarchive]: https://hyp.is/h0JShEtPEeu1nO8jhLHriw/developers.google.com/search/reference/robots_meta_tag
[on links]: https://developers.google.com/search/docs/advanced/guidelines/qualify-outbound-links
[in computing]: https://en.wikipedia.org/wiki/Cache_(computing)
[intrinsic feature]: https://www.ics.uci.edu/~fielding/pubs/dissertation/rest_arch_style.htm
[cache invalidation]: https://en.wikipedia.org/wiki/Cache_invalidation
[shadow]: https://inkdroid.org/2018/05/08/memory/ 
[hit me up]: mailto:ehs@pobox.com
[this page]: https://developers.google.com/search/reference/robots_meta_tag
