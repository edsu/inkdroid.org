---
layout: post
title: Bookmarks - llm, movie, programming, research
tags: ["api", "bookmarks", "bots", "browsers", "conferences", "design", "haskell", "internet-archive", "llm", "markdown", "movies", "music", "open-access", "pandoc", "programming", "python", "warc", "research", "rust", "search", "waybackmachine"]
---

These are some things I've wandered across on the web this week.
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://pureinsights.com/blog/2026/elasticsearch-isnt-your-ai-search-problem-you-are/">
      Elasticsearch isn’t your AI search problem. You are.
    </a>
  </h2>
  <section class="p-summary">
    Why data governance and evaluation matter when building search systems, and especially when doing Retrieval Augnented Generation.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tags/llm/">llm</a> <a rel="tag" class="tag label label-default p-category" href="/tags/search/">search</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://arxiv.org/abs/2607.27191">
      Can AI agents conduct open-ended AI research? Early evidence from two case studies
    </a>
  </h2>
  <section class="p-summary">
    Forecasts of explosive AI progress hinge on AI agents automating AI research. But evidence on whether agents can carry out open-ended AI research is thin. Current evaluations either test agents on narrow, verifiable tasks, which excludes open-ended research, or submit AI-generated papers to blind peer review, which is overstretched, stochastic, and suffers from poor review quality. We introduce a third way to measure progress towards AI R\&D automation. An agent takes on the central, open-ended research question of a high-quality unpublished paper, and the paper's original authors grade its output. We call these shadow evaluations. We ran shadow evaluations on two unpublished NeurIPS 2026 submissions, giving frontier agents six days and thousands of dollars of compute. The agents completed all of the engineering without human help, yet could not make substantial progress towards answering the research questions. As a result, both papers were unambiguously rejected by the authors. We identify five recurring failure modes: poor judgment about the bar for publishable research, uncreative responses to shortcomings in the research design, ineffective backtracking from dead ends, poor resource awareness, and instruction drift
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tags/llm/">llm</a> <a rel="tag" class="tag label label-default p-category" href="/tags/research/">research</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://github.com/WEB-CHILD/InternetArchiveExtractor">
      InternetArchiveExtractor
    </a>
  </h2>
  <section class="p-summary">
    This repository extracts archived content from the Wayback Machine and converts collected metadata and downloaded snapshot files into compressed WARC files. The project supports two primary modes of operation: downloading snapshots from the Internet Archive and converting CSV metadata (produced by pywaybackup) into WARC-GZ archives.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tags/internet-archive/">internet-archive</a> <a rel="tag" class="tag label label-default p-category" href="/tags/python/">python</a> <a rel="tag" class="tag label label-default p-category" href="/tags/warc/">warc</a> <a rel="tag" class="tag label label-default p-category" href="/tags/waybackmachine/">waybackmachine</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://browser-use.com/posts/playwright-to-cdp">
      Closer to the Metal: Leaving Playwright for CDP
    </a>
  </h2>
  <section class="p-summary">
    Playwright and Puppeteer are great for making QA tests and automation scripts short and readable, but as AI browser companies have been learning the hard way over the last year, sometimes these adapters obscure important details about the underlying browsers. We decided to peek behind the curtain and figure out what the browser was really doing, and it made us decide to drop playwright entirely and just speak the browser's native tongue: CDP. By switcing to raw CDP we've massively increased the speed of element extraction, screenshots, and all our default actions. We've also managed to add new async reaction capabilities to the agent, and proper cross-origin iframe support.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tags/api/">api</a> <a rel="tag" class="tag label label-default p-category" href="/tags/bots/">bots</a> <a rel="tag" class="tag label label-default p-category" href="/tags/browsers/">browsers</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://blog.rust-lang.org/inside-rust/2026/08/05/rust-langrust-is-adopting-an-llm-policy/">
      rust-lang/rust is adopting an LLM policy
    </a>
  </h2>
  <section class="p-summary">
    It's fine to use LLMs to answer questions, analyze, distill, refine, check, suggest, review. But not to create.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tags/llm/">llm</a> <a rel="tag" class="tag label label-default p-category" href="/tags/programming/">programming</a> <a rel="tag" class="tag label label-default p-category" href="/tags/rust/">rust</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.seangoedecke.com/llms-reward-expertise/">
      LLMs reward expertise
    </a>
  </h2>
  <section class="p-summary">
    ... the idea here — that domain knowledge makes you better at using LLMs — is something I’ve also experienced in my own work. If you have a good theory of your codebase, you can push the LLM much harder than if you have no familiarity. Because you have your own sense of what a good solution might look like, you can say “no, I think it could be simpler here”, or “but don’t we already do X?”, or “can we express this problem in these familiar terms?“.

