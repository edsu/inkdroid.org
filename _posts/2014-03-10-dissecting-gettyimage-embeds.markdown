---
layout: post
status: publish
published: true
title: Dissecting GettyImage Embeds
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 7250
wordpress_url: http://inkdroid.org/journal/?p=7250
date: '2014-03-10 02:23:04 +0000'
date_gmt: '2014-03-10 09:23:04 +0000'
tags: []
comments:
- id: 86879
  author: 'Resource: Getty Images Available for Embedding | Digital Humanities Now'
  author_email: ''
  author_url: http://digitalhumanitiesnow.org/2014/03/resource-getty-images-available-for-embedding/
  date: '2014-03-11 11:31:26 +0000'
  date_gmt: '2014-03-11 18:31:26 +0000'
  content: |
    [&#8230;] Editors&#8217; Note: You also may be interested in Ed Summer&#8217;s overview of what happens when you embed a Getty Image. [&#8230;]
---

<p>Yes, GettyImages have decided to <a href="http://en.blog.wordpress.com/2014/03/06/embed-support-getty-images/">encourage</a> people to embed their images. Despite <a href="http://www.poststat.us/getty-images-now-free-embed/">opinions to the contrary</a> I think this is A Good Thing. So what happens when you embed a Getty image into your HTML? To get something like this in your page:</p>
<p><iframe src="//embed.gettyimages.com/embed/81901686?et=4td6Xm2f0k6pMgQVX7pNFA&sig=fhRom4eoepnZbyWjZ0_2N3SdVG1dxQTC2GUAK4XrPjg=" width="462" height="440" frameborder="0" scrolling="no"></iframe></p>
<p>you need to include a little snippet of HTML in your pages:</p>
<pre>&lt;iframe src="//embed.gettyimages.com/embed/81901686?et=4td6Xm2f0k6pMgQVX7pNFA&sig=fhRom4eoepnZbyWjZ0_2N3SdVG1dxQTC2GUAK4XrPjg=" width="462" height="440" frameborder="0" scrolling="no"&gt;&lt;/iframe&gt;
</pre>
<p>which in turn embeds this HTML into your page:</p>
<pre>&lt;!DOCTYPE html&gt;
&lt;html&gt;
  &lt;head&gt;
    &lt;base target="_parent" /&gt;
    &lt;title&gt;20 - 30 year old female worker pulls box off of warehouse shelf [Getty Images]&lt;/title&gt;
    &lt;meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /&gt;
    &lt;!--[if lt IE 10]&gt;
    &lt;script src="//html5shiv.googlecode.com/svn/trunk/html5.js"&gt;&lt;/script&gt;
    &lt;![endif]--&gt;
  &lt;/head&gt;
  &lt;body&gt;
  &lt;link rel="stylesheet" type="text/css" href="//embed.gettyimages.com/css/style.css" /&gt;
&lt;section id="embed-body" data-asset-id="81901686" data-collection-id="41"&gt;
  &lt;a href="http://gty.im/81901686" target="_blank"&gt;&lt;img src="http://d2v0gs5b86mjil.cloudfront.net/xc/81901686.jpg?v=1&c=IWSAsset&k=2&d=F5B5107058D53DF50D8BA2399504758256BF753C679B89B417A38C0E9F1FBB9F&Expires=1394499600&Key-Pair-Id=APKAJZZHJ4LGWQENK3OQ&Signature=UC1YXxhGwSAY0BduwMZqnFQ7fcAQTdCksDvYu4WVmNWlTou7NktH7rZ8uk7BLbupJ4sp0ijiDaA93Yi2XijnC-TtcUO1Kylcew4nZpM~Al9jD0OSfx5yNe7jcIalweGpLGOdMLTXn0wRs6XfEh3~1fc~csMrAesHJkUayhBqNxo6Xja-35XQLx98d5fg6UXazOsCRT-UzebWA4dFURz~BSxXgq0RtU~LhKVKRZvkUTvl2RrsqBcN4bW3i~dbNMwHKn~7s9dMy5CxH-7k4ELyJaBClWEO2Jgr5WV9cXy~WGBQnNd-5Lb7CMcZclzn88-LbmDnFcO~BVLgtSU5x-KTpw__" /&gt;&lt;/a&gt;
  &lt;footer&gt;
    &lt;ul class="meta"&gt;
      &lt;li class="gi-logo icon icon-logo"&gt;&lt;/li&gt;
      &lt;li&gt;Bob O&#39;Connor / Stone&lt;/li&gt;
    &lt;/ul&gt;
    &lt;ul class="reblog"&gt;
      &lt;li&gt;
        &lt;a href="//twitter.com/share" title="Share on Twitter" class="twitter-share-button" data-lang="en" data-count="none" data-url="http://gty.im/81901686"&gt;&lt;/a&gt;        
      &lt;/li&gt;
      &lt;li&gt;
        &lt;a class="icon-tumblr" target="_self" title="Share on Tumblr" href="//www.tumblr.com/share/video?embed=%3Ciframe%20src%3D%22%2f%2fembed.gettyimages.com%2fembed%2f81901686%3fet%3d4td6Xm2f0k6pMgQVX7pNFA%26sig%3dfhRom4eoepnZbyWjZ0_2N3SdVG1dxQTC2GUAK4XrPjg%3d%22%20width%3D%22462%22%20height%3D%22440%22%20frameborder%3D%220%22%20%3E%3C%2Fiframe%3E"&gt;&lt;/a&gt;
      &lt;/li&gt;
      &lt;li&gt;
        &lt;a href="javascript:void(0);" title="Re-embed this image"&gt;&lt;i class="icon-code"&gt;&lt;/i&gt;&lt;/a&gt;
      &lt;/li&gt;
    &lt;/ul&gt;
  &lt;/footer&gt;
&lt;/section&gt;
  &lt;aside class='modal embed-modal' style='display: none;'&gt;
  &lt;div class='contents'&gt;
    &lt;a class="icon modal-close icon-close" href="#close" title="Close"&gt;&lt;/a&gt; 
    &lt;span id="re-embed-body"&gt;
      &lt;h3&gt;Embed this image&lt;/h3&gt;
      &lt;p&gt;Copy this code to your website or blog. &lt;a href="http://www.gettyimages.com/helpcenter" target="_blank" id="learn-more"&gt;Learn more&lt;/a&gt;&lt;/p&gt;
      &lt;p class="commercial-use"&gt;
        Note: Embedded images may not be used for commercial purposes.&lt;/p&gt;        
      &lt;p id="embed-link"&gt;
        &lt;textarea&gt;&lt;/textarea&gt;&lt;/p&gt;
      &lt;p class="terms"&gt;
        By embedding this image, you agree to Getty Images
        &lt;a href="http://www.gettyimages.com/corporate/terms.aspx" target="_blank"&gt;terms of use&lt;/a&gt;.&lt;/p&gt;
    &lt;/span&gt;
  &lt;/div&gt;
&lt;/aside&gt;
&lt;script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/script/embed.js"&gt;&lt;/script&gt;
    &lt;script src="//platform.tumblr.com/v1/share.js"&gt;&lt;/script&gt;
    &lt;script src="//platform.twitter.com/widgets.js"&gt;&lt;/script&gt;
  &lt;/body&gt;
&lt;/html&gt;</pre>
<p>You can see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html">Amazon's CloudFront</a> is being used as a CDN for the images, and that Getty are using CloudFront's <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-signed-urls-overview.html">Signed URLs</a> to expire the images...it looks like after 24 hours? This isn't a problem because Getty are serving the page up, but anyone that's tried to snag the image URL for reuse (Google Images?) will end up getting a 400 error.</p>
<p>I thought it was interesting that the embedded iframe gives you not only the image, author and collection, but also links to re-share the image on Twitter and Tumblr. I guess this is Viral Marketing 101, but it's smart I think, since it encourages reuse, and the recycling of content on the Web. Conspicuously absent from the reshare buttons is Facebook -- maybe there's a story there? Also, as we'll see in a second, the description of the image is missing from the embedded view:</p>
<blockquote>
<p>20 - 30 year old female worker pulls box off of warehouse shelf</p>
</blockquote>
<p>Of course the other big thing the iframe does is gives Getty an idea of where their content is being used. Anyone who uses this one line embed iframe will trigger an HTTP request to a embed.gettyimages.com URL (hosted on Amazon EC2 incidentally). These requests, and their referral information can be stashed away and analyzed, so that Getty can get a picture of who is using their content, and how. Embedded images and the Twitter and Tumblr reshares are automatically linked to Getty's specific short URLs, such as:</p>
<blockquote>
<p>http://gty.im/81901686</p>
</blockquote>
<p>The number used in the short URL is also used in the expanded URL:</p>
<blockquote>
<p>http://www.gettyimages.com/detail/photo/year-old-female-worker-pulls-box-off-of-high-res-stock-photography/81901686</p>
</blockquote>
<p>But the title text is just there for SEO, it can be changed to anything:</p>
<blockquote>
<p>http://www.gettyimages.com/detail/photo/wikileaks-storage-annex/81901686</p>
</blockquote>
<p>Ordinarily I'd be down on the use of a short URL, but in this case it's role is more of a permalink. Of course these short URLs have the same problem as Handles and PURLs in that people won't ordinarily bookmark them. But, <a href="http://www.youtube.com/watch?v=xZbKHDPPrrc&amp;feature=kp">Que Sera Sera</a>. As the Verge <a href="http://www.theverge.com/2014/3/5/5475202/getty-images-made-its-pictures-free-to-use">pointed out</a> these embedded iframes could end up depriving Web content of lead images, if the GettyImages decides to pull the plug on the embeds and they suddenly 404. But their credibility would suffer quite a bit by a decision like that. I think it's important that they are encouraging the Web to rely on these URLs, and that they are putting their reputation on the line.</p>
<p>Of course lots of inbound links to those pages should do wonders for their <a href="http://en.wikipedia.org/wiki/PageRank">PageRank</a>. Plus, following that link allows you to purchase the image, explore other images by the photographer, related images in the GettyImages collection, as well as see some additional metadata about the photo: item number, rights, license type, original file dimensions, size, dots-per-inch. Some of this metadata is even expressed using RDFa (Facebook's OpenGraph metadata) ... which makes the lack of a Facebook share button even more interesting. In addition there is also some minimal use of schema.org HTML microdata for the search engine's to nibble on. If you are curious, Google's Structured Data Testing Tool provides <a href="http://www.google.com/webmasters/tools/richsnippets?q=http%3A%2F%2Fwww.gettyimages.com%2Fdetail%2Fphoto%2Fyear-old-female-worker-pulls-box-off-of-high-res-stock-photography%2F81901686%3Fsuri%3D1">a view</a> on this metadata.</p>
<p>It seems like there's an opportunity to express more information in RDFa or microdata, specifically the details about the original, as well as licensing/rights metadata. Oddly the RDFa doesn't even mark up the author of the image, I suppose because <a href="https://developers.facebook.com/docs/opengraph/howtos/maximizing-distribution-media-content">Facebook's OpenGraph</a> doesn't give a way of expressing it. They could start by marking up the author of the image, but what if Getty established photographer pages, so instead of Bob O'Connor linking to:</p>
<blockquote>
<p>http://www.gettyimages.com/search/2/image?artist=Bob+O%27Connor&amp;family=Creative</p>
</blockquote>
<p>What if it linked to a vanity URL like:</p>
<blockquote>
<p>http://www.gettyimages.com/people/bob-oconnor</p>
</blockquote>
<p>This would be a perfect place to share links to author's other social media accounts, a bio, their photographer friends, etc. I'm thinking of the sort of work that National Geographic are doing with their <a href="http://yourshot.nationalgeographic.com/">YourShot</a> application, for example <a href="http://yourshot.nationalgeographic.com/profile/147353/">this Profile page</a> for Bahareh Mohamadian.</p>
<p>The licensing restrictions and iframes around these images would have ordinarily turned me off. But given Getty's market position in this space it's completely understandle, and seems like a useful compromise for now. These landing pages are a perfect place to make more structured metadata available that could be used by integrating applications. Getty should invest in this real estate, not only for the Web, but also for data resuse across their enterprise. The landing pages are an example of just how influential Facebook and Google have been in promoting the use of metadata on the Web. Without them, I think it is safe to assume we wouldn't have seen any structured metadata on these pages at all.</p>
