---
title: Multiverse.js
tags:
- javascript
- html
- writing
- physics
layout: post
---


I've been enjoying reading [J.R. Carpenter]'s [An Ocean of Static], which uses a
particular syntax borrowed from the [list] notation found in popular programming
languages, to provide inline, alternate readings to choose from. In some ways it
recalls the [Choose Your Own Adventure] series and the venerable hyperlink
itself that allow multiple readings to emerge from a text. This is no accident
since Carpenter is an accomplished hypermedia artist. But this list notation
works a bit differently, in a way that is less action oriented, and operates at
a more structural level. To give you a sense of how it looks here is an excerpt
from a longer [sample] that Carpenter has made available on [her website]:

<a href="http://luckysoap.com/owlandgirl/"><img style="border: thin solid #ccc"
class="img-fluid" src="/images/ocean-of-static-page.png"></a>

As you read the text to yourself silently you see the possibilities that have
been made available, and are invited to choose one. As you choose you can't help
but consider the contingencies that lead you to one word over the others. The
set of choices also work to form a type of musical chord, where the multiple
possibilities exist in potential. However, when reading aloud, as Carpenter does
[here], you are compelled to choose for the words to flow.

Computer programs can automatically unlock the various possibilities and
dynamically collapse them into a choice as the page is assembled--like the text
in [this example] found on Carpenter's website. If you watch you'll see that the
text changes over time and if you reload the page. In many ways these poems are
a metaphor for the web itself, where web browsers receive representations of
resources at a given period of time, not some fixed static thing, or as [Roy
Fielding] notes in his dissertation about the architecture of the web:

> ... a resource R is a temporally varying membership function MR(t), which 
> for time t maps to a set of entities, or values, which are equivalent.
> The values in the set may be resource representations and/or resource
> identifiers. A resource can map to the empty set, which allows references
> to be made to a concept before any realization of that concept exists -- 
> a notion that was foreign to most hypertext systems prior to the Web. 
> Some resources are static in the sense that, when examined at any time
> after their creation, they always correspond to the same value set. 
> Others have a high degree of variance in their value over time. The only 
> thing that is required to be static for a resource is the semantics of 
> the mapping, since the semantics is what distinguishes one resource from 
> another.
>
> @Fielding:2000, p. 88

By viewing [the source] for [Notes on the Voyage Of Owl and Girl] you can see
how Carpenter's poem is composed using JavaScript. As a thought experiment I
thought it could be interesting to consider how these types of generative texts
could be written more [declaratively] in HTML. So instead of needing to drop
down into procedural JavaScript when writing, the writer could compose a series
of possible words as a simple unordered list &lt;ul&gt;. Then, on display, the
page would collapse the various possibilities into a particular reading using
some JavaScript that runs behind the scenes. So something like this:

<script src="https://edsu.github.io/multiverse/multiverse.js"></script>

<pre><code class="html">An owl and a girl most

&lt;ul class="multiverse"&gt;
  &lt;li&gt;adventurous&lt;/li&gt;
  &lt;li&gt;curious&lt;/li&gt;
  &lt;li&gt;studious&lt;/li&gt;
&lt;/ul&gt;

&lt;ul class="multiverse"&gt;
  &lt;li&gt;set out&lt;/li&gt;
  &lt;li&gt;set sail&lt;/li&gt;
  &lt;li&gt;sailed away&lt;/li&gt;
&lt;/ul&gt;

in a

&lt;ul class="multiverse"&gt;
  &lt;li&gt;bottle-green&lt;/li&gt;
  &lt;li&gt;beetle-green&lt;/li&gt;
  &lt;li&gt;pea-green&lt;/li&gt;
&lt;/ul&gt;

&lt;ul class="multiverse"&gt;
  &lt;li&gt;boat&lt;/li&gt;
  &lt;li&gt;sieve&lt;/li&gt;
  &lt;li&gt;skiff&lt;/li&gt;
  &lt;li&gt;vessel&lt;/li&gt;
&lt;/ul&gt;

&lt;script src="https://edsu.github.com/multiverse/multiverse.js"&gt;&lt;/script&gt;</code></pre>

And so a little bit later the thought experiment took shape as [Multiverse.js],
a JavaScript library which does just that. Multiverse.js is really just an
exercise in whimsy--I don't really expect it to take the hypertext writing web
by storm. As Carpenter responded to me in a tweet:

<blockquote class="twitter-tweet" data-conversation="none" data-lang="en"><p
lang="en" dir="ltr">sure, there are gazillions of ways to write a generative
text</p>&mdash; J.R. Carpenter (@jr_carpenter) <a
href="https://twitter.com/jr_carpenter/status/994903540899475457?ref_src=twsrc%5Etfw">May
11, 2018</a></blockquote> <script async
src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

It seems fitting that it should be so, right? One interesting thing about using
HTML to declare the possibilities is that you can embed images or links, CSS
styled text or audio/video in the list. The multiverse is multimedia.

Truth be told, Multiverse.js was really also an exercise in using [webpack] to
build a standalone JavaScript library instead of the scenario I was more
familiar with when building a specific web application with React. You can find
Multiverse.js on [GitHub] if you are interested in seeing how it is put
together.

I'd be curious if you think another HTML representation would be more natural
and idiomatic than the unordered list. The one downside to using the HTML list
is that it is a [block-level] instead of inline element. So it would ordinarily
introduce line breaks and a vertical placement on the page. This can easily be
fixed with some CSS that is packaged up with the JavaScript by webpack.

On finishing this exercise and writing it up as this blog post I realized that
another way to do this would be as a Markdown processor that could take a list
much like Carpenter has in her book and render that. But that is an experiment
for another day.

### References

[An Ocean of Static]: http://www.pennedinthemargins.co.uk/index.php/2018/03/an-ocean-of-static/

[J.R. Carpenter]: https://en.wikipedia.org/wiki/J.R._Carpenter

[here]: https://www.youtube.com/watch?v=lhoDdhc2ei4

[this example]: http://luckysoap.com/owlandgirl/

[list]: https://en.wikipedia.org/wiki/List_(abstract_data_type)

[the source]: http://luckysoap.com/owlandgirl/owlandgirl.js?

[declaratively]: https://en.wikipedia.org/wiki/Declarative_programming

[GitHub]: https://github.com/edsu/multiverse

[Multiverse.js]: https://edsu.github.com/multiverse

[sample]: http://www.pennedinthemargins.co.uk/downloads/samples/9781908058461_sample.pdf

[her website]: http://luckysoap.com/

[block-level]: https://developer.mozilla.org/en-US/docs/Web/HTML/Block-level_elements

[Choose Your Own Adventure]: https://en.wikipedia.org/wiki/Choose_Your_Own_Adventure

[Roy Fielding]: https://en.wikipedia.org/wiki/Roy_Fielding

[Notes on the Voyage Of Owl and Girl]: http://luckysoap.com/owlandgirl/
