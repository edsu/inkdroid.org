---
layout: post
title: whitehouse.gov Redesign
---

*TLDR; By "redesign" I actually mean clusterfuck. As of last Thursday 47% of the 315 whitehouse.gov URLs I've collected during 2017 are now 404 Not Found*

---

Since the White House website accidentally broke (or intentionally disabled) its
RSS feed back when Trump entered the White House I've been running [a bot] to
scrape the website to generate an [unofficial RSS feed].  I wanted an RSS feed
so I could point my [diffengine] bot at it to watch for changes in what is
published on whitehouse.gov, which are then tweeted tweeted by
[whitehouse_diff].

The RSS generation has run for almost a year without much fuss, but a few days
ago I started to get email error messages from the bot about 404 messages.  When
I dug in to figure out what was going on I could see that:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
href="https://www.whitehouse.gov/blog">https://www.whitehouse.gov/blog</a>

is now redirecting to:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://www.whitehouse.gov/articles/">https://www.whitehouse.gov/articles/</a>

Poking around in the [Wayback Machine] you can see that this switch over
happened last Thursday, December 14, 2017:

<a href="https://web.archive.org/web/*/https://www.whitehouse.gov/blog/"><img
class="img-responsive" src="/images/whitehouse-wayback.png"></a>

Checking out the representation of the web pages before and after you can tell
that the style and layout has changed significantly:

<a href="https://wayback.archive.org/web/20171207211505/https://www.whitehouse.gov/the-press-office/2017/12/07/president-donald-j-trump-proclaims-december-7-2017-national-pearl-harbor"><img class="img-responsive" src="/images/whitehouse1.png"></a>

<a href="https://wayback.archive.org/web/20171220165931/https://www.whitehouse.gov/presidential-actions/president-donald-j-trump-proclaims-december-7-2017-national-pearl-harbor-remembrance-day/"><img class="img-responsive" src="/images/whitehouse2.png"></a>

Examining the HTML made it clear that the new website is now being driven by
Wordpress instead of Drupal which, according to [Wikipedia], was being used
previously.  Here is the first mention I could find on Twitter about the change
is:


<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr"><a href="https://t.co/OsVH2Om8DY">https://t.co/OsVH2Om8DY</a> just relaunched on WordPress <a href="https://t.co/aJjCmX0SBJ">https://t.co/aJjCmX0SBJ</a></p>&mdash; Brad Williams (@williamsba) <a href="https://twitter.com/williamsba/status/941746481022799872?ref_src=twsrc%5Etfw">December 15, 2017</a></blockquote> <script async
src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

There is an interesting discussion thread attached to that tweet that indicates
it's a bit of a mystery who developed the site, and that people who know aren't
sharing.

Don't get me wrong: content migrations like this can be tricky. But this is the
White House website, not just someone's personal blog. So, I thought it would be
interesting to see how many of the old URLs still resolve properly. 

Link checking work can be difficult to get right, particularly because of the
problem of false positives when the web server responds 200 OK for content that
that is no longer available, or has drastically changed. In the web archiving
community this is known as [reference rot], which is related to the better known
problem of [link rot]. Nevertheless, I took a quick look at the URLs that my
diffengine instance has collected for the last year for www.whitehouse.gov.
There are [315 of them] and can you believe that **47% of the URLs are currently
404 Not Found?** For the grim details check out this [CSV]. 

Unfortunately this little sampling from 2017 does not bode well for the entirety
of the URLs for the White House website. Presumably (hopefully?) the content is
still living at a new location. But not maintaining these links, or at the very
least redirecting them, means that the many, many links from the larger web to
the whitehouse.gov website are now broken.

In addition to breaking the web these broken links will most likely effect how
White House web pages are represented in Google’s index, since Google will treat
these pages as effectively gone, which (if it were any other website) will
negatively impact their [Google Juice].

But I imagine the current administration isn't too worried about a botched CMS
migration as they focus their attention on trashing our economy and the
environment while sending us teetering on the brink of nuclear war.

---

For more about the redesign story see this [Mashable](http://mashable.com/2017/12/08/cleep-kickstarter-wearable-camera/#uXj7qXmVKPqE) article. Thanks to [Derek Willis](https://twitter.com/derekwillis) for pointers and taking a look at this as it was being written.


[a bot]: https://github.com/edsu/whrss
[unofficial RSS feed]: https://inkdroid.org/rss/whitehouse.xml
[whitehouse_diff]: https://twitter.com/whitehouse_diff
[Wayback Machine]: https://web.archive.org/web/*/https://www.whitehouse.gov/blog/
[Wikipedia]: https://en.wikipedia.org/wiki/Whitehouse.gov
[315 of them]: https://gist.github.com/b28d3eff3cf8874d16c6589711cf9f47
[CSV]: https://gist.github.com/b28d3eff3cf8874d16c6589711cf9f47
[diffengine]: https://github.com/docnow/diffengine
[Google Juice]: https://en.wikipedia.org/wiki/Google_Guice
[reference rot]: http://mementoweb.org/missing-link/#linkrot
[link rot]: https://en.wikipedia.org/wiki/Link_rot
