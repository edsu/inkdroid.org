---
layout: post
status: publish
published: true
title: routers, webcams and thermometers
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2569
wordpress_url: http://inkdroid.org/journal/?p=2569
date: '2010-11-08 23:16:23 +0000'
date_gmt: '2010-11-09 06:16:23 +0000'
tags:
- http
- web
- identifiers
- linked data
comments:
- id: 83750
  author: me.yahoo.com/danbri3
  author_email: ''
  author_url: https://me.yahoo.com/danbri3#3ecf3
  date: '2010-11-09 02:06:29 +0000'
  date_gmt: '2010-11-09 09:06:29 +0000'
  content: "I made much the same argument in, erm, 2003. I had a Tivo on the home
    network with an ethernet card added, and a Web server. It had /proc/therm so I
    could get the temperature in the room...\r\n\r\nhttp://www.w3.org/2003/03/06-SW-Arch\r\n\r\n[...]\r\ntimbl
    [at white board]\r\nwhen someone makes up a property and uses it, how do we know
    what it means?\r\nmy view of web architecture, unformalized, but useful\r\nwhen
    you have a URI, you look in a registry that points to another spec.\r\nthat spec
    points to the DNS spec which allows you to n IP\r\nyou use the HTTP spec to open
    a TCP connection and send a request based on that URI\r\nyou get back a string
    of bits that have a mime type.\r\nthat give you a pointer to the RDF spec.\r\npatrick
    stickler\r\n[re-expresses question]\r\ntimbl\r\nspecs says how bits are arranged.
    rest of this is all context\r\ndanbir\r\nyou get a triple set and want to see
    which are core and which are fluff.\r\ntimbl\r\nif you understand part of it,
    that's ok.\r\n[... lots more dicussion along this line...]\r\ntimbl\r\nRoy and
    my models differ because it's not tested in the conventional web.\r\nRoy maintains
    philosophically that foo.rdf could be a car.\r\nThat introduces a lot of inconsistancy
    for me.\r\nred /w yellow stripe\r\nwhy can't it be a car (or piece of hardware)\r\nlynn\r\ndanbri\r\nyou
    run into the same problem with content negotiation.\r\nwhy can't i give the thermometer
    in my tivo at home a URL.\r\n[...]"
- id: 83777
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2010-11-09 09:31:09 +0000'
  date_gmt: '2010-11-09 16:31:09 +0000'
  content: "@danbri interesting historical details there. Are those actual notes you
    still have from the meeting? If so, colo(u)r me impressed :-)"
