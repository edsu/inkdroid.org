---
layout: post
status: publish
published: true
title: lcnaf unix hack
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 5046
wordpress_url: http://inkdroid.org/journal/?p=5046
date: '2012-10-04 20:02:10 +0000'
date_gmt: '2012-10-05 03:02:10 +0000'
tags:
- statistics
- unix
- lcnaf
- authority-control
comments:
- id: 85468
  author: dr0i
  author_email: christoph@hbz-nrw.de
  author_url: ''
  date: '2012-10-10 08:42:15 +0000'
  date_gmt: '2012-10-10 15:42:15 +0000'
  content: 'Inspired by your visualisation I did this with our 16 Mio library records:
    https://wiki1.hbz-nrw.de/display/SEM/2012/10/10/Issues-per-year+diagram'
---

<p>I was in a <a href="http://socialarchive.iath.virginia.edu/NAAC_meeting2_agenda.html">meeting</a> today listening to a presentation about the Library of Congress Name Authority File and I got it into my head to see if I could quickly graph record creation by year. Part of this might've been prompted by sitting next to Kevin Ford, who was multi-tasking by what looked like loading some MARC data into id.loc.gov. I imagine this isn't perfect, but I thought it was kind of fun hack that demonstrates what you can get away with on the command line with some open data:</p>
<pre lang="bash">
  curl http://id.loc.gov/static/data/authoritiesnames.nt.skos.gz \
    | zcat - \
    | perl -ne '/terms\/created> "(\d{4})-\d{2}-\d{2}/; print "$1\n" if $1;' \
    | sort \
    | uniq -c \
    | perl -ne 'chomp; @cols = split / +/; print "$cols[2]\t$cols[1]\n";' \
    > lcnaf-years.tsv
</pre>
<p>Which yields a tab delimited file where column 1 is the year and column 2 is the number of records created in that year. The key part is the perl one-liner on line 3 which looks for assertions like this in the ntriples rdf, and pulls out the year:</p>
<pre>
&lt;http://id.loc.gov/authorities/names/n90608287&gt; &lt;http://purl.org/dc/terms/created&gt; "1990-02-05T00:00:00"^^&lt;http://www.w3.org/2001/XMLSchema#dateTime&gt; .
</pre>
<p>The use of <code>sort</code> and <code>uniq -c</code> together is a handy trick my old boss Fred Lindberg taught me, for quickly generating aggregate counts from a stream of values. It works surprisingly well with quite large sets of values, because of all the work that has gone into making <code>sort</code> efficient.</p>
<p>WIth the tsv in hand I trimmed the pre-1980 values, since I think there are lots of records attributed to 1980 since that's when OPAC came online, and I wasn't sure what the dribs and drabs prior to 1980 represented. Then I dropped the data into ye olde chart maker (in this case GoogleDocs) and voilà:</p>
<p><img src="http://inkdroid.org/images/lcnaf-record-creation.png"/></p>
<p>It would be more interesting to see the results broken out by contributing NACO institution, but I don't think that data is in the various RDF representations. I don't even know if the records contributed by other NACO institutions are included in the LCNAF. I imagine a similar graph is available somewhere else, but it was neat that the availability of the LCNAF data meant I could get a rough answer to this passing question fairly quickly.</p>
<p>The numbers add up to ~7.8 million which seems within the realm of possibile correctness. But if you notice something profoundly wrong with this display please let me know!</p>
