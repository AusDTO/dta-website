---
title: Guides
layout: standard
permalink: /standard/design-guides/
breadcrumb: Design guides
lede: Helping you meet the Digital Service Standard.
weight: 50
phase: 'Alpha'
redirect_from: /design-guides/
searchexcerpt: The guides are a growing collection of information to help Australian Government agencies meet the Digital Service Standard. The Digital Service Standard helps us to build services that are simpler, faster and easier for all users.
---
The guides are a growing collection of information to help Australian Government agencies meet the [Digital Service Standard](/standard/). The Digital Service Standard helps us to build services that are simpler, faster and easier for all users.

We are building [GOV.AU Guides](http://guides.service.gov.au/design-guide/), which will support the Digital Service Standard through common design patterns and a style guide. The GOV.AU Guides will help designers, developers, and content writers and editors to create and maintain a consistent user experience across government services.

We have also started to write a [Service Handbook](https://ausdto.github.io/service-handbook/), which provides greater detail on the stages of the [service design and delivery process](/standard/service-design-and-delivery-process/).

We encourage you to provide feedback on the guides and make suggestions for additional guides: [standard@digital.gov.au](mailto:standard@digital.gov.au). Your input will help us develop the guidance you need to deliver easy to use, trusted and cost-effective digital services.

<div class="dss-guides">

<ul>

  {% for guide in site.pages %}
    {% if guide.layout == 'guide' %}
      <li><a href="{{guide.url}}">{{guide.title}}</a></li>
    {% endif %}
  {% endfor %}  

</ul>

</div>
