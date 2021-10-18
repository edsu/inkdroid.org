---
layout: post
status: publish
published: true
title: federal register embraces the web and opensource
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 2174
wordpress_url: http://inkdroid.org/journal/?p=2174
date: '2010-07-27 08:05:52 +0000'
date_gmt: '2010-07-27 15:05:52 +0000'
tags:
- web
- gpo
- egov
- nara
- publishing
- ruby
- github
- apache
- mysql
comments:
- id: 82744
  author: Bob Burbach
  author_email: bob.burbach@gmail.com
  author_url: http://rburbach.myopenid.com/
  date: '2010-07-27 09:39:56 +0000'
  date_gmt: '2010-07-27 16:39:56 +0000'
  content: "Thanks for the great remarks on the new site. As one of the citizen/geeks
    who developed the project we are excited for where the site will evolve moving
    forward. We'll definitely keep in mind your comments regarding OpenSearch and
    RDFa.\r\n\r\nI would like to clarify that content is available as far back as
    1994 on the site (when the Register was first digitized) though the XML only is
    available as far back as 2000. \r\n\r\nXML for an article is made available on
    each article page. Also the bulk data remains available from the GPO where we
    pull from every morning - \r\nSo for today:\r\nhttp://www.gpo.gov/fdsys/bulkdata/FR/2010/07/FR-2010-07-27.xml\r\nhttp://www.gpo.gov:80/fdsys/pkg/FR-2010-07-27/mods.xml\r\n\r\nAlso
    available on Data.gov (http://www.data.gov/raw/1325)\r\n\r\nKeep the suggestions
    rolling!"
- id: 82747
  author: Political Mashup &raquo; Archief &raquo; Federal Register 2.0
  author_email: ''
  author_url: http://politicalmashup.nl/2010/07/federal-register-20/
  date: '2010-07-28 00:03:03 +0000'
  date_gmt: '2010-07-28 07:03:03 +0000'
  content: "[...] [1] http://sunlightlabs.com/blog/2010/meet-the-new-federal-register/
    [2] http://www.federalregister.gov/ [3] http://inkdroid.org/journal/2010/07/27/federal-register-embraces-the-web-and
    -opensource/ [...]"
- id: 86943
  author: The Archive as Data Platform | inkdroid
  author_email: ''
  author_url: http://inkdroid.org/journal/2014/04/25/the-archive-as-data-platform/
  date: '2014-04-26 05:06:13 +0000'
  date_gmt: '2014-04-26 12:06:13 +0000'
  content: |
    [&#8230;] pointer to that Cassie) and the Government Printing Office&#8217;s Bulk Data website (see previous post and comments about the FederalRegister), where this activity can take place, and where a dialogue can happen [&#8230;]
---

<p><a href="http://federalregister.gov"><img style="border: none; margin-right: 10px; float: left;" src="http://inkdroid.org/images/federal-register.png"/></a><a href="http://sunlightfoundation.com/people/tlee/">Tom Lee</a> of the <a href="http://sunlightfoundation.com/">Sunlight Foundation</a> <a href="http://sunlightlabs.com/blog/2010/meet-the-new-federal-register/">blogged yesterday</a> about the <a href="http://www.federalregister.gov/">new Federal Register website</a>.  The facelift was also <a href="http://blogs.archives.gov/aotus/?p=1317">announced</a> a few days earlier by the Archivist of the United States, <a href="http://en.wikipedia.org/wiki/David_Ferriero">David Ferriero</a>. If you aren't familiar with it already, the Federal Register is basically <em>the</em> daily newspaper of the United States Federal Government, which details all the rules and regulations of the federal agencies. It is compiled by the <a href="http://www.archives.gov/federal-register/">Office of the Federal Register</a> located in the <a href="http://www.archives.gov/">National Archives</a>, and printed by the <a href="http://www.gpo.gov/">Government Printing Office</a>. As the <a href="http://www.youtube.com/watch?v=ADhP0KSmjkQ">video</a> describing the new site points out, the Federal Register began publication in 1936 in the depths of the <a href="http://en.wikipedia.org/wiki/Great_Depression_in_the_United_States">Great Depression</a> as a way to communicate <em>in one place</em> all that the agencies were <a href="http://en.wikipedia.org/wiki/New_Deal">doing</a> to try to jump start the economy. So it seems like a fitting time to be rethinking the role of the Federal Register.</p>
<p>I'm no usability expert, but just a few minutes browsing the <a href="http://www.federalregister.gov/">new site</a> and comparing it to the <a href="http://www.gpoaccess.gov/fr/">old one</a> make it clear what a leap forward this is. Hopefully the <a href="http://web.archive.org/web/20110117014406/http://www.federalregister.gov/policy/legal_status">legal status</a> of the new site will be ironed out shortly.</p>
<p>Most of all it's great to see that the Federal Register is now a single web application. The service it provides to the American public is important enough to deserve its own dedicated web presence. As the developers point out in <a href="http://www.youtube.com/watch?v=13fLdUyrd7A">their video</a> describing the effort, they wanted to make the Federal Register a "first class citizen of the web"...and I think they are certainly helping do that. This might seem obvious, but often there is a temptation to jam publications from the print world (like the Federal Register) into dumbed down <a href="http://www.gpo.gov/fdsys/">monolithic repositories</a> that treat all "objects" the same. Proponents of this approach tend to characterize one off websites like Federal Register 2.0 as "yet another silo". But I think it's important to remember that <a href="http://www.youtube.com/watch?v=OM6XIICm_qo#t=0m37s">the web was really created to break down the silo walls</a>, and that every well designed web site is actually the antithesis of a silo. In fact, monolithic repository systems that treat all publications as static documents to be uniformly managed are more like silos than these 'one off' dedicated web applications.</p>
<p>As a software developer working in the federal government there were a few things about the Federal Register 2.0 that I found really exciting:</p>
<ul>
<li>Fruitful collaboration between federal employees and citizen activist/geeks initiated by a <a href="http://sunlightlabs.com/contests/appsforamerica2/">software development contest</a>.</li>
<li>Extensive use of opensource technologies like <a href="http://www.ruby-lang.org/en/">Ruby</a>, <a href="http://rubyonrails.org/">Ruby on Rails</a>, <a href="http://www.mysql.com/">MySQL</a>, <a href="http://www.sphinxsearch.com/">Sphinx</a>, <a href="http://nginx.org/">nginx</a>, <a href="http://varnish-cache.org/">Varnish</a>, <a href="http://www.modrails.com/">Passenger</a>, <a href="http://httpd.apache.org/">Apache2</a>, <a href="http://www.ubuntu.com/">Ubuntu Linux</a>, <a href="http://wiki.opscode.com/display/chef/Home">Chef</a>. Opensource technologies encourage collaboration by allowing citizen activists/technologists to participate without having to drop a princely sum.</li>
<li>Release of the <a href="http://github.com/criticaljuncture/fr2/">source code for the website itself</a>, using decentralized revision control (<a href="http://git-scm.com/">git</a>) so that people can easily contribute changes, and see how the site was put together.</li>
<li>Extensive use of syndicated feeds to communicate how how content is being added to the site, <a href="http://www.federalregister.gov/events/search?conditions[term]=&conditions[location]=20901&conditions[within]=25&commit=Go">ical</a> feeds to keep on top of events going on in your area, and <a href="http://www.federalregister.gov/articles/xml/201/018/147.xml">detailed XML for each entry</a>.</li>
<li>The <a href="http://federalregister.gov/robots.txt">robots.txt file for the site</a> makes the content fully crawlable by web indexers, except for search related portions of the website. Excluding dynamic search results is often important for performance reasons, but much of the article content can be discovered via links, see below about permalinks. They also have made a <a href="http://sitemaps.org">sitemap</a> available for crawlers to efficiently discover URLs for the content.</li>
<li>Deployment of the web application to the cloud using Amazon's <a href="http://aws.amazon.com/ec2/">EC2</a> and <a href="http://aws.amazon.com/s3/">S3</a> services. Cloud computing allows computing resources to scale to meet demand. In effect this means that government IT shops don't have to make big up front investments in infrastructure to make new services available. I guess the jury is still out, but I think this will eventually prove to greatly lower the barrier to innovation in the egov sector. It also lets the more progressive developers in government leap frog ancient technologies and bureaucracies to get things done in a timely manner.</li>
<li>And last, but certainly not least ... <strong>now every entry in the Federal Register has a URL!</strong>. Permalinks for the Federal Register are incredibly important for citability reasons. I predict that we'll quickly see more and more people referencing specific parts of the Federal Register in social media sites like Facebook, Twitter and out on the open web in blogs, and in collaborative applications like Wikipedia.</li>
</ul>
<p>I would like to see more bulk access to XML data made available, for re-purposing on other websites--although I guess it might be able to walk from the syndicated feeds to the detailed XML. Also, the search functionality is so rich it would be useful to have an <a href="http://en.wikipedia.org/wiki/OpenSearch">OpenSearch</a> description that documents it, and perhaps provides some hooks for getting back JSON and/or XML representations. Perhaps even following the lead of the <a href="http://www.london-gazette.co.uk/">London Gazette</a> and trying to make some of the structured metadata available in the the HTML using RDFa. It also looks like content is only available for 2008 on, so it might be interesting to see how easy it would be to make more of the historic content available.</p>
<p>But the great thing about what these folks have done is now I can fork the project on github, see how easy it is to add the changes, and let the developers know about my updates to see if they are worth merging back into the production website. This is an incredible leap forward for egov efforts--so hats off to everyone who helped make this happen.</p>
