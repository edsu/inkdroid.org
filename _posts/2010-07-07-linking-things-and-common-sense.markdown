---
layout: post
status: publish
published: true
title: linking things and common sense
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2096
wordpress_url: http://inkdroid.org/journal/?p=2096
date: '2010-07-07 14:28:50 +0000'
date_gmt: '2010-07-07 21:28:50 +0000'
tags:
- identifiers
- linked-data
- urls
- httprange14
comments:
- id: 82719
  author: Ian Davis
  author_email: nospam@iandavis.com
  author_url: http://iandavis.myopenid.com/
  date: '2010-07-07 15:10:30 +0000'
  date_gmt: '2010-07-07 22:10:30 +0000'
  content: 'Ed, I am in complete agreement with you, but I will play devil''s advocate.
    I think you have chosen to compare two things that are quite distinct: web pages
    and people. Clearly you can distinguish the context of statements made for those
    types of things because there is not much of an overlap. However, to choose something
    close to your heart, can I freely use this URI http://chroniclingamerica.loc.gov/lccn/sn99021999/1899-10-22/ed-1/seq-25/
    to refer to the first page of issue 19 of the Omaha Illustrated Bee? Is the publisher
    of the resource identified by that URI the LoC or Edward Rosewater?'
- id: 82720
  author: pkeane.livejournal.com/
  author_email: ''
  author_url: http://pkeane.livejournal.com/
  date: '2010-07-07 15:29:26 +0000'
  date_gmt: '2010-07-07 22:29:26 +0000'
  content: 'Great post, Ed.  Not only would it be nice, as you say, I think it is
    the key to making Linked Data work.  As you say: "This ambiguity is the source
    of its great utility, expressiveness and power."  The Web itself has that sort
    of ambiguity built  in, and it''s what makes it possible to bend w/o breaking.  Good
    vocabularies are key, as you say, but every vocabulary has a context -- some vocabularies
    will be clearer w/in their intended domain/context.  Langauge &amp; meaning simply
    cannot be forced into universal unambiguity.  Being unambiguous w/in a particular
    domain or context *is* a worthy goal.  I''d contend that Ian''s example can be
    answered by either "you better have a good vocabulary to make that distinction
    clear" OR "depends on the context..."'
- id: 82721
  author: Ian Davis
  author_email: nospam@iandavis.com
  author_url: http://iandavis.myopenid.com/
  date: '2010-07-07 17:29:52 +0000'
  date_gmt: '2010-07-08 00:29:52 +0000'
  content: "Peter, I guess one vocabulary oriented solution to my problem is to have
    a documentPublisher (or representationPublisher) property distinct from the usual
    publisher property.\r\n\r\nFollowing on from Michael Smethurst's comment that
    there are only a limited number of interesting things to say about web documents,
    perhaps it's possible to create a good enough vocabulary to cover them. i.e. documentLicense,
    documentPublishDate etc."
- id: 82722
  author: dbrunton
  author_email: dbrunton@gmail.com
  author_url: https://www.google.com/accounts/o8/id?id=AItOawkuMzjlM81pM-JvzFsoNviuHmLfn6YLydc
  date: '2010-07-07 17:44:06 +0000'
  date_gmt: '2010-07-08 00:44:06 +0000'
  content: "This argument reminds me of a conversation I had when I was in China,
    when I asked a (Chinese) friend how they could distinguish the verb \"shuo\" which
    means \"to say\" in terms of past, present, and future.  There is no verb conjugation
    (at least not like we have in English) in Chinese.\r\n\r\nThe person, Dajie, looked
    at me like I was stupid, and told me that when someone said \"Kong zi shuo\" (loosely,
    \"Confucius say\"), that they meant it in the past, because Confucius is dead,
    and it had to be in the past.\r\n\r\nThe idea that there is ambiguity when using
    a URI is kind of similar.  If I'm talking about a person when I say http://davidbrunton.com,
    I probably mean David Brunton.  If I'm talking about an article that succinctly
    explains the whole universe in a word, it's probably that first post.\r\n\r\nAnyway,
    nice post, Ed.  Love the Rorty quote, too :)"
