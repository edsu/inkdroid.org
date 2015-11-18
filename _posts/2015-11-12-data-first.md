---
layout: post
title: Data First Interventions
tags:
- web archiving
- small data

---

*These are some remarks I made at the [Web Archives] conference at the
University of Michigan, on November 12th, 2015. I didn't have any slides other
than [this visual presentation].*

Thanks for the opportunity to participate in this panel today. I'm really looking forward to the panel conversation so I will try to keep my remarks brief. A little over a year ago I began working as a software developer at the Maryland Institute for Technology in the Humanities (MITH). MITH has been doing digital humanities (DH) work for the last 15 years. Over that time it has acquired a rich and [intertwingled] history of work at the intersection of computing and humanities disciplines, such as textual studies, art history, film and media studies, music, electronic literature, games studies, digital forensics, the performing arts, digital stewardship, and more. Even after a year I'm still getting my head around the full scope of this work.

To some extent I think MITH and similar centers, conferences and workshops like
[ThatCamp] have been so successful at infusing humanities work with digital
methods and tools that the D in DH isn't as necessary as it once was. We're
doing humanities work that *necessarily* involves now pervasive computing
technology and digitized or born digital collections. Students and faculty don't
need to be convinced that digital tools, methods and collections are important
for their work. They are eager to engage with DH work, and to learn the tools
and skills to do it. At least that's been my observation in the last year. For
the rest of my time I’d like to talk about how MITH does its work as a DH
center, and how that intersects with material saved from the Web.

Traditionally, DH centers like MITH have been built on the foundation of faculty
fellowships, which bring scholars into the center for a year to work on a
particular project, and spread their knowledge and expertise around. But
increasingly MITH has been shifting its attention to what we call the Digital
Humanities Incubator model. The incubator model started in 2013 as a program to
introduce University Library faculty, staff and graduate assistants to
digitization, transcription, data modeling and data exploration through their
own projects. Unfortunately, there’s not enough time here to describe the DH
incubator in much more detail, but if you are interested I encourage you to
check out Trevor Munñoz and Jennifer Guillano’s [Making Digital Humanities Work]
where they talk about the development of the incubator. In the last year we've been experimenting with an idea that grew out of the incubator, which Neil Fraistat (MITH's Director) has been calling the *data first* approach. Neil described this approach earlier this year at [DH 2015] in Sydney using this particular example:

> This past year, we at MITH experimented with digital skills development by starting not with a fellow or a project, but with a dataset instead: an archive of over 13 million tweets harvested ... concerning the shooting of Michael Brown by a police officer in Ferguson, Missouri and the protests that arose in its wake. Beginning with this dataset, MITH invited arts and humanities, journalism, social sciences, and information sciences faculty and graduate students to gather and generate possible research questions, methods, and tools to explore it. In response to the enthusiastic and thoughtful discussion at this meeting, MITH created a series of five heavily attended workshops on how to build social media archives, the ethics and rights issues associated with using them, and the tools and methods for analyzing them. The point here was not to introduce scholars to Digital Humanities or to enlist them in a project, but to enable them through training and follow up consultations to do the work **they were already interested in doing** with new methods and tools. This type of training seems crucial to me if DH centers are actually going to realize their potential for becoming true agents of disciplinary transformation. And with something less than the resources necessary to launch and sustain a fellowship project, we were able to train a much larger constituency.

13 million tweets might sound like a lot. But really it's not. It's only 8GB of compressed, line-oriented JSON. The 140 characters that make up the text of each tweet is actually only 2% of the structured data that is made available from the Twitter API for each tweet. The five incubator workshops Neil mentioned were often followed with a sneakernet style transfer of data onto a thumb drive, accompanied by a brief discussion of the Twitter Terms of Service. The events in Ferguson aligned with interests of the student body and faculty. The data collection lead to collaborations with Bergis Jules at UC Riverside to create more Twitter datasets for Sandra Bland, Freddie Gray, Samuel Dubose and Walter Scott as awareness of institutionalized racism and police violence grew. The Ferguson dataset was used to create backdrops in town hall meetings attended by hundreds of students who were desperate to understand and contextualize Ferguson in their lives as students and citizens.

For me, this experience wasn't about the power of Big Data. Instead it was a lesson in the necessity and utility of Small Data. Small data that is collected for a particular purpose, and whose provenance can fit comfortably in someone's brain. Small data that intervened in the business as usual, collection development policies to offer new perspectives, allegiances and [antidisciplinary] engagement.

I think we're still coming to understand the full dimensions of this particular intervention, especially when you consider some of the issues around ethics, privacy, persistence and legibility that it presents. But I think DH centers like MITH are well situated to be places for creative interventions such as this one around the killing of Michael Brown. We need more spaces for creative thinking, cultural repair, and assembling new modes of thinking about our experience in the historical moments that we find ourselves living in today. Digital Humanities centers provide a unique place for this radically interdisciplinary work to happen.

I'd be happy to answer more questions about the Ferguson dataset or activities around it, either now or after this session. Just come and find me, or email me...I'd love to hear from you. MITH does have some work planned over the coming year for building capacity specifically in the area of Digital Humanities and African American history and culture. We're also looking at  ways to help build a community of practice around the construction of collections like the Ferguson Twitter dataset, especially with regards to how they inform what we collect from the Web. In addition to working at MITH I'm also a PhD student in the iSchool at UMD where I'm studying what I'm calling [computer assisted appraisal], which I would be happy to talk to you about later, but that would be a different talk in itself. Thanks! 

[intertwingled]: https://en.wikipedia.org/wiki/Intertwingularity
[ThatCamp]: http://thatcamp.org
[DH 2015]: http://dh2015.org/
[Making Digital Humanities Work]: http://www.trevormunoz.com/notebook/2014/07/14/making-digital-humanities-work.html
[Web Archives]: http://www.lib.umich.edu/webarchivesconference
[this visual presentation]: http://edsu.github.io/ferguson-tweet-viewer/
[antidisciplinary]: http://joi.ito.com/weblog/2014/10/02/antidisciplinar.html
[computer assisted appraisal]: http://inkdroid.org/2015/10/04/www-appraisal/