---
layout: post
title: Weekly Bookmarks
---

These are some things I've wandered across on the web this week.

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="http://theuse.info/">
      theuse.info
    </a>
  </h2>
  <section class="p-summary">
    A website and art project by Chris Mann.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.etsy.com/codeascraft/how-etsy-uses-llms-to-improve-search-relevance">
      How Etsy Uses LLMs to Improve Search Relevance
    </a>
  </h2>
  <section class="p-summary">
    Search plays a central role in that mission. Historically, Etsy’s search models have relied heavily on engagement signals – such as clicks, add-to-carts, and purchases – as proxies for relevance. These signals are objective, but they can also be biased: popular listings get more clicks, even when they’re not the best match for a specific query.

To address this, we introduce semantic relevance as a complementary perspective to engagement, capturing how well a listing aligns with a buyer’s intent as expressed in their query. We developed a Semantic Relevance Evaluation and Enhancement Framework, powered by large language models (LLMs). It provides a comprehensive approach to measure and improve relevance through three key components:

    High quality data: we first establish human-curated “golden” labels of relevance categories (we’ll come back to this) for precise evaluation of the relevance prediction models, complemented by data from a human-aligned LLM that scales training across millions of query-listing pairs
    Semantic relevance models: we use a family of ML models with different trade-offs in accuracy, latency, and cost; tuned for both offline evaluation and real-time search
    Model-driven applications: we integrate relevance signals directly into Etsy’s search systems enabling both large-scale offline evaluation and real-time enhancement in production
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.etsy.com/codeascraft/understanding-etsyas-vast-inventory-with-llms">
      Understanding Etsy’s Vast Inventory with LLMs
    </a>
  </h2>
  <section class="p-summary">
    While our powerful search and discovery algorithms can process unstructured data such as that in descriptions and listing photos, passing in long context and images directly to search poses latency concerns. For these algorithms, every millisecond counts as they work to deliver relevant results to buyers as quickly as possible. Spending time filtering through unstructured data for every query is just not feasible.

These constraints led us to a clear conclusion: to fully unlock the potential of all inventory listed on Etsy’s site, unstructured product information needs to be distilled into structured data to power both ML models and buyer experiences.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://openai.com/index/unlocking-the-codex-harness/">
      Unlocking the Codex harness: how we built the App Server
    </a>
  </h2>
  <section class="p-summary">
    OpenAI’s coding agent Codex exists across many different surfaces: the web app⁠(opens in a new window), the CLI⁠(opens in a new window), the IDE extension⁠(opens in a new window), and the new Codex macOS app. Under the hood, they’re all powered by the same Codex harness—the agent loop and logic that underlies all Codex experiences. The critical link between them? The Codex App Server⁠(opens in a new window), a client-friendly, bidirectional JSON-RPC1 API.

In this post, we’ll introduce the Codex App Server; we’ll share our learnings so far on the best ways to bring Codex’s capabilities into your product to help your users supercharge their workflows. We’ll cover the App Server’s architecture and protocol and how it integrates with different Codex surfaces, as well as tips on leveraging Codex, whether you want to turn Codex into a code reviewer, an SRE agent, or a coding assistant.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://softwareengineeringdaily.com/2026/01/29/openai-and-codex-with-thibault-sottiaux-and-ed-bayes/">
      OpenAI and Codex with Thibault Sottiaux and Ed Bayes
    </a>
  </h2>
  <section class="p-summary">
    AI coding agents are rapidly reshaping how software is built, reviewed, and maintained. As large language model capabilities continue to increase, the bottleneck in software development is shifting away from code generation toward planning, review, deployment, and coordination. This shift is driving a new class of agentic systems that operate inside constrained environments, reason over long time horizons, and integrate across tools like IDEs, version control systems, and issue trackers.

