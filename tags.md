---
layout: default
title: Tags
---

<h1>All Tags</h1>

<input type="text" id="tag-search" placeholder="Search tags...">

<ul class="tag-cloud">
{% for tag in site.tags %}
  <li>
    <a href="{{ '/tag/' | append: tag[0] | downcase | replace: ' ', '-' | relative_url }}">
      {{ tag[0] }} <span>({{ tag[1] | size }})</span>
    </a>
  </li>
{% endfor %}
</ul>

<script src="{{ '/assets/js/search.js' | relative_url }}"></script>