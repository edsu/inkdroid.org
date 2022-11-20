---
title: Bookmarks
tags:
- twitter
- archives
layout: post
---

As you already know, lots of people are leaving Twitter, and taking their [archive download](https://help.twitter.com/en/managing-your-account/how-to-download-your-twitter-archive) with them. Twitter's archive is really quite decent, since unlike other platform downloads, it gives you a local client-side web application for viewing your content. You aren't stuck with a bunch of impenetrable JSON and media files (yes, I'm looking at you Slack).

However, some people are noticing that the downloadable archive doesn't include their bookmarks. [Bookmarks](https://help.twitter.com/en/using-twitter/bookmarks) aren't a feature that I ever used myself, but I know many others have. If you've spent significant time creating bookmarks I'm sure you are reluctant to part with them. Deleting your account without having a copy seems like a bad idea.

Yes, there is an [API endpoint](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/get-users-id-bookmarks) to fetch your bookmarks. But it only returns the last 800 tweets, so depending on how many bookmarks you've created that might not be good enough. The endpoint returns the JSON data for your bookmarks which isn't exactly user-friendly. Also API endpoints, and developer keys are beyond the ken of most Twitter users, so it's really just not an option for most people.

Scraping tools like [snscrape](https://github.com/JustAnotherArchivist/snscrape) also don't seem to support fetching user bookmarks, probably because snscrape is hard coded to use a particular access key, which is fine for collecting public information from Twitter, but won't work when fetching your personal bookmarks. And again, installing Python, getting the snscrape utility, and then running it on the command line isn't really a generally accessible approach.

So, what to do?

One option you might want to consider is using [Webrecorder](https://webrecorder.net)'s [ArchiveWebPage](https://archiveweb.page) Chrome extension to create an archive of your bookmarks, and then viewing the archived content locally. Once you've actually deleted your Twitter account you can host your bookmarks archive somewhere online, like your personal website for viewing in any (JavaScript enabled) web browser. You could even to try to archive your entire Twitter profile this way. Read on for how to do this, and why you probably should only publish your archived content after you've deleted your account.

Since this really is an interactive process here's a quick video of me collecting my Twitter bookmarks with the ArchiveWebPage extension:

<br>

<iframe width="700" height="415" src="https://www.youtube.com/embed/5q2qTDNZIhI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<br>

It's *really* important to point out here that the ArchiveWebPage extension is a *client-side* web application. All the archived data is *on your computer*. There's no copy of it up in the cloud anywhere (unless you decide to put it there later).

Speaking of the data, you can "export" the archived content, which takes it out of the browser local storage and packages it up as a [WACZ](https://specs.webrecorer.net/wacz/latest/) file, which is similar to EPUB or Word (DOCX) file in that it's just a ZIP file. You can view this file at any time by importing it back into ArchiveWebPage, or using the [ReplayWebPage](https://replayweb.page) player to play it back. ReplayWebPage is also a *client-side* application. The data you load in is store locally--not in the cloud.

If you do want to publish your archive you can [embed it](https://replayweb.page/docs/embedding) on a web page of your choosing using the &lt;replay-web-page&gt; web component.

To be on the safe side you probably only want to do this once you've decided to remove your Twitter account. The web archive contains *all the communications* from the Twitter website, so it's possible there might be some time-sensitive, private information in the archive that someone could use to access your account. But if you don't have an account anymore 🤷  

Here's the HTML I'm using here on my Jekyll static site:

```html
<script src="https://cdn.jsdelivr.net/npm/replaywebpage@1.7.2/ui.js"></script>
<replay-web-page 
  style="height: 600px"
  embed="replay-with-info"
  replayBase="/js/replaywebpage/"
  source="https://edsu-webarchives.s3.amazonaws.com/twitter-bookmarks.wacz"
  coll="2022-11-11-random"
  url="https://twitter.com/i/bookmarks" />
```

which displays:

<script src="https://cdn.jsdelivr.net/npm/replaywebpage@1.7.2/ui.js"></script>
<replay-web-page 
  style="height: 600px"
  embed="replay-with-info"
  replayBase="/js/replaywebpage/"
  source="https://edsu-webarchives.s3.amazonaws.com/twitter-bookmarks.wacz"
  coll="2022-11-11-random"
  url="https://twitter.com/i/bookmarks" />

<br>
<br>

More information about sharing and embedding WACZ web archives can be found in the [ReplayWebPage documentation](https://replayweb.page/docs/embedding). If you run into questions please ask over in the [Webrecorder Forum](https://forum.webrecorder.net).

---

*Update: as Ryan Baumann [notes](https://twitter.com/ryanfb/status/1592876540316241921), it looks like Twitter's own interface may not let you see more than 800 bookmarks :-( So you may not be able to get more than that with ArchiveWebPage. Still I think there's an advantage to using ArchiveWebPage here since the tweets will be viewable with context and not just some JSON or CSV file?*

*Update: Ryan also has a [Ruby program](53f167feebde61ad262c4f09d879733e) that will get around the 800 limitation by getting your bookmarks while deleting them--which is a pretty ingenious way around the API limitation. He also has a super [thread](https://twitter.com/ryanfb/status/1590059053920956417) where he compares some other options like the [GetDewey](https://getdewey.co/) service.*
