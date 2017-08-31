---
layout: post
title: Bot Retweets
---

Earlier today I noticed [Ben Nimmo](https://twitter.com/benimmo/) of the
Data Forensics Lab was tweeting about an unusual number of followers he was getting:

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr"><a href="https://twitter.com/hashtag/BotSpot?src=hash">#BotSpot</a>: who else has had a sudden increase of follower numbers in the past 72 hours? And what tweets did it follow?</p>&mdash; Ben Nimmo (@benimmo) <a href="https://twitter.com/benimmo/status/902927935400804354">August 30, 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

I've noticed in the past

Even though Twitter's [statuses/retweets](https://dev.twitter.com/rest/reference/get/statuses/retweets/id) API endpoint is limited to the last
100 retweets it is possible to use the
[search/tweets](https://dev.twitter.com/rest/reference/get/search/tweets)
endpoint to search for the retweets using the text of the tweet. *Caveat: This is only possible for tweets that have happened in the last 7 days, which is furthest back Twitter allow you to search for tweets in.*

For example here is how you can get the retweets for [this
tweet](https://twitter.com/briankrebs/status/902545914304319491) and analyze the users in a spreadsheet.

1. First install [twarc](https://github.com/docnow/twarc) for interacting with
the Twitter API from the command line. If you don't have Python yet you'll
need to go get that first.

    `pip install twarc`

2. Now you are ready to tell twarc about your Twitter API keys. Go over to
[apps.twitter.com](https://apps.twitter.com), create an app and note the keys
down so you can tell twarc about them:

    `twarc configure`

3. Collect the tweets using twarc's search command using some identifying text of the tweet in question, then write them to a file:

    `twarc search 'Bring on the bots and sock puppet accounts Amazing how a tweet about Putin' > krebs.jsonl`

4. If you want to be absolutely sure the file only includes retweets of that
specific tweet you can use [jq](https://stedolan.github.io/jq/) to filter them using the tweet id of the
original tweet:

    `jq -cr 'select(.retweeted_status.id_str = "902545914304319491")' krebs.jsonl > krebs-filtered.jsonl`

5. Now that you have the JSON for the retweets you can do analysis of the users by
creating a CSV file of information about them. For example:

    `jq -r '[.user.screen_name, .user.followers_count, .user.friends_count, .user.status_count, .user.created_at, .user.lang, .user.status_count] | @csv' krebs-filtered.jsonl > users.csv`

    csvsql --query "SELECT krebs.* FROM krebs, benimmo WHERE krebs.screen_name = benimmo.screen_name" krebs.csv benimmo.csv > krebs_benimmo.csv
