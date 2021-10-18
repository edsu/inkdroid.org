---
layout: post
status: publish
published: true
title: building and ingesting
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 98
wordpress_url: http://www.inkdroid.org/journal/?p=98
date: '2006-04-28 11:29:31 +0000'
date_gmt: '2006-04-28 18:29:31 +0000'
tags: []
comments:
- id: 27359
  author: Peter Lux
  author_email: peter@echotech.ca
  author_url: ''
  date: '2007-05-08 14:25:49 +0000'
  date_gmt: '2007-05-08 21:25:49 +0000'
  content: "Great posts and a lot of work put into this. I was looking for some help
    getting a Ruby implementation of a invocation tool for the Fedora API. This is
    a great start. \r\n\r\nI am having difficulty however with Builder. When I run
    this last bit of code, I'm getting a commandline error  stating \"uninitialized
    constant Builder (NameError)\"\r\n\r\n\r\nBuilder  2.1.1 is installed running
    on Ruby 1.8.6. \r\n\r\n\r\nThanks for the work on the classes."
- id: 27519
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2007-05-09 06:09:37 +0000'
  date_gmt: '2007-05-09 13:09:37 +0000'
  content: "Peter, how did you install Builder? Did you install the gem? Try putting
    a:\r\n\r\n<pre>\r\n  require 'builder'\r\n</pre>\r\n\r\nat the top of your script.
    Also, a bunch of people hacking ruby and things like fedora hang out in irc://chat.freenode.net/#code4lib
    so please stop by and we can figure this stuff out interactively :-)"
---

<p>I prefer using an XML generating mini-language (<a href="http://effbot.org/zone/element-index.htm">elementtree</a>, <a href="http://search.cpan.org/dist/XML::Writer/">XML::Writer</a>, <a href="http://www.germane-software.com/software/rexml/">REXML</a>, <a href="http://web.archive.org/web/20101208214148/http://www.kieranholland.com:80/code/documentation/nevow-stan/">Stan</a>, etc) to actually writing raw XML. It's just too easy for me to forget or misstype an end tag, or forget to encode strings properly--and I find all those inline strings or even here-docs make a mess of an otherwise pretty program.</p>
<p>Recently I wanted some code to write FOXML for ingesting digital objects into my <a href="http://fedora.info">Fedora</a> test instance. I'm working in Ruby so REXML seemed like the best place to start...but after I finished I ran across <a href="http://www.xml.com/pub/a/2006/01/04/creating-xml-with-ruby-and-builder.html">Builder</a>. The Builder code turned out to be somewhat shorter, much more expressive and consequently a bit easier to read (for my eyes). Here's a quick example of how Builder's API improves on REXML when writing this little chunk of XML:</p>
<pre>&lt;dc xmlns='http://purl.org/dc/elements/1.1/'&gt;
  &lt;title&gt;Communication in the Presence of Noise&lt;/title&gt;
&lt;/dc&gt;
</pre>
<p>So here's the REXML code:</p>
<pre lang="ruby">
dc = REXML::Element.new 'dc'
dc.add_attributes 'xmlns' => 'http://purl.org/dc/elements/1.1/'
title = REXML::Element.new 'title', dc
title.text 'Communication in the Presence of Noise'
</pre>
<p>and the Builder code:</p>
<pre lang="ruby">
x = Builder::XmlMarkup.new 
x.dc 'xmlns' => 'http://purl.org/dc/elements/1.1' do
  x.title 'Communication in the Presence of Noise'
end
</pre>
<p>So both are four lines, but look at how the Builder::XmlMarkup object infers the name of the element based on the message that is passed to it? Element attributes and content can be set when the element is created--something I wasn't able to do w/ REXML. My favorite though is Builder's use of blocks so that the hierarchical structure of the code directly mirrors that of the XML content!</p>
<p>So anyway, if you read this far you might actually like to see how a FOXML document can be built and ingested into Fedora--so hear goes building the document:</p>
<pre lang="ruby">
x = Builder::XmlMarkup.new :indent => 2
  
x.digitalObject 'xmlns' => 'info:fedora/fedora-system:def/foxml#' do
  
  x.objectProperties do
    x.property 'NAME' => 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type',
      'VALUE' => 'FedoraObject'
    x.property 'NAME' => 'info:fedora/fedora-system:def/model#state',
      'VALUE' => 'A'
  end

  x.datastream 'ID' => 'DC', 'STATE' => 'A', 'CONTROL_GROUP' => 'X' do
    x.datastreamVersion 'ID' => 'DC.0', 'MIMETYPE' => 'text/xml' do
      x.xmlContent do
        x.tag! 'oai_dc:dc',
          'xmlns:oai_dc' => 'http://www.openarchives.org/OAI/2.0/oai_dc/',
          'xmlns:dc' => 'http://purl.org/dc/elements/1.1/' do
          x.tag! 'dc:title', 'Communication in the Presence of Noise'
          x.tag! 'dc:creator', 'Claude E Shannon'
          x.tag! 'dc:subject', 'Information Science'
        end
      end
    end
  end

end

</pre>
<p>And here's some code to fire the foxml at Fedora in a SOAP call:</p>
<pre lang="ruby">
require 'Fedora-API-M-WSDLDriver'

# configure api_m soap client for 
host = 'http://localhost:8080/fedora/services/management'
user = 'fedoraAdmin'
pass = 'fedoraAdmin'
fedora = FedoraAPIM.new
fedora.options['protocol.http.basic_auth'] &lt;&lt; [host, user, pass]

fedora.ingest SOAP::SOAPBase64.new(x.to_s), 'foxml1.0', 'added test object' 
</pre>
