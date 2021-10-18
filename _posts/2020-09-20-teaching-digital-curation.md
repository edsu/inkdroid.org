---
title: Teaching Digital Curation
layout: post
tags:
- digital-curation
- teaching
---


<img class="img-responsive" src="/images/formats.png">

I'm lucky to be teaching a class about [digital curation] for undergraduate
information studies students this semester. I struggled a bit over the summer
with how to structure the class. Of course it is important to focus on the
concepts and theories of digital curation. But I think it's also important to
provide practical exercises that make those concepts concrete. I didn't want to
privilege either approach. A sociotechnical framing of information studies has
been extremely important in my own research, but asking undergraduates to dive
into the STS literature is asking for a lot I think. I want to whet their
appetite for STS approaches (maybe they will take a senior seminar or go on to
grad school). But I also want them to gain some *knowledge* and *skills* that
they can use in their current and future work.

I think it is also critically important to situate the study of digital curation
so that it isn't simply an esoteric matter that's only relevant for cultural
heritage organizations. Digital curation is set of concerns and practices that
are present in students' every day lives, and can be found all throughout
society--and these practices have real, social and political consequences.  Jobs
in the GLAM sector or digital humanities can be difficult to find, and the
practices of digital curation extend into several fields: data science, data
visualization, computer security, software development, etc. I think it's
important to show the continuity between these areas of expertise when teaching
digital curation at the undergraduate level--but this is pretty challenging.

Fortunately the class requires students to have completed introductions to
computer programming (Python) and information studies--so those are things I can
build on in the class. After some genuinely helpful [advice] on Twitter, and a
review of other digital curation courses (some at UMD, and some elsewhere) I
decided to formulate my learning outcomes using a layered approach where each of
the modules build up from basic principles and competencies:

1. Files and File Systems
2. Formats and Standards
3. Internal Metadata
4. External Metadata: Description
5. Platforms
6. Community
7. Infrastructure

Each module is two weeks long. In the first week we focus on a reading. I'm
mostly using Trevor Owens' [Theory and Craft of Digital Preservation]
and [Data Feminism] by Catherine D'Ignazio and Lauren Klein, but I've got a few
other readings sprinkled in there like [The Joy of Standards] by Andrew Russell
and Lee Vinsel, etc. The second week is focused on a Jupyter notebook exercise
that tests out the ideas we've learned about in the discussion.

<style>

#images {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-around;
  margin: 10px;
}

#images img {
  height: 200px;
  margin: 5px;
}

</style>

<div id="images">
  <div>
  <a href="https://jhupbooks.press.jhu.edu/title/theory-and-craft-digital-preservation"><img src="/images/theory-and-craft-of-digital-preservation.jpg"></a>
  </div>
  <div>
  <a href="https://data-feminism.mitpress.mit.edu/"><img src="/images/data-feminism.jpg"></a>
  </div>
  <div>
  <a href="https://www.nytimes.com/2019/02/16/opinion/sunday/standardization.html"><img src="/images/joy-of-standards.gif"></a>
  </div>
</div>

For example we just finished the first module where we focused on files and file
systems. In week 1 we discussed what the characteristics of digital objects are
according to Owens chapter 2. Then in week 2 we explored how to interact with
the file system and calculate file sizes. I generated extracts from the [Digital
Corpora]  datasets data so that each student would have a unique set of files to
work with in their notebook. I've been leaning on Google's Jupyter environment
[Colab] to get out of having to play sysadmin to everyone on their personal
computers, although students are welcome to use their own Jupyter environments
if they want.

I'm going to try to keep some notes here about how the class is going as I move
through the semester. This is mostly just for me to keep track of how to improve
things, but maybe it's of interest to others involved in teaching digital
curation and digital preservation. The class is being taught asynchronously,
although I do have live Zoom office hours which have been pretty lightly
attended so far.

I actually started this post just wanting to jot down one interesting aspect to
the first discussion we had about digital objects. After reading chapter 2 in
Owens I and reflecting on what the characteristics of digital objects are, I
asked them to give an example of a digital object that they didn't see mentioned
in the chapter. Here is a ranked list of the types of digital objects the ~50
students mentioned (I did the conceptual grouping):

- Images (GIF, Vector, PNG, PSD, Camera Roll) (9)
- Software (Apps, Video Games, Media Player, source code, software updates) (7)
- Video (mp4, avi, mov) (5)
- Audio (voicemail, music, playlists) (4)
- Social Media (photos, video, text, profiles, interaction) (3)
- Money (blockchain, bank account) (3) 
- Instant Messages (iMessage, Facebook Messenger, Instagram DMs, Twitter DMs) (2)
- Computer Hardware (hard drive, pixels, tapes) (2)
- Articles (PDF) (2)
- Calendars (iCal)
- Contacts (vCard)
- Clipboard (copy/paste)
- Slide Presentations (Powerpoint) 

The focus on images, video and audio did not surprise me, and I was expecting to
explore these a bit more when we examine internal metadata. But I was surprised
and encouraged to see that they identified software itself as a digital object.
I think there's a tendency to think of digital objects as files, and tools for
rendering them (software) as somehow separate. But when it comes to computation
code is data and data is code. I also thought it was great to see the students
grappling with the physical and logical aspects of digital objects as they
tested whether various types of hardware were digital objects.

In addition to exploring multimedia formats I am planning on discussing complex
objects like social media posts and profiles when we discuss Platforms. But it
could be interesting to maybe look at SMS messages given some of the interest
around messaging. How best to do this in a useful and accessible way in Jupyter
notebook is a work in progress. I need to introduce their final project in a few
weeks and am planning to give them the option of choosing either to write a
prose "data story" that explores the various aspects of a specific digital
object or format, or to write Jupyter notebook that does the same except with a
more computational approach.  I still need to work out the details there so if
you have ideas please [let me know].

[advice]: https://twitter.com/edsu/status/1258720069342892032
[digital curation]: https://github.com/edsu/inst341/
[Theory and Craft of Digital Preservation]: https://jhupbooks.press.jhu.edu/title/theory-and-craft-digital-preservation
[Data Feminism]: https://data-feminism.mitpress.mit.edu/
[The Joy of Standards]: https://data-feminism.mitpress.mit.edu/
[Colab]: https://colab.research.google.com/
[Digital Corpora]: https://digitalcorpora.org/corpora/files
[let me know]: mailto://ehs@pobox.com
