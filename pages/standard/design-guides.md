---
title: Guides
layout: standard
permalink: /standard/design-guides/
breadcrumb: Design guides
lede: Guidance to help you meet the Digital Service Standard.
weight: 50
redirect_from:
  - /design-guides/
  - /standard/design-guides/gov-au-guides/
---

We are releasing new guidance for Australian Government teams.

Please [give feedback on guidance](https://www.surveymonkey.com/r/XFWJ5TC).

## Now available

### Service design

- [Service design and delivery process](https://guides.service.gov.au/service-design-delivery-process/) — an agile process that helps teams build services that are simpler, clearer and faster.
- [User research](https://guides.service.gov.au/user-research/) — how to learn about the users of your service.
- [Starting a team](https://guides.service.gov.au/starting-team/) — how to set up a multidisciplinary team to design, build and maintain a service.

### Content guidance

- [Content Guide](https://guides.service.gov.au/content-guide/) — helps Australian Government teams structure content, write in plain English and create accessible content for all users.
- [Content Strategy](https://guides.service.gov.au/content-strategy/) — helps teams create clear information structures for websites and set up governance for content creation.

## General guidance

We are reviewing current and legacy guidance to improve how we help Australian Government teams.

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
