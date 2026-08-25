---
layout: post
title: Bookmarks - llm, data, programming, design
tags: ["ai", "anthropic", "bluecore", "book", "bookmarks", "bot", "data", "delete", "design", "devops", "disk", "documentary", "geo", "gov", "image", "interview", "journalism", "library", "llm", "loc", "lua", "management", "map", "metadata", "ml", "openaccess", "openai", "opensource", "philosophy", "poetry", "politics", "preservation", "programming", "python", "rdf", "research", "rss", "security", "socialmedia", "video", "web"]
---

These are some things I've wandered across on the web this week.
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://blog.stdlib.io/do-you-want-contributors/">
      Do you WANT contributors?
    </a>
  </h2>
  <section class="p-summary">
    An open-source project's first few artifacts are click-through: license (checkbox), README (template), .gitignore (whatever your framework spits out). Then you hit CONTRIBUTING.md—the first artifact that actually asks you what you want. Sure, there are best practices and helpful guides for you to follow, but it's where your project starts having opinions instead of defaults. So it's worth pausing and really unpacking what you want yours to look like. It's more than the mechanics of filing issues and submitting pull requests: CONTRIBUTING.md is the foundational framework for the relationship between your project and the unnamed masses who may or may not encounter it.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/opensource/">opensource</a> <a rel="tag" class="tag label label-default p-category" href="/tag/programming/">programming</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://blog.ezyang.com/2025/12/code-review-as-human-alignment-in-the-era-of-llms/?ref=blog.stdlib.io">
      Code review as human alignment, in the era of LLMs
    </a>
  </h2>
  <section class="p-summary">
    The purpose of the humans, of the team, is to collectively maintain a shared vision of what, platonically, the system should do. I want code review to reconfigure itself around this purpose.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/design/">design</a> <a rel="tag" class="tag label label-default p-category" href="/tag/llm/">llm</a> <a rel="tag" class="tag label label-default p-category" href="/tag/programming/">programming</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://euanc.github.io/diskwright/">
      Diskwright
    </a>
  </h2>
  <section class="p-summary">
    Diskwright makes a complete, verified copy of the hard drive inside a 25–40 year old computer — no expertise required, and nothing on the old drive is ever changed.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/data/">data</a> <a rel="tag" class="tag label label-default p-category" href="/tag/disk/">disk</a> <a rel="tag" class="tag label label-default p-category" href="/tag/preservation/">preservation</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://codeberg.org/rostiger/ocular_webring">
      Ocular Webring
    </a>
  </h2>
  <section class="p-summary">
    The ocular webring is a collection of small image feed galleries with rss feeds. It is inspired by subversive.pics and has grown into a sibling webring.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/image/">image</a> <a rel="tag" class="tag label label-default p-category" href="/tag/rss/">rss</a> <a rel="tag" class="tag label label-default p-category" href="/tag/socialmedia/">socialmedia</a> <a rel="tag" class="tag label label-default p-category" href="/tag/web/">web</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://codeberg.org/rostiger/ocular">
      ocular
    </a>
  </h2>
  <section class="p-summary">
    A tiny offline image feed generator written in Lua.

ocular is a command line tool that lets you add images from your harddrive to create a static website and automatically upload it to your webserver.

Unlike traditional gallery systems, images are added one by one to build a feed of images, similar to how you would use an image sharing platform like Inst*gram or Pixelfed. You can think of it as a minimal indieweb alternative to those platforms — one that keeps you in ownership and control of your data.

There are no social features to speak of, but ocular can optionally post new images to Mastodon t
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/image/">image</a> <a rel="tag" class="tag label label-default p-category" href="/tag/lua/">lua</a> <a rel="tag" class="tag label label-default p-category" href="/tag/rss/">rss</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.aisi.gov.uk/blog/incident-report-unsanctioned-agent-behaviour-during-cyber-testing">
      Incident Report: unsanctioned agent behaviour during cyber testing
    </a>
  </h2>
  <section class="p-summary">
    On 28th July 2026, AISI's Security Team detected unusual data transfers leaving our research systems during a routine cyber evaluation. On investigation, we found that some of the agents being tested had engaged in sustained, potentially harmful activity directed at real people and organisations. We declared a security incident and, within roughly one hour of discovery, had contained it and begun a full investigation.

