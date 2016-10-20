---
# You don't need to edit this file, it's empty on purpose.
# Edit theme's home layout instead if you wanna make some changes
# See: https://jekyllrb.com/docs/themes/#overriding-theme-defaults
layout: home
permalink: "/"
---
<main>
<article id="content" class="content-listing" tabindex="-1">

<section class="about-dta">
<h1>Digital Transformation Agency</h1>

<p class="abstract">The role of the Digital Transformation Office is to work with the Public Service to make government digital services simpler, clearer and more user focused. We administer the Digital Service Standard and GOV.AU.</p>
</section>

<section class="what-we-do">
<h2 class="home-heading">What we're involved in</h2>
  <ul class="list-vertical--thirds">

  {% for page in site.pages %}

  {% if page.display-homepage %}
    <li>
      <article>
        <h3>
          <a href="#">{{page.title}}</a>
        </h3>
        <p>{{page.homepage-snippet}}</p>
      </article>
    </li>
    {% endif %}
    {% endfor %}

  </ul>
</section>

<section class="news-media">

<h2 class="home-heading">News and media</h2>

<ul class="list-vertical--fourths no-border">

{% for post in site.posts limit:8 %}

<li>

<figure>
  {% if post.thumbnail %}
  <a href="{{post.url}}"><img class="blog-thumbnail" src="{{ post.thumbnail }}"></a>
  {% else %}
  <a href="{{post.url}}"><img class="blog-thumbnail" src="/images/blog-thumbnails/blog-thumbnail-placeholder.png"></a>
  {% endif %}
</figure>
  <article>
    <h3>
      <a href="#">{{post.title}}</a>
    </h3>

    <div class="meta">
      <time datetime="{{post.date}}">{{ post.date | date: "%-d %b %Y" }}</time>
      {% if post.category contains 'media-release' %}
      Media Release
      {% else %}
      {{post.author}}
      {% endif %}
    </div>
  </article>

</li>

{% endfor %}

</ul>

<a class="see-more" href="/news/">See more blog posts</a>

</section>
<div class="homepage-footer">

  <section class="leadership">
    <h2 class="home-heading">Leadership</h2>
    <ul class="list-horizontal">

    {% for leader in site.leadership-group %}

      <li>
        <figure>
          <img src="{{ leader.image }}" alt="Image of {{leader.title}}">
        </figure>
        <article>
          <h3>
            {{leader.title}}
          </h3>
          <div class="meta">
            {{leader.position}}
          </div>
          <p>{{leader.content}}</p>

        </article>
      </li>

      {% endfor %}

    </ul>
  </section>

  <section class="social-media">
    <h2 class="home-heading">Social media</h2>
    <ul class="social-media-links">
    	<li><a class="twitter" href="https://twitter.com/DTO">Twitter</a></li>
    	<li><a class="facebook" href="https://www.facebook.com/DigitalTransformationOffice">Facebook</a></li>
    	<li><a class="linkedin" href="https://www.linkedin.com/company/digital-transformation-office">LinkedIn</a></li>
    	<li><a class="youtube" href="https://www.youtube.com/channel/UCmDkFN3UlK2wSKDQQhd-Y-A">YouTube</a></li>
    	<li><a class="slideshare" href="http://www.slideshare.net/DTO-slides">Slideshare</a></li>
    </ul>
  </section>

</div>

</article>
</main>
