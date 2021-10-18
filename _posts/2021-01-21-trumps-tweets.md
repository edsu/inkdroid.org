---
layout: post
title: Trump's Tweets
date: 2021-01-21 20:29:05
tags:
- twitter
- archive
---


*TLDR: Trump's tweets are gone from twitter.com but still exist spectrally in various states all over the web. After profiting off of their distribution Twitter now have a responsibility to provide meaningful access to the Trump tweets as a read only archive.*

*This post is also published on the [Documenting the Now Medium](https://news.docnow.io/trumps-tweets-2d3f348ccd24) where you can comment, if the mood takes you.*

---

So Trump's Twitter account is gone. *Finally*. It's strange to have had to wait
until the waning days of his presidency to achieve this very small and simple
act of holding him accountable to Twitter's community guidelines...just like
any other user of the platform.

Better late than never, especially since his misinformation and lies can continue to spread after he has left office.

But isn't it painful to imagine what the last four years (or more) could have looked like if Twitter and the media at large had recognized their responsibility and acted sooner?

When Twitter suspended Trump's account they didn't simply freeze it and prevent
him from sending more hateful messages. They flipped a switch that made all the
tweets he has ever sent disappear from the web.

These are tweets that had real material consequences in the world. As despicable as Trump's utterances have been, a complete and authentic record of them having existed is important for the history books, and for holding him to account.

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Twitter’s suspension of Donald Trump’s account has also removed all of his thousands of tweets sent over the years. I personally find it useful as a reporter to be able to search through his tweets. They are an important part of the historical record. Where do they live now?</p>&mdash; Olivia Nuzzi (\@Olivianuzzi) <a href="https://twitter.com/Olivianuzzi/status/1347695166094716930?ref_src=twsrc%5Etfw">January 9, 2021</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script> 

Where indeed? One hopes that they will end up in the National Archives (more on that in a moment). But depending on how you look at it, they are *everywhere*.

Twitter removed Trump's tweets from public view at *twitter.com*. But
fortunately, as [Shawn Jones notes], embedded tweets like the one above persist
the tweet text into the HTML document itself. When a tweet is deleted from
twitter.com the text stays behind elsewhere on the web like a residue, as evidence (that can be faked) of what was said and when.

It's difficult to say whether this graceful degradation was an intentional
design decision to make their content more resilient, or it was simply
a function of Twitter wanting their content to begin rendering before their JavaScript had loaded and had a chance to emboss the page. But design intent
isn't really what matters here.

What does matter is the way this form of social media content degrades in the
web commons. Kari Kraus calls this process "spectral wear", where digital media
"help mitigate privacy and surveillance concerns through figurative rather than
quantitative displays, reflect and document patterns of use, and promote an
ethics of care." [@Kraus:2019]. This spectral wear is a direct result of tweet
embed practices that Twitter itself promulgates while simultaneously
forbidding it [Developer Terms of Service]:

> If Twitter Content is deleted, gains protected status, or is otherwise
suspended, withheld, modified, or removed from the Twitter Applications
(including removal of location information), you will make all reasonable
efforts to delete or modify such Twitter Content (as applicable) as soon as
possible.

Fortunately for history there has probably never been a more heavily *copied*
social media content than Donald Trump's tweets. We aren't immediately
dependent on *twitter.com* to make this content available because of the other
other places on the web where it exists. What does this copying activity look like?

I intentionally used *copied* instead of *archived* above because the various
representations of Trump's tweets vary in terms of their coverage, and how they
are being cared for.

Given their complicity in bringing Trump's messages of division and hatred to
a worldwide audience, while profiting off of them, Twitter now have
a responsibility to provide as best a representation of this record for the
public, and for history.

We know that the Trump administration have been collecting the
\@realDonaldTrump Twitter account, and [plan] to make it available on the web
as part of their responsibilities under the Presidential Records Act:

> The National Archives will receive, preserve, and provide public access to
all official Trump Administration social media content, including deleted posts
from \@realDonaldTrump and \@POTUS. The White House has been using an archiving
tool that captures and preserves all content, in accordance with the
Presidential Records Act and in consultation with National Archives officials.
These records will be turned over to the National Archives beginning on January
20, 2021, and the President's accounts will then be made available online at
NARA's newly established trumplibrary.gov website.

NARA is the logical place for these records to go. But it is unclear what shape
these archival records will take. Sure the Library of Congress has (or had)
it's Twitter archive. It's not at all clear if they are still adding to it. But
even if they are LC probably hasn't felt obligated to collect the records
of an official from the Executive Branch, since they are firmly lodged in the
Legislative. Then again they collect [GIFs] so, maybe?

Reading between the lines it appears that a third party service is being used to collect the social media content: possibly one of the several e-discovery tools like [ArchiveSocial] or [Hanzo]. It also looks like the Trump Administration themselves have entered into this contract, and at the end of its term (i.e. now) will extract their data and deliver it to NARA. Given their past behavior it's not difficult to imagine the Trump administration not living up to this agreement in substantial ways.

This current process is a slight departure from the approach taken by the Obama
administration. Obama initiated a process where platforms [migrate official accounts] to new accounts that were then managed going forward by NARA [@Acker:2017a]. We can see that this practice is [being used again] on January 20, 2021 when Biden became President. But what is different is that Barack Obama retained ownership of his personal account [\@barackobama], which he continues to use.NARA has [announced] that they will be archiving Trump's now deleted (or hidden) personal account.

> A number of Trump administration officials, including President Trump, used personal accounts when conducting government business. The National Archives will make the social media content from those designated accounts publicly available as soon as possible.

The question remains, what representation should be used, and what is Twitter's role in providing it? 

Meanwhile there are online collections like [The Trump Archive], the New York Times' [Complete List of Trump's Twitter Insults], Propublica's [Politwoops] and countless GitHub repositories of
data which have collected Trump's tweets. These tweets are used in a multitude of ways including things as absurd as a source for [conducting trades on the stock market].

