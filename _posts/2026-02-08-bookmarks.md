---
layout: post
title: Weekly Bookmarks
---

These are some things I've wandered across on the web this week.

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://greasyfork.org/en/scripts/565058-desire-paths-for-wikipedia">
      Desire Paths for Wikipedia (2025-2026);
    </a>
  </h2>
  <section class="p-summary">
    Desire Paths for Wikipedia is a browser userscript that remembers the path of a cursor over the linked pages of Wikipedia.org. It averages these paths and “wears” them into the page, showing your browsing history over time. Return to a page months or years later and find not just that you had been there before, but exactly how you wandered.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://en.wikipedia.org/wiki/Meet_Me_in_the_Bathroom_(film)">
      Meet Me in the Bathroom (film)
    </a>
  </h2>
  <section class="p-summary">
    Meet Me in the Bathroom is a 2022 indie rock documentary film directed by Will Lovelace and Dylan Southern. It is based upon the 2017 book of the same name by Lizzy Goodman. The documentary focuses on the 'golden age' of the indie rock genre which steamed from New York City and how the effects of the September 11 attacks brought upon the American revival of rock music.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://github.com/cfinke/EpsteIn">
      EpsteIn
    </a>
  </h2>
  <section class="p-summary">
    Search the publicly released Epstein court documents for mentions of your LinkedIn connections.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://analytics.dugganusa.com/epstein/">
      EPSTEIN NETWORK VISUALIZATIONS
    </a>
  </h2>
  <section class="p-summary">
    DOJ EFTA Release Feb 2026 | 71,450+ Documents Indexed (Datasets 1-10, live ingestion) | DugganUSA Threat Intelligence
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://research.wikimedia.org/knowledge-integrity.html">
      Improve Knowledge Integrity - Wikimedia
    </a>
  </h2>
  <section class="p-summary">
    The strategic direction of “Knowledge as a Service” envisions a world in which platforms and tools are available to allies and partners to “organize and exchange free, trusted knowledge beyond Wikimedia”. Achieving this goal requires not only new infrastructure for representing, curating, linking, and disseminating knowledge, but also efficient and scalable strategies to preserve the reliability and integrity of this knowledge. Technology platforms across the web are looking at Wikipedia as the neutral arbiter of information, but as Wikimedia aspires to extend its scope and scale, the possibility that parties with special interests will manipulate content, or bias to go undetected, becomes material.

We have been leading projects to help our communities represent, curate, and understand information provenance in Wikimedia projects more efficiently. We are conducting novel research on why editors source information, and how readers access sources; we are developing algorithms to identify statements in need of sources and gaps in information provenance; we are designing data structures to represent, annotate, and analyze source metadata in machine-readable formats as well as tools to monitor in real time changes made to references across the Wikimedia ecosystem.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.mediawiki.org/wiki/Wikimedia_Enterprise/Breaking_news">
      Wikimedia Enterprise/Breaking news
    </a>
  </h2>
  <section class="p-summary">
    Wikimedia Enterprise's "Breaking News" feature identifies new articles related to large-scale global "newsworthy" events as they are being written about across Wikipedia language editions at any given moment. These events are then marked with a boolean field, allowing API users to easily identify this kind of content within their copy of the dataset. Please send us feedback for this beta feature.

https://breakingnews-beta.enterprise.wikimedia.com/ 

        Note that this is a desktop only app and is in beta.

The feature is created primarily for Enterprise API users and with community editors in mind. You can help us improve the feature by testing and sending us different combination of inputs that retrieved better results. Surfacing any potentially missing templates from across language projects would help us capture more results. Using the thumbs up and down buttons in the demo to confirm or deny if entries are accurately identified as breaking news, will help us in the long and medium-term in building a better, more accurate tool.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://meta.wikimedia.org/wiki/Machine_learning_models/Production/Language-agnostic_revert_risk">
      Machine learning models/Production/Language-agnostic revert risk
    </a>
  </h2>
  <section class="p-summary">
    How can we help editors to identify revisions that need to be “patrolled”? The goal of this model is to detect revisions that might be reverted, independently of whether they were made in good faith or with the intention of creating damage.

