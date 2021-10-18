---
layout: post
status: publish
published: true
title: Visualizing FRBR Worksets
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 3916
wordpress_url: http://inkdroid.org/journal/?p=3916
date: '2011-11-12 20:55:51 +0000'
date_gmt: '2011-11-13 03:55:51 +0000'
tags:
- oclc
- frbr
- librarything
- openlibrary
- visualization
comments:
- id: 85223
  author: Visualizing FRBR Worksets (inkdroid.org) &laquo; e-what?
  author_email: ''
  author_url: http://web.archive.org/web/20111117154018/http://www.e-what.net:80/958
  date: '2011-11-13 04:24:44 +0000'
  date_gmt: '2011-11-13 11:24:44 +0000'
  content: |
    <p>[...] Visualizing FRBR Worksets http://inkdroid.org/journal/2011/11/12/visualizing-frbr-worksets/ [...]</p>
- id: 86755
  author: Perspective and Doing Good Work
  author_email: ''
  author_url: http://ns4lib.com/lead-prototype/2012/01/11/perspective-and-doing-good-work/
  date: '2014-01-11 15:33:14 +0000'
  date_gmt: '2014-01-11 22:33:14 +0000'
  content: |
    [&#8230;] he appears to have some sort of working relationship with Library of Congress librarian/programmer Ed Summers as [&#8230;]
- id: 87327
  author: In the Library with the Lead Pipe &raquo; Perspective and Doing Good Work
  author_email: ''
  author_url: http://www.inthelibrarywiththeleadpipe.org/2012/perspective-and-doing-good-work/
  date: '2015-04-22 14:01:13 +0000'
  date_gmt: '2015-04-22 21:01:13 +0000'
  content: |
    [&#8230;] he appears to have some sort of working relationship with Library of Congress librarian/programmer Ed Summers as [&#8230;]
---

<p><img title="More on this Venn diagram down below" src="https://chart.googleapis.com/chart?chs=125x75&cht=v&chd=t:70.0,87.5,22.5,23,8,9,8&chco=77FF77,7777FF,FF7777" style="float: left;"/><br />
The model behind the <a href="http://en.wikipedia.org/wiki/Functional_Requirements_for_Bibliographic_Records">Functional Requirements for Bibliographic Records</a> (FRBR) was <a href="http://www.ifla.org/en/publications/functional-requirements-for-bibliographic-records">published</a> over 10 years ago, and has been simmering in library land ever since. Bit by bit, FRBR has been finding its way into library systems and software, sometimes in a slightly modified form. But it has been slow going because FRBR offers a more nuanced view of bibliographic data than what is available in our legacy MARC data. So the FRBR relationships <em>we want</em> largely have to be teased out of the data <em>we have</em>.</p>
<div style="float: right; margin-left: 10px;">
<br />
<img src="http://inkdroid.org/images/neuromancer1.jpg" width="100" /></p>
<p><img src="http://inkdroid.org/images/neuromancer2.jpg" width="100p" />
</div>
<p>One of the primary things that FRBR offers is the notion of a Work that groups together Expressions and Manifestations. For example, <a href="http://openlibrary.org/authors/OL26283A/William_F._Gibson">William Gibson</a> wrote a book <a href="http://openlibrary.org/works/OL27258W/Neuromancer">Neuromancer</a>, which has been translated into many languages, and is available from multiple publishers. Collectors are sometimes interested in specific editions of a book, say a first edition printing; but readers are often interested in any edition of a work, because they don't particularly care what's on the cover, or what pagination or typeface is used. FRBR provides a conceptual model for working with books in this way. For the software developer FRBR also holds out the promise of a normalized view of book data, where some things, such as the author and subject of the book can be expressed in one place (as attributes of the Work) rather than repeated for all the Expressions and Manifestations.</p>
<p>If you are a bibliographic data aficionado, you are probably already familiar with FRBR-ization Web services like <a href="http://www.worldcat.org/affiliate/webservices/xisbn/app.jsp">xISBN</a> and <a href="http://www.librarything.com/wiki/index.php/LibraryThing_APIs">ThingISBN</a> that make it possible to determine other related editions, or the workset, for a given ISBN. So to look up the 1995 Ace Books printing of Neuromancer (0441569595) at xISBN you can GET a URL like <a href="http://xisbn.worldcat.org/webservices/xid/isbn/0441569595?method=getEditions&amp;format=xml">http://xisbn.worldcat.org/webservices/xid/isbn/0441569595?method=getEditions&amp;format=xml</a> and get back some XML like:</p>
<pre language="xml" style="height: 200px;">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;rsp xmlns="http://worldcat.org/xid/isbn/" stat="ok"&gt;
  &lt;isbn&gt;0441569595&lt;/isbn&gt;
  &lt;isbn&gt;0441569579&lt;/isbn&gt;
  &lt;isbn&gt;0441012035&lt;/isbn&gt;
  &lt;isbn&gt;0006480411&lt;/isbn&gt;
  &lt;isbn&gt;1570420599&lt;/isbn&gt;
  &lt;isbn&gt;0007119585&lt;/isbn&gt;
  &lt;isbn&gt;0736638369&lt;/isbn&gt;
  &lt;isbn&gt;0441569587&lt;/isbn&gt;
  &lt;isbn&gt;1570421560&lt;/isbn&gt;
  &lt;isbn&gt;9029042478&lt;/isbn&gt;
  &lt;isbn&gt;229000619X&lt;/isbn&gt;
  &lt;isbn&gt;415010672X&lt;/isbn&gt;
  &lt;isbn&gt;0307969940&lt;/isbn&gt;
  &lt;isbn&gt;0441569560&lt;/isbn&gt;
  &lt;isbn&gt;569700124X&lt;/isbn&gt;
  &lt;isbn&gt;5792101205&lt;/isbn&gt;
  &lt;isbn&gt;2707115622&lt;/isbn&gt;
  &lt;isbn&gt;7542818732&lt;/isbn&gt;
  &lt;isbn&gt;229030820X&lt;/isbn&gt;
  &lt;isbn&gt;2744139157&lt;/isbn&gt;
  &lt;isbn&gt;0932096417&lt;/isbn&gt;
  &lt;isbn&gt;3453313895&lt;/isbn&gt;
  &lt;isbn&gt;1616577843&lt;/isbn&gt;
  &lt;isbn&gt;9607002504&lt;/isbn&gt;
  &lt;isbn&gt;8445072897&lt;/isbn&gt;
  &lt;isbn&gt;0002252325&lt;/isbn&gt;
  &lt;isbn&gt;8842907464&lt;/isbn&gt;
  &lt;isbn&gt;9029049367&lt;/isbn&gt;
  &lt;isbn&gt;8445075950&lt;/isbn&gt;
  &lt;isbn&gt;9029050748&lt;/isbn&gt;
  &lt;isbn&gt;8071930482&lt;/isbn&gt;
  &lt;isbn&gt;0586066454&lt;/isbn&gt;
  &lt;isbn&gt;7542824139&lt;/isbn&gt;
  &lt;isbn&gt;9119027818&lt;/isbn&gt;
  &lt;isbn&gt;8085601273&lt;/isbn&gt;
  &lt;isbn&gt;0441000681&lt;/isbn&gt;
  &lt;isbn&gt;8445070843&lt;/isbn&gt;
  &lt;isbn&gt;8385784012&lt;/isbn&gt;
  &lt;isbn&gt;8982738851&lt;/isbn&gt;
  &lt;isbn&gt;3893111387&lt;/isbn&gt;
  &lt;isbn&gt;807193318X&lt;/isbn&gt;
  &lt;isbn&gt;5170198892&lt;/isbn&gt;
  &lt;isbn&gt;8371500432&lt;/isbn&gt;
  &lt;isbn&gt;8467426373&lt;/isbn&gt;
  &lt;isbn&gt;0441007465&lt;/isbn&gt;
  &lt;isbn&gt;057503470X&lt;/isbn&gt;
  &lt;isbn&gt;8585887907&lt;/isbn&gt;
  &lt;isbn&gt;3893111379&lt;/isbn&gt;
  &lt;isbn&gt;911300347X&lt;/isbn&gt;
  &lt;isbn&gt;8422672596&lt;/isbn&gt;
  &lt;isbn&gt;9118721826&lt;/isbn&gt;
  &lt;isbn&gt;3453056655&lt;/isbn&gt;
  &lt;isbn&gt;3807703098&lt;/isbn&gt;
  &lt;isbn&gt;8390021439&lt;/isbn&gt;
  &lt;isbn&gt;8203203329&lt;/isbn&gt;
  &lt;isbn&gt;8789586735&lt;/isbn&gt;
  &lt;isbn&gt;8485752414&lt;/isbn&gt;
  &lt;isbn&gt;9612310203&lt;/isbn&gt;
  &lt;isbn&gt;8445074059&lt;/isbn&gt;
  &lt;isbn&gt;8445076620&lt;/isbn&gt;
  &lt;isbn&gt;8974271419&lt;/isbn&gt;
  &lt;isbn&gt;3453403851&lt;/isbn&gt;
  &lt;isbn&gt;9510172049&lt;/isbn&gt;
  &lt;isbn&gt;8758804110&lt;/isbn&gt;
  &lt;isbn&gt;9510193062&lt;/isbn&gt;
  &lt;isbn&gt;2277223255&lt;/isbn&gt;
  &lt;isbn&gt;9637632050&lt;/isbn&gt;
  &lt;isbn&gt;9755760326&lt;/isbn&gt;
  &lt;isbn&gt;3898132595&lt;/isbn&gt;
  &lt;isbn&gt;8790136292&lt;/isbn&gt;
  &lt;isbn&gt;8804516445&lt;/isbn&gt;
  &lt;isbn&gt;8842910686&lt;/isbn&gt;
&lt;/rsp&gt;
</pre>
<p><a href="http://librarything.com">LibraryThing</a> has a similar <a href="http://www.librarything.com/wiki/index.php/LibraryThing_APIs">API</a> call which allows you to splice the ISBN into a URL like so <a href="http://www.librarything.com/api/thingISBN/0441569595">http://www.librarything.com/api/thingISBN/0441569595</a>, and get:</p>
<pre style="height: 200px;">
&lt;?xml version="1.0" encoding="utf-8"?&gt;
&lt;idlist&gt;
  &lt;isbn&gt;0441569595&lt;/isbn&gt;
  &lt;isbn&gt;0441012035&lt;/isbn&gt;
  &lt;isbn&gt;0006480411&lt;/isbn&gt;
  &lt;isbn&gt;0586066454&lt;/isbn&gt;
  &lt;isbn&gt;0441007465&lt;/isbn&gt;
  &lt;isbn&gt;0441000681&lt;/isbn&gt;
  &lt;isbn&gt;8585887907&lt;/isbn&gt;
  &lt;isbn&gt;0002252325&lt;/isbn&gt;
  &lt;isbn&gt;0441569560&lt;/isbn&gt;
  &lt;isbn&gt;3453056655&lt;/isbn&gt;
  &lt;isbn&gt;0441569579&lt;/isbn&gt;
  &lt;isbn&gt;0932096417&lt;/isbn&gt;
  &lt;isbn&gt;0441569587&lt;/isbn&gt;
  &lt;isbn&gt;057503470X&lt;/isbn&gt;
  &lt;isbn&gt;229030820X&lt;/isbn&gt;
  &lt;isbn&gt;8445070843&lt;/isbn&gt;
  &lt;isbn&gt;2277223255&lt;/isbn&gt;
  &lt;isbn&gt;3453313895&lt;/isbn&gt;
  &lt;isbn&gt;8804516445&lt;/isbn&gt;
  &lt;isbn&gt;9510193062&lt;/isbn&gt;
  &lt;isbn&gt;0007119585&lt;/isbn&gt;
  &lt;isbn&gt;8445075950&lt;/isbn&gt;
  &lt;isbn&gt;9119027818&lt;/isbn&gt;
  &lt;isbn&gt;9510172049&lt;/isbn&gt;
  &lt;isbn&gt;8842907464&lt;/isbn&gt;
  &lt;isbn&gt;1570420599&lt;/isbn&gt;
  &lt;isbn&gt;9637632050&lt;/isbn&gt;
  &lt;isbn&gt;9029042478&lt;/isbn&gt;
  &lt;isbn&gt;415010672X&lt;/isbn&gt;
  &lt;isbn&gt;9634970982&lt;/isbn&gt;
  &lt;isbn&gt;8085601273&lt;/isbn&gt;
  &lt;isbn&gt;0613922514&lt;/isbn&gt;
  &lt;isbn&gt;2707115622&lt;/isbn&gt;
  &lt;isbn&gt;8445074059&lt;/isbn&gt;
  &lt;isbn&gt;8842913529&lt;/isbn&gt;
  &lt;isbn&gt;1569564116&lt;/isbn&gt;
  &lt;isbn&gt;9118721826&lt;/isbn&gt;
  &lt;isbn&gt;8842910686&lt;/isbn&gt;
  &lt;isbn&gt;3898132595&lt;/isbn&gt;
  &lt;isbn&gt;1570421560&lt;/isbn&gt;
  &lt;isbn&gt;229000619X&lt;/isbn&gt;
  &lt;isbn&gt;3893111387&lt;/isbn&gt;
  &lt;isbn&gt;8071930482&lt;/isbn&gt;
  &lt;isbn&gt;2744139157&lt;/isbn&gt;
  &lt;isbn&gt;8445072897&lt;/isbn&gt;
  &lt;isbn&gt;8371500432&lt;/isbn&gt;
  &lt;isbn&gt;8576570491&lt;/isbn&gt;
  &lt;isbn&gt;8789586735&lt;/isbn&gt;
  &lt;isbn&gt;9639238023&lt;/isbn&gt;
  &lt;isbn&gt;3453074203&lt;/isbn&gt;
  &lt;isbn&gt;3893111379&lt;/isbn&gt;
  &lt;isbn&gt;0307969940&lt;/isbn&gt;
  &lt;isbn&gt;8203203329&lt;/isbn&gt;
  &lt;isbn&gt;8842906808&lt;/isbn&gt;
  &lt;isbn&gt;9752103677&lt;/isbn&gt;
  &lt;isbn&gt;0736638369&lt;/isbn&gt;
  &lt;isbn&gt;8324577750&lt;/isbn&gt;
  &lt;isbn&gt;8790136292&lt;/isbn&gt;
  &lt;isbn&gt;8778803438&lt;/isbn&gt;
  &lt;isbn&gt;807193318X&lt;/isbn&gt;
&lt;/idlist&gt;
</pre>
<p>I don't actually know the mechanics of ThingISBN and xISBN in detail, but it's my understanding that xISBN uses an algorithm to unify works, whereas LibraryThing relies on people to connect things up. </p>
<p>A newer player in this space is the <a href="http://openlibrary.org/dev/docs/restful_api#content">OpenLibrary API</a>. Instead of providing an ISBN -> ISBNs function, OpenLibrary make the editions for a given Work available using a URL like  <a href="http://openlibrary.org/works/OL27258W/editions.json?limit=50&amp;offset=0">http://openlibrary.org/works//works/OL27258W/editions.json?limit=50&amp;offset=0</a>. This requires you to know the OpenLibrary Work identifier (e.g. OL27258W). Fortunately you can look up their Work identifier using another REST call<br />
using the ISBN: <a href="http://openlibrary.org/api/books?bibkeys=ISBN:0441569595&amp;jscmd=details&amp;format=json">http://openlibrary.org/api/books?bibkeys=ISBN:0441569595&amp;jscmd=details&amp;format=json</a>. The OpenLibrary response includes a lot more information than the LibraryThing or xISBN results, which is way you are required to page through the results with the API, rather than getting all the results back at once:</p>
<pre language="javascript" style="height: 400px;">
{
  "size": 19, 
  "links": {
    "self": "/works/OL27258W/editions.json?limit=50&offset=0", 
    "work": "/works/OL27258W"
  }, 
  "entries": [
    {
      "number_of_pages": 322, 
      "subtitle": "roman", 
      "series": [
        "Cyberspace trilogien", 
        "Gibsons Cyberspace trilogi -- 1"
      ], 
      "latest_revision": 3, 
      "edition_name": "2. udg./1. opl.", 
      "source_records": [
        "marc:marc_university_of_toronto/uoft.marc:1618994437:773"
      ], 
      "title": "Neuromantiker", 
      "work_titles": [
        "Neuromancer."
      ], 
      "languages": [
        {
          "key": "/languages/dan"
        }
      ], 
      "publish_country": "dk ", 
      "by_statement": "William Gibson ; p\u00e5 dansk ved Arne Herl\u00f8v Petersen.", 
      "type": {
        "key": "/type/edition"
      }, 
      "revision": 3, 
      "publishers": [
        "Per Kof"
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2010-08-18T09:06:00.229423"
      }, 
      "key": "/books/OL17987798M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ], 
      "publish_places": [
        "Copenhagen"
      ], 
      "pagination": "322 p.", 
      "created": {
        "type": "/type/datetime", 
        "value": "2008-10-08T22:54:50.763681"
      }, 
      "notes": {
        "type": "/type/text", 
        "value": "Translation of: Neuromancer."
      }, 
      "identifiers": {
        "librarything": [
          "609"
        ]
      }, 
      "isbn_10": [
        "8790136292"
      ], 
      "publish_date": "1995", 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ]
    }, 
    {
      "identifiers": {
        "librarything": [
          "609"
        ], 
        "goodreads": [
          "14771"
        ]
      }, 
      "subject_place": [
        "Japan"
      ], 
      "lc_classifications": [
        "PR9199.3.G514 N4x 1986"
      ], 
      "latest_revision": 4, 
      "edition_name": "1st Phantasia Press ed.", 
      "genres": [
        "Fiction."
      ], 
      "source_records": [
        "marc:marc_records_scriblio_net/part20.dat:107059645:825"
      ], 
      "title": "Neuromancer", 
      "languages": [
        {
          "key": "/languages/eng"
        }
      ], 
      "subjects": [
        "Computer hackers -- Fiction", 
        "Business intelligence -- Fiction", 
        "Information superhighway -- Fiction", 
        "Nervous system -- Wounds and injuries -- Fiction", 
        "Conspiracies -- Fiction", 
        "Japan -- Fiction"
      ], 
      "publish_country": "miu", 
      "by_statement": "William Gibson.", 
      "type": {
        "key": "/type/edition"
      }, 
      "revision": 4, 
      "publishers": [
        "Phantasia Press"
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2010-07-31T08:19:43.878905"
      }, 
      "key": "/books/OL2154100M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ], 
      "publish_places": [
        "West Bloomfield, Mich"
      ], 
      "pagination": "vi, 231 p. ;", 
      "created": {
        "type": "/type/datetime", 
        "value": "2008-04-01T03:28:50.625462"
      }, 
      "lccn": [
        "88672297"
      ], 
      "number_of_pages": 231, 
      "isbn_10": [
        "0932096417"
      ], 
      "publish_date": "1986", 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ]
    }, 
    {
      "identifiers": {
        "librarything": [
          "609"
        ], 
        "goodreads": [
          "826097"
        ]
      }, 
      "latest_revision": 4, 
      "source_records": [
        "marc:talis_openlibrary_contribution/talis-openlibrary-contribution.mrc:1128979384:559"
      ], 
      "title": "Neuromancer", 
      "languages": [
        {
          "key": "/languages/eng"
        }
      ], 
      "publish_country": "xxk", 
      "by_statement": "William Gibson.", 
      "type": {
        "key": "/type/edition"
      }, 
      "revision": 4, 
      "publishers": [
        "Voyager"
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2010-08-19T09:28:46.010665"
      }, 
      "key": "/books/OL22822383M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ], 
      "publish_places": [
        "London"
      ], 
      "pagination": "317p. ;", 
      "created": {
        "type": "/type/datetime", 
        "value": "2009-01-04T10:04:32.718474"
      }, 
      "dewey_decimal_class": [
        "813.54"
      ], 
      "notes": {
        "type": "/type/text", 
        "value": "Originally published: [London]: Gollancz; 1984."
      }, 
      "number_of_pages": 317, 
      "isbn_10": [
        "0006480411"
      ], 
      "publish_date": "1995", 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ]
    }, 
    {
      "number_of_pages": 316, 
      "latest_revision": 4, 
      "edition_name": "1a ed. en bolsillo.", 
      "source_records": [
        "marc:SanFranPL10/SanFranPL10.out:61656066:1111"
      ], 
      "title": "Neuromante", 
      "work_titles": [
        "Neuromancer."
      ], 
      "languages": [
        {
          "key": "/languages/spa"
        }
      ], 
      "subjects": [
        "Ciencia-ficci\u00f3n"
      ], 
      "publish_country": "sp ", 
      "by_statement": "William Gibson ; [traducci\u00f3n de Jos\u00e9 Arconada Rodr\u00edguez y Javier Ferreira Ramos].", 
      "oclc_numbers": [
        "50083763"
      ], 
      "type": {
        "key": "/type/edition"
      }, 
      "revision": 4, 
      "publishers": [
        "Minotauro"
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2010-08-19T10:44:18.483562"
      }, 
      "key": "/books/OL23054075M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ], 
      "publish_places": [
        "Barcelona"
      ], 
      "pagination": "316 p. ;", 
      "created": {
        "type": "/type/datetime", 
        "value": "2009-02-18T07:02:41.481991"
      }, 
      "notes": {
        "type": "/type/text", 
        "value": "Translation of: Neuromancer.\n\nPremio Hugo.\n\nPremio Nebula.\n\nPremio Philip K. Dick."
      }, 
      "identifiers": {
        "librarything": [
          "609"
        ]
      }, 
      "isbn_10": [
        "8445072897"
      ], 
      "publish_date": "1997", 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ]
    }, 
    {
      "identifiers": {
        "librarything": [
          "609"
        ], 
        "goodreads": [
          "1163291"
        ]
      }, 
      "latest_revision": 4, 
      "source_records": [
        "marc:talis_openlibrary_contribution/talis-openlibrary-contribution.mrc:1449506617:614"
      ], 
      "title": "Neuromancer", 
      "languages": [
        {
          "key": "/languages/eng"
        }
      ], 
      "publish_country": "enk", 
      "by_statement": "William Gibson.", 
      "type": {
        "key": "/type/edition"
      }, 
      "revision": 4, 
      "publishers": [
        "HarperCollins"
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2010-08-19T09:38:30.187012"
      }, 
      "key": "/books/OL22849249M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ], 
      "publish_places": [
        "London"
      ], 
      "pagination": "277p.", 
      "created": {
        "type": "/type/datetime", 
        "value": "2009-01-07T20:05:13.391858"
      }, 
      "dewey_decimal_class": [
        "813.54"
      ], 
      "notes": {
        "type": "/type/text", 
        "value": "Originally published in Great Britain by Gollancz, 1984."
      }, 
      "number_of_pages": 277, 
      "isbn_10": [
        "0002252325"
      ], 
      "publish_date": "1994", 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ]
    }, 
    {
      "publishers": [
        "Harper Collins"
      ], 
      "pagination": "317p. ;", 
      "source_records": [
        "marc:talis_openlibrary_contribution/talis-openlibrary-contribution.mrc:2979159053:556"
      ], 
      "title": "Neuromancer", 
      "dewey_decimal_class": [
        "813/.54"
      ], 
      "notes": {
        "type": "/type/text", 
        "value": "Originally published, London , Gollancz, 1984."
      }, 
      "number_of_pages": 317, 
      "created": {
        "type": "/type/datetime", 
        "value": "2008-10-25T02:27:53.587823"
      }, 
      "languages": [
        {
          "key": "/languages/eng"
        }
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2010-10-15T15:26:45.512262"
      }, 
      "latest_revision": 3, 
      "publish_country": "xxk", 
      "key": "/books/OL19969875M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ], 
      "publish_date": "1993", 
      "publish_places": [
        "London"
      ], 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ], 
      "type": {
        "key": "/type/edition"
      }, 
      "by_statement": "William Gibson.", 
      "revision": 3
    }, 
    {
      "identifiers": {
        "librarything": [
          "609"
        ], 
        "goodreads": [
          "2292560"
        ]
      }, 
      "subtitle": "Science Fiction Roman", 
      "series": [
        "Heyne science fiction & fantasy -- Bd. 06/4400"
      ], 
      "latest_revision": 4, 
      "edition_name": "3. Aufl.", 
      "source_records": [
        "marc:marc_university_of_toronto/uoft.marc:716896905:827"
      ], 
      "title": "Neuromancer", 
      "work_titles": [
        "Neuromancer."
      ], 
      "languages": [
        {
          "key": "/languages/ger"
        }
      ], 
      "publish_country": "gw ", 
      "by_statement": "William Gibson ; Deutsche \u00dcbersetzund von Reinhard Heinz.", 
      "type": {
        "key": "/type/edition"
      }, 
      "revision": 4, 
      "publishers": [
        "W. Heyne"
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2010-08-18T03:53:57.235299"
      }, 
      "key": "/books/OL16064340M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ], 
      "publish_places": [
        "M\u00fcnchen"
      ], 
      "pagination": "363 p. :", 
      "created": {
        "type": "/type/datetime", 
        "value": "2008-09-22T02:36:53.194997"
      }, 
      "notes": {
        "type": "/type/text", 
        "value": "\"Deutsche Erstver\u00f6ffentlichung.\"\n\nTranslation of: Neuromancer."
      }, 
      "number_of_pages": 363, 
      "isbn_10": [
        "3453313895"
      ], 
      "publish_date": "1989", 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ]
    }, 
    {
      "number_of_pages": 371, 
      "subject_place": [
        "Japan"
      ], 
      "covers": [
        284192
      ], 
      "lc_classifications": [
        "PS3557.I2264 N48 2004"
      ], 
      "latest_revision": 6, 
      "edition_name": "20th anniversary ed.", 
      "genres": [
        "Fiction."
      ], 
      "source_records": [
        "marc:marc_records_scriblio_net/part15.dat:26112823:924", 
        "marc:marc_loc_updates/v35.i20.records.utf8:16403653:1145"
      ], 
      "title": "Neuromancer", 
      "languages": [
        {
          "key": "/languages/eng"
        }
      ], 
      "subjects": [
        "Computer hackers -- Fiction", 
        "Business intelligence -- Fiction", 
        "Information superhighway -- Fiction", 
        "Nervous system -- Wounds and injuries -- Fiction", 
        "Conspiracies -- Fiction", 
        "Japan -- Fiction"
      ], 
      "publish_country": "nyu", 
      "by_statement": "William Gibson ; with a new introduction by the author ; with an afterword by Jack Womack.", 
      "type": {
        "key": "/type/edition"
      }, 
      "revision": 6, 
      "publishers": [
        "Ace Books"
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2010-07-31T14:51:42.931650"
      }, 
      "key": "/books/OL3305354M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ], 
      "publish_places": [
        "New York"
      ], 
      "pagination": "xi, 371 p. ;", 
      "created": {
        "type": "/type/datetime", 
        "value": "2008-04-01T03:28:50.625462"
      }, 
      "dewey_decimal_class": [
        "813/.54"
      ], 
      "identifiers": {
        "goodreads": [
          "14770"
        ], 
        "librarything": [
          "609"
        ]
      }, 
      "lccn": [
        "2004048718"
      ], 
      "isbn_10": [
        "0441012035"
      ], 
      "publish_date": "2004", 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ]
    }, 
    {
      "identifiers": {
        "librarything": [
          "609"
        ], 
        "goodreads": [
          "888628"
        ]
      }, 
      "subject_place": [
        "Japan"
      ], 
      "covers": [
        283860
      ], 
      "lc_classifications": [
        "PS3557.I2264 N48 2000"
      ], 
      "latest_revision": 5, 
      "edition_name": "Ace trade ed.", 
      "genres": [
        "Fiction."
      ], 
      "source_records": [
        "marc:marc_records_scriblio_net/part13.dat:153635745:885"
      ], 
      "title": "Neuromancer", 
      "languages": [
        {
          "key": "/languages/eng"
        }
      ], 
      "subjects": [
        "Computer hackers -- Fiction", 
        "Business intelligence -- Fiction", 
        "Information superhighway -- Fiction", 
        "Nervous system -- Wounds and injuries -- Fiction", 
        "Conspiracies -- Fiction", 
        "Japan -- Fiction"
      ], 
      "publish_country": "nyu", 
      "series": [
        "Ace science fiction"
      ], 
      "by_statement": "William Gibson ; with an afterword by Jack Womack.", 
      "type": {
        "key": "/type/edition"
      }, 
      "revision": 5, 
      "publishers": [
        "Ace Books"
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2010-08-03T20:25:35.114363"
      }, 
      "key": "/books/OL3963678M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ], 
      "publish_places": [
        "New York"
      ], 
      "pagination": "276 p. ;", 
      "created": {
        "type": "/type/datetime", 
        "value": "2008-04-01T03:28:50.625462"
      }, 
      "dewey_decimal_class": [
        "813/.54"
      ], 
      "number_of_pages": 276, 
      "lccn": [
        "2001268016"
      ], 
      "isbn_10": [
        "0441007465"
      ], 
      "publish_date": "2000", 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ]
    }, 
    {
      "identifiers": {
        "librarything": [
          "609"
        ], 
        "goodreads": [
          "122395"
        ]
      }, 
      "latest_revision": 4, 
      "source_records": [
        "marc:marc_university_of_toronto/uoft.marc:219836701:673"
      ], 
      "title": "Neuromancien", 
      "work_titles": [
        "Neuromancer."
      ], 
      "languages": [
        {
          "key": "/languages/fre"
        }
      ], 
      "publish_country": "fr ", 
      "by_statement": "William Gibson ; traduit de l'am\u00e9ricain par Jean Bonnefoy.", 
      "type": {
        "key": "/type/edition"
      }, 
      "revision": 4, 
      "publishers": [
        "\u00c9ditions J'ai lu"
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2010-08-18T21:33:39.583788"
      }, 
      "key": "/books/OL21395048M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ], 
      "publish_places": [
        "Paris"
      ], 
      "pagination": "318 p.", 
      "created": {
        "type": "/type/datetime", 
        "value": "2008-11-02T11:15:35.318748"
      }, 
      "notes": {
        "type": "/type/text", 
        "value": "Translation of: Neuromancer."
      }, 
      "number_of_pages": 318, 
      "isbn_10": [
        "2277223255"
      ], 
      "publish_date": "1988", 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ]
    }, 
    {
      "subtitle": "en sp\u00e6ndingsroman", 
      "latest_revision": 3, 
      "contributions": [
        "Mortensen, Hans Palle"
      ], 
      "source_records": [
        "marc:marc_university_of_toronto/uoft.marc:848159064:705"
      ], 
      "title": "Neuromantiker", 
      "work_titles": [
        "Neuromancer."
      ], 
      "languages": [
        {
          "key": "/languages/dan"
        }
      ], 
      "publish_country": "de ", 
      "by_statement": "William Gibson ; p\u00e5 dansk ved Hans Palle Mortensen.", 
      "type": {
        "key": "/type/edition"
      }, 
      "revision": 3, 
      "publishers": [
        "Vega"
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2010-10-15T15:26:45.512262"
      }, 
      "key": "/books/OL16541408M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ], 
      "publish_places": [
        "[K\u00f8obenhavn]"
      ], 
      "pagination": "329 p.", 
      "created": {
        "type": "/type/datetime", 
        "value": "2008-09-24T15:45:30.569311"
      }, 
      "notes": {
        "type": "/type/text", 
        "value": "Translation of: Neuromancer."
      }, 
      "number_of_pages": 329, 
      "isbn_10": [
        "8758804110"
      ], 
      "publish_date": "1989", 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ]
    }, 
    {
      "identifiers": {
        "librarything": [
          "609"
        ], 
        "goodreads": [
          "1163292"
        ]
      }, 
      "lc_classifications": [
        "PS3513.I2824"
      ], 
      "latest_revision": 4, 
      "source_records": [
        "marc:marc_university_of_toronto/uoft.marc:2715222992:644"
      ], 
      "title": "Neuromancer", 
      "languages": [
        {
          "key": "/languages/eng"
        }
      ], 
      "publish_country": "enk", 
      "by_statement": "by William Gibson.", 
      "type": {
        "key": "/type/edition"
      }, 
      "revision": 4, 
      "publishers": [
        "Gollancz"
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2010-08-18T12:15:40.027146"
      }, 
      "key": "/books/OL19160947M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ], 
      "publish_places": [
        "London"
      ], 
      "pagination": "251 p. ;", 
      "created": {
        "type": "/type/datetime", 
        "value": "2008-10-21T06:38:01.937259"
      }, 
      "dewey_decimal_class": [
        "823/.914"
      ], 
      "number_of_pages": 251, 
      "isbn_10": [
        "057503470X"
      ], 
      "publish_date": "1984", 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ]
    }, 
    {
      "number_of_pages": 273, 
      "latest_revision": 6, 
      "contributions": [
        "Cuijpers, Peter"
      ], 
      "edition_name": "1. druk.", 
      "source_records": [
        "marc:marc_university_of_toronto/uoft.marc:848175223:692"
      ], 
      "title": "Zenumagi\u00ebr", 
      "work_titles": [
        "Neuromancer."
      ], 
      "languages": [
        {
          "key": "/languages/dut"
        }
      ], 
      "publish_country": "ne ", 
      "by_statement": "William Gibson ; vertaling Peter Cuijpers.", 
      "oclc_numbers": [
        "64599048"
      ], 
      "type": {
        "key": "/type/edition"
      }, 
      "revision": 6, 
      "publishers": [
        "Meulenhoff"
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2011-04-28T07:26:35.438655"
      }, 
      "key": "/books/OL16541422M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ], 
      "publish_places": [
        "Amsterdam"
      ], 
      "pagination": "273 p.", 
      "created": {
        "type": "/type/datetime", 
        "value": "2008-09-24T15:45:41.892954"
      }, 
      "notes": {
        "type": "/type/text", 
        "value": "Translation of: Neuromancer."
      }, 
      "identifiers": {
        "librarything": [
          "609"
        ]
      }, 
      "isbn_10": [
        "9029042478"
      ], 
      "publish_date": "1989", 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ]
    }, 
    {
      "number_of_pages": 295, 
      "latest_revision": 6, 
      "contributions": [
        "Eggen, Torgrim, 1958-"
      ], 
      "source_records": [
        "marc:marc_university_of_toronto/uoft.marc:4064625723:790"
      ], 
      "title": "Nevromantiker", 
      "work_titles": [
        "Neuromancer."
      ], 
      "languages": [
        {
          "key": "/languages/nor"
        }
      ], 
      "publish_country": "no ", 
      "by_statement": "William Gibson ; oversatt av og med etterord av Torgrim Eggen.", 
      "oclc_numbers": [
        "224937105"
      ], 
      "type": {
        "key": "/type/edition"
      }, 
      "revision": 6, 
      "publishers": [
        "Aschehoug"
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2011-04-25T21:45:39.581918"
      }, 
      "key": "/books/OL19726291M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ], 
      "publish_places": [
        "Oslo"
      ], 
      "pagination": "295 p.", 
      "created": {
        "type": "/type/datetime", 
        "value": "2008-10-23T17:52:44.936450"
      }, 
      "notes": {
        "type": "/type/text", 
        "value": "Translation of: Neuromancer."
      }, 
      "identifiers": {
        "librarything": [
          "609"
        ]
      }, 
      "isbn_10": [
        "8203203329"
      ], 
      "publish_date": "1999", 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ]
    }, 
    {
      "publishers": [
        "Editrice Nord"
      ], 
      "pagination": "iii, 260 p.", 
      "source_records": [
        "marc:marc_university_of_toronto/uoft.marc:1419376120:645"
      ], 
      "title": "Neuromante", 
      "work_titles": [
        "Neuromancer."
      ], 
      "series": [
        "Cosmo -- 80"
      ], 
      "notes": {
        "type": "/type/text", 
        "value": "Translation of: Neuromancer."
      }, 
      "number_of_pages": 260, 
      "created": {
        "type": "/type/datetime", 
        "value": "2008-09-28T17:38:21.398006"
      }, 
      "languages": [
        {
          "key": "/languages/ita"
        }
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2010-10-15T15:26:45.512262"
      }, 
      "latest_revision": 3, 
      "publish_country": "it ", 
      "key": "/books/OL17407456M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ], 
      "publish_date": "1986", 
      "publish_places": [
        "Milano"
      ], 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ], 
      "type": {
        "key": "/type/edition"
      }, 
      "by_statement": "William Gibson.", 
      "revision": 3
    }, 
    {
      "number_of_pages": 271, 
      "subject_place": [
        "Japan"
      ], 
      "covers": [
        284574
      ], 
      "lc_classifications": [
        "PS3557.I2264 N48 1984"
      ], 
      "latest_revision": 11, 
      "ocaid": "neuromancer00gibs", 
      "genres": [
        "Fiction."
      ], 
      "source_records": [
        "marc:marc_records_scriblio_net/part22.dat:84028207:784", 
        "marc:CollingswoodLibraryMarcDump10-27-2008/Collingswood.out:7879172:1418", 
        "marc:marc_cca/b10621386.out:20298617:552", 
        "ia:neuromancer00gibs"
      ], 
      "title": "Neuromancer", 
      "languages": [
        {
          "key": "/languages/eng"
        }
      ], 
      "subjects": [
        "Computer hackers -- Fiction", 
        "Business intelligence -- Fiction", 
        "Information superhighway -- Fiction", 
        "Nervous system -- Wounds and injuries -- Fiction", 
        "Conspiracies -- Fiction", 
        "Japan -- Fiction"
      ], 
      "publish_country": "nyu", 
      "by_statement": "William Gibson.", 
      "type": {
        "key": "/type/edition"
      }, 
      "revision": 11, 
      "publishers": [
        "Ace Books"
      ], 
      "ia_box_id": [
        "IA111402"
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2011-08-12T04:31:24.064755"
      }, 
      "key": "/books/OL1627167M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ], 
      "publish_places": [
        "New York"
      ], 
      "pagination": "271 p. ;", 
      "created": {
        "type": "/type/datetime", 
        "value": "2008-04-01T03:28:50.625462"
      }, 
      "dewey_decimal_class": [
        "813/.54"
      ], 
      "identifiers": {
        "librarything": [
          "609"
        ], 
        "goodreads": [
          "22328"
        ]
      }, 
      "lccn": [
        "91174394"
      ], 
      "isbn_10": [
        "0441569595"
      ], 
      "publish_date": "1984", 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ]
    }, 
    {
      "identifiers": {
        "librarything": [
          "609"
        ], 
        "goodreads": [
          "313982"
        ]
      }, 
      "subject_place": [
        "Japan"
      ], 
      "covers": [
        283491
      ], 
      "lc_classifications": [
        "PS3557.I2264 N48 1994"
      ], 
      "latest_revision": 5, 
      "edition_name": "1st Ace hardcover ed.", 
      "genres": [
        "Fiction."
      ], 
      "source_records": [
        "marc:marc_records_scriblio_net/part24.dat:178109658:845"
      ], 
      "title": "Neuromancer", 
      "languages": [
        {
          "key": "/languages/eng"
        }
      ], 
      "subjects": [
        "Computer hackers -- Fiction", 
        "Business intelligence -- Fiction", 
        "Information superhighway -- Fiction", 
        "Nervous system -- Wounds and injuries -- Fiction", 
        "Conspiracies -- Fiction", 
        "Japan -- Fiction"
      ], 
      "publish_country": "nyu", 
      "by_statement": "William Gibson.", 
      "type": {
        "key": "/type/edition"
      }, 
      "revision": 5, 
      "publishers": [
        "Ace Books"
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2010-07-31T01:58:09.386680"
      }, 
      "key": "/books/OL1234381M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ], 
      "publish_places": [
        "New York"
      ], 
      "pagination": "278 p. ;", 
      "created": {
        "type": "/type/datetime", 
        "value": "2008-04-01T03:28:50.625462"
      }, 
      "dewey_decimal_class": [
        "813/.54"
      ], 
      "number_of_pages": 278, 
      "lccn": [
        "94237181"
      ], 
      "isbn_10": [
        "0441000681"
      ], 
      "publish_date": "1994", 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ]
    }, 
    {
      "identifiers": {
        "librarything": [
          "609"
        ], 
        "goodreads": [
          "122395"
        ]
      }, 
      "latest_revision": 4, 
      "source_records": [
        "marc:talis_openlibrary_contribution/talis-openlibrary-contribution.mrc:718603618:565"
      ], 
      "title": "Neuromancien", 
      "work_titles": [
        "Neuromancer."
      ], 
      "languages": [
        {
          "key": "/languages/fre"
        }
      ], 
      "publish_country": "fr ", 
      "by_statement": "traduit de l'ame\u0301ricain par Jean Bonnefoy.", 
      "type": {
        "key": "/type/edition"
      }, 
      "revision": 4, 
      "publishers": [
        "J'ai Lu"
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2010-08-18T23:31:09.118145"
      }, 
      "key": "/books/OL21795410M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ], 
      "publish_places": [
        "[Paris]"
      ], 
      "pagination": "319p.", 
      "created": {
        "type": "/type/datetime", 
        "value": "2008-11-04T00:30:01.234536"
      }, 
      "notes": {
        "type": "/type/text", 
        "value": "Translation of: Neuromancer."
      }, 
      "number_of_pages": 319, 
      "isbn_10": [
        "2277223255"
      ], 
      "publish_date": "1985", 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ]
    }, 
    {
      "publishers": [
        "Voyager"
      ], 
      "pagination": "317 p.", 
      "identifiers": {
        "librarything": [
          "609"
        ], 
        "goodreads": [
          "953070"
        ]
      }, 
      "revision": 4, 
      "source_records": [
        "marc:marc_university_of_toronto/uoft.marc:3986224271:616"
      ], 
      "title": "Neuromancer", 
      "isbn_10": [
        "0586066454"
      ], 
      "number_of_pages": 317, 
      "created": {
        "type": "/type/datetime", 
        "value": "2008-10-30T08:07:12.492696"
      }, 
      "languages": [
        {
          "key": "/languages/eng"
        }
      ], 
      "last_modified": {
        "type": "/type/datetime", 
        "value": "2010-08-18T17:29:49.077199"
      }, 
      "latest_revision": 4, 
      "edition_name": "Pbk. ed.", 
      "key": "/books/OL20872554M", 
      "authors": [
        {
          "key": "/authors/OL26283A"
        }
      ],
      "publish_date": "2000", 
      "publish_places": [
        "London"
      ], 
      "works": [
        {
          "key": "/works/OL27258W"
        }
      ], 
      "type": {
        "key": "/type/edition"
      }, 
      "by_statement": "William Gibson.", 
      "publish_country": "enk"
    }
  ]
}
</pre>
<p><img src="https://chart.googleapis.com/chart?chs=300x200&cht=v&chd=t:86.7469879518,72.2891566265,19.2771084337,49,16,15,15&chco=77FF77,7777FF,FF7777&chdl=xISBN|ThingISBN|OpenLibrary&chtt=Neuromancer (0441569595)" style="float: left; margin-right: 10px"/>Because of some work I've been doing helping out at <a href="http://gluejar.com">Gluejar</a> I became curious about the coverage of these three FRBR workset APIs. What sort of overlap is there between them? I wrote a little script <a href="https://github.com/edsu/worksvenn/blob/master/worksvenn.py">worksvenn.py</a> that takes one or more ISBNs as input, looks them up in the OpenLibrary, LibraryThing and OCLC APIs, and then outputs the resulting data with a Venn diagram using the <a href="http://code.google.com/apis/chart/image/docs/gallery/venn_charts.html">Google Chart API</a>.</p>
<p>It's interesting to see that each service has unique results. You can see these when you run <code>worksvenn.py</code> on the command line:</p>
<pre>
Workset Results:

oclc: 7542818732,2707115622,7542824139,9029042478,8085601273,0441012035,
0441569579,229000619X,3893111387,2744139157,9607002504,8071930482,
9637632050,8585887907,8485752414,8758804110,8445076620,9118721826,
8203203329,0441569587,8804516445,8422672596,8789586735,0932096417,
3893111379,1570420599,8445072897,5792101205,9755760326,569700124X,
9510172049,0441007465,0736638369,9510193062,8390021439,911300347X,
8445075950,0002252325,0441569595,0441000681,5170198892,3807703098,
0007119585,415010672X,807193318X,3453056655,8974271419,8842910686,
9029050748,3898132595,3453313895,057503470X,1616577843,0307969940,
8385784012,2277223255,0006480411,9029049367,0586066454,1570421560,
8371500432,229030820X,8842907464,0441569560,9119027818,8445070843,
8467426373,9612310203,8790136292,8982738851,3453403851,8445074059

librarything: 0441569595,2707115622,0441000681,9634970982,9118721826,
9029042478,8085601273,3453056655,0006480411,8842906808,0441569579,
229000619X,415010672X,3893111387,0441012035,9639238023,3453074203,
9510193062,9637632050,8585887907,8842910686,0441007465,3898132595,
8203203329,1569564116,8371500432,3453313895,0736638369,057503470X,
8789586735,0932096417,9752103677,8445075950,8778803438,2277223255,
8576570491,8804516445,0613922514,0586066454,1570421560,3893111379,
229030820X,807193318X,8071930482,8842913529,0441569560,9119027818,
8445070843,0007119585,9510172049,2744139157,8324577750,8790136292,
0307969940,0441569587,8842907464,1570420599,8445072897,8445074059,
0002252325

