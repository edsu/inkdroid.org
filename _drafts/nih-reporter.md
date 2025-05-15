---
layout: post
title: Provenance for Web Data
tags:
- 
---

A few months ago I [wrote] a post about [Harvard Library Innovation Lab's efforts] to archive [data.gov], just before a swathe of US federal government datasets began to be aggressively taken down by the Trump administration. I mentioned at the end of that post that I was planning a follow-up about applying LIL's pattern of digitally signing BagIt packages to another dataset. What I had in mind at the time was to archive the [NIH Reporter] dataset, which some researchers had privately expressed concern about being a target for deletion.

Working with the NIH Reporter data highlighted for me that LIL's contribution with their data.gov archiving is less as a prescriptive set of rules for doing dataset preservation as much as it is a practical example of why it's important to:

1. Save datasets on the web as "files" rather than "web archives".
2. Record the provenance of where on the web data comes from.
3. Record who did the data collection.

In this post I'm just going to focus on the first two points. In some ways this post is the inverse of what Harvard LIL achieved with their data.gov project, in that I'm only going to talk about archiving a single dataset (NIH Reporter) rather than many thousands. This isn't meant to detract from LIL's work in any way, but just to point out that similar work can happen at different scales and with different tools. In a forthcoming post I plan to talk about issues around digitally signing data that Harvard LIL's work raised (3).

## Web Data

... something about why it's important to save data from the web as files, and not rely on what's in web archives ...

- ensuring that the data really is available and not behind clicks etc.
- easier to use download CSV files (etc) than extract them from WARC data (EDGI work in this area)

## Web Data Provenance

Just to recap, one of the core features of Harvard LIL's work archiving data.gov is that you 

## NIH Reporter

<a href="https://reporter.nih.gov">
  <img src="/images/nih-reporter.png" class="img-fluid">
</a>

The Research Portfolio Online Reporting Tools Expenditures and Results website, a.k.a. NIH RePORTER, is a repository of information about NIH-funded research projects, access publications and patents resulting from NIH funding. It provides a highly interactive dashboard for exploring this information, which includes maps that uses Google Maps API. It contains data going back into the 1980s. As you can imagine this data provides a unique snapshot of what types of research NIH have been funding for several decades.

These types of dashboards are practically impossible to archive using traditional web archiving methods because of the extremely large number of possible states that the dashboard can be put in, by simply altering the dashboard controls. Mapping interfaces in particular, which provide the ability to zoom and pan across the globe, are extremely difficult to archive. 

Fortunately, the National Institutes of Health were thinking ahead, and they make all the underlying data available via both an [API], and also as bulk downloads on the related [RePORTER ExPORTER](https://reporter.nih.gov/exporter) website.

Unfortunately, when you look at ExPORTER webpages [in the Internet Archive Wayback Machine] you can't actually download any of the data.

<a href="https://web.archive.org/web/20250218033928/https://reporter.nih.gov/exporter/projects">
  <img src="/images/nih-reporter-exporter-wayback.png" class="img-fluid">
</a>

The likely reason why these download files are missing is because the bot that crawled the page missed the download links, since they lack an `href` element.

```html
<a class="text-center" rel="noopener">
  <i class="fas fa-cloud-download-alt"></i>
</a>
```

It is only when you *click* one of these empty anchor tags that an event causes some JavaScript to run which then initiates the download of an appropriate ZIP file. Since iabot (the Internet Archive's web crawler) doesn't click these kinds of links the referenced data won't get archived.

I attempted to use browsertrix-crawler with a custom behavior to click the links, but I ran into issues where the crawler was shutting down prior to the downloads completing. Perhaps there was a setting I could have used to get around this, but in the end I decided to write a small program to download the links myself.

## Downloading the Data



```
nih-reporter-exporter-06 manifest has 174 entries and nih-reporter-exporter-02 has 175
filename: data/RePORTER_PRJ_C_FY2019.zip
nih-reporter-exporter-06 0de286c9cb98bd0f5ffddc772583ba1e9e812bc49c45c6f7096f44bcabc78428 59019748
nih-reporter-exporter-02 f04075d4d8ebf89783e370ac7454f9aa09f0f383cd6ae753b1a7f1d83f88e783 59028775

filename: data/RePORTER_PRJ_C_FY2016.zip
nih-reporter-exporter-06 1d1ebdf563688348a4a918fe791879d57e77b7c76b5faeefbd493b65425eb34e 50927212
nih-reporter-exporter-02 bb8ceb5e10d7796067d4d8ee168e8e8006c9ffe865a62cfc82d6a1a98bc42d1a 50936586

filename: data/RePORTER_PRJ_C_FY2018.zip
nih-reporter-exporter-06 3f44cf77f595ce2f20e798ba953957432fcfe47bfc4d73a372546dfc0267033e 57572050
nih-reporter-exporter-02 c24db8ffbe84c3c18795bb369dc43955dc3d6e2f826a7b903e134ab35483e6d8 57582216

filename: data/Patents.csv
nih-reporter-exporter-06 4865e7658665bf1525a8f3dfa6007ba2ec3ab0c26eee6d799379c009b219a2e3 10457040
nih-reporter-exporter-02 60523d843ae6760e80b1592c00a5fae0c36b9bb1699afb8e41f1a3d4cfeb8715 10411635

filename: data/RePORTER_PRJ_C_FY2020.zip
nih-reporter-exporter-06 49fbf6e03da78c09dfcc56215d34774fe43de9bed2e422ff9f8c87af2b76e516 62223412
nih-reporter-exporter-02 8ee39b27b6703918849806e308beaa0bf29bb11f9d15124f944313049d8fe74f 62231898

filename: data/RePORTER_PRJ_C_FY2023.zip
nih-reporter-exporter-06 5bd07456365b8b3537ed358bf0fc69f3ae58b05e47f00af3955167103f368d08 67942016
nih-reporter-exporter-02 aa449da9601b8e100c41220ac265dcb8d36bab59ddec4025cf4d86d30c70dd5f 67956080

filename: data/ClinicalStudies.csv
nih-reporter-exporter-06 658a641d604feddbd2158dbbefcc81923f129e0bd915b5ae335da71ef7f18613 4572305
nih-reporter-exporter-02 9c8876f93787d5f8fcf768b8f02e635601b2884ec7477a4db40a1fc8b5bddeb3 4517224

filename: data/RePORTER_PRJ_C_FY2017.zip
nih-reporter-exporter-06 6abb6449d94d5070e39963ce094483b7b353dd8e8388e982c7ccef7fbc0d5a39 52944232
nih-reporter-exporter-02 cc8a00332d353bafe0af781049e1450d834e884da58f3ce5219e0f7aed2b8baf 52953496

filename: data/headers.har
nih-reporter-exporter-06 945f235c59717008341602ab590e318fc065e6135a816480d4a283dfdfcbcae7 1525327
nih-reporter-exporter-02 cf0744e2b1db60eee53ee22c68d3ed61d8f50fde0b87611120197c3ab7f12e7d 1526945

filename: data/RePORTER_PRJ_C_FY2015.zip
nih-reporter-exporter-06 bfd790acee23da4df1960d9261c3d87ddf531b5406efd66c9d83c2d0dd79a532 50191491
nih-reporter-exporter-02 b786f86f23f0ac4e2544c9be375d7c7c7175c7571158c3f61d9728c83bf059c6 50198871

filename: data/RePORTER_PRJ_C_FY2021.zip
nih-reporter-exporter-06 d844502ccf732036cfc0f46fd07ed419f3032723b94b3780fcc960bfc8941ccb 63325244
nih-reporter-exporter-02 f6cf2bbf78440996705cc1853e248b9ba0b60eff2afc0c23a9425b18ddec35b5 63334815

filename: data/RePORTER_PRJ_C_FY2022.zip
nih-reporter-exporter-06 fb6f6fb30591d14d716be4c18a57a7de501e64c87aac0b614b2c7ab64f85b59f 65860205
nih-reporter-exporter-02 338598f73934d06c2a0ef9d539629413c8a64ca9ebae67e6fb1744f90d044eb1 65861208
```


[NIH Reporter]: https://reporter.nih.gov
[wrote]: https://inkdroid.org/2025/02/17/nabit/
[Harvard Library Innovation Lab's efforts]: https://lil.law.harvard.edu/blog/2025/02/06/announcing-data-gov-archive/
[API]: https://api.reporter.nih.gov/
[RePORTER ExPORTER]: https://reporter.nih.gov/exporter
[in the Internet Archive Wayback Machine]: https://web.archive.org/web/20250218033928/https://reporter.nih.gov/exporter/projects
[X.509]: https://en.wikipedia.org/wiki/X.509
[HAR]: https://en.wikipedia.org/wiki/HAR_(file_format)
