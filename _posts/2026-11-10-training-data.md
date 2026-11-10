---
layout: post
title: Models and their Data
tags:
- ai
- llm
- data
- metadata
- commons
- law
---

Lisa Macpherson (Public Knowledge) and Anna Tumadóttir (Creative Commons)
recently published [Creating a New Internet Bargain to Preserve Fair Use and
Protect the Commons](https://www.techpolicy.press/creating-a-new-internet-bargain-to-preserve-fair-use-and-protect-the-commons/)
in Tech Policy Press. They do an excellent job of describing the predicament that the 
web commons finds itself in, regarding AI plunder, and enclosure of said commons.

But I scratched my chin when I reached the part about proposed legislation that
would require LLM providers to disclose what content they used to train their
models, such as what the [TRAIN
ACT](https://www.congress.gov/bill/119th-congress/senate-bill/2455) is trying
to do. I haven't read the text of the act, and maybe the authors have and there
are some poison pills there. But they actually make a good case for disclosure,
only to backpedal it:

> Imagine if large technology companies had disclosed their training sources
> all along. That could have steered us towards quality on all fronts, limiting
> the mess we now find ourselves in. Instead, lawmakers around the world are
> considering legislation that would *require* AI developers to disclose the
> sources they use for training.
>
> Both of our organizations are interested in the benefits of transparency. But
> Public Knowledge, in particular, is wary of legislation that threatens fair
> use by providing plaintiffs with a pre-discovery tool that would bring about a
> continuous wave of litigation risk.

It seems like requiring model creators to describe the data that was used to train the model is pretty critical for understanding how the models can be used? Perhaps we need better norms around how to do this, but it seems like a pretty low bar to get over.

I started wondering how much documentation of training data exists today.
Hugging Face is a good place to look since it hosts a lot of open models, and
the [model card
metadata](https://huggingface.co/docs/hub/main/en/model-cards#specifying-a-dataset)
lets a publisher say which datasets they used to train a model. These are
"open" models that were designed to be downloaded and used, so you'd think that
they wouldn't have many qualms about saying where the models came from?

So, if you had to guess, what percentage of models on Hugging Face document their data that way?

Fortunately Hugging Face publishes model metadata as a Parquet dataset
([librarian-bots/model_cards_with_metadata](https://huggingface.co/datasets/librarian-bots/model_cards_with_metadata)),
so you can query it right from your browser using the [DuckDB Web
Shell](https://tinyurl.com/duckdb-models-with-datasets). The query takes a
minute or so to run.

You may notice I limited the query to base models, meaning models that don't
declare a `base_model` they were built from. This tips the scales in the favor
of over-counting models that have datasets, since a fine-tuned model could lack
dataset metadata but point a base model that does have it.

So the result?

46,171 out of 494,128 (base) models, or 9.3%, list a dataset.

To be fair, some model cards probably describe their training data in prose
without filling in the metadata field. A query like this can't see those. But
the metadata field is what lets anyone trace a model back to its sources at
scale, and over 90% of base models leave it empty.

Hugging Face is a place to publish *open* models. These are the publishers who
chose to share their weights in public. You'd think they would be more
interested in telling us about the data that was used. Of course the closed
frontier models from the big AI companies tell us even less.

Users of all stripes would benefit from knowing what data was used to build
these models. Macpherson and Tumadóttir seem to agree that disclosure "could
have steered us towards quality on all fronts." Litigation risk is a 
concern, but I don't see why it should outweigh the benefit of knowing what's
in these models, especially for organizations trying to protect the web
commons. If voluntary documentation sits under 10% even among open models,
how do we get there without regulation?
