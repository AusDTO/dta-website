---
title: Guides
layout: standard
permalink: /standard/design-guides/
breadcrumb: Design guides
lede: Guidance to help you meet the Digital Service Standard.
weight: 50
phase: 'Alpha'
redirect_from: /design-guides/
---

We are currently expanding and updating our guidance to help Australian Government teams research, design, build and maintain services.

## Now available

[Content Guide](https://guides.service.gov.au/content-guide/)

More guidance is coming soon.

## General guidance

<div class="dss-guides">

<ul>

  {% for guide in site.pages %}
    {% if guide.layout == 'guide' %}
      <li><a href="{{guide.url}}">{{guide.title}}</a></li>
    {% endif %}
  {% endfor %}  

</ul>

</div>

## Get involved

[Join our communities of practice](https://www.dta.gov.au/what-we-do/partnerships/communities/) to share ideas, provide feedback and hear about new guidance releases.
