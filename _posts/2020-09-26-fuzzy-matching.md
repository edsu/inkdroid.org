---
title: Fuzzy Matching
layout: post
tags:
- web archives
---

This is just a quick post to bookmark an [interesting discussion] about why it's
difficult to archive Facebook, at least with current web archiving tech. Ilya
Kreymer notes that Facebook's user interface is heavily driven by HTTP POSTs to
just one URL:

    https://facebook.com/api/graphql/
    
As you can see this is the endpoint for Facebook's [GraphQL API]. Unlike the
typical [REST API], where there are different URL names for resources, GraphQL
requires a client to HTTP POST a query expressed as a JSON object in order to
get back a JSON response that matches the shape of the query.

This pattern is generally known as [query-by-example], where the exchange is
kind of like a fill-in-the-blank [MadLibs] game where the client provides the
fill-in-the blank statement and the service fills-in-the-blanks and returns it.
Maybe [Cards-Against-Humanity] is a better, more contemporary example. Facebook
promulgated the GraphQL standard and it's used quite a bit now, notably on
GitHub.

Anyway, most web archiving tools include a bot that wanders around some region
of the web following URL links, saving what is retrieved and looking for more
URLs, rinse-lather-repeat. The crawlers use HTTP GET requests to fetch
representations of resources using the URL. This crawling the web with GET
requests won't really work with Facebook because the bot needs to do a POST, and
needs to know what data to post. Archiving bots or tools like Webrecorder and
[Brozzler] that load and interact with the DOM using some set of user driven or
automated behaviors have much more luck recording.

But even Webrecorder has trouble playing back the archived data because it needs
to determine which response is appropriate in the archive for a given user
interaction in the browser. The usual lookup of a record in the WARC file fails
because the [index] it uses is URL based, and (remember) *all the URLs are the
same*. The playback software needs to factor in that POST data that was used in
the request. But that POST data is generated at runtime during playback, and
could be slightly different from the POST data that was used during recording.

Hence the need for *fuzzy matching* the POST data in order to locate the correct
resource to serve up from the archived data. The problem is that rules for
fuzziness need to change as Facebook changes their applications. So if the rule
is to look for a particular id by name, and the name for that id changes, then
the fuzzy matching will break. Or if the data includes some kind of timestamp
generated at runtime during playback then that would cause a match to fail
unless it was ignored.

Andy Jackson [ventured] that Facebook may be intentionally designing their
JavaScript this way to ensure that their content doesn't get archived. It's hard
to say for sure, but they certainly have always tried to keep users in their
platform, so it wouldn't be surprising. It's sort of fun to imagine what catchy
marketing-speak name they might use for the technique in meetings, like
brand-loyalty-policy, customer-content-guards, content-protection-framework,
boundary-rules or...build-that-wall. Ok, it's not really that much fun.

I'm not actually sure if Facebook's GraphQL interface is something that
Webrecorder has tackled yet, since I don't see `/api/graphql` in the current
list of [rules].  But there does seem to be an `/api/graphqlbatch` in there. But
even if there are good rules if the archive is large there could be a lot of
records to sift through if the fuzzy parameters aren't somehow baked into the
index.  Obviously I'm just thinking out loud here, but I thought I'd jot this
all down as a reminder to dig a little deeper in the future.

One last note is that Ilya led a presentation at a recent [IIPC meeting] to
socialize some of the problems around reliably being able to crawl the social
web. He suggested that the problem isn't just technical and has a social
component. People interested in archiving the social web need to work together
to maintain them as the inevitable changes occur on the platforms which
complicate recording and playback. He described how the Webrecorder project is
setting up a continuous integration tools to regularly run a test suite checking
that captures are working. When they fail we need a group of dedicated people on
hand who can notice the failure and work on a fix and get it deployed.

I think Ilya is right. But part of the opportunity here is to make this
community a bit broader a bit broader than the national libraries and cultural
heritage organizations in the IIPC. Although starting there makes a lot of
sense. One possible partner would be media organizations who routinely cite
social media in their own content. Having accurate, authoritative web archives
for the content they are citing seems like a very important thing to have.
Innovations like Webrecorder's [replayweb.page] could offer newsrooms a rich way
of presenting social media content from platforms like Twitter and Facebook
without being entirely reliant on the content staying available.

[interesting discussion]: https://forum.webrecorder.net/t/archiving-facebook/37
[GraphQL API]: https://developers.facebook.com/docs/graph-api/
[REST API]: https://en.wikipedia.org/wiki/Representational_state_transfer
[query-by-example]: https://en.wikipedia.org/wiki/Query_by_Example
[MadLibs]: https://en.wikipedia.org/wiki/Mad_Libs
[Brozzler]: https://github.com/internetarchive/brozzler
[rules]: https://github.com/webrecorder/pywb/blob/master/pywb/rules.yaml
[ventured]: https://digipres.club/@anj/104932687238894116 
[Cards-Against-Humanity]: https://en.wikipedia.org/wiki/Cards_Against_Humanity

[IIPC meeting]: https://netpreserve.org/events/iipc-rss-webinar-web-archiving-social-media-and-news-websites-ii/

[replayweb.page]: https://replayweb.page/
