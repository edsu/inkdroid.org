---
layout: post
title: Bookmarks - data, design, vis, book
tags: ["bookmarks", "baltimore", "book", "comic", "computing", "criticism", "data", "database", "design", "disk", "google", "handwriting", "history", "hypermedia", "iiif", "javascript", "linkeddata", "llm", "map", "ocr", "opensource", "openstreetmap", "preservation", "programming", "reading", "ruby", "rust", "search", "shopping", "silverspring", "tednelson", "tool", "vector", "video", "vis", "webarchive", "wikipedia", "writing"]
---

These are some things I've wandered across on the web this week.
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://codeforthought.buzzsprout.com/1326658/episodes/19221837-en-when-bits-rot-with-c-mckean-l-talboom-a-page-mitchell">
      When Bits Rot - with C McKean, L Talboom, A Page-Mitchell
    </a>
  </h2>
  <section class="p-summary">
    English Edition: floppy disks, hard drives, CDs, DVDs, SSD drives - no matter what you choose to store your data on - ultimately they all decay. With my guests Callum McKean, Leontien Talboom and Adrian Page-Mitchell, we're going to talk about what kinds of data we find on old drives, why we want to get them in the first place, and what can go wrong with the storage media. To all of you who love all things retro - we'll be talking about floppy disks a bit.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/data/">data</a> <a rel="tag" class="tag label label-default p-category" href="/tag/disk/">disk</a> <a rel="tag" class="tag label label-default p-category" href="/tag/preservation/">preservation</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://blog.sheerluck.dev/series/learning-rust/">
      series: learning-rust (10 parts)
    </a>
  </h2>
  <section class="p-summary">
    * Learn Rust Basics By Building a Brainfuck Interpreter
* Learn Rust Ownership and Borrowing By Building Mini Grep
* Build a JSON Parser in Rust from Scratch
* Learn Error Handling in Rust By Building a TOML Config Parser
* Learn Rust Generics and Traits By Building a Mini Blackjack Game
* Learn Rust Lifetimes by Building a Generic LRU Cache
* Learn Rust HashMap and Iterators by Building a Git Object Store Reader
* Learn Rust Closures By Building a Tiny Rule-Based Linter
*Learn Rust Smart Pointers and Interior Mutability by Building Git Commit Graph Viewer
* Learn Rust Concurrency By Building a Thread Pool
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/programming/">programming</a> <a rel="tag" class="tag label label-default p-category" href="/tag/rust/">rust</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://wasmer.io/posts/ported-wasmer-backend-django-to-rust">
      Porting our Django backend to Rust improved the infra usage by 90%
    </a>
  </h2>
  <section class="p-summary">
    We went from using 220 CPUs and 800 GB of ram to just 24 CPUs and 64 GB. Thus, way less money, less things to maintain.

The number of open DB connections at any point in time have improved quite a bit, from the thousands to hundreds (about ~3-5x reduction).

The good news is that we haven’t even added caching to the Rust backend yet, and query timings are already 5-10 times faster.
  </section>
  <p class="tags"></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://atomicbooks.com/">
      Atomic Books
    </a>
  </h2>
  <section class="p-summary">
    An independent bookstore in Baltimore, MD focusing on indie comics and small press.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/baltimore/">baltimore</a> <a rel="tag" class="tag label label-default p-category" href="/tag/book/">book</a> <a rel="tag" class="tag label label-default p-category" href="/tag/shopping/">shopping</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://www.panasiti.me/blog/how-to-build-agentic-rag-with-rubyllm-and-rails/">
      How to Build an Agentic RAG with RubyLLM and Rails
    </a>
  </h2>
  <section class="p-summary">
    I run a RAG application for Italian pension and tax consultants. Users ask questions about INPS, professional pension funds, laws and regulations, and the app answers using a knowledge base of uploaded documents.

For a long time the app used the classic single-shot RAG pipeline: take the question, search the database, stuff the results into a system prompt, ask the model. It works, but it has a hard limit: the retrieval happens once, before the model has any chance to reason about the question. If the first search misses, the answer is bad and there is nothing the model can do about it.

