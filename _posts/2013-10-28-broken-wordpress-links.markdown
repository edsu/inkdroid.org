---
layout: post
status: publish
published: true
title: broken wordpress links
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 6409
wordpress_url: http://inkdroid.org/journal/?p=6409
date: '2013-10-28 09:05:34 +0000'
date_gmt: '2013-10-28 16:05:34 +0000'
tags: []
comments:
- id: 86647
  author: Chris Adams
  author_email: chris@improbable.org
  author_url: https://www.google.com/accounts/o8/id?id=AItOawnjYt4eA4hzgDgYRfMpqMFitgKISVvzTc8
  date: '2013-10-28 14:54:09 +0000'
  date_gmt: '2013-10-28 21:54:09 +0000'
  content: |
    Using the post date would be a great way to start windowing that search for then-current page but I think it would run into issues getting metadata – i.e. you're using WordPress and it appears that  it doesn't set the Last-Modified header, which has been standard since the mid-90s:
    http://redbot.org/?uri=http%3A%2F%2Finkdroid.org%2Fjournal%2F2005%2F12%2F04%2Fsnakes-and-rubies%2F
    Maybe this is a good time to see if the IA folks are interested in adding support for the OpenGraph article:published_time or dcterms.created meta values which are present in the template? The Schema.org BlogPost date created / published would also be great candidates for inclusion.
    https://archive.org/web/wb404.js doesn't appear to do any parsing; it's not clear whether the code for the available.php endpoint is open-source or not.
---

<p>Internet Archive <a href="http://blog.archive.org/2013/10/25/fixing-broken-links/">recently announced</a> their new <a href="http://archive.org/help/wayback_api.php">Availability API</a> for checking if a representation for a given URL is in their archive with a simple HTTP call. In addition to the API they highlighted a few IA related projects, including a Wordpress plugin called <a href="http://wordpress.org/plugins/broken-link-checker/">Broken Link Checker</a> which will check the links in your Wordpress site, and offer to fix any broken ones using an Internet Archive URL, if it is available based on a call to the Availability API.</p>
<p>I installed the plugin here and let it run for a bit. It detected 3898 unique URLs in 4910 links of which 482 are broken. This amounts to 12% link rot ... but there were also 1038 redirects that resulted in a 200 OK ; so there may be a fair bit of reference rot lurking there. The plugin itself doesn't provide a summary of HTTP status codes for the "broken URLS" but they are listed one by one in the broken link report. Since I could see the HTTP status codes in the table, I figured out you can easily log into your Wordpress database and run a query like this to get a summary:</p>
<pre style="font-family: monospace;">mysql> select http_code, count(*) from wp_blc_links where broken is true group by http_code;
+-----------+----------+
| http_code | count(*) |
+-----------+----------+
|         0 |      113 |
|       400 |        9 |
|       403 |       15 |
|       404 |      333 |
|       410 |        5 |
|       416 |        1 |
|       500 |        3 |
|       502 |        1 |
|       503 |        2 |
+-----------+----------+
</pre>
<p>I'm assuming the 113 (23% of the broken links) are DNS lookup failure, or connection failures. Once the broken links are identified, you have to manually curate each link to decide whether you want to link out to the Internet Archive based on whether it's possible, and whether the most recent link is appropriate or not. This can take some time, but it is useful given I uncovered a number of fat-fingered URLs that looked like they never worked, which I was able to fix. Of the legitimately broken URLs, 136 URLs (~28%) were available at the Internet Archive. Once you've decided to use an IA URL the plugin can quickly rewrite the original content without requiring you to do in and tweak the content yourself.</p>
<p>One thing that would be nice would be for the API to be queried for a representation of the resource based on when the post was authored. For example my Snakes and Rubies <a href="http://inkdroid.org/journal/2005/12/04/snakes-and-rubies/">post</a> had a broken link to http://snakesandrubies.com and the plugin correctly found that it was available at the Internet Archive with an API query like:</p>
<pre>% curl --silent 'http://archive.org/wayback/available?url=snakesandrubies.com' | python -mjson.tool
{
    "archived_snapshots": {
        "closest": {
            "available": true,
            "status": "200",
            "timestamp": "20130131030609",
            "url": "http://web.archive.org/web/20130131030609/http://snakesandrubies.com/"
        }
    }
}
</pre>
<p>When requesting that URL you get this hit in the archive: <a href="http://web.archive.org/web/20130131030609/http://snakesandrubies.com/">http://web.archive.org/web/20130131030609/http://snakesandrubies.com/</a> but that's an archive of a cyerbsquatted version of the page:</p>
<p><a href="http://web.archive.org/web/20130131030609/http://snakesandrubies.com"><img src="http://inkdroid.org/images/snakes-and-rubies-archive-2.png" alt="Snakes, Rubies and Cybersquatter" /></a></p>
<p>If the timestamp of the blogpost were used perhaps a better representation like this could've been found automatically, or at least it could have been offered first?</p>
<p><a href="https://web.archive.org/web/20051208055453/http://snakesandrubies.com/event"><img src="http://inkdroid.org/images/snakes-and-rubies-archive-1.png" alt="Snakes and Rubies" /></a></p>
<p>Based on the svn log for the plugin it appears to have been 2007-10-08 and has been downloaded 2,099,072 times since then. When people gripe about the Web being broken by design I think it's good to remember that tools like this exist to help make it better, one website and link at a time.</p>