- id: 82723
  author: dbrunton
  author_email: dbrunton@gmail.com
  author_url: https://www.google.com/accounts/o8/id?id=AItOawkuMzjlM81pM-JvzFsoNviuHmLfn6YLydc
  date: '2010-07-07 17:44:44 +0000'
  date_gmt: '2010-07-08 00:44:44 +0000'
  content: PS. I'll email Ross, too.  Just for good measure.
- id: 82724
  author: dbrunton
  author_email: dbrunton@gmail.com
  author_url: https://www.google.com/accounts/o8/id?id=AItOawkuMzjlM81pM-JvzFsoNviuHmLfn6YLydc
  date: '2010-07-07 17:45:30 +0000'
  date_gmt: '2010-07-08 00:45:30 +0000'
  content: PS. I'll email Ross, too.  Just in case he didn't read my singularly insightful
    comment here on http://inkdroid.org.
- id: 82725
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2010-07-07 18:48:10 +0000'
  date_gmt: '2010-07-08 01:48:10 +0000'
  content: "@iand trust you to ask the hard questions :-) I should've have blamed^w
    credited you for putting the idea in my head with your various posts over the
    years, and your recent \"what would it break\" twitter convo with <a href=\"http://twitter.com/cygri\"
    rel=\"nofollow\">cygri</a>.\r\n\r\nI think you nailed the answer in your later
    comment: there are probably a handful of things that we'd want to be able to assert
    about the representation, and if something like dcterms:publisher was too ambiguous
    we'd probably want to define a new term that was by definition about the representation.\r\n\r\nAs
    you know the URI http://chroniclingamerica.loc.gov/lccn/sn99021999/1899-10-22/ed-1/seq-25/
    is served up by the host chroniclingamerica.loc.gov ; which DNS can tell us is
    owned by the Library of Congress. So I think it's safe to say that representations
    being generated by that hostname are effectively published by the Library of Congress.
    So I'd expect dc:publisher to be used to say something unique about the resource,
    in this case that a particular page of a newspaper was published by Edward Rosewater.
    As @pkeane pointed out, the context (named graph, surface?) of related assertions,
    such as one that said:\r\n\r\n<pre>\r\n&lt;http://chroniclingamerica.loc.gov/lccn/sn99021999/1899-10-22/ed-1/seq-25/&gt;
    a &lt;http://purl.org/ontology/bibo/Newspaper&gt; .\r\n</pre>\r\n\r\ncould provide
    some guidance about what dc:publisher is meant to refer to."
- id: 82729
  author: google.com/accounts/o8&hellip;
  author_email: ad.pohl@googlemail.com
  author_url: https://www.google.com/accounts/o8/id?id=AItOawl6ihZ1Xph3YoXs1slqKoKqflJvu1wNTV0
  date: '2010-07-08 01:37:03 +0000'
  date_gmt: '2010-07-08 08:37:03 +0000'
  content: "While I think it is an elegant solution to shift the discrimination of
    information and non-information resources to vocabulary level by specifying the
    predicates, I see a problem arising with this approach which is similar to the
    existing problem:\r\n\r\nBasically, I'm afraid people, instead of asking \"Why
    do I need an extra URI for the information ressource?\", will just ask \"Why do
    I have to use a different predicate for the real newspaper than for the same scanned
    newspaper when those predicates actually mean the same?\" In effect, the actual
    use might get inconsistent and the data's value diminishes.\r\n\r\nSo, I believe
    this approach wouldn't solve the practical problems Tom writes about because it
    as well requires people to distinguish information and non-information resources
    just as the minting of different URIs for information and non-information ressources
    does. \r\n\r\nI think the underlying problem is: People don't seeing any sense
    in distinguishing retrievable and non-retrievable ressources or even not being
    able to do so. So rather this is the task: Making clear why this distinction is
    useful and desirable.\r\n\r\nAdrian"