Patrolling content in more than 250+ Wikipedia projects is a difficult task. The amount of revisions plus the different languages involved requires a complex human effort. The aim of this model is to help patrollers quickly identify potential problems and revert damaging edits when needed.

Previous models had tried to solve this by creating language-specific solutions, however, that approach is difficult to escalate and maintain, because it requires as many models as languages used on the Wikimedia projects. Moreover, complex-language models are just available in certain languages, leaving out smaller Wikipedia editions. Therefore, this model is based on Language Agnostic features, making it possible to use it for any existing Wikipedia, and for new language projects that can appear in the future.

This model was trained using the two tables from the Wikimedia Data Lake: The MediaWiki History , and the Wikitext History one. Meta-data was extracted for the former, and other features such as number of references, images and wikilinks, were extracted from the latter.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://arxiv.org/abs/2506.08300">
      Institutional Books 1.0: A 242B token dataset from Harvard Library's collections, refined for accuracy and usability
    </a>
  </h2>
  <section class="p-summary">
    Large language models (LLMs) use data to learn about the world in order to produce meaningful correlations and predictions. As such, the nature, scale, quality, and diversity of the datasets used to train these models, or to support their work at inference time, have a direct impact on their quality. The rapid development and adoption of LLMs of varying quality has brought into focus the scarcity of publicly available, high-quality training data and revealed an urgent need to ground the stewardship of these datasets in sustainable practices with clear provenance chains. To that end, this technical report introduces Institutional Books 1.0, a large collection of public domain books originally digitized through Harvard Library's participation in the Google Books project, beginning in 2006. Working with Harvard Library, we extracted, analyzed, and processed these volumes into an extensively-documented dataset of historic texts. This analysis covers the entirety of Harvard Library's collection scanned as part of that project, originally spanning 1,075,899 volumes written in over 250 different languages for a total of approximately 250 billion tokens. As part of this initial release, the OCR-extracted text (original and post-processed) as well as the metadata (bibliographic, source, and generated) of the 983,004 volumes, or 242B tokens, identified as being in the public domain have been made available. This report describes this project's goals and methods as well as the results of the analyses we performed, all in service of making this historical collection more accessible and easier for humans and machines alike to filter, read and use.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://scour.ing/">
      Scour
    </a>
  </h2>
  <section class="p-summary">
    Scour is a personalized content discovery platform. You say what topics you're interested in and it scours thousands of sources to find great articles and blog posts for you.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://publishing.escholarship.umassmed.edu/jeslib/article/id/1176/">
      The Repository of Last Resort? Exploring the Role of Institutional Repositories in the Data Repository Ecosystem through Researcher Perspectives
    </a>
  </h2>
  <section class="p-summary">
    Objective: The data repository ecosystem is robust, and researchers have many choices when it comes to sharing their research data. This study aims to better understand what researchers value when choosing a data repository and how they perceive the role of the institutional repository in the larger ecosystem.

Methods: We sent out a survey to researchers who had deposited datasets in identified repositories or the institutional repository (IR). We received 40 responses, a 7.5% response rate. Ten survey participants were also invited to take part in interviews to expand on their experiences.

Results: Overwhelmingly, data repository users consider cost and convenience over repository features. Institutional repository users value the services offered by library staff and cite trust as a primary factor for using the IR. Differences in the two groups of users confirm our hypothesis that there is value in maintaining the IR for data deposits.

