---
layout: post
title: Dead Letter Office of the Web
tags:
- inst800
- study
- web-archives
- writing
---


For the past few weeks (honestly, perhaps event months) I've been in the process of writing a piece for [MITH] about techniques for preserving websites. The idea is for it to be part of a series that [Porter Olsen] and [Trevor Muñoz] started on the topic of stewarding digital humanities work on the Web. I'm trying to follow on from Porter's piece which focused on the materiality of web servers, or how to work with webserver hard drives as objects of preservation and data curation. My contribution on the other hand is going to examine the ephemeral nature of the Web: how broken links break the illusion of a World Wide Web, and what we can do about it. Most of the content will be centered on techniques for mitigating this breakage using principles of repair borrowed from Web architecture.

Part of the reason why this post has taken so long to put together is that I've also been using it as part of a writing workshop in one of my classes with Kari Kraus this semester. We've been working through Helen Sword's [Stylish Academic Writing] and trying out some of the ideas in our own piece of writing along the way. While I'm uncertain about living up to the notion of *stylish* writing, Sword does provide some practical techniques for exploring the range of options available in academic writing--and how to test some conventional boundaries.

This past week we've been looking at a specific technique, or really more of a heuristic, for introducing figurative language (metaphor, analogies, similes) into otherwise bland and boring text, to capture readers attention, and add meaningful detail. It basically goes like this:

1. identify an uninspired, dull or boring sentence
2. come up with a list of similes that relate to it
3. pick one simile and expand it into an analogy
4. play with the analogy by adding detail, and exploring its limits & "dark side"
5. work the analogy back into the sentence
6. share it with a friend to see if it works

In order to explain how a link breaks on the Web, I found it necessary to explain what redirects are, and consequently how HTTP requests and responses work. Initially I had this bland sentence:

> A more practical solution to minting the perfect URL for your Web resources is to accept that most things change, but to alert people who care when these changes occur. An established way to do this is to use the humble HTTP redirect.

Before diving into the details of HTTP requests and responses I wanted to have a metaphor for how redirects work. So I started by brainstorming a list of similes:

HTTP redirects are:

* like getting directions when you are lost
* like a letter with a corrected address
* like a clue that is intentionally left at the scene of a crime
* like a pointer in an old computer language like C where you have to do memory management
* like Ariadne's thread that will hopefully lead you out of a dead end in a maze
* a helpful mail worker in the dead letter office

I then picked one to use as an analogy:

> If an HTTP redirect is like a helpful mail worker in the dead letter office, then the person leaving their forwarding address is like the webmaster who knows the new location, and the letter that is sent in response is like the HTTP response.

Then I tried to explore the limits of the analogy by thinking about the 404 as a letter that is marked "Return to Sender":

> Receiving a 404 is like getting your letter stamped with return to sender ; the unseen hands of the postal worker in the dead letter office, passing the request on to the next post office ; attempting to decipher the varied handwritings and names of places they have never been to.

Finally I tried to work the metaphor back into the original sentence:

> An established way to do this is to use the modest HTTP redirect. Think of a
> redirect as the work of an unseen postal worker in the Dead Letter Office of 
> the Web, who squints at your URL’s cramped handwriting, perhaps consults an 
> index of supplied forwarding addresses, and sends your HTTP request on to 
> the next post office that may be able to get your request to where it needs 
> to go. Or, in the event that no forwarding address is found, returns your 
> HTTP request stamped Return to Sender, 404 Not Found.
> 
> <div class="text-center">
> <a href="https://commons.wikimedia.org/wiki/File:The_Dead_Letter_Office_at_Washington.jpg"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/The_Dead_Letter_Office_at_Washington.jpg/579px-The_Dead_Letter_Office_at_Washington.jpg" class="center-block img-responsive"></a>
> 
> <a href="https://commons.wikimedia.org/wiki/File:The_Dead_Letter_Office_at_Washington.jpg">The Dead Letter Office at Washington</a>
> 
> </div>

I feel like I stretched the metaphor a bit too far because, according to
[Wikipedia], workers in a DLO would open up the envelope or package looking for
clues about where the letter should go. If the destination still cannot be
determined the item will either be destroyed, or (if it's valuable) auctioned
off. The worker would never would stamp the letter or package return to sender,
since it only goes to the DLO when a return address is not included.
Incidentally [99% Invisible] have a recent [podcast episode] about DLO auctions, which is entertaining.

Anyway I digress. If you have any comments or ideas for how to improve this metaphor (including completely removing it from my blog post) shoot me a message on [Twitter] until I get comments working again... Hopefully the blog post itself will get published soon.

[MITH]: http://mith.umd.edu
[Porter Olsen]: http://mith.umd.edu/hacking-miths-legacy-servers/
[Trevor Muñoz]: http://mith.umd.edu/stewarding-digital-humanities-work-on-the-web-at-mith/
[Stylish Academic Writing]: http://www.hup.harvard.edu/catalog.php?isbn=9780674064485
[Wikipedia]: https://en.wikipedia.org/wiki/Dead_letter_office
[podcast episode]: http://99percentinvisible.org/episode/dead-letter-office/
[99% Invisible]: http://99percentinvisible.org/
[Twitter]: https://twitter.com/edsu
