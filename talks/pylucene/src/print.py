#!/usr/bin/python

from sys import argv
from PyLucene import FSDirectory, IndexSearcher, TermQuery, Term

id = argv[1].strip()
directory = FSDirectory.getDirectory( 'chipy-index', False )
searcher = IndexSearcher( directory )
query = TermQuery( Term( 'id', id ) )
hits = searcher.search( query )

doc = hits.doc(0)
print "ID: %s" % doc.getField('id').stringValue()
print "From: %s" % doc.getField('from').stringValue()
print "Subject: %s" % doc.getField('subject').stringValue()
print "Date: %s" % doc.getField('date').stringValue()
print doc.getField('body').stringValue()
print 

