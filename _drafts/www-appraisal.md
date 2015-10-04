---
layout: post
title: Computer Assisted Appraisal in Web Archives
---

## Computer Assisted Appraisal in Web Archives

In 2008 Google estimated that it had 1 trillion unique URLs in its index [@Alpert:2008]. When I looked today (7 years later) the [Internet Archive]'s home page announced that it has archived 438 billion Web pages. It's an astounding achievement, but the Web has certainly grown many times over since 2008. Also, note the difference in terminology: *URL* versus *Web page*. A Web page has a unique URL, or address, but the content of a Web page can change over time. It's important for archives to capture how Web pages change over time, so there are certainly duplicates included in the 438 billion Web pages that the Internet Archive has collected. If you ignore the duplicates and the fact that the Web has grown, it looks like Internet Archive has archived 37% of the Web. Of course this estimate is far too high.

As more and more information is made available on the Web how do we decide what to collect, and when? The Internet Archive's [Heritrix] bots walk from link to link on the Web archiving what they can. Members of the International Internet Preservation Consortium ([IIPC]) run their own crawls of specific parts of the Web: either country domains like the .uk top-level-domain, or specific websites that have been deemed within scope of their collection development policy. These policies inform the appraisal of whether particular Web content is deemed worth adding to an archive. Archivists are aware of how these appraisal decisions shape the archive over time, and by extension also shape what we know of our past. Appraisal, or deciding what to save, and what not to save, is difficult in the face of so much information.

This annotated bibliography provides a view into an emerging field of computer assisted appraisal in Web archives. How can computers assist archivists in the selection of content for archiving, and similarly how can archivists guide the appraisal of web content? There are a few themes that emerge in this brief survey: focused web crawling, memory


@Chakrabarti:1999

S. Chakrabarti, M. Van den Berg, and B. Dom. Focused crawling: a new approach to topic-specific web resource discovery. Computer Networks, 31(11):1623–1640, 1999.

@Jiang:2012

As more content goes on the Web researchers of all kinds are increasingly interested in analyzing the structures of web forums in order to extract structured data, question/answer pairs, product reviews and opinion mining. Forum crawling is non-trivial because of paging mechanisms that can result in lots of duplicate links (different URLs for the same thing) which can consume large amounts of time and resources. For example the researchers found that 47% of URLs listed in sitemaps and feeds were duplicates in a sample of 9 forums.

The article details a procedure for automatically detecting the structure of forum websites, and their URL types, in order to guide a crawler. The purpose is to save time, and improve coverage compared to breadth-first and other types of crawlers. The process is basically to automatically learn Index-Thread-Page-Flipping (ITF) regular expressions for identifying the types of pages in Web forums.

The researchers studied the structure of 40 different Web forum software platorms to find common patterns in page layout/structure as well as URL and page types. For example timestamps on pages in chronological and reverse chronological order are good indicators of thread and index pages respectively. Also, paging elements can be identified by noticing links with longer than usual URLs combined with short numeric anchor text. A training set for 4 different web forums was fed into a Support Vector Machine classifier, which was then used to generate ITF regular expressions for each site. 

To analyze the method they selected nine different types of forum software and ran three types of crawlers over them: generic crawler, entry point crawler and structure driven crawler. Measured effectiveness and coverage were reported for each combination. Results found that the structure driven crawler significantly outperformed the other types of crawlers. The authors note that these results have bearing on other types of similarly structured sites such as question/answer sites and blogs. They also hope to improve the 97% coverage by handling JavaScript paging mechanisms which were present in 2% of the forums tested.

On the surface this paper doesn't seem to have much to do with automated appraisal for Web archives. But the attention to detail in the structure of websites to improve efficiency and accuracy in the harvest could be quite important. Forums, blogs and question/answer sites are very common on the Web, and represent unique and high value virtual spaces where actual people congregate and share opinions on focused topics. As such they are likely candidates for appraisal. The ability to automatically identify forums on particular topics as part of a wider web crawl could be a significantly important feature when deciding where to focus archiving resources. In addition this work presents important heuristics for identifying duplicate content, which is important for knowing what not to collect, as we will see later in @Kanhabua:2013a.

@Gossen:2015

This paper draws upon a significant body of work into focused Web crawling and specifically work done as part of the ARCOMEM project. Gossen et al provide an important analysis of how the integration of social media streams, in this case Twitter, can significantly augment the freshness and relevance of archived Web documents. In addition they provide a useful description of their system and its open source technical components for others to build on their work.

