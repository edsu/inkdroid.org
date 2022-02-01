---
title: Migration
layout: post
tags:
- web-archive
- preservation
- web
---

<figure>
  <a href="https://www.loc.gov/item/2021668430/">
    <img src="/images/wdl-item2.jpg">
  </a>
  <figcaption>
   <a href="https://www.loc.gov/item/2021668430/">Makian As It Appears from the Side of Ngofakiaha</a>
  </figcaption>
</figure>

While I worked at the Library of Congress more than a decade ago I had a small
hand in an initial prototype website called the [World Digital Library]. There
were lots of hands and minds involved in the project over time, but the
technical lead when I was working on it was [Dan Chudnov]...Dan really just
asked me to help out with some [Solr] things here and there. The technical work
was later picked up by [Chris Adams] who really took WDL to another level. WDL
provided a rich, high resolution user experience for the time as well as
multi-lingual access to a set curated cultural heritage objects from around the
world. 

I'm using the past tense here because I've just noticed that the project
ended its 10 years of development in 2021, and the items have now been
[migrated] into the Library of Congress general web collection. Here's a nice
[article] by Julie Stoner that explores some of the amazing maps that WDL
put on the web.

I'm really only mentioning it here because of the extra effort that the project
seem to have taken [late last year] to migrate and preserve the content when
the web application running at wdl.org was turned off. Their old wdl.org URLs
were mapped to new ones at loc.gov which is made available by the LC's primary
web publishing platform.

So old URLs that looked like:

