---
layout: post
title: Thanks EDGI!
tags:
- web
- archive
- python
---

*TLDR; I created a small command line utility [waybackprov] to help try to
understand who is doing all the work of deciding what needs to get archived from
the web ... like Pruitt's (now deleted) Twitter timeline.*

---

Last week, amidst at least 14 separate federal investigations by the Government
Accountability Office, [Scott Pruitt] resigned from his post as the head of the
Environmental Protection Agency. Soon afterwards he deleted the Twitter account
[\@EPAScottPruit] which he had used to do official business.

<br>

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Tonight, I learned that:<br>1) <a href="https://twitter.com/EPAAWheeler?ref_src=twsrc%5Etfw">@EPAAWheeler</a> has a Twitter account, but hasn’t tweeted yet<br>2) @EPAScottPruitt’s account has been deleted, in a final stick in the eye to transparency, accountability &amp; public records on his way out<br>3) <a href="https://twitter.com/internetarchive?ref_src=twsrc%5Etfw">@internetarchive</a> has them: <a href="https://t.co/aC2WnPubP2">https://t.co/aC2WnPubP2</a> <a href="https://t.co/svZ8LRQBp1">pic.twitter.com/svZ8LRQBp1</a></p>&mdash; Alex Howard (@digiphile) <a href="https://twitter.com/digiphile/status/1015360142072836096?ref_src=twsrc%5Etfw">July 6, 2018</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

<br>

It's unclear what records the EPA and or NARA have of this account. Fortunately
the Internet Archive appear to have a [good record] of the account, especially
after January, 2018.  However, Pruitt created his account in February, 2017.

