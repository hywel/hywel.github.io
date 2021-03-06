---
layout: page
title: Tag Index
excerpt: "An archive of posts sorted by tag."
search_omit: true
---

{% capture site_tags %}{% for tag in site.tags %}{{ tag | first }}{% unless forloop.last %},{% endunless %}{% endfor %}{% endcapture %}
{% assign tags_list = site_tags | split:',' | sort %}

<ul class="tag-box inline">
  {% for item in (0..site.tags.size) %}{% unless forloop.last %}
    {% capture this_word %}{{ tags_list[item] | strip_newlines }}{% endcapture %}
    <li><a href="#{{ this_word }}">{{ this_word }} <span>{{ site.tags[this_word].size }}</span></a></li>
  {% endunless %}{% endfor %}
</ul>

{% for item in (0..site.tags.size) %}{% unless forloop.last %}
  {% capture this_word %}{{ tags_list[item] | strip_newlines }}{% endcapture %}
  <h2 id="{{ this_word }}">{{ this_word }}</h2>
  <ul class="post-list">
  {% for post in site.tags[this_word] %}{% if post.title != null %}
    <li><a href="{{ site.url }}{{ post.url }}">{{ post.title }}<span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span></a></li>
  {% endif %}{% endfor %}
  </ul>
{% endunless %}{% endfor %}

  <div class="tag-cloud">
  {% for tag in site.tags %}
<a href="#posts-tag" id="{{ forloop.index }}" class="__tag" style="margin: 5px">{{ tag[0] }}</a>
  <ul id="list_{{ forloop.index }}" style="display:none;">
  {% for post in tag[1] %}
<li><a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>
{% endfor %}
</div>

  <div id ="posts-tags" class="post-list" style="margin: 50px;"></div>

  <script type="text/javascript">
  $(function() {
    var minFont = 15.0,
    maxFont = 40.0,
    diffFont = maxFont - minFont,
    size = 0;

    {% assign max = 1.0 %}
    {% for tag in site.tags %}
    {% if tag[1].size > max %}
    {% assign max = tag[1].size %}
    {% endif %}
    {% endfor %}

    {% for tag in site.tags %}
    size = (Math.log({{ tag[1].size }}) / Math.log({{ max }})) * diffFont + minFont;
    $("#{{ forloop.index }}").css("font-size", size + "px");
    {% endfor %}

    $('.tag-cloud a[class^="__tag"]').click(function() {
      $('.post-list').empty();
      $('#list_' + $(this).attr('id')).each(function() {
        $('.post-list').append('<ul>' + $(this).html() + '</ul>');
      });
    });
  });
</script>