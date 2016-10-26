---
layout: basic
title: Search
permalink: /search/
body-class: search-page
exclude_from_search: true
---
<div id="search">
  <form id="search-form" action="/search/" method="get">
    <label for="q">Search digital.gov.au</label>
    <input name="q" id="search-query" type="text" autocomplete="on"/>
    <input type="submit" value="Search">
        
  </form>
</div>

<section id="search-results" style="display: none;">
  <h2>Search results</h2>
  Sorted by relevance
  <div class="entries">
  </div>
</section>

{% raw %}
<script id="search-results-template" type="text/mustache">
  {{#entries}}
    <article>
      <h3>
      <a href="{{url}}">{{title}}</a>  
      </h3>
      <span class="url">https://www.digital.gov.au{{url}}</span>
      {{#author}}<span>{{author}} &#8211;</span>{{/author}}
      {{#date}}<time datetime="{{pubdate}}" pubdate>{{displaydate}}</time>{{/date}}
      <p>{{searchexcerpt}}</p>
    </article>
  {{/entries}}
</script>
{% endraw %}



