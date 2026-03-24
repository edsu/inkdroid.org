---
layout: post
title: Weekly Bookmarks
---

These are some things I've wandered across on the web this week.

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="http://computationalculture.net/learning-how-to-learn/">
      Learning How to Learn: Abduction as the ‘Missing Link’ in Machine Learning
    </a>
  </h2>
  <section class="p-summary">
    In this paper, the question of machine learning is revisited in order to explore whether Bayesian learning, as a form of abductive reasoning, can provide an alternative to the current dichotomy between inductive and deductive approaches in machine learning debates. The paper will further demonstrate that machine learning invariably entails a degree of situatedness, as evidenced by the example of Bayesian belief networks, which arguably rely on abductive reasoning. In this manner, the discourse surrounding Bayesian learning models has the capacity to elucidate the aspects that are often left implicit in contemporary machine learning debates and methodologies.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.datadoghq.com/blog/ai/harness-first-agents/">
      Closing the verification loop: Observability-driven harnesses for building with agents
    </a>
  </h2>
  <section class="p-summary">
    Our approach is harness-first engineering: instead of reading every line of agent-generated code, invest in automated checks that can tell us with high confidence, in seconds, whether the code is correct. The agent generates code, the harness verifies it, production telemetry validates it, and if something is wrong, the feedback updates the harness and the agent tries again. The specific methods to develop harnesses vary in rigor—deterministic simulation testing, formal specifications, shadow evaluation, observability-driven feedback loops—but the principle remains the same: make the verification fast and automatic, and let the harness do the work that human review cannot scale to do.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.dolthub.com/blog/2024-07-15-json-prolly-trees/">
      Achieving Efficient Version Control of JSON with Prolly Trees
    </a>
  </h2>
  <section class="p-summary">
    Dolt uses Prolly Trees because they give us two very important properties: history independence and structural sharing. These are both incredibly valuable properties for a distributed database. Structural sharing in particular means that two tables that differ only slightly can re-use storage space for the parts that are the same. Most SQL engines obtain structural sharing for tables by using B-trees or a similar data structure… but that doesn’t extend easily to JSON documents. Some tools like Git and IPFS achieve structural sharing for directories by using a tree structure that mirrors the directory… but that creates a level of indirection for each layer of the document, which would slow down queries if the document had too many nested layers. Something else was needed.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://connectedplaces.online/the-purpose-of-protocols/">
      The Purpose of Protocols
    </a>
  </h2>
  <section class="p-summary">
    On this account, protocols are governance structures whose design choices allocate power, and the purpose of the entire enterprise is the protection of rights. Protocol design is a form of political design, and the appropriate way to evaluate protocols is not only by their technical properties but by the governance outcomes they produce.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://cartography-of-generative-ai.net/">
      Cartography of generative AI
    </a>
  </h2>
  <section class="p-summary">
    The popularisation of artificial intelligence (AI) has given rise to imaginaries that invite alienation and mystification. At a time when these technologies seem to be consolidating, it is pertinent to map their connections with human activities and more than human territories. What set of extractions, agencies and resources allow us to converse online with a text-generating tool or to obtain images in a matter of seconds?
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://direct.mit.edu/books/oa-monograph/4323/All-Data-Are-LocalThinking-Critically-in-a-Data">
      All Data Are Local: Thinking Critically in a Data-Driven Society
    </a>
  </h2>
  <section class="p-summary">
    How to analyze data settings rather than data sets, acknowledging the meaning-making power of the local.

In our data-driven society, it is too easy to assume the transparency of data. Instead, Yanni Loukissas argues in All Data Are Local, we should approach data sets with an awareness that data are created by humans and their dutiful machines, at a time, in a place, with the instruments at hand, for audiences that are conditioned to receive them. The term data set implies something discrete, complete, and portable, but it is none of those things. Examining a series of data sources important for understanding the state of public life in the United States—Harvard's Arnold Arboretum, the Digital Public Library of America, UCLA's Television News Archive, and the real estate marketplace Zillow—Loukissas shows us how to analyze data settings rather than data sets.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://mitpress.mit.edu/9780262049863/water-of-the-sky/">
      Water of the Sky A Dictionary of 2,000 Japanese Rain Words
    </a>
  </h2>
  <section class="p-summary">
    A breathtakingly elegant visual dictionary of 2000 Japanese words for rain, with 100 drawings in indigo.

