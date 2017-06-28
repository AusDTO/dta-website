---
title: ICT procurement updates
layout: basic
searchexcerpt: Get the latest updates about ICT procurement for the Australian Government.
permalink: /what-we-do/policies-and-programs/ict-procurement/ict-procurement-updates/
localnav: what-we-do
---

<article  id="content">

<p>Here you can find news and updates about ICT procurement. We will share information about changes to panels, opportunities to join, and requests for your feedback.</p>

<h2>Contact us</h2>

<p>If you have any questions or feedback you can contact the ICT procurement team at <a href="mailto:ictprocurement@dta.gov.au">ictprocurement@dta.gov.au</a>. </p>

<h2>Latest news and updates</h2>

<a class="rss" href="{{ "/what-we-do/policies-and-programs/ict-procurement/ict-updates-feeds/" | prepend: site.baseurl }}">Add news and updates to your RSS feed</a>


<ul class="list-horizontal">

    {% for tag in site.tags %}
      {% assign t = tag | first %}
      {% if t == 'ict-procurement' %}
        {% assign posts = tag | last %}
        {% for post in posts limit:4 %}
          {% include ict-updates-list-item.html post=post %}
        {% endfor %}
      {% endif %}
    {% endfor %}

</ul>


  <a class="see-more" href="{{site.baseurl}}/what-we-do/policies-and-programs/ict-procurement/ict-procurement-updates/all-updates/">See all updates</a>


</article>
