---
layout: post
title: Shipping BIBFRAME
tags:
- json
- libraries
- data
- bibframe
---

Yesterday Kevin Ford and I gave a [presentation] ([slides]) at the LD4 conference about the use of [BIBFRAME] "bounded descriptions" at the Library of Congress (LC) and in the [Blue Core] project.

BIBFRAME data is RDF that gets serialized in many different ways. One of the challenges of building tooling around BIBFRAME is that you don't necessarily know if you have to [follow your nose] in the data (resolve URLs) to get some of the data, or if it will be present in the data you have in hand.

This may seem like a small thing, but when you are building BIBFRAME editors, or doing a large bulk loading operations (as LC and the Blue Core project are doing) it is helpful to have it on hand. The *bounded description* is a convention for making certain information available in the BIBFRAME data.

The initial idea for the talk was to describe some interoperability [problems] that we experienced when loading data that had been designed for XML processing in a RDF processing centered workflow. But rather than focus on those specific problems it shifted instead to talk about the role of bounded description for interoperability more generally.

The bounded description aside, one thing that fell out of this work for me was the importance of having a [JSON schema for BIBFRAME]. You might wonder why on earth you would want a JSON Schema for BIBFRAME RDF data -- wouldn't that be overly prescriptive, since RDF can be represented using XML, JSON, Turtle, N3, etc? The answer is yes, and that is completely the point.

Following along with the principles of [Linked Open Usable Data] (LOUD), it is extremely useful for tool building purposes to have a clear idea of how the JSON-LD is structured. Even within JSON-LD there are many ways of representing the same exact RDF graph. Working with this variety of serialization formats requires tools to use an RDF parser. For some in the Linked Data community this isn't a big deal.

But most people working with data on the Web are used to loading some JSON with their programming language's JSON support, and interacting with it like a data structure: hash maps, lists, strings, integers, etc. If they can't reliably do that it is a major interoperability problem. If BIBFRAME is really going to replace MARC I think it's important to let the ontology and RDF serializations exist, while providing a strict and easy to use representation for the many people who aren't engaging at that level.

The bibframe-json site is brand new. We are storing JSON-LD in the Blue Core data store, and making it available via an API. But we aren't actively using this schema (or any other) for validating the data on the way into the data store...at least not yet. The schema was developed rapidly with Claude Code, mostly as a provocation for the LD4 talk. It's my (probably unpopular) belief that if we can't represent BIBFRAME data using JSON Schema then BIBFRAME really isn't going to see widespread adoption, ever. I'm sure that there ways for this initial version to be improved. If you have ideas or suggestions please consider [contributing] to the work, or get in touch with me [directly].

[presentation]: https://2026ld4.sched.com/event/2Wj8c/shipping-bibframe
[slides]: https://inkdroid.org/talks/shipping-bibframe.pdf
[problems]: https://inkdroid.org/2026/09/02/dupes/
[Blue Core]: https://bluecore.info/
[Linked Open Usable Data]: https://linked.art/loud/
[JSON schema for BIBFRAME]: https://blue-core-lod.github.io/bibframe-json/
[contributing]: https://blue-core-lod.github.io/bibframe-json/contributing/
[directly]: mailto:ehs@pobox.com
[follow your nose]: https://inkdroid.org/2008/01/04/following-your-nose-to-the-web-of-data/
[BIBFRAME]: https://bibframe.org
