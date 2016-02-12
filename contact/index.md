---
layout: page
title: Contact
excerpt: "About Me"
search_omit: true
---
This is the personal website of Hywel Stoakes. I am a phonetician, primarily undertaking research into the comparative phonetics of Australian languages. I am currently a Postdoctoral Research Fellow affiliated with School of Languages and Linguistics at [The University of Melbourne](http://languages-linguistics.unimelb.edu.au), [The Centre of Excellence for the Dynamics of Language](http://dynamicsoflanguage.edu.au) and the [The Research Unit for Indigenous Language](https://indiglang.arts.unimelb.edu.au/home/).  

I can be contacted using the address: hstoakes \|*at*\| unimelb \|*dot*\| edu \|*dot*\|au  

Otherwise contact me via [twitter](https://www.twitter.com) or [g+](https://plus.google.com) using the icons below.

Fine print: All the usual disclaimers apply to the content of this site: all views are my own and do not represent that of my affiliated.


<ul class="post-list">
{% for post in site.categories.articles %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>
