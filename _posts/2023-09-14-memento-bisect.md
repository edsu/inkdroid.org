---
layout: post
title: Memento Bisect
tags:
- web-archives
- python
- command-line
---

[Quite a few websites](https://originality.ai/blog/study-websites-blocking-gptbot) have decided to block OpenAI from crawling their content, including [The New York Times](https://www.theverge.com/2023/8/21/23840705/new-york-times-openai-web-crawler-ai-gpt) and [The Guardian](https://www.theguardian.com/technology/2023/aug/25/new-york-times-cnn-and-abc-block-openais-gptbot-web-crawler-from-scraping-content). This is basically them saying: "Actually no, please don't take our intellectual property, and resell it, thank you very much.".

While reading these stories I thought it would be a bit of fun to use the Internet Archive's [Wayback Machine](https://web.archive.org) to identify *approximately* when the New York Times started blocking GPTBot by looking at the snapshots of their *robots.txt* file.

Once you know which versions to [diff](https://en.wikipedia.org/wiki/Diff) it's pretty easy to see. But finding the right versions requires some wandering around in the [list of snapshots](https://web.archive.org/web/20230000000000*/https://www.nytimes.com/robots.txt). I finally came up with the two versions which I could download using the "raw" URL (note the `id_` in the URL pattern), and then diff with a tool like [vimdiff](https://vimdoc.sourceforge.net/htmldoc/diff.html) (RIP [Bram Moolenaar](https://en.wikipedia.org/wiki/Bram_Moolenaar)):

```bash
$ wget -q -O robots-20230817.txt https://web.archive.org/web/20230817012138id_/https://www.nytimes.com/robots.txt
$ wget -q -O robots-20230818.txt https://web.archive.org/web/20230818012335id_/https://www.nytimes.com/robots.txt
$ vimdiff robots-20230817.txt robots-2023-0818.txt
```

<a href="/images/nytimes-vimdiff.png"><img class="img-fluid"
src="/images/nytimes-vimdiff.png"></a>

It occurred to me while doing this that it might be helpful to have a tool
similar to [git bisect](https://git-scm.com/docs/git-bisect) that would
methodically search the list of versions for a page in a particular web
archive, looking for some text to be present or missing.

When mentioning this over [in the Fediverse](https://social.coop/@edsu/111025660642054642) I learned about recent work that [Lesley Frew](https://digipres.club/@Lesley) has been doing at Old Dominion University to model and visualize the changes to websites that are stored in web archives [@Frew:2023].

She has been studying how journalists and researchers, such as those associated with the [Environmental Data Governance Initiative](https://edgi.org/), need to be able to find and visualize changes to web content. EDGI's [Web Monitoring](https://envirodatagov.org/website-governance/monitoring-team/) project has been using empirical data collected from the web to help them ground their research and reporting around environmental data access issues.

There are [various services](https://duckduckgo.com/?t=ffab&q=tracking+web+content+changes+services&ia=web) for tracking how web content changes over time. But they tend to be oriented around security use cases, and not questions about how discourse changes over time, sometimes beyond the document level. I'm interested to see where Frew's work goes from here since it does seem like an underexplored HCI topic that is somewhat uniquely situated for hypermedia archives.

In designing a solution Frew extended other technical work  done to address full text search in web archives ([SolrWayback](https://github.com/netarchivesuite/solrwayback)). Having a text index of some kind seems like it would be essential for interactively analyzing and viewing a large number of documents and changes efficiently.

I was imagining something lighter weight that would use the Memento support ([RFC 7089](https://www.rfc-editor.org/rfc/rfc7089)) in a web archive to dynamically get a list of the snapshots for a given web resource over time, also known as its "Time Map". With that list in hand, you can ensure it is sorted by date, and then perform a binary search looking for the text that was missing. It's worth pointing out that this approach is much slower, since the data needs to be pulled on demand, instead of assembling a database to be queried.

So this method is similar in principle to using [git bisect](https://www.git-tower.com/learn/git/faq/git-bisect/) to find when a bug was introduced. But instead of running a test to test if the bug exists, the page can be evaluated by a person, or in the case of simple text search, the page can be rendered and searched.

The nice thing about using Memento instead of Wayback Machine specific URLs, or their [CDX API](https://github.com/internetarchive/wayback/tree/master/wayback-cdx-server), is that the same tool can work on other Memento supporting web archives, like the [UK Web Archive](https://www.webarchive.org.uk/en/ukwa/), or the [Stanford Web Archive Portal](https://swap.stanford.edu).

I called the tool [memento-cli](https://github.com/edsu/memento-cli) which you can install:

```
$ pip install memento-cli
```

The simplest way to use the new `memento` command is with an archive URL (aka Memento) such as `https://web.archive.org/web/20230407140923/https:/help.twitter.com/en/rules-and-policies/hateful-conduct-policy` to list all the other snapshots that are available:

```bash
$ memento list https://web.archive.org/web/20230407140923/https:/help.twitter.com/en/rules-and-policies/hateful-conduct-policy
2017-12-29 05:40:51 https://web.archive.org/web/20171229054051/https://help.twitter.com/en/rules-and-policies/hateful-conduct-policy
2018-01-03 20:03:00 https://web.archive.org/web/20180103200300/https://help.twitter.com/en/rules-and-policies/hateful-conduct-policy
2018-01-04 06:39:58 https://web.archive.org/web/20180104063958/https://help.twitter.com/en/rules-and-policies/hateful-conduct-policy
2018-01-06 16:08:07 https://web.archive.org/web/20180106160807/https://help.twitter.com/en/rules-and-policies/hateful-conduct-policy
2018-01-12 06:10:07 https://web.archive.org/web/20180112061007/https://help.twitter.com/en/rules-and-policies/hateful-conduct-policy
2018-01-12 17:40:16 https://web.archive.org/web/20180112174016/https://help.twitter.com/en/rules-and-policies/hateful-conduct-policy
2018-01-12 18:40:34 https://web.archive.org/web/20180112184034/https://help.twitter.com/en/rules-and-policies/hateful-conduct-policy
2018-01-12 19:11:48 https://web.archive.org/web/20180112191148/https://help.twitter.com/en/rules-and-policies/hateful-conduct-policy
2018-01-20 19:05:57 https://web.archive.org/web/20180120190557/https://help.twitter.com/en/rules-and-policies/hateful-conduct-policy
2018-01-20 19:19:20 https://web.archive.org/web/20180120191920/https://help.twitter.com/en/rules-and-policies/hateful-conduct-policy
...
```

Since *memento* works with any RFC 7089 supporting archive you can use it to list versions in other web archives as well:

```bash
$ memento list https://www.webarchive.org.uk/wayback/archive/20130501020401/http://www.vam.ac.uk/content/exhibitions/david-bowie-is/david-bowie-is-inside-the-exhibition/
2013-05-01 02:03:57 https://www.webarchive.org.uk/wayback/archive/20130501020357mp_/http://www.vam.ac.uk/content/exhibitions/david-bowie-is/david-bowie-is-inside-the-exhibition
2013-05-01 02:04:01 https://www.webarchive.org.uk/wayback/archive/20130501020401mp_/http://www.vam.ac.uk/content/exhibitions/david-bowie-is/david-bowie-is-inside-the-exhibition/
2013-07-29 12:58:03 https://www.webarchive.org.uk/wayback/archive/20130729125803mp_/http://www.vam.ac.uk/content/exhibitions/david-bowie-is/david-bowie-is-inside-the-exhibition
2013-07-29 12:58:06 https://www.webarchive.org.uk/wayback/archive/20130729125806mp_/http://www.vam.ac.uk/content/exhibitions/david-bowie-is/david-bowie-is-inside-the-exhibition/
2021-01-22 06:38:21 https://www.webarchive.org.uk/wayback/archive/20210122063821mp_/http://www.vam.ac.uk/content/exhibitions/david-bowie-is/david-bowie-is-inside-the-exhibition/
2022-03-14 16:36:16 https://www.webarchive.org.uk/wayback/archive/20220314163616mp_/http://www.vam.ac.uk/content/exhibitions/david-bowie-is/david-bowie-is-inside-the-exhibition/
```

Things get more interesting when you want to search for a change. For example let's suppose you know that the [Twitter Hateful Conduct Policy](https://help.twitter.com/en/rules-and-policies/hateful-conduct-policy) used to have language about:

> women, people of color, lesbian, gay, bisexual, transgender, queer, intersex, asexual individuals
 
You can see it in the Internet Archive Wayback Machine [in 2019](https://web.archive.org/web/20190711134608/https://help.twitter.com/en/rules-and-policies/hateful-conduct-policy). But you can't see it [on the page in 2023](https://web.archive.org/web/20230621094005/https://help.twitter.com/en/rules-and-policies/hateful-conduct-policy). *This [is not](https://arstechnica.com/tech-policy/2023/04/twitter-quietly-edited-its-hateful-conduct-policy-to-drop-transgender-protections/) a contrived example.*

To identify when the change was introduced, you can *bisect* the version history to search for the version where the text went missing, using the two snapshots. This will perform a binary search between the two versions looking for the given text to go missing, and should eventually return with this snapshot: [https://web.archive.org/web/20230408115900/https://help.twitter.com/en/rules-and-policies/hateful-conduct-policy](https://web.archive.org/web/20230408115900/https://help.twitter.com/en/rules-and-policies/hateful-conduct-policy)

```bash
$ memento bisect --missing --text "women, people of color, lesbian, gay" \
  https://web.archive.org/web/20190711134608/https://help.twitter.com/en/rules-and-policies/hateful-conduct-policy \
  https://web.archive.org/web/20230621094005/https://help.twitter.com/en/rules-and-policies/hateful-conduct-policy
```

<figure>
<a href="/videos/memento-bisect.mp4"><video autoplay width="100%" src="/videos/memento-bisect.mp4"></a>
<figcaption>A (slow) video that shows the narrowing window of snapshots that are being searched as the binary search algorithm hones in on the commit.</figcaption>
</figure>

The *bisect* command uses a browser behind the scenes (Selenium) in order to fully render the page by executing JavaScript. If you wanted to find out when some text appears (rather than goes missing) then remove the `--missing` parameter from the command.

And if you would prefer to examine the pages in between manually, leave off the `--text` parameter and *memento* will prompt you to continue, and show you the browser it is controlling.

Finally if you would like to see the browser when using `--text` then use the `--show-browser` option.

Lesley Frew rightly pointed out to me that the tool could us the [Memgator API](https://github.com/oduwsdl/memgator/releases) to discover and search in snapshots across the a large set of web archives, rather than just one web archive. I didn't want *memento-api* to be tied to a specific service like Memgator, but I think this would be a good option to add?

You may notice in the little video above that it can take a while to retrieve snapshot data from web archives. Fully rendering the page also takes time, since Selenium will wait until all the requests for resources (images, javascript, css, etc) have settled. This is just how many web archives function unfortunately, and is why a tool like `memento bisect` is helpful. Please [let me know](https://inkdroid.org/about) what you think if you do try it out.

PS. Parsing RFC 6690 formatted links in Time Map is not trivial, and probably is a barrier for Memento adoption by clients? 

### References
