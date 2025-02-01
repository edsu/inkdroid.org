---
layout: post
title: Recovering Vines from Web Archives
tags:
- web-archives
- vine
- social-media
- python
---

My previous work archiving Vine with ArchiveTeam

427 / 775 worked

Cute Goat

https://mltshp.com/p/12VWY

https://vine.co/v/OPMUexVnnrY

<figure>
<img class="img-fluid" src="/images/vine-wayback-mltshp.png">
<figcaption>Broken embed at mltshp.com</figcaption>
</figure>

<figure>
<img class="img-fluid" src="/images/vine-wayback-wayback.png">
<figcaption>Archived Vine in Wayback Machine</figcaption>
</figure>

<figure>
<img class="img-fluid" src="/images/vine-wayback-archive.png">
<figcaption>Extracted static HTML and MP4 files</figcaption>
</figure>


```shell
$ vine_wayback https://vine.co/v/OPMUexVnnrY
💾 saved https://vine.co/v/OPMUexVnnrY to /Users/edsu/OPMUexVnnrY

$ tree OPMUexVnnrY
OPMUexVnnrY
├── OPMUexVnnrY.json
├── OPMUexVnnrY.mp4
└── index.html
```

```python
import pathlib
import vine_wayback

for vine_url in open('vine-urls.txt'):
    vine_url = line.strip()
    vine_id = vine_url.split("/")[-1]
    
    output_dir = pathlib.Path("vines") / vine_id
    vine_wayback.download(url, output_dir=f"mltshp-vines/{vine_id}")
```

<figure>
<img class="img-fluid" src="/images/vine-wayback-fail.png">
<figcaption>Broken archive view in Wayback Machine</figcaption>
</figure>

<figure>
<img class="img-fluid" src="/images/vine-wayback-fail-again.png">
<figcaption>Looks like it was archived but <a href="https://web.archive.org/web/20180228020025/https://vine.co/v/ixPUbXr9mBv">doesn't play</a></figcaption>
</figure>

What is the method here, so people can repeat?

- raw html
- looking for metadata
- wayback module / cdx api
- sleeping
- request session and wayback session

ruby archiving tool
