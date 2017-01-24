---
layout: post
title: Facts as Annotations
tags: 
- annotation
- journalism
- web
---

You may have noticed back in December that the Washington Post [released] a fact
checking plugin for Chrome that provides inline context for Trumps tweets.

<a href="https://www.washingtonpost.com/news/the-fix/wp/2016/12/16/now-you-can-fact-check-trumps-tweets-in-the-tweets-themselves/"><img class="img-responsive" src="/images/wapo-plugin.png"></a>

A few days later an equivalent [Firefox extension] was released as well. At the
time I looked at the plugin source that was installed (I couldn't find it on Github) to see how it was gathering facts:

<blockquote class="twitter-tweet" data-cards="hidden" data-lang="en"><p lang="en" dir="ltr">The WaPo browser extension to provide context to Trump’s tweets has a local store of facts <a href="https://t.co/gg6RYxYsKj">https://t.co/gg6RYxYsKj</a> <a href="https://t.co/DMsStcr0Ks">https://t.co/DMsStcr0Ks</a></p>&mdash; Ed Summers (@edsu) <a href="https://twitter.com/edsu/status/810174514197921792">December 17, 2016</a></blockquote> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

The plugin comes bundled with a set of facts: specifically [23 facts] about 28
of Trump's tweets, that are stored as JavaScript. I thought this was significant
at the time because tweets can spread quickly, and any lag time between when the
tweet is published, when the fact checking is performed, and when the plugin is
updated is highly significant. The plugin would need to be fully updated to get
the new facts for someone to see them.

---

Just a few days ago the Washington Post updated their story to indicate that the
extension now will fact check tweets from the [POTUS] account as well (thanks
for the heads up [Neil]). I took the opportunity a look under the hood again and
can see that now it is fetching the facts dynamically from the web from this
URL:

> [https://www.pbump.net/files/post/extension/core/data.php](https://www.pbump.net/files/post/extension/core/data.php)

Now there are 73 facts about 98 tweets, which is very cool. I put a snapshot I
created this afternoon up as [a gist] if you want to take a look at them
pretty-printed. 

But it's not just that there are more facts that's exciting here. The big
improvement in my opinion is that the plugin is loading the facts *dynamically*.
So as new fact checking is performed the plugin can respond in near real time.
The plugin doesn't need to be updated to get the new facts in front of people.

This raises the question of what workflow is producing the facts.  I think it
would be interesting to know a little bit more about how the facts end up in
this JSON data being served up at pbump.net. Presumably there are journalists
watching what Trump is tweeting and somehow adding them to a database that is
being used to serve up the data. It feels like there could be an opportunity to
formalize the data structure for the facts, and bootstrap a mini-ecosystem for
the sharing of facts, by trusted authorities.

Having used the [Hypothesis Annotation plugin] for a few years I can't help but
wonder if it might o share these facts using something like [Web Annotations].
Web Annotation provides a distributed data model and format for annotating web
content.  What if there were a plugin that could be configured to display facts
from the Washington Post and the New York Times, or any other authority that
wants to put in the work, and someone wants to approve?  As much as I loathe the
idea of *alternative facts* and how they are being used politically at the
moment, I still recognize that facts are based on trust, and trust is
fundamentally a social problem.

Truth be told I don't think using Web Annotation as a technology in itself is
going to solve this problem of trust. Been there done that. What's actually
needed is *openness* about how the architecture underpinning the behavior of
fact checking, and letting others participate in it. This obviously isn't a
fully baked thought, but more of a provocation for further thoughts. One small,
perhaps risky but practical step forward would be for the Washington Post to
publish their plugin on GitHub, and to start a dialogue about what an small
ecosystem for fact checking could look like.


[released]: https://www.washingtonpost.com/news/the-fix/wp/2016/12/16/now-you-can-fact-check-trumps-tweets-in-the-tweets-themselves/?tid=sm_tw&utm_term=.1ebfcaa9e0c7
[Firefox extension]: https://addons.mozilla.org/en-US/firefox/addon/real-donald-context/
[POTUS]: https://twitter.com/POTUS
[Neil]: https://twitter.com/fraistat
[a gist]: https://gist.github.com/edsu/fa5b62a800be8bb9a68e84ef632f4ed7
[Hypothesis Annotation Plugin]: https://hypothes.is/
[Web Annotations]: http://w3c.github.io/web-annotation/model/wd2/
[23 facts]: https://gist.github.com/edsu/8adb6edd07304b89125710c13fd9e40e
