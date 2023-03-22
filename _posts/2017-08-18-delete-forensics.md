---
layout: post
title: Delete Forensics
tags:
- twitter
- archives
- forensics
---


*TL;DR Deleted tweets in a #unitetheright dataset seem to largely be the result
of Twitter proactively suspending accounts. Surprisingly, a number of previously
identified deletes now appear to be available, which suggests users are
temporarily taking their accounts private. Image and video URLs from protected,
suspended and deleted accounts/tweets appear to still be available.  The same
appears to be true of Facebook.*

*Note: Data Artist [Erin Gallagher](https://twitter.com/3r1nG) provided lots of
feedback and ideas for what follows in this post. Follow her on
[Medium](https://medium.com/@erin_gallagher) to see more of her work, and
her [#UniteTheRight Automation and Deleted Tweets](https://news.docnow.io/unitetheright-automation-and-deleted-tweets-9dbf4b641755) for details about this dataset, and some truly stunning graph visualizations.*

---

In my last post I jotted down some [notes] about how to identify deleted Twitter
data using the technique of *hydration*. But, as I said near the end, calling
these tweets *deletes* obscures what actually happened to the tweet. A
*delete* implies that a user has decided to delete their tweet. Certainly this
can happen, but the reality is a bit more complicated. Here are the scenarios
I can think of (please get in touch if you can think of more):

1. The user could have decided to *protect* their account, or take it
private. This will result in all their tweets becoming unavailable except
to those users who are an approved followers of the account.
2. The user could have decided to *delete their account*, which has the
effect of deleting *all* of their tweets.
3. The user account could have been *suspended* by Twitter because it was
identified as a source of spam or abuse of some kind.
4. If the tweet is not itself a retweet the user could have simply decided to
delete the individual tweet.
5. If the tweet is a retweet then 1,2,3 or 4 may have have happened to the
original tweet.
6. If the tweet is a retweet and none of 1-4 hold then the user deleted their retweet. The original tweet still exists, but it is no longer marked as
retweeted by the given user.

I know, this is like an IRS form from hell right? So how could we check
these things programmatically? Let's take a look at them one by one.

1. If an account has been protected you can go to the user's Twitter profile
on the web and look for the text "This account's Tweets are protected." in the
HTML.
2. If the account has been completely deleted you can go to the user's
Twitter profile on the web and you will get a HTTP 404 Not Found error.
3. If the account has been suspended, attempting to fetch the user's Twitter
profile on the web will result in a HTTP 302 Found response that redirects
to https://twitter.com/account/suspended
4. If the tweet *is not* a retweet and fetching the tweet on the web results in a HTTP 404 Not Found then the individual tweet has been deleted.
5. If the tweet *is* a retweet and one of 1, 2, 3 or 4 happened to the original
tweet then that's why it is no longer available.
6. If the tweet *is* a retweet and the original tweet is still available on the
web then the user has decided to delete their retweet, or unretweet (I really
hope that doesn't become a word).

With this byzantine logic in hand it's possible to write a program to do automated lookups on the live web, with some caching to prevent looking up the same information more than once. It is a bit slow because I added a sleep to not go at twitter.com too hard. The script also identifies itself with a link to the program on GitHub in the *User-Agent* string. I added this program [deletes.py](https://github.com/DocNow/twarc/blob/master/utils/deletes.py) to the utility scripts in the [twarc](https://github.com/docnow/twarc) repository.

So I ran *deletes.py* on the #unitetheright deletes I identified previously
and here's what it found:

| Result                    | Count | Percent |
| ------------------------- | -----:| -------:|
| ORIGINAL_USER_SUSPENDED   |  9437 |   57.2% |
| ORIGINAL_TWEET_DELETED    |  2529 |   15.3% |
| TWEET_OK                  |   980 |    5.9% |
| USER_DELETED              |   972 |    5.8% |
| USER_PROTECTED            |   654 |    3.9% |
| RETWEET_DELETED           |   612 |    3.7% |
| USER_SUSPENDED            |   502 |    3.0% |
| ORIGINAL_USER_PROTECTED   |   378 |    2.2% |
| TWEET_DELETED             |   367 |    2.2% |
| ORIGINAL_USER_DELETED     |    61 |    0.3% |

I think it's interesting to see that, at least with this dataset, the majority
of the deletes were a result of Twitter proactively suspending users because of
a  tweet that had been retweeted a lot. Perhaps this is the result Twitter
monitoring other users flagging the user's tweets as abusive or harmful, or
blocking the user entirely. I think it speaks well of Twitter's attempts to try
to make their platform a more healthy environment. But of course we don't know
how many tweets ought to have been suspended, so we're only seeing part of the
story--the content that Twitter actually made efforts to address. But they
appear to be trying, which is good to see.

Another stat that struck me as odd was the number of tweets that were actually
available on the web (TWEET_OK). These are tweets that appeared to be
unavailable three days ago when I hydrated my dataset. So in the past three days
980 tweets that appeared to be unavailable have reappeared. Since there's no
trash can on Twitter (you can't undelete a tweet) that means that the creators
of these tweets must have *protected* their account, and then flipped it back to
public.  I guess it's also possible that Twitter suspended them, and then
reversed their action. I've heard from other people who will protect their
account when a tweet goes viral to protect themselves from abuse and unwanted
attention, and then turn it back to public again when the storm passes. I think
this could be evidence of that happening.  

One unexpected thing that I noticed in the process of digging through the results is that even after an account has been suspended it appears that
media URLs associated with their tweets still resolve. For example the
polNewsForever account was suspended but [their profile image](https://pbs.twimg.com/profile_images/862114761865142272/n9XHLXJt_normal.jpg) still resolves. In fact *videos and images* that polNewsForever have posted also
still seem to resolve. The same is true of actual deletes. I'm not going to reference the images and videos here because they were
suspended for a reason. So you will need to take my word for it...or run an
experiment yourself...

FWIW, a quick test on Facebook shows that it works the same way. I created a public post with an image, copied the URL for the image, deleted the post, and the image URL still worked. Maybe the content expires in their CDNs at some point? It would be weird if it just lived their forever like a dead neuron. I guess this highlights why it's important to limit the distribution of the JSON data that contain these URLs.

Since the avatar URLs are still available it's possible to go through the
suspended accounts and look at their avatar images. Here's what I found:

<img alt="suspended avatar images" class="img-responsive" src="/images/suspended.png">

Notice the pattern? They aren't eggheads, but pretty close. Another interesting
thing to note is that 52% of the suspended accounts were created August 11, 2017
or after (the date of the march). So a significant amount of the suspensions
look like Twitter trying to curb traffic created by bots.

[notes]: https://inkdroid.org/2017/08/15/utr/
