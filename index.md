---
layout: default
title: Homepage
---


If this is your first time visiting the blog, here we share our unique thoughts on topics that we have learnt about.

# Latest Blog Posts

<ul class="post-list">
  {% for post in site.posts %}
    <li class="post">
      <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      <p class="post-meta">{{ post.date | date: "%B %-d, %Y" }}</p>
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>