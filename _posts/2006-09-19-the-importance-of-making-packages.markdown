---
layout: post
status: publish
published: true
title: the importance of making packages
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 118
wordpress_url: http://www.inkdroid.org/journal/2006/09/19/the-importance-of-making-packages/
date: '2006-09-19 07:56:12 +0000'
date_gmt: '2006-09-19 14:56:12 +0000'
tags: []
comments:
- id: 4763
  author: Dan Scott
  author_email: dan@coffeecode.net
  author_url: http://coffeecode.net
  date: '2006-09-19 08:34:58 +0000'
  date_gmt: '2006-09-19 15:34:58 +0000'
  content: "+1\r\n\r\nMy recent experience mirrors the Rails/Basecamp history. \r\n\r\nWhile
    working on the File_MARC proposal for PHP's PEAR package repository, I initially
    created a basic linked list as part of the File_MARC package. I recognized that
    it could be its own package, but to be honest I was reluctant to go through the
    rigorous PEAR package proposal process for both File_MARC and a linked list package
    at the same time. Especially when File_MARC depends on the linked list package,
    so a hold-up in approval for the linked list package would delay File_MARC's birth
    as well.\r\n\r\nAfter a few weeks, I realized that I might as well split the linked
    list off into its own package as it was likely that a) the linked list package
    would be of much more general interest than File_MARC, and therefore more likely
    to have its rough edges (ahem, \"bugs\") worn down by wider usage -- thereby benefiting
    File_MARC and 2) by making it a separate package, it would force me to develop,
    test, and document the linked list functionality much more thoroughly than if
    it remained a part of the File_MARC \"mud\".  I'm convinced the results will be
    worth the extra effort.\r\n\r\nOnce I factored out the linked list into its own
    package, I realized that I could go a step further and refactor the doubly-linked
    list into a singly-linked list as a base class and reimplement the doubly-linked
    list as a simple extension to the singly-linked list. Benefit to the users, who
    can just choose a singly-linked list if their application doesn't need the overhead
    of being able to traverse the list in reverse, and benefit to the development
    team (me) because of the code reuse.\r\n\r\nSo yes, nice little reusable packages
    are good."
---

<p><a href="http://visual.verbaljazz.com/index.php?showimage=66"><img src="/images/mud.jpg" border="0" width="300" align="left" style="margin: 10px;" /></a>If you are interested in such things Ian Bicking has a nice <a href="http://blog.ianbicking.org/why-small-packages-matter.html">posting</a> about why breaking up a project into smaller packages of functionality is important. His key point is that the boundaries between packages actually help in establishing and maintaining decoupled modules within your application.</p>
<blockquote><p>
...when someone claims their framework is all spiffy and decoupled, but they just don't care to package it as separate pieces... I become quite suspicious. Packaging doesn't fix everything. And it can introduce real problems if you split your packages the wrong way. But doing it right is a real sign of a framework that wants to become a library, and that's a sign of Something I'd Like To Use.
</p></blockquote>
<p>So why is decoupling important? Creating distinct modules of code with prescribed interfaces helps ensure that a change inside one module doesn't have a huge ripple effect across an entire project codebase. In addition to using packaging to create boundaries between components the <a href="http://www.cmcrossroads.com/bradapp/docs/demeter-intro.html">Law of Demeter</a> is a pretty handy technique for reducing coupling in object oriented systems. It amounts to ensuring that a given method only invokes methods on objects that are: itself, in its parameters, objects that itself creates, or component objects. The LoD seems to be a good practice at the local level, but packaging helps at a macro/design level. One of the most powerful and fun parts of packaging is coming up with good names and metaphors for your packages and components. Having fun and meaningful names for packages provides coherence to a project, and allows developers to talk about an application. Eric Evans has some nice chapters in his <a href="http://domaindrivendesign.org/books/index.html">Domain Driven Design</a> about coming up with what he calls a <em>domain language</em> whose aim is to:</p>
<blockquote><p>
To create a supple, knowledge-rich design calls for a versatile, shared team language, and a lively experimentation with language that seldom happens on software projects.
</p></blockquote>
<p>It's important...and naming distinct packages well helps build a good domain language.</p>
<p>I suppose it's implicit in making something a code <em>library</em>--but one of the other major benefits of splitting a larger project up into smaller packages is that you encourage reuse. The bit of functionality that you decided to bundle up separately can be used as a dependency in a different project--perhaps even by a different person or organization. This seems to me to be a hallmark of good open source software.</p>
<p>Most popular languages these days have established ways of making packages available, downloadable and installable while expressing the dependencies between them. Perl has <a href="http://search.cpan.org/">CPAN</a>, PHP has <a href="http://pear.php.net">PEAR</a>, Ruby has <a href="http://www.rubygems.org">gems</a> and <a href="http://rubyforge.org">RubyForge</a>, Python has <a href="http://peak.telecommunity.com/DevCenter/PythonEggs">eggs</a> and <a href="http://peak.telecommunity.com/DevCenter/EasyInstall">EasyInstall</a>, Java has <a href="http://maven.apache.org/">maven</a>, Lisp has <a href="http://www.cliki.net/asdf ">asdf</a>. Even some applications like <a href="http://trac.edgewall.org/wiki/TracDev/ComponentArchitecture">Trac</a>, <a href="http://web.archive.org/web/20121027164843/http://wiki.rubyonrails.org/rails/pages/Plugins">RubyOnRails</a> and <a href="http://drupal.org/project/Modules">Drupal</a> encourage the creation of smaller packages (modules or plugins) by having a well defined api for adding extensions. And that's not even getting into the various ways operating systems make packages available...</p>
<p>The truly hard part about packaging for me isn't really technical. Most packaging solutions allow you to manage dependencies, versioning, installation and removal. As Ian says, its the decision of where to draw the lines between packages that is hard. It's hard because you have to guess before you start coding--and often during the process of coding you realize that the dividing lines between packages begin to blur. This is why having distinct packages is so important because you are forced to stare at the blurriness and encouraged to fix it...instead of creating the infamous <a href="http://en.wikipedia.org/wiki/Big_Ball_Of_Mud">big ball of mud</a>.</p>
<p>An interesting counterpoint to trying to figure out the dividing lines before hand is to try to <a href="http://web.archive.org/web/20080516135520/http://radar.oreilly.com/archives/2005/04/designing_from.html">design from the outside in</a>, and extract reusable components from the result. The very successful RubyOnRails web framework was extracted from a working application (Basecamp). In a lot of ways I think Test Driven Design encourages this sort of outside-in thinking as well. Extracting usable components from a ball of mud is nigh impossible though...at least for me. I would be interested to know how much of the Rails components were anticipated by the designers as they were creating BaseCamp. It takes a great deal of discipline and jazz-like anticipation to be able to improvise a good design. That or, you have to build in time to prototype something with an eye to taking what you've learned to do it right.</p>
