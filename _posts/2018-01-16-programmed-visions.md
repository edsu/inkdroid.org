---
layout: post
title: Programmed Visions
tags:
- reading
- media
- philosophy
- software
---


I've been meaning to read [Wendy Hui Kyong Chun] for some time now. [Updating to
Remain the Same] is on my [to-read list], but I recently ran across a reference
to [Programmed Visions: Software and Memory] in @Rogers:2017, which I wrote
about [previously], and thought I would give it a quick read beforehand.

Programmed Visions is a unique mix of computing history, media studies and
philosophy that analyzes the ways in which *software* has been reified or made
into a thing. I've begun thinking about using software studies as a framework
for researching the construction and operation of web archives, and Chun lays a
useful theoretical foundation that could be useful for critiquing the very idea
of software, and investigating its performative nature.

Programmed Visions contains a set of historical case studies that it draws on as
sites for understanding computing. She looks at early modes of computing
involving human computers ([ENIAC]) which served as a prototype for what she
calls "bureaucracies of computing" and the psychology of command and control
that is built into the performance of computing. Other case studies involving
the Memex, the Mother of All Demos, and [John von Neumann]'s use of biological
models of memory as metaphors for computer memory in the [EDVAC] are described
in great detail, and connected together in quite a compelling way. The book is
grounded in history but often has a poetic quality that is difficult to
summarize. On the meta level Chun's use of historical texts is quite thorough
and its a nice example of how research can be conducted in this area.

There are two primary things I will take away from Programmed Visions. The first
is how software, the very idea of source code, is itself achieved through
metaphor, where computing is a metaphor for metaphor itself. Using higher level
computer programming languages gives software the appearance of commanding the
computer, however the source code is deeply entangled with the hardware itself,
the source code is interpreted and compiled by yet more software, which are
ultimately reduced to fluctuations in voltages circuitry.  The source code and
software cannot be extracted from this performance of computing. This separation
of software from hardware is an illusion that was achieved in the early days of
computing. Any analysis of software must include the computing infrastructures
that make the metaphor possible. Chun chooses an interesting passage from
@Dijkstra:1970 to highlight the role that source code plays:

> In the remaining part of this section I shall restrict myself to programs
> written for a sequential machine and I shall explore some of the consequences
> of our duty to use our understanding of a program to make assertions about the
> ensuing computations.  It is my (unproven) claim that the ease and reliability
> with which we can do this depends critically upon the simplicity of the
> relation between the two, in particular upon the nature of sequencing control.
> In vague terms we may state the desirability that the structure of the program
> text reflects the structure of the computation. Or, in other terms, "What can
> we do to shorten the conceptual gap between the static program text (spread
> out in "text space") and the corresponding computations (evolving in time)?
> (p. 21)

Here Dijkstra is talking about the relationship between text (source code) and a
performance in time by the computing machinery. It is interesting to think not
only about how the gap can be reduced, but also how the text and the performance
can fall out of alignment.  Of course bugs are the obvious way that things can
get misaligned: I instructed the computer to do X but it did Y. But as readers
of source code we have expectations about what code is doing, and then there is
the resulting complex computational performance. The two are one, and its only
our mental models of computing that allow us to see a thing called *software*.
Programmed Visions explores the genealogy of those models.

The other striking thing about Programmed Visions is what Chun says about
memory.  Von Neumann popularizes the idea of computer memory using work by
McCulloch that relates the nervous system to voltages through the analogy of
neural nets. On a practical level, what this metaphor allowed was for
instructions that were previously on cards, or in the movements of computer
programmers wiring circuits, are moved into the machine itself. The key point
Chun makes here is the idea that Von Neumann use of biological metaphors for
computing allows him to conflate memory and storage. It is important that this
biological metaphor, the *memory organ*, was science fiction -- there was no
known *memory organ* at the time. 

The discussion is interesting because it connects with ideas about memory going
back to Hume and forward to @Bowker:2005. Memories can be used to make
predictions, but cannot be used to fully reconstruct the past. Memory is a
process of deletion, but always creates the need for more:

> If our machines' memories are more permanent, if they enable a permanence
> that we seem to lack, it is because hey are constantly
> refreshed--rewritten--so that their ephemerality endures, so that they may
> "store" the programs that seem to drive them ... This is to say that if
> memory is to approximate something so long lasting as storage, it can do 
> so only through constant repetition, a repetition that, as Jacques Derrida
> notes, is indissociable from destruction (or in Bush's terminology, 
> forgetting). (p. 170)

