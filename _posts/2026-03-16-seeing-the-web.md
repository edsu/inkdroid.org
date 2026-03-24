---
title: Ways of Seeing the Web
layout: post
tags:
- platforms
- web-archives
---

<figure>
  <a href="https://commons.wikimedia.org/wiki/File:Leica_Double-Gauss_Lens_Design.png"><img src="/images/lens.png" class="img-fluid"></a>
  <figcaption><a href="https://commons.wikimedia.org/wiki/File:Leica_Double-Gauss_Lens_Design.png">Leica Double-Gauss Lens Design</a></figcaption>
</figure>

The [news] about Cloudflare's new [pay-per-crawl API] caught my attention for a few reasons. Read on for why, a bit about what the results look like, and what I learned when I asked it to crawl this here site as a test.

---

So, first of all, what's up? Cloudflare's Crawl API helps people collect data from websites with bots, while *at the same time* providing one of the most popular technologies for preventing websites from being crawled by bots?!?

At first this seemed to me like a classic fox-guarding-the-hen-house type of situation. But the little bit of reading [in the docs] I've done since makes it seem like they will still respect their own bot gate keeping (e.g. Turnstile).

If you are using Cloudflare or some other bot mitigation technology you will have to follow their instructions to let the Cloudflare crawl bot in to collect pages. Interestingly, it appears they are using the latest specs for [HTTP Message Signatures] to provide this functionality, since you can't simply let in anyone saying they are `CloudflareBrowserRenderingCrawler` right?

The genius here is that Cloudflare is known for its Content Delivery Network (CDN). So in theory (more on this below) when a user asks to crawl a website the data can be delivered from the cache, without requiring a round trip back to the source website. In some situations this could mean that the burden of scrapers on websites is greatly reduced.

The introduction of a Crawl API also looks like another jigsaw piece fitting into place for how Cloudflare see web publishers [benefiting] from being crawled. Only time will tell if this strategy works out, but at least they have some semblance of a plan for the web that isn't simply sprinkling "AI" everywhere.

If you run a website with lots of high value resources for LLMs (academic papers, preprints, books, news stories, etc) the same cached content could be delivered to multiple parties without having to go back to the originating server. For resource constrained cultural heritage organizations that are currently getting [crushed by bots](https://www.404media.co/ai-scraping-bots-are-breaking-open-libraries-archives-and-museums/) I think this would be a welcome development.

But, the primary reason this news caught my eye is that if you squint right Cloudflare's Crawl API looks very much like [web archiving] technology. For example, the [Browsertrix API] lets you set up, start, monitor and download crawls of websites.

Unlike Browsertrix, which is geared to collecting a website for viewing by a person, the Cloudflare Crawl service is oriented at looking at the web for training LLMs. The service returns text content: HTML, Markdown and structured JSON data that result from running the collected text through one of their LLMs, with the given prompt.

### Seeing the Web

So why is it interesting that this is like web archiving technology?

Ok, maybe it isn't interesting to you, but (ahem) in my dissertation research [@Summers:2020a] I spent a lot of time (way too much time tbh) looking at how web archiving technology enacts different *ways of seeing* the web from an archival perspective. I spent a year with NIST's [National Software Reference Library] (NSRL) trying to understand how they were collecting software from the web, and how the tools they built embodied a particular way of seeing and valuing the web--and making certain things (e.g. software) legible [@Scott:1998].

What I found was that the NSRL was engaged in a form of web archiving, where the shape of the archival records was determined by their initial conditions of use (in their case, forensics analysis). But these initial forensic uses did not *overdetermine* the value of the records, which saw a variety of uses, disuses, and misuses later: such as when the NSRL began adding software from Stanford's [Cabrinety Archive], or when the teams personal expertise and interest in video games led them to focus on archiving content from the Steam platform.

So I guess you could say I was primed to be interested in how Cloudflare's Crawl service *sees* the web. This matters because models (LLMs, etc) and other services will be built on top of data that they've collected. But also because, if it succeeds, the service will likely get repurposed for other things.

### Testing

To test how Cloudflare sees the web, I simply asked it to crawl my own static website--the one that you are looking at right now. I did this for a few reasons:

1. It's a static website, and I know exactly how many HTML pages were on it. All the pages are directly discoverable since the homepage includes pagination links to an index page that includes each post. 
2. I can easily look at the server logs to see what the crawler activity looks like.
3. I don't use any kind of [Web Application Firewall] or other form of bot protection on my site (I do have a robots.txt but it doesn't block `CloudflareBrowserRenderingCrawler/1.0`)
4. I host my website on [May First] which doesn't use Cloudflare as a CDN. So the web content wouldn't intentionally be in Cloudflare's CDN already.

