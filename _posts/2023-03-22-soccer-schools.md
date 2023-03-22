---
layout: post
title: Soccer Schools
tags:
- wikidata
- wikipedia
- maps
---

My son is interested in trying to play soccer at college and I wanted to get a
dataset of colleges and universities with their associated conference and
division, average SAT score, acceptance rate and annual cost. I suspect there's
an app for this already, but what better way to deal with the stress of
choosing how to get gouged by higher education than by turning this into a data
problem? Also we wanted to take a road trip into New England to take a look at
some schools, so we thought it would be useful to put them on a map (click for
the full interactive map).

<a href="https://edsu.github.io/soccer-schools/map/"><img class="img-responsive" src="/images/soccer-schools.png"></a>

I started by using [wikitable2csv] to download the tables for the following Wikipedia Pages:

- [List of NCAA Division I men's soccer programs](https://en.wikipedia.org/wiki/List_of_NCAA_Division_I_men%27s_soccer_programs)
- [List of NCAA Division II men's soccer programs](https://en.wikipedia.org/wiki/List_of_NCAA_Division_II_men%27s_soccer_programs)
- [List of NCAA Division III institutions](https://en.wikipedia.org/wiki/List_of_NCAA_Division_III_institutions)

I also downloaded the most recent [College School Card Data], and was hoping that they would join, but the school names didn't match up well (562/854). I experimented for a bit using Wikidata (in [OpenRefine] and [reconciler]) to first reconcile the datasets and then join using the WikidataID. But that seemed to yield some weird false positives that I didn't understand. It's quite possible there was a better way to do the reconciliation though. I had hoped that the [OPEID] in the College School Card Data would also be in Wikidata, but alas it wasn't.

So I ended up arriving at an acceptable solution that limits potential matches using the *state name*, and then finding the closest match using the [Levenshtein Distance]. This yielded 785/854 matches. I had to set a threshold of .10 (edit distance / total length) because I found that if the distance was higher false positives started to creep in. I'm looking at you *City College of New York* and *Devry College of New York*. I'll hand code the remaining 70 when I get a chance.

Actually, if you'd like to help out, I dropped the [Github data] in a [publicly editable Google Sheet]. The [Misses sheet] has the remaining 70 that need to be matched, and the [College Score Card sheet] has the full list of schools. If you find a match add the OPEID to the *Misses sheet* and I'll do the rest of merging the data into the main dataset. 

Once they are completely matched up I was thinking that a follow on project might be to try to get the OPEIDs added to Wikidata, and maybe adding the NCAA division and Conference information. That way the next time someone is doing this it'll be a bit easier? Also having the OPEID in Wikidata should make it easier to keep other information from the *College School Card Data* up to date?

[wikitable2csv]: https://wikitable2csv.ggor.de/ 
[College School Card Data]: https://collegescorecard.ed.gov/data/
[Levenshtein Distance]: https://en.wikipedia.org/wiki/Levenshtein_distance
[Github data]: https://github.com/edsu/soccer-schools/
[publicly editable Google Sheet]: https://docs.google.com/spreadsheets/d/1aKnl75Q-hcgddp2FUpmlIMBElNuLeiKalw_lbF-dM-0/edit#gid=1097742370
[Misses sheet]: https://docs.google.com/spreadsheets/d/1aKnl75Q-hcgddp2FUpmlIMBElNuLeiKalw_lbF-dM-0/edit#gid=1748470752
[College Score Card sheet]: https://docs.google.com/spreadsheets/d/1aKnl75Q-hcgddp2FUpmlIMBElNuLeiKalw_lbF-dM-0/edit#gid=1097742370
[reconciler]: https://github.com/jvfe/reconciler
[OpenRefine]: https://openrefine.org/
