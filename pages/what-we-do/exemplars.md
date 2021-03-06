---
layout: basic
title: "Exemplars"
lede: "We're working with government agencies to help transform services."
permalink: /what-we-do/exemplars/
redirect_from: /our-work/transformation/
localnav: what-we-do
searchexcerpt: "The DTA works closely with other government agencies to transform individual services while also offering advice and expertise to drive whole-of-government transformation."
---

{% include project-counter.html %}

<p>Government agencies are transforming services by following the <a href="{{ site.baseurl }}/standard/service-design-and-delivery-process/">service design and delivery process</a> and meeting the <a href="{{ site.baseurl }}/standard/">Digital Service Standard</a>.</p>

<p>We've created delivery hubs in Sydney and Canberra where service teams can learn from and share with others on the same journey, with hands-on support from the team at the DTA.</p>

{% assign pages = site.projects | sort:"weight"  %}
<ul class="list-small">
  {% for project in pages %}
    {% if project.program == 'dtp' %}
      <li><a href="#{{ project.title | slugify }}"><span class="badge--{{ project.phase }}">{{ project.phase }}</span> {{ project.title }}</a></li>
    {% endif %}
  {% endfor %}
</ul>

<ul class="project-list dtp">
  {% for project in pages %}
  	{% if project.program == 'dtp' %}
  	 <li><a id="{{ project.title | slugify }}"></a>{% include project-list.html %}</li>
  	{% endif %}
  {% endfor %}
</ul>

## Links

- [Contact the program team]({{ site.baseurl }}/contact)
