---
title: congressedits notes
layout: post
tags:
- wikipedia
---

Ok, this is a blast from the past. Here are some rough notes for a conversation today with [Ernesto](http://gvptsites.umd.edu/calvo/) about how [congressedits](https://en.wikipedia.org/wiki/CongressEdits) worked, and Wikipedia data more generally. I couldn't summon the will to create a slidedeck, but I was taking some notes, and it seemed easiest to just drop them here. Ernesto does some amazing [work](https://ilcss.umd.edu/research) researching communication on the web and politics.

This is really just a list of links to follow...

### What was it?

<a href="https://en.wikipedia.org/wiki/File:Screenshot_of_@congressedits_Tweet_1045422483082551302.png"><img src="/images/congressedits-example.png"></a>

- archive: [https://edsu.github.io/congressedits-archive/](https://edsu.github.io/congressedits-archive/)
- article about it: [https://source.opennews.org/articles/automating-transparency/](https://source.opennews.org/articles/automating-transparency/)
- anon: [https://github.com/edsu/anon](https://github.com/edsu/anon)
- other anon bots: [https://github.com/edsu/anon?tab=readme-ov-file#community](https://github.com/edsu/anon?tab=readme-ov-file#community)

### How did it work?

- anonymous editing of wikipedia uses IP address of the user as the username: e.g. [https://en.wikipedia.org/w/index.php?diff=1210806587&oldid=1200740098](https://en.wikipedia.org/w/index.php?diff=1210806587&oldid=1200740098)
- what is my IP address: [https://whatismyipaddress.com/](https://whatismyipaddress.com/)
- IP ranges for Congress from GovTrack: [https://github.com/govtrack/govtrack.us-web/blob/031ea63cc4dda2a24c341834f081f46519f7f7f9/website/middleware.py#L15-L32](https://github.com/govtrack/govtrack.us-web/blob/031ea63cc4dda2a24c341834f081f46519f7f7f9/website/middleware.py#L15-L32)
- previous work on wikistream: [https://wikistream.toolforge.org](https://wikistream.toolforge.org)
- Event Stream API: [https://wikitech.wikimedia.org/wiki/Event_Platform/EventStreams](https://wikitech.wikimedia.org/wiki/Event_Platform/EventStreams)
- example of listening to Event Stream API with Python: [https://gist.github.com/edsu/80bf00eacbe97378568acf4964bb7e23](https://gist.github.com/edsu/80bf00eacbe97378568acf4964bb7e23)

### Research

- Wikipedia XTools: [https://xtools.wmcloud.org/ec](https://xtools.wmcloud.org/ec)
  for example, search for edits from the US Senate: 156.33.0.0/16
- CIDR: [https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
- Internet registries: [https://en.wikipedia.org/wiki/Regional_Internet_registry](https://en.wikipedia.org/wiki/Regional_Internet_registry)
- Registration Data Access Protocol: [https://en.wikipedia.org/wiki/Registration_Data_Access_Protocol](https://en.wikipedia.org/wiki/Registration_Data_Access_Protocol)
- ARIN: [https://search.arin.net/rdap/](https://search.arin.net/rdap/)
- Another example: Tracking Ukrainian Websites: [https://github.com/edsu/gov-ua](https://github.com/edsu/gov-ua)
