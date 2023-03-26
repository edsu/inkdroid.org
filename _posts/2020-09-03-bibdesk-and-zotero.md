---
layout: post
title: BibDesk, Zotero and JabRef
tags:
- metadata
---


I've recently moved off of OS X and on to Ubuntu. My decision was partly
motivated by recent hardware failure,  partly it was just time for a change, but
you know honestly Apple is [just] kinda [gross] and I needed to press eject.
Before I switched to Apple ~10 years ago I had been using various Linux based
systems pretty happily.  Honestly, I don't even remember why I switched back
then. It was probably some mixture of being able to get a work laptop for free
and peer pressure.

Anyway, it's been mostly a smooth transition so far. But one area that I miss my
Mac quite a bit is in bibliographic citation management. All throughout my PhD
studies I've been using [BibDesk]. It didn't share my citations with the
Internet, or do social this or cloud that. But it flawlessly saved my citations
and documents for me to use in my research and writing. BibDesk saves citations
in a BibTeX file which I could easily integrate with other tools like Pandoc to
generate nicely styled papers with references. I even use this BibDesk file to
cite things here on my blog. But most importantly it kept a link between my
bibliographic metadata and the two thousand or so PDF and EPUB files I've
<strike>pirated</strike> collected, which sit on a DropBox share. Having these
papers ready to hand was essential to me when writing. It's hard to imagine any
other way of doing my research.

But alas BibDesk is Mac only. After a bit of looking around I thought I'd try
giving Zotero a try. It has a BibTeX importer, which worked pretty well. But
Zotero didn't pick up the links to the PDFs. It turns out this isn't really a
Zotero problem as much as it is an idiosyncrasy of the way BibDesk stores these
file links. They look something like this:

```
@article{Berg:1997a,
	Author = {Berg, Marc and Bowker, Geoffrey},
	Date-Added = {2016-12-07 20:27:41 +0000},
	Date-Modified = {2016-12-07 20:28:45 +0000},
	Journal = {The Sociological Quarterly},
	Keywords = {Sociology; Materiality},
	Number = {3},
	Pages = {513-537},
	Publisher = {Wiley Online Library},
	Title = {The multiple bodies of the medical record: Toward a sociology of an artifact},
	To-Read = {1},
	Volume = {38},
	Year = {1997},
  Bdsk-File-1 = {YnBsaXN0MDDSAQIDBFxyZWxhdGl2ZVBhdGhZYWxpYXNEYXRhXxBAcGFwZXJzL0JlcmcvVGhlIG11bHRpcGxlIGJvZGllcyBvZiB0aGUgbWVkaWNhbCByZWNvcmQgVG93YXJkLnBkZk8RAfAAAAAAAfAAAgAABk1hY09TWAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABCRAAB/////x9UaGUgbXVsdGlwbGUgYm9kaWUjRkZGRkZGRkYucGRmAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/////AAAAAAAAAAAAAAAAAAEABAAACiBjdQAAAAAAAAAAAAAAAAAEQmVyZwACAF0vOlVzZXJzOmVkc3U6RHJvcGJveDpCaWJEZXNrOnBhcGVyczpCZXJnOlRoZSBtdWx0aXBsZSBib2RpZXMgb2YgdGhlIG1lZGljYWwgcmVjb3JkIFRvd2FyZC5wZGYAAA4AagA0AFQAaABlACAAbQB1AGwAdABpAHAAbABlACAAYgBvAGQAaQBlAHMAIABvAGYAIAB0AGgAZQAgAG0AZQBkAGkAYwBhAGwAIAByAGUAYwBvAHIAZAAgAFQAbwB3AGEAcgBkAC4AcABkAGYADwAOAAYATQBhAGMATwBTAFgAEgBbVXNlcnMvZWRzdS9Ecm9wYm94L0JpYkRlc2svcGFwZXJzL0JlcmcvVGhlIG11bHRpcGxlIGJvZGllcyBvZiB0aGUgbWVkaWNhbCByZWNvcmQgVG93YXJkLnBkZgAAEwABLwAAFQACAAv//wAAAAgADQAaACQAZwAAAAAAAAIBAAAAAAAAAAUAAAAAAAAAAAAAAAAAAAJb}}
```

