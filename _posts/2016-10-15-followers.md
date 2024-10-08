---
layout: post
title: "10:21 PM EDT"
tags:
- data
- twitter
- politics
---


TLDR;

Q: Why was there such a large bump in the number of Hillary and Trump followers
at 10:21 PM EDT during the second Presidential Debate?

A: I'm not sure, but maybe it has something to do with abortion or marriage
equality?

---

During the last two presidential debates [MITH] has been collecting Twitter data
using the words *trump* and *hillary*. [Neil Fraistat]'s motivation for
organizing our [Night Against Hate] this week was to identify social media
accounts for hate groups that are in the Southern Poverty Law Center's
[Extremist Files], and then use this information to help see how these groups
were using Trump's own words in their tweets. So it was super to see [How Trump
Took Hate Groups Mainstream] in Mother Jones just yesterday. Sarah Posner and
David Neiwert have been on this trail for a while, and their write up is a must
read.

We're still talking about what we want to look for in the debate datasets and
how we want to use the [spreadsheet] that we collaboratively built. Look for
another blog post about the Night Against Hate soon.

One limitation of looking for patterns in collected Twitter data is that the
Presidential Debates are high volume events. We know that the Twitter streaming
API only gives us a portion of all the available tweets when there is a spike in
traffic. For example our dataset for the [first debate] contains 1,303,084
tweets that mentioned "hillary" and the Twitter API let us know that at least
730,512 tweets were not delivered.  Very little is known about what kind of
sample Twitter provides, and without the full picture it is difficult to draw
inferences from the numbers.

### followers_count

But one interesting metric that is available is the number of followers a person
has. This number can be particularly interesting to look at over time as it
rises and falls. Every tweet that you get from the Twitter API includes a [User
Object] which in turn contains the *followers_count* for that user at the time
that the request was made of the Twitter API. So if you collect data in real
time from the [Twitter Streaming API] you get a moving picture of a user's
followers. What's also super handy is that in every *retweet* you get the user
object for the retweeter, and also for the user who sent the original tweet. 

During the debates you can count on many people retweeting the candidates
tweets. This means you can get smooth record of how many followers they have by
the minute ... or even second. The fact that you're not getting *all* the tweets
at a given point in time doesn't really matter.

So I wrote a very simple utility that reads through Twitter data I collected
with [twarc] looking for particular users and collects how many followers they
have at particular times and writes it out as a CSV file, for analysis in a
spreadsheet:

<br>
<style>
  .gist-data { 
    height:450px; 
    overflow-y: visible;
  }
</style>

<script src="https://gist.github.com/edsu/ca3260c7ee050206d4a3071448f43836.js"></script>

### New Followers

I thought it could be interesting to look at the number of *new followers* each
candidate received during the first debate. In theory these would be "people"
that had decided to follow Clinton or Trump on Twitter as they were watching the
debate. I put *people* in scare quotes there because it is possible, and perhaps
even likely, that there are bot armies creating these accounts. You'd have to
track who these new accounts were and sample them to know for sure.

So with that caveat in mind here's what the graph for the first debate looked
like:

<iframe width="707" height="371" seamless frameborder="0" scrolling="no"
src="https://docs.google.com/spreadsheets/d/1YOb71PxaX13I4L_KMd9PyXT5RwBDo42cqOqtmru055Q/pubchart?oid=1029671623&amp;format=interactive"></iframe>

It was encouraging (for me) to see that Hillary was gaining more followers than
Trump during the debate. There were a few interesting changes in the graph, but I was mostly distracted by the fact that Hillary was outpacing Trump so much in new followers. We collected data for the [second debate] so I decided to look again with the same code:

<iframe width="707" height="371" seamless frameborder="0" scrolling="no"
src="https://docs.google.com/spreadsheets/d/1YOb71PxaX13I4L_KMd9PyXT5RwBDo42cqOqtmru055Q/pubchart?oid=1702491772&amp;format=interactive"></iframe>

I was pleased to see Clinton is gaining more supporters than Trump again; but
this graph looks noticeably different. Do you see the bump in followers at 10:21
PM EDT (02:21 GMT). What happened there? Well, thanks to the Web you can see
exactly what happened there: it was the question from Beth Miller about the
Supreme Court that begins at 10:19:54:

