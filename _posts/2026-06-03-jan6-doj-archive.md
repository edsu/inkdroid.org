---
layout: post
title: Reading Rooms for the Archived Web
tags:
- web-archives
- archives
- finding-aid
---

<figure><a href="https://commons.wikimedia.org/wiki/File:SIAr_958-2017_053.JPG"><img src="/images/finding-aid.jpg" class="img-fluid"></a><figcaption><a href="https://commons.wikimedia.org/wiki/File:SIAr_958-2017_053.JPG">Archives de Bevaix</a> by Service intercommunal d'archivage</figcaption></figure>

The [Wayback Machine] is (usually) good at preserving web pages, but it's not always good at helping you find your way around what's been preserved. URLs from a vanished website may be archived, but if the original site is gone, the paths into it (its navigation, its search, its tables of contents) are sometimes gone too.

This creates a need, and opportunity, for sites I want to call *reading rooms* for the archived web: standalone sites that sit to the side of archived web content and provide the index, browse, search and curation layers that the original site used to, with provenance links back to the captures they're drawn from. The metaphor I have in mind is the reading room in a brick &amp; mortar archive, the place you go to consult a collection, with [finding aid]s close at hand and the records themselves a request slip away. Perhaps a finding aid is the better metaphor here?

The most recent example of this I've come across is work from [Lawfare Media], who recovered 5,772 pages deleted from the Department of Justice website related to the Jan. 6 attack on the US Capitol. They've built a standalone [archival viewer] of the extracted content that links back to the [Wayback Machine]. There is more about the motivation for the project in their post [The Justice Department Erases History. Lawfare Restores It]. (Sadly the GitHub repo for the archive itself looks to be private.)

This is a bit archive-eating-its-own-tail, but one feature of the site that Lawfare Media built is that the [search] is operational *from within* the Wayback Machine's own snapshot of the site, since the search runs client-side. A user search doesn't require an API back to the server.

<figure>
  <a href="https://web.archive.org/web/20260529200743/https://lawfaremedia.github.io/jan6-doj-archive/search.html">
    <img src="/images/jan6-doj-archive-search.png" class="img-fluid">
  </a>
  <figcaption>
    Searching the archive from inside the Wayback Machine
  </figcaption>
</figure>

Looking at the HTML it appears the site is using [minisearch] for client-side search. A nice side effect of client-side search is that the indexed corpus (metadata for all the DoJ content) is itself available on the open web, as [corpus.json]. Some caring person has even already thought to archive `corpus.json` using [Save Page Now]:

<figure>
  <a href="https://web.archive.org/web/20260000000000*/https://lawfaremedia.github.io/jan6-doj-archive/data/corpus.json">
    <img src="/images/jan6-doj-archive-corpus.png" class="img-fluid">
  </a>
  <figcaption>
    A Wayback Machine snapshot of corpus.json from May 29, 2026
  </figcaption>
</figure>

### Other "Reading Rooms"

Lawfare's archive sits in a small but growing genre. Or maybe it's well established and I'm just noticing it for the first time? Another example is [Ben Welsh]'s [FiveThirtyEight Index] which he built after Disney shut down `fivethirtyeight.com` in March 2025. It catalogs over 38,000 articles, datasets, podcasts and graphics, browsable by author, date and series, with every record linked back to its Wayback Machine snapshot. (The Internet Archive also runs a [companion collection].)

Another example is Internet Archive's [Scholar], which provides a catalog of published research (mostly journal articles) that are found in the Wayback Machine. I believe this is a presentation layer over data collected by IA's [FatCat] project. Which provides some ability to edit the metadata about the archived content.

In archival terms what these projects are doing is effectively what [finding aid]s doe: describing scope, arrangement, and provenance, but wrapping it in something that feels more like a reading room than a paper inventory. They are themselves websites that will eventually need to be archived. I think it's interesting to think about them as a continuation of something archives have been doing for a very long time. It's also interesting to think about the role that agentic coding tools played in their production (at least in the case of the Jan 6 Archive).

[Jonathan Gray] and the [Public Data Lab] at King's College London run a project called [Repurposing Web Archives] (with the Internet Archive and Internet Archive Europe) that looks at the tools, methods, and stories of how researchers, journalists, and artists actually work with the archived web: see their recent [Follow the Changes] post. Perhaps this idea of Reading Rooms for web archives is a subset of the types of practices this project is interested in? It seems like there is a gray area between research that incorporates web archives, and more documentation oriented content for providing an entry point into web archives?

If you know of other examples of Reading Rooms (or finding aids) for Web Archives I'd love to hear about them!

---

*This post was originally a thread over [in the Fediverse]. Thanks to [\@freegovinfo] for the pointer to the Lawfare Media work.*

[Lawfare Media]: https://www.lawfaremedia.org/
[archival viewer]: https://lawfaremedia.github.io/jan6-doj-archive/
[Wayback Machine]: https://web.archive.org/
[The Justice Department Erases History. Lawfare Restores It]: https://www.lawfaremedia.org/article/the-justice-department-erases-history--lawfare-restores-it
[\@freegovinfo]: https://hcommons.social/@freegovinfo
[search]: https://web.archive.org/web/20260529200743/https://lawfaremedia.github.io/jan6-doj-archive/search.html
[minisearch]: https://github.com/lucaong/minisearch
[corpus.json]: https://lawfaremedia.github.io/jan6-doj-archive/data/corpus.json
[Save Page Now]: https://web.archive.org/save/
[in the Fediverse]: https://merveilles.town/@ink/116686743963376944
[Ben Welsh]: https://palewi.re/who-is-ben-welsh/
[FiveThirtyEight Index]: https://fivethirtyeightindex.com/
[companion collection]: https://archive.org/details/fivethirtyeight
[Public Environmental Data Partners]: https://envirodatagov.org/public-environmental-data-partners/
[Jonathan Gray]: https://jonathangray.org/
[Public Data Lab]: https://publicdatalab.org/
[Repurposing Web Archives]: https://publicdatalab.org/projects/repurposing-web-archives/
[Follow the Changes]: https://blog.archive.org/2026/02/02/follow-the-changes/
[finding aid]: https://en.wikipedia.org/wiki/Finding_aid
[Scholar]: https://scholar.archive.org/
[FatCat]: https://scholar.archive.org/fatcat/
