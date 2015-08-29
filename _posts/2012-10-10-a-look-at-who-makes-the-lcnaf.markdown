---
layout: post
status: publish
published: true
title: a look at who makes the LCNAF
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 5070
wordpress_url: http://inkdroid.org/journal/?p=5070
date: '2012-10-10 04:22:37 +0000'
date_gmt: '2012-10-10 11:22:37 +0000'
tags:
- 4store
- ec2
- lcnaf
- authority control
- library of congress
comments: []
---
<p>As a follow up to my <a href="http://inkdroid.org/journal/2012/10/04/lcnaf-unix-hack/">last post</a> about visualizing Library of Congress Name Authority File (LCNAF) records created by year, I decided to dig a little bit deeper to see how easy it would be to visualize how participating <a href="http://www.loc.gov/aba/pcc/naco/">Name Authority Cooperative</a> institutions have contributed to the LCNAF over time. This idea was mostly born out of spending the latter part of last week participating in a conversation about the need for a <a href="http://socialarchive.iath.virginia.edu/NAAC_index.html">National Archival Authority Cooperative</a> hosted at NARA. This blog post is one part nerdy technical notes on how I worked with the LCNAF Linked Data, and one part line charts showing who creates and modifies LCNAF records. It might've made more sense to start with the pretty charts, and then show you how I did it...but if the tech details don't interest you can jump to the <a href="#result">second half</a>.</p>
<h2>The Work</h2>
<p>After a very helpful Twitter <a href="https://twitter.com/3windmills/status/254949232052686848">conversation</a> with Kevin Ford I discovered that the Linked Data <a href="http://www.loc.gov/standards/mads/rdf/">MADSRDF</a> representation of the LCNAF includes assertions about the institution responsible for creating or revising the a record. Here's a snippet of Turtle for RDF that describes who created and modified the LCNAF record for <a href="http://id.loc.gov/authorities/names/n97108433">J. K. Rowling</a> (if your eyes glaze over when you see RDF, don't worry keep reading, it's not essential you understand this):</p>
<pre>
@prefix ri: &lt;http://id.loc.gov/ontologies/RecordInfo#&gt; .

&lt;http://id.loc.gov/authorities/names/n97108433&gt;
    madsrdf:adminMetadata [
        ri:recordChangeDate "1997-10-28T00:00:00"^^&lt;http://www.w3.org/2001/XMLSchema#dateTime&gt; ;
        ri:recordContentSource &lt;http://id.loc.gov/vocabulary/organizations/dlc&gt; ;
        ri:recordStatus "new"^^&lt;http://www.w3.org/2001/XMLSchema#string&gt; ;
        a ri:RecordInfo
    ],
    [
        ri:recordChangeDate "2011-08-25T06:29:06"^^&lt;http://www.w3.org/2001/XMLSchema#dateTime&gt; ;
        ri:recordContentSource &lt;http://id.loc.gov/vocabulary/organizations/dlc&gt; ;
        ri:recordStatus "revised"^^&lt;http://www.w3.org/2001/XMLSchema#string&gt; ;
        a ri:RecordInfo
    ] .
