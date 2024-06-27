---
layout: default
---


If this is your first time visiting my blog, here I share my unique thoughts on topics that I have learnt about.

## Latest Blog Posts

<ul>
  {% for post in site.posts %}
    <li>
      <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>