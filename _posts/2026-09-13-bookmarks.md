---
layout: post
title: Bookmarks - llm, graph, memory, security
tags: ["activism", "ai", "audio", "bookmarks", "censorship", "computing", "conference", "coop", "graph", "guix", "history", "interviews", "knowledge", "knowledge-base", "knowledge-graph", "llm", "memory", "networks", "openai", "operating-systems", "p2p", "permacomputing", "politics", "preservation", "protocols", "python", "reading", "ruby", "science", "search", "security", "spam", "tv", "virus", "writing"]
---

These are some things I've wandered across on the web this week.
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.rubyhack.ai/#an-openai-agent-swarm-was-responsible-for-this-i">
      OpenAI agents carried out an undisclosed cyber-attack on RubyGems
    </a>
  </h2>
  <section class="p-summary">
    On May 11th, 2026, hundreds of malicious packages were uploaded to RubyGems by AI agents. We believe these were authored by internal OpenAI agents
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/llm/">llm</a> <a rel="tag" class="tag label label-default p-category" href="/tag/openai/">openai</a> <a rel="tag" class="tag label label-default p-category" href="/tag/ruby/">ruby</a> <a rel="tag" class="tag label label-default p-category" href="/tag/security/">security</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://arxiv.org/abs/2512.12818">
      Hindsight is 20/20: Building Agent Memory that Retains, Recalls, and Reflects
    </a>
  </h2>
  <section class="p-summary">
    Agent memory has been touted as a dimension of growth for LLM-based applications, enabling agents that can accumulate experience, adapt across sessions, and move beyond single-shot question answering. The current generation of agent memory systems treats memory as an external layer that extracts salient snippets from conversations, stores them in vector or graph-based stores, and retrieves top-k items into the prompt of an otherwise stateless model. While these systems improve personalization and context carry-over, they still blur the line between evidence and inference, struggle to organize information over long horizons, and offer limited support for agents that must explain their reasoning. We present Hindsight, a memory architecture that treats agent memory as a structured, first-class substrate for reasoning by organizing it into four logical networks that distinguish world facts, agent experiences, synthesized entity summaries, and evolving beliefs. This framework supports three core operations -- retain, recall, and reflect -- that govern how information is added, accessed, and updated. Under this abstraction, a temporal, entity aware memory layer incrementally turns conversational streams into a structured, queryable memory bank, while a reflection layer reasons over this bank to produce answers and to update information in a traceable way. On key long-horizon conversational memory benchmarks like LongMemEval and LoCoMo, Hindsight with an open-source 20B model lifts overall accuracy from 39% to 83.6% over a full-context baseline with the same backbone and outperforms full context GPT-4o. Scaling the backbone further pushes Hindsight to 91.4% on LongMemEval and up to 89.61% on LoCoMo (vs. 75.78% for the strongest prior open system), consistently outperforming existing memory architectures on multi-session and open-domain questions.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/graph/">graph</a> <a rel="tag" class="tag label label-default p-category" href="/tag/llm/">llm</a> <a rel="tag" class="tag label label-default p-category" href="/tag/memory/">memory</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.dpconline.org/news/cyber-security-twgn-series-gen-release">
      Cyber Security and Resilience for Digital Preservation
    </a>
  </h2>
  <section class="p-summary">
    The Digital Preservation Coalition (DPC) has today released its complete three-part Technology Watch Guidance Note series, Cyber Security and Resilience for Digital Preservation, for general public access. 

Following an exclusive preview for DPC Members over the summer, all three Guidance Notes are now freely available to the wider digital preservation community.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/preservation/">preservation</a> <a rel="tag" class="tag label label-default p-category" href="/tag/security/">security</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://github.com/Graphify-Labs/graphify">
      Graphify
    </a>
  </h2>
  <section class="p-summary">
    Turn any codebase, with its docs, SQL schemas, configs, and PDFs, into a queryable knowledge graph. A /graphify skill for Claude Code, Cursor, Codex, and Gemini CLI: local deterministic AST parsing, every edge explained, no vector store.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/graph/">graph</a> <a rel="tag" class="tag label label-default p-category" href="/tag/knowledge-base/">knowledge-base</a> <a rel="tag" class="tag label label-default p-category" href="/tag/llm/">llm</a> <a rel="tag" class="tag label label-default p-category" href="/tag/python/">python</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://honcho.dev/docs/v3/documentation/introduction/overview">
      Honcho
    </a>
  </h2>
  <section class="p-summary">
    Traditional RAG systems retrieve what was explicitly said, but they miss what matters most—the insights only accessible by rigorously thinking about your data. Without reasoning, you’re leaving latent information on the table. Static retrieval can’t surface implicit connections, struggles when new information contradicts old data, and fails when you need to make predictions under uncertainty. Honcho uses formal logic to extract all that latent information. This reasoning is AI-native—it performs the rigorous, compute-intensive thinking that humans struggle with, instantly and consistently. The result is memory that goes beyond simple RAG recall to provide exhaustive context for statefulness.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/graph/">graph</a> <a rel="tag" class="tag label label-default p-category" href="/tag/llm/">llm</a> <a rel="tag" class="tag label label-default p-category" href="/tag/memory/">memory</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://hindsight.vectorize.io/">
      Hindsight
    </a>
  </h2>
  <section class="p-summary">
    Hindsight is an agent memory system that provides long-term memory for AI agents using biomimetic data structures. Unlike traditional RAG (Retrieval-Augmented Generation), Hindsight:

