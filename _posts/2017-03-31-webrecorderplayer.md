---
title: The Web as Performance
layout: post
tags:
- web
- archives
- preservation
---

Yesterday the [Webrecorder] project from [Rhizome] announced the v1.0.0 release
of their project [WebrecorderPlayer] application:

<blockquote class="twitter-tweet" data-lang="en"><p lang="en"
dir="ltr">Webrecorder Player Desktop App for OSX, Win &amp; Linux released: <a
href="https://t.co/ffKaEBdjJA">https://t.co/ffKaEBdjJA</a> Browse web archives
in WARC, HAR, ARC formats offline! <a
href="https://t.co/U67SrQNFYF">pic.twitter.com/U67SrQNFYF</a></p>&mdash;
Webrecorder.io (@webrecorder_io) <a
href="https://twitter.com/webrecorder_io/status/847573532728975361">March 30,
2017</a></blockquote> <script async src="//platform.twitter.com/widgets.js"
charset="utf-8"></script>

Maybe I'm just a big nerd but it's quite an amazing experience to go to
[Webrecorder], create a collection, download the [WARC] file for the collection,
*disconnect from the Internet*, and then view and interact with the content as
if I was actually online. Go on, try it out. For me it's up there with using the
Web for the first time in a terminal window with [Lynx]--which (for me) is
saying a lot.

For example here's a screenshot of me viewing a collection I built a few months
ago when the [\@FBIRecordsVault] Twitter account tweeted about Hillary Clinton's
emails just over a week before the US Presidential Election:

<div style="text-align: middle;">
  <img class="img-responsive" src="/images/fbivault.png">
</div>

The tweets are still there on the web, but let's imagine that they're not, and
that the Internet Archive didn't get them (gasp), and Webrecorder's is offline
because funding has run out (never!) ...  but I still have the WARC data, and I
can still use it. The ability to easily open a file of web archive content on my
workstation and interact with it as if it was a live website is a huge win for
usability ... and I think it could be a game changer for web archives,
scholarship and the viability of the WARC format itself.

Part of the reason why Webrecorder and WebrecorderPlayer are such a feat to me
is that they capture the *performative* nature of the web. The web isn't so much
about data as it is about decisions, actions, interactions, software, hardware
and infrastructure. Given all this complexity it's kind of miraculous any of it
[works at all]. This presents a really severe challenge to digital preservation
because you can't just preserve the data, there is a whole environment that
needs preserving. And it's not just a question of emulating the software because
the experience is performative--it's a particular set of contingencies that has
[more in common] with preserving a dance piece or performance art than what we
normally think of as digital preservation. It is a performance that involves
many actors, but the primary role is yours.  Webrecorder's approach to web
archiving centers the person making decisions about what to archive and what to
do with that archive.

Of course WebrecorderPlayer is itself a piece of software. It's an [Electron]
application, which is essentially the [Chromium] open source web browser that is
at the heart of the [most popular] web browser in use today, [Google Chrome].
WebrecorderPlayer also includes a platform specific binary version of the
Webrecorder [Python] application, which itself is a combination of [a bunch] of
different tools. But pushing the application out to the edges of people's
personal computers suddenly means there isn't just one copy of Webrecorder
running--there are many copies of Webrecorder running. This is an important step
for the viability of web archiving ecosystem.

It could in fact be a step towards being able to open a WARC file directly in 
your browser:

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr"><a
href="https://twitter.com/s3ththompson">@s3ththompson</a> Any interest in adding
WARC/high-fidelity archiving support directly to Chrome? Would make our work a
bit easier :)</p>&mdash; Webrecorder.io (@webrecorder_io) <a
href="https://twitter.com/webrecorder_io/status/841743910359597056">March 14,
2017</a></blockquote>

But we're not quite there yet. Till we are, here's to Rhizome's Webrecorder
team for bringing us one step closer!

---

*Update: I feel like I subconsciously plagiarized Christie Peterson's [Web
Archives, Performance &amp;
Capture](https://medium.com/on-archivy/web-archives-performance-capture-78f06c119850)
which I've definitely read and enjoyed before. Heck I saw her
[present](https://www.lib.umich.edu/webarchivesconference/webarchives-schedule)
it!  So if you want to read more about this idea of performance with more
connections to the archival literature do check it out.  Also, Mark Matienzo
[pointed out](https://twitter.com/anarchivist/status/847921310449532928) that
this idea of performance in digital records has roots back to [An Approach to
the Preservation of Digital
Records](http://pandora.nla.gov.au/pan/49636/20050511-0000/www.naa.gov.au/recordkeeping/er/digital_preservation/Green_Paper.pdf)
by Helen Heslop, Simon Davis and Andrew Wilson. There was a point in my career
where discovering my ideas were neither new nor original would be disappointing.
But luckily those days are past. But I do still believe it's extremely important
to give credit where credit is due!*

[Webrecorder]: https://webrecorder.io/
[Lynx]: https://en.wikipedia.org/wiki/Lynx_(web_browser)
[WARC]: https://en.wikipedia.org/wiki/Web_ARChive
[Rhizome]: https://rhizome.org
[WebrecorderPlayer]: https://github.com/webrecorder/webrecorderplayer-electron/releases
[works at all]: https://medium.com/message/why-the-great-glitch-of-july-8th-should-scare-you-b791002fff03
[Electron]: https://electron.atom.io/
[Chromium]: https://en.wikipedia.org/wiki/Chromium_(web_browser)
[Google Chrome]: https://en.wikipedia.org/wiki/Google_Chrome
[most popular]: https://en.wikipedia.org/wiki/Usage_share_of_web_browsers#Summary_tables
[Python]: https://python.org
[a bunch]: https://github.com/webrecorder/webrecorder/blob/master/webrecorder/requirements.txt
[\@FBIRecordsVault]: https://twitter.com/FBIRecordsVault
[more in common]: http://re-collection.net/
