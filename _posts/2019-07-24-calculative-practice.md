---
title: Calculative Practices
tags:
- algorithms
- sts
- reading
layout: post
---


When I was [reviewing] the research literature about [archival appraisal] I
arrived at Foucault's idea of [governmentality] [@Foucault:2008], or the conduct
of conduct, as a way of framing how archivists have theorized the practice of
appraisal. But because I'm specifically looking at appraisal in web archives I'm
primarily interested in the ways that software and algorithmic systems
participate in appraisal. But I've struggled a bit to connect how
governmentality and algorithms cohere.

So I'm grateful for a [recent] reading of @Burke:2019 which pointed me to
@Introna:2016 for an analysis of algorithms from the perspective of
*governmentality*. Introna uses governmentality as a way of talking about what
he calls the *calculative practices* that are at play in the TurnItIn software
that is used to detect plagiarism in student writing, and assign an originality
score. One thing I really like about Introna's approach is he eschews focusing
on the algorithm itself, and instead looks at the algorithm as one of many
actors in a performance of academic writing. He does talk about the algorithm,
but he is interested in how it gets deployed as an instrument of
governmentality:

> Calculative practices are constitutive of domains of knowledge and 
> and expertise. They have a certain moral authority because they are 
> taken to impose *objectivity and neutrality* in a complex domain 
> that is already loaded with moral significance ... Once a particular
> set of calculative practices are established as legitimate (or true),
> they tend to become internalized by the subjects they are supposed to
> govern, thus producing the self-governing subject ... Thus, understanding
> governing practices in the idiom of governmentality allows us to see how
> problems, technologies of governance, regimes of knowledge, and 
> subjectivities become mutually constitutive of each other to create a 
> regime of government hat has no specific essence (location or unified
> action).

Calling this research *Calculative Practice* instead of *Algorithm Studies*
de-centers the algorithm as the primary focus to instead look at how algorithms
function as an actor in a particular context, in time, with other actors. It
isn't simply a technical artifact but an assemblage.

Another reason why I like the quote above is it points to the ways that
algorithms, or calculative practices, perform a type of objectivity or
neutrality. This connects directly to archival studies for all the ways that
archival records have been historically been positioned for their objective,
neutral and (most of all) authentic characteristics.

Indeed, the line between algorithmic and archival practices actually gets quite
blurry when thinking about the ways in which machine learning algorithms are
deployed today, in contexts where they are almost entirely dependent on archives
of data.  An understanding of the quality and provenance of data sets, and how
to massage, or "clean" them [@Rawson:2016] is very often crucial to
understanding the performance and bias in the model that a machine learning
algorithm generates.

As a small example of this, check out this exchange between Lex Friedman and
[Kai-Fu Lee] in a recent episode of the Artificial Intelligence podcast.
Friedman asks Lee to characterize the difference between the Chinese and
American development of machine learning and AI:

<iframe width="560" height="315" src="https://www.youtube.com/embed/cQ48rP_Rs4g?start=268" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

> **Friedman**: So is there a difference between a Chinese AI engineer today and an American AI engineer perhaps rooted in the culture that we just talked about or the education or the very soul of the people or no and what would your advice be to each if there's a difference? 
>
> **Lee**: Well there's a lot that's similar because AI is about mastering sciences, about using known technologies, and trying new things, but it's also about picking from many parts of possible networks to use, and different types of parameters to tune, and that part is somewhat rote. And it is also, as anyone who's built AI products can tell you, a lot about cleansing the data. Because AI runs better with more data, and data is generally unstructured error-full and unclean, and the effort to clean the data is immense. So I think the better part of American engineering AI engineering process is to try new things to do things people haven't done before, and to use technology to solve most, if not all, problems. So to make the algorithm work, despite the not-so-great data: to find error tolerant ways to deal with the data. The Chinese way would be - basically enumerate to the fullest extent all the possible ways by a lot of machines try lots of different ways to get it to work, and spend a lot of resources and money and time cleaning up data. That means the AI engineer may be writing data cleansing algorithms, working with thousands of people who label or correct or do things with the data. That is incredibly hard work that might lead to better results. So the Chinese engineer would rely on and ask for more and more and more data and find ways to cleanse them and make them work in the system, and probably less time thinking about new algorithms that can overcome their other issues.

I thought the emphasis that both Friedman and Lee placed on data here was quite
interesting. This is not just a question of who has the best algorithm, and can
tune the hyper-parameters to generate the best results. The ways in which data
is collected, classified, stored, curated, and accessed are absolutely key--and
these are abiding questions for archival studies. I think its possible to think
more broadly from the perspective of information studies, but in doing so we
really miss out on the critical debate that has been happening for decades, if
not centuries, in archival studies around how archival records and practices
record and/or shape what we think of as "reality" and its politics, ethics and
notions of justice.

There is no escaping it: calculative practices are bound up with archival
practices.

### References

[reviewing]: https://osf.io/preprints/socarxiv/75mjp
[governmentality]: https://en.wikipedia.org/wiki/Governmentality
[Kai-Fu Lee]: https://en.wikipedia.org/wiki/Kai-Fu_Lee
[archival appraisal]: https://www2.archivists.org/glossary/terms/a/appraisal
[recent]: https://inkdroid.org/2019/07/19/algorithms/
