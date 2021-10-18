---
layout: post
status: publish
published: true
title: bad xml smells
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2358
wordpress_url: http://inkdroid.org/journal/?p=2358
date: '2010-08-25 12:16:22 +0000'
date_gmt: '2010-08-25 19:16:22 +0000'
tags:
- metadata
- rdfa
- xhtml
- python
- ndnp
- mets
comments: []
---

<p>I'm used to refactoring code smells, but sometimes you can catch a bad whiff in XML too. </p>
<p>Before:</p>
<pre lang="xml">
< ?xml version="1.0" encoding="UTF-8"?>
<mets TYPE="urn:library-of-congress:ndnp:mets:encyclopedia:encyclopediaEntry" PROFILE="urn:library-of-congress:mets:profiles:ndnp:encyclopediaEntry:v1.1" LABEL="The National Forum Scope Note" 
     xmlns:mods="http://www.loc.gov/mods/v3" xmlns="http://www.loc.gov/METS/" xmlns:dsig="http://www.w3.org/2000/09/xmldsig#" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

     <!--METS HEADER-->
     <metshdr CREATEDATE="2007-01-10T09:00:00" ><!--CREATEDATE should be populated with creation date of the record.  RECORDSTATUS should only be set by Validation Application.-->
        <agent ROLE="CREATOR" TYPE="ORGANIZATION">
            <name><!--Awardee, if the awardee created the METS record.  If LC created the METS record, should be "Library of Congress"-->Library of Congress</name>
        </agent>
    </metshdr>

    <!--Descriptive metadata for encyclopedia entry-->
    <dmdsec ID="encyclopediaMods">                
        <mdwrap MDTYPE="MODS" LABEL="Encyclopedia entry metadata">
            <xmldata>
                <mods:mods>
                    <mods:name type="corporate">
                            <mods:displayform><!--Awardee-->Library of Congress</mods:displayform>
                    </mods:name>
                    <mods:relateditem>
                        <mods:identifier type="lccn"><!--LCCN-->sn82015056</mods:identifier>
                        <!-- mods:identifier elements are repeatable -->
                    </mods:relateditem>
                </mods:mods>
            </xmldata>
        </mdwrap>
    </dmdsec>
                            
   
    
    <!--FILE SECTION-->
    <filesec>
        <filegrp>
            <file ID="encyclopediaEntryText">
                <fcontent>
                    <xmldata>
                        <xhtml:html xmlns:xhtml="http://www.w3.org/1999/xhtml"  lang="en">
                           <xhtml:head>
                              <xhtml:title><!--Newspaper title-->The National Forum (Washington, DC), 1910-19??</xhtml:title>
                           </xhtml:head>
                           
                           <xhtml:body>
                              <xhtml:p>
The first issue of the <xhtml:cite>National Forum</xhtml:cite> was likely released on April 30, 1910 
and the newspaper ran through at least November 12 of that year. The four-page African-American 
weekly covered such local events as Howard University graduations and Baptist church activities, but its 
pages also included national news, sports, home maintenance, women's news, science, editorial 
cartoons, and reprinted stories from national newspapers. Its primary focus was on how the news 
affected the city's black community. A unique feature was its coverage of Elks Club meetings and 
activities.  Business manager John H. Wills contributed the community-centered "Vanity Fair" column that
 usually appeared on the front page of each issue. The publisher and editor was Ralph W. White, who 
went on to publish another African-American newspaper, the <xhtml:a href="info:lccn/sn86092050">
<xhtml:cite>McDowell Times</xhtml:cite></xhtml:a> of Keystone, West Virginia. Originally located at 
609 F St., NW, the newspaper's offices moved in August to 1022 U Street, N.W. to be closer to the 
African-American community it served.  No extant first issue of the <xhtml:cite>National
 Forum</xhtml:cite> exists.
                              </xhtml:p>
                           </xhtml:body>
                        </xhtml:html>
                    </xmldata>
                </fcontent>
            </file>
        </filegrp>
    </filesec>
        
    <!--STRUCTURAL MAP-->    
    <structmap xmlns:np="urn:library-of-congress:ndnp:mets:newspaper">
        <div TYPE="np:encyclopediaEntry" DMDID="encyclopediaMods">
            <fptr FILEID="encyclopediaEntryText"/>
        </div>
    </structmap>    
