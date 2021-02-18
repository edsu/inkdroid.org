---
layout: post
date: 2021-02-14 02:35:21
title: mimetypes
tags:
- preservation
- python
---

Today I learned that Python has a [mimetypes] module, and has ever since Guido von Rossum [added it] in 1997. Honestly I'm just a bit sheepish to admit this discovery, as someone who has been using Python for digital preservation work for about 15 years. But maybe there's a good reason for that.

Since the entire version history for Python is available on GitHub (which is a beautiful thing in itself) you can see that the mimetypes module [started] as a `guess_type()` function built around a pretty simple hard coded mapping of file extensions to mimetypes.

The module also includes a little bit of code to look for, and parse, mimetype registries that might be available on the host operating system. The initial mimetype registries used included one from the venerable Apache [httpd] web server, and the [Netscape] web browser, which was about three years old at the time.

It makes sense why this function to look up a mimetype for a filename would be useful at that time, since Python was being used to serve up files on the nascent web and for sending email, and whatnot.

Today the module looks much the same, but has a few new functions and about twice as many mimetypes in its internal list. Some of the new mimetypes include text/csv, audio.mpeg, application/vnd.ms-powerpoint, application/x-shockwave-flash, application/xml, and application/json. Comparing the [first commit] to the [most latest] provides a thumbnail sketch of 25 years of web format evolution.

I'll admit, this is is a bit of an esoteric thing to be writing a blog post about. So I should explain.

At work I've been helping out on a community archiving project which has accumulated a significant amount of photographs, scans, documents of various kinds, audio files and videos. Some of these files are embedded in web applications like Omeka, some are in cloud storage like Google Drive, or on the office networked attached storage, and others are on scattered storage devices in people's desk drawers and closets. We've also created new files during community digitization events, and oral history interviews.

As part of this work we've wanted to start building a place on the web where *all* these materials live. This has required not only describing the files, but also putting *all* the files in one place so that access can be provided. In principle this sounds simple. But it turns out that collecting the files from all these diverse locations poses significant challenges, because their context matters. The filenames, and the directories they are found in, are sometimes the only descriptive metadata that exists for this data.

In short, the [original order] matters. But putting this content on the web means that the files need to be brought together and connected with their metadata programmatically.

This is how I stumbled across the mimetypes module. I've been writing some throwaway code to collect the files together into the same directory structure while preserving their original filenames and locations in an Airtable database. I've been using the [magic] module to identify the format of the file, which is used to copy the file into a Dropbox storage location.

The extension is important because we are expecting this to be a static site serving up the content and we want the files to also be browsable using the Dropbox drive. It turns out the [mimetypes.guess_extension] is pretty useful for turning a mediatype into an file extension.

I'm kind of surprised that it took me this long to discover mimetypes, but I'm glad I did. As an aside I think this highlights for me how important Git can be as an archive and research method for software studies work.

[added it]: https://github.com/python/cpython/commit/ac8a9f3ee9b55adabb3147999ec5287247fb6cf0#diff-aed43839a49bace08b60186baa4b27ad69ecd6b61f928bd696b4fb670750774f

[started]: https://github.com/python/cpython/blob/ac8a9f3ee9b55adabb3147999ec5287247fb6cf0/Lib/mimetypes.py#L108-L190

[Netscape]: https://en.wikipedia.org/wiki/Netscape_(web_browser)

[mimetypes]: https://docs.python.org/3/library/mimetypes.html

[most latest]: https://github.com/python/cpython/commit/7f569c9bc0079906012b3034d30fe8abc742e7fc#diff-aed43839a49bace08b60186baa4b27ad69ecd6b61f928bd696b4fb670750774f 

[first commit]: https://github.com/python/cpython/commit/ac8a9f3ee9b55adabb3147999ec5287247fb6cf0#diff-aed43839a49bace08b60186baa4b27ad69ecd6b61f928bd696b4fb670750774f

[original order]: https://en.wikipedia.org/wiki/Respect_des_fonds

[magic]: https://pypi.org/project/python-magic/

[mimetypes.guess_extension]: https://docs.python.org/3/library/mimetypes.html#mimetypes.guess_extension

[httpd]: https://en.wikipedia.org/wiki/Apache_HTTP_Server