- id: 82730
  author: Alan Dix
  author_email: alanjohndix@yahoo.com
  author_url: https://me.yahoo.com/a/KJpchtNj3NXTKnYPc4OuQuW9gQtvt_zI#34670
  date: '2010-07-08 03:40:25 +0000'
  date_gmt: '2010-07-08 10:40:25 +0000'
  content: "As well as documents that refer to documents such as the site @iand points
    to or URIBurner, in principle one might want to talk about the document meta-information
    itself - maybe we want to identify who added the meta-information such as dc:creator.
    \ The reflective stack is unbounded!\r\n\r\nIn ordinary language we cope with
    this sort of thing in the way that Ed suggests for URIs: I can write, \"Alan is
    writing this comment\" or \"Alan starts with the letter A\" without even bothering
    to put quotes around 'Alan'.  Of course this can cause confusion or be used in
    verbal puns, so is not unambiguous, but works most of the time.\r\n\r\nIn some
    cases, like computing or philosophy these things start to become more complex
    and ONLY then do we resort to more precise languages \"The first ASCII code in
    the representation of 'Alan' is 65\" or \"The use of 'Alan' as an example name
    and example string in the preceding paragraph.\"\r\n\r\nSimilar precise language
    is certainly needed for web resources to be able to distinguish the multiple levels,
    but maybe the solution would be to adopt Ed's more relaxed style with a set of
    well known disambiguation rules, and then only be more precise when the disambiguation
    would fail.\r\n\r\nmaybe in such cases:\r\n\r\n\r\n   mymeta:document _:theDoc.\r\n_:theDoc
    dc:creator \"Library of Congress\".\r\n_:theDoc dc:title \"Omaha daily bee. (Omaha
    [Neb.]) 187?-1922, October 22, 1899, Image 25 - Chronicling America - The Library
    of Congress:.\r\n\r\n   mymeta:refers_to _:thePaper.\r\n_:thePaper dc:title \"Omaha
    daily bee\".\r\n\r\n... and then of course:\r\n\r\n\r\n    mymeta:refers_to\r\n
    \       .\r\n\r\n...\r\n\r\njust for fun I looked at:\r\n\r\nhttp://linkeddata.uriburner.com/about/html/http://linkeddata.uriburner.com/about/html/http://ontologi.es/rail/void.xhtml\r\n\r\n;-)"
- id: 82733
  author: Karl Dubost
  author_email: karl@la-grange.net
  author_url: http://karl.dubost.myopenid.com/
  date: '2010-07-08 06:27:31 +0000'
  date_gmt: '2010-07-08 13:27:31 +0000'
  content: "you said: \"In general I think the REST approach of saying a URL identifies
    a Resource, and that when you resolve one you get back a Representation (a document
    of some kind, html, rdf/xml, whatever).\"\r\n\r\nThe sentence is not very clear.
    Or I have a bit of difficulty to parse. Did you mean?\r\n\r\n\"In general, I agree
    with the REST approach i.e. A URL identifies a Resource and when you resolve the
    URL, you get back a Representation (a document of some kind, html, rdf/xml, whatever).\""
- id: 82734
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2010-07-08 06:47:13 +0000'
  date_gmt: '2010-07-08 13:47:13 +0000'
  content: Thanks Karl, I was just noticing that goof when I was re-reading the post.
    s/think/like/ ; so yes, the meaning you struggled to get is what I meant to say
    :-)