In the ellided section above Chun references @Kirschenbaum:2008 to stress that
she does not mean to imply that software is immaterial. Instead Chun describes
computer memory as undead, neither alive nor dead but somewhere in between. The
circuits need to be continually electrically performed for the memory to be
sustained and alive. The requirement to keep the bits moving, reminds me of
Kevin Kelly's idea of [movage], and anticipates (I think?) @Chun:2016. This
(somewhat humorous) description of the computer memory as undead reminded me of
the state that archived web content is in. For example when viewing content in
the Wayback machine it's not uncommon to run across some links failing, missing
resources, lack of interactivity (search) that was once there. Also, it's
possible to slip around in time as pages are traversed that have been storedat
different times. How is this the same and different from traditional archives of
paper, where context is lost as well?

So I was surprised in the concluding chapter when Chun actually talks about the
Internet Archive's Wayback Machine (IWM) on pp 170-171. I guess I shouldn't have
been surprised, but the leap from Von Neumann's first articulation of modern
computer architecture forwards to a world with a massively distributed Internet
and World Wide Web was a surprise:

> The IWM is necessary because the Internet, which is in so many ways about 
> memory, has, as @Ernst:2013a argues, no memory--at least not without the 
> intervention of something like the IWM. Other media do not have a memory, 
> but they do age and their degeneratoin is not linked to their regeneration.
> As well, this crisis is brought about because of this blinding belief in 
> digital media as cultural memory. This belief, paradoxically, threatens
> to spread this lack of memory everywhere and plunge us negatively into
> a way-wayback machine: the so-called "digital dark age." The IWM thus
> fixes the Internet by offering us a "machine" that lets us control our
> movement between past and future by regenerating the Internet at a 
> grand scale. The Internet Wayback Machine is appropriate in more ways than
> one: because web pages link to, rather than embed, images, which can be 
> located anywhere, and because link locations always change, the IWM
> preserves only a skeleton of a page, filled with broken--rendered--links
> and images. The IWM, that is, only backs up certain data types. These
> "saved" are not quite dead, but not quite alive either, for their proper 
> commemoration requires greater effort. These gaps not only visualize the
> fact that our constant regenerations affect what is regenerated, but also
> the fact that these gaps--the irreversibility of this causal programmable
> logic-- are what open the World Wide Web as archive to a future that is not 
> simply stored upgrades of the past. (p. 171-172)

I think some things have improved somewhat since Chun wrote those words, but her
essential observation remains true: the technology that furnishes the Wayback
Machine is oriented around a document based web, where representations of web
resources are stored at particular points in time and played back at other
points in time. The software infrastructures that generated those web
representations are not part of the archive, and so the archive is essentially
in an undead state--seemingly alive, but undynamic and inert. It's interesting
to think about how traditional archives have similar characteristics though: the
paper documents that lack adequate provenance, or media artifacts that can be
digitized but no longer played. We live with the undead in other forms of media
as well.

One of my committee members recently asked for my opinion on why people often
take the position that since content is digital we can now keep it all. The
presumption being that we keep all data online or in near or offline storage and
then rely on some kind of search to find it. I think Chun hits on part of the
reason this might be when she highlights how memory has been conflated with
storage. For some the idea that some data is *stored* is equivalent to having
been *remembered* as well. But it's actually in the exercise of the data, its
use, or being accessed that memory is activated. This position that everything
can be remembered because it is digital has its economical problems, but it is
an interesting little philosophical conundrum, that will be important to keep in
the back of my mind as I continue to read about memory and archives.

### References

[John von Neumann]: https://en.wikipedia.org/wiki/John_von_Neumann 
[ENIAC]: https://en.wikipedia.org/wiki/ENIAC
[EDVAC]: https://en.wikipedia.org/wiki/First_Draft_of_a_Report_on_the_EDVAC
[movage]: http://blog.longnow.org/02008/12/11/movage/
[Wendy Hui Kyong Chun]: https://en.wikipedia.org/wiki/Wendy_Hui_Kyong_Chun
[Updating to Remain the Same]: https://mitpress.mit.edu/books/updating-remain-same
[Programmed Visions: Software and Memory]: https://mitpress.mit.edu/books/programmed-visions
[to-read list]: https://inkdroid.org/2017/11/13/prospectus/
[previously]: https://inkdroid.org/2017/12/19/web-histories/
[software studies]: https://en.wikipedia.org/wiki/Software_studies
