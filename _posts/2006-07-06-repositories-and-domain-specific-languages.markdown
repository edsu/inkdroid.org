---
layout: post
status: publish
published: true
title: repositories and domain-specific-languages
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 109
wordpress_url: http://www.inkdroid.org/journal/2006/07/06/repositories-and-domain-specific-languages/
date: '2006-07-06 03:28:53 +0000'
date_gmt: '2006-07-06 10:28:53 +0000'
tags: []
comments: []
---
<p>At work I've been doing some experiments with the <a href="http://fedora.info">Fedora</a> repository software. One of the strengths of Fedora is that it is fundamentally designed as a set of extensible web services. At first I set about becoming familiar with the set of web services and decided that Ruby would be a useful and lightweight language to do this from. Sure enough, Ruby was <a href="http://www.inkdroid.org/journal/2006/04/25/fedorasoap-and-ruby/">plenty capable</a> of putting stuff into Fedora and getting stuff back out again.</p>
<p>As time went on it became clear that what was really needed was a layer of abstraction around this Fedora web services API that would allow it (or another repository framework) to be used in a programatic way without having to make SOAP calls and building FOXML all over the place. Typically in software pattern lingo this is referred to as a <a href="http://en.wikipedia.org/wiki/Facade_pattern">facade</a>. </p>
<p>So I worked on creating a facade, and ended up with something I half-jokingly called 'bitbucket' which looks something like this:</p>
<pre lang="ruby">
  require 'bitbucket'

  # create a repository
  repository = BitBucket::Repository.new

  # create a new repository object
  o = BitBucket::RepositoryObject.new
  o.dc.title = 'Automatic for the People'
  o.dc.creator = 'REM'

  # add a datastream to the object
  o &lt;&lt; BitBucket::DataStream.new_from_file('The Sidewinder Sleeps Tonight.mp3')

  # ingest it!
  id = repository.ingest(o)
</pre>
<p>Now this code is pretty basic: it creates an object for a CD, associates an mp3 with it, and then adds it to a repository. This is the typical 'ingest' process but notice that the ingest format, the SOAP requests, mime-types, and the actual type of the repository are unspecified. The truth is even more could be hidden such as the Dublin Core. Some things could use better names: 'Resource' instead of 'RepostoryObject' perhaps. If you have interest in using this code (yes it works!) let me know--I imagine it could be liberated from a private subversion repository.</p>
<p>Just after finishing this up it struck me that while I was trying to build a facade around Fedora I was at the same time striving for a <a href="http://www.martinfowler.com/bliki/DomainSpecificLanguage.html">domain specific language</a> for repositories. </p>
<blockquote><p>
The basic idea of a domain specific language (DSL) is a computer language that's targeted to a particular kind of problem, rather than a general purpose language that's aimed at any kind of software problem.
</p></blockquote>
<p>As Martin Fowler goes on to describe there are two different types of DSLs: external and internal. External DSLs are custom languages such as regular expressions, postscript, ant configuration files, etc. Typically a syntax for the mini-language is determined and a small (hopefully) interpreter is written which parses and processes the DSL. Internal DSLs on the other hand use the constructs of a host programming language to define the DSL. There is a strong tradition of using DSLs in Lisp and Smalltalk...and it seems to also be a growing tradition in the <a href="http://www.artima.com/rubycs/articles/ruby_as_dsl.html">Ruby</a> community as well.</p>
<p>So a DSL for repositories would provide a mini-lanugage, if you will, for interacting with a repository. I think that the <a href="http://msc.mellon.org/Meetings/Interop/">efforts</a> underway to build models for interoperability across scholarly repositories are in a way groping after this same thing--an unambiguous language for interacting with repositories.</p>
<p>The <a href="http://public.lanl.gov/herbertv/papers/pathways_core_poster_submit.pdf">Pathways Core</a> poster session at JCDL was very exciting. While the ideas were compelling enough, Jeroen Bekaert created some absolutely beautiful diagrams which really sold some of the concepts. I wish I could find some to put here. I got a chance to pick <a href="http://lxming.blogspot.com/">Xiaoming Liu's</a> brain a lot at the conference and over beers and I am really looking forward to their upcoming papers on this topic.</p>
<p>What I'd like to see is how easy it would be to use this emerging pathways model to create a Ruby DSL that uses the <a href="http://bitworking.org/projects/atom/">Atom Publishing Protocol</a> as a backend. I'd also like to take a look at <a href="http://www.jcp.org/en/jsr/detail?id=170">JSR 170</a>. My main purpose in this is to see how well the aims of the scholarly community map to the content management solutions being developed outside the digital library community.</p>
