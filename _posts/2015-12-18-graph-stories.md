---
layout: post
title: Graph Stories
tags:
- mith
- twitter
---

This semester I had the opportunity to help out in a few sessions of
[Matt Kirschenbaum]'s Digital Studies graduate seminar. Matt wanted 
to include some hands on exercises collecting data from the Twitter API, 
to serve as a counterpoint to some of the readings on networks such as 
Galloway and Thacker's [The Exploit]. I don't think the syllabus is online, 
but if it becomes available I'll be sure to link it here.

Now ENG 668K wasn't billed as a programming class, so getting into Python or R or &lt;insert your favorite programming language here&gt; just wouldn't have been
fair or appropriate. But discussing the nature of networks, and social 
media platforms really requires students to get a feel for the protocols and 
data formats that underpin and constrain these platforms. So we wanted to give 
students some hands on experience with what the Twitter API did and, perhaps 
more importantly, didn't do. We also wanted to get students thinking about 
the valuable perspectives that humanists bring to data.

## The Graph From 10,000 Feet

I started with a [general introduction] to Twitter and the graph as a data
model. Much of this time was spent doing a close read of [a particular tweet]
as it appears in the Web browser. We looked at the components of a tweet, such
as who sent it, when it was sent, hashtags, embedded media, replies, retweets
and favorites, and how these properties and behaviors are instantiated in the
Twitter user interface.

We then took a look at the same tweet as JSON data, and
briefly discussed the how and why of the Twitter API. We wrapped up with a quick
look at the history of graph theory, which was kind of impossible and laughable
in a way. But I think it was important to at least gesture at how networks and
graphs have a [long history], have accumulated a lot of theory, but in essence
are quite simple.

As an exercise we all created *paper graphs* of some topic. 
There's no need to get lost in Gephi to start thinking about the graph data
model. I showed them a paper graph that modeled a small subset of MITH people
and projects as an example:

<a href="https://www.flickr.com/photos/inkdroid/22510518477/in/dateposted/"><img
class="img-responsive" src="/images/mith-projects.jpg"></a>

I wish I took pictures of the ones all the students came up with. They were
*amazing* and made my example seem super dull. MITH is in the middle of working
on a viewer for all our projects over the past 15 years, so we have a dataset of
the people and projects available. I created a [hairball graph] view of the
full dataset just to balm my damaged pride.

## Tags and TAGS

But this was all just a prelude to where we spent the majority of our time in
the subsequent classes, which was in using the Twitter Archiving Google Sheet or
[TAGS]. The thing that TAGS did well was get students thinking about the various
representations of a tweet, and how those representations fit different uses.
The representation as HTML is clearly good for the human user on the Web. The
JSON representation was designed for API access by clients on mobile devices,
and other services. And one of those other services is TAGS, which takes the
JSON data and puts it into a familiar tabular layout for analysis. This
complemented an earlier set of sessions in the semester where [Raff Viglianti] 
and [Neil Fraistat] talked about reimagining the archive, with a dive into
encoding a Shelley manuscript using TEI.

We did run into some problems using TAGS, mostly centered on the Twitter API
Keys. To use TAGS you need a Twitter account, and a Google account. This may
seem like a no-brainer but I was impressed to see there were some students who
assiduously wanted neither. Respect. Once you have a Twitter account you need to
register an app, and get the keys for the app. In order to create an application
you need to attach a mobile number to your user account. This is understandable
given Twitter's ongoing fight against spam, but it presents another
privacy/security conundrum to students. But once the keys are in hand TAGS is
mostly straightforward to enter a search query and get some data.

The wrap up exercise for the hands on TAGS experimentation was to do some data
collection and then write a very basic data story about that data. I felt like
I appropriated the phrase *data story* a little bit. It's a new term that I 
never really contextualized fully because of time constraints. Data 
storytelling could be a whole class in itself. In fact [Nick Diakopoulos] 
[offered one] this semester at UMD. But we simply wanted the students to 
try to collect some data and write up what they did, and what (if anything) 
they found in the data. To get them started a provided an example data story.

## My Hastily Composed Data Story

