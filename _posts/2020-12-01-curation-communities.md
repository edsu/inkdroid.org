---
layout: post
date: 2020-12-01 19:29:00
title: Curation Communities
tags:
- teaching
- curation
- web
---

As I indicated in the [last post] I've been teaching digital curation this
semester at UMD. I ended up structuring the class around the idea of
*abstraction* where we started at a fairly low level looking at file systems
and slowly zoomed out to [file formats] and standards, types of metadata,
platforms and finally community. It was a zooming out process, like changing
the magnification on a microscope, or maybe more like the zooming out that
happens as you pop between levels in the pages of [Istvan Banyai]'s beautiful little children's book [Zoom] (pun intended).

<iframe style="margin-top: 20px; margin-bottom: 20px;" width="660" height="415" src="https://www.youtube.com/embed/1RPeFJJF73k" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

I'm curious to hear how well this worked from my student's perspective, but it
definitely helped me organize my own thoughts about a topic that can branch off
in many directions. This is especially the case because I wanted the class to
include discussion of digital curation concepts while also providing an
opportunity to get some hands on experience using digital curation techniques
and tools in the context of Jupyter notebooks. In addition to zooming out, it
was a dialectical approach, flipping between reading and writing prose and
reading and writing code, with the goal of reaching a kind of synthesis of
understanding that digital curation practice is about both concepts and
computation. Hopefully it didn't just make everyone super dizzy :)

This final module concerned *community*. In our reading and discussion we
looked at the [FAIR Principles] and talked about what types of practices they
encourage, and to evaluate some data sources in terms of findability,
accessibility, interoperability and reusability.

<a href="https://lumendatabase.org"><img class="img-responsive" src="/images/lumen.jpg"></a>

For the [notebook exercise] I decided to have students experiment with the
[Lumen Database](https://lumendatabase.org) (formerly Chilling Effects) which
is a clearinghouse for cease-and-desist notices received by web platforms like
Google, Twitter and Wikipedia. The database was created by [Wendy Seltzer] and
a team of legal researchers that wanted to be able to study how copyright law
and other legal instruments shaped what was, and was not, on the web.

Examining Lumen helped us explore digital curation communities for two reasons.
The first is that it provides an unprecedented look at how web platforms curate
their content in partnership with their users. There really is nothing else
like it unless you consider individual efforts like GitHub's [DMCA Repository]
which is an interesting approach too. The second reason is that Lumen itself is
an example of community digital curation practice and principles like FAIR.
FAIR began in the scientific community, and certainly has that air about it.
But Lumen embodies principles around findability and accessibility: this is
information that would be difficult if not impossible to access otherwise.

Lumen also shows how some data cannot be readily available: there is redacted
content, some notices lack information like infringing URLs. Working with Lumen
helps students see that not all data can be open, and that the FAIR principles
are a starting place for ethical conversations and designs, and not a rulebook
to be followed. The Lumen API requires that you get a key for doing any
meaningful work (the folks at Berkman-Klein were kind enough to supply me
a temporary one for the semester).

At any rate, if you are interested in taking a look the notebook (without the
Lumen key) is [available] on GitHub. I've noticed that sometimes the GitHub
JavaScript viewer for notebooks can timeout, so if you want you can also take
a look at it [over in Colab], which is the environment we've been using over the
semester. 

The notebook explores the basics of interacting with the API using the Python
requests library, while explaining the core data model that is behind the API,
which relates together the *principal*, the *sender*, the *recpipient* and the
*submitter* of a claim. It provides just a taste of the highly expressive
search options that allow searching, ordering and filtering of results along
many dimensions. It also provides an opportunity to show students the value of
build functional abstractions to help reduce copy and paste, and develop
reusable and testable curation functions.

The goal was to do a module about *infrastructure* after talking about
community. But unfortunately we ran out of time due to the pace of classes
during the pandemic. I felt that a lot was being asked of students in the all
online environment and I've really tried over the semester to keep things
simple. This last module on community was actually completely optional, but
I was surprised when half the class continued to do the work when it was not
officially part of their final grade. 

The final goal of using Lumen this week was to introduce them to a resource
that they could write about (essay) or use in a notebook or application that
will be their final project. I've spent the semester stressing the need to be
able to write both prose and code about digital curation practices and the
final project is an opportunity for them to choose to inflect one of those
modes more than the other.

[last post]: https://inkdroid.org/2020/11/30/mystery-file/
[FAIR Principles]: https://www.go-fair.org/fair-principles/
[Wendy Seltzer]: https://en.wikipedia.org/wiki/Wendy_Seltzer
[DMCA Repository]: https://github.com/github/dmca
[notebook exercise]: https://github.com/edsu/inst341/blob/master/modules/module-07/notebook.ipynb
[available]: https://github.com/edsu/inst341/blob/master/modules/module-07/notebook.ipynb
[over in Colab]: https://colab.research.google.com/drive/1i1w05c789l6xGkjRJjdKheDlVuJVU1PZ?usp=sharing
[Istvan Banyai]: https://en.wikipedia.org/wiki/Istvan_Banyai
[Zoom]: https://www.penguinrandomhouse.com/books/324143/zoom-by-istvan-banyai/
[file formats]: https://inkdroid.org/2020/10/09/fuzzy-file-formats/