This touches on an idea I’ve written about before: that system design problems are dominated by concrete specifics, not generic principles. Of course both are useful, but I’d rather have familiarity with the codebase than a deep general understanding of software systems. In his conversation, Terence Tao asks a lot of specific questions like “does X work here?”, or “given Y and Z, why A?“. I can’t ask those questions about the Jacobian Conjecture, but I can ask them about the systems I own at GitHub.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tags/design/">design</a> <a rel="tag" class="tag label label-default p-category" href="/tags/llm/">llm</a> <a rel="tag" class="tag label label-default p-category" href="/tags/programming/">programming</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://pandoc.org/twenty-years-of-pandoc.html">
      Twenty Years of Pandoc
    </a>
  </h2>
  <section class="p-summary">
    As things stand now, though, I think that using pandoc to convert texts has several large advantages over relying on an LLM. The first is ecological; it simply requires far less energy for the same conversion. The second is that pandoc’s output is deterministic; if you convert your text with pandoc, you’ll always get the same result, and you’ll be able to predict what that result is. The third is that, for the moment at least, pandoc’s conversions are going to be more reliable. But that could change in the coming years. Indeed, a time may come when LLMs can produce more reliable conversions than pandoc or anything that works like it.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tags/haskell/">haskell</a> <a rel="tag" class="tag label label-default p-category" href="/tags/markdown/">markdown</a> <a rel="tag" class="tag label label-default p-category" href="/tags/pandoc/">pandoc</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.bodleian.ox.ac.uk/open-research/oxfos">
      Oxford Forum of Open Scholarship (OxFOS) 2027
    </a>
  </h2>
  <section class="p-summary">
    Now in its fifth year, the Oxford Forum of Open Scholarship (OxFOS) is a University-wide conference for researchers, students, staff, and anyone else interested in making research more open and trustworthy. 

OxFOS is a chance to share ideas, learn, showcase your work, and interact with others passionate about the importance of making research more open, transparent and accessible. It is organised by the Bodleian Libraries in partnership with the Research Practice team and the grassroots researcher group, Reproducible Research Oxford (RROx). 

Online events will be taking place Monday to Wednesday, with an in-person conference at the Weston Library on Thursday 11 March. The conference and events are free to attend and open to all.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tags/conferences/">conferences</a> <a rel="tag" class="tag label label-default p-category" href="/tags/open-access/">open-access</a> <a rel="tag" class="tag label label-default p-category" href="/tags/research/">research</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.spinmagazine.com/2026/07/adam-wiltzie-johann-johannsson/">
      Adam Wiltzie Completes Jóhann Jóhannsson Collaboration
    </a>
  </h2>
  <section class="p-summary">
    More than a decade after they first began recording together, Adam Wiltzie has completed one final collaboration with his late friend Jóhann Jóhannsson. Friendship Survival Guide, due Sept. 18 via Deutsche Grammophon, draws from sessions the pair recorded between 2013 and 2017 before the celebrated Icelandic composer died unexpectedly in 2018 at age 48.

The project reunites Stars of the Lid/Windsor for the Derby principal Wiltzie and Jóhannsson, whose acclaimed film score work included The Theory of Everything and Arrival. Originally conceived alongside their collaborations on those scores, the album languished as Jóhannsson’s film career exploded before ultimately being shelved after his death. With the blessing of Jóhannsson’s family, Wiltzie recently returned to the tapes to finish what the composer had once described as “our own weird record.”
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tags/music/">music</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://en.wikipedia.org/wiki/Last_and_First_Men_%28film%29">
      Last and First Men (film)
    </a>
  </h2>
  <section class="p-summary">
    Last and First Men is a 2020 English-language Icelandic science fiction film directed by Jóhann Jóhannsson, who co-wrote the screenplay with José Enrique Macián. Based on the 1930 novel of the same name by English author Olaf Stapledon, it is the only feature film directed by Jóhannsson, a composer who died of an overdose two years before its release.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tags/movies/">movies</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://en.wikipedia.org/wiki/Sicario_%282015_film%29?wprov=sfla1">
      Sicario
    </a>
  </h2>
  <section class="p-summary">
    Denis Villeneuve

Sicario is a 2015 American action crime thriller film directed by Denis Villeneuve, written by Taylor Sheridan in his screenwriting debut and starring Emily Blunt, Benicio del Toro, and Josh Brolin. The film follows a principled FBI special agent who is enlisted by a government task force to bring down the leader of a powerful and brutal Mexican drug cartel. Sicario was selected to compete for the Palme d'Or at the 2015 Cannes Film Festival. It began a limited release in the United States on September 18, 2015, followed by a nationwide release on October 2, 2015.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tags/movies/">movies</a></p>
</article>
