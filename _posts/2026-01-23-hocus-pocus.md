---
title: Hocus-Pocus
layout: post
tags:
- research
- llm
---

For many, many reasons I loathe how genAI gets built into tools: both when it's advertised proudly as the next big feature, and when it is obscured behind layers of technical cruft.

But, I'm ashamed to admit, recently a little devil whispered in my ear that there are some aspects of research where genAI coupled with human review can be helpful?

Consider this example...

I need to evaluate whether a set of publications were authored by a given person, where there are tens of thousands of people and hundreds of thousands of publications. Rather than reviewing each of them by hand I:

1. sample the people
2. send a prompt off to the model that asks if the name of the given person authored a list of publications (with all the usual hocus-pocus instructions)
3. ...crazy insane wasteful computation happens...
3. model says YES or NO
4. I review all the NOs and change it to YES if it looks like the model was wrong.
5. Calculate percent NO 

Assuming the sample size was calculated correctly, can I say that the percent NO is a lower bound on how many are incorrect, with some confidence and margin of error?

If the genAI got a bunch of them wrong, where some of the YES should really be NO, the percent NO is just going to increase right?

[Tell me](mailto:ehs@pobox.com) how this method is wrongheaded, please? Or, if you've seen this discussed elsewhere [send me](mailto:ehs@pobox.com) a link?
