---
date: 2020-11-30 21:31:02
title: Mystery File!
layout: post
tags:
- teaching
- curation
---

We started the semester in my [Digital Curation] class by engaging in a little
exercise I called [Mystery File]. The exercise was ungraded and was designed to
simply get the students thinking about some of the issues we would be exploring
over the semester such as files, file formats, metadata, description,
communities of practice and infrastructure.

The exercise also gave me an opportunity to introduce them to some of the tools and skills we would be using such as developing and documenting our work in Jupyter notebooks. The students had a lot of fun with it, and it was really helpful for me to see the variety of knowledge and skills they brought to the problem.

<a href="https://github.com/edsu/inst341/blob/master/modules/module-01/README.md"><img class="img-responsive" src="/images/mystery-file.png"></a>

The mystery file turned out to be bundle of genetic data and metadata from the
public  National Center for Biotechnology Information a few minutes drive from
UMD at the National Institutes of Health in Bethesda. If the students were able
to notice that this file was a tar file, they could expand it and explore the directories and subdirectories. They could notice that some files were compressed, and examine some of them to notice that they contained metadata and a genetic sequence.

<img class="img-responsive" src="/images/mystery-file-metadata.png">

<img class="img-responsive" src="/images/mystery-file-sequence.png">

Once they had submitted their answers I shared a [video] with them (the class is asynchronous except for in person office hours) where I answered these questions myself in a Jupyter notebook running in Google [Colab]. I shared the [completed notebook] with them for them to try on their own. It was a good opportunity to reacquaint students with notebooks since they were introduced to them in an Introduction to Programming class that is a pre-requisite. But I  wanted to show how notebooks were useful for documenting their work, and especially useful in digital curation activities which are often ad-hoc, but  include some repeatable steps.

The bundle of data includes a manifest with hashes for fixity checking to ensure a bit hasn't flipped, which anticipated our discussion of technical metadata later in the semester. I thought it was a good example of how a particular community is making data available, and how the NCBI and its services form a piece of critical infrastructure for the medical community. I also wanted to highlight how the data came from a Chinese team, despite the efforts of the Chinese government to suppress the information. This was science, the scientific community, and information infrastructures *working* despite (or in spite of) various types of social and political breakdowns.

But I actually didn't start this post wanting to write about all that, but rather to comment on a recent story I read about the origins of this data. It gave me so much hope and reason to celebrate data curation practices to read Zeynep Tufekci's [The Pandemic Heroes Who Gave us the Gift of Time and Gift of Information](https://zeynep.substack.com/p/the-pandemic-heroes-who-gave-us-the) this afternoon. She describes how brave Yong-Zhen Zhang and his team in China were in doing their science, and releasing the information in a timely way to the world. If you look closely you can see Zhang's name highlighted in the pictured metadata record above. It is simply astonishing to read how Zhang set the scientific machinery in motion which created a vaccine all the way back in January, just days after the virus was discovered and sequenced. Sending my students this piece from Zeynep here at the end of the semester gives me such pleasure, and is the perfect way to round out the semester as we talk about communities and infrastructure.

(P.S. I'm planning on bundling up the discussion and notebook exercises once the semester is finished in case it is useful for others to adapt.)

[Digital Curation]: https://github.com/edsu/inst341/#readme
[Mystery File]: https://github.com/edsu/inst341/blob/master/modules/module-01/README.md
[video]: https://tube.nocturlab.fr/videos/watch/71cd805b-195f-478e-995c-1633b4910fae
[completed notebook]: https://github.com/edsu/inst341/blob/master/modules/module-01/notebook.ipynb
[Colab]: https://github.com/edsu/inst341/blob/master/modules/module-01/notebook.ipynb
