---
layout: post
status: publish
published: true
title: preserving linked data
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 6171
wordpress_url: http://inkdroid.org/journal/?p=6171
date: '2013-09-30 20:56:27 +0000'
date_gmt: '2013-10-01 03:56:27 +0000'
tags:
- linked-data
- digital-preservation
- dns
- web-archives
- memento
comments:
- id: 86583
  author: jprante
  author_email: joergprante@gmail.com
  author_url: ''
  date: '2013-10-01 01:24:15 +0000'
  date_gmt: '2013-10-01 08:24:15 +0000'
  content: |
    <p>While I really love the Internet Archive, this approach won't scale if everybody wants to access http://web.archive.org/... in case of failures or outages.</p>
    <p>Some failures may be temporary or non-fatal and some will implement Internet Archive as fallback for every kind of situations while others won't.</p>
    <p>As a result, the challenge of coping with failures and outages is just moved over to the Internet Archive team. This will surely work because he team is very clever, but only if the Internet  Archive team is guaranteed to perform well for a long time, as it does today.</p>
    <p>Same for Wikipedia.</p>
    <p>Here is my idea.</p>
    <p>My approach wouldn't depend on other institutions. It uses namespace prefixes and a mechanism of "local resolution" of URIs with lots of caches distributed over the web.</p>
    <p>Here is how this works: Every URI should be imported to local systems by transforming them to compact URIs (or CURIEs http://en.wikipedia.org/wiki/CURIE.</p>
    <p>My Linked Data Co-Location (LDCL) rules are:</p>
    <p>Never import full URIs into your triple stores. Select a preferred namespace prefix. Transform URIs to CURIEs in your triples. Save the map of namespace prefixes you used into your triple store configuration.
    When triples are exported in responses, transform the CURIEs back to URIs according to configured namespaces for CURIE to URI resolution.
    Copy/mirror the domains you use regularly to a local domain near your triple store and add this cache to your triple store's URI/CURIE resolver. Use this cache first. If you get cache misses, check out other remote sources, and at last, the original source.
    Publish your local CURIE cache so others can access it for reading. Provide the cache as timestamped linked open data in bulks. For example, using the BitTorrent protocol or CDN mechanisms might help to move snapshots of caches over the wire.
    Maintain priority lists of remote sources, build a trust network of CURIE caches, update them regularly.</p>
    <p>I know, my idea means adding a new functionality to existing Linked Data platforms. But I think it's worth it.</p>
    <p>Best,</p>
    <p>Jörg</p>
- id: 86584
  author: Chris Adams
  author_email: chris@improbable.org
  author_url: https://www.google.com/accounts/o8/id?id=AItOawnjYt4eA4hzgDgYRfMpqMFitgKISVvzTc8
  date: '2013-10-01 11:16:41 +0000'
  date_gmt: '2013-10-01 18:16:41 +0000'
  content: |
    There are two ideas which seem worth exploring. One would simply be seeing whether the <a href="http://www.coralcdn.org/overview/" rel="nofollow">CoralCDN</a> crowd would be interested in extending their DHT to include temporal information, which opens this really interesting prospect of making the web archive aspect almost transparent to the public.
    The more pragmatic idea, however, which I find increasingly intriguing is whether you could simply use BitTorrent to basically publish the list of domains archived by a particular organization, making it trivial to distribute very large lists and allow new players to volunteer their content without requiring prior gatekeeper approval. That becomes particularly interesting when you consider that non-mainstream groups might start wanting to take control of their collective history – imagine a few decades hence when the people who were involved with Occupy Wall Street want to do the equivalent of <a href="https://twitter.com/mkirschenbaum/status/385064104764788736" rel="nofollow">what the AFL-CIO just did in being able to donate their history</a> to a library so future historians have a more complete copy of some incredibly ephemeral media.
    Obviously you'd still need to tackle the question of trustworthiness but something as simple as a ZIP file containing a text file listing domains and a PGP signature would make it easy to allow users to decide who to trust and still make it very straight forward to protect against a single point of failure. It'd also have the nice characteristic of making minimal demands on the implementation stack and bringing a lot of battle-tested network code, with significant precedent for browser integration (e.g. Opera has native BitTorrent support) which would be really nice for closing the final loop by allowing clients to deeply integrate Memento support.
    (There's some precedent for deeper integration into a server stack, too: <a href="http://codeascraft.com/2012/01/23/solr-bittorrent-index-replication/" rel="nofollow">Etsy famously uses BitTorrent to distribute Solr indices more efficiently</a>, which would be a really interesting way to bootstrap new TimeGate servers efficiently)
- id: 86614
  author: christophe-gueret.myopenid.com/
  author_email: ''
  author_url: http://christophe-gueret.myopenid.com/
  date: '2013-10-14 04:55:54 +0000'
  date_gmt: '2013-10-14 11:55:54 +0000'
  content: |
    Interesting blog post and conversation! Having several copies of the same content would indeed be the most reliable solution, and Bittorrent could be an interesting way to share content and/or indexes.
    Staying close to what has been done on the Web so far, could we maybe also pick some ideas from the research done against the so-called "Slashdot effect" ? I remember having read some years ago (&gt; 10) a paper that was about redirecting server queries to client machines that browse the site earlier. This sounded like a workable solution: the more you have people browsing, the more you get content providers (assuming these clients accept to play that role and stay up). There has surely more work that has been done on this topic over the past decade, maybe something worth checking out...
- id: 86616
  author: On the use of HTTP URIs and the archiving of Linked Data - Knowledge Representation
    and Reasoning Group
  author_email: ''
  author_url: http://krr.cs.vu.nl/2013/10/on-the-use-of-http-uris-and-the-archiving-of-linked-data/
  date: '2013-10-15 01:07:27 +0000'
  date_gmt: '2013-10-15 08:07:27 +0000'
  content: |
    [&#8230;] Summer wrote a blog post [12] recently in which he explains how &#8216;traditional&#8217; Web archiving may be used for LD [&#8230;]
- id: 86617
  author: preserving linked data | modemlab
  author_email: ''
  author_url: http://modemlab.wordpress.com/2013/10/12/preserving-linked-data/
  date: '2013-10-15 01:10:26 +0000'
  date_gmt: '2013-10-15 08:10:26 +0000'
  content: |
    [&#8230;] See on inkdroid.org [&#8230;]
- id: 86648
  author: Chris Adams
  author_email: chris@improbable.org
  author_url: https://www.google.com/accounts/o8/id?id=AItOawnjYt4eA4hzgDgYRfMpqMFitgKISVvzTc8
  date: '2013-10-29 07:12:24 +0000'
  date_gmt: '2013-10-29 14:12:24 +0000'
  content: |
    I agree that it would be really interesting to explore client caches but trust is such a problem, particularly given how much more organized and advanced attackers are today.
    The easiest solution would be a well-reputed third-parties like Google, the Internet Archive, etc. were willing to publish content hashes from earlier retrievals but that runs into problems if they didn't get a copy before the server goes down. It would be interesting to see whether you could run a service where browsers publish hashes and you try to have some sort of majority consensus but it'd be easy to game without strict oversight – someone with a botnet could cast a LOT of votes for their trojaned version of the page they just DDoS-ed.
    What could work quite well would be requiring crypto – if the protocol required a signed content signature and the browser would perform the standard origin checks, the response could be trusted even if it came from an unknown source. The catch would be that this would either require HTTPS or at least one of the HTTP signature proposals using either HTTPS-style x509 or something like a public key published in DNS (preferably with DNSSEC), both of which would require some changes by content providers even if it's arguably work they should be doing anyway.
---

<p>Earlier this morning <a href="https://twitter.com/geckomarma">Martin Malmsten</a> of the <a href="http://www.kb.se/">National Library of Sweden</a> asked an interesting question on Twitter:</p>
<blockquote class="twitter-tweet">
<p>
    Do you need help hosting your LOD somewhere else? Could be a valuable excercise in LOD stability <a href="http://t.co/FlOT5KqZXn">http://t.co/FlOT5KqZXn</a> <a href="https://twitter.com/3windmills">@3windmills</a> <a href="https://twitter.com/edsu">@edsu</a>
  </p>
<p>— Martin Malmsten (@geckomarma) </p>
<p>  <a href="https://twitter.com/geckomarma/statuses/384655483040448512">September 30, 2013</a>
</p></blockquote>
<p><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script> Martin was asking about the <a href="http://linkeddata.org/">Linked Open Data</a> that the Library of Congress <a href="http://wiki.dublincore.org/index.php/Vocabulary_Preservation_discussion_paper">publishes</a>, and how the potential shutdown of the US Federal Government could result in this data being unavailable. If you are interested, <a href="https://twitter.com/geckomarma/statuses/384655483040448512">click through to the tweet</a> and take a minute to scan the entire discussion.</p>
<p>Truth be told, I'm sure that many could live without the <a href="http://id.loc.gov/authorities/subjects.html">Library of Congress Subject Headings</a> or <a href="http://id.loc.gov/authorities/names.html">Name Authority File</a> for a day or two...or honestly even a month or two. It's not like this data's currency is essential to the functioning of society, like financial, weather or space data, etc. But Martin's point is that it raises an interesting general question about the longevity of Linked Open Data, and how it could be made more persistent.</p>
<p>In case you are new to it, a key feature of Linked Data is that it uses the URL to allow a <em>distributed</em> database to grow organically on the Web. So, in practice, if you are building a database about books, and you need to describe the novel Moby Dick, your description doesn't need to include everything about Herman Melville. Instead it can assert that the book was authored by an entity identified by the URL</p>
<blockquote>
<p><a href="http://id.loc.gov/authorities/names/n79006936">http://id.loc.gov/authorities/names/n79006936</a></p>
</blockquote>
<p>When you resolve that URL you can get back data about Herman Melville. For pragmatic reasons you may want to store some of that data locally in your database. But you don't need to store all of it. If you suspect it has been updated, or need to pull down more data you simply fetch the URL again. But what if the website that minted that URL is no longer available? Or what if the website is still available but the original DNS registration expired, and someone is <a href="https://en.wikipedia.org/wiki/Cybersquatting">cybersquatting</a> on it?</p>
<p>Admittedly some work has happened at the Dublin Core Metadata Initiative around the <a href="http://wiki.dublincore.org/index.php/Vocabulary_Preservation_discussion_paper">preservation of Linked Data vocabularies</a>. The DCMI is taking a largely social approach to this problem, where vocabulary owners and memory institutions interact within the context of a particular trust framework centered on DNS. But the preservation of vocabularies (which are also identified with URLs) is really just a subset of the much larger problem of Web preservation more generally. Does web preservation have anything to offer for the preservation of Linked Data?</p>
<p>When reading the conversation Martin started I was reminded of a demo my colleague <a href="http://twitter.com/acdha">Chris Adams</a> gave that showed how the <a href="http://wdl.org">World Digital Library</a> item metadata can be retrieved from the Internet Archive. WDL embed item metadata as <a href="http://www.whatwg.org/specs/web-apps/current-work/multipage/microdata.html">microdata</a> in their HTML, and since the Internet Archive archives that HTML, you can get the metadata back from the Internet Archive.</p>
<p>So take this page from WDL:</p>
<p><a href="http://www.wdl.org/item/2/"><img src="http://inkdroid.org/images/wdl-item.png" alt="Chola Woman" /></a></p>
<p>It turns out this particular page has been archived by the <a href="http://web.archive.org/web/20130605205647/http://www.wdl.org/en/item/2/">Internet Archive</a> 27 times. So with a few lines of Python you can use Internet Archive as a metadata service:</p>
<pre lang="python">import urllib 
import microdata

url = "http://web.archive.org/web/20130605205647/http://www.wdl.org/en/item/2/"
resp = urllib.urlopen(url)
items = microdata.get_items(resp)
print items[0].json() 
</pre>
<p>which yields:</p>
<pre lang="javascript">{
  "name": [
    "Chola Woman, Full-Length Portrait, Standing, Facing Right, La Paz, Bolivia"
  ], 
  "creator": [
    {
      "additionalType": [
        "http://viaf.org/viaf/"
      ], 
      "type": "http://schema.org/Person", 
      "name": [
        "Vargas, Max T., 1874\u20131959"
      ]
    }
  ], 
  "url": [
    "http://hdl.loc.gov/loc.wdl/dlc.2"
  ], 
  "image": [
    "/web/20130605205647im_/http://content.wdl.org/2/thumbnail/308x255.jpg", 
    "/web/20130605205647/http://www.wdl.org/media/2.png"
  ], 
  "dateCreated": [
    "1911"
  ], 
  "provider": [
    {
      "type": "http://schema.org/Organization", 
      "name": [
        "Library of Congress"
      ]
    }
  ], 
  "keywords": [
    "Social sciences", 
    "Customs, etiquette & folklore", 
    "Costume & personal appearance", 
    "Portrait photographs", 
    "Women"
  ], 
  "type": "http://schema.org/ItemPage", 
  "contentLocation": [
    {
      "type": "http://schema.org/Place", 
      "address": [
        {
          "addressCountry": [
            "Bolivia"
          ], 
          "addressLocality": [
            "La Paz"
          ], 
          "type": "http://schema.org/PostalAddress"
        }
      ]
    }
  ], 
  "description": [
    "This photograph of a Bolivian woman is from the Frank and Frances Carpenter Collection at the Library of Congress. Frank G. Carpenter (1855-1924) was an American writer of books on travel and world geography whose works helped to popularize cultural anthropology and geography in the United States in the early years of the 20th century. Consisting of photographs taken and gathered by Carpenter and his daughter Frances (1890-1972) to illustrate his writings, the collection includes an estimated 16,800 photographs and 7,000 glass and film negatives. Max T. Vargas, a noted Peruvian photographer and postcard publisher who worked in La Paz, Bolivia, in the early part of the 20th century, took the photograph."
  ]
}

</pre>
<p>Similarly you can get the <a href="http://id.loc.gov/authorities/names/n79006936">LC Name Authority record for Herman Melville</a> from the Internet Archive using the RDFa that is embedded embedded in the page:</p>
<pre lang="python">import rdflib

g = rdflib.Graph()
url = "http://web.archive.org/web/20130614192231/http://id.loc.gov/authorities/names/n79006936.html"
g.parse(url, format="rdfa")
print g.serialize(format="turtle")
</pre>
<p>which yields:</p>
<pre lang="turtle" style="height: 500px;">@prefix cs: &lt;http://www.w3.org/2003/06/sw-vocab-status/ns#> .
@prefix dcterms: &lt;http://purl.org/dc/terms/> .
@prefix madsrdf: &lt;http://www.loc.gov/mads/rdf/v1#> .
@prefix owl: &lt;http://www.w3.org/2002/07/owl#> .
@prefix rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#> .
@prefix ri: &lt;http://id.loc.gov/ontologies/RecordInfo#> .
@prefix skos: &lt;http://www.w3.org/2004/02/skos/core#> .
@prefix skosxl: &lt;http://www.w3.org/2008/05/skos-xl#> .
@prefix xhv: &lt;http://www.w3.org/1999/xhtml/vocab#> .
@prefix xml: &lt;http://www.w3.org/XML/1998/namespace> .
@prefix xsd: &lt;http://www.w3.org/2001/XMLSchema#> .

&lt;http://id.loc.gov/authorities/names/n79006936> dcterms:created "1979-01-31T00:00:00" ;
    dcterms:modified "2012-09-13T07:47:36" ;
    dcterms:source "His Typee ... 1846. ",
        "His Pierre, or, The ambiguities ... c1984: t.p. (Herman Meville)"@en,
        "Jeney, Z. Monody, c1983: t.p. (Hermann Melville)"@en,
        "Mobi Diá¸³, 1951 or 1951: t.p. (Herman Melá¹¿il)"@en,
        "Pai ching, 1990 (1992 printing): t.p. (Ho-erh-man Mai-erh-wei-erh, of U.S.) t.p. verso, etc. (Herman Melville [in rom.]; b. 1819, NY; d. 9-27-1891, NY)"@en,
        "The enchanted isles, 2002: p. vii (first published in 1854 The encantadas, or, Enchanted isles by Salvator R. Tarnmoor)"@en,
        "Theory of the American novel, 1970: p.71 (Hawthorne and his mosses, by a Virginian spending July in Vermont [i.e. Herman Melville])"@en,
        "To Kampanario, c1994: t.p. (Cherman Melvil)"@en,
        "Wikipedia, 1 September 2010 (Herman Melville occupations: novelist, short story writer, teacher, sailor, lecturer, poet, customs inspector)"@en ;
    madsrdf:adminMetadata [ a ri:RecordInfo,
                cs:ChangeSet ;
            ri:recordChangeDate "2012-09-13T07:47:36" ;
            ri:recordStatus "revised" ;
            cs:changeReason "revised" ;
            cs:createdDate "2012-09-13T07:47:36" ],
        [ a ri:RecordInfo,
                cs:ChangeSet ;
            ri:recordChangeDate "1979-01-31T00:00:00" ;
            ri:recordStatus "new" ;
            cs:changeReason "new" ;
            cs:createdDate "1979-01-31T00:00:00" ] ;
    madsrdf:authoritativeLabel "Melville, Herman, 1819-1891"@en ;
    madsrdf:classification "PS2380-PS2388" ;
    madsrdf:editorialNote "[Machine-derived non-Latin script reference project.]",
        "[Non-Latin script references not evaluated.]" ;
    madsrdf:hasSource [ a madsrdf:Source ;
            madsrdf:citation-note "t.p. (Herman Melá¹¿il)"@en ;
            madsrdf:citation-source "Mobi Diá¸³, 1951 or 1951:" ;
            madsrdf:citation-status "found" ],
        [ a madsrdf:Source ;
            madsrdf:citation-note "(Herman Melville occupations: novelist, short story writer, teacher, sailor, lecturer, poet, customs inspector)"@en ;
            madsrdf:citation-source "Wikipedia, 1 September 2010" ;
            madsrdf:citation-status "found" ],
        [ a madsrdf:Source ;
            madsrdf:citation-note "t.p. (Herman Meville)"@en ;
            madsrdf:citation-source "His Pierre, or, The ambiguities ... c1984:" ;
            madsrdf:citation-status "found" ],
        [ a madsrdf:Source ;
            madsrdf:citation-note "p.71 (Hawthorne and his mosses, by a Virginian spending July in Vermont [i.e. Herman Melville])"@en ;
            madsrdf:citation-source "Theory of the American novel, 1970:" ;
            madsrdf:citation-status "found" ],
        [ a madsrdf:Source ;
            madsrdf:citation-note "t.p. (Ho-erh-man Mai-erh-wei-erh, of U.S.) t.p. verso, etc. (Herman Melville [in rom.]; b. 1819, NY; d. 9-27-1891, NY)"@en ;
            madsrdf:citation-source "Pai ching, 1990 (1992 printing):" ;
            madsrdf:citation-status "found" ],
        [ a madsrdf:Source ;
            madsrdf:citation-note "" ;
            madsrdf:citation-source "His Typee ... 1846." ;
            madsrdf:citation-status "found" ],
        [ a madsrdf:Source ;
            madsrdf:citation-note "t.p. (Cherman Melvil)"@en ;
            madsrdf:citation-source "To Kampanario, c1994:" ;
            madsrdf:citation-status "found" ],
        [ a madsrdf:Source ;
            madsrdf:citation-note "t.p. (Hermann Melville)"@en ;
            madsrdf:citation-source "Jeney, Z. Monody, c1983:" ;
            madsrdf:citation-status "found" ],
        [ a madsrdf:Source ;
            madsrdf:citation-note "p. vii (first published in 1854 The encantadas, or, Enchanted isles by Salvator R. Tarnmoor)"@en ;
            madsrdf:citation-source "The enchanted isles, 2002:" ;
            madsrdf:citation-status "found" ] ;
    madsrdf:hasVariant _:N07ab04d5af3544cda62856462e53835c,
        _:N08816667a0ec4188aec135323a811da4,
        _:N1101086203694aeab08270c635e2a511,
        _:N3054c346a2754b47bcb4efe873bae4fd,
        _:N36d03253a6e14b49b6b947744ba2b709,
        _:N5b32566a3cb54cea8a085acec3760c19,
        _:N5da6ce34caea470893af1f8253e5512d,
        _:N633919e4f6cb47ebbc7188ed1975280b,
        _:Nab5721a27261493dadb009ebc00a7237,
        _:Nbc0c93b4224e4baba93062ff34dcb970,
        _:Nd5b72f6d9eec49028fbbe024165951cc,
        _:Ne179c605953e4f97a32512b52f3272dc,
        _:Ne46cdc28f7ac4cfc8eda8d37ac47b130 ;
    madsrdf:isMemberOfMADSCollection &lt;http://web.archive.org/web/20130614192231/http://id.loc.gov/authorities/names/collection_LCNAF>,
        &lt;http://web.archive.org/web/20130614192231/http://id.loc.gov/authorities/names/collection_NamesAuthorizedHeadings> ;
    madsrdf:isMemberOfMADSScheme &lt;http://web.archive.org/web/20130614192231/http://id.loc.gov/authorities/names> ;
    skos:editorial "[Machine-derived non-Latin script reference project.]",
        "[Non-Latin script references not evaluated.]" ;
    skos:inScheme &lt;http://web.archive.org/web/20130614192231/http://id.loc.gov/authorities/names> ;
    skos:prefLabel "Melville, Herman, 1819-1891"@en ;
    skosxl:altLabel _:N07ab04d5af3544cda62856462e53835c,
        _:N08816667a0ec4188aec135323a811da4,
        _:N1101086203694aeab08270c635e2a511,
        _:N3054c346a2754b47bcb4efe873bae4fd,
        _:N36d03253a6e14b49b6b947744ba2b709,
        _:N5b32566a3cb54cea8a085acec3760c19,
        _:N5da6ce34caea470893af1f8253e5512d,
        _:N633919e4f6cb47ebbc7188ed1975280b,
        _:Nab5721a27261493dadb009ebc00a7237,
        _:Nbc0c93b4224e4baba93062ff34dcb970,
        _:Nd5b72f6d9eec49028fbbe024165951cc,
        _:Ne179c605953e4f97a32512b52f3272dc,
        _:Ne46cdc28f7ac4cfc8eda8d37ac47b130 .

&lt;http://web.archive.org/web/20130614192231/http://id.loc.gov/authorities/names/n79006936.html> madsrdf:isMemberOfMADSScheme &lt;http://web.archive.org/web/20130614192231/http://id.loc.gov/authorities/names> ;
    xhv:alternate &lt;http://web.archive.org/web/20130614192231/http://id.loc.gov/authorities/names/n79006936.json>,
        &lt;http://web.archive.org/web/20130614192231/http://id.loc.gov/authorities/names/n79006936.nt>,
        &lt;http://web.archive.org/web/20130614192231/http://id.loc.gov/authorities/names/n79006936.rdf> ;
    xhv:stylesheet &lt;http://web.archive.org/web/20130614192231cs_/http://id.loc.gov/static/css/2012/loc_print_v2.css>,
        &lt;http://web.archive.org/web/20130614192231cs_/http://id.loc.gov/static/css/2012/styles.css> ;
    skos:inScheme &lt;http://web.archive.org/web/20130614192231/http://id.loc.gov/authorities/names> .

&lt;http://web.archive.org/web/20130614192231/http://viaf.org/viaf/sourceID/LC%7Cn+79006936#skos:Concept> madsrdf:hasExactExternalAuthority "http://viaf.org/viaf/sourceID/LC%7Cn+79006936#skos:Concept" ;
    skos:exactMatch "http://viaf.org/viaf/sourceID/LC%7Cn+79006936#skos:Concept" .

&lt;http://web.archive.org/web/20130614192231/http://www.loc.gov/mads/rdf/v1#Authority> a "MADS/RDF Authority" .

&lt;http://web.archive.org/web/20130614192231/http://www.loc.gov/mads/rdf/v1#PersonalName> a "MADS/RDF PersonalName" .

&lt;http://web.archive.org/web/20130614192231/http://www.w3.org/2004/02/skos/core#Concept> a "SKOS Concept" .

_:N07ab04d5af3544cda62856462e53835c a madsrdf:PersonalName,
        madsrdf:Variant,
        skosxl:Label ;
    madsrdf:variantLabel "×ž×œ×•×•×™×œ, ×”×¨×ž×Ÿ, 1819Ö¾1891" ;
    skosxl:literalForm "×ž×œ×•×•×™×œ, ×”×¨×ž×Ÿ, 1819Ö¾1891" .

_:N08816667a0ec4188aec135323a811da4 a madsrdf:PersonalName,
        madsrdf:Variant,
        skosxl:Label ;
    madsrdf:variantLabel "éº¥çˆ¾ç¶­çˆ¾, 1819-1891" ;
    skosxl:literalForm "éº¥çˆ¾ç¶­çˆ¾, 1819-1891" .

_:N1101086203694aeab08270c635e2a511 a madsrdf:PersonalName,
        madsrdf:Variant,
        skosxl:Label ;
    madsrdf:variantLabel "Ù…ÙŠÙ„Ú¤ÙŠÙ„ØŒ Ù‡Ø±Ù…Ù†" ;
    skosxl:literalForm "Ù…ÙŠÙ„Ú¤ÙŠÙ„ØŒ Ù‡Ø±Ù…Ù†" .

_:N3054c346a2754b47bcb4efe873bae4fd a madsrdf:PersonalName,
        madsrdf:Variant,
        skosxl:Label ;
    madsrdf:variantLabel "Tarnmoor, Salvator R., 1819-1891" ;
    skosxl:literalForm "Tarnmoor, Salvator R., 1819-1891" .

_:N36d03253a6e14b49b6b947744ba2b709 a madsrdf:PersonalName,
        madsrdf:Variant,
        skosxl:Label ;
    madsrdf:variantLabel "×ž×œ×•×•×™×œ, ×”×¨×ž×Ÿ" ;
    skosxl:literalForm "×ž×œ×•×•×™×œ, ×”×¨×ž×Ÿ" .

_:N5b32566a3cb54cea8a085acec3760c19 a madsrdf:PersonalName,
        madsrdf:Variant,
        skosxl:Label ;
    madsrdf:variantLabel "Virginian spending July in Vermont, 1819-1891" ;
    skosxl:literalForm "Virginian spending July in Vermont, 1819-1891" .

_:N5da6ce34caea470893af1f8253e5512d a madsrdf:PersonalName,
        madsrdf:Variant,
        skosxl:Label ;
    madsrdf:variantLabel "Melville, Hermann, 1819-1891" ;
    skosxl:literalForm "Melville, Hermann, 1819-1891" .

_:N633919e4f6cb47ebbc7188ed1975280b a madsrdf:PersonalName,
        madsrdf:Variant,
        skosxl:Label ;
    madsrdf:variantLabel "Melvil, Cherman, 1819-1891" ;
    skosxl:literalForm "Melvil, Cherman, 1819-1891" .

_:Nab5721a27261493dadb009ebc00a7237 a madsrdf:PersonalName,
        madsrdf:Variant,
        skosxl:Label ;
    madsrdf:variantLabel "Melvill, German, 1819-1891" ;
    skosxl:literalForm "Melvill, German, 1819-1891" .

_:Nbc0c93b4224e4baba93062ff34dcb970 a madsrdf:PersonalName,
        madsrdf:Variant,
        skosxl:Label ;
    madsrdf:variantLabel "Mai-erh-wei-erh, Ho-erh-man, 1819-1891" ;
    skosxl:literalForm "Mai-erh-wei-erh, Ho-erh-man, 1819-1891" .

_:Nd5b72f6d9eec49028fbbe024165951cc a madsrdf:PersonalName,
        madsrdf:Variant,
        skosxl:Label ;
    madsrdf:variantLabel "Melá¹¿il, Herman, 1819-1891" ;
    skosxl:literalForm "Melá¹¿il, Herman, 1819-1891" .

_:Ne179c605953e4f97a32512b52f3272dc a madsrdf:PersonalName,
        madsrdf:Variant,
        skosxl:Label ;
    madsrdf:variantLabel "×ž×œ×•×™×œ, ×”×¨×ž×Ÿ" ;
    skosxl:literalForm "×ž×œ×•×™×œ, ×”×¨×ž×Ÿ" .

_:Ne46cdc28f7ac4cfc8eda8d37ac47b130 a madsrdf:PersonalName,
        madsrdf:Variant,
        skosxl:Label ;
    madsrdf:variantLabel "Meville, Herman, 1819-1891" ;
    skosxl:literalForm "Meville, Herman, 1819-1891" .
</pre>
<p>Since it is linked to directly from the HTML page, Internet Archive have also archived the <a href="https://web.archive.org/web/*/http://id.loc.gov/authorities/names/n79006936.rdf">RDF XML</a> itself, and they actually even have the <a href="https://web.archive.org/web/*/http://id.loc.gov/authorities/names/n79006936.marcxml.xml">MARC XML</a>, if that's the sorta thing you are into.</p>
<p>But, as my <a href="http://inkdroid.org/journal/2013/09/26/on-perma-cc/">previous post about perma.cc</a> touched on, a solution to archiving something as important as the Web can't realistically rely on a single point of failure (the Internet Archive). We can't simply decide not to worry about archiving the Web because Brewster Kahle is taking care of it. We need lots of copies of linked data to keep stuff safe.</p>
<p>Fortunately, web archiving is going on at a variety of institutions. But if you have a URL for a webpage, how do you know what web archives have a copy? Do you have to go and ask each one? How do you even know which ones to ask? How do you ask?</p>
<p>...</p>
<p>The <a href="http://mementoweb.org">Memento</a> project worked on aggregating the holdings of web archives in order to provide a single place to look up a URL for their Firefox plugin. They also ended up proxying some sources like Wikipedia that they couldn't convince to support the Memento protocol. From what little I've heard about this process it was done in an ad-hoc fashion, leaning on personal relationships in the IIPC, and was fairly resource intensive, to the point where it was more efficient to use the <a href="https://en.wikipedia.org/wiki/Sneakernet">sneakernet</a> to get the data. If I'm misremembering that I trust someone will let me know.</p>
<p>Earlier this year, David Rosenthal <a href="http://blog.dshr.org/2013/03/re-thinking-memento-aggregation.html">posted</a> some interesting ideas on how to publish the holdings of web archives so that it is not so expensive to aggregate them. His idea is basically for web archives to publish the hostnames of websites they archive instead of complete lists of URLs and all the times they have been fetched. An aggregator could collect these lists, and then provide <em>hints</em> to clients about what web archive a given URL <em>might</em> be found in. This would push the work of polling archives for a particular URL onto the client, which would receive a hint about what web archives to look in. It would also mean that there would space for more than one aggregator, since it wouldn't be so resource intensive.</p>
<p>I really like Rosenthal's idea, and hope that we will see a simple pattern for publishing the holdings of web archives that doesn't turn running an aggregator service into an expensive problem. At the same time it's important that the solution is simple, and that it's not so complicated it becomes an onerous process that web archives don't end up doing. It would be nice to see the bar lowered so that smaller institutions and even individuals could get in the game, not just national libraries. I also hope we can find a simple place to build a list of where these host inventories live, similar to the Name <a href="http://www.cdlib.org/services/uc3/naan_registry.txt">Assigning Authority Number (NAAN) registry</a> that is used (and mirrored) as part of the ARK identifier scheme.</p>
