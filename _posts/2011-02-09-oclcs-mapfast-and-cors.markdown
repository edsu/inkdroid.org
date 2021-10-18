---
layout: post
status: publish
published: true
title: OCLC's mapFAST and CORS
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2936
wordpress_url: http://inkdroid.org/journal/?p=2936
date: '2011-02-09 11:31:11 +0000'
date_gmt: '2011-02-09 18:31:11 +0000'
tags:
- oclc
- http
- web
- html5
- cors
- web-services
- geo
comments:
- id: 84276
  author: sgillies.net/
  author_email: ''
  author_url: http://sgillies.net/
  date: '2011-02-09 11:51:13 +0000'
  date_gmt: '2011-02-09 18:51:13 +0000'
  content: "Looks like mapFAST's response is KML with curly braces. I'd recommend
    GeoJSON [1] for expressing locations (which are numerical, not strings( and OpenSearch-Geo
    [2] for the protocol/API (laziness and reuse being a virtue), but it's cool what
    you've done with it.\r\n\r\n1. http://geojson.org/geojson-spec.html\r\n2. http://www.opensearch.org/Specifications/OpenSearch/Extensions/Geo/1.0/Draft_1#Parameters"
- id: 84280
  author: Chris Adams
  author_email: chris@improbable.org
  author_url: https://www.google.com/accounts/o8/id?id=AItOawnjYt4eA4hzgDgYRfMpqMFitgKISVvzTc8
  date: '2011-02-09 12:04:54 +0000'
  date_gmt: '2011-02-09 19:04:54 +0000'
  content: "One alternative, which is definitely a hack, is JSONP, where you request
    the URL using a script tag with a callback parameter and the server emits code
    of the form \"callback_name(data)\".\r\n\r\nThe main reason for thinking about
    that is that it's widely supported because for a long time it was the only viable
    option - e.g. jQuery has built-in support as do many server-side API frameworks
    like django-tastypie. In particular, the example at http://experimental.worldcat.org/mapfast/api_docs/example.html
    is using jQuery.getJSON with a callback parameter to get a response like this:\r\n\r\njQuery1506183844415936619_1297277994400({
    \   \"name\": \"FAST Authority Records\",    …\r\n\r\nIt's not necessary, of course,
    since they support CORS but it is a viable fallback for old browsers and services
    which haven't jumped on CORS yet because you should need to do is add \"&amp;callback=?\"
    to https://github.com/edsu/subjects-here/blob/master/js/subjects-here.js#L13"
- id: 84283
  author: ed
  author_email: ehs@pobox.com
  author_url: http://www.inkdroid.org
  date: '2011-02-09 12:45:22 +0000'
  date_gmt: '2011-02-09 19:45:22 +0000'
  content: Thanks for the great comments Chris and Sean. JSONP and GeoJSON/OpenSearchGeo
    are definitely important things to mention in this context.
---

<p>Yesterday at <a href="http://code4lib.org/conference/2011">Code4lib 2011</a> <a href="http://www.librarywebchic.net/">Karen Coombs</a> gave a <a href="http://code4lib.org/conference/2011/coombs">talk</a> where (among other things) she demonstrated <a href="http://www.oclc.org/research/activities/mapfast/">mapFAST</a> that lets you find <a href="http://experimental.worldcat.org/mapfast/">relevant subject headings</a> for a given location, and then click on a subject heading and find relevant books on the topic. Go check out the <a href="http://www.indiana.edu/~video/stream/launchflash.html">archived video</a> of her talk (note you'll have to jump 39 minutes or so into the stream). Karen mentioned that the demo UI uses the <a href="http://www.oclc.org/developer/services/mapFAST">mapFAST REST/JSON API</a>. The service lets you construct a URL like this to get back subjects for any location you can identify with lat/lon coordinates:</p>
<pre>
http://experimental.worldcat.org/mapfast/services?geo={lat},{lon}";crs=wgs84&radius={radius-in-meters}&mq=&sortby=distance&max-results={num-results}"
</pre>
<p>For example: </p>
<pre>
ed@curry:~$ curl -i 'http://experimental.worldcat.org/mapfast/services?geo=39.01,-77.01;crs=wgs84&radius=100000&mq=&sortby=distance&max-results=1'
HTTP/1.1 200 OK
Date: Wed, 09 Feb 2011 14:07:39 GMT
Server: Apache/2.0.63 (Unix)
<span style="color: red;">Access-Control-Allow-Origin: *</span>
Transfer-Encoding: chunked
Content-Type: application/json

{
  "Status": {
    "code": 200, 
    "request": "geocode"
  }, 
  "Placemark": [
    {
      "point": {
        "coordinates": "39.0064,-77.0303"
      }, 
      "description": "", 
      "ExtendedData": [
        {
          "name": "NormalizedName", 
          "value": "maryland silver spring woodside park"
        }, 
        {
          "name": "Feature", 
          "value": "ppl"
        }, 
        {
          "name": "FCode", 
          "value": "P"
        }
      ], 
      "id": "fst01324433", 
      "name": "Maryland -- Silver Spring -- Woodside Park"
    }
  ], 
  "name": "FAST Authority Records"
}
</pre>
<p>Recently I have been reading Mark Pilgirm's wonderful <a href="http://diveintohtml5.org/">Dive into HTML5</a> book, so I got it into my head that it would be fun to try out some of the <a href="http://diveintohtml5.org/geolocation.html">geo-location features</a> in modern browsers to display subject headings that are relevant for wherever you are. A short time later I now have a simple HTML/JavaScript HTML5 application (dubbed <a href="http://inkdroid.org/subjects-here/">subjects-here</a>) that does just that. The application itself is really just a toy. Part of Karen's talk was emphasizing the importance of using more than just text in Library Applications...and subjects-here kind of misses that key point.</p>
<p>What I wanted to highlight is the text in red in the HTTP response above:</p>
<pre>
Access-Control-Allow-Origin: *
</pre>
<p>The <code>Access-Control-Allow-Origin</code> HTTP header is a <a href="http://en.wikipedia.org/wiki/Cross-Origin_Resource_Sharing">Cross-Origin Resource Sharing</a> (CORS) header. If you've developed JavaScript applications before, you probably have run into situations where you wanted to load some JavaScript from a service elsewhere on the web. But you were prevented from doing this by <a href="http://en.wikipedia.org/wiki/Same_origin_policy">Same Origin Policy</a>, which prevents your JavaScript code from talking to a website that is different from the one it loaded from. So normally you hack around this by creating a proxy for that web service in your own application, which is a bit of work. Sometimes license agreements frown on you re-exposing their service, so you have to jump through a few more hoops to make sure it's not an open proxy for the web service. </p>
<p>Enter CORS.</p>
<p>What the folks at OCLC did was add a <code>Access-Control-Origin</code> header to their JSON response. This basically means that my JavaScript served up at <code>inkdroid.org</code> is able to run in your browser and talk to the server at <code>experimental.worldcat.org</code>. OCLC has decided to allow this, to make their Web Service easier to use. So to create <a href="http://inkdroid.org/subjects-here/">subjects-here</a> I didn't have to write a single bit of server side code, it's just static HTML and JavaScript:</p>
<pre lang="javascript">
function main() {
    if (Modernizr.geolocation) {
        navigator.geolocation.getCurrentPosition(lookup_subjects);
    }
    else {
        display_error();
    }
}

function lookup_subjects(position) {
    lat = parseFloat(position.coords.latitude);
    lon = parseFloat(position.coords.longitude);
    url = "http://experimental.worldcat.org/mapfast/services?geo=" + lat + "," + lon + ";crs=wgs84&radius=100000&mq=&sortby=distance&max-results=15";
    $.getJSON(url, display_subjects);
}

function display_subjects(data) {
    // putting results into the DOM left as exercise to the reader
}
</pre>
<p>Nice and simple right? The full code is on <a href="http://github.com/edsu/subjects-here">GitHub</a>, which seemed a bit superfluous since there is no server-side piece (it's all in the browser). So the big wins are:</p>
<ul>
<li>OCLC gets to see who is actually using their web service, not who is proxying it.</li>
<li>I don't have to write some proxy code.</li>
</ul>
<p>The slight drawbacks are:</p>
<ul>
<li>My application has a runtime dependency on <code>experimental.worldcat.org</code>, but it kinda did already when I was proxying it.</li>
<li>Most modern browsers support CORS headers, but <a href="http://en.wikipedia.org/wiki/Cross-Origin_Resource_Sharing#Browser_Support">not all of them</a>. So you would need to evaluate whether that matters to you.</li>
</ul>
<p>I guess this is just a long way of saying <strong>USE CORS!!</strong> and help make the web a better place (pun intended).</p>
<p><em>Update: and also, it is a good example where something like <a href="http://geojson.org/">GeoJSON</a> and <a href="http://www.opensearch.org/Specifications/OpenSearch/Extensions/Geo/1.0/Draft_1">OpenSearch Geo</a> could've been used to help spread common patterns for data on the Web. Thanks to <a href="http://twitter.com/sgillies/">Sean Gillies</a> for <a href="http://twitter.com/#!/sgillies/status/35411146542419968">pointing</a> that out.</em></p>
<p><em>Update: and <a href="http://chris.improbable.org/">Chris</a> is absolutely right, <a href="http://en.wikipedia.org/wiki/JSON#JSONP">JSONP</a> is another pattern in the Web Developer community that is a bit of a hack, but is an excellent fallback for older browsers.</em></p>
