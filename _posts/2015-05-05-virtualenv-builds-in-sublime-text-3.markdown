---
layout: post
status: publish
published: true
title: VirtualEnv Builds in Sublime Text 3
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 8571
wordpress_url: http://inkdroid.org/journal/?p=8571
date: '2015-05-05 09:54:54 +0000'
date_gmt: '2015-05-05 16:54:54 +0000'
tags:
- Sublime Text
- Editor
comments: []
---
<p>Back in 1999 I was a relatively happy Emacs user, and was beginning work at a startup where I was one of the first employees after the founders. Like many startups, in addition to owning the company, the founders were hackers, and were routinely working on the servers. When I asked if Emacs could be installed on one of the machines I was told to learn Vi ... which I proceeded to do. I needed the job.</p>
<p>Here I am 15 years later, and am finally starting to use <a href="http://www.sublimetext.com/3">Sublime Text 3</a> a bit more in my work. I'm not be a cool kid anymore, but I can still <em>pretend</em> to be one, eh? The <a href="http://guillermooo.bitbucket.org/Vintageous/">Vintageous</a> plugin lets my fingers feel like they are in Vim, while being able to take advantage of other packages for <a href="https://github.com/ttscoff/MarkdownEditing">editing Markdown</a>, <a href="https://sublimegit.net/">interacting with Git</a> and the lovely eye-pleasing themes that are available. I still feel a bit dirty because unlike Vim, Sublime is not opensource ; but at the same time it does feel good to support a small software publisher who is doing good work. Maybe I'll end up switching back to Vim and <a href="http://www.vim.org/sponsor/index.php">supporting it</a>.</p>
<p>Anyway, as a Python developer one thing I immediately wanted to be able to do was to use my project's VirtualEnv during development, and to run the test suite from inside Sublime. The <a href="https://packagecontrol.io/packages/Virtualenv">Virtualenv</a> package makes creating, activating, deactivating, deleting a virtualenv a snap. But I couldn't seem to get the build to work properly with the virtualenv, even after setting the <code>Build System</code> to <code>Python - Virtualenv</code></p>
<p><a href="sublime3-virtualenv.png"><img src="http://inkdroid.org/images/sublime3-virtualenv.png" alt="Sublime Text 3 - VirtualEnv" /></a></p>
<p>After what felt like a lot of googling around (it was probably just 20 minutes) I didn't seem to find an answer until I discovered in the <a href="https://www.sublimetext.com/docs/3/projects.html">Project documentation</a> that I could save my Project, and then go to <code>Project -&gt; Edit Project</code> and add a <code>build_systems</code> stanza like this:</p>
<pre lang="json">{
 "folders":
 [
  {
   "path": "."
  }
 ],
 "virtualenv": "/Users/ed/.virtualenvs/curio",
 "build_systems": [
  {
   "name": "Test",
   "shell_cmd": "/Users/ed/.virtualenvs/curio/bin/python setup.py test"
  }
 ] 
}
</pre>
<p>Notice how the shell_cmd is using the Python executable in my VirtualEnv? After saving that I was able to go into <code>Tools -&gt; Build System</code> and set the build system to <code>Test</code>, which matches the name of the build system you added in the JSON. Now a command-B will run my test suite with the VirtualEnv.</p>
<p><a href="http://inkdroid.org/images/sublime3-virtualenv2.png"><img src="http://inkdroid.org/images/sublime3-virtualenv2.png" alt="Sublime Text 3 - VirtualEnv w/ Build" /></a></p>
<p>I guess it would be nice if the VirtualEnv plugin for Sublime did something to make this easier. But rather than go down that <a href="https://en.wikipedia.org/wiki/Alice%27s_Adventures_in_Wonderland#Famous_lines_and_expressions">rabbit hole</a> I decided to write it down here for the benefit of my future self (and perhaps you).</p>
<p>If you know of a better way to do this please <a href="https://twitter.com/edsu">let me know</a>.</p>