As noted by Howard, ProPublica's [Politwoops] project is great for tracking
deleted tweets from elected representatives [@Fung:2015]. But unelected
administration officials like Pruitt [don't appear] to be covered. George
Washington University's [Social Feed Manager] Project do extensive [collecting]
of government Twitter accounts, and have what appears to be a full set of
Pruitt's tweets. But uncertainty about whether deleted tweets from public
officials can be made publicly available works to restrict how accessible this
data can be for research. You may need to belong to GWU's research community to
access them.

So, Internet Archive's collection, as made available through their Wayback
Machine, is *incredibly* important for the majority of people interested in
knowing what Pruitt's public communications were. Here is what the coverage of
Pruitt's Twitter timeline looks like in the Wayback Machine for 2017 and 2018. 

<a href="https://web.archive.org/web/20170601000000*/https://twitter.com/epascottpruitt"><img class="img-responsive" style="border: thin solid gray;" src="/images/pruitt2017.png"></a>

<br>

<a href="https://web.archive.org/web/20180601000000*/https://twitter.com/epascottpruitt"><img class="img-responsive" style="border: thin solid gray;" src="/images/pruitt2018.png"></a>

As you can see coverage prior to January, 2018 is kind of spotty. Getting the
home timeline for the user timeline is important because it continually changes,
and the Internet Archive's crawler will only get the initial page of results.
It doesn't  activate the infinite scroll along the bottom that would fetch all
the of the tweets Pruitt has sent. So if you don't fetch it regularly you want
necessarily get all his tweets.

But this is understandable and perfectly reasonable. The Internet Archive isn't
responsible for archiving all of Twitter. However high-value resources like
Pruitt's social media account can be deemed worth extra attention and care. In
archives this process is called [appraisal], or the process of identifying
materials of sufficient value to be collected and preserved. I thought it was
interesting to see that the increased coverage around January 6. Who was
responsible for the extra coverage?

If you hover over one of the days in the calendar, and then again over one of
the crawl timestamps you'll see that some information pops up in the center of
the screen next to a label 'why'. It's pretty small so you might miss it. This
information tells you what collections the crawl was added to. If you click on
the crawl and bring up the page of interest, you can open a section of the page
by clicking on [About this Capture] there's a section of the page.

Content in the Wayback machine was selected by someone, or perhaps by something
(a piece of software), that was in turn designed by someone. The Internet
Archive run their own crawls using various data sources (Twitter, Wikipedia,
Alexa, etc). Selecting these data streams and how to work with them gets
expressed as an algorithm (or heuristic). While it may seem like there are no
people involved in these automated appraisal flows, they are present both as the
designer of the flow, and also the individuals represented in the datastream:
e.g people tweeting a URL that causes it to get archived, or adding a link to a
Wikipedia page that causes it to get archived. People are very much present, but
somewhat removed.

But individuals can also submit content to be archived in a much more direct way
via the [SavePageNow] feature, and web archivists working at thousands of
[ArchiveIt] institutions select content to be archived [@Taylor:2014]. The
spotty coverage followed by routine coverage displayed above indicated some kind
of intervention being made. But who?

To answer this I wrote a small utility called [waybackprov] that uses an
undocumented API call behind the Wayback calendar view to collect the collection
information and summarize it. So we can see what collections have added a URL
most often.

```
% waybackprov https://twitter.com/epascottpruitt
364 https://archive.org/details/focused_crawls
306 https://archive.org/details/edgi_monitor
151 https://archive.org/details/www3.epa.gov
 60 https://archive.org/details/epa.gov4
 47 https://archive.org/details/epa.gov5
 37 https://archive.org/details/epa.gov2
 33 https://archive.org/details/top_domains
 24 https://archive.org/details/archiveitdigitalcollection
 24 https://archive.org/details/archiveitpartners
 21 https://archive.org/details/top_domains-06500
 12 https://archive.org/details/salon.com
 12 https://archive.org/details/nytimes.com
 12 https://archive.org/details/top_news
 11 https://archive.org/details/epa.gov3
  9 https://archive.org/details/top_domains-07500
  9 https://archive.org/details/ArchiveIt-Collection-8119
  7 https://archive.org/details/ArchiveIt-Collection-5518
  4 https://archive.org/details/ArchiveIt-Partner-1346
  4 https://archive.org/details/ArchiveIt-Collection-9742
  4 https://archive.org/details/warczone
  1 https://archive.org/details/twitter.com
  1 https://archive.org/details/pressassociation.com
  1 https://archive.org/details/ArchiveIt-Collection-9737
  1 https://archive.org/details/ArchiveIt-Partner-510
  1 https://archive.org/details/top_domains-03500
  1 https://archive.org/details/yahoo.com
  1 https://archive.org/details/ArchiveIt-Collection-10403
  1 https://archive.org/details/webwidecrawl
  1 https://archive.org/details/newscrawl
  1 https://archive.org/details/ximm-collections-news-crawls-v3
```

It simply counts how many times a given URL was added to a collection for a
given year (the default is the current year). As you can see 364 of the crawls
are in the collection [focused_crawls] followed close behind by [edgi_monitor].
What's interesting, and a bit confusing, is that a crawl can be part of multiple
collections, and Internet Archive collections can be part of other collections.
When a URL crawled and the data is added to a collection it also seems to be
added to all those other parent collections. At least that's how it appears in
the API results. So for example, in the output above *edgi_monitor* is a
sub-collection of *focused_crawls*. This makes the results a bit more tricky to
interpret. Which collections were the website's added to directly, and who owned
those collections?

To try to solve this waybackprov has a --collapse option which will use Internet
Archive's [Metadata API] to determine what collections are part of which, and
will only report the deepest collection in the hierarchy, so in this case
edgi_monitor. Here's what those results look like:

```
% waybackprov --collapse https://twitter.com/epascottpruitt
151 https://archive.org/details/www3.epa.gov
 60 https://archive.org/details/epa.gov4
 47 https://archive.org/details/epa.gov5
 37 https://archive.org/details/epa.gov2
 21 https://archive.org/details/top_domains-06500
 12 https://archive.org/details/salon.com
 12 https://archive.org/details/nytimes.com
 11 https://archive.org/details/epa.gov3
  9 https://archive.org/details/top_domains-07500
  9 https://archive.org/details/ArchiveIt-Collection-8119
  7 https://archive.org/details/ArchiveIt-Collection-5518
  4 https://archive.org/details/ArchiveIt-Collection-9742
  4 https://archive.org/details/warczone
  2 https://archive.org/details/archiveitpartners
  1 https://archive.org/details/twitter.com
  1 https://archive.org/details/pressassociation.com
  1 https://archive.org/details/ArchiveIt-Collection-9737
  1 https://archive.org/details/top_domains-03500
  1 https://archive.org/details/yahoo.com
  1 https://archive.org/details/ArchiveIt-Collection-10403
  1 https://archive.org/details/ximm-collections-news-crawls-v3
```

Here we can see the results look quite different. If you look at the collection
pages by bringing them up in your browser you can see that the top 4 are all
from the edgi_monitor collection, which is run by the [Website Monitoring] of
the [Environmental and Data Governance Initiative] (EDGI). EDGI is a non-profit
, largely volunteer run organization that works to address potential threts to
federal government and energy policy. Doing the math we can see that EDGI is
responsible for 75.8% of all the crawls (295 / 393) of Pruitt's Twitter page.

So thank you EDGI, and thank you Internet Archive!

Hopefully this little foray into answering a question has created a utility
([waybackprov]) that's useful to you. Let me know if you have any questions or
ideas about it. Hopefully this little case study also illustrates how important
your role is as a person is to archiving the web. Whether you are designing
systems and workflows for selecting particular content, are directly selecting
content yourself, or find yourself somewhere in between, your voice matters and
agency matter...a lot.

<div id="coda"></div>

### Coda: Thank You Concerned Citizens

After publishing this, [David Van Duzer] got in touch to show me how you can use
the Wayback's [CDX API] to see how many of Pruitt's individual tweets were
archived at the Internet Archive. He gave them to me as a list of 628 URLs which
was startlingly close to the [631] that GWU collected.

Here's a way of grabbing the URLs out of the CDX API, and consolidating them
(a URL can be crawled more than once).

```
curl 'http://web.archive.org/cdx/search/cdx?url=twitter.com/EPAScottPruitt/status&matchType=prefix' \
  | cut -f 3 -d ' ' \
  | perl -ne '/(status\/\d+$)/; print "https://twitter.com/EPAScottPruitt/$1\n";' \
  | sort \
  | uniq;
```

The CDX API can return the same URL with HTTP and HTTPS protocols so I used a
bit of Perl to account for that. If you know of a more elegant way to get this
information please share it. You can find the resulting list of URLs [here].

In addition to being a command line utility, you can also use [waybackprov] as a
small library. I wrote a small program to read the tweet URLs from a file and
then summarize the collections that were used to collect these individual
tweets:

<pre>
<code lang="python">
#!/usr/bin/env python3 

import collections
import waybackprov

coll_count = collections.Counter()

for line in open('pruitt_tweets.txt'):
    url = line.strip()
    for crawl in waybackprov.get_crawls(url, start_year=2017, end_year=2018, collapse=True):
        coll_count.update(crawl['collections'])

for coll_id, count in coll_count.most_common():
    print("%5i %s" % (count, coll_id))
</code>
</pre>

Here's what it found:

```text
 1026 liveweb
   38 ArchiveIt-Collection-5518
   38 GovWebDataArchive
   18 ArchiveIt-Collection-6793
   15 archiveitpartners
   15 warczone
   12 ArchiveIt-Collection-1632
   11 top_domains-07500
   11 ArchiveIt-Collection-6829
   10 ArchiveIt-Collection-5486
    7 archivebot
    7 ArchiveIt-Collection-9813
    6 ArchiveIt-Collection-9742
    4 ArchiveIt-Collection-6830
    4 ArchiveIt-Collection-2082
    4 twitterarchive
    4 ArchiveIt-Collection-8119
    3 ArchiveIt-Collection-9323
    3 aol.com
    3 nytimes.com
    2 ArchiveIt-Partner-89
    2 ArchiveIt-Collection-10270
    1 ArchiveIt-Collection-1657
    1 NO404-GDELT
    1 ArchiveIt-Collection-8905
    1 ArchiveIt-Collection-7319
    1 ArchiveIt-Collection-7310
    1 ArchiveIt-Collection-5456
    1 ArchiveIt-Collection-10284
    1 ArchiveIt-Collection-9430
    1 ArchiveIt-Partner-480
    1 ArchiveIt-Collection-2361
    1 ArchiveIt-Collection-3241
    1 ArchiveIt-Collection-2948
    1 ArchiveIt-Collection-10368
    1 ArchiveIt-Collection-10403
    1 ximm-collections-news-crawls-v3
```

So overwhelmingly (81%) of these individual tweets are being archived into the
[liveweb] collection, which is the collection that the Internet Archive's
[SavePageNow] function feeds into. In other words, there are either people or
bots that made sure that each of Scott Pruitt's tweets (all but 3?) were
archived. But who these kinds souls are is a mystery.

If you are interested I put the full JSON results of running [waybackprov] on
the tweet URLs up as a [gist].

### References

[Scott Pruitt]: https://en.wikipedia.org/wiki/Scott_Pruitt
[\@EPAScottPruit]: https://twitter.com/EPAScottPruit
[good record]: https://web.archive.org/web/20180601000000*/https://twitter.com/epascottpruitt
[appraisal]: https://www2.archivists.org/glossary/terms/a/appraisal 
[ArchiveIt]: https://archive-it.org/
[SavePageNow]: https://inkdroid.org/2018/05/19/spn/
[About this Capture]: https://blog.archive.org/2017/10/05/wayback-machine-playback-now-with-timestamps/
[waybackprov]: https://github.com/edsu/waybackprov
[focused_crawls]: https://archive.org/details/focused_crawls
[edgi_monitor]: https://archive.org/details/edgi_monitor
[Metadata API]: https://blog.archive.org/2013/07/04/metadata-api/
[Website Monitoring]: https://envirodatagov.org/website-monitoring/
[Environmental and Data Governance Initiative]: https://envirodatagov.org/
[don't appear]: https://projects.propublica.org/politwoops/user/EPAAWheeler
[collecting]: https://twitter.com/justin_littman/status/1016667098125348866
[Social Feed Manager]: https://gwu-libraries.github.io/sfm-ui/
[Politwoops]: https://projects.propublica.org/politwoops/
[David Van Duzer]: https://twitter.com/dvanduzer
[here]: https://gist.github.com/edsu/4542240c527f3dc3c9537481fd0a6a5e
[CDX API]: https://github.com/internetarchive/wayback/tree/master/wayback-cdx-server
[631]: https://twitter.com/justin_littman/status/1016667098125348866
[gist]: https://gist.github.com/edsu/afae4681841abe37e39ab3e5c5fb887b
[liveweb]: https://archive.org/details/liveweb
