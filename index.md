---
layout: default
title: Homepage
---


If this is your first time visiting the blog, here we share our unique thoughts on topics that we have learnt about.

# Latest Blog Posts

<main class="newspaper-layout">
 {% for post in site.posts %}
 {% if forloop.first %}
 <article class="featured-article">
 <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
 <p class="post-meta">{{ post.date | date: "%B %-d, %Y" }}</p>
 <p>{{ post.excerpt }}</p>
 </article>
 {% else %}
 <article class="column-article">
 <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
 <p class="post-meta">{{ post.date | date: "%B %-d, %Y" }}</p>
 <p>{{ post.excerpt | truncatewords: 30 }}</p>
 </article>
 {% endif %}
 {% endfor %}
</main>