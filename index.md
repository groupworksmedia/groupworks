---
layout: default
title: Homepage
---


If this is your first time visiting the blog, here we share our unique thoughts on topics that we have learnt about.

# Latest Blog Posts

<class="newspaper-layout">
  class="featured-article">
    {% assign featured_post = site.posts.first %}
    <h2><a href="{{ featured_post.url | relative_url }}">{{ featured_post.title }}</a></h2>
    <p class="post-meta">{{ featured_post.date | date: "%B %-d, %Y" }}</p>
    {{ featured_post.excerpt }}

  <class="column-articles">
    {% for post in site.posts offset:1 %}
      <class="column-article">
        <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
        <p class="post-meta">{{ post.date | date: "%B %-d, %Y" }}</p>
        {{ post.excerpt | truncatewords: 30 }}
    {% endfor %}