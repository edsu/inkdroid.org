---
layout: post
title: browsertricky
tags:
- web-archives
- docker
---

Sometimes I want to archive a web page or website using [browsertrix-crawler] but I always have to go to the documentation to look up the specifics of the Docker incantation. Once I get something working I often want a record of how I ran the crawl so I can remember how it was created. I've done this enough times that I decided to create [a little shell script] and directory structure for the configuration files.

If you'd like to try this approach, install [Git] and [Docker] if you don't already have them, and then:

```text
$ git clone https://github.com/edsu/browsertricky.git
$ cd browsertricky
$ ./browsertricky example
```

To test your new web archive of the [https://example.com](https://example.com) website go to [https://replayweb.page](https://replayweb.page) and load the [WACZ] file that was created at `collections/example/example.wacz`. 

🎉  ✨  🦄  🛸  

Ok, that's not a terribly interesting example (pun intended). But you can use the example config as a template for another configuration to archive another site. To do that you'll need to:

```text
$ cp config/example.yaml config/mysite.yaml
```

Edit the `config/mysite.yaml` adding information about a site you would like to archive:

1. Change `collection` from `example` to `mysite`, which will change where your WACZ is written in the `collections` directory
2. Change the `seeds` list to include a new URL like `https://mysite.com`

And run it!

```text
$ ./browsertricky mysite
```

If you open http://localhost:9037 while the crawl is underway you should see a screencast of the browser.

Read the browsertrix-crawler [documentation] for all the options you can put in your YAML configuration files. There are quite a few!

---

PS. I should really adapt this to work with [podman] too...

PPS. Check out [browsertrix-cloud] if you don't want to work on the command line and would rather use a web application to do it.

[browsertrix-crawler]: https://github.com/webrecorder/browsertrix-crawler
[documentation]: https://github.com/webrecorder/browsertrix-crawler/blob/main/README.md
[WACZ]: https://specs.webrecorder.net/wacz/latest/
[Git]: https://git-scm.com/
[Docker]: https://www.docker.com/
[podman]: https://podman.io/
[browsertrix-cloud]: https://docs.browsertrix.cloud/deploy/local/
[a little shell script]: https://github.com/edsu/browsertricky
