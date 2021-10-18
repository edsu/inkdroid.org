---
title: Disinformation Metadata
tags:
- social-media
- moderation
layout: post
---


[Ilya Kreymer] recently asked a question over in [Documenting the Now Slack] about whether
Twitter's API data includes information about whether a tweet has been labeled
as *disinformation*. This structured data is important for building tools that
help trace how disinformation is propagating in Twitter and social media more
generally. It also can provide a view into how Twitter themselves are working to
combat the problem.

I've looked for the disinformation label in Twitter API JSON before and not seen
it. But I figured it couldn't hurt to look again so I used [this example]. Once
installed it's a snap to fetch the JSON data for a tweet with [twarc]:

    twarc tweet 1297495295266357248

I've included the data below here and as a [gist](https://gist.github.com/edsu/3271d6aec4a2ed9192065425c9aeb56b). I don't see anything related to the label, do you?

```json
{
  "created_at": "Sun Aug 23 11:25:59 +0000 2020",
  "id": 1297495295266357248,
  "id_str": "1297495295266357248",
  "full_text": "So now the Democrats are using Mail Drop Boxes, which are a voter security disaster. Among other things, they make it possible for a person to vote multiple times. Also, who controls them, are they placed in Republican or Democrat areas? They are not Covid sanitized. A big fraud!",
  "truncated": false,
  "display_text_range": [
    0,
    280
  ],
  "entities": {
    "hashtags": [],
    "symbols": [],
    "user_mentions": [],
    "urls": []
  },
  "source": "<a href=\"http://twitter.com/download/iphone\" rel=\"nofollow\">Twitter for iPhone</a>",
  "in_reply_to_status_id": null,
  "in_reply_to_status_id_str": null,
  "in_reply_to_user_id": null,
  "in_reply_to_user_id_str": null,
  "in_reply_to_screen_name": null,
  "user": {
    "id": 25073877,
    "id_str": "25073877",
    "name": "Donald J. Trump",
    "screen_name": "realDonaldTrump",
    "location": "Washington, DC",
    "description": "45th President of the United States of America🇺🇸",
    "url": "https://t.co/OMxB0x7xC5",
    "entities": {
      "url": {
        "urls": [
          {
            "url": "https://t.co/OMxB0x7xC5",
            "expanded_url": "http://www.Instagram.com/realDonaldTrump",
            "display_url": "Instagram.com/realDonaldTrump",
            "indices": [
              0,
              23
            ]
          }
        ]
      },
      "description": {
        "urls": []
      }
    },
    "protected": false,
    "followers_count": 85703011,
    "friends_count": 50,
    "listed_count": 118941,
    "created_at": "Wed Mar 18 13:46:38 +0000 2009",
    "favourites_count": 5,
    "utc_offset": null,
    "time_zone": null,
    "geo_enabled": true,
    "verified": true,
    "statuses_count": 55281,
    "lang": null,
    "contributors_enabled": false,
    "is_translator": false,
    "is_translation_enabled": true,
    "profile_background_color": "6D5C18",
    "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
    "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
    "profile_background_tile": true,
    "profile_image_url": "http://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_normal.jpg",
    "profile_image_url_https": "https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_normal.jpg",
    "profile_banner_url": "https://pbs.twimg.com/profile_banners/25073877/1595058372",
    "profile_image_extensions_alt_text": null,
    "profile_banner_extensions_alt_text": null,
    "profile_link_color": "1B95E0",
    "profile_sidebar_border_color": "BDDCAD",
    "profile_sidebar_fill_color": "C5CEC0",
    "profile_text_color": "333333",
    "profile_use_background_image": true,
    "has_extended_profile": false,
    "default_profile": false,
    "default_profile_image": false,
    "following": false,
    "follow_request_sent": false,
    "notifications": false,
    "translator_type": "regular"
  },
  "geo": null,
  "coordinates": null,
  "place": null,
  "contributors": null,
  "is_quote_status": false,
  "retweet_count": 0,
  "favorite_count": 0,
  "favorited": false,
  "retweeted": false,
  "lang": "en"
}
```