The analysis centers on measuring relevancy and freshness of archived content in two contemporary web crawls related to the Ebola outbreak and the conflict in the Ukraine. In each case 4 different web crawls were run: unfocused, focused, Twitter-based and integrated. Each type of crawl begins with a seed URL and wanders outwards collecting more results. The focused crawl uses their own link prioritization queue to determine which pages get collected first. The Twitter based crawler simply crawls whatever URLs that are mentioned in relevant tweets from the Twitter API. The integrated crawler is a combination of the focused and Twitter based crawlers, and represents the main innovation of this paper.

The results show that the Twitter based search is able to return the freshest results, with the integrated crawler coming in second. However the integrated crawler performed best at returning the most relevant results. Freshness on the Web is difficult to measure since it involves knowing when a page was first published, and there isn't consitent metadata for that. They had some hueuristics for determining it, and eliminated pages from the study for which freshness couldn't be determined. The relevancy measure is also used by the prioritization queue, so in some ways I worried that relevancy was only measuring itself. But it is interesting that relevancy was improved while factoring in the Twitter stream. I think one area of related research that could build on this work is how feedback from archivists or curators could influence the system. 

@Yang:2012

Yang, S., Chitturi, K., Wilson, G., Magdy, M., and Fox, E. A. (2012). A study of automation from seed url generation to focused web archive development: the ctrnet context. In Proceedings of the 12th ACM/IEEE-CS joint conference on Digital Libraries, pages 341–342. Association for Computing Machinery.

This paper introduces the idea of using social media streams, in this case Twitter, to determine a list of seed URLs to archive in time sensitive situations such as natural disasters and other crises. In these time sensitive situations it is difficult for archivists to build a list of potential seed URLs to harvest, because of the large amount of new content in a very short time period. The goal was to prototype and test a system that could run with minimum human intervention. This was the first reference I could find of using Twitter in this way to augment web archiving, which was discussed more fully in @Gossen:2015.

The authors created a prototype Python Django application that manages the workflow of relevant tweets, to URL extraction, to web crawling with Heritrix, and the data extraction. The external service TwapperKeeper was used to collect the Twitter data, which is no longer available as a service today. Details about the data extraction did not seem to be included in the paper. The study used 5 different contemporary events to study the precision of the system: Virginia Tech shooting, Measles outbreak, a typhoon in the Philippines, Violence in Sudan, and Emergency Preparedness. The results showed that precision varied depending on the type of query used. In some cases a query picked up unrelated Web content because it was unintentionally broad. The paper mentioned a filtering component for reducing spam, but did not discuss it in detail. It also gives precision results without really discussing the method for obtaining the results. But there was a paster that accompanied the paper, so perhaps these details were there.

The paper does a nice job of introducing a new idea (social media streams in Web archiving) and sets the stage for future work in terms of how to filter out spam and measure precision. Similar to @Gossen:2015 it hints at future work that could integrate a archivist or curator who can influence the direction of the crawl as part of the process.

@Pereira:2014

P. Pereira, J. Macedo, O. Craveiro, and H. Madeira. Time-aware focused web crawling. In Advances in Information Retrieval, pages 534–539. Springer, 2014.

As discussed in @Gossen:2015 determining the time a Web page was published, or its freshness is difficult. The nature of the Web as a medium and its technical architecture necessitate the *nowness* of the Web: when you view a web page it is most likely being served directly from a Web server on the Internet, or perhaps an intermediary cache that has a sufficiently recent copy. However it is useful to be able to determine the age of a page, especially when ordering search results, and also for appraising a given web page in an archival setting.

Pereira discusses a technique for crawling the Web in a time-aware way. Most previous work on focused web crawling has primarily involved topic analysis (the text in the page and its similarity to the desired topic). This paper details a process for determining the age of a given Web page (temporal segmentation), and then integrating those results into a Web crawler's behavior (temporal crawling). 

The paper describes an experiment that compares the results of crawling two topics (World War 2 and September the 11th) by crawling outwards from Portuguese Wikipedia pages, using two different techniques (no time restriction) and a time restriction. The results indicate that the crawl with a time-restriction performs significantly better over time, however the shape of the results is somewhat different for each topic.

The authors admit that the results are preliminary, and that their project is a proof of concept. Unfortunately the authors don't appear to provide any source code for their prototype. It would be interesting to compare the time-based crawling with more traditional topic-based crawling, and perhaps consider a hybrid approach that would allow both approaches to be used in a single crawl.

@Dai:2010

@Lyle:2004

J. A. Lyle. Sampling the umich. edu domain. In 4th International Web Archiving Workshop, Bath, UK, volume 2, 2004.

@Kenney:2002

