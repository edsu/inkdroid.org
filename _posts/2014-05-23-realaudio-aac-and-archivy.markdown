---
layout: post
status: publish
published: true
title: RealAudio, AAC and Archivy
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 7568
wordpress_url: http://inkdroid.org/journal/?p=7568
date: '2014-05-23 03:25:52 +0000'
date_gmt: '2014-05-23 10:25:52 +0000'
tags:
- preservation
- format migration
- wfmu
comments: []
---
<p>A few months ago I happened to read a <a href="http://pitchfork.com/features/paper-trail/9370-records-ruin-the-landscape/">Pitchfork interview</a> with <a href="https://en.wikipedia.org/wiki/David_Grubbs">David Grubbs</a> about his book <a href="http://www.dukeupress.edu/Records-Ruin-the-Landscape/">Records Ruin the Landscape</a>. In the interview Grubbs mentioned how his book was influenced by a 2004 <a href="https://en.wikipedia.org/wiki/Kenneth_Goldsmith">Kenny Goldsmith</a> <a href="https://wfmu.org/playlists/shows/10521">interview</a> with <a href="https://en.wikipedia.org/wiki/Henry_Flynt">Henry Flynt</a>...and Pitchfork usefully linked to the <a href="https://wfmu.org/playlists/shows/10521">interview</a> in the <a href="https://wfmu.org/playlists">WFMU archive</a>.</p>
<p>You know, books linking to interviews linking to interviews linking to archives, the wondrous beauty and utility of hypertext.</p>
<p>I started listening to the interview on my Mac with Chrome and the latest RealAudio plugin but after a few minutes it went into a feedback loop of some kind, and became full of echoes and loops, and was completely unlistenable. This is WFMU so I thought maybe this was part of the show, but it went on for a while, which seemed a little bit odd. I tried reloading thinking it might be some artifact of the stream, but the exact thing happened again. I noticed a prominent <a href="https://wfmu.org/audiostream.shtml">Get Help</a> link right next to the link for listening to the content. I clicked on it and filled out a brief form, not really expecting to hear back.</p>
<p><a href="https://wfmu.org/playlists/shows/10521"><img src="http://inkdroid.org/images/wfmu-archive.png" alt="" /></a></p>
<p>As you can see the WFMU archive view for the interview is sparse but eminently useful.</p>
<p>Unexpectedly, just a few hours later I received an email from <a href="https://www.facebook.com/jbmjbm">Jeff Moore</a> who wrote that playback of Real Audio had been reported to be a problem before on some items in the archive, and that they were in the process of migrating them to <a href="https://en.wikipedia.org/wiki/Advanced_Audio_Coding">AAC</a>. My report had pushed this particular episode up in the queue, and I could now reload the page and listen to an AAC stream via their Flash player. I guess now that it's AAC there is probably something that could be done with the <a href="https://developer.mozilla.org/en-US/docs/HTML/Supported_media_formats">audio HTML element</a> to avoid the Flash bit. But now I could listen to the interview (which, incidentally, is awesome) so I was happy.</p>
<p>I asked Jeff about how they were converting the RealAudio, because we have a fair bit of RealAudio laying around at my place of work. He wrote back with some useful notes that I thought I would publish on the Web for others googling for how to do it at this particular point in time. I'd be curious to know if you regard RealAudio as a preservation risk, and good example of a format we ought to be migrating. The playback options seem quite limited, and precarious, but perhaps that's just my own limited experience.</p>
<p>The whole interaction with WFMU, from discovery, to access, to preservation, to <a href="http://www.ftrain.com/wwic.html">interaction</a> seemed like such a perfect illustration of what the Web can do for archives, and vice-versa.</p>
<h2>Jeff's Notes</h2>
<p><em>The text below is from Jeff's email to me. Jeff, if you are reading this and don't really want me quoting you this way, just <a href="mailto:ehs@pobox.com">let me know</a>.</em></p>
<p>I'm still fine-tuning the process, which is why the whole bulk transcode isn't done yet. I'm trying to find the sweet spot where I use enough space / bandwidth for the resulting files so that I don't hear any obvious degradation from the (actually pretty terrible-sounding) Real files, but don't just burn extra resources with nothing gained.</p>
<p>Our Real files are mostly mono sampled at 22.04khz, using a codec current decoders often identify as "Cook".</p>
<p>I've found that ffmpeg does a good job of extracting a WAV file from the Real originals - oh, and since there are two warring projects which each provide a program called ffmpeg, I mean this one:</p>
<p>http://ffmpeg.org/</p>
<p>We've been doing our AAC encoding with the Linux version of the Nero AAC Encoder released a few years ago:</p>
<p>http://www.nero.com/enu/company/about-nero/nero-aac-codec.php</p>
<p>...although I'm still investigating alternatives.</p>
<p>One interesting thing I've encountered is that a straight AAC re-encoding from the Real file (mono, 22.05k) plays fine as a file on disk, but hasn't played correctly for me (in the same VLC version) when streamed from Amazon S3. If I convert the mono archive to stereo and AAC-encode that with the Nero encoder, it's been streaming fine.</p>
<p>Oh, and if you want to transfer tags from the old Real files to any new files, and your transcoding pipeline doesn't automatically copy tags, note that ffprobe (also from the ffmpeg package) can extract tags from Real files, which you can then stuff back in (with neroAacTag or the tagger of your choice).</p>
<h2>Afterword</h2>
<p>Here is Googlebot coming to get the content a few minutes after I published this post.</p>
<pre>54.241.82.166 - - [23/May/2014:10:36:22 +0000] "GET http://inkdroid.org/journal/2014/05/23/realaudio-aac-and-archivy/ HTTP/1.1" 200 20752 "-" "Googlebot/2.1 (+http://www.google.com/bot.html)"
</pre>
<p>So someone searching for how to convert RealAudio to AAC might stumble across it. This decentralized Web thing is kinda neat. We need to <a href="http://indiewebcamp.com/">take care of it</a>.</p>