I also took the opportunity to look at Twitter's new [v2 API] and see how the
tweet looks there
([gist](https://gist.github.com/edsu/2e039cc078e1bb5a2e69940c8ff99e17)). In case
you want to give it a try yourself I put the code I used up in [this
gist](https://gist.github.com/edsu/1e2c4fc2ea2dae90ea8fb660b708e690).

```json
{
  "data": [
    {
      "conversation_id": "1297495295266357248",
      "lang": "en",
      "source": "Twitter for iPhone",
      "context_annotations": [
        {
          "domain": {
            "id": "10",
            "name": "Person",
            "description": "Named people in the world like Nelson Mandela"
          },
          "entity": {
            "id": "799022225751871488",
            "name": "Donald Trump",
            "description": "US President Donald Trump"
          }
        },
        {
          "domain": {
            "id": "35",
            "name": "Politician",
            "description": "Politicians in the world, like Joe Biden"
          },
          "entity": {
            "id": "799022225751871488",
            "name": "Donald Trump",
            "description": "US President Donald Trump"
          }
        },
        {
          "domain": {
            "id": "123",
            "name": "Ongoing News Story",
            "description": "Ongoing News Stories like 'Brexit'"
          },
          "entity": {
            "id": "1220701888179359745",
            "name": "COVID-19"
          }
        }
      ],
      "text": "So now the Democrats are using Mail Drop Boxes, which are a voter security disaster. Among other things, they make it possible for a person to vote multiple times. Also, who controls them, are they placed in Republican or Democrat areas? They are not Covid sanitized. A big fraud!",
      "entities": {
        "annotations": [
          {
            "start": 11,
            "end": 19,
            "probability": 0.9011,
            "type": "Organization",
            "normalized_text": "Democrats"
          },
          {
            "start": 31,
            "end": 45,
            "probability": 0.4498,
            "type": "Product",
            "normalized_text": "Mail Drop Boxes"
          },
          {
            "start": 208,
            "end": 217,
            "probability": 0.5832,
            "type": "Organization",
            "normalized_text": "Republican"
          },
          {
            "start": 222,
            "end": 229,
            "probability": 0.5921,
            "type": "Organization",
            "normalized_text": "Democrat"
          }
        ]
      },
      "possibly_sensitive": false,
      "id": "1297495295266357248",
      "public_metrics": {
        "retweet_count": 0,
        "reply_count": 0,
        "like_count": 0,
        "quote_count": 0
      },
      "author_id": "25073877",
      "created_at": "2020-08-23T11:25:59.000Z"
    }
  ],
  "includes": {
    "users": [
      {
        "verified": true,
        "public_metrics": {
          "followers_count": 85705437,
          "following_count": 50,
          "tweet_count": 55284,
          "listed_count": 118951
        },
        "description": "45th President of the United States of America\ud83c\uddfa\ud83c\uddf8",
        "url": "https://t.co/OMxB0x7xC5",
        "entities": {
          "url": {
            "urls": [
              {
                "start": 0,
                "end": 23,
                "url": "https://t.co/OMxB0x7xC5",
                "expanded_url": "http://www.Instagram.com/realDonaldTrump",
                "display_url": "Instagram.com/realDonaldTrump"
              }
            ]
          }
        },
        "name": "Donald J. Trump",
        "location": "Washington, DC",
        "profile_image_url": "https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_normal.jpg",
        "id": "25073877",
        "protected": false,
        "username": "realDonaldTrump",
        "created_at": "2009-03-18T13:46:38.000Z"
      }
    ]
  }
}
```

I still didn't see it, but maybe I wasn't squinting right? I did see that
according to the data that Donald Trump is in the class of *Person* who are
"Named people in the world like Nelson Mandela". I mean yes, but no.

When using the [v2 API] you need to indicate in the request what *fields* you
would like to have in the response. There are a set of names for the types of
fields, such as `media.fields`, `tweet.fields`, `place.fields`, `poll.fields`
and `user.fields`. Each of these field types has an enumerated set of assocated
values like `duration_minutes` for a poll, or `context_annotations` for a tweet,
etc.

There are lots of these enumerated values so I started by just requesting all of
them. Interestingly this failed, and the error message I received indicated that
I had requested field values that required elevated privileges. Once I removed
these from the request I was able to get back the JSON I pasted above.

This little error message did provide a glimpse of what data Twitter don't
provide to regular API developer accounts through the v2 API. For example I had
to remove `non_public_metrics` from `media_fields` and `tweet_fields` because
the following fields required additional permissions:

* non_public_metrics.impression_count
* non_public_metrics.url_link_clicks
* non_public_metrics.user_profile_clicks

Similarly I had to remove `organic_metrics` from `media.fields` and
`tweet.fields` because the following fields required additional permissions:

* organic_metrics.impression_count
* organic_metrics.like_count
* organic_metrics.reply_count
* organic_metrics.retweet_count
* organic_metrics.url_link_clicks
* organic_metrics.user_profile_clicks

And finally I had to remove `promoted_metrics` from `media.fields` and
`tweet.fields` because the following fields required additional permissions:

* promoted_metrics.impression_count
* promoted_metrics.like_count
* promoted_metrics.reply_count
* promoted_metrics.retweet_count
* promoted_metrics.url_link_clicks
* promoted_metrics.user_profile_clicks

Many of these seem to be present in the [v1.1 Metrics API] but it's interesting
that the new API is folding that functionality in to the representation of
tweets. I did notice that the `public_metrics` counts were all zero, so I guess they are still getting v2 working:

```json
"public_metrics": {
	"retweet_count": 0,
	"reply_count": 0,
	"like_count": 0,
	"quote_count": 0
}
```

As much as I might wish that to be true I know it's not. For the meantime it
might be useful to get support in a scraping tool like [twint] to see if this
important metadata could be pulled out of the page.

[Ilya Kreymer]: https://twitter.com/IlyaKreymer
[this example]: https://twitter.com/realDonaldTrump/status/1297495295266357248
[Documenting the Now Slack]: https://bit.ly/docnow-slack
[v2 API]: https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets
[v1.1 Metrics API]: https://developer.twitter.com/en/docs/twitter-api/v1/metrics/get-tweet-engagement/overview
[twint]: https://github.com/twintproject/twint
[twarc]: https://github.com/docnow/twarc
