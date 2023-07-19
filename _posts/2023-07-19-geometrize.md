---
layout: post
title: Geometrize
tags:
- photography
- algorithms
---

While reading the introductory material in [The Intelligence Illusion] I noticed that the illustrations were generated in part with this little tool called [Geometrize]. The rationale for using it was to show that it's possible to generate images with algorithms without resorting to [stealing] other people's images to do it.

Geometrize automatically generates random rectangles, triangles, circles, ellipses, rotated ellipses, lines and beziers to approximate an original image using a [hill climbing algorithm]. It's written in a language I've never heard of called [Haxe] which uses a compiler written in OCaml to compile to JavaScript, C++, Java, PHP, C#, Python and Lua.

<div style="display: grid; grid-template-columns: 1fr 1fr; column-gap: 1em;">
  <div>
  <a href="https://www.flickr.com/photos/inkdroid/52800441853/">
    <img height="600" src="/images/geometrize-before.jpg">
  </a>
  </div>
  <div>
  <a href="/images/geometrize-after.svg">
    <img height="600" src="/images/geometrize-after.svg">
  </a>
  </div>
</div>

[Geometrize]: https://www.samcodes.co.uk/project/geometrize-haxe-web/
[The Intelligence Illusion]: https://illusion.baldurbjarnason.com/
[hill climbing algorithm]: https://en.wikipedia.org/wiki/Hill_climbing
[Haxe]: https://en.wikipedia.org/wiki/Haxe
[stealing]: https://www.techwontsave.us/episode/174_why_ai_is_a_threat_to_artists_w_molly_crabapple
