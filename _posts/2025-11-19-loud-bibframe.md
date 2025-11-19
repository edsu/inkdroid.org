---
layout: post
title: LOUD BIBFRAME?
tags:
- linkeddata
- json
---

I gave a lightning talk at [SWIB] this year about [BIBFRAME] and the idea of [Linked Open Usable Data] (LOUD). Basically it rehashes ideas I already shared in [this post], but in the context of recent work in the [Blue Core] project, as well as Rob Sanderson's articulation of [LOUD]. I completely agree that [IIIF], and also the [Fediverse], offer examples of how Linked Data projects can achieve wide decentralized deployments, with a wide variety of interoperable tools. Having a shared context and consistent JSON-LD framing are an essential part of that.

Here's the video of me practicing to stay within the allotted four minutes :)

<figure>
  <video controls width="100%" src="/videos/loud-bibframe.mp4">
  <figcaption>SWIB Lightning Talk: LOUD BIBFRAME?</figcaption>
</figure>

After the presentation in the chat I learned from Niklas Lindstrom that the National Library of Sweden make framed BIBFRAME JSON-LD with a context available from [LIBRIS]. I think this highlights how to do this well.

The example from LIBRIS also illustrates how there are pressures for creating a local JSON-LD Context, because you can add other vocabularies, or even add your own local vocabularies to it. Perhaps one way forward here would be to agree on a shared BIBFRAME context for interoperability, and then add other contexts as needed using JSON-LD's [support for multiple contexts]?

I also learned from Adrian Pohl that there was a [SWIB18 Workshop] focused on creating a JSON-LD Context for BIBFRAME data. So this is not a new idea. But perhaps it is an idea whose time has come since the inability to reliably work with BIBFRAME as JSON is a significant barrier to BIBFRAME becoming a viable replacement for MARC.

[this post]: https://inkdroid.org/2024/02/14/publishing-jsonld/ 
[SWIB]: https://forum.swib.org/t/swib25-lightning-talks/937
[Linked Open Usable Data]: https://linked.art/loud/
[LOUD]: https://linked.art/loud/
[Blue Core]: https://bluecore.info/
[BIBFRAME]: https://www.loc.gov/bibframe/
[SWIB18 Workshop]: https://blog.lobid.org/2019/01/31/bibframe-dataset.html 
[LIBRIS]: https://libris.kb.se/api/docs/en/reference/crud_get/
[support for multiple contexts]: https://www.w3.org/TR/2014/REC-json-ld-20140116/#advanced-context-usage
[IIIF]: https://iiif.io
[Fediverse]: https://jointhefediverse.net/learn/