This methodology was adapted from previous work I did with [Jess Ogden] and [Shawn Walker] analyzing how the Internet Archive's [Save Page Now] service shapes what content is archived from the web [@Ogden:2023].

I wrote a little command line utility [cloudflare-crawl] to start, monitor and download the results from the crawl. While the crawler ran I simultaneously watched the server logs. Running the utility looks like this:

```shell
$ uvx https://github.com/edsu/cloudflare-crawl crawl https://inkdroid.org

created job 36f80f5e-d112-4506-8457-89719a158ce2
waiting for 36f80f5e-d112-4506-8457-89719a158ce2 to complete: total=1520 finished=837 skipped=1285
waiting for 36f80f5e-d112-4506-8457-89719a158ce2 to complete: total=1537 finished=868 skipped=1514
...
wrote 36f80f5e-d112-4506-8457-89719a158ce2-001.json
wrote 36f80f5e-d112-4506-8457-89719a158ce2-002.json
wrote 36f80f5e-d112-4506-8457-89719a158ce2-003.json
wrote 36f80f5e-d112-4506-8457-89719a158ce2-004.json
wrote 36f80f5e-d112-4506-8457-89719a158ce2-005.json
```

Each of the resulting JSON files contains some metadata for the crawl, as well as a list of "records", one for each URL that was discovered.

```json
{
  "success": true,
  "result": {
    "id": "36f80f5e-d112-4506-8457-89719a158ce2",
    "status": "completed",
    "browserSecondsUsed": 1382.8220786132817,
    "total": 1967,
    "finished": 1967,
    "skipped": 6862,
    "cursor": 51,
    "records": [
      {
        "url": "https://inkdroid.org/",
        "status": "completed",
        "metadata": {
          "status": 200,
          "title": "inkdroid",
          "url": "https://inkdroid.org/",
          "lastModified": "Sun, 08 Mar 2026 05:00:39 GMT"
        },
        "markdown": "..."
        "html": "...",
      },
      {
        "url": "https://www.flickr.com/photos/inkdroid",
        "status": "skipped"
      }
    ]
  }
}
```

### Analysis

I decided I wasn't very interested in testing their [model offerings], so I didn't ask for JSON content (the result of sending the harvested text through a model). If I had, each successful result would have had a `json` property as well. I am sure that people will use this, but I was more interested in how the service interacted with the source website, and wasn't interested in discovering the hard way how much it cost to run the content through their LLMs.

Below is a snippet of how the Cloudflare bot shows up in my nginx logs. As you can see the logs provide insight into what machine on the Internet is doing the request, what time it was requested, and what URL on the site is being requested.

