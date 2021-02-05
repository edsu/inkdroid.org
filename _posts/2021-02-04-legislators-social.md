---
layout: post
title: Outgoing
created: 2021-02-05 00:38:00
tags:
- politics
- version control
---

<figure style="display: inline; float: left; width: 300px; margin-right: 20px; margin-top: 0px;">
  <a href="https://www.flickr.com/photos/tracy_olson/405540276/">
    <img class="img-responsive" src="/images/tree-rings.jpg">
  </a> <br>
  <figcaption>
  <a href="https://www.flickr.com/photos/tracy_olson/405540276/">Tree Rings</a> by <a href="https://www.flickr.com/photos/tracy_olson/">Tracy O</a> <br>
  <em style="font-size: 10pt;">This post is really about exploring historical datasets with version control.</em>
  </figcaption>
</figure>

[Mark Graham] posed a question to me earlier today asking what we know about
the Twitter accounts of the members of Congress, specifically whether they have
been removed after they left office. The hypothesis was that some members of
the House and Senate may decide to delete their account on leaving DC.

I was immediately reminded of the excellent [congress-legislators] project
which collects all kinds of information about House and Senate members
including their [social media accounts] into YAML files that are versioned in
a GitHub repository. GitHub is a great place to curate a dataset like this
because it allows anyone with a GitHub account to contribute to editing the
data, and to share utilities to automate checks and modifications.

Unfortunately the file that tracks social media accounts is only for current
members. Once they leave office they are removed from the file. The project
does track other historical information for legislators. But the social media
data isn't pulled in when this transition happens, or so it seems.

Luckily Git doesn't forget. Since the project is using a version control system
all of the previously known social media links are in the history of the
repository! So I wrote a small program that uses [gitpython] to walk the
*legislators-social-media.yaml* file backwards in time through each commit,
parse the YAML at that previous state, and merge that information into a union
of all the current and past legislator information. You can see the resulting
program and output in [us-legislators-social].

There's a little bit of wrinkle in that not everything in the version history
should be carried forward because errors were corrected and bugs were fixed.
Without digging into the diffs and analyzing them more it's hard to say whether
a commit was a bug fix or if it was simply adding new or deleting old
information. If the YAML doesn't parse at a particular state that's easy to
ignore.

It also looks like the maintainers split out account ids from account usernames
at one point. [Derek Willis] helpfully pointed out to me that Twitter don't
care about the capitalization of usernames in URLs, so these needed to be
normalized when merging the data. The same is true of Facebook, Instagram and
YouTube. I guarded against these cases but if you notice other problems let me
know.

With the resulting merged historical data it's not too hard to write a program
to read in the data, identify the politicians who left office after the 116th
Congress, and examine their Twitter accounts to see that they are live. It
turned out to be a little bit harder than I expected because it's not as easy
as you might think to check if a Twitter account is live or not.

Twitter's web servers return a HTTP 200 OK message even when responding to
requests for URLs of non-existent accounts. To complicate things further
the error message that displays indicating it is not an account only displays
when the page is rendered in a browser. So a simple web scraping job that looks
at the HTML is not sufficient.

And finally just because a Twitter username no longer seems to work, it's
possible that the user has changed it to a new screen_name. Fortunately the
unitedstates project also tracks the Twitter User ID (sometimes). If the user
account is still there you can use the Twitter API to look up their current
screen_name and see if it is different.

After putting [all this together] it's possible to generate a [simple table] of
legislators who left office at the end of the 116th Congress, and their Twitter
account information.

<div style="font-size: 10pt;">