- id: 82736
  author: Dilettante&#039;s Ball &raquo; Blog Archive &raquo; What we talk about when
    we talk about http://dbpedia.org/resource/Love
  author_email: ''
  author_url: http://dilettantes.code4lib.org/blog/2010/07/what-we-talk-about-when-we-talk-about-love/
  date: '2010-07-09 11:21:56 +0000'
  date_gmt: '2010-07-09 18:21:56 +0000'
  content: "[...] status quo &#8220;just because that&#8217;s how we&#8217;ve always
    done it&#8221;, and (implicitly) an httpRange-14 apologist.  Quite frankly, none
    of these are true or quite what I mean (and I&#8217;m, of course, over [...]"
- id: 86661
  author: 'Give Me a Sign: What Do Things Mean on the Semantic Web? | AI3:::Adaptive
    Information'
  author_email: ''
  author_url: http://www.mkbergman.com/994/give-me-a-sign-what-do-things-mean-on-the-semantic-web/
  date: '2013-11-05 10:32:06 +0000'
  date_gmt: '2013-11-05 17:32:06 +0000'
  content: |
    [&#8230;] Ed Summers, 2010. Linking Things and Common Sense, blog post of July 7, 2010. See  http://inkdroid.org/journal/2010/07/07/linking-things-and-common-sense/.[13] Xiaoshu Wang, 2007.  URI Identity and Web Architecture Revisited, Word document posted on [&#8230;]
---

<p><a href="http://en.wikipedia.org/wiki/William_Shakespeare"><img src="http://inkdroid.org/images/qrcode.png" style="border: none; float: right; margin-left: 10px; width: 200px;" /></a></p>
<p><a href="http://derivadow.com">Tom Scott's</a> recent <a href="http://derivadow.com/2010/07/01/linked-things/">Linking Things</a> post got me jotting down what I've been thinking lately about URIs, Linked Data and the Web. First go read Tom's <a href="http://derivadow.com/2010/07/01/linked-things/">post</a> if you haven't already. He does a really nice job of setting the stage for why people care about using distinct URIs (web identifiers) for identifying web documents (aka information resources) and real world things (aka non-information resources). Tom's opinions are grounded in the experience of really putting these ideas into practice at the <a href="http://bbc.co.uk">BBC</a>. His key point, which he attributes to <a href="http://twitter.com/fantasticlife/">Michael Smethurst</a>, is that:</p>
<blockquote><p>
Some people will tell you that the whole non-information resource thing isn’t necessary – we have a web of documents and we just don’t need to worry about URIs for non-information resources; others will claim that everything is a thing and so every URL is, in effect, a non-information resource.</p>
<p>Michael, however, recently made a very good point (as usual): all the interesting assertions are about real world things not documents. The only metadata, the only assertions people talk about when it comes to documents are relatively boring: author, publication date, copyright details etc.</p>
<p>If this is the case then perhaps we should focus on using RDF to describe real world things, and not the documents about those things.
</p></blockquote>
<p>I think this is an important observation, but I don't really agree with the conclusion. I would conclude instead that the distinction between real world and document URIs is a non-issue. We should be able to tell if the thing being described is a document or a real world thing based on the vocabulary terms that are being used.</p>
<p>For example, if I assert:</p>
<pre>
&lt;http://en.wikipedia.org/wiki/William_Shakespeare&gt; a foaf:Person ; foaf:name "William Shakespeare" .
</pre>
<p>Isn't it reasonable to assume <code>http://en.wikipedia.org/wiki/William_Shakespeare</code> identifies a person whose name is <code>William Shakespeare</code>? I don't have to try to resolve the URL and see if I get a 303 or 200 response code do I? </p>
<p>And if I also assert, </p>
<pre>
&lt;http://en.wikipedia.org/wiki/William_Shakespeares&gt; dcterms:modified "2010-06-28T17:02:41-04:00"^^&lt;http://www.w3.org/2001/XMLSchema#dateTime&gt;
</pre>
<p>can't I can assume that <code>http://en.wikipedia.org/wiki/William_Shakespeare</code> identifies a document that was modified on <code>2010-06-28T17:02:41</code>? Does it really make sense to think that the person <code>William Shakespeare</code> was modified then? Not really...</p>
<p>Similarly if I said, </p>
<pre>
&lt;http://en.wikipedia.org/wiki/William_Shakespeare&gt; cc:license &lt;http://creativecommons.org/licenses/by-sa/3.0/&gt; .
</pre>
<p>Isn't it reasonable to assume that <code>http://en.wikipedia.org/wiki/William_Shakespeare</code> identifies a document that is licensed with the Attribution-ShareAlike 3.0 Unported license? It doesn't really make sense to say that the person <code>William Shakespeare</code> is licensed with Attribution-ShareAlike 3.0 Unported does it? Not really...</p>
<p>Why does the Linked Data community lean on using identifiers to do this common sense work?  Well, largely because <a href="http://norman.walsh.name/2005/06/19/httpRange-14">people argued about it for three years</a> and this is the resolution the W3C came to. In general I like the REST approach of saying a URL identifies a <em>Resource</em>, and that when you resolve one you get back a <em>Representation</em> (a document of some kind, html, rdf/xml, whatever). Why does it have to be more complicated than that? </p>
<p>If it's not clear if an assertion is about a document or a thing, why isn't that a problem with the vocabulary in use being underspecified and vague? I believe this is essentially the point that Xiaoshu Wang made three years ago in his paper <a href="http://web.archive.org/web/20100126012209/http://dfdf.inesc-id.pt/tr/web-arch">URI Identity and Web Architecture Revisited</a>.</p>
<p>To get back to Tom's point, I agree that the really interesting assertions in Linked Data are about things, and their relations, or as Richard Rorty said a bit more expansively:</p>
<blockquote><p>
There is nothing to be known about anything except an initially large, and forever expandable, web of relations to other things. Everything that can serve as a term of relation can be dissolved into another set of relations, and so on for ever. There are, so to speak, relations all the way down, all the way up, and all the way out in every direction: you never reach something which is not just one more nexus of relations.</p>
<p>Philosophy and Social Hope, pp 53-54.
</p></blockquote>
<p>But assertions about a document, albeit being a bit more on the dry side, are also useful and important, such as: who created the web document, when they created it, a license associated with the document, its relation to previous versions, etc. As a software developer working in a library I'm actually really interested in this sort of administrivia. In fact the <a href="http://www.openarchives.org/ore/">Open Archives Initiative Object Reuse and Exchange</a> vocabulary, and the <a href="http://www.mementoweb.org/">Memento</a> efforts are largely about relating web documents together in meaningful and useful ways: to be able to harvest compound objects out of the web, and to navigate between versions of web documents. Heck, the Dublin Core vocabulary started out as an effort to describe <a href="http://dublincore.org/workshops/dc1/report.shtml">networked resources</a> (essentially documents), and the gist of the <a href="http://www.dublincore.org/documents/dcmi-terms/">Dublin Core Metadata Terms</a> retain much of this flavor. So I think RDF is also important for describing documents on the web, or (more accurately) representations.</p>
<p>So, in short:</p>
<ol>
<li>URLs identify resources.</li>
<li>A resource can be anything.</li>
<li>When you resolve a URL you get a representation of that resource.</li>
<li>If a representation is some sort of flavor of RDF, the semantics of an RDF vocabulary should make it clear what is being described.</li>
<li>If it's not clear, maybe the vocabulary sucks.</li>
</ol>
<p>I think this is basically the point that Harry Halpin and Pat Hayes were making in their paper <a href="http://www.ibiblio.org/hhalpin/homepage/publications/indefenseofambiguity.html">In Defense of Ambiguity</a>. A URL has a dual role: it identifies resources, and it allows us to access representations of resources. This ambiguity is the source of its great utility, expressiveness and power. It's why we see URLs on the sides of buses and buildings. It's why a <a href="http://en.wikipedia.org/wiki/QR_Code">QR Code</a> slapped on some real world thing has a URL embedded in it.</p>
<p>In an ideal world (where people agreed with Xiaoshu, Harry and Pat) I don't think this would mean we would have to redo all the <a href="http://richard.cyganiak.de/2007/10/lod/">Linked Data that we have already</a>. I think it just means that publishers who want the granularity of distinguishing between real world things and documents at the identifier level can have it. It would also mean that the Linked Data space can accommodate <a href="http://mikeschinkel.com/blog/whatisarestafarian/">RESTafarians</a>, and other mere mortals who don't want to ponder whether their resources are information resources or not.  And, of course, it would mean we could use a URL like <a href="http://en.wikipedia.org/wiki/William_Shakespeare">http://en.wikipedia.org/wiki/William_Shakespeare</a> to identify William Shakespeare in our RDF data ... </p>
<p>Wouldn't that be nice? </p>
