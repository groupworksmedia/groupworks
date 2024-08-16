---
layout: default
title: Homepage
---


If this is your first time visiting the blog, here we share our unique thoughts on topics that we have learnt about.

# Latest Blog Posts

<div class="newspaper-layout">
{% raw %}
{% for post in site.posts %}
  {% if forloop.first %}
    <div class="featured-article">
      <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      <p class="post-meta">{{ post.date | date: "%B %-d, %Y" }}</p>
      {{ post.excerpt }}
    </div>
  {% else %}
    <div class="column-article">
      <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
      <p class="post-meta">{{ post.date | date: "%B %-d, %Y" }}</p>
      {{ post.excerpt | truncatewords: 30 }}
    </div>
  {% endif %}
{% endfor %}
{% endraw %}
</div>