OpenAI is at the forefront of AI research and product development. In 2025, the company released Codex, which is an agentic coding system designed to work safely inside sandboxed environments while collaborating across the modern software development stack.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.tetragrammaton.com/content/george-saunders">
      Tetragrammaton: George Saunders
    </a>
  </h2>
  <section class="p-summary">
    A (real, non-genAI) interview by Rick Rubin about everything but Saunders' new book.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.mixcloud.com/Resonance/little-atoms-2nd-february-2026-george-saunders/">
      Little Atoms - 2 February 2026 (George Saunders)
    </a>
  </h2>
  <section class="p-summary">
    A talk show about ideas and culture, produced and presented by Neil Denny. Each show features guests from the worlds of science or the arts in conversation. This week: George Saunders on his latest novel, Vigil.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://datascience.codata.org/articles/10.5334/dsj-2026-006">
      Bridging the Data Discovery Gap: User-Centric Recommendations for Research Data Repositories
    </a>
  </h2>
  <section class="p-summary">
    Despite substantial investment in research data infrastructure, data discovery remains a fundamental challenge in the era of open science. The proliferation of repositories and the rapid growth of deposited data have not resulted in a corresponding improvement in data findability. Researchers continue to struggle to find data that are relevant to their work, revealing a persistent gap between data availability and data discoverability. Without rich, high-quality metadata, robust and user-centred data discovery systems, and a deeper understanding of how different researchers seek and evaluate data, much of the potential value of open data remains unrealised.

This paper presents a set of practical, evidence-based recommendations for data repositories and discovery service providers aimed at improving data discoverability for both human and machine users. These recommendations emphasise the importance of 1) understanding the search needs and contexts of data users, 2) addressing the roles that data repositories play in enhancing metadata quality to meet users’ data search needs, and 3) designing discovery interfaces that support effective and diverse search behaviours. By bridging the gap between data curation practices, discovery system design, and user-centred approaches, this paper argues for a more integrated and strategic approach to data discovery.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://github.com/blevesearch/bleve">
      blevesearch
    </a>
  </h2>
  <section class="p-summary">
    A modern text/numeric/geo-spatial/vector indexing library for go
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://hister.org/">
      hister: Web history on steroids
    </a>
  </h2>
  <section class="p-summary">
    Hister is a web history management tool that provides blazing fast, content-based search for visited websites. Unlike traditional browser history that only searches URLs and titles, Hister indexes the full content of web pages you visit, enabling deep and meaningful search across your browsing history.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.reuters.com/business/alphabet-sells-bonds-worth-20-billion-fund-ai-spending-2026-02-10/">
      Alphabet sells rare 100-year bond to fund AI expansion as spending surges
    </a>
  </h2>
  <section class="p-summary">
    Feb 10 (Reuters) - Alphabet (GOOGL.O), opens new tab on Tuesday sold a rare 100-year bond, a memo from the lead manager showed, part of a $31.51 billion global bond raise, as artificial intelligence-driven spending sparks a surge in borrowing at U.S. tech giants.
Alphabet's sale of the century bond is the tech industry's first since Motorola's (MSI.N), opens new tab issuance that dates back to 1997, according to LSEG data.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.winestockwebdesign.com/Essays/Eternal_Mainframe.html">
      The Eternal Mainframe
    </a>
  </h2>
  <section class="p-summary">
    In the computer industry, the Wheel of Reincarnation is a pattern whereby specialized hardware gets spun out from the “main” system, becomes more powerful, then gets folded back into the main system. As the linked Jargon File entry points out, several generations of this effect have been observed in graphics and floating-point coprocessors.

In this essay, I note an analogous pattern taking place, not in peripherals of a computing platform, but in the most basic kinds of “computing platform.” And this pattern is being driven as much by the desire for “freedom” as by any technical consideration.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.jamesdrandall.com/posts/the_thing_i_loved_has_changed/">
      I Started Programming When I Was 7. I'm 50 Now, and the Thing I Loved Has Changed
    </a>
  </h2>
  <section class="p-summary">
    The abstraction ship sailed decades ago. We just didn’t notice because each layer arrived gradually enough that we could pretend we still understood the whole stack. AI is just the layer that made the pretence impossible to maintain.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://ital.corejournals.org/index.php/ital/article/view/17384">
      VIAF Governance Concerns about the Refurbished VIAF Web and API Interfaces
    </a>
  </h2>
  <section class="p-summary">
    In January 2025, OCLC made significant changes to the web and application programming interfaces for Virtual International Authority File (VIAF) clusters. This article will compare the old and new interfaces, highlighting the pros and cons introduced and calling attention, especially, to critical errors introduced that compromise the functionality of much of the VIAF product. Consequently, it will raise questions and concerns regarding the governance of VIAF, as well as OCLC’s development model, testing, and feedback before public rollout.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://jupyterlite.readthedocs.io/en/stable/">
      JupyterLite
    </a>
  </h2>
  <section class="p-summary">
    JupyterLite is a JupyterLab distribution that runs entirely in the browser built from the ground-up using JupyterLab components and extensions.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://nines-conference.org/talks">
      NINeS 2026: Contributed Talks
    </a>
  </h2>
  <section class="p-summary">
    * Economic and Human Factors in Internet Design David D. Clark (MIT)
