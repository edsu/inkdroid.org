---
title: Fuzzy File Formats
layout: post
tags:
- teaching
- digital-curation
---


We just finished the third module in the [Intro to Digital Curation] class that
I'm teaching this semester. The first module was mostly us getting our
bearings, and the second was learning about how confusing the term *digital
object* is, and [getting acquainted] with interacting with the file system.

The overarching goal of the class is to start with seeming simple ideas like
digital objects, and files and keep zooming out until the last module where we
talk about infrastructure. This may prove to be a bad idea, but so far it seems
to be working  ok. Each module is two weeks where we alternate between reading
and discussion (in Canvas) and reading and coding (in Jupyter notebooks).

In Module 3 we discussed and experimented with file formats and standards. We
talked about Chapter 3 in Trevor Owens' [Theory and Craft of Digital
Preservation] where he lays out some examples of the artifactual qualities of
digital objects, that center on the properties of several types of files, and
their use. I asked students to identify the formats at play, and I was
surprised and intruiged by the confusion between file formats and other
computational objects. For example some thought that a game was a format. I
mean, I guess they often are. But a game itself is abstract a concept to be a
file format.

Maybe the game is made up of some Python source code files (as in Owens'
Civilization example). Or perhaps the script to Rent is made up of Word files.
Or in the case of the Mystery_House game a specific disk imaging format was
used to store a representation of a physical disk. Some students confused the
file format and the medium it was stored on (a zip disk, a CD or a floppy
disk).

Perhaps this confusion arose from my pairing of the Owens reading with Andrew
Russell and Lee Vinsel's short NYTimes piece [The Joy of Standards]. I wanted
students to think about the relationship of file formats and standards. But
standards swarm in devices like storage media and computational devices. I
didn't do a great job of distinguishing between file formats, storage and
standards, and showing how they were interrelated. That being said, more than
half the students were able to communicate the difference--so it wasn't a total
wash.

In the [Jupyter notebook exercise] we explored file format identification
through three different methods:

* looking at file extensions
* using the [libmagic] via the [python-magic] library
* using the [PRONOM] registry via the [fido] tool

Since running fido wasn't exactly trivial in a Jupyter notebook (it's really
designed to be run from the command line) I created a small pip installable
utility called [puid] which give you one function `get_puid()` which made it
much easier to give to students to use. Maybe it could be useful in other
contexts:

```python
>>> from puid import get_puid
>>> get_puid('inst341/278141.jpg')
'fmt/44'
```

The notebook provides some examples of how to programmatically iterate through
files and apply each method for file format identification. Then it asks them
to do some file format checking of unique dataset of files that I created for
each student that was sampled from the Govdocs1 dataset on [Digital Corpora].
The interesting part came when they were asked to compare the results, and try
to explain why there might be differences.

Several students honed right in on the fact that python-magic and fido
represented different ways of *classifying* formats. The granularities were
often different, and the identifiers they used were different as well. Some
even highlighted the processes by which these tools are maintained which was
very interesting to see.

All in all I think it was a successful exercise, because students started
thinking about how different tools generate different truth values, and that
it's important to think critically about the tools we use, especially in
digital curation practices. Tools themselves are part of particular
computational practices, and not law etched in stone. Simple things like file
format identifiers have fuzzy edges that can be hard to define. But identifying
them is super important for rendering them as digital objects.

Next up we're looking at *internal metadata* which I'll try to write about here
when we get to it. I would like to bundle up these notebooks in a useful way at
the end of the semester if these exercises look useful to others. I've really
been enjoying using [Colab] so far. Thanks [Nick] for the recommendation!

[Intro to Digital Curation]: https://inkdroid.org/2020/09/20/teaching-digital-curation/

[getting acquainted]: https://colab.research.google.com/github/edsu/inst341/blob/master/modules/module-02/notebook.ipynb

[The Joy of Standards]: https://www.nytimes.com/2019/02/16/opinion/sunday/standardization.html

[Theory and Craft of Digital Preservation]: https://jhupbooks.press.jhu.edu/title/theory-and-craft-digital-preservation

[libmagic]: https://linux.die.net/man/3/libmagic

[PRONOM]: http://www.nationalarchives.gov.uk/PRONOM/Default.aspx

[fido]: http://fido.openpreservation.org/

[Digital Corpora]: https://digitalcorpora.org/corpora/files

[python-magic]: https://pypi.org/project/python-magic/

[Jupyter notebook exercise]: https://colab.research.google.com/github/edsu/inst341/blob/master/modules/module-03/notebook.ipynb

[Nick]: https://ruebot.net/

[Colab]: https://colab.research.google.com

[puid]: https://github.com/edsu/puid#readme