So I rebuilt the pipeline as an agent. Now the model drives the retrieval itself: it decides what to search, reads the results, searches again with different terms, follows cross references between documents, and only then writes the answer. All in plain Ruby, with RubyLLM and Rails. No LangChain, no Python sidecar.

In this article I will show you exactly how it works, with the real code from my application. One note before we start: since the app serves Italian consultants, all the prompts, tool descriptions and user-facing strings are in Italian in the real codebase. I translated them to English here so you can follow along, but the structure is identical.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/llm/">llm</a> <a rel="tag" class="tag label label-default p-category" href="/tag/ruby/">ruby</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://docs.google.com/document/d/1dCwVu0gnLy6tDRCH_K9kOUKVMSDWlkJY6seRQB9ucPg">
      Zooming Out: Can We Integrate IIIF and Wikimedia?
    </a>
  </h2>
  <section class="p-summary">
    Wikimedia and GLAM institutions share a challenge. How do we make cultural heritage collections accessible at scale without sacrificing quality, provenance, sustainability, or community control? The International Image Interoperability Framework, IIIF, is now used by thousands of institutions to serve high-resolution media through open standards. Wikimedia does not currently integrate IIIF in its core architecture. Should it?
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/data/">data</a> <a rel="tag" class="tag label label-default p-category" href="/tag/iiif/">iiif</a> <a rel="tag" class="tag label label-default p-category" href="/tag/linkeddata/">linkeddata</a> <a rel="tag" class="tag label label-default p-category" href="/tag/wikipedia/">wikipedia</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://mprove.de/visionreality/media/nelson.html">
      Ted Nelson Media Center
    </a>
  </h2>
  <section class="p-summary">
    An ever-growing list of papers and videos by Theodor Holm Nelson (THN)
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/computing/">computing</a> <a rel="tag" class="tag label label-default p-category" href="/tag/history/">history</a> <a rel="tag" class="tag label label-default p-category" href="/tag/hypermedia/">hypermedia</a> <a rel="tag" class="tag label label-default p-category" href="/tag/tednelson/">tednelson</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://bethesdamagazine.com/2026/06/08/5-things-eastern-silver-spring-communities-plan/">
      5 things to know about the Eastern Silver Spring Communities Plan
    </a>
  </h2>
  <section class="p-summary">
    Since 2023, Montgomery Planning staff have been working on the Eastern Silver Spring Communities Plan, drafting recommendations on zoning and land use, transportation, housing, parks and the environment, economic development and urban design. The plan is expected to set a vision for the area’s future development for decades to come. The plan is bordered by Colesville Road, University Boulevard and New Hampshire Avenue and will include three future Purple Line stations, the Piney Branch Road, Long Branch and Manchester Place
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/silverspring/">silverspring</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://wizardzines.com/comics/main-ideas/">
      Tell people the main ideas
    </a>
  </h2>
  <section class="p-summary">
    A good reminder about the ergonomics of reading and presenting information. Remind me of Christopher Alexander's
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/comic/">comic</a> <a rel="tag" class="tag label label-default p-category" href="/tag/design/">design</a> <a rel="tag" class="tag label label-default p-category" href="/tag/reading/">reading</a> <a rel="tag" class="tag label label-default p-category" href="/tag/vis/">vis</a> <a rel="tag" class="tag label label-default p-category" href="/tag/writing/">writing</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://silviolorusso.com/work/what-design-cant-do/">
      What Design Can’t Do
    </a>
  </h2>
  <section class="p-summary">
    Design is broken. Young and not-so-young designers are becoming increasingly aware of this. Many feel impotent: they were told they had the tools to make the world a better place, but instead the world takes its toll on them. Beyond a haze of hype and bold claims lies a barren land of self-doubt and impostor syndrome. Although these ‘feels’ might be the Millennial norm, design culture reinforces them. In conferences we learn that “with great power comes great responsibility” but, when it comes to real-life clients, all they ask is to “make the logo bigger.”
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/book/">book</a> <a rel="tag" class="tag label label-default p-category" href="/tag/criticism/">criticism</a> <a rel="tag" class="tag label label-default p-category" href="/tag/design/">design</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://generativehistory.substack.com/p/gemini-3-solves-handwriting-recognition">
      Gemini 3 Solves Handwriting Recognition and it’s a Bitter Lesson
    </a>
  </h2>
  <section class="p-summary">
    On our strictest tests, Gemini 3 achieved a CER of 1.67% and a WER of 4.42%. On these tests, any difference between the ground truth and test texts counts as an error. WER is thus almost always a bit more than double the CER because if a single character in a word is wrong, including leading or trailing punctuation like commas, single quotes vs double quotes, etc, the whole word is marked as an error. On this measure, Gemini 3 performs nearly 50% better than the best, fine-tuned specialized models and achieved performance comparable to an early career, professional human typist.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/google/">google</a> <a rel="tag" class="tag label label-default p-category" href="/tag/handwriting/">handwriting</a> <a rel="tag" class="tag label label-default p-category" href="/tag/llm/">llm</a> <a rel="tag" class="tag label label-default p-category" href="/tag/ocr/">ocr</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://facilmap.org/">
      FacilMap
    </a>
  </h2>
  <section class="p-summary">
    FacilMap is a privacy-friendly, open-source versatile online map that combines different services based on OpenStreetMap. FacilMap offers the following features:

* Show different map styles, for example maps optimized for driving, cycling, hiking or showing the topography or public transportation networks.
* Search for places
* Show amenities and POIs
* Calculate a route, optionally showing the elevation profile.
* Find out what is at a particular point on the map
* Open geographic files, for example GPX, KML or GeoJSON files
* Show your location on the map
* Share a link to a particular view of the map.
* Add FacilMap as an app to your device.
* Change the language settings in the user preferences.
* FacilMap is privacy-friendly and does not track you
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/map/">map</a> <a rel="tag" class="tag label label-default p-category" href="/tag/opensource/">opensource</a> <a rel="tag" class="tag label label-default p-category" href="/tag/openstreetmap/">openstreetmap</a> <a rel="tag" class="tag label label-default p-category" href="/tag/tool/">tool</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://simonhearne.com/2026/visualising-vector-search/">
      Vector Search, Visualised
    </a>
  </h2>
  <section class="p-summary">
    SQL makes sense. But when it breaks, you reach for EXPLAIN. Vector search offers no such comfort. Multi-thousand-dimension embeddings, approximate nearest-neighbour indexes, and quantisation tradeoffs make it hard to know what your system is doing, and harder still to diagnose when results quietly degrade. Through interactive visualisations, Simon Hearne shows what embeddings look like in high-dimensional space, what quantisation does to your recall, and how to catch retrieval failures before your agents do. You'll leave with a sharper mental model and a diagnostic toolkit for the production problems hardest to see.
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/database/">database</a> <a rel="tag" class="tag label label-default p-category" href="/tag/search/">search</a> <a rel="tag" class="tag label label-default p-category" href="/tag/vector/">vector</a> <a rel="tag" class="tag label label-default p-category" href="/tag/vis/">vis</a></p>
</article>
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="https://alexwlchan.net/2026/record-browser-video/">
      Using the Screen Capture API to record a browser window
    </a>
  </h2>
  <section class="p-summary">
    Once again I am reminded that modern web tech is amazing, and web browsers are incredibly capable.

There’s a Screen Capture API to record the screen. You can select a tab, a window, or the entire screen. The feature has limited browser support so I don’t think I’d use it in a big web app, but it’s fine for a one-off screen recording. (I wonder how browser-based video conference apps like Google Meet do screen sharing? Do they use this API, or do they use something with wider support?)
  </section>
  <p class="tags"><a rel="tag" class="tag label label-default p-category" href="/tag/javascript/">javascript</a> <a rel="tag" class="tag label label-default p-category" href="/tag/video/">video</a> <a rel="tag" class="tag label label-default p-category" href="/tag/webarchive/">webarchive</a></p>
</article>
