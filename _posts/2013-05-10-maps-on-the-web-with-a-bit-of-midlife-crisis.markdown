---
layout: post
status: publish
published: true
title: maps on the web with a bit of midlife crisis
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 5679
wordpress_url: http://inkdroid.org/journal/?p=5679
date: '2013-05-10 12:08:25 +0000'
date_gmt: '2013-05-10 19:08:25 +0000'
tags:
- html
- rest
- javascript
- wikipedia
- nodejs
- openstreetmap
- maps
comments: []
---

<p><em>TL;DR -- I created <a href="http://edsu.github.io/wikigeo/">a JavaScript library</a> for getting GeoJSON out of Wikipedia's API in your browser (and Node.js). I also created <a href="http://inkdroid.org/ici/">a little app</a> that uses it to display Wikipedia articles for things near you that need a photograph/image or editorial help.</em></p>
<hr />
<p>I probably don't need to tell you how much the state of mapping on the Web has changed in the past few years. <a href="http://www.youtube.com/watch?v=6xG4oFny2Pk">I was there</a>. I can remember trying to get <a href="http://mapserver.org/">MapServer</a> set up in the late 1990s, with limited success. I was there squinting at how <a href="http://en.wikipedia.org/wiki/Adrian_Holovaty">Adrian Holovaty</a> reverse engineered a mapping API out of Google Maps at <a href="http://web.archive.org/web/20060408105215/http://www.chicagocrime.org/map/">chicagocrime.org</a>. I was there when Google released their official API, which I used some, and then they changed their terms of service. I was there in the late 2000s using OpenLayers and TileCache, which were so much more approachable than MapServer was a decade earlier. I'm most definitely not a mapping expert, or even an amateur--but you can't be a Web developer without occasionally needing to dabble, and pretend you are.</p>
<p>I didn't realize until very recently how easy the cool kids have made it to put maps on the Web. Who knew that in 2013 there would be an open source JavaScript library that lets you add a map to your page in a few lines, and that it's in use by Flickr, FourSquare, CraigsList, Wikimedia, the Wall Street Journal, and others? Even more astounding: who knew there would be an openly licensed source of map tiles and data, that was created collaboratively by a project with over a million registered users, and that it would be good enough to be used by Apple? I certainly didn't even dream about it.</p>
<p>Ok, hold that thought...</p>
<p>So, Wikipedia <a href="https://blog.wikimedia.org/2013/03/28/add-an-image-to-this-article-uploads-now-live-on-mobile-wikipedia/">recently announced</a> that they were making it easy to use your mobile device to add a photograph to a Wikipedia article that lacked an image.</p>
<div style="width: 60%; margin-left: auto; margin-right: auto; margin-top: 10px; margin-bottom: 10px; border: thin solid #eeeeee;">
<a href="http://www.flickr.com/photos/inkdroid/8726826906/"><img src="http://farm8.staticflickr.com/7318/8726826906_2e88f9ab6b_b.jpg" width="400"/></a>
</div>
<p>When I read about this I thought it would be interesting to see what Wikipedia articles there are about my current location, and which lacked images, so I could go and take pictures of them. Before I knew it I had <a href="http://inkdroid.org/ici/">a Web app</a> called ici (French for here) that does just that:</p>
<p><a href="http://inkdroid.org/ici/#lat=38.89591781652618&lon=-77.0342230796814&zoom=16"><img src="http://inkdroid.org/images/ici.png"/></a></p>
<p>Articles that need images are marked with little red cameras. It was pretty easy to add orange markers for Wikipedia articles that had been flagged as needing edits, or citations. Calling it an app is an overstatement: it is just static HTML, JavaScript and CSS that I serve up. HTML's <a href="http://diveintohtml5.info/geolocation.html">geolocation</a> features and <a href="http://en.wikipedia.org/w/api.php">Wikipedia's API</a> (which has <a href="http://www.mediawiki.org/wiki/Extension:GeoData">GeoData</a> enabled) take care of the rest.</p>
<p>After I created the app I got a tweet from a <em>real</em> geo-hacker, Sean Gillies, who asked:</p>
<p>https://twitter.com/sgillies/status/332185543234441216</p>
<p>Sean is right, it would be really useful to have a GeoJSON output from Wikipedia's API. But I was on a little bit of a tear, so rather than figuring out how to get GeoJSON into MediaWiki and deployed to all the Wikipedia servers I wondered if I could extract ici's use of the Wikipedia API into a slightly more generalized JavaScript library, that would make it easy to get GeoJSON out of Wikipedia--at least from JavaScript. That quickly resulted in <a href="http://edsu.github.io/wikigeo/">wikigeo.js</a> which is now getting used in ici. Getting GeoJSON from Wikipedia using wikigeo.js is done in just one line, and then <a href="http://leafletjs.com/examples/geojson.html">adding the GeoJSON to a map in Leaflet</a> can also be done in one line:</p>
<pre lang="javascript">
geojson([-73.94, 40.67], function(data) {
    // add the geojson to a Leaflet map
    L.geoJson(data).addTo(map)
});
</pre>
<p>This call results in callback getting some GeoJSON data that looks something like:</p>
<pre lang="javascript">
{
  "type": "FeatureCollection",
  "features": [
    {
      "id": "http://en.wikipedia.org/wiki/New_York_City",
      "type": "Feature",
      "properties": {
        "name": "New York City"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -73.94,
          40.67
        ]
      }
    },
    {
      "id": "http://en.wikipedia.org/wiki/Kingston_Avenue_(IRT_Eastern_Parkway_Line)",
      "type": "Feature",
      "properties": {
        "name": "Kingston Avenue (IRT Eastern Parkway Line)"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -73.9422,
          40.6694
        ]
      }
    },
    {
      "id": "http://en.wikipedia.org/wiki/Crown_Heights_–_Utica_Avenue_(IRT_Eastern_Parkway_Line)",
      "type": "Feature",
      "properties": {
        "name": "Crown Heights – Utica Avenue (IRT Eastern Parkway Line)"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -73.9312,
          40.6688
        ]
      }
    },
    {
      "id": "http://en.wikipedia.org/wiki/Brooklyn_Children's_Museum",
      "type": "Feature",
      "properties": {
        "name": "Brooklyn Children's Museum"
      },
"geometry": {
        "type": "Point",
        "coordinates": [
          -73.9439,
          40.6745
        ]
      }
    },
    {
      "id": "http://en.wikipedia.org/wiki/770_Eastern_Parkway",
      "type": "Feature",
      "properties": {
        "name": "770 Eastern Parkway"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -73.9429,
          40.669
        ]
      }
    },
    {
      "id": "http://en.wikipedia.org/wiki/Eastern_Parkway_(Brooklyn)",
      "type": "Feature",
      "properties": {
        "name": "Eastern Parkway (Brooklyn)"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -73.9371,
          40.6691
        ]
      }
    },
    {
      "id": "http://en.wikipedia.org/wiki/Paul_Robeson_High_School_for_Business_and_Technology",
      "type": "Feature",
      "properties": {
        "name": "Paul Robeson High School for Business and Technology"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -73.939,
          40.6755
        ]
      }
    },
    {
      "id": "http://en.wikipedia.org/wiki/Pathways_in_Technology_Early_College_High_School",
      "type": "Feature",
      "properties": {
        "name": "Pathways in Technology Early College High School"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -73.939,
          40.6759
        ]
      }
    }
  ]
}
</pre>
<p>There are options for broadening the radius, increasing the number of results, and fetching additional properties of the Wikipedia article such as article summaries, images, categories, templates used. Here's an example using all the knobs:</p>
<pre lang="javascript">
geojson(
  [-73.94, 40.67],
  {
    limit: 5,
    radius: 1000,
    images: true,
    categories: true,
    summaries: true,
    templates: true
  },
  function(data) {
    L.geoJson(data).addTo(map)
  }
);
</pre>
<p>Which results in GeoJSON like this (abbreviated)</p>
<pre lang="javascript">
{
  "type": "FeatureCollection",
  "features": [
    {
      "id": "http://en.wikipedia.org/wiki/Silver_Spring,_Maryland",
      "type": "Feature",
      "properties": {
        "name": "Silver Spring, Maryland",
        "image": "Downtown_silver_spring_wayne.jpg",
        "templates": [
          "-",
          "Abbr",
          "Ambox",
          "Ambox/category",
          "Ambox/small",
          "Basepage subpage",
          "Both",
          "Category handler",
          "Category handler/blacklist",
          "Category handler/numbered"
        ],
        "summary": "Silver Spring is an unincorporated area and census-designated place (CDP) in Montgomery County, Maryland, United States. It had a population of 71,452 at the 2010 census, making it the fourth most populous place in Maryland, after Baltimore, Columbia, and Germantown.\nThe urbanized, oldest, and southernmost part of Silver Spring is a major business hub that lies at the north apex of Washington, D.C. As of 2004, the Central Business District (CBD) held 7,254,729 square feet (673,986 m2) of office space, 5216 dwelling units and 17.6 acres (71,000 m2) of parkland. The population density of this CBD area of Silver Spring was 15,600 per square mile all within 360 acres (1.5 km2) and approximately 2.5 square miles (6 km2) in the CBD/downtown area. The community has recently undergone a significant renaissance, with the addition of major retail, residential, and office developments.\nSilver Spring takes its name from a mica-flecked spring discovered there in 1840 by Francis Preston Blair, who subsequently bought much of the surrounding land. Acorn Park, tucked away in an area of south Silver Spring away from the main downtown area, is believed to be the site of the original spring.\n\n",
        "categories": [
          "All articles to be expanded",
          "All articles with dead external links",
          "All articles with unsourced statements",
          "Articles to be expanded from June 2008",
          "Articles with dead external links from July 2009",
          "Articles with dead external links from October 2010",
          "Articles with dead external links from September 2010",
          "Articles with unsourced statements from February 2007",
          "Articles with unsourced statements from May 2009",
          "Commons category template with no category set"
        ]
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -77.019,
          39.0042
        ]
      }
    },
    ...
  ]
}
</pre>
<p>I guess this is a long way of saying, if you want to put Wikipedia articles on a map, or otherwise need GeoJSON for Wikipedia articles for a particular location, take a look at <a href="http://edsu.github.io/wikigeo/">wikigeo.js</a>. If you do, and have ideas for making it better, please let me know. Oh, by the way you can <code>npm install <a href="https://npmjs.org/package/wikigeo">wikigeo</a></code> and use it from <a href="http://nodejs.org">Node.js</a>.</p>
<p>I guess JavaScript, HTML5, NodeJS, CoffeeScript are like my midlife crisis...my red sports car. But maybe being the old guy, and losing my edge isn't really so bad?</p>
<blockquote><p>
I'm losing my edge<br />
to better-looking people<br />
with better ideas<br />
and more talent<br />
and they're actually<br />
really, really nice.<br />
--- <a href="http://www.youtube.com/watch?v=6xG4oFny2Pk">Jim Murphy</a>
</p></blockquote>
<p>It definitely helps when the kids coming up from behind have talent and are really, really nice. You know?</p>