[http://www.wdl.org/en/item/1/](http://www.wdl.org/en/item/1/)

now redirect permanently to URLs like:

[http://loc.gov/pictures/resource/cwpb.04326/](http://loc.gov/pictures/resource/cwpb.04326/)

Because WDL's item ids were a straightforward integer sequence (with a little bit of code)
you can see that it wasn't a simply a mechanical redirect, but involved an understanding of the object's type and where it lives in the LoC website:

```python
import requests

for i in range(1, 100):
    url = f'http://www.wdl.org/en/item/{i}/'
    resp = requests.get(url)
    print(f'{url} -> {resp.url}')
```

```text
http://www.wdl.org/en/item/1/ -> http://loc.gov/pictures/resource/cwpb.04326/
http://www.wdl.org/en/item/2/ -> http://loc.gov/pictures/resource/cph.3c11676/
http://www.wdl.org/en/item/3/ -> https://www.loc.gov/resource/g7962h.ct001480/
http://www.wdl.org/en/item/4/ -> http://loc.gov/pictures/resource/jpd.00049/
http://www.wdl.org/en/item/5/ -> https://www.loc.gov/resource/g5292d.ct001464/
http://www.wdl.org/en/item/6/ -> https://www.loc.gov/resource/g3291s.ct000341/
http://www.wdl.org/en/item/7/ -> https://www.loc.gov/item/2021668294
http://www.wdl.org/en/item/8/ -> http://loc.gov/pictures/resource/jpd.00023/
http://www.wdl.org/en/item/9/ -> http://loc.gov/pictures/resource/jpd.02560/
http://www.wdl.org/en/item/10/ -> http://loc.gov/pictures/resource/jpd.02593/
http://www.wdl.org/en/item/11/ -> http://loc.gov/pictures/resource/jpd.01590/
http://www.wdl.org/en/item/12/ -> http://loc.gov/pictures/resource/cph.3g05585/
http://www.wdl.org/en/item/13/ -> http://loc.gov/pictures/resource/jpd.02590/
http://www.wdl.org/en/item/14/ -> http://loc.gov/pictures/resource/cph.3g05179/
http://www.wdl.org/en/item/15/ -> http://loc.gov/pictures/resource/cph.3b39303/
http://www.wdl.org/en/item/16/ -> https://hdl.loc.gov/loc.wdl/wdl.16
http://www.wdl.org/en/item/17/ -> http://loc.gov/pictures/resource/ppmsca.09409/
http://www.wdl.org/en/item/18/ -> https://www.loc.gov/item/2018694150
http://www.wdl.org/en/item/19/ -> http://loc.gov/pictures/resource/cph.3a20594/
http://www.wdl.org/en/item/20/ -> https://www.loc.gov/resource/g9112g.ct000136/
http://www.wdl.org/en/item/21/ -> https://www.loc.gov/resource/g4390.ct000658/
http://www.wdl.org/en/item/22/ -> https://www.loc.gov/item/2021668295
http://www.wdl.org/en/item/23/ -> https://www.loc.gov/item/05039321
http://www.wdl.org/en/item/24/ -> https://www.loc.gov/resource/g3420.np000010/
http://www.wdl.org/en/item/25/ -> https://www.loc.gov/resource/g5104r.ct000290/
http://www.wdl.org/en/item/26/ -> https://www.loc.gov/item/05014113
http://www.wdl.org/en/item/27/ -> https://www.loc.gov/item/2018689252
http://www.wdl.org/en/item/28/ -> https://www.loc.gov/item/47043560
http://www.wdl.org/en/item/29/ -> http://loc.gov/pictures/resource/ppmsc.00048/
http://www.wdl.org/en/item/30/ -> https://www.loc.gov/item/2021667140
http://www.wdl.org/en/item/31/ -> https://www.loc.gov/item/2021667141
http://www.wdl.org/en/item/32/ -> https://www.loc.gov/resource/g3290.ct000342/
http://www.wdl.org/en/item/33/ -> http://loc.gov/pictures/resource/ppmsca.05242/
http://www.wdl.org/en/item/34/ -> https://www.loc.gov/item/2018689275
http://www.wdl.org/en/item/35/ -> https://www.loc.gov/item/00694368
http://www.wdl.org/en/item/36/ -> https://www.loc.gov/item/2021667142
http://www.wdl.org/en/item/37/ -> https://www.loc.gov/resource/g7420.ct001233/
http://www.wdl.org/en/item/38/ -> https://www.loc.gov/item/2018689279
http://www.wdl.org/en/item/39/ -> https://www.loc.gov/resource/g5700.ct001836/
http://www.wdl.org/en/item/40/ -> https://www.loc.gov/resource/g6030.ct002033/
http://www.wdl.org/en/item/41/ -> https://www.loc.gov/resource/g3701e.ct000244/
http://www.wdl.org/en/item/42/ -> https://www.loc.gov/item/2018689240
http://www.wdl.org/en/item/43/ -> https://www.loc.gov/item/2021669211
http://www.wdl.org/en/item/44/ -> https://www.loc.gov/resource/g7824b.ct001942/
http://www.wdl.org/en/item/45/ -> https://www.loc.gov/item/2018689262
http://www.wdl.org/en/item/46/ -> https://www.loc.gov/item/49036430
http://www.wdl.org/en/item/47/ -> https://www.loc.gov/resource/g7431f.ct000197/
http://www.wdl.org/en/item/48/ -> https://www.loc.gov/item/2021668296
http://www.wdl.org/en/item/49/ -> https://www.loc.gov/resource/g5730.ct000158/
http://www.wdl.org/en/item/50/ -> https://www.loc.gov/resource/g5701s.ct000157/
http://www.wdl.org/en/item/51/ -> https://www.loc.gov/resource/g8500.ct000161/
http://www.wdl.org/en/item/52/ -> https://www.loc.gov/resource/g5332m.ct000276/
http://www.wdl.org/en/item/53/ -> https://www.loc.gov/resource/g8220.ct000287/
http://www.wdl.org/en/item/54/ -> https://www.loc.gov/resource/g7900.ct001310/
http://www.wdl.org/en/item/55/ -> https://www.loc.gov/resource/g8200.ct001194/
http://www.wdl.org/en/item/56/ -> https://www.loc.gov/resource/g8960.ct000508/
http://www.wdl.org/en/item/57/ -> https://www.loc.gov/resource/g4850.ma001008/
http://www.wdl.org/en/item/58/ -> https://www.loc.gov/resource/g7520.ct001376/
http://www.wdl.org/en/item/59/ -> https://www.loc.gov/resource/g8651f.ct001277/
http://www.wdl.org/en/item/60/ -> http://loc.gov/pictures/resource/ppmsc.03154/
http://www.wdl.org/en/item/61/ -> http://loc.gov/pictures/resource/ppmsc.03073/
http://www.wdl.org/en/item/62/ -> https://www.loc.gov/resource/g3301p.ct000852/
http://www.wdl.org/en/item/63/ -> https://www.loc.gov/resource/g8631s.ct000154/
http://www.wdl.org/en/item/64/ -> http://loc.gov/pictures/resource/ppmsc.03075/
http://www.wdl.org/en/item/65/ -> https://www.loc.gov/resource/g5302g.ct001793/
http://www.wdl.org/en/item/66/ -> https://www.loc.gov/item/2018693879
http://www.wdl.org/en/item/67/ -> https://hdl.loc.gov/loc.wdl/wdl.67
http://www.wdl.org/en/item/68/ -> https://www.loc.gov/item/2018689265
http://www.wdl.org/en/item/69/ -> https://www.loc.gov/resource/g7900.ct001430/
http://www.wdl.org/en/item/70/ -> https://www.loc.gov/item/2018689232
http://www.wdl.org/en/item/71/ -> https://www.loc.gov/resource/g5290.ct000872/
http://www.wdl.org/en/item/72/ -> https://hdl.loc.gov/loc.wdl/wdl.72
http://www.wdl.org/en/item/73/ -> https://www.loc.gov/item/2021669212
http://www.wdl.org/en/item/74/ -> https://www.loc.gov/item/2021669213
http://www.wdl.org/en/item/75/ -> https://www.loc.gov/resource/g7960.ct001195/
http://www.wdl.org/en/item/76/ -> https://www.loc.gov/item/2021669214
http://www.wdl.org/en/item/77/ -> https://www.loc.gov/resource/g4922c.ar178800/
http://www.wdl.org/en/item/78/ -> https://www.loc.gov/item/31019605
http://www.wdl.org/en/item/79/ -> https://www.loc.gov/resource/g7100.ct000383/
http://www.wdl.org/en/item/80/ -> https://www.loc.gov/item/2021669215
http://www.wdl.org/en/item/81/ -> http://loc.gov/pictures/resource/fsa.8b29516/
http://www.wdl.org/en/item/82/ -> https://www.loc.gov/item/48031307
http://www.wdl.org/en/item/83/ -> http://loc.gov/pictures/resource/ppmsc.03122/
http://www.wdl.org/en/item/84/ -> https://www.loc.gov/resource/g8300.ct000421/
http://www.wdl.org/en/item/85/ -> https://www.loc.gov/item/2018689300
http://www.wdl.org/en/item/86/ -> https://www.loc.gov/item/2018694063
http://www.wdl.org/en/item/87/ -> https://www.loc.gov/item/00694367
http://www.wdl.org/en/item/88/ -> https://www.loc.gov/item/2021669216
http://www.wdl.org/en/item/89/ -> https://www.loc.gov/item/2018689235
http://www.wdl.org/en/item/90/ -> https://www.loc.gov/item/46031077
http://www.wdl.org/en/item/91/ -> https://www.loc.gov/item/2018689290
http://www.wdl.org/en/item/92/ -> http://loc.gov/pictures/resource/ppmsc.02273/
http://www.wdl.org/en/item/93/ -> https://www.loc.gov/resource/g6801e.ct001462/
http://www.wdl.org/en/item/94/ -> https://www.loc.gov/item/2018693941
http://www.wdl.org/en/item/95/ -> https://www.loc.gov/resource/g9801s.ct000808/
http://www.wdl.org/en/item/96/ -> https://www.loc.gov/item/2018693895
http://www.wdl.org/en/item/97/ -> https://www.loc.gov/item/2018694064
http://www.wdl.org/en/item/98/ -> https://www.loc.gov/item/2018694065
http://www.wdl.org/en/item/99/ -> https://www.loc.gov/item/2018693893
```

Although some of those Handle URLs appear to do nothing? Maybe they are still in the process of being registered? Perhaps the intention is for them to eventually point at institutions other than the Library of Congress, e.g. where the item originally came from?

These redirects are a *good thing* because there are lots of links from other places on the web to WDL at its old location, such as [Wikipedia]. Sure Wikipedia and Internet Archive will [routinely look for dead links] and rewrite them to point at the Wayback Machine. But there are more places on the web that continue to point to wdl.org. More importantly, if the resource is continuing to be cared for on the web I think it's better for the redirect to point to that location rather than some stale version in a "web archive" on another organization's website?

Just as an aside, I wonder if Wikipedia crawl their links looking for permanent redirects to update to? If there were a practice for this it would probably require some level of human curation, because permanent redirects can also suffer from *reference rot*, where the link now points at a page that has little to do with the original [@Zittrain:2014]. 

One interesting thing that LC also chose to do was create a [web archive] of what the WDL website looked like before it was shut down. I ran into the occasional CloudFlare error when trying to look at some pages, and the ones that worked were a bit sluggish, but I think I've come to expect this of web archives. It appears to be running a version of [OpenWayback]?

This web archive preserves something that is lost in the presentation in the LC website: the multilingual interface. As of this writing you can see wdl.org in the [search results] at DuckDuckGo, but I imagine these will start to disappear (by design) since these are [permanent redirects] which signal the search platform that these old URLs can be purged from their index.

<a href="https://duckduckgo.com/?t=ffab&q=site%3Awww.wdl.org&ia=web"><img src="/images/wdl-search.png" class="img-responsive"></img></a>

For some time I've had a small research project in the back of my mind to do a field study (or two) with organizations that are planning or executing a content migration, from one CMS to the other. I think it would be interesting to examine the types of conversations, planning and tradeoffs that go on. If you are planning a migration like this, and wouldn't mind having a weird social scientist / software developer interloper hanging around please let me know.

Finally this WDL migration also reminded me of an actual research project that I'm actually in the middle of: helping with some technical writing on the [WACZ specification] for the [Webrecorder] project.

Part of the hope of WACZ and tools like [ReplayWeb.page] is that it can be easier to mount web archives directly on the web. So instead of crawling www.wdl.org with Heretrix and ingesting that collected WARC data into OpenWayback, you could package up the collected WARC data into a WACZ, or perhaps a set of language specific WACZ files, and simply place the WACZ file in a web accessible location (e.g. an S3 bucket) with an HTML file of your choosing that uses the ReplayWeb.page [Web Component] (some JavaScript).

Or perhaps you instead (or in addition) take those WACZ files and give them to the organizations that donated the materials in the first place, for them to place on the web? Here are some [examples] of what that can look like that Webrecorder put together for Stanford University Press. Making web archives more portable, while retaining their integrity and accessibility, is important work that the Webrecorder project is engaged with--largely through the efforts of [Ilya Kreymer] who deserves a lot of credit for advancing and innovating web archiving practice.

### References


[migrated]: https://www.loc.gov/collections/world-digital-library/about-this-collection/
[web archive]: https://www.loc.gov/item/lcwaN0018836/
[Chris Adams]: https://chris.improbable.org/
[Dan Chudnov]: https://www.linkedin.com/in/dchud/
[OpenWayback]: https://github.com/iipc/openwayback
[late last year]: https://web.archive.org/web/20210401000000*/https://www.wdl.org
[Wikipedia]: https://en.wikipedia.org/w/index.php?title=Special:LinkSearch&limit=500&offset=0&target=http%3A%2F%2Fwww.wdl.org%2F
[search results]: https://duckduckgo.com/?t=ffab&q=site%3Awww.wdl.org&ia=web
[permanent redirects]: https://en.wikipedia.org/wiki/HTTP_301
[article]: https://blogs.loc.gov/maps/2021/10/magnificent-maps-from-the-world-digital-library/
[Webrecorder]: https://webrecorder.net/2022/01/18/grant-update-standards-and-design-research.html
[WACZ specification]: https://webrecorder.github.io/wacz-spec/1.2.0/
[examples]: https://sup.webrecorder.net/enchanting-the-desert.html
[ReplayWeb.page]: https://ReplayWeb.page
[Web Component]: https://replayweb.page/docs/embedding
[browsertrix-crawler]: https://github.com/webrecorder/browsertrix-crawler
[World Digital Library]: https://en.wikipedia.org/wiki/World_Digital_Library
[routinely look for dead links]: https://www.wired.com/story/internet-archive-wikipedia-more-reliable/
[Ilya Kreymer]: https://www.linkedin.com/in/ilya-kreymer-55110093
[Solr]: https://solr.apache.org/