<br>

<iframe width="707" height="355"
src="https://www.youtube.com/embed/FRlI2SQ0Ueg?start=4794" frameborder="0"
allowfullscreen></iframe>

<br>

If you watch the time tick by you can see in the exact minute of 10:21 PM
Hillary is saying this:

>  I want a Supreme Court that will stick with Roe v. Wade and a woman’s right
>  to choose, and I want a Supreme Court that will stick with marriage equality.
>  Now, Donald has put forth the names of some people that he would consider.
>  And among the ones that he has suggested are people who would reverse Roe v.
>  Wade and reverse marriage equality. I think that would be a terrible mistake
>  and would take us backwards.

What is truly bizarre is that there is a bump at that point for both candidates.
Maybe this points at a problem in my code, or my [spreadsheet data] (I'm happy
to share the Tweet ID datasets if you would like to look for yourself). Or
perhaps the bump is part of some kind of backlog in Twitter's infrastructure?
Maybe there's a bot army that's working for both candidates? It would be
necessary to inspect the users to get a sense of that.

But maybe, just maybe, this data points at the fact that a Woman's right to
choose and marriage equality are still polarizing and hot button issues, more so
than any others, for folks in this years election? At least for folks who use
Twitter...which is definitely not all voters. That's probably the biggest caveat
there is.

If you have ideas, questions, criticisms about any of this I'd love to hear from
you.

---

### Updates

<div class="text-center">
<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr"><a
href="https://twitter.com/edsu">@edsu</a> <a
href="https://twitter.com/peteskomoroch">@peteskomoroch</a> fascinating. I&#39;d
love to see what the rate of new followers looks like - seems like Trump&#39;s
bump is slightly bigger?</p>&mdash; Jane Wang (@janexwang) <a
href="https://twitter.com/janexwang/status/787624981198954496">October 16,
2016</a></blockquote> <script async src="//platform.twitter.com/widgets.js"
charset="utf-8"></script>
</div>

I'm not sure my rate of change calculation was the best. I simply subtracted the
new subscribers in the previous minute from new subscribers in the current
minute. It does show that Trump got a bigger bump in this minute, and really
highlights how much of a change it was. If you have an idea for calculating the
rate of change that is better take a look at the [data].

<iframe width="707.0982839313574" height="437.0195580296895" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/1YOb71PxaX13I4L_KMd9PyXT5RwBDo42cqOqtmru055Q/pubchart?oid=1106607821&amp;format=interactive"></iframe>

[Night Against Hate]: http://mith.umd.edu/research/night-against-hate/
[spreadsheet]: https://docs.google.com/spreadsheets/d/1LsJHAdSexX4yoYq_Pgfb7XWZgRmBuCcS-7QEETfHxlA/edit#gid=740279925
[first debate]: http://umd-mith.github.io/bagcat/#56B1171F-E859-47C0-B3BD-B4D5932B8D4C
[second debate]: http://umd-mith.github.io/bagcat/#1CA8ACBE-39A6-4CB2-8EFC-0C5014064DD9
[User Object]: https://dev.twitter.com/overview/api/users
[Twitter Streaming API]: https://dev.twitter.com/streaming/overview
[Extremist Files]: https://www.splcenter.org/fighting-hate/extremist-files
[MITH]: http://mith.umd.edu
[Neil Fraistat]: https://twitter.com/fraistat
[How Trump Took Hate Groups Mainstream]: http://www.motherjones.com/politics/2016/10/donald-trump-hate-groups-neo-nazi-white-supremacist-racism
[spreadsheet data]: https://docs.google.com/spreadsheets/d/1YOb71PxaX13I4L_KMd9PyXT5RwBDo42cqOqtmru055Q/edit?usp=sharing
[twarc]: https://github.com/edsu/twarc
[data]: https://docs.google.com/spreadsheets/d/1YOb71PxaX13I4L_KMd9PyXT5RwBDo42cqOqtmru055Q/edit?usp=sharing
