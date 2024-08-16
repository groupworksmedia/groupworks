---
layout: default
title: All Tags
---

<h1>All Tags</h1>

<ul class="tag-cloud">
{% for tag in site.tags %}
  <li>
    <a href="{{ '/tag/' | append: tag[0] | slugify | append: '.html' | relative_url }}">
      {{ tag[0] }} <span>({{ tag[1] | size }})</span>
    </a>
  </li>
{% endfor %}
</ul>