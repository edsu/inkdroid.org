---
layout: default
title: Tags
---

These are tags that I've used to categorize posts over the years, ordered by how much has been written about each topic. I haven't been completely consistent over that time, but they provide a slightly grimy window into what I've written about.

{% assign tag_names = "" %}
{% for tag in site.tags %}
  {% assign padded = tag[1].size | prepend: "0000" | slice: -4, 4 %}
  {% assign tag_names = tag_names | append: padded | append: ":" | append: tag[0] | append: "," %}
{% endfor %}
{% assign sorted_tags = tag_names | split: "," | sort | reverse %}

<section class="post-list">
  <p class="post-list-total">total {{ site.tags.size }}</p>
  {% for item in sorted_tags %}
    {% assign parts = item | split: ":" %}
    {% assign tag_name = parts[1] %}
    {% assign tag_posts = site.tags[tag_name] %}
    {% if tag_name != "" %}
    <article class="post-summary">
      <span class="perms">drwxr-xr-x</span>
      <span class="size">{{ tag_posts.size }}</span>
      <span class="date">{{ tag_posts.first.date | date: "%Y-%m-%d" }}</span>
      <a href="/tag/{{ tag_name | slugify }}/">{{ tag_name }}/</a>
    </article>
    {% endif %}
  {% endfor %}
</section>
