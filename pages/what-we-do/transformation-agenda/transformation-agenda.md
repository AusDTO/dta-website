---
title: Digital transformation agenda
layout: basic
permalink: /what-we-do/transformation-agenda/
redirect_from: /what-we-do/transformation-roadmap/
localnav: what-we-do
gov-speak: true
hero-image: /images/transformation-agenda/transformation-agenda-vision-social.png 
searchexcerpt: "It will be simple and fast to get things done with government, through any channel."
---
<div class="transformation-agenda" markdown="1">

<nav class="index-links">
  <h2>On this page</h2>
  <ul>
    <li>
      <a href="#vision">
        Vision
      </a>
    </li>
    <li>
      <a href="#what-does-this-mean">
        What does this mean?
      </a>
    </li>
    <li>
      <a href="#the-digital-transformation-agenda">
        The Digital Transformation Agenda
      </a>
    </li>
    <li>
      <a href="#key-performance-indicators">
        Key Performance Indicators
      </a>
    </li>
    <li>
      <a href="#government-digital-transformation-roadmap">
        Government Digital Transformation Roadmap
      </a>
    </li>
    <li>
      <a href="#related-news-and-blog-posts">
        Related news and blog posts
      </a>
    </li>
  </ul>
</nav>  

## Vision

<div class="abstract">
    <p>It will be simple and fast to get things done with government, through any channel. Government resources will be deployed with agility and performance better measured.</p>
</div>

### Whole-of-government transformation vision

The government’s vision for digital transformation starts with user needs. Users include individuals, businesses and their representatives, service providers and agencies.

At the front, there is a layer of services that make it easy for users to get things done with government, through whichever channels they need. 

Behind the user-facing services, there’s a highly automated back office that eliminates almost all manual processing and case management, which in turn means there are no unnecessarily bespoke systems. This frees up qualified staff to deal with complex and difficult challenges. 

Supporting the services and back office are digital platforms providing highly commoditised functions, like taking payments and providing notifications. These platforms are highly-scalable, providing simple, common, non-business-specific services. They are ultimately disposable, accessed via a simple government API to access the underlying infrastructure, commercially provided and able to be switched out as needed.

All of these layers are underpinned by a strong foundation of well-structured data. This will make it possible to have real-time performance reporting, allowing government to measure and continuously improve services and enhance regulatory and compliance activities.

Changes to existing policy and legislation that blocks change will underpin the success of the transformation. 

![Diagram showing the whole of government transformation vision](/images/transformation-agenda/transformation-agenda-vision.png)

## What does this mean?

People who use government services have different experiences based on how they interact with and use that service. 
 
Under the digital transformation agenda, government departments and agencies will deliver a range of initiatives that will provide benefits to all users and improve their digital experience.
 
Major initiatives include Single Touch Payroll, My Health Record, Health Payments, Trusted Digital Authentication and Verification, whole-of-government platforms, grants administration and streamlined online business registration service.
 
These initiatives will transform the experience of users in the following ways.

{% for beneficiary in site.data.transformation-agenda.beneficiaries %}

  <h3>For {{ beneficiary.name }}</h3>

  <ul class="list-vertical--thirds">
  {% for experience in beneficiary.experiences %}
    <li>
      <article>
        <h4>{{ experience.name }}</h4>
        <p>
          {{experience.text }}
        </p>
      </article>
    </li>
  {% endfor %}
  </ul>    
{% endfor %}

## The Digital Transformation Agenda 

Achieving this vision will require a comprehensive Digital Transformation Agenda that is:

* owned by all government agencies;
* coordinated and assisted by the Digital Transformation Agency;
* focussed on changing the way government interacts with, and provides services to, users; 
* aimed at driving reform of policies and processes that stand in the way of transformation; and
* aligned with other whole-of-government (WofG) reform agendas. 

The Digital Transformation Agenda will evolve over time as impediments are removed, strategies are delivered and benefits realised. Key initiatives included in the Digital Transformation Agenda to be delivered by mid-2018 follow.

* An agenda for government digital transformation that envelops and brands initiatives to demonstrate real change to the community.
* Sector/domain transformation plans (e.g. individuals, businesses, intelligence etc.) owned by lead agency(s) that take ownership of the relationship with the sector (e.g. Industry and ATO for businesses) that incorporate specific initiatives and agency transformation plans
* A WofG ICT Strategy that is co-designed with agencies and providers providing a clear vision of government ICT to help drive further automation of the back office and transform the broader ICT landscape in government.
* Practical WofG guidance to enable agencies to move towards this vision (e.g. secure public cloud). 
* A strategic review of ICT procurement policy by the PM&C-led ICT Procurement Taskforce.
* Reusable digital platforms for common, commodity services to facilitate digital transformation within agencies and improve the end user experience. 
* Increased transparency and coordination of the digital transformation agenda with built in assurance for high risk/high impact projects and an increased focus on benefits realisation by the DTA’s Program Management Office.
* Data and analytics initiatives to provide users and government with the information they need, support decision making and improve services provided.
* A tailored skills program for the public sector in order to build strong digital capabilities.

The WofG transformation roadmap will also need to recognise and track significant transformation projects across government departments and agencies. These will be identified through additional sector/domain transformation plans.

## Key Performance Indicators

Key Performance Indicators will be developed and made publicly available for initiatives that will deliver on the government’s Digital Transformation Agenda. Whole-of-government indicators will also be developed, for example; delivery of services that comply with the Digital Service Standard, user satisfaction and service availability.

## Government Digital Transformation Roadmap

<div class="roadmap">
    <a href="{{site.baseurl}}/what-we-do/transformation-agenda/roadmap/#image">
      <img id="roadmap-image" src="{% asset_path roadmap %}" alt="Open image of the Digital Transformation Roadmap Gantt chart in a new window">
    </a>
</div>

Having problems seeing this image? [Open larger roadmap image]({{site.baseurl}}/what-we-do/transformation-agenda/roadmap/#image).

[Read the full text version of this roadmap]({{site.baseurl}}/what-we-do/transformation-agenda/roadmap-text/).

## Related news and blog posts

<ul class="list-vertical--thirds latest-news">

{% for tag in site.tags %}
  {% assign t = tag | first %}
  {% if t == 'digital transformation' %}
    {% assign posts = tag | last %}
    {% for post in posts limit:3 %}
    <li>
      <figure>
        {% if post.thumbnail %}
        <a href="{{ post.url }}"><img class="blog-thumbnail" src="{{ site.baseurl }}{{ post.thumbnail }}" alt="Read post {{ post.title }}"></a>
        {% else %}
        <a href="{{ post.url }}"><img class="blog-thumbnail" src="{{ site.baseurl }}/images/post-thumbnail-placeholder.png" alt="Read post {{ post.title }}"></a>
        {% endif %}
      </figure>
      <article>
        <h3>
          <a href="{{ post.url }}">{{ post.title }}</a>
        </h3>
        <div class="meta">
          <time datetime="{{ post.date }}">{{ post.date | date: "%-d %b %Y" }}</time>
          {% if post.category contains "blog" %}
          <a href="{{site.baseurl}}/blog/">Blog</a>
          {% else %}
          <a href="{{site.baseurl}}/news/">News</a>
          {% endif %}
        </div>
      </article>
    </li>
    {% endfor %}
  {% endif %}
{% endfor %}

</ul>

</div>