- id: 83792
  author: bibwild.wordpress.com/
  author_email: ''
  author_url: http://bibwild.wordpress.com/
  date: '2010-11-10 07:25:19 +0000'
  date_gmt: '2010-11-10 14:25:19 +0000'
  content: "Thanks for putting this out there, well said.  Converges nicely with Ian
    Davis and Andy Powell's posts on this topic. \r\n\r\nOne point that I think is
    particularly clear from the view of we in libraries who work with \"information
    resources that are not on the web\", is how tricky that ontological/epistemological/metaphysical/whatever-fancy-word-you-want
    to use distinction actually is, it doesn't always make a lot of sense.  (Is an
    eBook an 'information resource', but a printed a book a 'non information resource'
    huh?). Something you blogged about first running into with the historical newspapers
    project. \r\n\r\nThe way httpRange-14 prioritizes that binary distinction as THE
    fundamental ontological decision -- I think that will seem less and less useful
    as the internet continues to increase as an intrinsic part of daily life.  Not
    sure that sentance makes any sense, heh. \r\n\r\nThere ARE some real problems
    with understanding and being clear about what the subjects of our assertions are
    -- but httpRange-14, in my opinion, does not actually succesfully solve them,
    at the cost of being a very confusing barrier to putting your open data on the
    web in a machine friendly way. (This will be laughable to some, but I think the
    FRBR ontology does a _better_ job of modelling the entities we make assertions
    about when dealing with information, then httpRange-14 does, with it's effective
    ontology of two entities, 'information resource' and 'non-information resource'.
    With FRBR instead your data can simply declare within itself (rather than as a
    transient side-effect of it's transfer protocol) whether it's subject is a 'manifestation'
    (a particular respresentation), or a 'work' (the abstract 'non-information resource'
    that is \"my book about aardvarks\" whether in ebook, html, or print form)."
- id: 83793
  author: Arguments about HTTP 303 Considered Harmful &#8211; Tom Heath&#8217;s Displacement
    Activities
  author_email: ''
  author_url: http://tomheath.com/blog/2010/11/arguments-about-http-303-considered-harmful/
  date: '2010-11-10 07:34:42 +0000'
  date_gmt: '2010-11-10 14:34:42 +0000'
  content: "[...] to take a bit of responsibility for writing sensible RDF statements.
    Unfortunately, people like Ed seeming to conflate himself and his homepage (and
    his router and its admin console) don&#8217;t help with the general level of understanding.
    I&#8217;ve tried many times to explain to [...]"
---
<p><a href="http://en.wikipedia.org/wiki/Router"><img src="http://inkdroid.org/images/linksys-router.jpg" style="width: 300px; margin-right: 10px; margin-bottom: 5px; float: left; border: medium solid grey;" /></a> If you have a local wi-fi network at home you probably use something like this Linksys wireless router on the left, to let your laptop and other devices connect to the Internet. When you bought it and plugged it in you probably followed the instructions and typed "http://192.168.1.1/" into your web browser and visited a page to configure the router: settings its name, admin password, etc.</p>
<p>Would you agree that this router sitting on top of your TV, or wherever it is, is a <em>real world thing</em>? It's not some abstract concept of a router: you can pick it up, turn it off and on, take it apart and try to put it back together again. And the router is identified with a URL: <a href="http://192.68.1.1.">http://192.168.1.1</a>. When your web browser resolves the URL for your router it gets back some HTML, that lets you see the router's current state, and make modifications to it. You don't get the <em>router itself</em>. That would be silly right?</p>
<p>In terms of <a href="http://en.wikipedia.org/wiki/Representational_State_Transfer">REST</a>, the router is a <em>Resource</em> that has a URL <em>Identifier</em>, which when resolved returns an HTML <em>Representation</em> of the <em>Resource</em>. But you don't really have to think about it much at all, because it's intuitively part of how you use the web every day.</p>
<p>In fact the Internet is strewn with online devices that have embedded web servers in them. A 5 year old BoingBoing article <a href="http://www.boingboing.net/2005/01/05/more_googleable_unse.html">More Googleable Unsecured Webcams</a> shows how you can drop a web search for <a href="http://www.google.com/search?sourceid=chrome&ie=UTF-8&q=inurl:%22view/index.shtml%22#q=inurl:%22view/index.shtml%22">inurl:"view/index.shtml"</a> into Google, and get back thousands of webcams from around the world. You can zoom and pan these cameras using your web browser. These are URLs for <em>real world</em> cameras. When you put the URL in your browser you don't get the camera itself, that's crazy talk; instead you get some HTML describing the camera's current state, and some form controls for changing its position. Again all is well in the REST world, where the camera is the <em>Resource</em> identified with a URL, and your browser receives a <em>Representation</em> of the <em>Resource</em>.</p>
<p><a href="http://en.wikipedia.org/wiki/File:Arduino_Duemilanove_2009b.jpg"><img src="http://inkdroid.org/images/arduino.jpg" style="margin-left: 10px; margin-bottom: 5px; float: right; width: 400px; border: medium solid grey;" /></a></p>
<p>If you are an Arduino hacker you might follow some <a href="http://www.practicalarduino.com/projects/online-thermometer">instructions</a> to build an online thermometer. You wire up the temperature sensor, and configure the Arduino to listen for HTTP requests at a particular IP address. You can then visit a URL in your web browser, and the server returns a <em>Representation</em> of the current temperature. It doesn't return the Arduino board, the thermometer, or the thermodynamic state of its environment...that's crazy talk. It returns a <em>Representation</em> of the temperature.</p>
<p>So imagine I want to give myself a URL, say <a href="http://inkdroid.org">http://inkdroid.org</a>. Is this so different than the camera, the router and the thermometer? Sure, I don't have a web server embedded in me. But even if I did nobody would expect it to return <em>me</em> would they? Just as in the other cases, people would expect a <em>Representation</em> of me to be returned. Heck, there are millions of <a href="http://en.wikipedia.org/wiki/OpenID">OpenID</a> URLs deployed for people already. But this argument is used time, and time again in the Semantic Web, Linked Data community to justify the need for elaborate, byzantine, hard to explain HTTP behavior when making RDF descriptions of real world things available. The pattern has been best described in the <a href="http://www.w3.org/TR/cooluris/">Cool URIs for the Semantic Web</a> W3C Note. I understand it. But if you've ever had to explain it to a web developer not already brainwashed^w familar with the pattern you will understand that it is hard to explain convincingly. It's even harder to implement correctly, since you are constantly asking yourself nonsensical questions like: "is this a Information Resource" when you are building your application.</p>
<p>I was pleased to see Ian Davis' recent <a href="http://iand.posterous.com/is-303-really-necessary">well</a> <a href="http://iand.posterous.com/a-guide-to-publishing-linked-data-without-red">articulated</a> posts about whether the complicated HTTP behavior is essential for deploying Linked Data. I know I am biased because I was introduced to much of the Semantic Web and Linked Data world when Ian Davis and <a href="http://twitter.com/beobal">Sam Tunnicliffe</a> visited the Library of Congress three years ago. I agree with Ian's position: the current situation with the 303 redirect is potentially wasteful, error prone and bordering on the absurd...and the Linked Data community could do a lot to make it easier to deploy Linked Data. At its core, Ian's advice in <a href="http://iand.posterous.com/a-guide-to-publishing-linked-data-without-red">Guide to Publishing Linked Data Without Redirects</a> does a nice job of making Linked Data publishing seem familiar to folks who have used HTTP's content-negotiation features to enable internationalization, or building RESTful web services. A URL for a resource that has a more constrained set of representations, allows for <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec12.html#sec12.2">Agent Driven Negotiation</a> in situations where custom tuning the Accept header in the client isn't convenient and practical. Providing a pattern for linking these resources together with something like wrds:describedby and/or the describedby relation that's now available in <a href="http://tools.ietf.org/html/rfc5988">RFC 5988</a> is helpful for people building REST APIs and Linked Data applications.</p>
<p><a href="http://www.flickr.com/photos/psd/5159730124/in/set-72157625161668113/"><img src="http://inkdroid.org/images/psd-resource.jpg" style="float: left; margin-right: 10px; margin-bottom: 5px;"/></a></p>
<p>At the end of the day, it would be useful if the W3C could de-emphasize httpRange-14,  simplify the <a href="http://www.w3.org/TR/webarch/">Architecture of the World Wide Web</a> (by removing the notion of Information Resources), and pave the cowpaths we already are seeing for Real World Objects on the Web. It would be great to have a W3C document that guided people on how to put URIs for things on the web, that fit with how people are already doing it, and made intuitive sense. We're already used to things like our routers, cameras and thermometers being on the web, and my guess is we're going to see <a href="http://www.webofthings.com/">much</a>, <a href="http://web.archive.org/web/20101203035826/http://panelpicker.sxsw.com/ideas/view/7607?return=%2Fideas%2Findex%2F7%2Fpresenter%3AGuinard">much</a> <a href="http://www.iot2010.org/">more</a> <a href="http://web.archive.org/web/20110123182233/http://www.inf.ethz.ch:80/personal/dguinard/publications/bibtex.html?file=/home/webvs/www/htdocs/publ/papers/dguinard-giving-2010">of it</a> in the coming years. I don't think a move like this would invalidate documents like <a href="http://www.w3.org/TR/cooluris/">Cool URIs for the Semantic Web</a>, or make the existing Linked Data that is out there somehow wrong. It would simply lower the bar for people who want to publish Linked Data, who don't necessarily want to go through the process of using URIs to distinguish non-Information Resources from Information Resources.</p>
<p>If the W3C doesn't have the stomach for it, I imagine we will see the <a href="http://en.wikipedia.org/wiki/IETF">IETF</a> lead the way, or for innovation to happen elsewhere as with <a href="http://en.wikipedia.org/wiki/HTML5">HTML5</a>.</p>
