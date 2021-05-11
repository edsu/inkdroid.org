---
layout: post
title: Python for Somebody
date: 2021-05-11T14:12:21
tags:
- Programming
- Teaching
---

I'm just finishing teaching a class for the UMD iSchool focused on Object
Oriented Programming. This is the third time I've taught the class so I'm
starting to get a feel for what works and what doesn't. The catalog has this
generic description:

> An introduction to programming, emphasizing understanding and implementation
of applications using object-oriented techniques. Topics to be covered include
program design and testing as well as implementation of programs.

The instructors for this class have kindly developed a curriculum and course
materials, which largely draw on (but don't completely follow) Charles
Severance's [Python for Everybody]. I think it works pretty smoothly, and can
be quite rewarding (and challenging) for undergraduate students looking to
start a career in information technology. Having these materials at hand means
I can spend more time developing exercises and assignments for the class (which
is the topic of this post).

The course starts by reinforcing how to use Python's built in types (strings,
numbers, lists, tuples, dictionaries, sets, functions) and how to define new
ones using classes and methods. I try to move the class towards using
extensions like Pandas or Requests, not only to learn what these modules do,
but to encourage students to apply what they know about object oriented
programming to understand how these extensions are designed and used. To learn
how to learn. Navigating the documentation for these complex libraries, and
understanding how to install and use them, can be quite challenging. Reading
code is a learned skill that's just as important as writing it. I think reading
is in fact *more* important, as most students will go out into the field
needing to deal with [legacy systems](https://en.wikipedia.org/wiki/Legacy_code).

Because it's an iSchool, and not a computer science department, one thing that
instructors try to teach alongside the computer programming concepts is a sense
of how computation is a technology and practice that gets deployed in
particular settings, with real social and political outcomes. And on the flip
side, that computational technology itself has been shaped by these social and
political projects. In short that computer programming is a sociotechnical
phenomena.

I think it's fair to say that this can be difficult to do, not only because the
study of sociotechnical systems is an advanced topic, probably for a senior
seminar or graduate school, but also because it's a *level problem*. It's
difficult to learn the grammar and syntax of programming while also
understanding that this grammar and syntax is *coproduced* by cultures of
computing and society [@Jasanoff:2006]. It is a struggle to just get the
students thinking computationally, and so the application of computation falls
by the wayside. (Isn't it interesting to think about *application* in this
difference sense, as a concept, technique or practice that is being *applied*
rather than in the sense of an "app"?)

One technique that I tried this semester was to orient all the exercises around
a particular sociotechnical theme. So rather than the exercises and assignments
being about the usual object oriented topics like shapes, number patterns,
, pizza ingredients, books, music, etc I structured all the exercises around
the topic of COVID-19. I've written in a [few](/2021/03/16/data-speculation/)
[other posts](/2021/02/19/python30/) that perhaps this wasn't the best topic to
choose given the situations that many students found themselves in. But despite
that difficulty I did find having a theme to dig into over the course of the
semester from different angles was useful for getting students to think about
how computer programming is a social and political thing, and not some neutral
tool.

This has me thinking a bit about what topics or themes could be useful in
future classes in order to explore the sociotechnical aspects of code over the
course of the semester while also learning programming. The idea is that the
class would work like a programming course but also a special topics class. If
you have ideas for potential topics please [let me know](mailto:ehs@pobox.com).
A couple obvious ones for me are social media, and blockchain technologies. The
advantage to focusing on social media is that it is something that many
students have direct experience with, and there is a lot to work with. Looking
at blockchain from a sociotechnical perspective is of interest to me because
this is something I personally want to gain some expertise in understanding at
a technical level so I can interrogate it better. I'll spend some time over the
summer thinking about this in preparation for teaching the class again in the
fall.

### References

[Python for Everybody]: https://www.py4e.com/book

