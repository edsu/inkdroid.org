---
layout: post
status: publish
published: true
title: jython niceties
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 45
wordpress_url: http://www.inkdroid.org/journal/?p=45
date: '2005-11-11 12:29:56 +0000'
date_gmt: '2005-11-11 19:29:56 +0000'
tags: []
comments: []
---
<p>While playing around with the Java <a href="http://www.jdom.org/">JDOM</a> library, I found myself resorting to jython to experiment with the API. It's just so much easier this way for me:</p>
<pre lang="python">
#!/usr/bin/env jython

from java.io import StringReader

from org.jdom import Document
from org.jdom.input import SAXBuilder
from org.jdom.xpath import XPath

xml = '<foo><bar>foobar</bar></foo>'

builder = SAXBuilder()
document = builder.build(StringReader(xml))
xpath = XPath.newInstance('//foo/bar')
node = xpath.selectSingleNode(document)
print node.getText()
</pre>
<p>In case it's of interest I've got a little jython startup script which automatically makes .jar files I drop in a particular directory available to the interpreter. So when testing jdom all i had to do was drop jdom.jar in my /usr/local/jython/jars and it's immediately available the next time I start up jython.</p>
<pre lang="sh">
#!/bin/bash

JYTHON_HOME=/usr/local/jython

for jar in $JYTHON_HOME/jars/*.jar
do
    jars=&quot;$jars:$jar&quot;
done

CLASSPATH=&quot;$JYTHON_HOME/dist/jython.jar$jars&quot;

java -cp $CLASSPATH \
	$JYTHON_JAVA_ARGS -Dpython.home=$JYTHON_HOME \
	org.python.util.jython &quot;$@&quot;

</pre>
<p>Pretty handy, especially for interactive sessions.</p>
