---
layout: post
title: Bandcamp Archiver
tags:
- music
- preservation
- bandcamp
- python
- claude
---

I've been buying music on [Bandcamp] for years. Over that time sometimes I've
remembered to download what I purchased, and other times I haven't. I wanted to
be able to inventory what I have and then look at Bandcamp and download what is
missing.

There are already fine tools for downloading a Bandcamp collection:
[bandsnatch] and the [bandcamp-collection-downloader] both
fetch the lot, in parallel, in the format you want.

But they know only what *they* downloaded, and what I needed to know was what
I was missing.

So I worked with Claude Code on [bandcamp-archiver], which reads the embedded
tags off my disk, compares that inventory against my Bandcamp purchases, and
downloads the difference one album at a time.

<img src="/images/bandcamp-archiver.svg">

The inventory is just a documented JSON (or CSV) file, so the scan can run on
the machine where the music lives and the downloading can happen somewhere else.
`bandcamp-archiver plan` reports and downloads nothing, which is the part I use
most.

I wanted to understand well what was, and was not going to be downloaded, so
I decided to roll my own tool. It's just on github where you can install it
from. I figured PyPI didn't need another Bandcamp tool that may or may not
continue to work. bandcamp-archiver leans on Bandcamp's internal endpoints, so
it will break when those change. If you try it and something doesn't work
please [let me know].

[Bandcamp]: https://bandcamp.com
[bandcamp-archiver]: https://github.com/edsu/bandcamp-archiver
[bandsnatch]: https://github.com/Ovyerus/bandsnatch
[bandcamp-collection-downloader]: https://framagit.org/Ezwen/bandcamp-collection-downloader
[issue]: https://github.com/edsu/bandcamp-archiver/issues
[let me know]: mailto:ehs\@pobox.com
