---
layout: basic
title: RSS feeds
searchexcerpt: "Subscribe to our RSS feed if you wish to stay informed about the latest news and blog posts on this site"
permalink: /feeds/
---

Add our RSS feed to your reader to keep up to date with our latest news and blog posts.

[{{site.url}}{{site.baseurl}}/feed.xml]({{site.url}}{{site.baseurl}}/feed.xml)

You can also use a feed for a specific [tag]({{site.baseurl}}/tags/):

<ul>
    {% capture site_tags %}{% for tag in site.tags %}{{ tag | first | slugify }}{% unless forloop.last %},{% endunless %}{%
    endfor %}{% endcapture %}
    {% assign tag_words = site_tags | split:',' | sort %}

    {% for tag in tag_words %}
      {% unless tag == '' %}
        {% assign feed = '/feed-' | append: tag || append:'.xml' %}
  <li><a href="{{site.url}}{{ site.baseurl }}{{ feed }}">{{site.url}}{{ site.baseurl }}{{ feed }}</a></li>
      {% endunless %}
    {% endfor %}
</ul>
