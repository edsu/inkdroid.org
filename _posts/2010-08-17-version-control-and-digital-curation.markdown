---
layout: post
status: publish
published: true
title: version control and digital curation
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2243
wordpress_url: http://inkdroid.org/journal/?p=2243
date: '2010-08-17 10:32:07 +0000'
date_gmt: '2010-08-17 17:32:07 +0000'
tags:
- python
- cdl
- version control
- git
- mercurial
- redd
comments: []
---
<p>For some time now I have been meaning to write about some of the issues related to version control in repositories as they relate to some projects going on at $work. Most repository systems have a requirement to maintain original data as submitted. But as we all know this content often changes over time--sometimes immediately. Change is in the very nature of digital preservation; as archaic formats are migrated to fresher, more usable ones, and the wheels of <a href="http://www.kk.org/thetechnium/archives/2008/12/movage.php">movage</a> keep turning. At the same time it's essential that when content is used and cited that the specific version in time is cited, or as Cliff Lynch is quoted as saying in the <a href="http://www.oclc.org/research/activities/past/rlg/trustedrep/default.htm">Attributes of a Trusted Repository</a>:</p>
<blockquote><p>
It is very easy to replace an electronic dataset with an updated copy, and ... the replacement can have wide-reaching effects. The processes of authorship ... produce different versions which in an electronic environment can easily go into broad circulation; if each draft is not carefully labeled and dated it is difficult to tell which draft one is looking at or whether one has the “final” version of a work.
</p></blockquote>
<p>For example at $work we have a pilot project to process journal content submitted by publishers. We don't have the luxury of telling them exactly what content to submit (packaging formats, xml schemas, formats, etc), but on receipt we want to normalize the content for downstream applications by <a href="http://purl.org/net/bagit">bagging</a> it up, and then extracting some of the content into a standard location.</p>
<p>So a publisher makes an issue of a journal available for pickup via FTP:</p>
<pre>
adi_v2_i2
|-- adi_015.pdf
|-- adi_015.xml
|-- adi_018.pdf
|-- adi_018.xml
|-- adi_019.pdf
|-- adi_019.xml
|-- adi_v2_i2_ofc.pdf
|-- adi_v2_i2_toc.pdf
`-- adi_v2_i2_toc.xml
</pre>
<p>The first thing we do is <a href="http://purl.org/net/bagit">bag</a> up the content, to capture what was retrieved (manifest + checksums) and stash away some metadata about where it came from.</p>
<pre>
adi_v2_i2
|-- bag-info.txt
|-- bagit.txt
|-- data
|   |-- adi_015.pdf
|   |-- adi_015.xml
|   |-- adi_018.pdf
|   |-- adi_018.xml
|   |-- adi_019.pdf
|   |-- adi_019.xml
|   |-- adi_v2_i2_ofc.pdf
|   |-- adi_v2_i2_toc.pdf
|   `-- adi_v2_i2_toc.xml
`-- manifest-md5.txt
</pre>
<p>Next we run some software that knows about the particularities of this publishers content, and persist it into the bag in a predictable, normalized way:</p>
<pre>
adi_v2_i2
|-- bag-info.txt
|-- bagit.txt
|-- data
|   |-- adi_015.pdf
|   |-- adi_015.xml
|   |-- adi_018.pdf
|   |-- adi_018.xml
|   |-- adi_019.pdf
|   |-- adi_019.xml
|   |-- adi_v2_i2_ofc.pdf
|   |-- adi_v2_i2_toc.pdf
|   |-- adi_v2_i2_toc.xml
|   `-- eco
|       `-- articles
|           |-- 1
|           |   |-- article.pdf
|           |   |-- meta.json
|           |   `-- ocr.xml
|           |-- 2
|           |   |-- article.pdf
|           |   |-- meta.json
|           |   `-- ocr.xml
|           `-- 3
|               |-- article.pdf
|               |-- meta.json
|               `-- ocr.xml
`-- manifest-md5.txt
</pre>
<p>The point of this post isn't the particular way these changes were layered into the filesystem--it could be done in a multitude of other ways (mets, oai-ore, mpeg21-didl, foxml, etc). The point is rather that the data has undergone two transformations very soon after the it was obtained. And if we are successful, it would undergo many more as it is preserved over time. The advantage of layering content like this into the filesystem is that makes some attempt to preserve the data by disentangling it from the code that operates on it, which will hopefully be swapped out at some point. At the same time we want to be able to get back to the original data, and to also possibly rollback changes which inadvertently corrupted or destroyed portions of the data. Shit happens.</p>
<p>So the way I see it we have three options:</p>
<ul>
<li>Ignore the problem and hope it will go away.</li>
<li>Create full copies of the content, and link them together</li>
<li>Version the content</li>
</ul>
<p>While tongue in cheek, option 1 is sometimes reality. Perhaps your repository content is such that it never changes. Or if it does, it happens in systems that are downstream from your repository. The overhead of managing versions isn't something that you need to worry about...yet. I've been told that <a href="http://dspace.org">DSpace</a> doesn't currently handle versioning, and that they are looking to upcoming <a href="http://web.archive.org/web/20110812055244/https://wiki.duraspace.org/display/DSPACE/DSpace-Fedora+Integration+FAQ">Fedora integration</a> to provide versioning options.</p>
<p>In option 2 version control is achieved by copying the files that make up a repository object, making modifications to the relevant files, and then linking this new copy to the older copy. We currently do this in our internal handling of the content in the National Digital Newspaper Program, where we work at what we call the <em>batch level</em>, which is essentially a directory of content shipped to the Library of Congress, containing a bunch of jp2, xml, pdf and tiff files. When we have accepted a batch, and later have discovered a problem, we then version the batch by creating a copy of the directory. When service copies of the batches are 50G or so, these full copies can add up. Sometimes just to make a few small modifications to some of the XML files we end up having what appears to be largely redundant copies of multi-gigabyte directories. Disk is cheap as they say, but it makes me feel a bit dirty.</p>
<p>Option 3 is to leverage some sort of version control system. One of the criteria I have for a version control system for data is that versioned content should not be dependent on a remote server. The reason for this is I want to be able to push the versioned content around to other systems, tape backup, etc and not have it become stale because some server configuration happened to change at some point. So in my mind, subversion and cvs are out. Revision control systems like <a href="http://www.gnu.org/software/rcs/">rcs</a>, <a href="http://git-scm.com/">git</a>, <a href="http://mercurial.selenic.com/">mercurial</a>, <a href="http://bazaar.canonical.com/en/">bazaar</a> on the other hand are possibilities. Some of the nice things about using git or mercurial:</p>
<ul>
<li>they are very active projects, so there are lots of eyes on the code fixing bugs, making enhancements</li>
<li>the content repositories are distributed, so they allow content to migrate into other contexts</li>
<li>developers who come to inherit content will be familiar with using them</li>
<li>you get audit logs for free</li>
<li>they include functionality to publish content on the web, and to copy or clone repository content</li>
</ul>
<p>But there are trade offs with using git, mercurial, etc since these are quite complex pieces of software. Changes in them sometimes trigger backwards incompatible changes in repository formats--which require upgrading the repository. Fortunately there are tools for these upgrades, but one must stay on top of them. These systems also have a tendency to see periods of active use, followed by an exodus to a newer shinier version control system. But there are usually tools to convert your repositories from the old to the new.</p>
<p>To anyone familiar with digital preservation this situation should seem pretty familiar: format migration, or more generally <a href="http://en.wikipedia.org/wiki/Data_migration">data migration</a>.</p>
<p>The <a href="http://www.cdlib.org/">California Digital Library</a> have recognized the need for version control, but have taken a slightly different approach. CDL created a specification for a simplified revision control system called <a href="https://confluence.ucop.edu/display/Curation/ReDD">Reverse Directory Deltas (ReDD</a>), and built an implementation into their <a href="http://www.cdlib.org/services/uc3/curation/storage.html">Storage Service</a>. The advantage that ReDD has is that the repository format is quite a bit more transparent, and less code dependent than other repository formats like git, mercurial, etc. It is also a specification that CDL manages, and can change at will, rather than being at the mercy of an external opensource project. As an exercise about a year ago I wanted to see how easy it was to use ReDD by <a href="http://github.com/edsu/dflat">implementing it</a>. I ended up calling the tool dflat, since ReDD fits in with CDL's filesystem convention <a href="https://confluence.ucop.edu/display/Curation/D-flat">D-flat specification</a>.</p>
<p>In the pilot project I mentioned above I started out wanting to use ReDD. I didn't really want to use all of D-flat, because it did a bit more than I needed, and thought I could refactor the ReDD bits of my <a href="http://github.com/edsu/dflat">dflat code</a> into a ReDD library, and then use it to version the journal content. But in looking at the code a year later I found myself wondering about the trade offs again. Mostly I wondered about the bugs that might be lurking in the code, which nobody else was really using. And I thought about new developers that might work on the project, and who wouldn't know what the heck ReDD was and why I wasn't using something more common.</p>
<p>So I decided to be lazy, and use mercurial instead.</p>
<p>I figured this was a pilot project, so what better way to get a handle on the issues of using distributed revision control for managing data? The project was using the Python programming language extensively, and Mercurial is written in Python -- so it seemed like a logical choice. I also began to think of the problem of upgrading software and repository formats as another facet to the format migration problem...which we wanted to have a story for anyway.</p>
<p>I wanted to start a conversation about some of these issues at <a href="http://groups.google.com/group/digital-curation/web/curation-technology-sig">Curate Camp</a>, so I wrote a pretty simplistic tool that compares git, mercurial and dflat/redd in terms of the time it takes to initialize a repository, and commit changes to an arbitrary set of content in a directory called 'data'. For example I ran it against a gigabyte of mp3 content, and it generates the following output:</p>
<pre>
ed@curry:~/Projects$ git clone git://github.com/edsu/versioning-metrics.git
ed@curry:~/Projects/versioning-metrics$ cp ~/Music data
ed@curry:~/Projects/versioning-metrics$ ./compare.py 

create repository times
git        0:02:16.842117
hg         0:02:48.397038
dflat      0:01:21.196579

repository size
git        1233106981
hg         1287443209
dflat      1347108177

checkout sizes
git        2580197304
hg         2634533532
dflat      2694216030

commit one byte change to all files
git        0:01:03.694969
hg         0:00:48.456455
dflat      0:00:22.926949

repository sizes after commit
git        1233112423
hg         1287450930
dflat      1347166431
</pre>
<p>Anyhow this is just the start of some analysis. I'd like to see how it performs on <em>text content</em> where there are probably some compression gains to be had in the repository size. I think this also demonstrates how it might not be feasible to version large amounts of content as a synchronous operation in a web application. Hopefully this will be a useful seed for a discussion at Curate Camp. I don't want to pretend to have all the answers here, and want to have more conversations about approaches within the digital curation community.</p>
