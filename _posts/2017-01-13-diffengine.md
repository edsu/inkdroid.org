---
layout: post
title: Tracking Changes With diffengine
tags:
- docnow
- news
- rss
---

Our most respected newspapers want their stories to be accurate, because once
the words are on paper, and the paper is in someone's hands, there's no changing
them. The words are literally fixed in ink to the page, and mass produced into
many copies that are near impossible to recall. Reputations can rise and fall
based on how well newspapers are able to report significant events. But of
course physical paper isn't the whole story anymore.

News on the web can be edited quickly as new facts arrive, and more is learned.
Typos can be quickly corrected--but content can also be modified for a multitude
of purposes. Often these changes instantly render the previous version
invisible. Many newspapers use their website as a place for their first drafts,
which allows them to craft a story in near real time, while being the first to
publish breaking news.

News travels *fast* in social media as it shared and reshared across all kinds
of networks of relationships. What if that initial, perhaps flawed version goes
viral, and it is the only version you ever read?  It's not necessarily fake
news, because there's no explicit intent to mislead or deceive, but it may not
be the best, [most accurate] news either.  Wouldn't it be useful to be able to
watch how news stories shift in time to better understand how the news is
produced? Or as Jeanine Finn memorably put it: how do we understand the 
news [before truth gets its pants on]?

---

As part of [MITH]'s participation in the [Documenting the Now] project we've
been working on an experimental utility called [diffengine] to help track how
news is changing. It relies on an old and quietly ubiquitous standard called
[RSS]. RSS is a data format for syndicating content on the Web. In other words
it's an automated way of sharing what's changing on your website. News
organizations use it heavily, and if you've every subscribed to a podcast you're
using RSS. If you have a blog or write on [Medium] an RSS feed is quietly be
generated for you whenever you write a new post.

So what diffengine does is really quite simple. First it subscribes to one or
more RSS feeds, for example the Washington Post, and then it watches to see if
any articles change their content over time. If a change is noticed a
representation of the change, or a "[diff]" is generated, archived at the
[Internet Archive] and (optionally) tweeted. We've been experimenting with an
initial version of diffengine by having it track the Washington Post, the
Guardian and Breitbart News which you can see on the following Twitter accounts:
[wapo_diff], [guardian_diff] and [breitbart_diff]. 

Here's an example of what a change looks like when it is tweeted:

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Deportation force is ‘not happening,’ Paul Ryan tells undocumented family - The Washi… <a href="https://t.co/OQEpG1Inj3">https://t.co/OQEpG1Inj3</a> -&gt; <a href="https://t.co/NsDNI5Dflt">https://t.co/NsDNI5Dflt</a> <a href="https://t.co/t0Q6iuG2qX">pic.twitter.com/t0Q6iuG2qX</a></p>&mdash; Editing the Wapo (@wapo_diff) <a href="https://twitter.com/wapo_diff/status/819885771469553664">January 13, 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

The text highlighted in red has been deleted and the text highlighted in green
has been added. But you can't necessarily take diffengine's word for it that the
text has been changed, right? Bots are [sending] all kinds of fraudulent and
intentionally misleading information out on the web, and in particular in social
media. So when diffengine notices new or changed content it uses Internet
Archive's [save page now] functionality to take a snapshot of the page, which it
then references in the tweet so you can see the original and changed content
there. You can see those links in the tweet above.

---

diffengine draws heavily on the inspiration of two previous projects, [NYTDiff]
and [NewsDiffs], which did very similar things. [NYTdiff] is able to create
presentable diff images and [tweet them] for the New York Times. But it was
designed to work specifically with the NYTimes API.  NewsDiffs provides a
comprehensive framework for watching changes on multiple sites (Washington Post,
New York Times, CNN, BBC, etc). But you need to be a programmer to add a [parser
module](https://github.com/ecprice/newsdiffs/tree/master/parsers) for a website
that you want to monitor. It is also fully functional web application which
requires some commitment to install and run.

With the help of [feedparser] diffengine takes a different approach of working
with any site that publishes an RSS feed of changes. This covers many news
organizations, but also personal blogs and organizational websites that put out
regular updates. And with the [readability] module diffengine is able to
automatically extract the primary content of pages, without requiring special
parsing to remove boilerplate material.

To do its work diffengine keeps a small database of feeds, feed entries and
version histories that it uses to notice when content has changed. If you know
your way around a sqlite database you can query it to see how content has
changed over time. The database could be a valuable source of research data if
you are studying the production of the news, or the way organizations or people
communicate online. One possible direction we are considering is creating a
simple web frontend for this database that allows you to navigate the changed
content without requiring SQL chops. If this sounds useful please get in touch
with the DocNow project, by joining our [Slack] channel or emailing us at 
<a href="mailto:info@docnow.io">info@docnow.io</a>.

[Installation] of diffengine is currently a bit challenging if you aren't
already familiar with installing Python packages from the command line. If you
are willing to give it a try let us know how it goes over on [GitHub]. Ideas for
sites for us to monitor as we develop diffengine are also welcome!

---

*Special thanks to [Matthew Kirschenbaum] and [Gregory Jansen] at the University
of Maryland for the initial inspiration behind this idea of showing rather than
telling what news is. The [Human-Computer Interaction Lab] at UMD hosted an
informal workshop after the recent election to see what possible responses could
be, and diffengine is one outcome from that brainstorming.*

[tweet them]: https://twitter.com/nyt_diff
[NYTDiff]: https://github.com/j-e-d/NYTdiff
[NewsDiffs]: http://newsdiffs.org/
[feedparser]: https://pythonhosted.org/feedparser/
[readability]: https://github.com/buriy/python-readability
[Medium]: https://help.medium.com/hc/en-us/articles/214874118-RSS-Feeds-of-publications-and-profiles
[wapo_diff]: https://twitter.com/wapo_diff
[guardian_diff]: https://twitter.com/guardian_diff
[breitbart_diff]: https://twitter.com/breitbart_diff
[diff]: http://catb.org/jargon/html/D/diff.html
[Internet Archive]: https://archive.org
[Documenting the Now]: https://www.docnow.io
[save page now]: https://archive.org/about/faqs.php#1050
[most accurate]: http://www.forbes.com/sites/kalevleetaru/2017/01/01/fake-news-and-how-the-washington-post-rewrote-its-story-on-russian-hacking-of-the-power-grid/#780dc24e291e
[before truth gets its pants on]: https://jeaninefinn.me/2016/11/15/understanding-fake-news-in-2016-before-the-truth-gets-its-pants-on/
[MITH]: http://mith.umd.edu
[diffengine]: https://github.com/docnow/diffengine
[RSS]: https://en.wikipedia.org/wiki/RSS
[sending]: http://firstmonday.org/ojs/index.php/fm/article/view/7090/5653
[Installation]: https://github.com/docnow/diffengine/#Install
[Slack]: https://docs.google.com/forms/d/e/1FAIpQLSf3E7PAXPoT-XoedpEy9UCTpDPS8kPj5JkMwpaWbuqVP0bTrQ/viewform
[GitHub]: https://github.com/docnow/diffengine
[Matthew Kirschenbaum]: https://twitter.com/mkirschenbaum
[Gregory Jansen]: https://twitter.com/gregj
[Human-Computer Interaction Lab]: http://www.cs.umd.edu/hcil/
