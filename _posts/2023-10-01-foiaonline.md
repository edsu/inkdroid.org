---
layout: post
title: What's left of FOIA Online?
tags:
- government
- foia
- publishing
- web-archives
---

The [foiaonline.gov](https://foiaonline.gov) service that has been used for over a decade to submit FOIA requests was turned off this past weekend (September 30, 2023).

FOIAonline was started in 2012 by the Environmental Protection Agency, and provided users with a single user interface for submitting FOIA requests to the EPA and multiple federal agencies. Users could track their requests as they were being processed, and when the request was successful they could view the resulting documents. The website allowed you to log in to create requests, but was completely searchable by the public without an account.

The Environmental Data Governance Initiative (EDGI) have documented the significance of this closure in multiple letters including [this one](https://envirodatagov.org/wp-content/uploads/2023/09/EDGI_Comment_FOIA_Advisory_Committee_2023-06-08.pdf) dated June 8, 2023 in which they say:

> At the most basic level, we are concerned about what the closure of FOIAonline might suggest
about a federal commitment to keep successfully disseminated documents available to a
broader public. Will formerly participating agencies be required to repost on their new FOIA
portals all of the records that had previously been made available through FOIAonline? Or will
the decommissioning of FOIAonline mean that the federal government is intentionally making
public records more challenging to access? If this decision were to render these documents
released from 2012 to 2023 accessible to only those within agencies, that would constitute a
retreat from the spirit of Freedom of Information laws. Even if a non-governmental entity were to
post a public archive of all these records from FOIAonline, that would effectively entail a
privatization of the federal government’s digital archive–with remarkably little, if any, public
scrutiny or discussion for such a far-reaching decision.
>
> In order to ensure that the decommissioning of FOIAonline is not a retreat in federal
transparency and that public access to information is maintained, not hindered, in this process,
the services offered by FOIAonline should be the baseline upon which to build and improve.
>
> We expect, in particular, these features to be preserved:
> 
> 1. The public posting of completed requests.  
> 2. The ability to search for completed requests, including across multiple agencies.  
> 3. The preservation of public access to the records that have already been made public through FOIAonline.  

More reaction to the closure, and what we can expect to see in the future can be found in [this MuckRock article](https://www.muckrock.com/news/archives/2023/sep/26/foiaonline-shutting-down/), which (ironically enough) draws in part on information learned from submitting FOIA requests with FOIAOnline.

From a web archiving perspective FOIAOnline presents significant challenges because the vast majority of the FOIAonline website content sits behind a search form. There is no index of requests that can easily be crawled, not even a [site map](https://en.wikipedia.org/wiki/Site_map).

I was late seeing the announcement of the closure last Friday, but thought I would see how easy it might be to collect information about the FOIA requests that had been made over the lifetime of the project.

The advanced search form allowed limiting by a variety of request fields, including a time range for when the request was received. Once the form was submitted some client side JavaScript did a POST to an API which returned up to 100 records that match the query. Here's an example of what one of the records looks like:

```json
{
  "additionalDisposition": null,
  "agency": "CBP",
  "agencyAcronym": "CBP",
  "agencyOrgChain": "CBP",
  "clockDays": 21,
  "closedDate": "2014-07-17T17:24:55Z",
  "description": "Pursuant to the federal Freedom of Information Act, 5 U.S.C. § 552, I request the following data for all alien children apprehended by U.S. Customs and Border Protection at the Southwest Border in fiscal years 2013 and 2014. (Fiscal year 2014 would be from Oct. 1, 2013 through May 31, 2014.):   -Age  -Gender  -Country of origin  -Border Patrol sector of apprehension (i.e. apprehended in the Rio Grande Sector)  -Accompanied status (i.e. whether or not the child was accompanied by a parent or guardian)  -Case status (i.e. removed, placed in removal proceedings, etc.)    For unaccompanied alien children apprehended by U.S. Customs and Border Protection at the Southwest Border over the same time period (FY 2013 and FY 2014, through May 31, 2014), I request the following:   -Whether the apprehended child was released to family located in the U.S.  -Whether the apprehended child is suspected to be a human trafficking victim.    I would like to receive the information in an electronic format.    If my request is denied in whole or part, I ask that you justify all deletions by reference to specific exemptions of the act. I will also expect you to release all segregable portions of otherwise exempt material.    As I am making this request as a journalist and this information is of timely value, I would appreciate your communicating with me by telephone or email, rather than by mail, if you have questions regarding this request.    I look forward to your response within the 20 working days, as outlined by the statute.",
  "descriptionFilter": null,
  "descriptionModified": null,
  "due": "2014-07-16T04:00:00Z",
  "exemptionsUsed": "",
  "finalDisposition": "Full Grant",
  "id": "7e36ab00-1a33-4cf4-b790-f371f7dad8d9",
  "originalTrackingNumber": null,
  "otherDisposition": null,
  "parentType": "Request",
  "phase": "Closed",
  "privateFlag": false,
  "received": "2014-06-13T18:37:54Z",
  "recordAuthor": null,
  "recordExemptionsUsed": null,
  "recordFileFormat": null,
  "recordId": null,
  "recordName": null,
  "recordReleaseDate": null,
  "recordRetentionPeriod": null,
  "recordSize": 0,
  "reportingYear": "2014",
  "requestType": "FOIA",
  "requester": "Mr. Jens Krogstad",
  "requesterOrg": "Pew Research Center",
  "trackingNumber": "CBP-2014-032009",
  "type": "Request",
  "dispositionsUsed": "Full Grant",
  "userCaseFileRequester": false,
  "_score": "NaN"
}
```

Paging in the results was possible using the same API, but if the total results exceeded 10,000 records they were truncated. Despite the fact that it came online in 2012, it was clear that there were records received going back as far as March 4, 2003?!

In order to work within the 10,000 limit I wrote a [program](https://github.com/edsu/foiaonline/blob/main/pull.py) to search week by week starting in March 2003 until September 30, 2023. The resulting JSON records were written as a line oriented JSON file (JSONL) which can also be found [on Github](https://github.com/edsu/foiaonline/) as well as in [this Internet Archive dataset](https://archive.org/details/foia-online-requests)

I did some basic analysis in [a Jupyter notebook](https://github.com/edsu/foiaonline/blob/main/Notebook.ipynb) to see what the shape of the data looked like. There are a total of 1,192,748 records, which were received in increasing amounts over time:

<a href="/images/foia-online-requests.png"><img class="img-fluid" src="/images/foia-online-requests.png"></a>

It wasn't initially clear what led to the precipitous fall off in October, 2022. I took a look at what agencies the requests were sent to:

<a href="/images/foia-online-agencies.png"><img class="img-fluid" src="/images/foia-online-agencies.png"></a>

I was initially surprised at the overwhelming number of requests for Customs and Border Patrol records, so I graphed those over time, which ended up answering the question of what happened in October, 2022. This appears to be when CBP stopped participating in FOIAonline?

<a href="/images/foia-online-cbp.png"><img class="img-fluid" src="/images/foia-online-cbp.png"></a>

I hope that having this dataset available will be useful to someone doing research about FOIAonline, and FOIA more generally.

But back to the topic of web archiving there is also the question of what remains of foiaonline.gov in the [Internet Archive's Wayback Machine](https://web.archive.org). Over in [my notebook](https://github.com/edsu/foiaonline/blob/main/Notebook.ipynb) I used the Wayback Machine API to query for all snapshots matching the prefix `https://foiaonline.gov/*`. It found 1,306,651 unique URLs had been archived. Which was pretty awesome considering the pages are sitting behind a form. 

However looking at the URLs only found 271,440 unique Tracking IDs, which is only 23% of the total records I found.

With this data in hand it's also possible to look at *when* foiaonline.gov was archived, which made it clear that the majority of the work happened very recently in September 2023 (note the logarithmic scale to make prior archiving legible):

<a href="/images/foia-online-archiveteam.png"><img class="img-fluid" src="/images/foia-online-archiveteam.png"></a>

Looking closer at a few of the snapshots then shows that the ArchiveTeam have been working to get these pages archived documented some of this work on [their wiki page](https://wiki.archiveteam.org/index.php/FOIAonline).

<a href="/images/foia-online-wayback.png"><img class="img-fluid" src="/images/foia-online-wayback.png"></a>

The resulting WARC data that was collected can be found by [searching](https://archive.org/details/archiveteam-fire?query=foiaonline.gov) the ArchiveTeam "Just In Time Grabs" collection for "foiaonline.gov". I'm not entirely sure if all of this data has been loaded into the Wayback Machine yet, which may be why not all the data appears to be there?

The Department of Justice have a newish [foia.gov](https://foia.gov) site has a [report builder](https://www.foia.gov/data.html), and a [documented API](https://www.foia.gov/developer/agency-api/) as well. The API looks like it is intended for use by other federal agencies who want to integrate their own FOIA case management systems with foia.gov?

foia.gov itself appears to be static site created with Jekyll that's available [on Github](https://github.com/usdoj/foia.gov). But it defers to a "back stage" application for request submission and reporting, which is not open source. More about the rationale for this new site can be found in this [report](https://github.com/18F/foia-recommendations/blob/master/recommendations.md) by 18F.

I can well understand wanting to modernize the FOIAonline site, as it appeared to be showing its age. But based on its use over time it appears to have been a victim of its own success. Having a one stop shop that allows submission, tracking and publishing of FOIA requests has been replaced with a single system for submission (which seems partially implemented) and lots of agency specific processes for performing the FOIA requests. I guess only time will tell whether this was the right move or not. But I think it's a missed opportunity that the existing FOIAonline design wasn't updated instead of starting over with a new more decentralized architecture.