Discussion: Based on our results, we identified three user personas to guide our outreach strategy in the future. A targeted outreach strategy can help improve IR awareness and also attract additional users who may discover that the IR meets their data repository needs.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://sightlessscribbles.com/the-colonization-of-confidence/">
      The Colonization of Confidence.
    </a>
  </h2>
  <section class="p-summary">
    A story about  the pernicious effect of genAI on creative writing, and what one person and a community can do to celebrate what is real.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://monty-says.blogspot.com/2026/01/the-concepts-of-forking.html?m=1">
      The concepts of forking
    </a>
  </h2>
  <section class="p-summary">
    Includes a useful typology of the various kinds of software forks.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://github.com/rebane2001/xikipedia">
      xikipedia - Wikipedia as a social media feed
    </a>
  </h2>
  <section class="p-summary">
    Xikipedia is a pseudo social media feed that algorithmically shows you content from Simple Wikipedia. It is made as a demonstration of how even a basic non-ML algorithm with no data from other users can quickly learn what you engage with to suggest you more similar content. No data is collected or shared here, the algorithm runs locally and the data disappears once you refresh or close the tab.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://youtube.com/watch?v=4Wqwnfu2Y0A">
      raylib: a 12-year adventure as a solo-maintainer
    </a>
  </h2>
  <section class="p-summary">
    A lovely, lovely talk from the creator of raylib about how to build and sustain open source software.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://agiflow.io/blog/claude-code-internals-reverse-engineering-prompt-augmentation/">
      Claude Code Internals: Reverse Engineering Prompt Augmentation Mechanisms
    </a>
  </h2>
  <section class="p-summary">
    Claude Code recently added support for skills. I was already familiar with output styles, slash commands, and sub-agents, but skills were new and the automatic invocation mechanism seemed interesting. The documentation explains what these features do, but not how they actually work under the hood. I wanted to understand the implementation—particularly how skills get invoked automatically versus slash commands that require explicit triggers, and why sub-agents seem to operate differently than the main conversation. The only way to understand the actual mechanics was to instrument the network traffic and look at what's being sent to the API.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://medium.com/@georgesung/tracing-claude-codes-llm-traffic-agentic-loop-sub-agents-tool-use-prompts-7796941806f5">
      Tracing Claude Code’s LLM Traffic: Agentic loop, sub-agents, tool use, prompts
    </a>
  </h2>
  <section class="p-summary">
    I’m late to the Claude Code party, mostly because I’ve been living in a world of subsidized Gemini tokens (thank you GCP startup program). However, I saw Ollama’s recent announcement that we can use Claude Code via Ollama, so I thought it would be fun to give Claude Code a try without a Claude Pro/Max subscription (sorry). Further, it would be even more fun to get some insight into what Claude Code is doing step by step. To that end, I decided to examine the LLM requests/responses coming from/to Claude Code, by adding a few simple print statements to Ollama. Let’s see what happened!
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://gyrovague.com/2026/02/01/archive-today-is-directing-a-ddos-attack-against-my-blog/">
      archive.today is directing a DDOS attack against my blog
    </a>
  </h2>
  <section class="p-summary">
    Every 300 milliseconds, as long as the CAPTCHA page is open, this makes a request to the search function of my blog using a random string, ensuring the response cannot be cached and thus consumes resources.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://github.com/ijl/orjson/">
      orjson
    </a>
  </h2>
  <section class="p-summary">
    orjson is a fast, correct JSON library for Python. It benchmarks as the fastest Python library for JSON and is more correct than the standard json library or other third-party libraries. It serializes dataclass, datetime, numpy, and UUID instances natively.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://github.com/emmett-framework/granian">
      granian - A Rust HTTP server for Python applications
    </a>
  </h2>
  <section class="p-summary">
    Granian is a Rust HTTP server for Python applications built on top of Hyper and Tokio.
Rationale

The main reasons behind Granian design are:

    Have a single, correct HTTP implementation, supporting versions 1, 2 (and eventually 3)
    Provide a single package for several platforms
    Avoid the usual Gunicorn + uvicorn + http-tools dependency composition on unix systems
    Provide stable performance when compared to existing alternatives

Adopting Granian would thus be a good choice when:

    wanting a modern, single dependency to serve both ASGI and WSGI applications
    looking for the most performant way to serve your Python application under HTTP/2
    you need great concurrency capabilities, especially with websockets
    you care about throughput more than everything else

