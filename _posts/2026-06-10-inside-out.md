---
layout: post
title: Inside Out
tags:
- llm
- rss
- python
- tools
---

I have a problem with RSS. Not RSS itself, RSS is *great*!

The problem is that I subscribe to more feeds than I can possibly read, so the
unread count in [FreshRSS] climbs faster than I can bring it down. Some days I
skim titles, declare bankruptcy, and mark everything as read. Other days I let
it pile up and feel guilty.

I've tried to using newer tools like [Current] which was definitely an
improvement, but still didn't quite do it. My friend Dan has been [working] on a
new RSS tool that works a bit like a personal newspaper, that seems like it
could be extremely helpful, and I'm keeping my eye on it. But meanwhile the list
of unread posts grows...

Now, I've been very reluctant and slow to introduce LLMs into my daily work. But
even from under my rock, in a cave, down by the river, I've heard that LLMs are
good at text summarization.

I thought maybe, just *maybe*, I could try using one to summarize my unread
posts? It seemed like a good fit for an experiment since the impact of getting
things wrong is basically zero (in theory).

I wanted to try routing my unread RSS posts through an LLM to get a daily
digest. From under my rock I'd also heard about Model-Context-Protocol ([MCP]),
and how it is going to *change everything*. So I thought it would be a good
exercise in seeing how that works in practice with a tool like Claude Code. I'd
use Claude Code's MCP support to connect directly to FreshRSS and ask Claude to
summarize what I'd missed. Yeah, that's the ticket.

## This is the Way?

The first thing I tried was [ChrisLAS's freshrss-mcp] server, which wraps the
FreshRSS [GReader API] and exposes it as a set of MCP tools. The idea is that
you drop it into your Claude configuration and Claude can then call those tools
to fetch and read your articles.

I gave it a try, and it worked! But the results were... mixed. Claude would usually fetch
articles. But then it would produce a lot of diagnostic chatter alongside the
actual summary: narrating its own tool calls, noting what it was about to do,
explaining why it was skipping certain things, asking for permission for this
and that.

And more frustratingly, it would sometimes take strange detours: executing
inline Python code, and Unix tools to do things it could have done by calling
the MCP tools more directly, wandering into unnecessary computation. The
experience felt noisy and unpredictable, and (frankly) just a bit scary.

I started by creating some "skills" and some scripts for those skills thinking
it would make things a bit more deterministic. It kinda did?

I thought maybe my problem was that the skills weren't bundled together, so I
built my own plugin: [freshrss-claude]. This version bundled the MCP server as a
Claude Code plugin with a set of "skills", the structured prompts to guide
Claude through fetching and summarizing in a more controlled way.

It seemed better? Not needing to start the MCP server was definitely better. But
ultimately it wasn't as big an improvement as I'd hoped for. Claude still
exhibited strange behaviors: writing and executing Python scripts unnecessarily,
going off-script in ways that were hard to anticipate. The summaries themselves
were fine when they arrived, but the path to getting them there was erratic and
unpredictable.

The last straw for me was the idea of running this Rube Goldberg machine from a
cron job to generate the summary for me automatically. To run it automatically I
needed to grant it all kinds of permissions to ensure it ran through. This
scared the shit out of me, given it was giving it permission to run arbitrary
Python programs and reach out to the web, and interact with the filesystem.
Running it once or twice manually was ok. But sticking it in my crontab and
forgetting about it? Forget about it. I exprerimented briefly with putting
things in a Docker container, and Claude Cowork's sandboxing, but then...

## Turning it inside out

I stepped back and rethought the problem. The thing I'd been trying to do, have
an LLM orchestrate a set of tools to accomplish a task, is one (seemingly
popular) way to use an LLM. But it turns out to be *kinda demented*. You're
asking the model to plan, to sequence, to decide. You are asking it to be An
Agent. Sure models can do this, but they are not *reliable* in the way a simple
program is. They wander. They improvise. They sometimes decide to take a detour.
Do I really benefit from this runtime model in this little RSS digest app? Nah,
not really.

So the alternative, and this is the inversion that made things click for me, is to
write a deterministic program that calls the LLM as a component, rather than
letting the LLM drive the program as an Agent. My code fetches the articles. My code
shapes the prompt. My code writes the output to a file. The LLM does exactly
one thing: it reads the content I hand it and produces a summary.

## Take Two (or Three, or Four?)

I threw it all on the fire and started over by writing [rss-digest] instead.
Well, truth be told, Claude and I wrote it. Ok, ok, mostly Claude.

It's a small Python CLI that connects to any [GReader API]-compatible RSS reader
(FreshRSS, Miniflux, Tiny Tiny RSS, The Old Reader), fetches your recent unread
articles, and asks an LLM to produce a digest. Because it uses [LiteLLM] under
the hood, you can point it at any compatible model: OpenAI, a local model
running in LM Studio, whatever you prefer.

The output is a Markdown file (or HTML with `--html`). I have a cron job run it
in the morning and drop a file on my desktop for me to read. Here's an [example]
of what it looks like.

For smaller batches (≤25 articles) it gives you a structured list. For larger
ones it produces a curated prose summary grouped by theme. You can pass a custom
system prompt file if you want to tune the style or grouping. You can pass
`--mark-read` if you want it to mark everything as read afterward.

The tool is on [PyPI] and the code is on [GitHub]. I've just started using it,
so it quite possibly has problems. The prompt that is used for doing the summarization is
configurable. If you have a different take on the prompt or want to extend it,
please send me a pull request so I can add it as an alternative.

## So...

What I keep coming back to is the design lesson underneath all of this.

There's real value in being thoughtful about *which part* of your system is
deterministic and which part is probabilistic. There's no doubt that LLMs are
magical things, but it's not a reliable program. It shouldn't always be the
thing making decisions about what to fetch, when to stop, or how to structure
output. Hand it a well-formed input, ask it a clear question, and (hopefully) it
will return something useful. Everything else, the plumbing, the sequencing, the
file I/O stays in your code that you can look at, and test and run directly.

I'm not saying all programs using LLMs need to take this approach. I'm just
saying maybe you don't need MCP, Agentic AI, etc, etc all the time. Experiment
with it, but don't forget to turn it inside out when you need to.

[FreshRSS]: https://freshrss.org/
[ChrisLAS's freshrss-mcp]: https://github.com/ChrisLAS/freshrss-mcp
[GReader API]: https://github.com/theoldreader/api
[freshrss-claude]: https://github.com/edsu/freshrss-claude
[rss-digest]: https://github.com/edsu/rss-digest
[LiteLLM]: https://docs.litellm.ai/
[PyPI]: https://pypi.org/project/rss-digest/
[GitHub]: https://github.com/edsu/rss-digest
[MCP]: https://en.wikipedia.org/wiki/Model_Context_Protocol
[Current]: https://www.terrygodier.com/current
[working]: https://data.onebiglibrary.net/2026/02/25/starting-a-news-service/
[example]: https://github.com/edsu/rss-digest/blob/main/example.md
