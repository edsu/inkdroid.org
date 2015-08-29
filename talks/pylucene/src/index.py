#!/usr/bin/env python2.4

from mailbox import UnixMailbox
from PyLucene import StandardAnalyzer, FSDirectory, IndexWriter
from email import EmailDoc

store = FSDirectory.getDirectory( 'chipy-index', True )
writer = IndexWriter( store, StandardAnalyzer(), True )

mailbox = UnixMailbox( open('chipy.mbox') )
while True:
    msg = mailbox.next()
    if msg == None: break
    writer.addDocument( EmailDoc(msg) )

writer.close()
