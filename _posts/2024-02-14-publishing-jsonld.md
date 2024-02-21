---
layout: post
title: On Publishing JSON-LD
tags:
- semantic-web
- python
- json
---

*PSA: JSON-LD publishers should make their JSON usable as JSON without requiring users to install (and understand) fancy RDF libraries. I created [idloc] a (hopefully temporary) command line tool and Python library for getting understandable JSON-LD from the Library of Congress Linked Data Service.*

---

While I worked at the Library of Congress over a decade ago I had the opportunity to help start the [Linked Data Service](https://id.loc.gov) which grew out of the ashes of a previous experiment [lcsh.info] [@Summers:2008]. What started as a place to publish the [Library of Congress Subject Headings] (LCSH) using the [Simple Knowledge Organization System] (SKOS) vocabulary has since grown to encompass 130 different "concept schemes" with millions of entities. 

In practical terms all *Linked Data* really means in the context of this service is that every *concept* in these concept schemes has a URL, and you can put that URL in your browser and view a page about the term. Software tools can also use HTTP (the protocol of the web that your browser speaks) to fetch a concept as *structured data*, to put in a database, or whatever it wants.

Ah, such innocent times on the World Wild Web.

For example the LCSH term *Cats* has the URL [https://id.loc.gov/authorities/subjects/sh85021262](https://id.loc.gov/authorities/subjects/sh85021262).  You can click on that link and see a page about the term, which includes links to related concepts like [Feral cats](http://id.loc.gov/authorities/subjects/sh85047812), as well as equivalent resources in other concept schemes like Wikidata's [Q146](http://www.wikidata.org/entity/Q146).

In the "Alternate Formats" section on the page you can see links to other representations of the Cats concept, in various flavors of RDF and XML and JSON. HTTP clients like [curl](https://curl.se/) can use the URL for the concept to fetch particular formats using content negotiation. For example to get the MADS XML you could:

```
$ curl --location --header "Accept: application/mads+xml" "https://id.loc.gov/authorities/subjects/sh85021262"
```

Or, to get JSON:

```
$ curl --location --header "Accept: application/json" "https://id.loc.gov/authorities/subjects/sh85021262"
```

Linked Data gets kind of a bad rap because developers often think it means they need to use all kinds of RDF processing libraries in their applications. They think it means they need to run a triple store database and query it with SPARQL, instead of using whatever backend technology they are already familiar with. But really, in my opinion, it just means publishing things at URLs you intend to manage so people can link to them over time, and making data available in addition to the HTML for people to look at in their browser.

Most importantly when developers are working with data from the web they don't generally know what to do with RDF. It comes in different serializations, and can be normalized in various ways, which make it quite hard to understand and use without specialized knowledge. Usually developers just want some blob of JSON to work with.

[JSON] is a very popular format for publishing structured data on the web. Part of the reason for its popularity is how JSON support is cooked directly into JavaScript (where it initially grew from) and pretty much any popular programming language you can think of. JSON has a small number of types, which map directly to programming data structures like strings, numbers, booleans, lists and hash tables (aka dictionaries). This small number of types provide a great deal of flexibility and expressiveness.

Fortunately the Linked Data Service does make JSON available. But, if you understand JSON, go look at what cats looks like as JSON: [https://id.loc.gov/authorities/subjects/sh85021262.json](https://id.loc.gov/authorities/subjects/sh85021262.json). Yeah, it's JSON, but ... it looks like a big list, full of URLs everywhere? How do you use that? What gives?

Well, the data is published using a standard called [JSON-LD] (JSON for Linking Data) which is valid JSON, but is  specialized in such a way so that it is able to express an RDF Graph. Unfortunately JSON-LD, like other RDF representations, can come in multiple flavors or *representations*. This one that the Library of Congress is publishing is *valid* JSON-LD, but it is exceedingly hard to use without also using an RDF processing library. Frankly it's probably easier to use one of the XML representations instead.

The whole point of publishing JSON (IMHO) is to make it *easy* for developers to use the data in their applications, using the standard JSON parsing and HTTP support that are baked into whatever programming language they are using. There is no reason to publish JSON-LD this way.

Fortunately, there is a solution: [JSON-LD Framing] (thanks for the [help](https://openbiblio.social/@hochstenbach/111908664774012643) Patrick Hochstenbach). Framing lets you take a JSON-LD document and normalize it in such a way that it is usable as JSON again. A frame is another JSON document that provides instructions and a template for how to express a given JSON-LD document. Unfortunately not everyone knows what software to use to process the frame, or how to write the frame itself. So ideally this is something that the data publisher does when they are publishing the JSON for people to use. But you can do it yourself. As a demonstration I created a little command line tool called [idloc](https://github.com/edsu/idloc) that lets you fetch the framed JSON-LD for a id.loc.gov resource:

```
$ idloc get 'https://id.loc.gov/authorities/subjects/sh85021262'
```

I won't put the JSON inline here, since it's a lot. But if you take a look at [this snapshot] of it, you should see it's much more manageable to use as a JSON object? As you can see from the [docs](https://github.com/edsu/idloc#readme) idloc does quite a bit more, including letting you quickly look up the URI for a given string:

```
$ idloc lucky "Semantic Web"
```

and searching:

```
$ idloc search "Semantic Web"
```

But, getting back to the JSON-LD issue, framing is not the only option here.

When I was [kvetching](https://social.coop/@edsu/111908040892796273) about this in the Fediverse recently, Adrian Pohl rightly pointed out that usually it's better to start with an idiomatic JSON representation that you are happy with, and then layer JSON-LD vocabularies into it, to nail down and communicate the semantics better:

<iframe src="https://openbiblio.social/@acka47/111909644123686229/embed" class="mastodon-embed" style="max-width: 100%; border: 0" width="800" allowfullscreen="allowfullscreen"></iframe><script src="https://openbiblio.social/embed.js" async="async"></script>

I think this is great advice!

I hope that if anyone at the Library of Congress reads this far, and they work in or adjacent to the team managing the Linked Data Service, that they might consider publishing some JSON that others can more easily use. Maybe [the frame I used](https://github.com/edsu/idloc/blob/main/idloc.py#L122-L130) can be used as a jumping off point?

If you have read this far and you don't work at the Library of Congress, thank you, and please consider Adrian's good advice when you are publishing JSON-LD ... and even if you are publishing JSON!

### References

[lcsh.info]: https://web.archive.org/web/20080502155340/http://lcsh.info/
[Framing]: https://www.w3.org/TR/json-ld-framing/
[this snapshot]: https://raw.githubusercontent.com/edsu/idloc/main/examples/sh85021262.json
[idloc]: https://github.com/edsu/idloc
[Library of Congress Subject Headings]: https://en.wikipedia.org/wiki/Library_of_Congress_Subject_Headings
[Simple Knowledge Organization System]: https://en.wikipedia.org/wiki/Simple_Knowledge_Organization_System
[JSON]: https://en.wikipedia.org/wiki/JSON
[JSON-LD]: https://en.wikipedia.org/wiki/JSON-LD
[JSON-LD Framing]: https://www.w3.org/TR/json-ld11-framing/