| name                        | url                                 | url_ok <img style="width: 50px">| user_id             | new_url                            | 
| --------------------------- | ----------------------------------- | ------ | ------------------- | ---------------------------------- |
| Lamar Alexander             | https://twitter.com/senalexander    | True   | 76649729            |                                    |
| Michael B. Enzi             | https://twitter.com/senatorenzi     | True   | 291756142           |                                    |
| Pat Roberts                 | https://twitter.com/senpatroberts   | True   | 75364211            |                                    |
| Tom Udall                   | https://twitter.com/senatortomudall | True   | 60828944            |                                    |
| Justin Amash                | https://twitter.com/justinamash     | True   | 233842454           |                                    |
| Rob Bishop                  | https://twitter.com/reprobbishop    | True   | 148006729           |                                    |
| K. Michael Conaway          | https://twitter.com/conawaytx11     | True   | 295685416           |                                    |
| Susan A. Davis              | https://twitter.com/repsusandavis   | False  | 432771620           |                                    |
| Eliot L. Engel              | https://twitter.com/repeliotengel   | True   | 164007407           |                                    |
| Bill Flores                 | https://twitter.com/repbillflores   | False  | 237312687           |                                    |
| Cory Gardner                | https://twitter.com/sencorygardner  | True   | 235217558           |                                    |
| Peter T. King               | https://twitter.com/reppeteking     | True   | 18277655            |                                    |
| Steve King                  | https://twitter.com/stevekingia     | True   | 48117116            |                                    |
| Daniel Lipinski             | https://twitter.com/replipinski     | True   | 1009269193          |                                    |
| David Loebsack              | https://twitter.com/daveloebsack    | True   | 510516465           |                                    |
| Nita M. Lowey               | https://twitter.com/nitalowey       | True   | 221792092           |                                    |
| Kenny Marchant              | https://twitter.com/repkenmarchant  | True   | 23976316            |                                    |
| Pete Olson                  | https://twitter.com/reppeteolson    | True   | 20053279            |                                    |
| Martha Roby                 | https://twitter.com/repmartharoby   | False  | 224294785           | https://twitter.com/MarthaRobyAL   |
| David P. Roe                | https://twitter.com/drphilroe       | True   | 52503751            |                                    |
| F. James Sensenbrenner, Jr. | https://twitter.com/jimpressoffice  | False  | 851621377           |                                    |
| José E. Serrano             | https://twitter.com/repjoseserrano  | True   | 33563161            |                                    |
| John Shimkus                | https://twitter.com/repshimkus      | True   | 15600527            |                                    |
| Mac Thornberry              | https://twitter.com/mactxpress      | True   | 377534571           |                                    |
| Scott R. Tipton             | https://twitter.com/reptipton       | True   | 242873057           |                                    |
| Peter J. Visclosky          | https://twitter.com/repvisclosky    | True   | 193872188           |                                    |
| Greg Walden                 | https://twitter.com/repgregwalden   | True   | 32010840            |                                    |
| Rob Woodall                 | https://twitter.com/reprobwoodall   | True   | 2382685057          |                                    |
| Ted S. Yoho                 | https://twitter.com/reptedyoho      | True   | 1071900114          |                                    |
| Doug Collins                | https://twitter.com/repdougcollins  | True   | 1060487274          |                                    |
| Tulsi Gabbard               | https://twitter.com/tulsipress      | True   | 1064206014          |                                    |
| Susan W. Brooks             | https://twitter.com/susanwbrooks    | True   | 1074101017          |                                    |
| Joseph P. Kennedy III       | https://twitter.com/repjoekennedy   | False  | 1055907624          | https://twitter.com/joekennedy     |
| George Holding              | https://twitter.com/repholding      | True   | 1058460818          |                                    |
| Denny Heck                  | https://twitter.com/repdennyheck    | False  | 1068499286          | https://twitter.com/LtGovDennyHeck |
| Bradley Byrne               | https://twitter.com/repbyrne        | True   | 2253968388          |                                    |
| Ralph Lee Abraham           | https://twitter.com/repabraham      | True   | 2962891515          |                                    |
| Will Hurd                   | https://twitter.com/hurdonthehill   | True   | 2963445730          |                                    |
| David Perdue                | https://twitter.com/sendavidperdue  | True   | 2863210809          |                                    |
| Mark Walker                 | https://twitter.com/repmarkwalker   | True   | 2966205003          |                                    |
| Francis Rooney              | https://twitter.com/reprooney       | True   | 816111677917851649  |                                    |
| Paul Mitchell               | https://twitter.com/reppaulmitchell | True   | 811632636598910976  |                                    |
| Doug Jones                  | https://twitter.com/sendougjones    | True   | 941080085121175552  |                                    |
| TJ Cox                      | https://twitter.com/reptjcox        | True   | 1080875913926139910 |                                    |
| Gilbert Ray Cisneros, Jr.   | https://twitter.com/repgilcisneros  | True   | 1080986167003230208 |                                    |
| Harley Rouda                | https://twitter.com/repharley       | True   | 1075080722241736704 |                                    |
| Ross Spano                  | https://twitter.com/reprossspano    | True   | 1090328229548826627 |                                    |
| Debbie Mucarsel-Powell      | https://twitter.com/repdmp          | True   | 1080941062028447744 |                                    |
| Donna E. Shalala            | https://twitter.com/repshalala      | False  | 1060584809095925762 |                                    |
| Abby Finkenauer             | https://twitter.com/repfinkenauer   | True   | 1081256295469068288 |                                    |
| Steve Watkins               | https://twitter.com/rep_watkins     | False  | 1080307235350241280 |                                    |
| Xochitl Torres Small        | https://twitter.com/reptorressmall  | True   | 1080830346915209216 |                                    |
| Max Rose                    | https://twitter.com/repmaxrose      | True   | 1078692057940742144 |                                    |
| Anthony Brindisi            | https://twitter.com/repbrindisi     | True   | 1080978331535896576 |                                    |
| Kendra S. Horn              | https://twitter.com/repkendrahorn   | False  | 1083019402046513152 | https://twitter.com/KendraSHorn    |
| Joe Cunningham              | https://twitter.com/repcunningham   | True   | 1080198683713507335 |                                    |
| Ben McAdams                 | https://twitter.com/repbenmcadams   | False  | 196362083           | https://twitter.com/BenMcAdamsUT   |
| Denver Riggleman            | https://twitter.com/repriggleman    | True   | 1080504024695222273 |                                    |