* Stores structured facts instead of raw document chunks
* Builds mental models that consolidate knowledge over time
* Uses graph-based relationships between entities and concepts
* Supports temporal reasoning with time-aware retrieval
* Enables disposition-aware reflection for nuanced reasoning
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/graph/">graph</a> <a rel="tag" class="tag label label-default p-category" href="/tag/knowledge-graph/">knowledge-graph</a> <a rel="tag" class="tag label label-default p-category" href="/tag/llm/">llm</a> <a rel="tag" class="tag label label-default p-category" href="/tag/memory/">memory</a> <a rel="tag" class="tag label label-default p-category" href="/tag/search/">search</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://editorial.rottentomatoes.com/guide/best-new-tv-series-shows/">
      Best TV Shows of 2026: New Series to Watch Now
    </a>
  </h2>
  <section class="p-summary">
    The newest Certified Fresh shows, from 'Adults' to 'Lanterns.'
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/tv/">tv</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://logicmag.io/supa-dupa-skies/origin-stories-plantations-computers-and-industrial-control/">
      Origin Stories: Plantations, Computers, and Industrial Control
    </a>
  </h2>
  <section class="p-summary">
    The blueprint for modern digital computing was codesigned by Charles Babbage, a vocal champion for the concerns of the emerging industrial capitalist class who condemned organized workers and viewed democracy and capitalism as incompatible. Histories of Babbage diverge sharply in their emphasis. His influential theories on how “enterprising capitalists” could best subjugate workers are well documented in conventional labor scholarship. However, these are oddly absent from many mainstream accounts of his foundational contributions to digital computing, which he made with mathematician Ada Lovelace in the nineteenth century.1 Reading these histories together, we find that Babbage’s proto-Taylorist ideas on how to discipline workers are inextricably connected to the calculating engines he spent his life attempting to build.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/computing/">computing</a> <a rel="tag" class="tag label label-default p-category" href="/tag/history/">history</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://hpc.guix.info/blog/2026/09/guix-science-first-release/">
      Announcing the first Guix-Science release!
    </a>
  </h2>
  <section class="p-summary">
    It's a dedicated Guix channel from the Guix-Science project. The channel provides a comprehensive, community-driven, scientific software catalog suitable for the global scientific community.

With the increased usage of Guix in scientific contexts, there is also a growing need for packaging software used in the research and teaching spheres. Although the Guix project encourages users to contribute packages to the main Guix channel, some packages cannot be included there because they do not comply with Guix's packaging policy, or because they are too specialized to be used outside an HPC context. The Guix-Science channel has a more permissive policy than the main Guix channel; especially regarding the usage of pre-built components. Additionally, it has a more lenient deprecation policy than Guix proper.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/guix/">guix</a> <a rel="tag" class="tag label label-default p-category" href="/tag/operating-systems/">operating-systems</a> <a rel="tag" class="tag label label-default p-category" href="/tag/science/">science</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://github.com/civboot/civboot">
      Civboot: civboot a civilizational bootstrapper civboot
    </a>
  </h2>
  <section class="p-summary">
    What is a Civboot? Conceptually it is a seed from which can grow the essential technology of Civilization. Imagine a factory capable of building a minimalist general-purpose personal computer, like something from the 80's/90's or better. A Civboot factory is one which can build such a factory from raw materials.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/permacomputing/">permacomputing</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.tascamforums.com/threads/tascam-788-firmware-iso-files.8194/">
      Tascam 788 Firmware ISO Files
    </a>
  </h2>
  <section class="p-summary">
    A discussion about upgrading TASCAM 788 to the v2.0.2 firmware which will allow you to write individual tracks as WAV files to a CD.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/audio/">audio</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://reticulum.network/manual/zen.html">
      Zen of Reticulum
    </a>
  </h2>
  <section class="p-summary">
    The first step in the Zen of Reticulum is to realize that there is no cloud. There is only other people’s computers. When you build for the cloud, you are building for a landlord. You are accepting that your application’s existence is conditional on the permission, uptime, and continued goodwill of a central authority.

