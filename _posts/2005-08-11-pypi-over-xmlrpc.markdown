---
layout: post
status: publish
published: true
title: pypi over xmlrpc
author:
  display_name: Administrator
  login: admin
  email: ed.summers@gmail.com
  url: http://www.inkdroid.org
author_login: admin
author_email: ed.summers@gmail.com
author_url: http://www.inkdroid.org
wordpress_id: 21
wordpress_url: http://www.inkdroid.org/journal/?p=21
date: '2005-08-11 13:44:16 +0000'
date_gmt: '2005-08-11 20:44:16 +0000'
tags: []
comments:
- id: 3
  author: brianray
  author_email: bray@sent.com
  author_url: http://
  date: '2005-08-11 14:17:49 +0000'
  date_gmt: '2005-08-11 21:17:49 +0000'
  content: nice.  Now  let's Sprint for a get,config,make, and install util... then
    let somebody else finish it.
- id: 296
  author: Jorge Godoy
  author_email: jgodoy@gmail.com
  author_url: ''
  date: '2006-04-23 06:11:18 +0000'
  date_gmt: '2006-04-23 13:11:18 +0000'
  content: "It looks like the URL problem were solved in the last 10 months ;-)\r\n\r\nThe
    URL for the sprint has changed to http://chipy.org/Sprint\r\n\r\nBice piece of
    code.  Intresting, useful and fast.  Congratulations!"
---

<p>It's great to see that our <a href="http://web.archive.org/web/20050404011108/http://chipy.org:80/sprint.html">ChiPy sprint</a> bore some fruit for the PyPI service. There's now decent <a href="http://wiki.python.org/moin/PyPiXmlRpc">XMLRPC support</a> in PyPI for querying the packages. This will hopefully open up the door for lots of PyPI utilities that abound in the Perl/CPAN world...like this very simple client for listing packages:</p>
<pre lang="python">
#!/usr/bin/env python

import xmlrpclib
import sys

pypi = xmlrpclib.ServerProxy('http://python.org/pypi')
for hit in pypi.search( { 'name':sys.argv[1] } ):
    urls = pypi.package_urls( hit['name'], hit['version'] )
    if urls:
        hit['url'] = urls[0]['url']
    else:
        hit['url'] = 'None'
    print 'NAME: %(name)s [%(version)s]\nDESC: %(summary)s\nURL: %(url)s' % hit
    print

</pre>
<p>which if you put in your PATH allows you to:</p>
<pre>
biblio:~ ed$ pypi-search sql
NAME: dbsql [0.7.1]
DESC: A tool to sync pilot-db databases with an SQL database.
URL: None

NAME: ll-orasql [0.6]
DESC: Utilities for working with cx_Oracle
URL: http://cheeseshop.python.org/packages/source/l/ll-orasql/ll-orasql-0.6.tar.bz2
  
NAME: ll-sql [0.7.1]
DESC: A module for generating SQL queries
URL: http://cheeseshop.python.org/packages/source/l/ll-sql/ll-sql-0.7.1.tar.gz

NAME: MySQL-python [1.2.0]
DESC: Python interface to MySQL
URL: None

NAME: pSQL [0.9.2]
DESC: SQL statement wrapper class
URL: None

NAME: pymssql [0.5.2]
DESC: A simple database interface to MS-SQL for Python.
URL: None

NAME: pymssql [0.6.0]
DESC: A simple database interface to MS-SQL for Python.
URL: None

NAME: pymssql [0.7.1]  
DESC: A simple database interface to MS-SQL for Python.
URL: None

NAME: pyPgSQL [2.3]
DESC: pyPgSQL - A Python DB-API 2.0 compliant interface to PostgreSQL.
URL: None

NAME: pysqlite [2.0.3]
DESC: DB-API 2.0 interface for SQLite 3.x
URL: None

NAME: SnakeSQL [0.5.2 Alpha]
DESC: Pure Python SQL database supporting NULLs, foreign keys and simple joins
URL: None

NAME: SQLEdit [1.0]
DESC: An sql table editor and query viewer.
URL: None

NAME: SQLObject [0.6.1]
DESC: Object-Relational Manager, aka database wrapper
URL: None 
</pre>
<p>As you can see there is something odd going on with the package URL...it requires an extra trip to the XMLRPC service to get it, and it is rarely there.</p>