</div>

In most cases where the account has been updated the individual simply changed
their Twitter username, sometimes remove "Rep" from it--like RepJoeKennedy to
JoeKennedy. As an aside I'm kind of surprised that Twitter username wasn't
taken to be honest. Maybe that's a perk of having a verified account or of
being a politician? But if you look closely you can see there were a few that
seemed to have deleted their account altogether:

<div style="font-size: 10pt;">

| name                        | url                                | <img style="width: 50px"> url_ok |  user_id |
| --------------------------- | ---------------------------------- | ------ | ------------------- |
| Susan A. Davis              | https://twitter.com/repsusandavis  | False  | 432771620           |
| Bill Flores                 | https://twitter.com/repbillflores  | False  | 237312687           |
| F. James Sensenbrenner, Jr. | https://twitter.com/jimpressoffice | False  | 851621377           |
| Donna E. Shalala            | https://twitter.com/repshalala     | False  | 1060584809095925762 |
| Steve Watkins               | https://twitter.com/rep_watkins    | False  | 1080307235350241280 |

</div>

There are two notable exceptions to this. The first is Vice President Kamala
Harris. My logic for determining if a person was leaving Congress was to see if
they served in a term ending on 2021-01-03, and weren't serving in a term
starting then. But Harris is different because her term as a Senator is listed
as ending on 2021-01-18. Her old account [\@senkamalaharris] is no longer
available, but her Twitter User ID is still active and is now attached to the
account at [\@VP]. The other of course is Joe Biden, who stopped being
a senator in order to become the President. His Twitter account remains the
same at [\@joebiden].

It's worth highlighting here how there seems to be no uniform approach to
handling this process. In one case \@senkamalaharris is temporarily blessed as
the VP, with a unified account history underneath. In the other there is
a separation between \@joebiden and \@POTUS. It seems like Twitter has some
work to do on managing identities, or maybe the Congress needs to prescribe
a set of procedures? Or maybe I'm missing part of the picture, and that just as
\@RepJoeKennedy somehow changed back to \@JoeKennedy there is some namespace
management going on behind the scenes?

If you are interested in other social media platforms like Facebook, Instagram
and YouTube the unitedstates project tracks information for those platforms
too. I merged that information into the *legislators.yaml* file I discussed
here if you want to try to check them. I think that one thing this experiment
shows is that if the platform allows for usernames to be changed it is
*critical* to track the user id as well. I didn't do the work to check that
those accounts exist. But that's a project for another day.

I'm not sure this list of five deleted accounts is terribly interesting at the
end of all this. Possibly? But on the plus side I did learn how to interact
with Git better from Python, which is something I can imagine returning to in
the future. It's not every day that you have to think of the *versions* of
a dataset as an important feature of the data, outside of serving as a backup
that can be reverted to if necessary. But of course data changes in time, and
if seeing that data over time is useful, then the revision history takes on
a new significance. It's nothing new to see version control systems as critical
data provenance technologies, but it felt new to actually use one that way to
answer a question. Thanks Mark!

[congress-legislators]: https://github.com/unitedstates/congress-legislators
[social media accounts]: https://github.com/unitedstates/congress-legislators/blob/master/legislators-social-media.yaml
[us-legislators-social]: https://github.com/edsu/us-legislators-social
[all this together]: https://github.com/edsu/us-legislators-social/blob/master/experiments/outgoing.py
[simple table]: https://github.com/edsu/us-legislators-social/blob/master/experiments/outgoing.csv
[gitpython]: https://gitpython.readthedocs.io/en/stable/
[Derek Willis]: https://twitter.com/derekwillis
[\@joebiden]: https://twitter.com/joebiden
[\@senkamalaharris]: https://twitter.com/senkamalaharris
[\@VP]: https://twitter.com/VP
[\@POTUS]: https://twitter.com/POTUS
[Mark Graham]: https://twitter.com/MarkGraham