* Changing Internet Architecture: A Practical Perspective Jana Iyengar (Netflix) and Barath Raghavan (USC/Fastly)
* Perspectives on Congestion Control Nandita Dukkiapti (Google) in conversation with Brighten Godfrey (UIUC)
* From Networks in Practice to Networks in Principle Jennifer Rexford (Princeton) in conversation with Nate Foster (EPFL)
* Networking Fabrics for ML: Hardware Advances and Research Questions Arvind Krishnamurthy (University of Washington)
* Why I was Wrong About Quality-of-Service (QoS) Scott Shenker (UC Berkeley/ ICSI, Professional Dilettante)
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://etd.ohiolink.edu/acprod/odb_etd/etd/r/1501/10">
      Creativity in Conflict: A Multi-Level Exploration of Software Developers’ Capacity to Innovate
    </a>
  </h2>
  <section class="p-summary">
    The software industry, historically driven by creativity, faces a paradox. While developers are drawn to intellectual challenges, their creativity is increasingly constrained by efficiency-driven methods and so-called productivity metrics. Although positioned as innovation engines, Agile software development (hereinafter referred to as Agile) and open-source software (OSS) approaches may prioritize incrementalism over transformative breakthroughs. This tension between structure and creativity threatens individual potential and the industry's capacity for meaningful innovation. Without addressing this gap, contemporary development approaches may fail to support the creativity necessary for crafting novel and impactful software. This dissertation examines this gap, investigating how modern development approaches shape individual creativity into project-level innovation. Drawing on multi-level interactionist theories of creativity, we explore the conditions under which individual, team, and organizational interactions foster or constrain creative outcomes. By addressing this critical gap, our research reconceptualizes development methodologies as enablers of radical innovation rather than constraints, ensuring the industry’s continued creative and transformative impact. Using a sequential exploratory mixed-methods design, this dissertation integrates qualitative and quantitative techniques to analyze creativity within software development. The qualitative strand examines individual developer experiences through 31 semi-structured interviews with Agile practitioners. The quantitative strand assesses cognitive conflict’s impact on team performance in OSS development, analyzing 40 projects and 82,949 code commits. The mixed convergent strand evaluates corporate and open governance interplay, leveraging data from 40 projects, 10,862 releases, and 15 interviews. By synthesizing insights across these strands, this dissertation delivers theoretical contributions and actionable guidance for fostering creativity in software development. We challenge the myth of developers as lone “rockstars” or “hackers” by demonstrating the critical role of social interactions in shaping creativity and innovation. Empirical findings reveal that review-stage interactions—such as pull requests and code reviews—mediate and transition from creativity to innovation, while project governance moderates this relationship further. This dissertation highlights how individual, team, and organizational dynamics influence creative outcomes by operationalizing cognitive conflict and release commit novelty. These insights advance theoretical understanding and offer practical strategies for unlocking the innovative potential of contemporary development practices.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.commondreams.org/news/military-contract-concentration-camps">
      US Military Helping Trump to Build Massive Network of ‘Concentration Camps,’ Navy Contract Reveals
    </a>
  </h2>
  <section class="p-summary">
    In the wake of immigration agents’ killings of three US citizens within a matter of weeks, the Department of Homeland Security is quietly moving forward with a plan to expand its capacity for mass detention by using a military contract to create what Pablo Manríquez, the author of the immigration news site Migrant Insider calls “a nationwide ‘ghost network’ of concentration camps.”
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://codeberg.org/vjousse/unmerdify">
      unmerdify
    </a>
  </h2>
  <section class="p-summary">
    Get the content, only the content: unenshittificator for the web.
  </section>
</article>

