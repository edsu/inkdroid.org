---
title: Twitter Heartbeat
layout: post
tags:
- twitter
- api
---

I was doing some Twitter data collection for the Democratic Presidential
Debates last night for some folks at work. Apart from the analysis that they
want to run I was curious to look a little bit closer at how much I was rate limited during the
data collection.

Legend has it (based on [some old
documentation](https://archive.is/X1XUZ#selection-781.0-799.212)) that
Twitter's filter stream API will never deliver more than 1% of the total total
tweets (the so called firehose) in a given second. Any tweets exceeding this
amount will be "rate limited" or dropped from the stream and you won't be able
to collect them.

> If you're using the filter feature of the Streaming API, you'll be streamed Y tweets per "streaming second" that match your criteria, where Y tweets can never exceed 1% of X public tweets in the firehose during that same "streaming second." If there are more tweets that would match your criteria, you'll be streamed a rate limit message indicating how many tweets fell outside of 1%. 

Whether this legend is still true or not we can be sure that an event like the Democratic Presidential Debate will trigger any rate limits that might exist. Sure enough, when I sifted through my collected data and graphed the tweets-per-minute I found that the rate rose to about 3,000 tweets per minute and then got throttled for the duration of the debate:

<img class="img-responsive" src="/images/demdebate-tweets.png">

You can also see a short drop around 2AM UTC when Twitter closed the filter
stream connection, and twarc dutifully reopened it immediately. Some additional
tweets were dropped on the floor when this happened.

Twitter's [status/filter](https://developer.twitter.com/en/docs/tweets/filter-realtime/api-reference/post-statuses-filter.html) API endpoint actually will emit [Limit Notices](https://developer.twitter.com/en/docs/tweets/filter-realtime/guides/streaming-message-types) which are delivered right along with the tweets on the stream, and indicate how many tweets were undelivered.

> These messages indicate that a filtered stream has matched more Tweets than its current rate limit allows to be delivered. Limit notices contain a total count of the number of undelivered Tweets since the connection was opened, making them useful for tracking counts of track terms, for example. Note that the counts do not specify which filter predicates undelivered messages matched.

```json
{
  "limit": {
    "track":51
  }
}
```

It's hard to say how accurate these limit messages are without knowing more
about Twitter's internal infrastructure. But
[twarc](https://github.com/docnow/twarc) will dutifully log these limit
messages as it encounters them. For example you might see messages like this in
your log if your data collection has been limited:

```text
2019-09-13 00:13:08,866 WARNING 51 tweets undelivered
```

So you can actually parse the log file and extract these counts to see how many
tweets were dropped. It's important to note that the numbers are cumulative for
the duration of the connection.

<img class="img-responsive" src="/images/demdebate-dropped.png">

And just to drive the point home, it looks better to layer the received and
dropped tweets on top of each other as an area graph:

<img class="img-responsive" src="/images/demdebate-combined.png">

This means that we may not have all the tweets, but we can get a slightly more
accurate picture of the heartbeat of Twitter. I know this is reading the tea
leaves a bit, but if you are curious that peak right near the end is at 02:17,
and is where Elizabeth Warren was describing her experience [working as a
teacher](https://www.youtube.com/watch?v=2UWVO0Trd1c&feature=youtu.be&t=8220).

PS. If you'd like to see how these graphs were generated check out
[this](https://nbviewer.jupyter.org/github/edsu/notebooks/blob/master/DemDebate.ipynb)
Jupyter Notebook.

