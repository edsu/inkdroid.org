---
title: pincushion
tags:
- preservation
- archives
- storage
layout: post
---

<figure>
<a href="https://www.flickr.com/photos/inkdroid/54048531162/">
  <img class="img-fluid" src="/images/pincushion.jpg">
</a>
</figure>

Websites go away. *Everything* goes away, so it would be kind of weird if websites didn't too, right? But not all web content disappears at the same rate. Some parts of the web are more vulnerable than others. Some web content is harder for us to lose, because it is evidence of something happening, it tells a story that can't be found elsewhere, or it's an integral part of a memory practice that depends on it.

[Web archiving](https://en.wikipedia.org/wiki/Web_archiving) is one way of working with this loss. When building web archives web content is crawled, and stored so that a "replay" application (like the [Wayback Machine](https://en.wikipedia.org/wiki/Wayback_Machine)) can make the content accessible as a "reborn digital" resource [@Brugger:2018]. But with web archives the people doing this work are typically not the same people who created the content, which can lead to ethical quandaries that are difficult to untangle [@Summers:2020].

Furthermore, as we've seen recently with the [Cyberattack on the British Library](https://en.wikipedia.org/wiki/British_Library_cyberattack), the [DDoS attacks on the Internet Archive](https://blog.archive.org/2024/05/28/internet-archive-and-the-wayback-machine-under-ddos-cyber-attack/), and [lawsuits](https://en.wikipedia.org/wiki/Hachette_v._Internet_Archive) that threaten their existence, web archives themselves are also vulnerable single points of failure. Can web applications be built differently, so that they better allowed our content to persist after the website itself was no more?

As part of the [Modeling Sustainable Futures: Exploring Decentralized Digital Storage for Community-Based Archives](https://www.shiftcollective.us/ffdw) project I've been helping <a href="https://www.shiftcollective.us/">Shift Collective</a> think about how decentralized storage technologies could fit in with the sustainability of their [Historypin](https://www.historypin.org/en/) platform. This work has been funded by the Filecoin Foundation for a Decentralized Web, so we have naturally been looking at how Filecoin and IPFS as part of the technical answers here [@Voss:2023].

But perhaps a more significant question than what specific technology to use is how memory practices are changing to adapt to the medium of the web, and how much these changes can be guided in a direction that benefits the people who care about preserving their communities knowledge. We sometimes call these people librarians or archivists, but as the Records Continuum Model points out, many are involved in the work, including the individual users of websites who have invested their time, energy and labor in adding resources to them [@McKemmish:2010].

For the last 15 years Historypin users have uploaded images, audio and video, and placed them as "pins" on a map. These pins can then be described, organized into collections, and further contextualized with metadata. Unsurprisingly, Historypin is a web application. It uses a server side application framework (Django), a database (MySQL), file storage (Google Cloud Storage), a client side JavaScript framework (Angular), and depends on multiple third party platforms like Youtube, Vimeo and Soundcloud for media hosting and playback.

<figure style="background-color: white;">
<a href="/images/historypin-diagram.png"><img class="img-fluid" src="/images/historypin-diagram.png"></a>
</figure>

What does it mean to preserve this [assemblage](https://en.wikipedia.org/wiki/Assemblage_(philosophy))? Historypin is a complex, running system, that is deeply [intertwingled](https://en.wikipedia.org/wiki/Intertwingularity) with the larger web. How could decentralized storage possibly help here? Can the complexity of the running software be reduced or removed? Can its network of links out to other platforms be removed without sacrificing the content itself?

Taking inspiration from recent work on Flickr Foundation's [Data Lifeboat](https://www.flickr.org/category/projects/data-lifeboat/), and [some ideas](https://alexwlchan.net/2024/static-websites/) from their technical lead Alex Chan, we've been prototyping a similar concept called a *pincushion* as a place to keep Historypin content safe, in a way that is functionally separate from the running web application. In an ideal [local-first](https://www.inkandswitch.com/local-first/) world, our web applications wouldn't be so dependent on being constantly connected to the Internet, and the platforms that live and die there. But until we get there, having a *local-last* option is critically important.

The basic idea is that users should be able to download and view their data without losing the context they have added. We want a pincushion to represent a user's collections, pins, images, videos, audio, tags, locations, comments...and we want users to be able to view this content when Historypin is no longer online, or even when the user isn't online. Maybe the pincushion is discovered on an old thumbdrive in a shoebox under the bed.

This means that the resources being served dynamically by the Historypin application need to be serialized as *files*, and specifically as files that can be viewed directly in a browser: HTML, CSS, JavaScript, JPEG, PNG, MP3, MP4, JSON. Once a users content can be represented as a set of *static files* they can easily be distributed, copied, and opportunities for replicating them using technologies like IPFS become much more realistic.

[pincushion](https://pypi.org/project/pincushion/0.2.0/) is a small Python command line tool which talks to the Historypin API to build a [static website](https://en.wikipedia.org/wiki/Static_web_page) of the user's content. It's not realistic to expect users to install and use pincushion, although they can if they want. Instead we expect that pincushion, or something like it, will ultimately run as part of Historypin's system deployment, and will generate archives on demand when a user requests it.

At this point pincushion is a working prototype, but already a few design principles present themself:

1. **Web v1.0**: A pincushion is just HTML, CSS and media files. No JavaScript framework, or asset bundling is used. Anchor tags with relative paths are used to navigate between pages, all of which are static page. These pages work when you load them locally from your filesystem, when you are disconnected from the Internet, or when the pages are mounted on the web somewhere...and also from IPFS.
3. **Bet on the Browser**: A pincushion archive relies on modern browser's native support for video and audio files. THe pincushion utility uses [yt-dlp](https://github.com/yt-dlp/yt-dlp) at build time to extract media from platforms like Youtube, Vimeo and Soundcloud and persist it as static MP4 or MP3 files. Perhaps the browser isn't going to last forever, but so far it has proven to be remarkably backwards compatible as the web has evolved. If the browser goes away, then its unlikely we'll know what HTML, CSS and image files are anymore. Preserving web content depends on evolving and maintaining the browser.
4. **Progressive Enhancement**: A pincushion is designed to be viewed locally in your browser by opening an *index.html* from your file system. You can even do this when you aren't connected to the Internet. But since you can zoom and pan to any region of the Earth in a map, it's pretty much impossible to display a map offline. So some functionality, like viewing a pin on a map is only available when the browser is "online".

These pincushion archives can be gigabytes in size, so I don't want to link to one right here. But perhaps a few screenshots can help give a sense of how this works. Lets take a look at the archive belonging to [Jon Voss](https://www.shiftcollective.us/people/jonvoss), one of Historypin's founders:

<figure>
<a href="/images/historypin-01.png"><img class="img-fluid" src="/images/historypin-01.png"></a>
<figcaption>The "homepage" displaying Jon's collections</figcaption>
</figure>

<figure>
<a href="/images/historypin-02.png"><img class="img-fluid" src="/images/historypin-02.png"></a>
<figcaption>A specific collection showing a set of pins</figcaption>
</figure>

<figure>
<a href="/images/historypin-03.png"><img class="img-fluid" src="/images/historypin-03.png"></a>
<figcaption>A video pin in a collection</figcaption>
</figure>

<figure>
<a href="/images/historypin-04.png"><img class="img-fluid" src="/images/historypin-04.png"></a>
<figcaption>Viewing the pin next to other pins on a map</figcaption>
</figure>

<figure>
<a href="/images/historypin-05.png"><img class="img-fluid" src="/images/historypin-05.png"></a>
<figcaption>Other pins tagged with "mission"</figcaption>
</figure>

<figure>
<a href="/images/historypin-06.png"><img class="img-fluid" src="/images/historypin-06.png"></a>
<figcaption>Other pins tagged with "mission"</figcaption>
</figure>

So pretty simple stuff right? Intentionally so. In fact the archives load fine off of these:

<figure>
<a href="/images/thumbdrives.jpg"><img class="img-fluid" src="/images/thumbdrives.jpg"></a>
<figcaption>Thumbdrives with pincushion archives on them for a workshop.</figcaption>
</figure>

The truth is that this idea of making snapshots of your data available for download isn't particularly new. [Data Portability](https://en.wikipedia.org/wiki/Data_portability) has been around as an aspirational and sometimes realizable goal for some time. Since 2018 the EU's [General Data Protection Regulation](https://en.wikipedia.org/wiki/General_Data_Protection_Regulation) (GDPR) has made it a requirement for platforms operating in the EU to [allow their data to be downloaded](https://gizmodo.com/how-to-download-your-data-with-all-the-fancy-new-gdpr-t-1826334079). This has raised the level of service for everyone. Thanks EU!

Before the GDPR, Twitter set itself apart by a fully functioning local web application codenamed [Grailbird](https://inkdroid.org/2012/12/31/archiving-tweets/) for viewing a users tweets. Similarly, work by [Hannah Donovan](https://www.hannahdonovan.com/)'s on the [Vine](https://en.wikipedia.org/wiki/Vine_(service)) archive, and before that on the This Is My Jam archive (which sadly seems offline now) provided early examples of how web applications could be preserved in a read-only state [@Summers:2019].

However just because you can download the data doesn't mean it's easy to use. Some of these archives are only JSON or CSV data files with minimal documentation. Others add only a teensy bit of window dressing that let you browse to the data files, but don't really let you look at the actual items. Sometimes media files are still URLs out on the live web.

The pincushion tool is a working prototype, that will hopefully guide how to provide user data. But we are looking to the Flickr Data Lifeboat project to see if there are any emerging practices for how to create these archive downloads. A few things that we are thinking about:

1. It would be great to have client-side search option using [Pagefind](https://pagefind.app/) or something like it?
1. Can we enhance our HTML files with RDFa or Microdata to express metadata in a machine readable way?
2. What types of structural metadata, such as a manifest, should we include to indicate the completeness and validity of the data?
3. To what degree does it make sense to include other people's content in an archive, for example someone's comments on your pins, or pins that have been added to your collection?

### References
