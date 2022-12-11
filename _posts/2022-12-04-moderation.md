---
title: Moderation
tags:
- social-media
- mastodon
- moderation
layout: post
---

The influx of people and activity into the [fediverse], and [Mastodon] in particular, has brought new attention to a long bubbling conversation about how content moderation should work in decentralized social media spaces. It's difficult to synthesize at the moment, especially because it's rapidly evolving. You can find some of what I've been reading my [moderation links](https://pinboard.in/u:edsu/t:moderation/) on Pinboard.

One thing I read which really made an impression on me was [From Scalability to Subsidiarity in Addressing Online Harm] by [Amy Hasinoff] and [Nathan Schneider]. Below are some disorganized notes from my scrawled on copy of the article, that I wanted to jot down and try to synthesize here for future me.

On the one hand this article provides a really excellent overview of what
[restorative] and [transformative justice] are. Restorative justice grew out of
indigenous legal traditions, where rather than punishing the offender justice
focuses instead on creating understanding between the offender and the harmed,
with the goals of redemption and prevention of further harm.

Transformative justice is a further evolution of the concept, which came about in part because of the ways that Restorative Justice became standardized in the legal system in the attempt to scale it. Restorative Justice drifted from its indigenous roots as it scaled, and become more focused on the offender, in a way that forgets the role that the harmed play in the process. Transformative Justice re-centers the focus on *process* rather than specific *outcomes*, and tries to *transform* the conditions that lead to harm. It addresses issues that aren't limited to the criminal justice system, such as the environment, economics, and labor -- but also eschews scalability.

The article then connects these concerns with the problems of moderation and scale in social media
platforms. One of the possible benefits of federated social media platforms
like Mastodon is that they provide an opportunity for more context-specific,
localized moderation practices, which could connect the offender and the harmed
in meaningful ways, and promote understanding. These moderation practices could
present an alternative model for moderation than the usual steps of labeling,
demotion and banning of content. A key concept here is the idea of
[subsidiarity], which is "the principle that local social units should have
meaningful autonomy within larger systems, and that such arrangements
contribute to the health and accountability of the system as a whole". Our
current corporate social media platforms have scaled moderation in such a way
that restorative/transformative justice is impossible.

> Polycentric designs might have a natural affinity with the structures of online networks, as well as with the vision of transformative justice to address harm without top-down coercive power. While transformative justice projects are loosely united by certain principles, handbooks, podcasts, and leading thinkers, which facilitates communication and skill-sharing across communities, they nonetheless resist central authority and forms of institutionalization. In contrast, restorative justice is often more federated in its relationship to criminal legal systems and state institutions. Federated structures have also thrived in online contexts, perhaps due to the legal requirement for central ownership over servers and branding, including in corporate-owned social media and nonprofit peer-production projects such as Wikipedia.

The authors are being careful here to point to how the term "federated" which gets bundled into the "fediverse" is a little bit inaccurate because federated social media like Mastodon, Matrix, PeerTube are more polycentered than they are federalist. They are open source software that can be run anywhere that a server can be set up on the Internet, and often are administered locally. I think this is an interesting point because while I agree that they have a potential to be polycentered, the software and the protocols they implement do have a standardizing effect. Or, as Lessig famously observed, Code is Law [@Lessig:2000].

The authors close out by offering some design considerations to help promote polycentered, subsidiarity focused moderation in federated social media like Mastodon. Noting these down was the original reason why I opened my editor to write this post.

1. Joining an online community should require some effort, and be a commitment, because if it's easy to join and leave people can opt-out of unwanted accountability processes. What are the ramifications here for data portability, taking your social network elsewhere? Currently [it's not possible](https://github.com/mastodon/mastodon/issues/12423) to bring your content with you when you move in Mastodon.
2. Coordinating networks of support for people that are harmed can be of great benefit, especially in cases where the person doing the harming is not engaging. Could things like Hometown's [local-only posting](https://github.com/hometown-fork/hometown#local-only-posting) help with these sorts of conversations?
3. Online spaces may provide needed emotional distance needed for engaging in the restorative process more fully. Allowing restorative processes to take place in multiple channels (video, chat, email) can be helpful.
4. System designs need to allow facilitators to tailor the forms of repair and responses to harm to each individual case. This will allow participants to focus on root causes, and less on the content being moderated. What would these moderation interfaces look like?
5. There need to be values based mechanisms for challenging internal norms and community practices. Communities must be held accountable in addition to individuals.

Of course, the other aspect to all this is ... this is a lot of work! Who is going to do it? How can we collectively do it together without also inviting some of the regularizing effects of scale that subvert transformative justice? If Mastodon and federated social media is going to survive and thrive it will need answers for this, otherwise it is likely we will see [centralization re-emerge](https://octodon.social/@cwebber/109421874041759892). More recently Schneider and Hasinoff also wrote [Mastodon Isn’t Just A Replacement For Twitter] which takes this line of inquiry and translates it into a call for new users of Mastodon to step up and engage in shared governance of the instances they've chosen to use. 

One of the reasons why I'm interested in content moderation is that it seems deeply tied to appraisal practices in archives. Both are decisions about documents that are based on values, which can get systematically defined or constrained. I don't know if that connection has been made before--it must have been but perhaps it's too niche? It's interesting because one is typically thought of as decisions about what to remove and the other about what to keep. But both decisions kind of enclose or entail the other. I think the general idea of connecting archives and social justice is well explored [@Punzalan:2016], and starting to see work on transformative justice [@Evans:2021]. I think that's why projects like [A People's Archive of Police Violence](https://peoplesarchiveofpoliceviolence.com/) have been so important because they have put these ideas into practice.

### References

[From Scalability to Subsidiarity in Addressing Online Harm]: https://journals.sagepub.com/doi/10.1177/20563051221126041
[Mastodon Isn’t Just A Replacement For Twitter]: https://www.noemamag.com/mastodon-isnt-just-a-replacement-for-twitter/
[Amy Hasinoff]: https://amyhasinoff.wordpress.com/
[Nathan Schneider]: https://en.wikipedia.org/wiki/Nathan_Schneider
[restorative]: https://en.wikipedia.org/wiki/Restorative_justice
[transformative justice]: https://en.wikipedia.org/wiki/Transformative_justice
[subsidiarity]: https://en.wikipedia.org/wiki/Subsidiarity
[fediverse]: https://en.wikipedia.org/wiki/Fediverse
[Mastodon]: https://en.wikipedia.org/wiki/Mastodon_(software)