On the other hand, Granian won't be the ideal option if:

    you want a pure Python solution
    you need advanced debugging features
    your application relies on trio or gevent
    you're looking for ASGI extensions not (yet) implemented
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://github.com/tag1consulting/goose">
      Goose: A Powerful Load Testing Framework
    </a>
  </h2>
  <section class="p-summary">
    Why Choose Goose?

Fast and Scalable: Built with Rust, Goose is designed for speed and scalability.

Flexible and Customizable: Supports simple and complex load tests, tailored to mimic real-world user behavior.

Realistic User Behavior Simulation: Goes beyond just sending requests; simulates user behaviors like logging in, filling out forms, and navigating through your application.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://p2panda.org/">
      p2panda
    </a>
  </h2>
  <section class="p-summary">
    p2panda aims to provide everything you need to build modern, privacy-respecting and secure local-first applications.

We have adopted a modular approach—allowing projects the freedom to pick what they need and integrate it with minimal friction. We believe this approach contributes the most to a wider, interoperable p2p ecosystem which outlives “framework lock-in”.

Many of our Rust crates operate over raw bytes and are fully compatible with your own data types and any CRDT. In case you don't plan on building your own peer-to-peer protocol, we have you covered with all features required to build a mobile or desktop application.

We're using existing libraries like iroh and well-established standards such as BLAKE3, Ed25519, STUN, CBOR, TLS, QUIC, Double Ratchet and more - as long as they give us the radical offline-first guarantee we need.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://github.com/TanStack/db">
      TanStack db
    </a>
  </h2>
  <section class="p-summary">
    The reactive client store for your API.

TanStack DB solves the problems of building fast, modern apps, helping you:

    Avoid endpoint sprawl and network waterfalls by loading data into normalized collections
    Optimise client performance with sub-millisecond live queries and real-time reactivity
    Take the network off the interaction path with instant optimistic writes

Data loading is optimized. Interactions feel instantaneous. Your backend stays simple and your app stays blazing fast. No matter how much data you load.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://github.com/electric-sql/electric">
      electric-sql
    </a>
  </h2>
  <section class="p-summary">
    Sync is the magic ingredient behind fast, modern software. From apps like Figma and Linear to AI agents running on live local data.

Electric is a Postgres sync engine. It solves the hard problems of sync for you, including partial replication, fan-out, and data delivery. So you can build awesome software, without rolling your own sync.

Specifically, Electric is a read-path sync engine for Postgres. It syncs data out of Postgres into ... anything you like. The core sync protocol is based on a low-level HTTP API. This integrates with CDNs for highly-scalable data delivery.

Partial replication is managed using Shapes. Sync can be consumed directly or via client libraries and framework integrations.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://github.com/automerge/automerge">
      automerge
    </a>
  </h2>
  <section class="p-summary">
    Automerge is a library which provides fast implementations of several different CRDTs, a compact compression format for these CRDTs, and a sync protocol for efficiently transmitting those changes over the network. The objective of the project is to support local-first applications in the same way that relational databases support server applications - by providing mechanisms for persistence which allow application developers to avoid thinking about hard distributed computing problems. Automerge aims to be PostgreSQL for your local-first app.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://github.com/inkandswitch/keyhive">
      keyhive: Rust workspace for Keyhive and related crates
    </a>
  </h2>
  <section class="p-summary">
    🗝️🐝✨ Rust workspace for Keyhive and related crates - inkandswitch/keyhive
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://github.com/yjs/yjs">
      yjs - Shared data types for building collaborative software
    </a>
  </h2>
  <section class="p-summary">
    Yjs is a CRDT implementation that exposes its internal data structure as shared types. Shared types are common data types like Map or Array with superpowers: changes are automatically distributed to other peers and merged without merge conflicts.

Yjs is network agnostic (p2p!), supports many existing rich text editors, offline editing, version snapshots, undo/redo and shared cursors. It scales well with an unlimited number of users and is well suited for even large documents.
  </section>
</article>

