---
layout: page
title: Publications
excerpt: "Key Publications."
search_omit: false
---

[Link to my PhD Thesis: *An acoustic and aerodynamic analysis of consonant articulation in Bininj Gun-wok*](http://hdl.handle.net/11343/42067)

[Link to my profile on Academia.com](https://unimelb.academia.edu/HywelStoakes)

[Link to my Research Gate profile](https://www.researchgate.net/profile/Hywel_Stoakes)

<ul class="post-list">
{% for post in site.categories.articles %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>
