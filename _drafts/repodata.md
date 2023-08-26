---
layout: post
title: TUI Data Curation
tags:
- maps
- archives
- python
- curation
---

Off-and-on over the past few years I've been helping out with the RepoData project, which is a dataset of location information for more than 30,000 archival repositories in the United States. The initial data collection was done by [Eira], [Ben], and [Whitney] over several years by aggregating information from over 100 sources. After this heavy lift I worked a bit with [Hillel] to help move the data from Excel spreadsheets (where they created) to CSV, JSON and GeoJSON files, where they are managed on [GitHub].

The hope has been to make it easy for people to update this data, without needing to submit *pull requests* on Github. We still have work to do on that front. However we were fortunate to have a PR contribution from [Charlie Macquarie], who had collected some data for archives in California from the [California Revealed] project. As we merged this data we noticed that we did end up with some duplicates.

We realized that we needed a process to ensure that we weren't introducing duplicate entries, when people submitted new data via GitHub. Specifically we wanted a process that:

- identified potential duplicates by name, city and state
- allowed information to be merged from one records to another
- allowed the deletion of duplicate records
- could identify duplicates involving a particular contributor
- could ignore duplicates where a PO Box was involved (the dataset is known to have these)
- kept the data sorted properly so [diffs](https://docs.github.com/en/pull-requests/committing-changes-to-your-project/viewing-and-comparing-commits/comparing-commits) were possible
- relatively simple to run by a project contributor

These are some pretty specific requirements. After conferring with Hillel and Charlie I developed a small Python [Terminal User Interface] utility that used [Pandas] and [Rich] to allow the user to manipulate the dataset using a set of keyboard commands: next, previous, move, delete, etc.

When you run the program you are presented with tabular interface where the identified duplicate records are laid out side by side. The user can choose to copy values from one record to another, and delete records once they are no longer needed, and save when they are done.

<div class="embed-resonsive">
<video controls width="100%" poster="/images/dedupe.png">
<source src="/videos/dedupe.mp4" type="video/mp4">
</video>
</div>

In general I was pretty happy with [Rich] for displaying the data in the terminal. It seems mostly oriented to creating TUI displays, and (unless I misunderstood) the components for gathering input were pretty rudimentary, but got the job done.

We'll see how well the TUI approach works in practice but I like the fact that we don't need to keep a web application online for doing this data-curation, and running the tool is fairly easy if you've have a modern Python environment with [Poetry] installed.

A couple years ago I created [a map] using the geo-coordinates in the data. It lets you zoom in on locations, and even link to Google Street View to see what the location looks like. For example:

<a href="https://repodata.github.io/RepoMap/"><img class="img-fluid" src="/images/repodata-map.png"></a>
<a href="/images/repodata-lawrence.png"><img class="img-fluid" src="/images/repodata-lawrence.png"></a>
<a href="https://www.google.com/maps/@38.9570436,-95.2447053,3a,75y,193.24h,92.52t/data=!3m6!1e1!3m4!1sIpSBrjycBtRZopm0w5Lcjg!2e0!7i13312!8i6656?entry=ttu"><img class="img-fluid" src="/images/repodata-streetview.png"></a>

It's actually kind of a fun game trying to find the archive when you land in Street View...

I'm thinking one way of moving the data curation process forward a bit would be to allow people to search the data, and to easily click on a link in the record detail to create a ticket in Github, if data needs to be updated. This will require us to keep an eye on the issue tracker for records that need to be updated, but hopefully that won't be too difficult.

If you have thoughts or ideas please [get in touch]. And if the data is useful to you please download and use it, it's available under a [Open Data Commons Open Database License].

[Eira]: https://eiratansey.com/about/
[Ben]: https://www2.archivists.org/prof-education/faculty/ben-goldman
[Whitney]: https://repositorydata.wordpress.com/author/kwhitneyray/
[Hillel]: https://hillelarnold.com/
[GitHub]: https://github.com/RepoData/RepoData
[Charlie Macquarie]: https://charliemacquarie.com/
[California Revealed]: https://californiarevealed.org/collections/list/institution
[Terminal User Interface]: https://en.wikipedia.org/wiki/Text-based_user_interface
[Pandas]: https://pandas.pydata.org/
[Rich]: https://rich.readthedocs.io/en/stable/
[get in touch]: https://inkdroid.org/about/
[Open Data Commons Open Database License]: https://opendatacommons.org/licenses/odbl/summary/
[Poetry]: https://python-poetry.org/
