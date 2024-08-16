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

<main class="newspaper-layout">
  {% raw %}{% for post in site.posts %}{% endraw %}
    {% raw %}{% if forloop.first %}{% endraw %}
      <article class="featured-article">
        <h2><a href="{% raw %}{{ post.url | relative_url }}{% endraw %}">{% raw %}{{ post.title }}{% endraw %}</a></h2>
        <p class="post-meta">{% raw %}{{ post.date | date: "%B %-d, %Y" }}{% endraw %}</p>
        <p>{% raw %}{{ post.excerpt }}{% endraw %}</p>
      </article>
    {% raw %}{% else %}{% endraw %}
      <article class="column-article">
        <h3><a href="{% raw %}{{ post.url | relative_url }}{% endraw %}">{% raw %}{{ post.title }}{% endraw %}</a></h3>
        <p class="post-meta">{% raw %}{{ post.date | date: "%B %-d, %Y" }}{% endraw %}</p>
        <p>{% raw %}{{ post.excerpt | truncatewords: 30 }}{% endraw %}</p>
      </article>
    {% raw %}{% endif %}{% endraw %}
  {% raw %}{% endfor %}{% endraw %}
</main>