In Water of the Sky, artist Miya Ando offers us a beautifully rich, bilingual visual dictionary for rain. Through a collection of 2,000 Japanese words, their English interpretations, and 100 drawings, Ando describes the breadth and diversity of rain’s many expressions: when it falls, how it falls, and how its observer might be transformed physically or emotionally by its presence. The words range from prosaic to esoteric, extending from the meteorological (mukaame, or “very fine rain that falls in spring”) to the mystical (bunryūu, or “rain that splits a dragon's body in half”) and from the minute (kisame, or “raindrops that fall off the leaves and branches of trees”) to the vast (takuu, or “blessed rain that quenches all things in the universe”).
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://github.com/Ashfaqbs/TinyLLM-usecases">
      a collection of tiny llms with usecases
    </a>
  </h2>
  <section class="p-summary">
    Why Small LLMs Matter

The AI industry defaults to "bigger is better" - GPT-4, Claude Opus, Llama 70B. But for most production workloads, 80% of LLM calls don't need a 100B+ parameter model. They need a function routed, a tool selected, a query classified, or a simple response generated.

Small LLMs (under 4B parameters) solve this by running locally, for free, in milliseconds.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://codeberg.org/susam/wander">
      susam / wander
    </a>
  </h2>
  <section class="p-summary">
    Wander is a small, decentralised, self-hosted web console that lets your visitors explore random pages from a community of personal websites
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://third-bit.com/dsdx/">
      Distributed Systems Design by Example
    </a>
  </h2>
  <section class="p-summary">
    A sequel to Software Design by Example.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://dev.to/0byte/visual-introduction-to-pytorch-43jm">
      Visual Introduction to PyTorch
    </a>
  </h2>
  <section class="p-summary">
    PyTorch is currently one of the most popular deep learning frameworks. It is an open-source library built upon the Torch Library.

Most tutorials assume you're comfortable jumping straight into code. I made a visual introduction that walks through the core concepts step by step, with animations and diagrams instead of walls of text
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://tigerfs.io/">
      TigerFS
    </a>
  </h2>
  <section class="p-summary">
    A filesystem backed by PostgreSQL, and a filesystem interface to PostgreSQL. TigerFS mounts a database as a directory. Every file is a real row. Writes are transactions. Multiple agents and humans can read and write concurrently with full ACID guarantees, locally or across machines. Any tool that works with files works out of the box.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://wordsinspace.net/2026/03/13/pointing-at-clouds-indexing-searching-and-citing-in-an-age-of-ai-smog/">
      Pointing at Clouds: Indexing, Searching, and Citing in an Age of AI Smog
    </a>
  </h2>
  <section class="p-summary">
    I wanted to show how an index is not just a bibliographic convention, or an organizational method, or a media form, or a financial instrument, or a corporeal component; it’s also an intellectual architecture, a literary genre, a creative form, a semiotic concept, and an embodiment of agency — one that might offer an important antidote to the pervasive autonomous, extractive cloudification of our contemporary information ecology.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://en.wikipedia.org/wiki/Brandolini's_law">
      Brandolini's law
    </a>
  </h2>
  <section class="p-summary">
    Brandolini's law (or the bullshit asymmetry principle) is an Internet adage coined in 2013 by Italian programmer Alberto Brandolini. It compares the considerable effort of debunking misinformation to the relative ease of creating it in the first place. The adage states:

    The amount of energy needed to refute bullshit is an order of magnitude bigger than that needed to produce it.[1][2]

The challenge of refuting bullshit does not come just from its time-consuming nature, but also from the challenge of defying and confronting one's community.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://theshamblog.com/an-ai-agent-published-a-hit-piece-on-me/">
      An AI Agent Published a Hit Piece on Me
    </a>
  </h2>
  <section class="p-summary">
    Summary: An AI agent of unknown ownership autonomously wrote and published a personalized hit piece about me after I rejected its code, attempting to damage my reputation and shame me into accepting its changes into a mainstream python library. This represents a first-of-its-kind case study of misaligned AI behavior in the wild, and raises serious concerns about currently deployed AI agents executing blackmail threats.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://en.wikipedia.org/wiki/E._P._Thompson">
      E. P. Thompson
    </a>
  </h2>
  <section class="p-summary">
    Edward Palmer Thompson (3 February 1924 – 28 August 1993) was an English historian, writer, socialist and peace campaigner. He is best known for his historical work on the radical movements in the late 18th and early 19th centuries, in particular The Making of the English Working Class (1963).
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://github.com/opendataloader-project/opendataloader-pdf">
      OpenDataLoader PDF
    </a>
  </h2>
  <section class="p-summary">
    PDF parser for AI data extraction — Extract Markdown, JSON (with bounding boxes), and HTML from any PDF. #1 in benchmarks (0.90 overall). Deterministic local mode + AI hybrid mode for complex pages.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.libvips.org/API/current/method.Image.dzsave.html">
      Vips / Image / dzsave
    </a>
  </h2>
  <section class="p-summary">
    Save an image as a set of tiles at various resolutions. By default dzsave uses DeepZoom layout — use layout to pick other conventions.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://apenwarr.ca/log/20260316">
      Every layer of review makes you 10x slower
    </a>
  </h2>
  <section class="p-summary">
    It’s funny, everyone has been predicting the Singularity for decades now. The premise is we build systems that are so smart that they themselves can build the next system that is even smarter, that builds the next smarter one, and so on, and once we get that started, if they keep getting smarter faster enough, then the incremental time (t) to achieve a unit (u) of improvement goes to zero, so (u/t) goes to infinity and foom.

Anyway, I have never believed in this theory for the simple reason we outlined above: the majority of time needed to get anything done is not actually the time doing it. It’s wall clock time. Waiting. Latency.

And you can’t overcome latency with brute force.

I know you want to. I know many of you now work at companies where the business model kinda depends on doing exactly that.

Sorry.

But you can’t just not review things!
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.canirun.ai/">
      Can I Run AI locally?
    </a>
  </h2>
  <section class="p-summary">
    CanIRun.ai runs entirely in your browser. When you visit the site, we use browser APIs to detect your GPU, CPU, and memory — then we calculate which AI models can run on your hardware and how fast. No data is sent to any server. Everything is computed client-side.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://huggingface.co/datasets/uv-scripts/iiif-tiles/blob/main/tile_iiif.py">
      iiif-tiles/tile_iiif.py
    </a>
  </h2>
  <section class="p-summary">
    Generate IIIF Level 0 static tiles from images in a HF Bucket.
Downloads source images from a bucket, generates IIIF Image API 3.0 tiles
using libvips, creates a IIIF Presentation v3 manifest, and syncs everything
to an output bucket for static serving via HF CDN.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://slowllm.lav.io/">
      SlowLLM
    </a>
  </h2>
  <section class="p-summary">
    SLOW LLM is a browser extension that makes LLMs appear to run very slowly. It works with ChatGPT and Claude.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://iaetbibliotheques.fr/2026/03/bibliotheques-et-agents-ia-le-risque-de-linvisibilisation">
      Bibliothèques et agents IA : le risque de l’invisibilisation
    </a>
  </h2>
  <section class="p-summary">
    Plan

L’année 2026 sera l’année des agents IA… C’était annoncé, et effectivement depuis le début de l’année nous assistons à la diffusion et à la montée en puissance de deux grandes familles d’outils agentiques d’un nouveau type : d’une part des assistants orientés coding comme Claude Code, Codex, Gemini CLI, Opencode etc., et d’autre part des frameworks de création, de configuration et d’orchestration d’agents permettant l’automatisation de workflows via des canaux de communication (Slack, Discord, messagerie…) comme OpenClaw et ses multiples dérivés
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://en.wikipedia.org/wiki/Toi_Derricotte">
      Toi Derricotte
    </a>
  </h2>
  <section class="p-summary">
    Toi Derricotte (pronounced DARE-ah-cot ) (born April 12, 1941) is an American poet. She is the author of six poetry collections and a literary memoir. She has won numerous literary awards, including the 2020 Frost Medal for distinguished lifetime achievement in poetry awarded by the Poetry Society of America, and the 2021 Wallace Stevens Award, sponsored by the Academy of American Poets. From 2012–2017, Derricotte served as a Chancellor of the Academy of American Poets. She is currently a professor emerita in writing at the University of Pittsburgh. Derricotte is a member of The Wintergreen Women Writers Collective.[2]
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://github.com/smartbiblia-solutions/agent-skills">
      smartbiblia-solutions/agent-skills
    </a>
  </h2>
  <section class="p-summary">
    Hub of ready-to-use skills and MCP servers for AI agents, focused on libraries, scholarly information, and research workflows.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://bookmark-rss.woodland.cafe/">
      Mastodon Bookmark RSS
    </a>
  </h2>
  <section class="p-summary">
    Subscribe to your Mastodon bookmarks as RSS feed
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://degrowthuk.org/2026/03/16/degrowth-and-socialist-comrades-what-should-we-be-doing/">
      Degrowth and socialist comrades, what should we be doing?
    </a>
  </h2>
  <section class="p-summary">
    This is an attempt to clarify this discussion of degrowth strategy, a topic on which I think there is considerable confusion and mistaken approaches. Debate has recently been fuelled by Jason Hickel’s argument for a socialist position on both the goal and the means do it for degrowth. Liegey, Nelson and Leahy replied against Jason, defending the wide and diverse range of strategies now characteristic of the movement and often referred to by the terns “Horizontalism” and “Pluriverse”. Several others have contributed to the discussion, including Jason’s reply to Leigey et al., his subsequent response, my critique of the Leigey, Nelson and Leahy article, Gasparo and Vico,  Gregoletto and Burton, Bunea, and Kallis and D’Alisa.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://youtu.be/aKIu09RH_dk">
      Category Theory for the Working Programmer - 1.0 - Prologue
    </a>
  </h2>
  <section class="p-summary">
    In this series we will explain ideas in Category theory from first principles in order to build intuition and derive the actual formal definitions. We'll use that foundation to demonstrate exactly where these concepts fit into day to day functional programming and how you can do useful things with that knowledge.

Watch this if you want an introduction to category theory that is simple, practical, joyful, and deeply grounded in functional programming
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://en.wikipedia.org/wiki/Sentimental_Value">
      Sentimental Value
    </a>
  </h2>
  <section class="p-summary">
    Sentimental Value (Norwegian: Affeksjonsverdi) is a 2025 Norwegian drama film directed by Joachim Trier, who co-wrote it with Eskil Vogt. It follows sisters Nora (Renate Reinsve) and Agnes (Inga Ibsdotter Lilleaas) in their reunion with their estranged father Gustav (Stellan Skarsgård). It also stars Elle Fanning.
  </section>
</article>

<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://en.wikipedia.org/wiki/On_the_Silver_Globe_(film)">
      On the Silver Globe
    </a>
  </h2>
  <section class="p-summary">
    On the Silver Globe (Polish: Na srebrnym globie) is a 1988 Polish epic surrealist science fiction arthouse film[1] written and directed by Andrzej Żuławski, adapted from The Lunar Trilogy by his grand-uncle, Jerzy Żuławski. Starring Andrzej Seweryn, Jerzy Trela, Iwona Bielska, Jan Frycz, Henryk Bista, Grażyna Deląg and Krystyna Janda, the plot follows a team of astronauts who land on an uninhabited planet and form a society. Many years later, a single astronaut is sent to the planet and becomes a messiah.

Production took place from 1976 to 1977, but was interrupted by the Polish authorities. The budget is estimated to be at least PLN 58 million.[2] Many years later, Żuławski was able to finish his film, although not as originally intended. On the Silver Globe premiered at the 1988 Cannes Film Festival, and has received consistent critical acclaim.
  </section>
</article>

