---
layout: default
title: Homepage
---


If this is your first time visiting the blog, here we share our unique thoughts on topics that we have learnt about.

# Latest Blog Posts

<div class="newspaper-layout">
  <div class="featured-article">
    {% for post in site.posts limit:1 %}
      <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      <p class="post-meta">{{ post.date | date: "%B %-d, %Y" }}</p>
      {{ post.excerpt }}
    {% endfor %}
  </div>

  <div class="column-articles">
    {% for post in site.posts offset:1 limit:5 %}
      <div class="column-article">
        <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
        <p class="post-meta">{{ post.date | date: "%B %-d, %Y" }}</p>
        {{ post.excerpt | truncatewords: 30 }}
      </div>
    {% endfor %}
  </div>
</div>