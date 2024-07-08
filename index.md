---
layout: default
title: Homepage
---


If this is your first time visiting my blog, here we share our unique thoughts on topics that we have learnt about.

# Latest Blog Posts

<ul>
  {% for post in site.posts %}
    <li>
      <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>
