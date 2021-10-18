---
layout: post
created: 2021-08-20T18:09:00Z
title: twarc-hashtags
tags:
- twitter
- twarc
- visualization
---


One of the nice things that we did with [twarc2] is to design it so you can add
[plugins] relatively easily. These plugins extend twarc's basic functionality
to do different things with collected Twitter data. This is just a quick post
about a new plugin [twarc-hashtags].

*twarc-hashtags* was born of necessity. As I mentioned in the [last post] I've
been doing some work with [Alejandra Josiowicz] to examine tweets about
Brazilian activist [Marielle Franco]. Thanks to the Academic Research product
track we were able to collect all the tweets matching the phrase [Marielle
Franco].

```bash
twarc2 search --archive '"marielle franco"' tweets.jsonl
```


But we wanted to discover what hashtags were used in this initial dataset in
order to broaden the search using relevant hashtags and then run it again.

Once you `pip install twarc-hashtags` you get a new command `hashtags` which
you can use to generate a CSV dataset that represents the hashtags present in
your data:

```bash
twarc2 hashtags tweets.jsonl hashtags.csv
```

The generated CSV is pretty simple. It has two columns: `hashtag` and `tweets`.
While your data is being read a little SQLite database is populated which has
three columns: `tweet id`, `created`, and `hashtag`. This allows for easy
counting (using SQL) but also for a bit more manipulation. 

For example, if you would like to see the hashtags grouped by month you
can:

```bash
twarc2 hashtags tweets.jsonl hashtags.csv --group month
```

The generated dataset will have an additional column for `time` containing
a year-month value, e.g. 2020-03. You can do the same for day, week, and year
if you want to group differently.

In addition you can limit the number of hashtags to display. So if you just
wanted to see the top 20 hashtags per month you could:

```bash
twarc2 hashtags tweets.jsonl hashtags.csv --group month --limit 20
```

And finally, since loading the SQLite database can take some time (for example
if you are looking through 3.8 million tweets like I was) you can load it the
first time and then use `--no-import` afterwards to skip the import step and
use the existing SQLite database. This will allow you to try grouping by
something different, or using a new limit, without needing to parse all that
data again.

```bash
twarc2 hashtags tweets.jsonl hashtags.csv --group week --limit 10 --no-import
```

Maybe some fancier output than CSV will get added over time (ideas are
welcome). Having the output in CSV means you can pretty easily drop it into
another tool, like D3, GoogleSheets, Tableau, DataWrapper, etc.

I've been meaning to try [RawGraphs] after seeing it come up in [a thread] that
Anne Helmond kicked off about some of her data visualization work some time
ago. Here's what the top 25 hashtags look like over time as a BumpGraph. If you
want you can use the [rawgraphs file] (it's JSON) to upload it yourself and
tweak it.

<a href="/images/marielle-franco-hashtags.svg"><img src="/images/marielle-franco-hashtags.svg" class="img-responsive"/></a>

If you click on the image it might be *a bit* easier to read (you can hover on
the streams to see what they are)--but clearly it needs a bit of work still.
One thing it shows pretty clearly though is the emergence of
#QuemMandouMatarMarielle (Who Ordered Marielle to be Killed), the yellow band,
that started the year after her murder, and has continued since.

If you get a chance to try the [twarc-hashtags] plugin please let me know!

[last post]: https://inkdroid.org/2021/08/17/delete/
[Alejandra Josiowicz]: https://twitter.com/AleJosiowicz
[Marielle Franco]: https://en.wikipedia.org/wiki/Marielle_Franco
[DataWrapper]: https://datawrapper.de
[twarc2]: https://twarc-project.readthedocs.io/en/latest/twarc2/
[plugins]: https://twarc-project.readthedocs.io/en/latest/plugins/
[twarc-hashtags]: https://pypi.org/project/twarc-hashtags/
[a thread]: https://twitter.com/silvertje/status/1180122512929280001
[rawgraphs file]: /images/marielle-franco-hashtags.rawgraphs
[RawGraphs]: https://rawgraphs.io