The incident stemmed from a single evaluation where agents were given a task of solving a cyber security challenge. We ran this challenge 122 times across several models. Our investigation found that in 10 of those runs, an AI agent took autonomous, unsanctioned action on the live internet, targeting real people and organisations. In total, we catalogued 19 such actions. Almost all of this behaviour (17 actions) came from a single model, Anthropic's Mythos 5, with 2 actions involving OpenAI's GPT-5.6-Sol with cyber classifiers (mechanisms to prevent misuse) disabled. In the most serious case, an agent tried to insert malicious code into an open-source project. In an attempt to get the code approved, the agent engaged in social engineering  — creating fake online identities and using them to pressure the project's maintainer to approve the code. A human maintainer caught and refused to approve the malicious code.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/anthropic/">anthropic</a> <a rel="tag" class="tag label label-default p-category" href="/tag/bot/">bot</a> <a rel="tag" class="tag label label-default p-category" href="/tag/llm/">llm</a> <a rel="tag" class="tag label label-default p-category" href="/tag/security/">security</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.reuters.com/world/how-texas-student-blew-whistle-rogue-ai-hacking-attempt-2026-08-20/">
      How a Texas student blew the whistle on a rogue AI hacking attempt
    </a>
  </h2>
  <section class="p-summary">
    * Out-of-control AI agent tried to poison open-source software project with malicious code
* Texas computer science student caught attempt in late July
* AI responded with elaborate deception effort; expert calls it the 'future of social engineering'
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/ai/">ai</a> <a rel="tag" class="tag label label-default p-category" href="/tag/anthropic/">anthropic</a> <a rel="tag" class="tag label label-default p-category" href="/tag/bot/">bot</a> <a rel="tag" class="tag label label-default p-category" href="/tag/llm/">llm</a> <a rel="tag" class="tag label label-default p-category" href="/tag/security/">security</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://novaramedia.com/2026/08/16/the-media-is-broken-this-is-how-we-fix-it/">
      The Journalist Who Terrifies Corporate America
    </a>
  </h2>
  <section class="p-summary">
    This week on Downstream, Ash Sarkar sits down with Amy Goodman, veteran journalist and founder of Democracy Now!, one of the leading independent media organisations in the US. Goodman is the subject of a new film, Steal This Story, Please!, which documents her storied career covering some of the most consequential moments in American living history. She has confronted sitting presidents, bore firsthand witness to 9/11, survived a firing squad in East Timor and exposed major corporate crime in the Niger Delta.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/interview/">interview</a> <a rel="tag" class="tag label label-default p-category" href="/tag/journalism/">journalism</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://martinfowler.com/rachels-ramblings/citizens-agents-experts.html">
      Citizens Build, Agents Execute, Experts Govern
    </a>
  </h2>
  <section class="p-summary">
    When everyone can create software, somebody still has to decide whether that software deserves to exist inside an enterprise system in PRODUCTION. Somebody still has to think about architecture. Security. Resilience. Operability. Compliance. Cost. The boring stuff that nobody gets excited about in a demo but that becomes painfully important the first time a customer can’t log in or an auditor comes knocking.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/design/">design</a> <a rel="tag" class="tag label label-default p-category" href="/tag/management/">management</a> <a rel="tag" class="tag label label-default p-category" href="/tag/programming/">programming</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://youtube.com/watch?v=lQbHXGkcGmQ">
      The New Peasants (2025)
    </a>
  </h2>
  <section class="p-summary">
    What happens when the values of the culture you’ve always known no longer align with how you see the world?