</pre>
<p>So I picked up an <a href="http://aws.amazon.com/ec2/instance-types/">EC2 m1.large</a> spot instance (7.5G of RAM, 2 virtual cores, 850G of storage) for a miserly $0.026/hour, installed 4store (which is a triplestore I'd heard good things about), and loaded the data.</p>
<pre>
% wget http://id.loc.gov/static/data/authoritiesnames.nt.madsrdf.gz
% gunzip authoritiesnames.nt.madsrdf.gz
% sudo apt-get install 4store
% sudo mkdir /mnt/4store
% sudo chown fourstore:fourstore /mnt/4store
% sudo ln -s /mnt/4store /var/lib/4store
% sudo -u fourstore 4s-backend-setup lcnaf --segments 4
% sudo -u fourstore 4s-backend lcnaf
% sudo -u fourstore 4s-import --verbose lcnaf authoritiesnames.nt.madsrdf
</pre>
<p>I used 4 segments as a best guess to match the 4 EC2 compute units available to an m1.large. The only trouble was that after loading 90M of the 226M assertions it began to slow to a crawl as the memory was about used up. </p>
<p>I thought briefly about upgrading to a larger instance...but it occurred to me that I actually didn't need all the triples. I just need the ones related to the record changes, and the organization that made them. So I filtered out just the assertions I needed. By the way, this is a really nice artifact of the ntriples data format, which is very easy to munge with line oriented Unix utilities and scripting tools:</p>
<pre>
zcat authoritiesnames.nt.madsrdf.gz | egrep '(recordChangeDate)|(recordContentSource)|(recordStatus)'  > updates.nt
</pre>
<p>This left me with 50,313,810 triples which loaded in about 20 minutes! With the database populated I was then able to execute the following query to fetch all the create dates with their institution code using 4s-query:</p>
<pre>
@prefix ri: &lt;http://id.loc.gov/ontologies/RecordInfo#&gt; .

SELECT ?date ?source WHERE { 
  ?s ri:recordChangeDate ?date . 
  ?s ri:recordContentSource ?source . 
  ?s ri:recordStatus "new"^^&lt;http://www.w3.org/2001/XMLSchema#string&gt; . 
}
</pre>
<p>This returned a tab delimited file that looked something like:</p>
<pre>
"1991-08-16T00:00:00"^^&gt;http://www.w3.org/2001/XMLSchema#dateTime&gt;      &lt;http://id.loc.gov/vocabulary/organizations/dlc&gt;
"1995-01-07T00:00:00"^^&lt;http://www.w3.org/2001/XMLSchema#dateTime&gt;      &lt;http://id.loc.gov/vocabulary/organizations/djbf&gt;
"2004-03-04T00:00:00"^^&lt;http://www.w3.org/2001/XMLSchema#dateTime&gt;      &lt;http://id.loc.gov/vocabulary/organizations/nic&gt;
</pre>
<p>I then wrote a simplistic <a href="https://gist.github.com/3863082">python program</a> to read in the TSV file and output a table of data where each row represented a year and the columns were the institution codes. </p>
<h2 id="result">The Result</h2>
<p>If you'd like to see the table you can check it out as a <a href="https://www.google.com/fusiontables/DataSource?docid=1IcIRXt-H76hrGyGDc7P1ngQKDzgBkpmRXTXE1E8">Google Fusion Table</a>. If you are interested, you should be able to easily pull the data out into your own table, modify it, and visualize it. Google Fusion tables can be really easily rendered in a variety of ways, including a line graph, which I've embedded here, just displaying the top 25 contributors:</p>
<p><iframe width="600" height="400" scrolling="no" frameborder="no" src="https://www.google.com/fusiontables/embedviz?viz=GVIZ&amp;t=LINE&amp;gco_vAxes=%5B%7B%22title%22%3A%22%22%2C+%22minValue%22%3A0%2C+%22maxValue%22%3Anull%2C+%22useFormatFromData%22%3Atrue%2C+%22viewWindowMode%22%3A%22explicit%22%2C+%22viewWindow%22%3A%7B%22max%22%3Anull%2C+%22min%22%3A0%7D%7D%2C%7B%22useFormatFromData%22%3Atrue%2C+%22viewWindowMode%22%3A%22pretty%22%2C+%22viewWindow%22%3A%7B%22max%22%3Anull%2C+%22min%22%3Anull%7D%2C+%22minValue%22%3Anull%2C+%22maxValue%22%3Anull%7D%5D&amp;gco_curveType=function&amp;gco_booleanRole=certainty&amp;gco_lineWidth=2&amp;gco_hAxis=%7B%22useFormatFromData%22%3Atrue%2C+%22minValue%22%3Anull%2C+%22maxValue%22%3Anull%2C+%22viewWindow%22%3Anull%2C+%22viewWindowMode%22%3Anull%2C+%22title%22%3A%22Year%22%7D&amp;gco_legend=right&amp;gco_title=LCNAF+Records+Created&amp;gco_legendTextStyle=%7B%22color%22%3A%22%23222%22%2C+%22fontSize%22%3A%2210%22%7D&amp;containerId=gviz_canvas&amp;isXyPlot=true&amp;q=select+col0%2C+col1%2C+col2%2C+col3%2C+col4%2C+col5%2C+col6%2C+col7%2C+col8%2C+col9%2C+col10%2C+col11%2C+col12%2C+col13%2C+col14%2C+col15%2C+col16%2C+col17%2C+col18%2C+col19%2C+col20%2C+col21%2C+col22%2C+col23%2C+col24%2C+col25+from+1IcIRXt-H76hrGyGDc7P1ngQKDzgBkpmRXTXE1E8&amp;qrs=+where+col0+%3E%3D+&amp;qre=+and+col0+%3C%3D+&amp;qe=+order+by+col0+asc+limit+32&amp;width=600&amp;height=400"></iframe></p>
<p>While I didn't quite expect to see LC tapering off the way it is, I did expect it to dominate the graph. <a href="https://www.google.com/fusiontables/DataSource?docid=1kPtQOFcF6wY9FbbVAHZcCJIZTqgVSa1_X0IfAPs">Removing LC</a> from the mix makes the graph a little bit more interesting. For example you can see the steady climb of the British Library, and the strong role that Princeton University plays:</p>
<p><iframe width="600" height="400" scrolling="no" frameborder="no" src="https://www.google.com/fusiontables/embedviz?viz=GVIZ&amp;t=LINE&amp;gco_vAxes=%5B%7B%22title%22%3A%22Records%22%2C+%22minValue%22%3A0%2C+%22maxValue%22%3Anull%2C+%22useFormatFromData%22%3Atrue%2C+%22viewWindowMode%22%3A%22explicit%22%2C+%22viewWindow%22%3A%7B%22max%22%3Anull%2C+%22min%22%3A0%7D%7D%2C%7B%22useFormatFromData%22%3Atrue%2C+%22viewWindowMode%22%3A%22pretty%22%2C+%22viewWindow%22%3A%7B%22max%22%3Anull%2C+%22min%22%3Anull%7D%2C+%22minValue%22%3Anull%2C+%22maxValue%22%3Anull%7D%5D&amp;gco_curveType=function&amp;gco_booleanRole=certainty&amp;gco_lineWidth=2&amp;gco_hAxis=%7B%22useFormatFromData%22%3Atrue%2C+%22minValue%22%3Anull%2C+%22maxValue%22%3Anull%2C+%22viewWindow%22%3Anull%2C+%22viewWindowMode%22%3Anull%2C+%22title%22%3A%22Year%22%7D&amp;gco_legend=right&amp;gco_title=LCNAF+Records+Created+(No+LC)&amp;gco_legendTextStyle=%7B%22color%22%3A%22%23222%22%2C+%22fontSize%22%3A%2210%22%7D&amp;containerId=gviz_canvas&amp;isXyPlot=true&amp;q=select+col0%2C+col2%2C+col3%2C+col5%2C+col6%2C+col7%2C+col8%2C+col9%2C+col10%2C+col12%2C+col13%2C+col14%2C+col15%2C+col16%2C+col17%2C+col18%2C+col19%2C+col20%2C+col22%2C+col23%2C+col24%2C+col25%2C+col26%2C+col27%2C+col28%2C+col29%2C+col30+from+1kPtQOFcF6wY9FbbVAHZcCJIZTqgVSa1_X0IfAPs&amp;qrs=+where+col0+%3E%3D+&amp;qre=+and+col0+%3C%3D+&amp;qe=+order+by+col0+asc+limit+32&amp;width=600&amp;height=400"></iframe></p>
<p>Out of curiosity I then executed a SPARQL query for record updates (or revisions), repeated the step with stats.py, uploaded to <a href="https://www.google.com/fusiontables/DataSource?docid=1rVZNLnEWzCoSEj9jAs40ZX9WjJ25BnA0GYIuTUo">Google Fusion Tables</a>, and removed LC to better see trends in who is updating records:</p>
<pre>
@prefix ri: &lt;http://id.loc.gov/ontologies/RecordInfo#&gt; .

SELECT ?date ?source WHERE { 
  ?s ri:recordChangeDate ?date . 
  ?s ri:recordContentSource ?source . 
  ?s ri:recordStatus "revised"^^&lt;http://www.w3.org/2001/XMLSchema#string&gt; . 
}
</pre>
<p><iframe width="600" height="400" scrolling="no" frameborder="no" src="https://www.google.com/fusiontables/embedviz?viz=GVIZ&amp;t=LINE&amp;gco_vAxes=%5B%7B%22title%22%3A%22Records%22%2C+%22minValue%22%3A0%2C+%22maxValue%22%3Anull%2C+%22useFormatFromData%22%3Atrue%2C+%22viewWindowMode%22%3A%22explicit%22%2C+%22viewWindow%22%3A%7B%22max%22%3Anull%2C+%22min%22%3A0%7D%7D%2C%7B%22useFormatFromData%22%3Atrue%2C+%22viewWindowMode%22%3A%22pretty%22%2C+%22viewWindow%22%3A%7B%22max%22%3Anull%2C+%22min%22%3Anull%7D%2C+%22minValue%22%3Anull%2C+%22maxValue%22%3Anull%7D%5D&amp;gco_curveType=function&amp;gco_booleanRole=certainty&amp;gco_lineWidth=2&amp;gco_hAxis=%7B%22useFormatFromData%22%3Atrue%2C+%22minValue%22%3Anull%2C+%22maxValue%22%3Anull%2C+%22viewWindow%22%3Anull%2C+%22viewWindowMode%22%3Anull%2C+%22title%22%3A%22Year%22%2C+%22titleTextStyle%22%3A%7B%22color%22%3A%22%23222%22%2C+%22fontSize%22%3A%2212%22%2C+%22italic%22%3Atrue%7D%7D&amp;gco_legend=right&amp;gco_title=LCNAF+Records+Revised&amp;gco_legendTextStyle=%7B%22color%22%3A%22%23222%22%2C+%22fontSize%22%3A%2210%22%7D&amp;containerId=gviz_canvas&amp;isXyPlot=true&amp;q=select+col0%2C+col3%2C+col4%2C+col5%2C+col6%2C+col7%2C+col8%2C+col10%2C+col11%2C+col12%2C+col13%2C+col14%2C+col15%2C+col16%2C+col17%2C+col18%2C+col20%2C+col21%2C+col22%2C+col23%2C+col24%2C+col25%2C+col26%2C+col27%2C+col28%2C+col29%2C+col30+from+1rVZNLnEWzCoSEj9jAs40ZX9WjJ25BnA0GYIuTUo&amp;qrs=+where+col0+%3E%3D+&amp;qre=+and+col0+%3C%3D+&amp;qe=+order+by+col0+asc+limit+30&amp;width=600&amp;height=400"></iframe></p>
<p>I definitely never understood what <a href="http://en.wikipedia.org/wiki/Twin_Peaks">Twin Peaks</a> was about, and I similarly don't really know what the twin peaks in this graph signify (2000 and 2008). I guess these were years where there were a lot of coordinated edits? Perhaps some NACO folks who have been around for a few years may know the answer. You can also see in this graph that Princeton University plays a strong role in updating records as well as creating them.</p>
<p>So I'm not sure I understand the how/when/why of an NAAC any better, but I did learn:</p>
<ul>
<li>EC2 is a big win for quick data munging projects like this. I spent $0.98 with the instance up and running for 3 days.</li>
<li>Filtering ntriples files to what you actually need prior to loading into a triplestore can save time, money.</li>
<li>Working with ntriples is still pretty esoteric, and the options out there for processing a dump of ntriples (or rdf/xml) of LCNAF's size are truly slim. If I'm wrong about this I would like to be corrected.</li>
<li>Google Fusion Tables are a nice way to share data and charts.</li>
<li>It seems like while <a href="http://inkdroid.org/journal/2012/10/04/lcnaf-unix-hack/">more LCNAF records are being created per year</a>, they are being created by a broader base of institutions instead of just LC (who appear to be in decline). I think this is a good sign for NAAC.</li>
<li>Open Data, and Open Data Curators (thanks Kevin) are essential to open, collaborative enterprises.</li>
</ul>
<p>Now I could've made some hideous mistakes here, so in the unlikely event you have the time and inclination I would be interested to hear if you can reproduce these results. If the results confirm or disagree with other views of LCNAF participation I would be interested to see them.</p>