openlibrary: 8758804110,0441569595,8203203329,3453313895,057503470X,
0932096417,9029042478,2277223255,0441000681,0006480411,0441012035,
0586066454,0002252325,8445072897,0441007465,8790136292

Differences:

oclc \ librarything: 7542818732,7542824139,5170198892,569700124X,
8974271419,9607002504,8485752414,9029050748,8758804110,8445076620,
8422672596,9612310203,1616577843,8385784012,9029049367,3453403851,
5792101205,3807703098,9755760326,8467426373,8982738851,8390021439,
911300347X

oclc \ openlibrary: 7542818732,2707115622,9118721826,5170198892,
0007119585,8085601273,8445070843,3453056655,0441569579,229000619X,
415010672X,3893111387,2744139157,8467426373,8974271419,9607002504,
8071930482,9637632050,8585887907,8485752414,8371500432,9029050748,
3898132595,8445076620,7542824139,0441569587,8982738851,8804516445,
8422672596,8789586735,9612310203,1616577843,0307969940,8385784012,
8842907464,9029049367,8842910686,1570421560,3893111379,229030820X,
807193318X,911300347X,0441569560,5792101205,9119027818,3807703098,
9755760326,569700124X,9510172049,8445074059,0736638369,9510193062,
8390021439,1570420599,8445075950,3453403851

