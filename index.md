---
layout: default
title: Homepage
---
<div class="content-wrapper">
  <main class="main-content">
    <h1>Blog Posts</h1>
    <div id="posts-container">
      {% for post in site.posts %}
      <article class="post" data-tags="{{ post.tags | join: ',' }}">
        <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
        <p class="post-meta">
          {{ post.date | date: "%B %-d, %Y" }} |
          Tags:
          {% for tag in post.tags %}
          <span class="post-tag">{{ tag }}</span>
          {% endfor %}
        </p>
        {{ post.excerpt }}
      </article>
      {% endfor %}
    </div>
  </main>
  
  <aside class="sidebar">
    <div class="search-container">
      <input type="text" id="search-input" placeholder="Search posts...">
    </div>
    <div class="tags-container">
      <h2>Tags</h2>
      <ul id="tags-list">
        {% for tag in site.tags %}
        <li data-tag="{{ tag[0] | downcase }}">
          {{ tag[0] }} ({{ tag[1] | size }})
        </li>
        {% endfor %}
      </ul>
    </div>
  </aside>
</div>

<script src="{{ '/assets/js/search-tags.js' | relative_url }}"></script>