For my data story I assembled a [Twitter
data](https://docs.google.com/spreadsheets/d/1pFjo7Dot9GBaAbJ1LPAfgTnuBENZDOH1PGs9xDQfqYY/edit?usp=sharing)
dataset for the poet [Patricia Lockwood](https://twitter.com/TriciaLockwood). I
collected 1,592 of her tweets for the period from April 20, 2015 to November 22,
2015. To do this I configured TAGS settings to fetch using the API type
`status/user_timeline` for the user TriciaLockwood. Lockwood has tweeted 12,658
times since May 2011, so I wasn't able to get all of her tweets because of the
limitations of Twitter's API.

I thought it might be interesting to see who Lockwood corresponds with the most
for the time period I was able to collect in, so I created a pivot table (the
Correspondence sheet in the Google Sheets document) that listed the people she
directed tweets at the most. The top 5 users she corresponded with were:

1. (44) [\@cat_beltane](https://twitter.com/cat_beltane) - Gregory Erskine
2. (36) [\@DVSblast](https://twitter.com/DVSblast) - [Dimitri
Stathas](http://firstwefeast.com/eat/insomniacs-guide-manhattan-dvs/) (Rapper
from New York)
3. (30) [\@accomodatingly](https://twitter.com/accommodatingly) - [Stephen
Burt](https://en.wikipedia.org/wiki/Stephen_Burt) (Harvard Professor)
4. (24) [\@PKhakpour](https://twitter.com/PKhakpour) - [Porochista
Khakpour](https://en.wikipedia.org/wiki/Porochista_Khakpour) (Iranian-American
writer)
5. (22) [\@McKelvie](https://twitter.com/McKelvie) - [Jamie
McKelvie](https://en.wikipedia.org/wiki/Jamie_McKelvie) (British Cartoonist)

I thought it was interesting that the top person she corresponded with didn't
seem to be easily googlable even though he has a somewhat distinctive name.
Erskine's profile says he lives in [Louisville,
Kentucky](https://www.google.com/maps/place/Louisville,+KY/@38.1884721,-85.9569564,10z)
which isn't terribly far from St Louis and Cincinnati, both of which are places
Lockwood has lived in the past.  According to the [New York
Times](http://www.nytimes.com/2014/06/01/magazine/the-smutty-metaphor-queen-of-lawrence-kansas.html)
she seems to be currently living in Lawrence, Kansas. Perhaps they knew each
other in the past and are keeping in touch via Twitter?

The http://lfriendys.com website Erskine has linked from his Twitter profile was
[registered](http://whois.domaintools.com/lilfriendys.com) in 2014 using an
address in St Louis. So perhaps they knew each other there. It's possible to
[search](https://twitter.com/search?q=cat_beltane+tricialockwood) and scan all
their public correspondence, which goes back to September 16, 2011.

*Ok, this is starting to feel creepy now.*

## Results

The resulting data stories were really quite amazing. As I said I barely gave 
any context for data storytelling, but the students ran with it and well 
surpassed my example. I can't include them here because I didn't ask for their
permission. But if any students decide to put them on the Web I will link to 
them.

Matt did ask me to write up a general response to these data stories, with
particular attention to where TAGS break down. I've included it here, but 
I've changed the students names, since they didn't write them thinking they
would be on the Web with their names attached.

Here's what I wrote...

---


I really enjoyed reading the data stories that everyone was able to put
together. One phrase that will stick with me for a while is Julie's *hashtag
salad* as a term (or neologism really) for tweets that are mostly made up 
of a coordination of hashtags. I'm going to use it from now on!

I was surprised to find that the stories that established a strong personal
voice were particulary effective in drawing out a narrative in the data. Perhaps
I shouldn't have been, but I was :) I guess it makes sense that a narrative
about data would need to have a narrator, and that the narrator needs a voice.
So it stands to reason that attention to this voice is important for
communicating the perspective that the data story is taking. I think this is one
reason (among many) that humanists are needed in the STEM dominated field of
data science. Voice and perspective matter.

Another important aspect to the stories that worked well was an attention to the
data. For example Courtney's analysis of the device used (mobile vs desktop) and
time of day was quite interesting. The treatment is suggestive of the way the
data is intertwined with events in the physical world, and the degree to which
social media can and cannot mediate those events. Samuel's analysis of the use
of language (English, Spanish and Portuguese) by a particular individual in
different contexts was another example of this type of treatment.

But there were *many* interesting things that were discussed, so it's probably
not fair for me to start highlighting them. The stories contained several 
comments about the limitations of collecting data from Twitter using TAGS.
For example:

Vince:

> Not only does TAGS give us a very brief snapshot of a giant conversation, but
> we Twitter users must figure out what we need before too much time passes and
> the data starts to become very hard to draw out.

Jorge:

> This is one limitation of TAGS, as it removes the physical layout of Twitter,
> requiring users to cut and paste hyperlinks to read the original content of
> tagged Tweets. 

> The first was that it still takes a human to connect all of the patterns
> together.  Google spreadsheets do not contain a function to sort text by
> theme, so the user still needs to look at the text to see if there is a
> pattern to the Tweets.

> The second is in the limitations of TAGS.  Vince and I were both initially
> surprised with the seemingly low volume of results we received.  After a
> little research, we realized that TAGS only collects seven to nine days of
> Tweets.

Sarah:

> Of course, it is impossible to tell just from the data how much \@Farmerboy or
> the other’s meant to, or not, to refer to the Little House on the Prairie
> franchise.

William:

> For me, temporality posed the largest problem in that it was important to time
> when to run the script to capture certain kinds of data.

>  Not only is the process capped by a maximum number of tweets archived at a
>  specific moment, it is also difficult to explore a topic outside of the “now”
>  because of its relegation to the last seven days, rather than allowing for a
>  specified date range. Additionally, the more tweets I attempted to archive at
>  one time, the greater likelihood the script would fail and yield zero
>  results.

I thought I remembered mentioning that the search API was limited to the last
7-9 days, but even if I did I clearly didn't emphasize it enough. The search API
*does* restrict access mostly for business reasons since Twitter have a service
called [Gnip](http://gnip.com) which allows people to purchase access to
historical data in bulk. So, if you are interested in a topic, and don't want to
pay Twitter thousands of dollars for data, it is important to collect
continuously over a period of time.

TAGS tries to do this for you by allowing you to schedule your search to be
rerun, but there are [limits] to the size of a Google Sheet: 2,000,000 cells, or
111,111 TAGS rows. It also isn't clear to me how TAGS deals with duplicate data,
or how it ensures that it doesn't have gaps in time. At any rate these
observations about the limits of TAGS and the underlying Twitter API are great
examples of getting insight into Twitter as a platform, in [Tarleton
Gillespie]'s use of the term. If this sort of thing is of interest there is an
emerging literature that analyzes Twitter's as a platform, such as @Gonzalez:2014, @Driscoll:2014 and @Proferes:2015.

Just as an aside Twitter's [web search] isn't limited to the last 7-9 days like
the API. For example you can [do a search] for the tweets mentioning the word
`twttr` (Twitter's original name) before March 22, 2006 which will show you some
of the first day of tweets from Twitter's founders. 

The comments also point to another limitation of TAGS as a tool. The spreadsheet
has the text of the tweet, but it is extremely data centric. To see embedded
media, the users profile information, the responses and the full presentation of
the tweet it is necessary to visit the twett on the Web using the URL located in
the `status_url` column. This can prove to be quite a barrier, when you are
attempting to decode the intent or intended meaning of a message by simply
browsing the spreadsheet. The additional context found in the human readable
presentation of the Web page makes it much easier to get at the intent or
meaning of a tweet. But how do you do this sort of analysis with thousands of
messages? This raises good questions about distant reading, which is also an
area where a DH perspective has a lot to offer to the data science profession.

---

## Summary

It will be interesting to hear what the students made of the class in the
reviews. But all in all I was kind of surprised at how low-tech instruments
like paper graphs, spreadsheets and data stories could yield valuable thinking,
discussion and analysis of social networks. Of course I expect most of that 
was due to the readings and lectures that went on outside of these exercises. 
I'm looking forward to hopefully being able to iterate on some of these 
techniques and ideas in the future.

## References

[limits]: https://support.google.com/drive/answer/37603?hl=en
[web search]: https://twitter.com/search-advanced
[do a search]:
https://twitter.com/search?f=tweets&vertical=default&q=twttr%20until%3A2006-03-22
[Tarleton Gillespie]: http://papers.ssrn.com/sol3/papers.cfm?abstract_id=1601487
[The Exploit]: http://www.amazon.com/The-Exploit-Networks-Electronic-Mediations/dp/0816650446
[general introduction]: http://mith.us/exploits-of-the-social-web/slides/part1/#/
[a particular tweet]: https://twitter.com/manofsteele/status/499432557906104320
[TAGS]: https://tags.hawksey.info/
[long history]: https://en.wikipedia.org/wiki/Seven_Bridges_of_K%C3%B6nigsberg
[hairball graph]: http://bl.ocks.org/edsu/211a6ff1ecd28f7ba802
[Nick Diakopoulos]: https://twitter.com/ndiakopoulos
[offered one]: https://github.com/comp-journalism/UMD-J479D-J779D-Fall2015
[Raff Viglianti]: https://twitter.com/raffazizzi
[Neil Fraistat]: https://twitter.com/fraistat
[Matt Kirschenbaum]: https://twitter.com/mkirschenbaum