The New Peasants offers an intimate look into the life of Meg, Patrick, Zephyr, and Woody. A family who, for 20 years, have been transitioning away from modern industrial culture toward a radically simple, sustainable, and beautiful way of life.

Concerns about the industrial food system and environmental crises provided the family’s initial motivation to live differently. Now it’s 15 years since they’ve eaten from a supermarket or owned a car. The household, living intentionally below the poverty line and meeting 80% of their needs without using money, is nonetheless rich in so many ways. Wealth is found in their cellar of preserved foods, connections with community, saved seeds, homesteading skills and the time to focus on what really matters in life. Yet the decision to live this way has brought profound challenges for their family, in the form of their eldest son’s encounters with the law. These experiences have produced immense grief, but, in the end, also great joy.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/documentary/">documentary</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://rlhfbook.com/">
      Reinforcement Learning from Human Feedback
    </a>
  </h2>
  <section class="p-summary">
    Reinforcement learning from human feedback (RLHF) has become a crucial tool to build the latest machine learning systems at scale. The field grew around the core methods of RLHF into today’s broader suite of post-training techniques. In this book, we give a comprehensive introduction to the core methods for post-training models for people with some level of quantitative background, organized around the canonical RLHF recipe.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/book/">book</a> <a rel="tag" class="tag label label-default p-category" href="/tag/llm/">llm</a> <a rel="tag" class="tag label label-default p-category" href="/tag/ml/">ml</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://palewi.re/docs/isobands/">
      isobands
    </a>
  </h2>
  <section class="p-summary">
    An easy way to make filled contour maps with Python.

isobands converts a regular two-dimensional xarray DataArray into contoured polygons in a GeoPandas GeoDataFrame.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/data/">data</a> <a rel="tag" class="tag label label-default p-category" href="/tag/geo/">geo</a> <a rel="tag" class="tag label label-default p-category" href="/tag/map/">map</a> <a rel="tag" class="tag label label-default p-category" href="/tag/python/">python</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://fas.org/publication/data-termination-tracker/">
      How Do We Track Terminations of Federal Data?
    </a>
  </h2>
  <section class="p-summary">
    The purpose of the Federal Data Terminations Tracker is to be the most policy-relevant, verified accounting of federal data terminations available.

To create this Tracker, the dataindex.us team identified dozens of federal datasets and hundreds of data elements that have been terminated – significantly fewer than other reports, but more tailored to informing future data policies needed to run a modern society. These are data that have long underpinned policymaking, journalism, advocacy and research that improve American lives and livelihoods. These figures will change as terminations continue, collections are merged, and as court orders restore data.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/data/">data</a> <a rel="tag" class="tag label label-default p-category" href="/tag/delete/">delete</a> <a rel="tag" class="tag label label-default p-category" href="/tag/gov/">gov</a> <a rel="tag" class="tag label label-default p-category" href="/tag/politics/">politics</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://metarationality.com/">
      In the Cells of the Eggplant
    </a>
  </h2>
  <section class="p-summary">
    In the Cells of the Eggplant is an introduction to meta-rationality: ways of using rational systems more effectively by examining their relationships with their surrounds.

Meta-rationality operates in the territory beyond the boundaries of fixed understanding. It recognizes, works with, and transcends the limits of rationality. It evaluates, selects, combines, modifies, discovers, and creates rational methods.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/book/">book</a> <a rel="tag" class="tag label label-default p-category" href="/tag/design/">design</a> <a rel="tag" class="tag label label-default p-category" href="/tag/philosophy/">philosophy</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.pacingthefrontier.com/">
      Pacing the Frontier
    </a>
  </h2>
  <section class="p-summary">
    AI could help create a dramatically better future, but that outcome is not guaranteed. The world's leading AI companies believe they could be close to automating AI research. It is hard to predict exactly how much this will accelerate AI progress, but there is a real risk that capability development rapidly accelerates beyond our ability to understand or control the resulting systems.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/ai/">ai</a> <a rel="tag" class="tag label label-default p-category" href="/tag/gov/">gov</a> <a rel="tag" class="tag label label-default p-category" href="/tag/llm/">llm</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://m.youtube.com/watch?v=87DyyMV0kCY">
      Black Hat USA 2026 | The 'Breaking' News: The OpenAI–Hugging Face Incident
    </a>
  </h2>
  <section class="p-summary">
    The 'Breaking' News: The OpenAI–Hugging Face Incident - A Technical Reconstruction and Its Implications for AI

