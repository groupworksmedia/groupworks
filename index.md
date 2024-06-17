---
layout: default
---

# Welcome to Flavournomics!
This is my blog, where I share my thoughts and storties worth highlighting and spreading.
## What is Flavournomics?
Despite the fact that, flavournomics contains flavour it has nothing to do with food and beverage. Rather, flavournomics refers to the relationship between individual perspectives how that shapes the society.

# Latest Blog Posts

<ul>
  {% for post in site.posts %}
    <li>
      <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>