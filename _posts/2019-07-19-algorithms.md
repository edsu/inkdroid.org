---
layout: post
title: Algorithms
tags:
- algorithm
- sts
---

*This short post started as a [Twitter thread](https://twitter.com/edsu/status/1152151283362619392) but I thought I'd drop it in here for future reference.*

---

I recently got a real kick out of reading Adam Burke's [Occluded Algorithms]
that got me thinking in more concrete terms about how popular uses of the term
*algorithm* are deployed relative to their use in computer programming. It
builds on some previous work of @Seaver:2017 which I've also briefly written
about [here](https://inkdroid.org/2018/01/30/algorithms/).

It has become quite common to see news stories that talk about Facebook's news
feed algorithm, or Google's ranking algorithm, as things that shape our
experience of using computational tools. On the other hand the word algorithm
has been used for decades to describe discrete computer processes defined in
code that take a set of input and generate a set of output. A large part of the
computer science research literature consists of discussions of these
algorithms, and their application in various contexts..

The connection that Burke seems to make (at least for me) is that in both cases
the term algorithm works from a particular perspective outside of computation,
to talk about some complexity that is inside. Algorithm internals are often
complex and difficult to understand. He uses the example of Python's list sort
which makes a sort algorithm available to the user. On the one hand this
empowering because it offers this algorithm to the computer programmer for them
to use. But at the same time it encapsulates and hides its implementation and
doesn't require the programmer to completely understand what it is doing. The
positiionality here is similar to when a user of Facebook takes the ordering of
their news feed at face value.

Algorithms get packaged up in modules and libraries where they can be
orchestrated together. Much of what we call software development today involves
the pragmatic swapping in & out and plugging together of these units of
complexity.

Open Source offers the ability to open up and inspect the inner workings of
algorithms. But this often involves a huge commitment to understand the
complexity within, which is simply not feasible at the level of a system. But,
thus far, for many eyes, it has proven feasible. Although it's arguable that the
eyes are [getting
strained](https://blog.npmjs.org/post/180565383195/details-about-the-event-stream-incident).

But I guess this focused little piece by Burke really got my attention because
of the way it knitted together theoretical ideas like agential cut
[@Barad:2007], assemblage [@Deleuze:1987], algorithms as culture [@Seaver:2017],
technical objects [@Simondon:1958], and governmentality [@Foucault:2008]. This
last point on governmentality and its connection to algorithms is something that
Burke draws from @Introna:2016, which is new to me.

I'm [interested](https://osf.io/preprints/socarxiv/75mjp) in how governmentality
can provide a way of understanding a wide variety of theories and approaches to
archival appraisal--especially in web archives. Apart from @Mackenzie:2017 I
haven't seen a whole lot written about algorithms and governmentality. Since I'm
mostly focused on web archives algorithms are an important topic. So if you find
other connections please let me know.

### References

[Occluded Algorithms]: https://journals.sagepub.com/doi/full/10.1177/2053951719858743
