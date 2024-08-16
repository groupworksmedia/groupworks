---
layout: default
title: Homepage
---


If this is your first time visiting the blog, here we share our unique thoughts on topics that we have learnt about.

# Latest Blog Posts

<div class="content-wrapper">
  <main class="post-list">
    <h1>Blog Posts</h1>
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
  </main>

  <aside class="tag-sidebar">
    <h2>Tags</h2>
    <input type="text" id="tag-search" placeholder="Search tags...">
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

<div id="tag-results" style="display: none;">
  <h2>Articles tagged with "<span id="current-tag"></span>"</h2>
  <ul id="tagged-posts"></ul>
  <p><a href="#" id="back-to-all">Back to all posts</a></p>
</div>

<script src="{{ '/assets/js/tags.js' | relative_url }}"></script>