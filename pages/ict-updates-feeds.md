---
layout: basic
title: ICT procurement update feed
searchexcerpt: "Subscribe to our ICT procurement updates RSS feed if you wish to stay informed about the latest news and updates on this site"
permalink: /what-we-do/policies-and-programs/ict-procurement/ict-updates-feed/
---

Add our RSS feed to your reader to keep up to date with our latest news and updates on ICT procurement.

[{{site.url}}{{site.baseurl}}/feed-ict-procurement.xml]({{site.url}}{{site.baseurl}}/feed-ict-procurement.xml)

[See all our RSS feeds]({{site.url}}{{site.baseurl}}/feed)

You can also use a feed for another specific [category]({{site.baseurl}}/tags/):

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
