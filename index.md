---
layout: default
title: Homepage
---


If this is your first time visiting the blog, here we share our unique thoughts on topics that we have learnt about.

# Latest Blog Posts

---
layout: default
title: Home
---

# Latest Blog Posts

{% for post in site.posts %}
  {% if forloop.first %}
    <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
    <p>{{ post.date | date: "%B %-d, %Y" }}</p>
    <p>{{ post.excerpt }}</p>
  {% else %}
    <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
    <p>{{ post.date | date: "%B %-d, %Y" }}</p>
    <p>{{ post.excerpt | truncatewords: 30 }}</p>
  {% endif %}
{% endfor %}