---
layout: default
title: Homepage
---
<div class="content-wrapper">
  <main class="main-content">
    <h1>Blog Posts</h1>
    <div id="all-posts">
      {% for post in site.posts %}
      <article class="post" data-tags="{{ post.tags | join: ',' }}">
        <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
        <p class="post-meta">
          {{ post.date | date: "%B %-d, %Y" }} |
          Tags:
          {% for tag in post.tags %}
          <a href="#" class="tag-link" data-tag="{{ tag | downcase }}">{{ tag }}</a>{% unless forloop.last %}, {% endunless %}
          {% endfor %}
        </p>
        {{ post.excerpt }}
      </article>
      {% endfor %}
    </div>
  </main>
  <aside class="tag-sidebar">
    <h2>Search & Tags</h2>
    <input type="text" id="search-input" placeholder="Search posts or tags...">
    <ul class="tag-cloud">
      {% for tag in site.tags %}
      <li>
        <a href="#" class="tag-link" data-tag="{{ tag[0] | downcase }}">
          {{ tag[0] }} <span>({{ tag[1] | size }})</span>
        </a>
      </li>
      {% endfor %}
    </ul>
  </aside>
</div>
<div id="search-results" style="display: none;">
  <h2>Search Results</h2>
  <div id="results-container"></div>
</div>
<div id="tag-results" style="display: none;">
  <h2>Articles tagged with "<span id="current-tag"></span>"</h2>
  <div id="tagged-posts"></div>
</div>
<p><a href="#" id="back-to-all" style="display: none;">Back to all posts</a></p>
<script src="{{ '/assets/js/search-tags.js' | relative_url }}"></script>