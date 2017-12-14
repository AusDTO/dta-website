---
title: Guides
layout: standard
permalink: /standard/design-guides/
breadcrumb: Design guides
lede: Guidance to help you meet the Digital Service Standard.
weight: 50
redirect_from: /design-guides/
---

We are releasing new guidance for Australian Government teams.

Please [give feedback on guidance](https://www.surveymonkey.com/r/XFWJ5TC).

## Now available

### Service design

- [Service design and delivery process](https://guides.service.gov.au/service-design-delivery-process/) — an agile process that helps teams build services that are simpler, clearer and faster.
- [User research](https://guides.service.gov.au/user-research/) — how to learn about the users of your service.
- [Starting a team](https://guides.service.gov.au/starting-team/) — how to set up a multidisciplinary team to design, build and maintain a service.

### Content guidance

- [Content Guide](https://guides.service.gov.au/content-guide/)  — helps Australian Government teams structure content, write in plain English and create accessible content for all users.
- [Getting buy-in](https://guides.service.gov.au/content-strategy/getting-buy-in/) — how to get support from the top level in your organisation to improve content and workflow.
- [Content auditing](https://guides.service.gov.au/content-strategy/content-auditing/) — help on how to get a clear understanding of your content and how useful it is.
- [Removing content](https://guides.service.gov.au/content-strategy/removing-content/) — how to remove content to help users find what they need.
- [Creating user‑centred content](https://guides.service.gov.au/creating-user-centred-content/) — help on understanding the needs of users, and designing and testing content.
- [Governing content](https://guides.service.gov.au/governing-content/) — help on aligning the goals of your content strategy for everyone involved.

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