When AI Goes Rogue. The Incident That Changed Everything. An OpenAI evaluation agent broke out of its sandbox, infiltrated Hugging Face infrastructure, and attempted to steal test answers—all autonomously. No human involved. The era of AI-driven cyberattacks is here. Are you prepared?
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/llm/">llm</a> <a rel="tag" class="tag label label-default p-category" href="/tag/openai/">openai</a> <a rel="tag" class="tag label label-default p-category" href="/tag/security/">security</a> <a rel="tag" class="tag label label-default p-category" href="/tag/video/">video</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://barcelona-declaration.org/">
      Barcelona Declaration on Open Research Information
    </a>
  </h2>
  <section class="p-summary">
    The research information landscape requires fundamental change. The signatories of the Barcelona Declaration on Open Research Information commit to taking a lead in transforming the way research information is used and produced. Openness of information about the conduct and communication of research must be the new norm.

Open research information enables science policy decisions to be made based on transparent evidence and inclusive data. It enables information used in research evaluations to be accessible and auditable by those being assessed. And it enables the global movement toward open science to be supported by information that is fully open and transparent.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/data/">data</a> <a rel="tag" class="tag label label-default p-category" href="/tag/openaccess/">openaccess</a> <a rel="tag" class="tag label label-default p-category" href="/tag/research/">research</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://openmetadata.stanford.edu/">
      Open Metadata at Stanford
    </a>
  </h2>
  <section class="p-summary">
    The Center for Open Metadata addresses issues around the generation and reuse of these types of metadata from many facets:  Copyright, Contracts, Economic / sustainability models, Research infrastructures & persistent identifiers (PIDs), Policy, Provenance, Workflows related to creation,, enrichment, distribution, transformation and reuse.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/library/">library</a> <a rel="tag" class="tag label label-default p-category" href="/tag/metadata/">metadata</a> <a rel="tag" class="tag label label-default p-category" href="/tag/openaccess/">openaccess</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://pyinfra.com/">
      pyinfra
    </a>
  </h2>
  <section class="p-summary">
    pyinfra turns Python code into shell commands and runs them on your servers. Execute ad-hoc commands and write declarative operations. Target SSH servers, local machine and Docker containers. Fast and scales from one server to thousands. Think ansible but Python instead of YAML, and a lot faster.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/devops/">devops</a> <a rel="tag" class="tag label label-default p-category" href="/tag/python/">python</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.poetryfoundation.org/articles/1816395/i-multiplied-myself-to-feel-myself">
      I Multiplied Myself to Feel Myself
    </a>
  </h2>
  <section class="p-summary">
    Over the opening decades of the 20th century, Pessoa undertook one of the most preposterous endeavors in world poetry, ventriloquizing not merely a trio of voices but a throng of at least two hundred: poets, philosophers, and cranks; radicals, reactionaries, and mystics. These were less characters than so-called “heteronyms,” quasi-autonomous personae with fleshed-out biographies and bibliographies cohabiting a literary universe of his own devising.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/poetry/">poetry</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://github.com/zimeon/bc-playpen/tree/main/2025-05-07_LC_Descriptions">
      Understanding LC BIBFRAME graphs
    </a>
  </h2>
  <section class="p-summary">
    Some notes from Simeon on id.loc.gov RDF data for the Blue Core project.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/bluecore/">bluecore</a> <a rel="tag" class="tag label label-default p-category" href="/tag/loc/">loc</a> <a rel="tag" class="tag label label-default p-category" href="/tag/rdf/">rdf</a></p>
</article>