A. R. Kenney, M. Nancy, P. Botticelli, R. Entlich, C. Lagoze, and S. Payette. Preservation risk management for web resources: Virtual remote control in Cornell’s project prism. D-Lib Magazine, 8(1), January 2002.

@Kanhabua:2013a

N. Kanhabua, C. Nieder ́ee, and W. Siberski. Towards concise preservation by managed forgetting: Research issues and case study. In Proceedings of the 10th International Conference on Preservation of Digital Objects, iPres, volume 2013, 2013.

Appraisal is often thought about in terms of what artifacts to preserve or save for the future. But implicit in every decision to save is also a decision not to forget. Consequently, it's also possible to look at appraisal as decisions about about what can be forgotten. In this paper Kanhabua and her colleagues at the L3S Research Center investigate processes for making these types of decisions which they call *managed forgetting* which is materialized in the form of *forgetting actions* such as aggregation, summarization, revised search, ranking behavior, elimination of redundancy and deletion. 

The article provides a useful entrance point into the literature about human memory in the field of cognitive psychology. It also highlights several jumping off points for HCI discussions about designing systems and devices for managing memory. But the primary focus of the paper is on the interaction between information management systems and archival information systems: the first which is used to access information, and the second being the stores of content that can be accessed. 

In order to describe how the act of forgetting is evidenced in these systems they used historical snapshots of public bookmarks available in the [BibSonomy] social bookmarking tool. The 15 BibSonomy snapshots taken at different periods of time provide a view into when users have chosen to bookmark a particular resource, as well as when that resource has been deleted. Their analysis determined that there was a correlation between a users delete ratio and the number of bookmarks they created, but not between the users delete ratio and the total number of bookmarks they possessed. 

The paper admits that they are still in a very early phase of research into the idea of *managed forgetting*. I think the paper does a nice job of articulating why this way of looking at appraisal systems matters, and providing an example of one possible study that could be done in this area. I think it would have been useful to discuss a little bit more about how the choice of BibSonomy as a platform to study could potentially influence (but not invalidate) the results. It would be interesting to take another social bookmarking site like Pinboard or Digg and see if a similar correlation holds. The implications of managed forgetting for building digital preservation and access systems seems like a very viable area of research, and I hope to see more from them.

@Banos:2013

Banos, V., Kim, Y., Ross, S., and Manolopoulos, Y. (2013). CLEAR: a credible method to evaluate website archivability. International Journal on Digital Libraries, pages 1–23.

CLEAR stands for Credible Live Evaluation of Archive Readiness which is a process for measuring *website archivability* of a particular web resource. The paper provides a method for generating an archivability score based on a set of five *archivability facets*: accessibility, standards compliance, cohesion, performance and metadata.  The authors created a working prototype called [ArchiveReady] that you can find on the Web and use to evaluate Websites manually or automatically with their API.

The motivation for the work on CLEAR was traced back to previous work in New Zealand on the Web Curator Tool (WCT) and in the UK on the Web At Risk project which made quality assurance part of the archiving process. Quality assurance was found to be particularly time consuming, and consequently slowed down the work of timely archiving. Banos et al. goal with CLEAR is to provide a measure of archivability that allow archivists to select a quality threshold under which Web content would be deemed worthy of accessioning. 

The paper includes useful details about the technical system: Python, Flask, Backbone and MySQL for the Web application, Redis for managing parallel processing and JHOVE for file identification. In addition the precise formula for generating the CLEAR metric was clearly described. What would have been nice would be an analysis of CLEAR results compared with quality assurance results from a human curator. It would be interesting to see if they are correlated, and also what likely threshold values could be set to.

@Brunelle:2013

Brunelle, J. F., Kelly, M., Weigle, M. C., and Nelson, M. L. (2013). The impact of JavaScript on archivability. International Journal on Digital Libraries, pages 1–23.

@SalahEldeen:2013

SalahEldeen, H. M. and Nelson, M. L. (2013). Carbon dating the web: estimating the age of web resources. In Proceedings of the 22nd international conference on World Wide Web companion, pages 1075–1082. International World Wide Web Conferences Steering Committee.

@Brunelle:2014a

J. F. Brunelle, M. Kelly, H. SalahEldeen, M. C. Weigle, and M. L. Nelson. Not all mementos are created equal: measuring the impact of missing resources. In Proceedings of the 14th ACM/IEEE-CS Joint Conference on Digital Libraries, pages 321–330. IEEE Press, 2014.



[Heritrix]: https://en.wikipedia.org/wiki/Heritrix
[IIPC]: http://netpreserve.org
[BibSonomy]: http://www.bibsonomy.org/
[CTRNet]: http://ctrnet.net/
[CLEAR]: http://archiveready.com/