But seeing these tweets as they appeared in the browser, with associated
metrics and comments is important. Of course you can go view the account in the
[Wayback Machine] and browse around. But what if we wanted a list of all the
Trump tweets? How many times were these tweets actually archived? How complete
is the list?

After some [experiments] with the Internet Archive's [API] it's possible to get
a picture of how the tweets from the \@realDonaldTrump account have been
archived there. There are a few wrinkles because a given tweet can have many different URL forms (e.g. tracking parameters in the URL query string). In addition just because there was a request to archive a URL for something that looks like a realDonaldTrump tweet URL doesn't mean it resulted in a successful response. Success here means a 200 OK from twitter.com when resolving the URL. Factoring these issues into the analysis it appears the Wayback Machine contains (at least) 16,043,553 snapshots of Trump's tweets.

```text
https://twittter.com/realDonaldTrump/status/{tweet-id}
```
    
Of these millions of snapshots there appear to be 57,292 unique tweets. This
roughly correlates with the 59K total tweets suggested by the last profile
snapshots of the account. The maximum number of times in one day that his tweets were archived was 71,837 times on February 10, 2020. Here's what the archive snapshots of Trump's tweets look like over time (snapshots per week).

<img class="img-responsive" src="/images/trump-tweets-archived-week.png">

It is relatively easy to use the CSV export from the [Trump Archive] project to see what tweets they know about that the Internet Archive does not and vice-versa (for the details see the Jupyter notebook and SQLite database [here]).

It looks like there are 526 tweet IDs in the Trump Archive that are missing from the Internet Archive. But further examination shows that many of these are retweets, which in Twitter's web interface, have sometimes redirected back to the original tweet. Removing these retweets to specifically look at Trump's own tweets there are only 7 tweets in the Trump Archive that are missing from the Internet Archive. Of these 4 are in fact retweets that have been miscategorized by the Trump Archive.