As you can probably guess it's the `Bdsk-File-1` field that stores the file link
and is causing the problem. It doesn't look like a file path at all does it?
After some [help] on the bibdesk-users discussion list I found out that this
field actually contains the file path
[Base64](https://en.wikipedia.org/wiki/Base64) encoded. I guess this probably
makes sense so that you don't need to get into the business of escaping things
so that they don't break the syntax of a BibTeX record.  Here's what the file
path looks like when you Base64 decode it:

```
bplist00Ò\relativePathYaliasData_@papers/Berg/The multiple bodies of the medical record Toward.pdfOððMacOSXBDÿÿÿÿThe multiple bodie#FFFFFFFF.pdfÿÿÿÿ cuBerg]/:Users:edsu:Dropbox:BibDesk:papers:Berg:The multiple bodies of the medical record Toward.pdfj4The multiple bodies of the medical record Toward.pdfMacOSX[Users/edsu/Dropbox/BibDesk/papers/Berg/The multiple bodies of the medical record Toward.pdf/ $g[
```

This doesn't even serialize well in a blog entry because there are various
control characters sprinkled all over. I can see some useful information is
starting to emerge, but it doesn't look like it is encoded right. That's because
it's an OS X only binary format for structured data called a [Property List].
You know, maybe JSON would have been a better choice here, but I'm sure there
are historical reasons for why a Property List made sense.

Fortunately Python has support for Property Lists in the core [plistlib]. So the
decoding and parsing together look something like this:

```python
import base64
import plistlib

bdesk_file = 'YnBsaXN0MDDSAQIDBFxyZWxhdGl2ZVBhdGhZYWxpYXNEYXRhXxBAcGFwZXJzL0JlcmcvVGhlIG11bHRpcGxlIGJvZGllcyBvZiB0aGUgbWVkaWNhbCByZWNvcmQgVG93YXJkLnBkZk8RAfAAAAAAAfAAAgAABk1hY09TWAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABCRAAB/////x9UaGUgbXVsdGlwbGUgYm9kaWUjRkZGRkZGRkYucGRmAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/////AAAAAAAAAAAAAAAAAAEABAAACiBjdQAAAAAAAAAAAAAAAAAEQmVyZwACAF0vOlVzZXJzOmVkc3U6RHJvcGJveDpCaWJEZXNrOnBhcGVyczpCZXJnOlRoZSBtdWx0aXBsZSBib2RpZXMgb2YgdGhlIG1lZGljYWwgcmVjb3JkIFRvd2FyZC5wZGYAAA4AagA0AFQAaABlACAAbQB1AGwAdABpAHAAbABlACAAYgBvAGQAaQBlAHMAIABvAGYAIAB0AGgAZQAgAG0AZQBkAGkAYwBhAGwAIAByAGUAYwBvAHIAZAAgAFQAbwB3AGEAcgBkAC4AcABkAGYADwAOAAYATQBhAGMATwBTAFgAEgBbVXNlcnMvZWRzdS9Ecm9wYm94L0JpYkRlc2svcGFwZXJzL0JlcmcvVGhlIG11bHRpcGxlIGJvZGllcyBvZiB0aGUgbWVkaWNhbCByZWNvcmQgVG93YXJkLnBkZgAAEwABLwAAFQACAAv//wAAAAgADQAaACQAZwAAAAAAAAIBAAAAAAAAAAUAAAAAAAAAAAAAAAAAAAJb'

decoded = base64.b64decode(bdesk_file)
metadata = plistlib.loads(decoded)

print(metadata)
```

Which will print out:

```
{'relativePath': 'papers/Berg/The multiple bodies of the medical record Toward.pdf', 'aliasData': b'\x00\x00\x00\x00\x01\xf0\x00\x02\x00\x00\x06MacOSX\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00BD\x00\x01\xff\xff\xff\xff\x1fThe multiple bodie#FFFFFFFF.pdf\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xff\xff\xff\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x04\x00\x00\n cu\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04Berg\x00\x02\x00]/:Users:edsu:Dropbox:BibDesk:papers:Berg:The multiple bodies of the medical record Toward.pdf\x00\x00\x0e\x00j\x004\x00T\x00h\x00e\x00 \x00m\x00u\x00l\x00t\x00i\x00p\x00l\x00e\x00 \x00b\x00o\x00d\x00i\x00e\x00s\x00 \x00o\x00f\x00 \x00t\x00h\x00e\x00 \x00m\x00e\x00d\x00i\x00c\x00a\x00l\x00 \x00r\x00e\x00c\x00o\x00r\x00d\x00 \x00T\x00o\x00w\x00a\x00r\x00d\x00.\x00p\x00d\x00f\x00\x0f\x00\x0e\x00\x06\x00M\x00a\x00c\x00O\x00S\x00X\x00\x12\x00[Users/edsu/Dropbox/BibDesk/papers/Berg/The multiple bodies of the medical record Toward.pdf\x00\x00\x13\x00\x01/\x00\x00\x15\x00\x02\x00\x0b\xff\xff\x00\x00'}
```

It may be hard to tell but this is a Python dictionary! There's still some
binary data in there for the `aliasMetadata` (who knows) but all I really need
is in the `relativePath`.  It's the path to the PDF for this bibliographic entry
on my DropBox share:

    papers/Berg/The multiple bodies of the medical record Toward.pdf

So now I just needed to read in my BibTeX file, convert all the `Bdsk-File-n`
files (there can be more than one), and add them as `File` fields so that Zotero
can find them. I turned to the venerable [pybtex] module to do the parsing and
writing of the BibTeX data.

I doubt anyone else will ever find themselves in this predicament, but if they
do I bundled up the little program as [bibdesk2zotero] which you can give your
BibTeX file and a root file location and it will emit the updated BibTeX.
Hopefully this helps someone sometime, but if not, it certainly helped me :)

    $ pip install bibdesk2zotero
    $ bibdesk2zotero citations.bib /home/ed/DropBox/BibDesk/ > new-citations.bib

