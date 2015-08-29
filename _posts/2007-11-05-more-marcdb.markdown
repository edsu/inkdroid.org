---
layout: post
status: publish
published: true
title: more marcdb
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 173
wordpress_url: http://www.inkdroid.org/journal/2007/11/05/more-marcdb/
date: '2007-11-05 10:13:44 +0000'
date_gmt: '2007-11-05 17:13:44 +0000'
tags:
- marc metadata postgres lcsh
comments: []
---
<p>This morning Clay and I were chatting about <a href="http://en.wikipedia.org/wiki/Library_of_Congress_Subject_Headings">Library of Congress Subject Heading</a>s and <a href="http://www.w3.org/2004/02/skos/">SKOS</a> a bit. At one point we found ourselves musing about how much reuse there is of topical subdivisions in topical headings in the LC  authority file. You know how it is. Anyhow, I remembered that I'd used <a href="http://www.inkdroid.org/journal/2007/10/01/marcdb/">marcdb</a> to import all of Simon Spiro's <a href="http://www.ibiblio.org/fred2.0/authorities/">authority data</a>--so I fired up <a href="http://www.postgresql.org/docs/8.1/static/app-psql.html">psql</a> and wrote a query:</p>
<pre>
SELECT subfields.value AS subdivision, count(*) AS total
FROM subfields, data_fields
WHERE subfields.code = 'x'
  AND subfields.data_field_id = data_fields.id
  AND data_fields.tag = '150'
GROUP BY subfields.value
ORDER BY total DESC;
</pre>
<p>And a few seconds later...</p>
<pre>
 subdivision                          | total  
--------------------------------------+-------
 Law and legislation                  |  3342
 Religious aspects                    |  2500
 Buddhism, [Christianity, etc.]       |   898
 History                              |   847
 Equipment and supplies               |   571
 Taxation                             |   566
 Baptists, [Catholic Church, etc.]    |   476
 Diseases                             |   450
 Research                             |   422
 Campaigns                            |   378
 Awards                               |   342
 Finance                              |   284
 Study and teaching                   |   284
 Surgery                              |   275
 Employees                            |   269
 Spectra                              |   261
 Computer programs                    |   259
 Labor unions                         |   218
 Testing                              |   207
 Diagnosis                            |   194
 Isotopes                             |   190
 Complications                        |   183
 Physiological effect                 |   172
 Programming                          |   163
</pre>
<p>There's nothin' like the smell of strong set theory in the morning. Although something seems a bit fishy about <em>[Christianity, etc.]</em> and <em>[Catholic Church, etc.]</em>... If you want to try similar stuff and don't want to wait hours for marcdb to import all the data and you use postgres, here's the full database <a href="http://inkdroid.org/data/authorities.sql.bz2">dump</a> which you ought to be able to import:</p>
<pre>
  % createdb authorities
  % wget http://inkdroid.org/data/authorities.sql.bz2
  % bunzip2 authorities.sql.bz2
  % psql authorities &lt; authorities.sql
</pre>