librarything \ oclc:  8842906808,9634970982,8842913529,9639238023,
9752103677,1569564116,8778803438,8576570491,8324577750,0613922514,
3453074203

librarything \ openlibrary:  2707115622,9634970982,9118721826,
8085601273,3453056655,8842906808,0441569579,229000619X,415010672X,
3893111387,2744139157,9639238023,9510193062,9637632050,807193318X,
8585887907,8842910686,3898132595,8324577750,3893111379,8804516445,
1570420599,8789586735,9752103677,8778803438,8576570491,0613922514,
1570421560,8371500432,229030820X,3453074203,8071930482,8842913529,
0441569560,9119027818,8445070843,0007119585,9510172049,1569564116,
0736638369,0307969940,0441569587,8842907464,8445075950,8445074059

openlibrary \ oclc:  

openlibrary \ librarything:  8758804110
</pre>
<p>This suggests that the workset data in these services actually reinforce each other, and a lot could be gained by sharing. For comparison here are the diagrams for a few more books:</p>
<div style="text-align: center">
<img src="https://chart.googleapis.com/chart?chs=275x200&cht=v&chd=t:72.2044728435,54.6325878594,30.6709265176,109,62,57,48&chco=77FF77,7777FF,FF7777&chdl=xISBN|ThingISBN|OpenLibrary&chts=000000,10&chtt=Ulysses (0824043758)" style=""/><img src="https://chart.googleapis.com/chart?chs=275x200&cht=v&chd=t:48.1132075472,74.5283018868,45.2830188679,27,19,36,10&chco=77FF77,7777FF,FF7777&chdl=xISBN|ThingISBN|OpenLibrary&chts=000000,10&chtt=Handmaid's Tale (1853811742)" /><br />
<img src="https://chart.googleapis.com/chart?chs=275x200&cht=v&chd=t:70.0,87.5,22.5,23,8,9,8&chco=77FF77,7777FF,FF7777&chdl=xISBN|ThingISBN|OpenLibrary&chts=000000,10&chtt=Gravity's Rainbow (0140106618)" style=""/><img src="https://chart.googleapis.com/chart?chs=275x200&cht=v&chd=t:10.1694915254,96.6101694915,16.9491525424,5,3,9,3&chco=77FF77,7777FF,FF7777&chdl=xISBN|ThingISBN|OpenLibrary&chts=000000,10&chtt=White Teeth (0375501851)" />
</div>
<p><img src="https://chart.googleapis.com/chart?chs=300x200&cht=v&chd=t:68.2382133995,70.306038048,16.8734491315,479,158,176,143&chco=77FF77,7777FF,FF7777&chdl=xISBN|ThingISBN|OpenLibrary" style="float: right"/> As I mentioned earlier, you can pass <code>worksvenn.py</code> a list of ISBNs and it will pool them all together. At Gluejar we have a list of 53 books that are examples of potential books for ungluing. so I ran these through and came up with this diagram.</p>
<p>Although looking on a piecemeal basis can be interesting, it would be fun to see a Venn diagram given a larger pool of seed ISBNs. Perhaps <code>worksvenn.py</code> will give you some ideas. If it does please let me know!</p>
