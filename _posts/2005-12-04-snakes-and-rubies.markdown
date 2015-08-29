---
layout: post
status: publish
published: true
title: snakes and rubies
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 49
wordpress_url: http://www.inkdroid.org/journal/?p=49
date: '2005-12-04 21:09:45 +0000'
date_gmt: '2005-12-05 04:09:45 +0000'
tags: []
comments:
- id: 12
  author: import this. &raquo; Blog Archive &raquo; Snakes and Rubies roundup
  author_email: ''
  author_url: http://thinkhole.org/wp/2005/12/04/snakes-and-rubies-roundup/
  date: '2005-12-04 21:51:46 +0000'
  date_gmt: '2005-12-05 04:51:46 +0000'
  content: "[...] Finally, Indroid was struck by the collegiality between the two
    speakers a very detailed writeup of the event. [...]"
- id: 13
  author: Pat Eyler
  author_email: pat.eyler@gmail.com
  author_url: ''
  date: '2005-12-05 11:40:42 +0000'
  date_gmt: '2005-12-05 18:40:42 +0000'
  content: "Andy,\r\nnice write up of an event I wish I could have gone to.  It's
    nice to see the cross-pollinization of the various dynamic libraries out there
    (highlighted by reading a Perl guy's view of a meeting between Python and Ruby).\r\n\r\nGood
    to read your words again.\r\n-pate"
- id: 15
  author: Gheorghe Milas
  author_email: gmilas@gmail.com
  author_url: http://www.emilas.com/george
  date: '2005-12-05 12:33:53 +0000'
  date_gmt: '2005-12-05 19:33:53 +0000'
  content: I'm from the python crowd. I was there too and also noticed 20.years.from_now
    and that is exactly what I don't like in ruby. While it reads nice, the danger
    I see here is that someone does not only need to learn ruby to understand the
    code in rails they also need to learn all the rails languages to understand rails.
    Someone may argue that this is no diffrenet then learning a projects api's, I
    hope that to be right but my feeling is that it is not right, expecialy when someone
    changes builtins to do what they think they should do.
- id: 16
  author: Pat Eyler
  author_email: pat.eyler@gmail.com
  author_url: ''
  date: '2005-12-05 13:04:47 +0000'
  date_gmt: '2005-12-05 20:04:47 +0000'
  content: "*sigh*\r\nI hate Mondays ... Ed, it's a nice write up.   Sorry to cross
    wires on your name"
- id: 17
  author: jonvw
  author_email: jonvw@jonvw.com
  author_url: http://web.archive.org/web/20080317143551/http://jonvw.com:80/
  date: '2005-12-05 14:31:46 +0000'
  date_gmt: '2005-12-05 21:31:46 +0000'
  content: |
    <p>Ed, I'm curious to hear more of your thoughts about embracing the boundaries between software development and libraries.  I was thinking about that a lot after hearing the presentation, as well.</p>
- id: 140
  author: St.
  author_email: stephen.yearl@yale.edu
  author_url: ''
  date: '2006-03-14 08:56:28 +0000'
  date_gmt: '2006-03-14 15:56:28 +0000'
  content: Not sure about the Feynman, but Fuller suggested that 'if the solution
    is not beautiful, I know it is wrong.'
---
<p><img src="https://web.archive.org/web/20060213060312/http://snakesandrubies.com/images/snakeandruby.gif" align="left" /> I managed to attend <a href="https://web.archive.org/web/20060212172955/http://snakesandrubies.com/event">Snakes and Rubies</a> yesterday where Adrian Holovaty and David Heinemeier Hansson talked about their respective web frameworks: <a href="http://www.djangoproject.com/">Django</a> and <a href="http://www.rubyonrails.org/">Rails</a>.</p>
<p>The event started at 2PM and went to 6:30PM or so, and was attended by over 100 people! I watched this little event take shape out of the mists of the local python and ruby mailing lists and was just amazed to see how vibrant the Chicago software development scene is, or has become in the 3 years I've lived in the area.</p>
<p>What's more Adrian and David did a great job promoting both of their projects, while remaining amiable and respectful of the other camp. It's hard to imagine a similar event between two commercial frameworks. Both were given about 45 minutes or so to talk about their software in any way they wanted. They both had extremely different yet effective presentation styles, and their projects had one important thing in common: disillusionment with PHP.</p>
<p>Rather than talking technical details Adrian spent most of his time focused on how Django came to be down in Kansas at <a href="http://www.lawrence.com/">lawrence.com</a>. lawrence.com began it's life as a PHP application which served as a community site for all sorts of goings on in Lawrence, Kansas. The site interleaved all sorts of local entertainment content: music, dining, art, movies...and it encouraged user participation. For example you can listen to mp3s from local musicians, but here's the twist, you listen to them as they are playing in town...so if you like a song you can jump over to the venue later that week to see them live. Another example was a full on sports site for the local little leagues which posted details of games, scores, weather conditions, etc. All of this was detailed to show how deeply intertwined all the data was.</p>
<p>The really interesting stuff for me was when Adrian described how journalism informed his software development practices...and how Django fed into this process. In the same way that journalists work against the clock to get news stories out quickly and accurately Adrian and his team worked to get software projects done often on similar deadlines (sometimes like 4 hours). They quickly found that their PHP infrastructure wasn't allowing them to respond quickly enough without introducing side effects, and decided that they needed new tools...which is how Django was born. In fact the little league application mentioned above was the first Django application.</p>
<p>Adrian has since moved on to the Washington Post, where he is their resident web technology mad scientist. Apparently they are using Django in some form at the Post, or are planning to since he mentioned Django's caching can scale to the 9 million odd requests the Post gets in a single day.</p>
<p>Unfortunately my lead pencil ran out of lead just a bit of the way into David's talk, so I don't have as much written down from the Rails presentation. David dropped some wonderful one liners that I wish I could have written down. Much unlike Adrian, David let actual code do most of the talking for him.</p>
<p>Early on he had a screen with a quote from Richard Feynman on the importance of finding beautiful solutions to problems (if you remember the quote please let me know). This quote kind of guided the rest of the talk where David showed off beautiful Model, View and Controller code from RubyOnRails...and it really was beautiful stuff. David's thesis was that beautiful things make you happy, and happiness makes you more productive...so beautiful code will make for happy, productive programmers. Much of this comes back to the essential philosophy of Ruby--to give joy to programmers. At any rate, the lights were dimmed and David gave us a tour of what RubyOnRails code looks like, while highlighting some of the strengths of the project and the Ruby language. On one of the pages there was some code to set a cookie expiration, and the date was created like so:</p>
<pre lang="ruby">20.years.from_now
</pre>
<p>How cool is that! I wasn't sure if this was part of Ruby proper until I fired up my ruby interpreter to check:</p>
<pre lang="ruby">biblio:~ ed$ irb
irb(main):001:0> 20.years.from_now
NoMethodError: undefined method `years' for 20:Fixnum
        from (irb):1   
</pre>
<p>Whereas from the Rails console it works fine:</p>
<pre lang="ruby">biblio:~/Projects/cheap ed$ script/console 
Loading development environment.
>> 20.years.from_now
=> Thu Dec 04 15:38:48 CST 2025 
</pre>
<p>So Rails decorates the Fixnum class with the years method. Pretty awesome :-) Another thing David highlighted was that Ruby is used everywhere, from configuration, to writing XML, to writing JavaScript. I was even surprised to hear him argue for full on Ruby in view templates. His argument is that even when a framework offers only a limited set of tags, it's still offering logic, and rather than creating some bastardized tag language why not just use tried and true Ruby.</p>
<p>The two presentations were followed by a few (not many) moderated questions, and some questions from the audience. The highlight for me was when Why the Lucky Stiff's question was asked:</p>
<blockquote>
<p>Looking a bit beyond web frameworks, how do you envision the world coming to an end? David responded by "scoping" the world to mean the world of software development and said that this world would come to an end if the layers of Java "sedimentation" continue to accrue. He went on to predict that we're at a crossroads in software development, and that a paradigm shift is underway...intentionally provocative, and pretty much right on as far as web development goes if you ask me. Adrian responded "Yoko Ono".</p>
</blockquote>
<p>So, as you can tell I'm still digesting the presentations and discussion. There was so much good stuff, and I was really struck by the collegiality between the two guys: open source software development at its finest. The two main things I took away were embracing the boundaries between software development and a particular industry like Journalism, or in my case Libraries; and always trying to strive for the beautiful in software, "boiling down" a thorny problem into its most simple and elegant expression.</p>
