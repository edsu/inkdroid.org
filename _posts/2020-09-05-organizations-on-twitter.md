---
layout: post
title: Organizations on Twitter
tags:
- social media
- Wikipedia
---

A question came up on the [air-l] discussion list about how someone could take a
list of organization names and find their official Twitter handles. As you can
see from [the thread] there were a few good answers. I thought it might be a fun
experiment to try to automate a little heuristic:

1. Look the organization up on Wikipedia
2. Look for the official website URL in the Wikipedia article
3. Look for a Twitter account link on the official website

Of course this approach relies on there being a Wikipedia article about the
organization in the first place, which might be a stretch depending on what
organizations you are looking for. This particular list was of non-profits, so
there might be a chance.

I coded up the experiment over in Colab as [a Jupyter notebook]. I was fun to
decompose the problem into discrete functions that perform and test each step
and then combine them all at the end to create a function that takes an
organization name and returns the Twitter account. You can see that it does
fairly well with the examples I tried (although these are huge organizations):

```python
>>> get_info('Exxon Mobil')
{
  'article': 'https://en.wikipedia.org/wiki/ExxonMobil',
  'homepage': 'http://www.exxonmobil.com',
  'twitter': '@exxonmobil'
}

>>> get_info('Sears Roebuck')
{
  'article': 'https://en.wikipedia.org/wiki/Sears_Roebuck',
  'homepage': 'http://www.sears.com',
  'twitter': '@searsdeals'
}

>>> get_info('US Navy')
{
  'article': 'https://en.wikipedia.org/wiki/US_Navy',
  'homepage': 'http://www.navy.mil/',
  'twitter': '@usnavy'
}

>>> get_info("McDonalds")
{
  'article': 'https://en.wikipedia.org/wiki/McDonald%27s',
  'homepage': 'https://www.mcdonalds.com',
  'twitter': '@McDonalds'
}

>>> get_info('University of Maryland')
{
  'article': 'https://en.wikipedia.org/wiki/University_of_Maryland,_College_Park',
  'homepage': 'https://www.umd.edu/',
  'twitter': '@UofMaryland'
}
```

But I'm sure there are ways to improve it. Perhaps one way would be to put the
human in the loop for when there was uncertainty, like when the Wikipedia search
results have multiple options, or when multiple Twitter accounts are found on
the page. I think it could also be extended too to look for Facebook and
Instagram accounts too. And it might be possible to use structured data from
Wikipedia instead of relying on conventions in English Wikipedia.

But I leave those ideas for another day...

Update 2020-09-06: Another day came and the results for this use case were very low (2/50). I
tried again with a different approach of using Google's top result and looking
for links in there, which found 30/50. The code is up on GitHub as [luckysocial](https://github.com/edsu/luckysocial)

Update 2020-09-07: Another day came and I turned it into a command line utility
that you can install with `pip install luckysocial`. If you happen to know the
URL for a website already you can use the `--url-col` option to skip the Google
lookup and head straight to extracting the accounts from the page. Oh, and it
will also look for Facebook, Instagram, YouTube and RSS feeds now, in addition
to Twitter. For example:

    % luckysocial "uc santa barbara"

    name: uc santa barbara
    homepage: https://www.ucsb.edu/
    twitter: https://twitter.com/ucsantabarbara
    facebook: https://www.facebook.com/ucsantabarbara
    instagram: https://www.instagram.com/ucsantabarbara

[air-l]: http://listserv.aoir.org/pipermail/air-l-aoir.org/2020-September/080004.html
[the thread]: http://listserv.aoir.org/pipermail/air-l-aoir.org/2020-September/080004.html
[a Jupyter notebook]: https://colab.research.google.com/drive/1OfKcSrwm3Q1VaLIiply5zz6cCDX_QdFJ

