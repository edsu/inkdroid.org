#!/usr/bin/env python

# similar to entities.py but it posts the resource to the calais web service
# rather than using the semantic proxy for a web resource

import sys
import rdflib
import calais

filename = sys.argv[1]
content = file(filename).read()
g = calais.calais_graph(content)

name = rdflib.URIRef('http://s.opencalais.com/1/pred/name')

for s, o in g.subject_objects(predicate=rdflib.RDF.type):
    if o.startswith('http://s.opencalais.com/1/type/em/e/'):
        o_type = o.split('/')[-1]
        for o_name in g.objects(s, name):
            print ('a %s named %s' % (o_type, o_name)).encode('utf-8')