```text
104.28.153.137 - - [12/Mar/2026:14:34:58 +0000] "GET /about/ HTTP/1.1" 200 5077 "-" "CloudflareBrowserRenderingCrawler/1.0"
104.28.153.137 - - [12/Mar/2026:14:34:58 +0000] "GET /css/main.css HTTP/1.1" 200 35504 "https://inkdroid.org/about/" "CloudflareBrowserRenderingCrawler/1.0"
104.28.153.137 - - [12/Mar/2026:14:34:58 +0000] "GET /css/highlight.css HTTP/1.1" 200 1225 "https://inkdroid.org/about/" "CloudflareBrowserRenderingCrawler/1.0"
104.28.153.137 - - [12/Mar/2026:14:34:58 +0000] "GET /css/webmention.css HTTP/1.1" 200 1238 "https://inkdroid.org/about/" "CloudflareBrowserRenderingCrawler/1.0"
104.28.153.137 - - [12/Mar/2026:14:34:58 +0000] "GET /images/feed.png HTTP/1.1" 200 8134 "https://inkdroid.org/about/" "CloudflareBrowserRenderingCrawler/1.0"
104.28.153.137 - - [12/Mar/2026:14:34:58 +0000] "GET /js/bootstrap.min.js HTTP/1.1" 200 17317 "https://inkdroid.org/about/" "CloudflareBrowserRenderingCrawler/1.0"
104.28.153.137 - - [12/Mar/2026:14:34:58 +0000] "GET /images/ehs-trees.jpg HTTP/1.1" 200 63047 "https://inkdroid.org/about/" "CloudflareBrowserRenderingCrawler/1.0"
104.28.153.137 - - [12/Mar/2026:14:34:59 +0000] "GET /js/highlight.min.js HTTP/1.1" 200 20597 "https://inkdroid.org/about/" "CloudflareBrowserRenderingCrawler/1.0"
```

So how did Cloudflare Crawl see my website?

Maybe it's early days for the service, but one thing I noticed is that each time I requested the site to be crawled the results seemed to be radically different.

| crawl time | completed | skipped | queued | errored | unique_urls |
|------------|--:|--:|--:|--:|--:|
| 2026-03-12 13:13:00 | 165 | 84 | 0 | 1 | 223 |
| 2026-03-12 13:44:00 | 72 | 4 | 2 | 0 | 78 |
| 2026-03-12 14:09:00 | 1947 | 7304 | 0 | 23 | 9191 |
| 2026-03-12 16:33:00 | 72 | 4 | 2 | 0 | 78 |
| 2026-03-12 17:34:00 | 1948 | 7365 | 0 | 22 | 9191 |
| 2026-03-13 16:50:00 | 1947 | 7363 | 0 | 23 | 9187 |
| 2026-03-14 07:32:00 | 72 | 4 | 2 | 0 | 78 |

The more successful crawls did a good job of crawling the entire site. My website is well linked, with a standard homepage, that has anchor tag based paging that includes links to all the posts. But knowing when your results are a partial crawl seems to be difficult. Knowing the actual dimensions of a "website" is one of the more difficult things about web archiving practice. The URLs that were labeled as "skipped" were not in scope for the crawl. If you wanted to include those apparently there is a `options.includeExternalLinks` option when [setting up] the crawl.

From watching the web server logs it was clear that:

1. Cloudflare *does* appear to be relying on previously cached data, but it's not entirely clear what the logic is. For example one crawl took 5 minutes to complete, it returned 1,974 completed results but the web server only saw requests for 594 of those URLs. I turned around and ran the exact same crawl again and it took 20 minutes longer, return 1,974 results, but 847 pages were requested. In between no content on the website changed. 🤷
2. Cloudflare appears to be fetching CSS, JavaScript and images for the rendering of each page (they aren't being cached by the Browser Worker).
3. The throughput on the web server seemed to peak around 300 requests / minute (5 requests / second). For most sites this seems perfectly feasible.

<a href="/images/cloudflare-requests.png"><img src="/images/cloudflare-requests.png" class="img-fluid"></a>

For the more successful crawls it looked like there were 246 independent IP addresses within Cloudflare's network block that were doing the crawling.

| ip | request_count |
|---|---|
| 104.28.153.88 | 405 |
| 104.28.163.131 | 266 |
| 104.28.161.242 | 232 |
| 104.28.165.231 | 223 |
| 104.28.153.132 | 212 |
| 104.28.163.132 | 212 |
| 104.28.163.81 | 201 |
| 104.28.166.65 | 188 |
| 104.28.166.121 | 186 |
| 104.28.164.201 | 185 |
| 104.28.153.179 | 182 |
| 104.28.153.137 | 178 |
| 104.28.164.202 | 172 |
| 104.28.161.243 | 172 |
| 104.28.166.127 | 163 |
| 104.28.165.232 | 155 |
| 104.28.153.119 | 153 |
| 104.28.165.14 | 151 |
| 104.28.153.83 | 148 |
| 104.28.153.140 | 145 |
| 104.28.153.87 | 145 |
| 104.28.153.55 | 143 |
| 104.28.153.136 | 142 |
| 104.28.163.133 | 132 |
| 104.28.153.118 | 131 |
| 104.28.166.58 | 130 |
| 104.28.163.78 | 126 |
| 104.28.160.31 | 125 |
| 104.28.153.139 | 124 |
| 104.28.161.245 | 124 |
| 104.28.163.214 | 123 |
| 104.28.153.120 | 123 |
| 104.28.165.230 | 121 |
| 104.28.153.180 | 121 |
| 104.28.164.156 | 119 |
| 104.28.153.96 | 119 |
| 104.28.153.64 | 112 |
| 104.28.153.133 | 111 |
| 104.28.166.128 | 111 |
| 104.28.153.128 | 109 |
| 104.28.166.126 | 104 |
| 104.28.165.17 | 103 |
| 104.28.165.18 | 103 |
| 104.28.160.30 | 103 |
| 104.28.153.134 | 101 |
| 104.28.166.120 | 101 |
| 104.28.153.129 | 101 |
| 104.28.153.181 | 100 |
| 104.28.153.86 | 100 |
| 104.28.165.229 | 100 |
| 104.28.163.134 | 99 |
| 104.28.164.203 | 99 |
| 104.28.162.194 | 98 |
| 104.28.166.62 | 98 |
| 104.28.163.212 | 98 |
| 104.28.153.123 | 97 |
| 104.28.164.154 | 97 |
| 104.28.166.61 | 97 |
| 104.28.161.246 | 96 |
| 104.28.153.92 | 96 |
| 104.28.166.125 | 96 |
| 104.28.153.68 | 93 |
| 104.28.159.23 | 92 |
| 104.28.153.76 | 91 |
| 104.28.153.71 | 91 |
| 104.28.153.124 | 90 |
| 104.28.158.143 | 88 |
| 104.28.165.21 | 88 |
| 104.28.153.94 | 87 |
| 104.28.166.118 | 86 |
| 104.28.161.133 | 84 |
| 104.28.153.85 | 82 |
| 104.28.164.152 | 82 |
| 104.28.163.77 | 82 |
| 104.28.153.148 | 79 |
| 104.28.164.150 | 79 |
| 104.28.165.12 | 79 |
| 104.28.161.201 | 79 |
| 104.28.153.183 | 78 |
| 104.28.160.65 | 78 |
| 104.28.153.126 | 77 |
| 104.28.153.138 | 77 |
| 104.28.159.133 | 76 |
| 104.28.165.20 | 75 |
| 104.28.158.137 | 75 |
| 104.28.153.56 | 75 |
| 104.28.153.81 | 74 |
| 104.28.153.131 | 73 |
| 104.28.153.59 | 72 |
| 104.28.166.60 | 72 |
| 104.28.166.66 | 69 |
| 104.28.159.120 | 69 |
| 104.28.153.53 | 68 |
| 104.28.153.185 | 68 |
| 104.28.153.191 | 67 |
| 104.28.166.119 | 66 |
| 104.28.153.95 | 64 |
| 104.28.165.76 | 64 |
| 104.28.154.20 | 62 |
| 104.28.153.121 | 57 |
| 104.28.158.142 | 57 |
| 104.28.160.68 | 56 |
| 104.28.163.177 | 56 |
| 104.28.153.80 | 56 |
| 104.28.161.215 | 55 |
| 104.28.161.244 | 55 |
| 104.28.153.62 | 55 |
| 104.28.166.134 | 55 |
| 104.28.153.122 | 54 |
| 104.28.165.19 | 53 |
| 104.28.153.127 | 53 |
| 104.28.159.118 | 53 |
| 104.28.157.166 | 53 |
| 104.28.153.226 | 53 |
| 104.28.157.169 | 52 |
| 104.28.159.111 | 48 |
| 104.28.153.196 | 48 |
| 104.28.161.132 | 48 |
| 104.28.153.84 | 47 |
| 104.28.161.214 | 47 |
| 104.28.165.13 | 46 |
| 104.28.153.219 | 46 |
| 104.28.163.171 | 46 |
| 104.28.165.15 | 45 |
| 104.28.163.176 | 45 |
| 104.28.159.109 | 45 |
| 104.28.158.155 | 45 |
| 104.28.153.218 | 45 |
| 104.28.158.131 | 44 |
| 104.28.161.200 | 44 |
| 104.28.153.222 | 44 |
| 104.28.161.197 | 44 |
| 104.28.159.74 | 44 |
| 104.28.158.139 | 44 |
| 104.28.158.138 | 44 |
| 104.28.153.235 | 43 |
| 104.28.153.106 | 43 |
| 104.28.164.160 | 43 |
| 104.28.153.57 | 38 |
| 104.28.159.119 | 37 |
| 104.28.163.82 | 36 |
| 104.28.153.197 | 36 |
| 104.28.153.93 | 36 |
| 104.28.160.25 | 35 |
| 104.28.153.78 | 34 |
| 104.28.153.72 | 34 |
| 104.28.153.125 | 34 |
| 104.28.153.61 | 34 |
| 104.28.166.131 | 34 |
| 104.28.158.132 | 33 |
| 104.28.159.135 | 33 |
| 104.28.160.34 | 33 |
| 104.28.163.220 | 33 |
| 104.28.153.77 | 33 |
| 104.28.166.135 | 33 |
| 104.28.164.155 | 33 |
| 104.28.163.213 | 33 |
| 104.28.158.136 | 33 |
| 104.28.160.121 | 33 |
| 104.28.157.174 | 33 |
| 104.28.165.71 | 33 |
| 104.28.153.130 | 33 |
| 104.28.163.76 | 32 |
| 104.28.160.32 | 32 |
| 104.28.160.64 | 32 |
| 104.28.153.89 | 32 |
| 104.28.159.110 | 32 |
| 104.28.163.172 | 32 |
| 104.28.154.18 | 32 |
| 104.28.163.178 | 31 |
| 104.28.166.124 | 30 |
| 104.28.165.114 | 25 |
| 104.28.153.182 | 25 |
| 104.28.166.132 | 25 |
| 104.28.159.108 | 24 |
| 104.28.165.75 | 24 |
| 104.28.157.171 | 24 |
| 104.28.153.240 | 23 |
| 104.28.164.204 | 23 |
| 104.28.153.108 | 23 |
| 104.28.159.24 | 22 |
| 104.28.157.242 | 22 |
| 104.28.153.63 | 22 |
| 104.28.153.105 | 22 |
| 104.28.159.229 | 22 |
| 104.28.158.130 | 22 |
| 104.28.164.213 | 22 |
| 104.28.159.136 | 22 |
| 104.28.164.158 | 22 |
| 104.28.157.83 | 22 |
| 104.28.153.107 | 22 |
| 104.28.159.83 | 22 |
| 104.28.157.172 | 22 |
| 104.28.157.82 | 22 |
| 104.28.158.145 | 22 |
| 104.28.162.93 | 22 |
| 104.28.163.174 | 22 |
| 104.28.153.98 | 22 |
| 104.28.157.170 | 21 |
| 104.28.158.126 | 21 |
| 104.28.165.74 | 21 |
| 104.28.153.216 | 21 |
| 104.28.159.112 | 21 |
| 104.28.161.199 | 14 |
| 104.28.153.194 | 13 |
| 104.28.154.15 | 13 |
| 104.28.159.232 | 13 |
| 104.28.166.59 | 13 |
| 104.28.159.150 | 12 |
| 104.28.165.72 | 12 |
| 104.28.158.252 | 12 |
| 104.28.153.104 | 12 |
| 104.28.158.254 | 11 |
| 104.28.158.129 | 11 |
| 104.28.153.58 | 11 |
| 104.28.162.195 | 11 |
| 104.28.160.28 | 11 |
| 104.28.159.115 | 11 |
| 104.28.158.255 | 11 |
| 104.28.153.214 | 11 |
| 104.28.153.67 | 11 |
| 104.28.160.29 | 11 |
| 104.28.153.195 | 11 |
| 104.28.164.153 | 11 |
| 104.28.160.23 | 11 |
| 104.28.160.24 | 11 |
| 104.28.159.114 | 11 |
| 104.28.160.27 | 11 |
| 104.28.160.66 | 11 |
| 104.28.157.175 | 11 |
| 104.28.157.173 | 11 |
| 104.28.159.122 | 11 |
| 104.28.154.12 | 11 |
| 104.28.160.33 | 11 |
| 104.28.164.159 | 11 |
| 104.28.163.170 | 11 |
| 104.28.165.11 | 11 |
| 104.28.154.17 | 10 |
| 104.28.163.222 | 10 |
| 104.28.159.121 | 2 |
| 104.28.157.243 | 2 |
| 104.28.153.73 | 2 |
| 104.28.157.233 | 2 |
| 104.28.153.54 | 2 |
| 104.28.158.146 | 2 |
| 104.28.163.169 | 2 |

I spot checked some of the HTML and it did appear to be near identical to what was on the live web. With the fullest results I noticed 4% of URLs were not crawled. One exception to that was a few XML files like an OPML and RSS feed which only showed the XSL element in the text and markdown results.

I think there are a few directions this could go from here:

1. testing what happens when instructing the crawl to collect (instead of skip) pages that are off site
2. testing what happens with more dynamic content, and how much to wait for pages to render
3. trying to understand why truncated results come back sometimes, and if there are any signals for identifying when it is happening.
4. explore more what the logic Cloudflare is using to determine when it can use its internal cache.

One thing I didn't mention is that the Cloudflare free plan limits you to maximum of 100 pages per crawl. I set up a \$5/month paid plan account in order to do this testing. In all my testing I only seemed to use 0.7 of "browser hours" which will fit well within the 10 hours allowed per month. It currently costs \$0.09 / hour when you exceed your limit.

PS. If you are curious the Marimo notebook I was using for some of the analysis can be found [here](https://github.com/edsu/cloudflare-crawl/blob/main/analysis/analysis.py).

### References

[news]: https://developers.cloudflare.com/changelog/post/2026-03-10-br-crawl-endpoint/
[pay-per-crawl API]: https://developers.cloudflare.com/browser-rendering/rest-api/crawl-endpoint/
[dissertation research]: https://drum.lib.umd.edu/items/444a796f-4ea6-4070-a2b4-888f8b844141
[National Software Reference Library]: https://www.nist.gov/itl/ssd/software-quality-group/national-software-reference-library-nsrl
[cloudflare-crawl]: https://github.com/edsu/cloudflare-crawl
[Browsertrix API]: https://docs.browsertrix.com/api/
[web archiving]: https://en.wikipedia.org/wiki/Web_archiving
[National Software Reference Library]: https://www.nist.gov/itl/ssd/software-quality-group/national-software-reference-library-nsrl
[model offerings]: https://developers.cloudflare.com/workers-ai/models/
[May First]: https://mayfirst.org
[Web Application Firewall]: https://en.wikipedia.org/wiki/Web_application_firewall
[Cabrinety Archive]: https://archives.stanford.edu/catalog/m0997 
[Jess Ogden]: https://www.bristol.ac.uk/people/person/Jessica-Ogden-495bb6e8-03fc-4edf-be6a-996010229441/
[Shawn Walker]: https://search.asu.edu/profile/3162226
[setting up]: https://developers.cloudflare.com/browser-rendering/rest-api/crawl-endpoint/#optional-parameters
[Save Page Now]: https://web.archive.org/save/
[HTTP Message Signatures]: https://www.rfc-editor.org/rfc/rfc9421
[in the docs]: https://developers.cloudflare.com/browser-rendering/rest-api/crawl-endpoint/#robotstxt-and-bot-protection
[benefiting]: https://blog.cloudflare.com/introducing-pay-per-crawl/