One of the three is this one, which is identified in [the Trump Archive](https://www.thetrumparchive.com/tweets/1281926278845812736) as deleted, and wasn't collected [quick enough](http://web.archive.org/web/20201115164630/https://twitter.com/realDonaldTrump/status/1281926278845812736) by the Internet Archive before it was deleted:

> Roger Stone was targeted by an illegal Witch Hunt tha never should have taken place. It is the other side that are criminals, including the fact that Biden and Obama illegally spied on my campaign - AND GOT CAUGHT!"

Sure enough, over at the Politwoops project [you can see](https://projects.propublica.org/politwoops/tweet/1281926278845812736) that this tweet was deleted 47 seconds after it was sent:

<a href="https://projects.propublica.org/politwoops/tweet/1281926278845812736"><img class="img-responsive" src="/images/trump-politwoops.png"></a>

Flipping the table it's also possible to look at what tweets are in the Internet Archive but not in the Trump Archive. It turns out that there are 3,592 tweet identifiers in the Wayback machine for Trump's tweets which do not appear in the Trump Archive. Looking a bit closer we can see that some are clearly wrong, because the id itself is too small a number, or too large. And then looking at some of the snapshots it appears that they often don't resolve, and simply display a "Something went wrong" message:

<a href="https://web.archive.org/web/20201111183124/https://twitter.com/realDonaldTrump/status/920341449220284418"><img class="img-responsive" src="/images/trump-something-went-wrong.png"></a>

Yes, something *definitely* went wrong (in more ways than one). Just spot checking a few there also appear to be some legit tweets in the Wayback that are not in the Trump archive like this one:

<a href="https://web.archive.org/web/20200307194518if_/https://twitter.com/realdonaldtrump/status/646009823356690432"><img class="img-responsive" src="/images/trump-missing-from-archive.png"></a>

Notice how the media will not play there? It would take some heavy manual curation work to sort through these tweet IDs to see which ones are legit, and which ones aren't. But if you are interested here's an [editable Google Sheet](https://docs.google.com/spreadsheets/d/1UlSV5hkiXzprwPnM1SKJGhlTjrmMpro-c2rN6SkhIqc/edit?usp=sharing).

Finally, here is a list of the top ten archived (at Internet Archive) tweets. The counts here reflect *all* the variations for a given tweet URL. So they will very likely not match the count you see in the Wayback Machine, which is for the specific URL (no query paramters).

* [Thank you Alabama! #Trump2016#SuperTuesday](https://web.archive.org/web/*/https://twitter.com/realDonaldTrump/status/704834185471598592) 65,489
* [MAKE AMERICA GREAT AGAIN!](https://web.archive.org/web/*/https://twitter.com/realDonaldTrump/status/704756216157839360) 65,360
* [Thank you Georgia!#SuperTuesday #Trump2016](https://web.archive.org/web/*/https://twitter.com/realDonaldTrump/status/704818842153971712) 65,358
* [Such a beautiful and important evening! The forgotten man and woman will never be forgotten again. We will all come together as never before](https://web.archive.org/web/*/https://twitter.com/realDonaldTrump/status/796315640307060738) 55,426
* [Watching the returns at 9:45pm. #ElectionNight #MAGA🇺🇸 https://t.co/HfuJeRZbod](https://web.archive.org/web/*/https://twitter.com/realDonaldTrump/status/796182637622816768) 54,889
* [#ElectionDay https://t.co/MXrAxYnTjY https://t.co/FZhOncih21](https://web.archive.org/web/*/https://twitter.com/realDonaldTrump/status/796055597594578944) 54,291
* [I will be watching the election results from Trump Tower in Manhattan with my family and friends. Very exciting!](https://web.archive.org/web/*/https://twitter.com/realDonaldTrump/status/796099494442057728) 54,263
* [I love you North Carolina- thank you for your amazing support! Get out and https://t.co/HfihPERFgZ tomorrow!Watch:... https://t.co/jZzfqUZNYh](https://web.archive.org/web/*/https://twitter.com/realDonaldTrump/status/795733366842806272) 54,252
* [Still time to #VoteTrump! #iVoted #ElectionNight https://t.co/UZtYAY1Ba6](https://web.archive.org/web/*/https://twitter.com/realDonaldTrump/status/796126077647196160) 54,224
* [Watching my beautiful wife, Melania, speak about our love of country and family. We will make you all very proud.... https://t.co/DiKmSnTlC2](https://web.archive.org/web/*/https://twitter.com/realDonaldTrump/status/794259252613414915) 54100

The point of this rambling data spelunking, if you've made it this far, is to highlight the degree to which Trump's tweets have been archived (or collected), and how the completeness and quality of those representations is very fluid and difficult to ascertain. Hopefully Twitter is working with NARA to provide as complete a picture as possible of what Trump said on Twitter. As much as we would like to forget, we must not.

### References

[Developer Terms of Service]: https://developer.twitter.com/en/developer-terms/agreement-and-policy
[plan]: https://www.archives.gov/foia/pra-trump-admin
[Hanzo]: https://www.hanzo.co/
[ArchiveSocial]: https://archivesocial.com/
[migrate their content]: https://obamawhitehouse.archives.gov/blog/2017/01/17/obama-administration-digital-transition-moving-forward
[Shawn Jones notes]:
https://ws-dl.blogspot.com/2021/01/2021-01-09-embedded-tweets-from.html
[Wayback Machine]: https://web.archive.org/web/\*/https://twitter.com/realDonaldTrump/
[conducting trades on the stock market]: https://github.com/maxbbraun/trump2cash
[Complete List of Trump's Twitter Insults]: https://www.nytimes.com/interactive/2021/01/19/upshot/trump-complete-insult-list.html?referringSource=articleShare#
[API]: https://github.com/webrecorder/pywb/wiki/CDX-Server-API
[experiments]: https://archive.org/details/trump-tweets-wayback
[\@barackobama]: https://twitter.com/barackobama
[announced]: https://www.trumplibrary.gov/research/archived-social-media
[being used again]: https://www.trumplibrary.gov/research/archived-social-media
[here]: https://archive.org/details/trump-tweets-wayback
[The Trump Archive]: https://www.thetrumparchive.com/
[Politwoops]: https://projects.propublica.org/politwoops/
[GIFs]: https://www.loc.gov/item/lcwaN0010391/
