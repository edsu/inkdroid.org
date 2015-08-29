---
layout: post
status: publish
published: true
title: Fedora/SOAP and Ruby
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 96
wordpress_url: http://www.inkdroid.org/journal/?p=96
date: '2006-04-25 13:31:09 +0000'
date_gmt: '2006-04-25 20:31:09 +0000'
tags: []
comments:
- id: 17364
  author: Micah
  author_email: mwedeme@emory.edu
  author_url: ''
  date: '2007-03-20 14:35:50 +0000'
  date_gmt: '2007-03-20 21:35:50 +0000'
  content: "Whenever I try to connect to my fedora server (on localhost:8080) via
    SOAP, I get a 401 authentication error, and it returns a bunch of HTML .  I have
    tried turning off XACML (ie. ENFORCE-MODE=\"permit-all-requests\") and removing
    all the deny* XACML policies, but nothing has worked.\r\n\r\nNote: This is for
    API-A.  I have not even tried API-M.\r\n\r\nSetup:\r\nLinux\r\nruby 1.8.5 (using
    included version of soap4r)\r\nFedora 2.2\r\n\r\nHere is the code:\r\n===========================\r\nrequire
    'soap/wsdlDriver'\r\n\r\nfactory = SOAP::WSDLDriverFactory.new('http://localhost:8080/fedora/wsdl?api=API-A')\r\ndriver
    = factory.create_rpc_driver\r\nresponse = driver.getObjectProfile(:pid =&gt; 'changeme:1',
    :asOfDateTime =&gt; '')\r\n====================================\r\n\r\nAny ideas?"
---
<p><a href="http://fedora.info"><img src="http://web.archive.org/web/20060811065005/http://www.fedora.info:80/images/index/logo.gif" border="none" style="margin-right: 15px" align="left" /></a></p>
<p>I've been playing around getting <a href="http://ruby-lang.org">ruby</a> to talk to the <a href="http://fedora.info">fedora</a> framework for building digital repositories. Fedora makes its api available by different sets of SOAP services, defined in WSDL files. What follows is a brief howto on getting Ruby to talk to the <a href="http://www.fedora.info/definitions/1/0/api/Fedora-API-A.html">API-A</a> and <a href="http://www.fedora.info/definitions/1/0/api/Fedora-API-M.html">API-M</a></p>
<p>To get basic API-A and API-M clients working you'll need the following:</p>
<ul>
<li>A modern ruby: probably >= 1.8.2</li>
<li>The latest <a href="http://web.archive.org/web/20100819082659/http://dev.ctor.org:80/soap4r">soap4r</a>: the one that comes standard in 1.8.4 may work but emits some warnings when processing the fedora wsdl files.</li>
<li>The latest <a href="http://raa.ruby-lang.org/project/http-access2/">http-access2</a> if you plan on doing API-M with basic authentication.</li>
<li>A <a href="http://www.textualize.com/files/ruby-fedora.tar.gz">tarball</a> of ruby classes I generated with wsdl2ruby using the wsdl files in the latest fedora distribution.</li>
</ul>
<p>So assuming you've unpacked the ruby-fedora.tar.gz you should be able to go in there and write the following program which will attempt to connect to a fedora server at localhost:8080 and retrieve the PDF datastream for an object with PID 'biblio:2' and write it out to disk. I guess to get it working right you should change the datastream label and PID to something relevant in your repository.</p>
<pre lang="ruby">
#!/usr/bin/env ruby

require 'Fedora-API-A-WSDLDriver'

fedora = FedoraAPIA.new
ds = fedora.getDatastreamDissemination('biblio:2', 'PDF', nil)

File.open('shannon.pdf', 'w') {|f| f.write ds.stream}
</pre>
<p>To talk API-M it's just a little bit more work since you have to tell the SOAP client what the username and password are. In this example we simply ask for the next PID in the 'biblio' namespace.</p>
<pre lang="ruby">
#!/usr/bin/env ruby

require 'Fedora-API-M-WSDLDriver'

host = 'http://localhost:8080/fedora/services/management'
user = 'fedoraAdmin'
pass = 'fedoraAdmin'

fedora = FedoraAPIM.new
fedora.options['protocol.http.basic_auth'] &lt;&lt; [host, user, pass]

print fedora.getNextPID(SOAP::SOAPNonNegativeInteger.new(1), 'biblio')   
</pre>
<p>Obviously there's a lot more depth to go into as far as exploring the fedora api. But these are the basics. Tomorrow I'm going to explore FOXML some more and look at what's involved in doing injest with ruby.</p>
