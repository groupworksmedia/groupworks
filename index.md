---
layout: default
title: Homepage
---


If this is your first time visiting the blog, here we share our unique thoughts on topics that we have learnt about.

# Latest Blog Posts

   {% for post in site.posts %}
      <h2>{{ post.title }}</h2>
      <p>{{ post.date | date: "%B %-d, %Y" }}</p>
      {{ post.excerpt }}
  {% endfor %}