</mets>
</pre>
<p>After:</p>
<pre lang="xml">
< ?xml version="1.0" encoding="utf-8"?>
< !DOCTYPE html PUBLIC "-//W3C//DTD XHTML+RDFa 1.0//EN" "http://www.w3.org/MarkUp/DTD/xhtml-rdfa-1.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:dcterms="http://purl.org/dc/terms/">
  <head>
    <title>The National Forum (Washington, DC), 1910-19??</title>
    <meta content="The National Forum (Washington, DC), 1910-19??" property="dcterms:title"/>
    <meta content="2007-01-10T09:00:00" property="dcterms:created"/>
    <meta content="Library of Congress" property="dcterms:creator"/>
    <meta content="http://chroniclingamerica.loc.gov/lccn/sn82015056#title" property="dcterms:subject"/>
  </head>
  <body rel="dcterms:description">
    <p>The first issue of the <cite>National Forum</cite> was likely released on April 30, 1910 and the 
newspaper ran through at least November 12 of that year. The four-page African-American weekly 
covered such local events as Howard University graduations and Baptist church activities, but its pages 
also included national news, sports, home maintenance, women's news, science, editorial cartoons, and 
reprinted stories from national newspapers. Its primary focus was on how the news affected the city's black community. A unique feature was its coverage of Elks Club meetings and activities.  Business 
manager John H. Wills contributed the community-centered "Vanity Fair" column that usually appeared 
on the front page of each issue. The publisher and editor was Ralph W. White, who went on to publish 
another African-American newspaper, the <a href="http://chroniclingamerica.loc.gov/lccn/sn86092050">
<cite>McDowell Times</cite></a> of Keystone, West Virginia. Originally located at 609 F St., NW, the 
newspaper's offices moved in August to 1022 U Street, N.W. to be closer to the African-American 
community it served.  No extant first issue of the <cite>National Forum</cite> exists.</p>
  </body>
</html>
</pre>
<p>I basically took a complicated METS wrapper around some XHTML, which was really just expressing metadata about the HTML, and refactored it as XHTML. Not that METS is a bad XML smell generally, but in this particular case it was overkill. If you look closely you'll see I'm using <a href="http://www.w3.org/TR/xhtml-rdfa-primer/">RDFa</a>, similar to what Facebook are doing with their <a href="http://developers.facebook.com/docs/opengraph">OpenGraph Protocol</a>.  There's less to get wrong, what's there should look more familiar to web developers who aren't versed in arcane library standards, and I can now read the metadata from the XHTML with an RDFa aware parser, like Python's <a href="http://python.org/pypi/rdflib">rdflib</a>:</p>
<pre lang="python">
>>> import rdflib
>>> g = rdflib.Graph()
>>> g.parse('essays/1.html', format='rdfa')
>>> for triple in g: print triple
... 
(rdflib.term.URIRef('file:///home/ed/Projects/essays/essays/1.html'), rdflib.term.URIRef('http://purl.org/dc/terms/creator'), rdflib.term.Literal(u'Library of Congress'))
(rdflib.term.URIRef('file:///home/ed/Projects/essays/essays/1.html'), rdflib.term.URIRef('http://purl.org/dc/terms/title'), rdflib.term.Literal(u'The National Forum (Washington, DC), 1910-19??'))
(rdflib.term.URIRef('file:///home/ed/Projects/essays/essays/1.html'), rdflib.term.URIRef('http://purl.org/dc/terms/description'), rdflib.term.Literal(u'\n    <p xmlns="http://www.w3.org/1999/xhtml">\nThe first issue of the <cite>National Forum</cite> was likely released on April 30, 1910 and the newspaper ran through at least November 12 of that year. The four-page African-American weekly covered such local events as Howard University graduations and Baptist church activities, but its pages also included national news, sports, home maintenance, women
s news, science, editorial cartoons, and reprinted stories from national newspapers. Its primary focus was on how the news affected the city
s black community. A unique feature was its coverage of Elks Club meetings and activities.  Business manager John H. Wills contributed the community-centered &quot;Vanity Fair&quot; column that usually appeared on the front page of each issue. The publisher and editor was Ralph W. White, who went on to publish another African-American newspaper, the <a href="http://chroniclingamerica.loc.gov/lccn/sn86092050"><cite>McDowell Times</cite></a> of Keystone, West Virginia. Originally located at 609 F St., NW, the newspaper
s offices moved in August to 1022 U Street, N.W. to be closer to the African-American community it served.  No extant first issue of the <cite>National Forum</cite> exists.\n</p>\n  ', datatype=rdflib.term.URIRef('http://www.w3.org/1999/02/22-rdf-syntax-ns#XMLLiteral')))
(rdflib.term.URIRef('file:///home/ed/Projects/essays/essays/1.html'), rdflib.term.URIRef('http://purl.org/dc/terms/subject'), rdflib.term.Literal(u'http://chroniclingamerica.loc.gov/lccn/sn82015056#title'))
(rdflib.term.URIRef('file:///home/ed/Projects/essays/essays/1.html'), rdflib.term.URIRef('http://purl.org/dc/terms/created'), rdflib.term.Literal(u'2007-01-10T09:00:00'))
</pre>
