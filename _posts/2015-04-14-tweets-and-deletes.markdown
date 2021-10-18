---
layout: post
status: publish
published: true
title: Tweets and Deletes
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 8520
wordpress_url: http://inkdroid.org/journal/?p=8520
date: '2015-04-14 09:07:18 +0000'
date_gmt: '2015-04-14 16:07:18 +0000'
tags:
- twitter
comments:
- id: 87483
  author: August Library Tech Roundup | LITA Blog
  author_email: ''
  author_url: http://litablog.org/2015/08/august-library-tech-roundup/
  date: '2015-08-27 06:26:13 +0000'
  date_gmt: '2015-08-27 13:26:13 +0000'
  content: |
    [&#8230;] Archiving and Twitter, how the user affects the archive by deleting tweets. [&#8230;]
---

<p>Archives are full of silences. Archivists try to surface these silences by making <a href="https://en.wikipedia.org/wiki/Archival_appraisal">appraisal</a> decisions about what to collect and what not to collect. Even after they are accessioned, records can be silenced by culling, weeding and purging. We do our best to document these activities, to leave a trail of these decisions, but they are inevitably deeply contingent. The context for the records and our decisions about them unravels endlessly.</p>
<p>At some point we must accept that the archival record is not perfect, and that it's a bit of a <a href="http://www.nyu.edu/pages/classes/bkg/methods/harris.pdf">miracle</a> that it exists at all. But in all these cases it is the archivist who has agency: the deliberate or subliminal decisions that determine what comprises the archival record are enacted by an archivist. In addition the record creator has agency, in their decision to give their records to an archive.</p>
<p>Perhaps I'm over-simplifying a bit, but I think there is a curious new dynamic at play in social media archives, specifically archives of Twitter data. I wrote in a <a href="http://inkdroid.org/journal/2014/11/18/on-forgetting/">previous post</a> about how Twitter’s Terms of Service prevent distribution of Twitter data retrieved from their API, but do allow for the distribution of Tweet IDs and relatively small amounts of derivative data (spreadsheets, etc).</p>
<p>Tweet IDs can then be <em>hydrated</em>, or turned back into raw original data, by going back to the Twitter API. If a tweet has been deleted you cannot get it back from the API. The net effect this has is of cleaning, or purging, the archival record as it is made available on the Web. But the decision of what to purge is made by the record creator (the creator of the tweet) or by Twitter themselves in <a href="http://www.theguardian.com/world/2014/sep/24/isis-twitter-youtube-message-social-media-jihadi">cases</a> where tweets or users are deleted.</p>
<p>For example lets look at the <a href="http://hdl.handle.net/10864/10830">collection</a> of Twitter data that <a href="https://twitter.com/ruebot">Nick Ruest</a> has assembled in the wake of the <a href="https://en.wikipedia.org/wiki/Charlie_Hebdo_shooting">attack</a> on the offices of Charlie Hebdo earlier this year. Nick collected 13 million tweets mentioning four hashtags related to the attacks, for the period of January 9th to January 28th, 2015. He has made the tweet IDs available as a <a href="http://hdl.handle.net/10864/10830">dataset</a> for researchers to use (a separate file for each hashtag). I was interested in replicating the dataset for potential researchers at the University of Maryland, but also in seeing how many of the tweets had been deleted.</p>
<p>So on February 20th (42 days after Nick started his collecting) I began hydrating the IDs. It took 4 days for <a href="http://github.com/edsu/twarc">twarc</a> to finish. When it did I counted up the number of tweets that I was able to retrieve. The results are somewhat interesting:</p>
<p>
<style>
  table tr td {<br />
  font-size: smaller;<br />
}<br />
</style></p>
<table>
<thead>
<tr>
<th>hashtag</th>
<th>archived tweets</th>
<th>hydrated</th>
<th>deletes</th>
<th>percent deleted</th>
</tr>
</thead>
<tbody>
<tr>
<td>#JeSuisJuif</td>
<td>96,518</td>
<td>89,584</td>
<td>6,934</td>
<td>7&#46;18%</td>
</tr>
<tr>
<td>#JeSuisAhmed</td>
<td>264,097</td>
<td>237,674</td>
<td>26,423</td>
<td>10&#46;01%</td>
</tr>
<tr>
<td>#JeSuisCharlie</td>
<td>6,503,425</td>
<td>5,955,278</td>
<td>548,147</td>
<td>8&#46;43%</td>
</tr>
<tr>
<td>#CharlieHebdo</td>
<td>7,104,253</td>
<td>6,554,231</td>
<td>550,022</td>
<td>7&#46;74%</td>
</tr>
<tr>
<td>Total</td>
<td>13,968,293</td>
<td>12,836,767</td>
<td>1,131,526</td>
<td>8&#46;10%</td>
</tr>
</tbody>
</table>
<p>It looks like 1.1 million tweets out of the 13.9 million tweet dataset have been deleted. That's about 8.1%. I suspect now even more have been deleted. While the datasets themselves are significantly smaller the number of deletes for #JeSuiAhmed and #JeSuisJuif seem quite a bit higher than #JeSuisCharlie and #CharlieHebdo. Could this be that users were concerned about how their tweets would be interpreted by parties analyzing the data?</p>
<p>Of course, it's very hard for me to say since I don't have the deleted tweets. I don't even know who sent them. A researcher interested in these questions would presumably need to travel to York University to work with the dataset. In a way this seems to be how archives usually work. But if you add the Web as a global, public access layer into the mix it complicates things a bit.</p>
