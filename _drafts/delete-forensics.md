---
layout: post
title: Tweet Delete Forensics
---

In my last post I jotted down some [notes] about how to identify deleted Twitter
data using the concept of *hydration*. But, as I said near the end, calling
these tweets *deleted* obscures what actually happened. A *delete* implies
that a user has decided to delete their tweet. That can certainly happen,
but the reality is a bit more complicated. Here are the scenarios I can
think of:

1. The user could have decided to *protect* their account, or take it
private. This will result in all their tweets becoming unavailable except
to those users who are an approved follower of the account.
2. The user could have decided to delete their *account*, which has the
effect of deleting *all* of their tweets.
3. The user account could have been suspended by Twitter because it was
identified as a source of spam or harassment of some kind.
4. If the tweet is not a retweet the user could have simply decided to
delete the individual tweet.
5. If the tweet is a retweet the creator of the original tweet may have done 1,
2, 3 or 4.
6. If the tweet is a retweet and none of 1-4 hold then the unretweeted a
tweet. The original tweet still exists, but it is no longer marked as
retweeted by the user.

I know, this is like an IRS form from hell. So how could we check these
things? Let's take them one by one.

1. If an account has been protected you can go to the user's Twitter profile
on the web and look for the text "This account's Tweets are protected."
2. If the account has been completely deleted you can go to the user's
Twitter profile on the web and you will get a HTTP 404 Not Found error.
3. If the account has been suspended, attempting to fetch the user's Twitter
profile on the web will result in a HTTP 302 Found response that redirects
to https://twitter.com/account/suspended
4. If the tweet *is not* a retweet and fetching the tweet on the web
(https://twitter.com/{screen_name}/status/{tweet-id}) results in a HTTP 404
Not Found then the individual tweet has been deleted.
5. If the tweet *is* a retweet and 1-4 do not hold for the original tweet
then the user has decided to delete their retweet.
6. If the tweet *is* a retweet and one of 1-4 happened to the original tweet
then the the original tweet has been deleted

Now it's possible to put this byzantine logic into code and run it on our
deleted tweet data to get a picture of what happened with the unitetheright
deletes. Here's the code:

<script src="https://gist.github.com/edsu/35dd8af4407efd7cb1cca2888c15eb0e.js"></script>

And here are the results:



One thing that I noticed in the process of looking at some of these deletes
up close is that even after an account has been suspended it appears that
media URLs associated with their tweets still resolve. For example the
polNewsForever account was suspended but [their profile image](https://pbs.twimg.com/profile_images/862114761865142272/n9XHLXJt_normal.jpg) still resolves. In fact *movies and images* that polNewsForever have posted also
still resolve. I'm not going to reference them here because they were
suspended for a reason. So you will need to take my word for it...or run an
experiment yourself...

[notes]: https://inkdroid.org/2017/08/15/utr/
