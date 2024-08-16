---
layout: default
title: Homepage
---


If this is your first time visiting the blog, here we share our unique thoughts on topics that we have learnt about.

# Latest Blog Posts

<div class="newspaper-layout">
  {% for post in site.posts %}
    {% if forloop.first %}
      <div class="featured-article">
        <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
        <p class="post-meta">{{ post.date | date: "%B %-d, %Y" }}</p>
        {{ post.excerpt }}
      </div>
    {% else %}
      {% if forloop.index == 2 or forloop.index0 | modulo: 3 == 1 %}
        <div class="flex-row">
      {% endif %}
      
      <div class="post">
        <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
        <p class="post-meta">{{ post.date | date: "%B %-d, %Y" }}</p>
        {{ post.excerpt | truncatewords: 30 }}
      </div>
      
      {% if forloop.last or forloop.index | modulo: 3 == 0 %}
        </div>
      {% endif %}
    {% endif %}
  {% endfor %}
</div>