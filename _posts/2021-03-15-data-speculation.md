---
date: 2021-03-16 20:17:03
title: Data Speculation
tags:
- teaching
- python
- data
layout: post
---

I've taken the ill-advised approach of using the Coronavirus as a topic to frame
the exercises in my computer programming class this semester. I say "ill-advised" because given the impact that COVID has been having on students I've
been thinking they probably need a way to *escape* news of the virus by way of
writing code, rather than diving into it more. It's late in the semester to
modulate things but I think we will shift gears to look at programming through
another lens after spring break.

That being said, one of the interesting things we've been doing is looking at
[vaccination data] that is being released by the Maryland Department of Health
through [their] ESRI [ArcGIS Hub]. Note: this dataset has since been removed from the web because it has been superseded by a [new dataset] that includes single dose vaccinations.

We noticed that this dataset recorded
a small number of vaccinations as happening as early as the 1930s up until
December 11, 2020 when vaccines were approved for use. I [asked
students](https://umd-ischool-inst326.github.io/inst326-public/modules/module05/exercises/exercise05_covid.html)
to apply what we have been learning about Python (files, strings, loops, and
sets) to identify the Maryland counties that were responsible for generating this anomalous data.

I thought this exercise provided a good demonstration using real, live data
that critical thinking about the provenance of data is always important because
*there is no such thing as raw data* [@Gitelman:2013].

While we were working with the data to count the number of anomalous
vaccinations per county one of my sharp eyed students noticed that the results
we were seeing with [my] version of the dataset (downloaded on February 28)
were different from what we saw with [his] (downloaded on March 4).

We expected to see *new* rows in the later one because new vaccination data
seem to be reported daily--which is cool in itself. But we were surprised to
find new vaccination records for dates earlier than December 11,
2020. Why would new vaccinations for these erroneous older dates still be entering the system?

For example the second dataset downloaded March 4 acquired 6 new rows:

| Object ID | Vaccination Date | County | Daily First Dose | Cumulative First Dose | Daily Second Dose | Cumulative Second Dose |
| -------- | --------------------- | --------------- | ------- | ------- | ------- | ------- |
| 4  | 1972/10/13  | Allegany        | 1 | 1 | 0 | 0 |
| 5  | 1972/12/16  | Baltimore       | 1 | 1 | 0 | 0 |
| 6  | 2012/02/03  | Baltimore       | 1 | 2 | 0 | 0 |
| 28 | 2020/02/24  | Baltimore City  | 1 | 2 | 0 | 0 |
| 34 | 2020/08/24  | Baltimore       | 1 | 4 | 0 | 0 |
| 64 | 2020/12/10  | Prince George's | 1 | 3 | 0 | 0 |

And these rows present in the February 28 version were deleted in the March 4 version: 

| Object ID | Vaccination Date | County | Daily First Dose | Cumulative First Dose | Daily Second Dose | Cumulative Second Dose |
| -------- | --------------------- | --------------- | ------- | ------- | ------- | ------- |
| 4        | 2019/12/26  | Frederick       | 1              | 1                   | 0               | 0                    |
| 15       | 2020/01/25  | Talbot          | 1              | 1                   | 0               | 0                    |
| 19       | 2020/01/28  | Baltimore       | 1              | 1                   | 0               | 0                    |
| 20       | 2020/01/30  | Caroline        | 1              | 1                   | 0               | 0                    |
| 28       | 2020/02/12  | Prince George's | 1              | 1                   | 0               | 0                    |
| 30       | 2020/02/20  | Anne Arundel    | 1              | 6                   | 0               | 0                    |
| 56       | 2020/10/16  | Frederick       | 1              | 7                   | 0               | 4                    |
| 59       | 2020/11/01  | Wicomico        | 1              | 1                   | 0               | 0                    |
| 60       | 2020/11/04  | Frederick       | 1              | 8                   | 0               | 4                    |

I found these additions perplexing at first, because I assumed these outliers
were part of an initial load. But it appears that the anomalies are still being
generated? The deletions suggest that perhaps the anomalous data is being
identified and scrubbed in a live system that is then dumping out the data? Or
maybe the code that is being used to update the dataset in ArcGIS Hub
itself is malfunctioning in some way? If you are interested in toying around
with the code and data it is [up on
GitHub](https://github.com/edsu/md-covid-vaccination-data). I was interested to learn about [pandas.DataFrame.merge](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.merge.html?highlight=merge#pandas.DataFrame.merge) which is useful for diffing tables when you use `indicator=True`.

At any rate, having students notice, measure and document anomalies like this
seems pretty useful. I also asked them to *speculate* about what kinds of
activities could generate these errors. I meant *speculate* in the speculative
fiction sense of imagining a specific scenario that caused it. I think this
made some students scratch their head a bit, because I wasn't asking them for
*the* cause, but to invent a possible cause.

Based on the results so far I'd like
to incorporate more of these speculative exercises concerned with the
functioning of code and data representations into my teaching. I want to
encourage students to think creatively about data processing as they learn
about the nuts and bolts of how code operates. For example the treatments in
[How to Run a City Like Amazon, and Other
Fables](https://shop.meatspacepress.com/product/how-to-run-a-city-like-amazon-and-other-fables)
which use sci-fi to test ideas about how information technologies are deployed
in society. Another model is the [Speculative Ethics Book
Club](https://www.internetruleslab.com/bookclub) which also uses sci-fi to
explore the ethical and social consequences of technology. I feel like I need
to read up on *specualtive research* more generally before doing this though
[@Michael:2020]. I'd also like to focus the speculation down at the level of
the code or data processing, rather than at the macro super-system level. But
that has its place too.

Another difference is that I was asking students to engage in speculation about
the past rather than the future. How did the data end up this way? Perhaps
this is more of a genealogical approach, of winding things backwards, and
tracing what is known. Maybe it's more Mystery than Sci-Fi. The speculative
element is important because (in this case) operations at the MD Dept of
Health, and their ArcGIS Hub setup are mostly opaque to us. But even when
access isn't a problem these systems they can feel opaque, because rather than
there being a dearth of information you are drowning in it. Speculation is
a useful [abductive] approach to hypothesis generation and, hopefully,
understanding.

*Update 2021-03-17: Over [in the fediverse](https://post.lurk.org/@air_pump/105904508701388654) David Benque recommended I take a look at Matthew Stanley's chapter in [@Gitelman:2013] "Where Is That Moon, Anyway? The Problem of Interpreting Historical Solar Eclipse Observations" for the connection to Mystery. For the connection to Peirce and abduction he also pointed to Luciana Parisi's chapter "Speculation: A method for the unattainable" in @Lury:2012. Definitely things to follow up on!*

### References

[my]: https://github.com/edsu/md-covid-vaccination-data/blob/main/data-2021-02-28.csv
[his]: https://github.com/edsu/md-covid-vaccination-data/blob/main/data-2021-03-04.csv 
[vaccination data]: https://coronavirus.maryland.gov/datasets/md-covid19-totalvaccinationscountyfirstandseconddose 
[ArcGIS Hub]: https://www.esri.com/en-us/arcgis/products/arcgis-hub/overview
[their]: https://coronavirus.maryland.gov
[abductive]: https://plato.stanford.edu/entries/abduction/peirce.html
[new dataset]: https://coronavirus.maryland.gov/datasets/md-covid19-totalvaccinationscountyfirstandsecondsingledose
