#!/usr/bin/env python2.4

from sys import argv
from PyLucene import FSDirectory, IndexSearcher, QueryParser, StandardAnalyzer

string = argv[1].strip()
directory = FSDirectory.getDirectory( 'chipy-index', False )
searcher = IndexSearcher( directory )
query = QueryParser.parse( string, 'all', StandardAnalyzer() )
hits = searcher.search( query )

for i in range(0,hits.length()):
    doc = hits.doc(i)
    print "ID: %s" % doc.getField('id').stringValue()
    print "From: %s" % doc.getField('from').stringValue()
    print "Subject: %s" % doc.getField('subject').stringValue()
    print "Date: %s" % doc.getField('date').stringValue()
    print

