---
title: AI and Copyright (for libraries)
tags:
- copyright
- ai
layout: post
---

A colleague in Slack (thanks [Snowden]) shared that the Coalition for Networked Information recently had [a good session] on Copyright and AI for librarians. It was run by Jonathan Band, who is an attorney for the Library Copyright Alliance, and Timothy Vollmer who does scholarly communications at Berkeley. The presentation is an hour long and worth watching, or listening to as you do something else, like walking your dog...as you do.

Below are the brief notes I jotted down afterwards.

<iframe width="700" height="415" src="https://www.youtube.com/embed/GMttBH1oAD4?si=RfhVpGBaJID2tzLU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Band helpfully pointed out that discussions about AI and copyright often center on the question of whether fair use applies, and that these discussions often tangle up three separate issues that are useful to think about on their own.

1. Can ingestion for training AI constitute infringement?
2. Can AI output infringe?
3. Is AI output copyrightable?

For ingestion (1) it seems like the [EU Copyright law] and the new [AI Act] will (like the GDPR) have a lot of sway elsewhere around the world since businesses will want to operate their AI services in Europe. AI companies will be required to disclose what content they used to build their models, and also to provide a way for publishers to opt out (e.g. robots.txt or [newly developing standards]) from having their content used to train generative AI models. There are also provisions in the EU Copyright that protect non-commercial ingestion of copyrighted material. However even if these legal instruments help shape how generative AI services get deployed, a law on the books in the EU can't be used in a court case outside of the EU? 

For 2 it seems like things are largely up in the air, and that the [NYTimes v Microsoft] case is something to watch, since they are arguing that OpenAI's ChatGPT can generate [near verbatim] text from their copyrighted materials. Unlike other quasi AI tools (e.g. Google Search) ChatGPT doesn't link to cited material (because it doesn't know how to), which negatively impacts web publishers like the NYTimes since it deprives them of clicks (and revenue). There are multiple other court cases testing the waters around 2, and apparently the same law firm seems to be representing many of them? 

As for 3 the US Copyright Office has a report coming out later this year, but it's likely that it will  present the factors to consider, without providing explicit guidance. So questions about whether AI generated content *can* be copyrighted, and by *who* (the creators of the tool, the creator of the prompt, etc) will likely be decided in court cases. Band didn't mention if there are any of these pending.

There was also some interesting points shared by Timothy Vollmer nearer the end about vendors who are making libraries sign contracts that prevent library patrons from ingesting content for research purposes, which is something that the EU Copyright explicitly allows. He had some good suggestions for how to push back on these by demanding alternate language in these contracts that doesn't infringe on fair use.

<img src="/images/ai-copyright.png" class="img-fluid">

I think some coordination amongst libraries for pushing helpful legal language here would be helpful in making sure our users aren't negatively impacted, and libraries aren't held liable for breach of contract in cases where fair use should apply. I'm not sure where that work is happening, but presumably Vollmer would be a good person to reach out to to find out.

All this prompted me to add a [robots.txt](https://inkdroid.org/robots.txt) file to this website, based on directives I saw in [the NYTimes robots.txt](https://www.nytimes.com/robots.txt). Band said that  legal questions about ingestion may depend on whether a publisher has indicated that they did not want their content used in generative AI tools. I'm really interested to hear if we get more declarative ways of controlling whether content is used for generative AI instead of bluntly blocking particular bots by User Agent. Some companies may not want to crawl a page once and repurpose content for different things (search index, llm, etc) without requiring multiple fetches from the multiple bots named different things. It will be interesting to see what happens [over at the IETF]. The use of robots.txt has proven problematic for use cases around web archiving (crawl and replay) in the past, so another approach would be helpful I think.

[Snowden]: https://snowdenbecker.com/
[a good session]: https://www.cni.org/topics/intellectual-property/handling-academic-copyright-and-artificial-intelligence-research-questions-as-the-law-develops
[EU Copyright law]: https://en.wikipedia.org/wiki/Directive_on_Copyright_in_the_Digital_Single_Market  
[AI Act]: https://en.wikipedia.org/wiki/Artificial_Intelligence_Act
[newly developing standards]: https://www.mnot.net/blog/2024/04/21/ai-control
[New York Times v OpenAI]: https://www.nytimes.com/2023/12/27/business/media/new-york-times-open-ai-microsoft-lawsuit.html
[near verbatim]: https://nytco-assets.nytimes.com/2023/12/Lawsuit-Document-dkt-1-68-Ex-J.pdf
[over at the IETF]: https://www.mnot.net/blog/2024/04/21/ai-control
