---
layout: post
status: publish
published: true
title: cc0 and git for data
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 4314
wordpress_url: http://inkdroid.org/journal/?p=4314
date: '2012-03-27 10:48:41 +0000'
date_gmt: '2012-03-27 17:48:41 +0000'
tags:
- loc
- javascript
- ead
- nodejs
- smithsonian
- cc0
- creative-commons
comments:
- id: 85353
  author: 'Do you git it?: Open educational resources/practices meets software version
    control #ukoer &#8211; MASHe'
  author_email: ''
  author_url: http://mashe.hawksey.info/2012/03/do-you-git-it-open-educational-resourcespractices-meets-software-version-control/
  date: '2012-03-28 06:53:40 +0000'
  date_gmt: '2012-03-28 13:53:40 +0000'
  content: "[...] so we can hear what’s become of our baby!”[Sticking very loosely
    with art I see via Ed Summers cc0 and git for data post that:]the Cooper-Hewitt
    National Design Museum at the Smithsonian Institution made a pretty [...]"
- id: 85371
  author: Ross
  author_email: rossfsinger@gmail.com
  author_url: https://www.google.com/accounts/o8/id?id=AItOawlBhPsOb5GN8bfRnBAf9sp8p3TO9o2CYyA
  date: '2012-05-01 08:01:39 +0000'
  date_gmt: '2012-05-01 15:01:39 +0000'
  content: "I used github to simplify the management of the linked MARC codes RDF:\r\n\r\nhttps://github.com/rsinger/LinkedMARCCodes\r\n\r\nsince
    it seemed like an easier way for people to contribute data than some homegrown
    editor, etc.  Admittedly, the format is unorthodox (they're turtle fragments with
    shared prefix 'headers'), but I think storing data in git is both new (and thus
    everybody's experimenting) and subject to compromises to bridge the gaps between
    the SCM mental model and the native dataformats.\r\n\r\nThat said, I haven't gotten
    a single pull request or fork of the data (although I never really did much advertisement
    (I always meant to blog about it, but...): not sure if that's a critique of my
    approach, the value of the data or my marketing.\r\n\r\nStill, for smaller datasets,
    this seems an invaluable channel for both publishing the data and providing a
    mechanism for contributing edits, although I definitely would question its scalability
    (I probably wouldn't, for example, publish the OpenLibrary's data this way)."
---

<p>In case you missed it the <a href="http://cooperhewitt.org">Cooper-Hewitt National Design Museum</a> at the <a href="http://www.si.edu">Smithsonian Institution</a> made a pretty important <a href="http://labs.cooperhewitt.org/2012/releasing-collection-github/">announcement</a> almost a month ago that they have released their <a href="http://www.cooperhewitt.org/collections/data">collection metadata</a> on <a href="https://github.com/cooperhewitt/collection">GitHub</a> using the <a href="http://creativecommons.org/about/cc0">CC0</a> Creative Commons license. The choice to use GitHub is interesting (more about that below) but the big news is the choice to license the data with CC0. John Wilbanks wrote a nice <a href="http://del-fi.org/post/19787775081/us-government-and-cc0<br />
">piece</a> about why the use of CC0 is important. Rather than paraphrase I'll just quote his main point:</p>
<blockquote><p>
... the fact that the Smithsonian has gone to CC0 is actually a great step. It means that data owners inside the USG have the latitude to use tools that put USG works into a legal status outside the US that is interoperable with their public domain status inside the US, and that’s an unalloyed Good Thing in my view.
</p></blockquote>
<p>While I helped prototype and bring the first version of <a href="http://id.loc.gov">id.loc.gov</a> online the licensing of the data was a persistent question that I heard from people who wanted to use the data. The <a href="http://id.loc.gov/about/">about</a> page at id.loc.gov current says:</p>
<blockquote><p>
The Library of Congress has prepared this vocabulary terminology system and is making it available as a public domain data set. While it has attempted to minimize inaccuracies and defects in the data and services furnished, THE LIBRARY OF CONGRESS IS PROVIDING THIS DATA AND THESE SERVICES "AS IS" AND DISCLAIMS ANY AND ALL WARRANTIES, WHETHER EXPRESS OR IMPLIED.
</p></blockquote>
<p>But as John detailed in his post, this isn't really enough for folks outside the US. I think even for parties inside the US a CC0 license would add more confidence to using the data set in different contexts, and would help align the Library of Congress more generally with the Web. Last Friday <a href="https://twitter.com/erimille">Eric Miller</a> of Zepheira spoke about Linked Data at the Library of Congress (eventually the talk should be made <a href="http://www.loc.gov/today/cyberlc/results.php?mode=s&cat=45">available</a>). Near the end of his talk he focused on things that need to be worked on, and I was glad to hear him stress that work needed to be done on licensing. The issue is really <a href="http://cloudofdata.com/2009/10/licensing-of-linked-data/">nothing new</a>, and it really transcends the Linked Data space. I'm not saying it's easy, but I agree with everyone who is saying it is important to focus on...and it's great to see the advances that others in the federal government are making.</p>
<h2>Git and GitHub</h2>
<p>The other fun part of the Smithsonian announcement was the use of GitHub as a platform for publishing the data. To do this Cooper-Hewitt established an <a href="https://github.com/cooperhewitt/collection">organizational account</a> on GitHub, which you might think is easy, but is actually no small achievement by itself for an organization in the US federal government. With the account in hand  the <a href="http://github.com/cooperhewitt/collection">collection</a> project was created and the collection metadata was released as two CSV files (media.csv and objects.csv) by <a href="http://labs.cooperhewitt.org/author/micah/">Micah Walter</a>. The repository was then <a href="https://github.com/straup/collection">forked</a> by <a href="http://www.aaronland.info/">Aaron Straup Cope</a>. Aaron added some Python scripts for converting the CSV files into record based JSON files. In the comments to the Cooper-Hewitt Labs <a href="http://labs.cooperhewitt.org/2012/releasing-collection-github/">blog post</a> Aaron <a href="http://labs.cooperhewitt.org/2012/releasing-collection-github/#comment-449050855">commented</a> on why he chose to break up the CSV into JSON. The beautiful thing about using Git and GitHub this way for data is that you have a history view like this:</p>
<p><a href="https://github.com/cooperhewitt/collection/commits/master/"><img src="http://inkdroid.org/images/cooperhewitt-github-history.png" style="border: thin gray solid;"/></a></p>
<p>For digital preservation folks this view of <em>what</em> changed, <em>when</em>, and by <em>who</em> is extremely important for establishing <a href="http://en.wikipedia.org/wiki/Provenance">provenance</a>. The fact that you get this for free by using the opensource <a href="http://git-scm.com/">Git</a> version control system, and pushing your repository to GitHub is very compelling.</p>
<p>Over the past couple of years there has been quite a bit of informal discussion in the digital curation community about using Git for versioning data. Just a couple weeks before the Smithsonian announcement Stephanie Collett and Martin Haye from the <a href="http://www.cdlib.org/">California Digital Library</a> reported on the use of Git and Mercurial to version data at <a href="http://code4lib.org/conference/2012/collett">Code4lib 2012</a>.</p>
<p>But as Alf Eaton <a href="https://twitter.com/invisiblecomma/status/183140416848281600">observed</a>:</p>
<p><a href="https://twitter.com/invisiblecomma/status/183140416848281600"><img src="http://inkdroid.org/images/cooperhewitt-alf.png" style="border: thin gray solid;"/></a></p>
<p>In this case we're talking 205,137 files. If you doubt Alf, try cloning the repository. Here's what I see:</p>
<pre style="border: thin solid gray;">
ed@rorty:~$ time git clone https://github.com/cooperhewitt/collection.git cooperhewitt-collection
Cloning into cooperhewitt-collection...
remote: Counting objects: 230004, done.
remote: Compressing objects: 100% (19507/19507), done.
remote: Total 230004 (delta 102489), reused 223775 (delta 96260)
Receiving objects: 100% (230004/230004), 27.84 MiB | 3.96 MiB/s, done.
Resolving deltas: 100% (102489/102489), done.

real    8m49.408s
user    0m16.477s
sys 0m17.073s
</pre>
<p>Yes, that was close to 9 minutes to clone the repository, during which my workstation was pretty much unusable. I suspect that the majority of the time was spent in I/O but more research would be required to know for sure. There are also <a href="http://stackoverflow.com/questions/540535/managing-large-binary-files-with-git">challenges</a> to using Git for large binary files, which are very common in the digital preservation space. Git and GitHub were designed for versioning code. As any experienced programmer will <a href="http://blog.cleartrip.com/2007/7/7/lisp-is-sin-and-all-data-is-code/">tell you</a>: at a certain level of abstraction all code is data, and all data is code. So it's not illogical to expect Git and GitHub to be used this way.</p>
<p>But practically speaking code and data can be laid out on disk quite differently, and the tools for managing code aren't necessarily optimized for managing data out of the box. There was also an interesting <a href="http://sunlightlabs.com/blog/2010/we-dont-need-a-github-for-data/">discussion</a> two years ago over on the Sunlight Foundation blog questioning the merits of using Git and GitHub for managing data.  Be that as it may, I don't think the digital preservation community can question the importance of tracking where data came from, and the transformations it has undergone. However, the granularity at which to record these details is still an open issue. Are some notes written in English in a README like file enough, or do they need to be machine actionable? Does <a href="http://www.loc.gov/standards/premis/">PREMIS</a> provide some guidance here? Or maybe <a href="http://en.wikipedia.org/wiki/Open_Archival_Information_System">OAIS</a>? Perhaps there's no firm rule here, and there are only pragmatic answers? I guess I should feel embarrassed that I don't already know the answers to these question...I imagine I'm not the only one.</p>
<p>By a strange coincidence at roughly the same time I happened to notice in a  <a href="https://twitter.com/eosadler/status/183676338908041216">tweet</a> from <a href="http://www.ibiblio.org/bess/?page_id=2">Bess Sadler</a> that Stanford University recently published <a href="http://lib.stanford.edu/files/Digital%20Object%20Storage%20and%20Versioning.pdf">Digital Object Storage and Versioning in the Stanford Digital Repository</a>. Maybe there is something to be learned in the findings in there. I'll let you know when I have read it. I suspect Alf and Bess are right that there are other tools like <a href="http://code.google.com/p/boar/">boar</a>, extensions to Git such as <a href="http://git-annex.branchable.com/">git-annex</a>, or new services like <a href="http://figshare.com/">figshare</a> that will have an important role to play in versioning data.</p>
<h2>Meanwhile</h2>
<p>The concerns about GitHub and Git for versioning data aside, the Cooper-Hewitt collection is inspiring, because it is emblematic of trying to use mainstream tools for digital preservation work. It also seems to emphasize the important (and under-recognized) role of access in doing digital preservation at all. I actually only discovered the announcement after getting into a conversation with <a href="http://www.sebchan.com/">Seb Chan</a> who <a href="https://twitter.com/sebchan/status/183028334177959936">responded</a> to me when I grumptweeted about how the <a href="http://findingaids.loc.gov">archival finding aids application</a> at the Library of Congress has a <a href="http://findingaids.loc.gov/robots.txt">robots.txt</a> file that prevents anyone from crawling and indexing it:</p>
<p><a href="https://twitter.com/sebchan/status/183028334177959936"><img src="http://inkdroid.org/images/sebchan-tweet.png" style="border: thin gray solid;"/></a></p>
<p>The distressing thing is that so much work has gone into describing these archival collections, and getting them on the Web...but two lines in a robots.txt file mean they are invisible to anyone searching for related material in Google, Bing, Yahoo, etc. The date on the robots.txt from 2003 made it look like perhaps the exclusion was from some previous version of the software. I decided to be "that guy" and get in touch with some of the people who helped put the content online, so there may be a chance of letting crawlers in.</p>
<p>I happened to know that the <a href="http://www.loc.gov/ead/">Encoded Archival Description</a> XML files for the finding aids are available online. These XML files are the source data for the HTML view that you see in your browser. I've been meaning to try out <a href="http://nodejs.org">nodejs</a> and <a href="http://jquery.com">jQuery</a> for <strike>scraping</strike> harvesting for some time, so I put together a short <a href="https://github.com/edsu/lc-findingaids/blob/master/harvest.js">program</a> that pulls down the XML, which I pushed up to GitHub as <a href="http://github.com/edsu/lc-findingaids">lc-findingaids</a>. There aren't that many XML files to make performance any kind of a problem. The main thing I discovered is that node + jquery using <a href="https://github.com/tmpvar/jsdom">jsdom</a> is a really nice environment for scraping. Here's an example of using jsdom to print out the title for the Library of Congress homepage:</p>
<pre lang="javascript">
var jsdom = require('jsdom');

jsdom.env('http://www.loc.gov', ['http://code.jquery.com/jquery-1.5.min.js'], function (errors, window) {
  console.log(window.$('title').text());
});
</pre>
<p>The beauty of using jsdom and jquery here is that it works on the HTML that is most commonly found on the Web: broken HTML or <a href="http://en.wikipedia.org/wiki/Tag_soup">tag soup</a>. Yes, there are other tools for this, but if you already using jQuery to interact with the DOM it's particularly friendly. Yes, I guess I ignored the robots.txt file, but I was gentle and only retrieved a page at a time, and the server responded quite happily...which bodes well for removing the robots exclusion. or at least relaxing it.</p>
<p>As the <a href="https://github.com/edsu/lc-findingaids/blob/master/README.md">README.md</a> states, these XML files are in the public domain...which may or may not help you. If you are outside the US you might decide not to test the legal waters. If you are in the US maybe you will feel like it's ok to use them to build some web app that helps visualize the data in some new way, like what the <a href="http://socialarchive.iath.virginia.edu/">SNAC</a> folks have done. But can you make your app available to the world on the World Wide Web? I've been slow to realize the importance of this issue to GLAM institutions. Here's to hoping we can get some clarity on the licensing issues in the near future, and for more success stories like Cooper-Hewitt's.</p>
