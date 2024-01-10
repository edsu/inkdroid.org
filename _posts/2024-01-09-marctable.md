---
title: marctable
tags:
- python
- marc
- data
layout: post
---

[marctable] is a new command line utility for turning [MARC] Bibliographic Data into tabular data. It was created to support some experimental MARC data analysis, that extends work done by [Jim Hahn] at the University of Pennsylvania (more about that soon I hope) [@Hahn:2021].

The initial goal was to only mimic [MARCEdit]'s [CSV] output since CSV lends itself so nicely to various analytics tools. But CSV can get a bit janky when you have to cram multiple values into a single CSV column, only to have to pick them apart later. A tabular format like [Parquet] lets you define a schema that supports repeatable values and compression. Some analytics tools implement various forms of [pushdown] which can speed up query times by using statistical metadata from the Parquet file to move the analysis closer to the relevant rows and columns, instead of performing a full table scan, or pulling the entire dataframe into memory. So marctable supports exporting as CSV, Parquet and also JSON Lines.

MARC bibliographic has many field and subfield combinations. Knowing which ones exist and whether they can repeat didn't seem entirely obvious (at least to me). So *marctable* also includes a utility that crawls the Library of Congress [MARC Bibliographic] documentation to generate an [Avram] schema that documents what fields and subfields are available, and which ones can repeat. Many thanks to [Jakob Voß] for feedback and help starting to use Avram. The Avram schema allows the CSV and Parquet files to have a consistent schema that is independent of the particular MARC data that is being processed. This is important for a format like Parquet, and for data analysis environments like [Apache Spark], [Trino] or a hosted data analytics service like [Athena] which benefit from a consistent schema. Here's what a couple fields look like in the YAML file:

```json
{
  "fields: {
    ...
    "245": {
      "tag": "245",
      "label": "Title Statement",
      "repeatable": false,
      "url": "https://www.loc.gov/marc/bibliographic/bd245.html",
      "subfields": {
        "a": {
          "code": "a",
          "label": "Title",
          "repeatable": false
        },
        "b": {
          "code": "b",
          "label": "Remainder of title",
          "repeatable": false
        },
        "c": {
          "code": "c",
          "label": "Statement of responsibility, etc.",
          "repeatable": false
        },
        "f": {
          "code": "f",
          "label": "Inclusive dates",
          "repeatable": false
        },
        "g": {
          "code": "g",
          "label": "Bulk dates",
          "repeatable": false
        },
        "h": {
          "code": "h",
          "label": "Medium",
          "repeatable": false
        },
        "k": {
          "code": "k",
          "label": "Form",
          "repeatable": true
        },
        "n": {
          "code": "n",
          "label": "Number of part/section of a work",
          "repeatable": true
        },
        "p": {
          "code": "p",
          "label": "Name of part/section of a work",
          "repeatable": true
        },
        "s": {
          "code": "s",
          "label": "Version",
          "repeatable": false
        },
        "6": {
          "code": "6",
          "label": "Linkage",
          "repeatable": false
        },
        "7": {
          "code": "7",
          "label": "Data provenance",
          "repeatable": true
        },
        "8": {
          "code": "8",
          "label": "Field link and sequence number",
          "repeatable": true
        }
      }
    },
    "246": {
      "tag": "246",
      "label": "Varying Form of Title",
      "repeatable": true,
      "url": "https://www.loc.gov/marc/bibliographic/bd246.html",
      "subfields": {
        "a": {
          "code": "a",
          "label": "Title proper/short title",
          "repeatable": false
        },
        "b": {
          "code": "b",
          "label": "Remainder of title",
          "repeatable": false
        },
        "f": {
          "code": "f",
          "label": "Date or sequential designation",
          "repeatable": false
        },
        "g": {
          "code": "g",
          "label": "Miscellaneous information",
          "repeatable": true
        },
        "h": {
          "code": "h",
          "label": "Medium",
          "repeatable": false
        },
        "i": {
          "code": "i",
          "label": "Display text",
          "repeatable": false
        },
        "n": {
          "code": "n",
          "label": "Number of part/section of a work",
          "repeatable": true
        },
        "p": {
          "code": "p",
          "label": "Name of part/section of a work",
          "repeatable": true
        },
        "5": {
          "code": "5",
          "label": "Institution to which field applies",
          "repeatable": false
        },
        "6": {
          "code": "6",
          "label": "Linkage",
          "repeatable": false
        },
        "7": {
          "code": "7",
          "label": "Data provenance",
          "repeatable": true
        },
        "8": {
          "code": "8",
          "label": "Field link and sequence number",
          "repeatable": true
        }
      }
    },
    ...
  }
}
```

Once *marctable* is installed you can convert some MARC data to CSV with a command like

```shell
$ marctable csv data.marc data.csv
```

Or you can similarly create a Parquet file:

```shell
$ marctable parquet data.marc data.parquet
```

In both cases the resulting file will have 215 columns for MARC Fields (F245, F650, etc). If you would like a more tailored file with less columns you can convert specific fields using the repeatable `--rule` parameter:

```shell
$ marctable csv --rule 245 --rule 650
```

This would create a table of just those two fields. If you want only specific subfields you can specify them as well. For example this would create a file with four columns (F245a, F245b, F650a, F650v):

```shell
$ marctable csv --rule 245ab --rule 650av
```

If you have any feedback or ideas please drop them in the [issue tracker at GitHub].


### References

[MARC]: https://en.wikipedia.org/wiki/MARC_standards
[Computer Files dataset]: https://www.loc.gov/cds/products/MDSConnect-computer_files.html
[issue tracker at GitHub]: https://github.com/sul-dlss-labs/marctable/issues
[MARC Bibliographic]: https://www.loc.gov/marc/bibliographic/
[MARCEdit]: https://marcedit.reeset.net/
[CSV]: https://en.wikipedia.org/wiki/Comma-separated_values
[Parquet]: https://en.wikipedia.org/wiki/Apache_Parquet
[JSON file]: https://github.com/sul-dlss-labs/marctable/blob/main/marctable/marc.json
[Athena]: https://aws.amazon.com/athena/
[Apache Spark]: https://spark.apache.org/
[Trino]: https://trino.io/
[AWS Athena]: https://aws.amazon.com/athena/
[pushdown]: https://trino.io/docs/current/optimizer/pushdown.html
[marctable]: https://github.com/sul-dlss-labs/marctable
[Jim Hahn]: https://www.library.upenn.edu/staff/jim-hahn
[Jakob Voß]: http://jakobvoss.de/
[Avram]: http://format.gbv.de/schema/avram/specification
