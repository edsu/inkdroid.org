---
layout: post
title: auto-archiver
tags:
- web-archive
- python
---

I spent a bit [more](https://inkdroid.org/2022/09/24/pdfs/) time this weekend adding [browsertrix-crawler](https://github.com/webrecorder/browsertrix-crawler) to Bellingcat's recently released [auto-archiver](https://www.bellingcat.com/resources/2022/09/22/preserve-vital-online-content-with-bellingcats-auto-archiver-tool/) utility. If you aren't familiar with auto-archiver it lets you control a web archiving utility using a Google Sheet, and has specialized "archivers" for different platforms, and falls back to creating an snapshot using Internet Archive's SavePageNow. It also will always create a screenshot.

My approach was to treat WACZ creation similar to how screenshots are created for all archiver plugins that access web pages. The WACZ is generated and then uploaded to the cloud storage. The beauty of WACZ means if the cloud storage is web accessible then you can view the web archive in [ReplayWebPage](https://replayweb.page). 

The benefit of creating a snapshot with browsertrix-crawler, as opposed to Internet Archive's SavePageNow is you are in possession of the created web archive data.

The WACZ contains the created WARC content that would have been created at the Internet Archive. The WACZ also has a [manifest](https://specs.webrecorder.net/wacz/1.1.1/#datapackage-json) that lets you verify that it is complete and hasn't been tampered with. You can control where this web archive content goes, and who can see it, whereas it needs to be public with SavePageNow.

Once there's a way to easily configure browsertrix-crawler using auto-archiver's config file, it should be possible to pass along a browser profile for archiving sites like Instagram that require a login. Also, as details about how to [sign WACZs](https://specs.webrecorder.net/wacz-auth/0.1.0/) are worked out it should be possible for auto-archiver to sign these WACZs with a public key so that they can be authenticated and verified.

It seems to be working ok, but needs a little bit more effort to make it easily configurable. You can see my resulting spreadsheet [here](https://docs.google.com/spreadsheets/d/1Tk-iJWzT9Sx2-YccuPttL9HcMdZEnhv_OR7Bc6tfeu8/edit#gid=0) which has two additional columns:

- WACZ: the location in cloud storage (in this case Amazon S3) where the WACZ was created.
- ReplayWebPage: a link to ReplayWeb.page using the WACZ URL and the URL that was archived to view the archive

If you want to give it a try [here](https://github.com/edsu/auto-archiver/tree/browsertrix-crawler) is my branch.