Update:

It turns out Zotero doesn't respect *citation-keys* on import. It
generates new ones! Ordinarily I guess this would be OK. But for me it is a
problem because I don't want to have to update all the citation-keys I have
littered around my dissertation manuscript and in my blog. In theory I could do
it, but if it could be avoided that would be best. 

This sent me looking at [JabRef] which looks a lot cleaner and functional and
maps much better on to how I used BibDesk since it treats the BibTeX file as a
database and not just as an import and export format. Plus the munging of the
BibTeX I did in order to decode the file paths works for JabRef as well!

<figure>
  <a href="/images/jabref.png">
    <img class="img-fluid" src="/images/jabref.png">
  </a>
  <figcaption>A screenshot of JabRef</figcaption>
</figure>


[just]: https://www.nytimes.com/2020/08/19/technology/apple-2-trillion.html
[gross]: https://www.vice.com/en_us/article/wjvdb4/apple-is-telling-lawmakers-people-will-hurt-themselves-if-they-try-to-fix-iphones
[help]: https://sourceforge.net/p/bibdesk/mailman/bibdesk-users/?viewmonth=200501
[Property List]: https://en.wikipedia.org/wiki/Property_list
[plistlib]: https://docs.python.org/3/library/plistlib.html
[pybtex]: https://pybtex.org/
[bibdesk2zotero]: https://pypi.org/project/bibdesk2zotero/
[BibDesk]: https://bibdesk.sourceforge.io/
[JabRef]: https://www.jabref.org/
