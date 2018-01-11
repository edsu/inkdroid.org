---
layout: post
title: Offline Sites with React
tags:
- mincomp
- react
- web
---

<img style="width: 200px; margin-right: 10px; float: left;" src="/images/thumbdrive.png">

This post contains some brief notes about building offline, static web sites using [React], in order to further the objectives of [minimal computing]. But before I go there, first let me give you a little background...

The [Lakeland Community Heritage Project] is an effort to collect, preserve, and
interpret the heritage and history of African Americans who have lived in the
Lakeland community of [Prince George's County], Maryland since the late 19th
century. This effort has been led by members of the Lakeland community, with
help from students from the University of Maryland working with Professor [Mary
Sies]. As part of the work they've collected photographs, maps, deeds, and oral
histories and published them in an [Omeka] instance at [lakeland.umd.edu]. As
Mary is wrapping up the UMD side of the project she has become increasingly
interested in making these resources available and useful to the community of
Lakeland, rather than leaving them embedded in a software application that is
running on servers owned by UMD.

Recently [MITH] has been in conversation with LCHP to help explore ways that
this data stored in Omeka could be meaningfully transferred to the Lakeland
community. This has involved first getting the Omeka site back online, since it
partially fell offline as the result of some infrastructure migrations at UMD.
We also have been collecting and inventorying disk drives of content used by the
students as they have collected and transfer devices over the years.

<img style="width: 200px; margin-left: 10px; float: right;" src="/images/sneakers.jpg">

One relatively small experiment I tried recently was to extract all the images
and their metadata from Omeka to create a very simple visual display of the
images that could run in a browser without an Internet connection. The point was
to provide a [generous interface] from which community members attending a
meeting could browse content quickly and potentially take it away with them.
Since this meeting was in a environment where there wasn't stable network access
it was important that for the content to be browsed without an Internet
connection. We also wanted to be able to put the application on a thumb drive,
and move it around as a zip file, which could also ultimately allow us to make
it available to community members independent of the files needing to be kept
online on the Internet at a particular location. Basically we wanted the site to
be on the [Sneakernet] instead of the Internet.

### Static Data

The first step was getting all the data out of Omeka. This was a simple matter with Omeka's very clean, straightforward and well documented [REST API].
Unfortunately, LCHP was running an older version of Omeka (v1.3.1) that needed
to be upgraded to 2.x before the API was available. The upgrade process itself
leapfrogged a bunch of versions so I wasn't surprised to run into a [small snag], which I was fortunately able to fix myself (go team open source).  

I wrote a small utility named [nyaraka] that talks to Omeka and downloads all
the items (metadata and files) as well as the collections they are a part of,
and places them on the filesystem. This was a fairly straightforward process
because Omeka's database ensures the one-to-many-relationships between a site
and its collections, items, and files which means they can be written to the
filesystem in a structured way:

```
omeka.example.org
omeka.example.org/site.json
omeka.example.org/collections
omeka.example.org/collections/1
omeka.example.org/collections/1/collection.json
omeka.example.org/collections/1/items
omeka.example.org/collections/1/items/1
omeka.example.org/collections/1/items/1/item.json
omeka.example.org/collections/1/items/1/files
omeka.example.org/collections/1/items/1/files/1
omeka.example.org/collections/1/items/1/files/1/fullsize.jpg
omeka.example.org/collections/1/items/1/files/1/original.jpg
omeka.example.org/collections/1/items/1/files/1/file.json
omeka.example.org/collections/1/items/1/files/1/thumbnail.jpg
omeka.example.org/collections/1/items/1/files/1/square_thumbnail.jpg
```

This post was really meant to be about building a static site with React, and
not about extracting data from Omeka. But this filesystem data is *kinda* like a
static site, right? It was really just laying the foundation for the next step
of building the static site application, since I didn't really want to keep
downloading content from the API as I was developing the application. Having all
the content local made it easier to introspect with command line tools like
[grep], [find] and [jq] as I was building the static site.

### React

Before I get into a few of the details here's a short video that shows what the
finished static site looked like:   

<div style="width: 640px; margin-left: auto; margin-right: auto; text-align: center">
<iframe src="https://player.vimeo.com/video/250352204" width="640" height="441" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> <p><a href="https://vimeo.com/250352204">Lakeland Static Site Demo</a> from <a href="https://vimeo.com/edsu">Ed Summers</a> on <a href="https://vimeo.com">Vimeo</a>.</p>
</div>

You can see that content is loaded dynamically as the user scrolls down the
page. Lots of content is presented at once in random orderings each time to
encourage serendipitous connections between items. Items can also be filtered
based on type (buildings, people and documents). If you want to check it out for
yourself download [this zip file] and open up the index.html in the root of your
home directory. Go ahead and turn off your wi-fi connection so you can see it working without an Internet connection.

When building static sites in the past I've often reached for [Jekyll] but this
time I was interested in putting together a small client side application that
could be run offline. This shouldn't be seen as an either/or
situation: it would be quite natural to create a static site using Jekyll that embeds a React application within it. But for the sake of experimentation I wanted to see how far I could go just using React.

<a href="https://twitter.com/grailbird"><img style="width: 200px; margin-right: 10px; float: left;" src="/images/grailbird.png"></a>

Ever since I first saw Twitter's [personal archive download] (aka [Grailbird])
I've been thinking about the potential of offline web applications to function
as little [time capsules] for web content that can live independently of the
Internet. Grailbird lets you view your Twitter content offline in a dynamic web
application where you can view your tweets over time. Over the past few years
the [minimal computing] has been gaining traction in the digital humanities
community, as a way to ethically and sustainably deliver web content without
necessarily needing to mentally make promises of keeping it online forever.

[React] seemed like a natural fit because I've been using it for the past year
on [another project]. React offers a rich ecosystem of tools, plugins and
libraries like [Redux] for building complex client side apps. The downside of
using React is that it is not as easy for people to set up out of the box, or
for changing over time if you you aren't an experienced software developer. With
Jekyll it's not simple, but at least its relatively easy to dive in and edit
HTML and CSS. But on the plus side for Reactf  you really want to deliver an
unchanging finished thing (static) artifact, then maybe these things don't
really matter so much?

At any rate it seemed like a worthwhile experiment. So here are a few tidbits I learned when bending React to the purposes of minimal computing:

### Static Database

The first is to build a static representation of your data. Many React
applications rely on an external REST API being available. This type of
dependency is an obvious no-no for minimal computing applications, because an
Internet connection is needed, and someone needs to keep the REST API service up and running constantly, which is infrastructure and costs money.

One way of getting around this is to take all the structured data your
application needs and bundle it up as a single file. You can see the one I
created for my application [here]. As you can see it contains metadata for all
the photographs expressed as JSON. But the the JSON itself is part of a global
JavaScript variable declaration which allows it to be loaded by the browser
without relying on an asynchronous HTTP call. Browsers need to limit the ability
of JavaScript to fetch files from the filesystem for [security reasons]. This
JavaScript file is loaded immediately by your web browser when it loads the
`index.html`, and the app can access it globally as `window.DATA`. Think of it
like a static read-only, in memory database for your application. The wrapping
HTML will look as simple as something like this:

```HTML
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lakeland Community Heritage Project</title>
    <script src="static/data.js"></script>
  </head>
  <body>
    <div id="app"></div>
    <script type="text/javascript" src="bundle.js"></script>
  </body>
</html>
```

### Static Images

Similarly, the image files need to be available locally. I took all the images
and saved them into a directory I named `static`, and named the file using a
unique item id (from Omeka) which allowed the metadata and data to be
conceptually linked:

```text
lakeland-images/static/{omeka-id}/fullsize.jpg
```

My React application has an `Image` component that simply renders the image
along with a caption using the &gt;figure&lt;, &lt;img&gt; &lt;figcaption&gt; elements.  

- image
```es6
class Image extends Component {
  render() {
    return (
      <Link to={'/item/' + this.props.item.id + '/'}>
        <figure className={style.Image}>
          <img src={'static/' + this.props.item.id + '/fullsize.jpg'} />
          <figcaption>
            {this.props.item.title}
          </figcaption>
        </figure>
      </Link>
    )
  }
}
```

It's pretty common to use [webpack] to build React applications, and the
[copy-webpack-plugin] will [handle copying] the files from the static
directory into the distribution directory during the build.

### URLs

You may have noticed that in both cases the `data.js` and images are being loaded using a relative URL (without a leading slash, or a protocol/hostname). This is a small but important detail that allows the application to be moved around from zip file, to thumb drive to disk drive, without needing paths to be rewritten. The images and data are loaded relative to where the index.html was  initially loaded from.

In addition many React applications these days use the new [History API] in modern browsers. This lets your application have what appear to be normal URLs structured with slashes which you can manage with [react-router]. However slash URLs are problematic in a offline static site for a couple reasons. The first is that there is no server so you can't tweak it to respond to any request with the HTML file I included above that will bootstrap your application. This means that if you reload a page you will get a 404 not found.

The other problem is that while the History API works fine for an offline application, the relative links to `bundle.js`, `data.js` and the images will break because they will be relative to the new URL.

Fortunately there is a simple solution to this: manage the URLs the way we did before the History API, using hash fragments. So instead of:

```text
file:///lakeland-images/index.html/items/123
```

you'll have:

```text
file:///lake-landimages/index.html#/items/123
```

This way the browser will look to load `static/data.js` from
`file:///lakeland-images/` instead of
`file://lakeland-images/index.html/items/`. Luckily react-router lets you simply
import and use [createHashHistory] in your application initialization and it will write these URLs for you.

### Minimal?

It's important to reiterate that this was an experiment. We don't know if the
LCHP is interested in us developing this approach further. But regardless I
thought it was worth just jotting down these notes for others considering
similar approaches with React and minimal computing applications.

I'll just close by saying in some ways it seems counter-intuitive to refer to a
React application as an example of *minimal computing*. After working with React
off and on for a couple years it still seems quite complicated--especially when
you throw [Redux] into the mix. Assembling the boilerplate needed to get started
is still tedious, unless you use [create-react-app] which is a smart way to
start. By comparison it's much easier to get Jekyll out of the box and start
using it. If the goal is truly to deliver something static and unchanging, then
this up front investment in time is not so significant.

But static sites ultimately rely on a web browser, which are insanely
complicated pieces of code. With a few exceptions (e.g. Flash) browsers have
been pretty good at maintaining backwards compatibility as they've evolved along
with the web. JavaScript is so central to a functioning web it's difficult to
imagine it going away. So really this approach is a bet on the browser and the
web remaining viable. Whatever happens to the web and the Internet we can
probably rely on some form of browser continuing to exist as functioning
software, either natively, or in some sort of emulator, for a good time to
come...or at least longer than the typical website is kept online.

[Omeka]: http://www.omeka.net
[minimal computing]: https://go-dh.github.io/mincomp/
[Lakeland Community Heritage Project]: https://lakelandchp.com/
[Prince George's County]: https://en.wikipedia.org/wiki/Prince_George%27s_County,_Maryland
[Mary Sies]: http://amst.umd.edu/faculty/mary-corbin-sies/
[lakeland.umd.edu]: http://lakeland.umd.edu/
[MITH]: http://mith.umd.edu
[REST API]: https://omeka.readthedocs.io/en/latest/Reference/api/
[small snag]: https://github.com/omeka/Omeka/issues/831
[nyaraka]: https://github.com/edsu/nyaraka
[Jekyll]: https://jekyllrb.com/
[this zip file]: https://github.com/edsu/lakeland-images/archive/v0.0.1.zip
[here]: https://github.com/edsu/lakeland-images/blob/master/static/data.js
[React]: https://reactjs.org/
[Grailbird]: https://www.quora.com/What-is-Grailbird
[personal archive download]: https://blog.twitter.com/official/en_us/a/2012/your-twitter-archive.html
[Redux]: https://github.com/reactjs/redux
[createHashHistory]: https://github.com/ReactTraining/history#usage
[grep]: https://en.wikipedia.org/wiki/Grep
[find]: https://en.wikipedia.org/wiki/Find_(Unix)
[jq]: https://en.wikipedia.org/wiki/Jq_(programming_language)
[time capsules]: https://en.wikipedia.org/wiki/Time_capsule
[another project]: https://github.com/docnow/docnow
[data.js]: https://github.com/edsu/lakeland-images/blob/master/static/data.js
[security reasons]: https://en.wikipedia.org/wiki/Cross-site_scripting
[generous interface]: http://www.digitalhumanities.org/dhq/vol/9/1/000205/000205.html
[webpack]: https://webpack.js.org/
[handle copying]: https://github.com/edsu/lakeland-images/blob/6c1021910cd0fa8e43c9488479c75213d294bb65/webpack.config.js#L36-L39
[History API]: https://developer.mozilla.org/en-US/docs/Web/API/History
[react-router]: https://reacttraining.com/react-router/
[create-react-app]: https://github.com/facebookincubator/create-react-app
[Sneakernet]: https://en.wikipedia.org/wiki/Sneakernet
