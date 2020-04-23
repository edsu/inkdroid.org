---
layout: post
title: Studying the COVID-19 Web
tags:
- web archives
- virus
---

Off a tip from [Joan Donovan] and her team at the [Shorenstein Center] I've been
experimenting a bit lately to examine new domains related to the COVID-19
pandemic. I'm writing this blog post to document a way of using web archiving
tools like the [WARC] format and the [warcio] Python module, in the context of
[Jupyter Notebooks] as a way to study the web. I think we often consider WARC
as useful for saving what a page looks like so that it can be "played back"
later, using something akin to the Internet Archive's [Wayback
Machine](https://web.archive.org). But (as I hope you'll see) WARC is also a
useful and convenient method for storing web content along with critical
information about *how* it was retrieved, so you can study it later.

Specifically, I've been looking at domains that have been flagged by the
componay [DomainTools] who help other companies with brand protection, domain
monitoring, domain valuation, and cybercrime investigations. In late March
DomainTools [released] a public dataset of COVID-19 related domains that they
have flagged as being likely threats. Threats can include phishing scams, and
attacks, as well as attempts to capitalize on the pandemic.

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">To do our part in helping and supporting the <a href="https://twitter.com/hashtag/infosec?src=hash&amp;ref_src=twsrc%5Etfw">#infosec</a> community at this difficult time, we are providing a free, curated list of high-risk <a href="https://twitter.com/hashtag/COVID?src=hash&amp;ref_src=twsrc%5Etfw">#COVID</a>-19-related domains. The list will be updated daily and available for CSV download. To access this list visit: <a href="https://t.co/jth8EjjJLN">https://t.co/jth8EjjJLN</a> <a href="https://t.co/2XBJvim88h">pic.twitter.com/2XBJvim88h</a></p>&mdash; DomainTools (@DomainTools) <a href="https://twitter.com/DomainTools/status/1242874007768236040?ref_src=twsrc%5Etfw">March 25, 2020</a></blockquote>
</div>

<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

<style>
.twitter-tweet {
  margin-left: auto;
  margin-right: auto;
}
</style>

The DomainTools dataset is updated every day, and since April 5 I've been
downloading it and creating a snapshot [at the Internet Archive]. This dataset
is not only a unique picture of the use of web platforms to capitalize on the
Coronavirus crisis, but also provides a rare (but narrow) view into the
operations of a cybersecurity firm.

Given the [news] of how [Shopify] is being used by various actors to make money
off of the crisis I thought it could be interesting to look at the DomainTools
data, and see how prevalent Shopify sites were.

The first step is to collect the homepages for these domains. In this [Jupyter
notebook](https://github.com/edsu/covid19-domains/blob/master/Archive.ipynb) I
used the [warcio](https://github.com/webrecorder/warcio) library from the
[Webrecorder](https://webrecorder.io) project to walk through the domains, and
fetch the homepage, and write the data to a WARC file. The notebook contains
some logic for probing where the homepage for a domain might be, but you can see
the basics of how easy it is to write to a WARC file as you crawl the web
[in the warcio documentation](https://github.com/webrecorder/warcio#quick-start-to-writing-a-warc).

Using warcio here is very useful because it means I don't have to manage writing
the HTTP responses to disk myself. In addition the WARC data contains the full
HTTP transaction history (including HTTP headers) to the file as well. It took a
good week to collect the over 100,000 domains that DomainTools had marked with a
high threat score (99). This is because I did it in the simplest possible way,
one domain at a time, and a fair number (26,335) no longer had responsive web
servers running. 

With the WARC data in hand I then worked in [this
notebook](https://github.com/edsu/covid19-domains/blob/master/Shopify.ipynb) to
scan the HTTP responses looking for evidence of Shopify. Just reading the file
line by line showed that indeed there were quite a few sites that set a Shopify
cookie, that is used in their [analytics
tracking](https://www.shopify.com/legal/cookies):

```text
Set-Cookie: _shopify_y=53b92b06-c72e-40a3-a64e-d6b0f81b6c47; path=/; expires=Thu, 14 Apr 2022 01:41:58 GMT
```

Given that little hint it's then possible to read the WARC data using warcio,
and identify domains that appear to be served up using Shopify using some code
like this (see the notebook for the details):

```python
from warcio.archiveiterator import ArchiveIterator

shopify_urls = []

with open('warc.gz') as stream:
    for r in ArchiveIterator(stream):
        if r.rec_type == 'response':
            url = r.rec_headers.get_header('WARC-Target-URI')
            cookie = r.http_headers.get_header('Set-Cookie', '')
            if '_shopify_y' in cookie:
                shopify_urls.append(url)
```

This found 372 domains. Joining this list back up with the DomainTools data lets
us see how these shops have been created over time, with the caveat that the
created time could be when the domain was registered or when DomainTools first
noticed the domain.

<img class="img-responsive" src="/images/covid19-shopify.png">

So it looks like they peaked on March 15. But if we compare that graph to the
graph of all the domains being tracked by DomainTools we can see it coincides
roughly with the general trend in domains that DomainTools is tracking:

<img class="img-responsive" src="/images/covid19-domains.png">

It's important to stress that what we are seeing here is as much (perhaps more)
a picture of *how* DomainTools collects, analyzes and classifies DNS, as it is a
picuture of the Coronavirus web. You can find the chart generation for these
graphs in their notebooks.

Given that Shopify claims to have started blocking shops that sold testing
equipment I thought it could be interesting to see how many of the Shopify
websites mention "test kit". This is pretty easy to do with warcio with some
similar code, but this time looking at the content of the HTTP response when it
is HTML:

```python
import re

test_kit_urls = []

with open('warc.gz') as stream:
    for r in ArchiveIterator(stream):
        if r.rec_type == 'response':
            url = r.rec_headers.get_header('WARC-Target-URI')
            if 'html' in r.http_headers.get_header('Content-Type'):
                content = r.content_stream().read().decode('utf8', errors='ignore')
                if re.search('test kit', content, re.IGNORECASE):
                    test_kit_urls.append(url)
```

This found 388 domains, but only one appeared to be using Shopify:
rapidmedicalsystems.com. We can join this list as we did before back with the
original DomainTools data to see test-kit sites created over time, which largely
fits the same pattern we saw before.

<img class="img-responsive" src="/images/covid19-testkits.png">

If you are interested in inspecting these domains for yourself I've made a
[snapshot](/data/covid19-domains.csv.gz) of the DomainTools data with additional
columns for Shopify and Test Kits, to indicate if they tested true for either of
those.  A few caveats to note is that these domains were determined using the
2020-04-11 snapshot of the DomainTools dataset, and only domains that have were
flagged with the highest risk score of 99 (78% of the domains) were included.

[released]: https://www.domaintools.com/resources/blog/free-covid-19-threat-list-domain-risk-assessments-for-coronavirus-threats

[at the Internet Archive]: https://archive.org/details/domaintools-covid19

[news]: https://www.nytimes.com/2020/03/24/business/coronavirus-ecommerce-sites.html

[Joan Donovan]: https://twitter.com/bostonjoan

[Shorenstein Center]: https://shorensteincenter.org/

[DomainTools]: https://domaintools.com

[warcio]: https://github.com/webrecorder/warcio

[Jupyter Notebooks]: https://jupyter.org/

[WARC]: https://en.wikipedia.org/wiki/Web_ARChive

[Shopify]: https://shopify.com