In Reticulum, you must shift your thinking from “connecting to” to “being among”. Reticulum is not a service you subscribe to - it is a fabric you inhabit. There is no “up there”. There is only here and there, and the space between them is peer-to-peer.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/networks/">networks</a> <a rel="tag" class="tag label label-default p-category" href="/tag/p2p/">p2p</a> <a rel="tag" class="tag label label-default p-category" href="/tag/protocols/">protocols</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://zenodo.org/records/22276836">
      Beyond AI: Infrastructuring the Common Good
    </a>
  </h2>
  <section class="p-summary">
    This paper proposes decomputing as a programme for pushing back against such technocratic nihilism. Decomputing adopts a degrowth framework and advocates for reclaiming agency through deautomatisation and people’s councils, in order to develop convivial alternatives that centre an ethics of care. It is a philosophical and tactical response to the wider crisis of care induced by the collapse of existing systems.

Decomputing proposes a prefigurative praxis for those experiencing ruptures in the infrastructures of everyday life, while minimising the opening for an authoritarian turn or war economy. Rather than capitulating to an increasingly fascistic world order, decomputing advocates a shift in the idea of order itself, one that means challenging the idea that ever more advanced tech is synonymous with progress.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/activism/">activism</a> <a rel="tag" class="tag label label-default p-category" href="/tag/ai/">ai</a> <a rel="tag" class="tag label label-default p-category" href="/tag/computing/">computing</a> <a rel="tag" class="tag label label-default p-category" href="/tag/coop/">coop</a> <a rel="tag" class="tag label label-default p-category" href="/tag/politics/">politics</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://sabot.media/post/a-network-called-resistance">
      Interview with Autistici/Inventati - A Network for Resistance
    </a>
  </h2>
  <section class="p-summary">
    This interview was conducted in writing with Autistici/Inventati following its August 26, 2026 designation by the United States under Executive Order 13224.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/activism/">activism</a> <a rel="tag" class="tag label label-default p-category" href="/tag/censorship/">censorship</a> <a rel="tag" class="tag label label-default p-category" href="/tag/interviews/">interviews</a> <a rel="tag" class="tag label label-default p-category" href="/tag/politics/">politics</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.ghi-dc.org/events/event/date/between-big-data-and-obsolescence-born-digital-sources-contemporary-history-and-the-politics-of-access">
      Between Big Data and Obsolescence: Born-Digital Sources, Contemporary History, and the Politics of Access
    </a>
  </h2>
  <section class="p-summary">
    The conference aims to create a forum for sustained exchange between those who preserve born-digital materials and those who interpret them as historical sources. By bringing together archival, methodological, technical, and historiographical perspectives, we seek to ask not only how born-digital records can be saved, but also how they can be made meaningful for contemporary history. We especially welcome contributions that combine methodological reflection with concrete case studies, project presentations, or hands-on approaches.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/conference/">conference</a> <a rel="tag" class="tag label label-default p-category" href="/tag/history/">history</a> <a rel="tag" class="tag label label-default p-category" href="/tag/preservation/">preservation</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://arxiv.org/abs/2609.03344v1">
      Large-Language Models as a Cognitive Virus
    </a>
  </h2>
  <section class="p-summary">
    Large-language models (LLMs) are rapidly becoming part of human culture, reshaping how information is produced, transmitted, and used. Here we propose that their diffusion can be understood through a viral analogy, with LLM use spreading through populations, becoming embedded in cognitive and cultural practices. We model transitions among uncoupled, coupled, and persistently dependent users, and show that the interplay between social transmission, recovery, and collective reinforcement can generate tipping points and technological lock-in. A central consequence is the possibility of runaway dynamics: once a critical threshold is crossed, small increases in adoption can trigger rapid population-level shifts toward persistent dependence, with abrupt losses in cognitive competence. The same framework, however, identifies conditions for cognitive immunization, based on reducing transmission and facilitating reversibility. Our results highlight how LLM adoption may involve nonlinear collective transitions with important consequences for cognitive autonomy.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/knowledge/">knowledge</a> <a rel="tag" class="tag label label-default p-category" href="/tag/llm/">llm</a> <a rel="tag" class="tag label label-default p-category" href="/tag/virus/">virus</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://bcantrill.dtrace.org/2026/09/05/the-revolt-of-the-reader/">
      The revolt of the reader
    </a>
  </h2>
  <section class="p-summary">
    You should fully expect your writing to be run through Pangram. If your position is that we should be fine with an LLM crafting prose from your prompt, spare us all the wasted cycles and just give us your prompt. Or, better yet, consider doing what generations of writers have done before you, and treating that prompt as a skeleton that you use to write your piece yourself!
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/llm/">llm</a> <a rel="tag" class="tag label label-default p-category" href="/tag/reading/">reading</a> <a rel="tag" class="tag label label-default p-category" href="/tag/spam/">spam</a> <a rel="tag" class="tag label label-default p-category" href="/tag/writing/">writing</a></p>
</article>
