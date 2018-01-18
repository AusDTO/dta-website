---
title: "Colour and contrast — the 2 essential ingredients of accessible design"
category: [blog]
tag: 'digital transformation'
author: Nick Nelson
author-excerpt: "Nick Nelson is an interaction designer on the dashboard team at the DTA."
thumbnail: /images/blog-thumbnails/colour-and-contrast-thumbnail.png
hero-image: /images/blog-banners/colour-and-contrast-hero.png
facebook-image: /images/blog-facebook/colour-and-contrast-facebook.png
twitter-image: /images/blog-twitter/colour-and-contrast-twitter.png
searchexcerpt: We share some insights on colour and contrast for data-based information, based on our experience creating a dashboard for Australia’s largest cities.
lede: "We share some insights on colour and contrast for data-based information, based on our experience creating a dashboard for Australia’s largest cities."
---
<figure>
  <img src="{{ site.url }}{{ site.baseurl }}{{ page.hero-image }}" alt="Our custom accessible colour palette incorporating Google Material Design.">
  <figcaption>
    <p><em>Caption: our custom accessible colour palette incorporating Google Material Design</em></p>
  </figcaption>
</figure>

At the DTA we design to [13 criteria](/standard/) for simple, clear and fast government services. [Criteria 9](/standard/9-make-it-accessible/) is all about making things easier for users, regardless of their circumstances.

While developing our most recent performance dashboard (for [Australia’s largest cities](/blog/smart-cities-dashboard/)), we learnt quite a bit about accessibility in colour and contrast, some of which I’ve shared below.

A major group of people who use our dashboard are older Australians.

With more than 1 in 7 people [aged 65 and over](https://www.acma.gov.au/theACMA/engage-blogs/engage-blogs/Research-snapshots/Digital-lives-of-older-Australians), they are a growing segment of Australia’s population and expected to double in the next 50 years. Half of them are also thought to have low-vision and it’s an issue not limited to their age group. Many people over 40 years old can’t read small text without glasses or bifocals. That’s a natural condition called [presbyopia](http://www.allaboutvision.com/conditions/presbyopia.htm) and just one of [7 known colour conditions](https://nei.nih.gov/health/color_blindness/facts_about).

So how did these conditions affect our choice of colour and contrast in the [Smart Cities dashboard](https://smart-cities.dashboard.gov.au/all-cities/overview)?

## 1. Colour

A key part of our work is using colour to help people understand information. Charts can look completely different to people with colour conditions. In Australia, 9% of us have some form of colour-blindness. Others have vision affected by colour contrast and sizing.

<figure>
  <img src="{{ site.url }}{{ site.baseurl }}/images/blog-content/colour-and-contrast-housing-tenure.png" alt="A chart as seen by someone with no colour condition.">
  <figcaption>
    <p><em>Caption: the chart as seen by someone with no colour condition.</em></p>
  </figcaption>
</figure>

<figure>
  <img src="{{ site.url }}{{ site.baseurl }}/images/blog-content/colour-and-contrast-housing-tenure-multiple.png" alt="A chart as seen by people with different colour conditions.">
  <figcaption>
    <p><em>Caption: The same chart as seen by people with different colour conditions.</em></p>
  </figcaption>
</figure>

To design the [smart cities dashboard](https://smart-cities.dashboard.gov.au/all-cities/overview) we needed 6 different colours — one for each category. But colours are very subjective and carry different meanings depending on your cultural and social background. Because of this, we avoided:

- Red — which is often used to signify danger or negativity.
- Bright green —  which can have positive connotations.

Choosing 6 colours within these limitations was hard but we chose the palette based on Google material design colours and ended up with a more neutral bluey-green. We were also selective about which colours appeared next to each other to improve the contrast and make it easier to tell them apart.

We then tested the palette with some known colour conditions. There are different ways to do this kind of testing but we used [Stark](http://www.getstark.co/) and this palette performed very well.

### Applying patterns can help

It’s harder to find the right palette if you need to use lots of different colours in your design. One way to overcome this is to overlay patterns which make it easier again for the viewer to differentiate between categories.

<figure>
  <img src="{{ site.url }}{{ site.baseurl }}/images/blog-content/colour-and-contrast-housing-tenure-with-patterns.png" alt="A chart with patterns applied to the colour bands.">
  <figcaption>
    <p><em>Caption: Patterns applied to charts help with colour conditions like Protanopia.</em></p>
  </figcaption>
</figure>

Applying a pattern helps resolve colour issues by adding another layer of visual distinction. Especially useful for multicoloured charts.

To build these charts and apply these patterns, we used the accessibility module in High Charts.

## 2. Contrast

It’s one thing to come up with a good colour palette but we also needed to take contrast into account.

The people that wrote the book on this are the [World Wide Web Consortium (W3C)](https://www.w3.org/), an international community that develops [standards](https://www.w3.org/TR/) for accessibility. It’s their [web content accessibility guidelines](https://www.w3.org/TR/) (WCAG 2.0 AA) which features in our [digital criteria](/standard/9-make-it-accessible/) for the Australian Government. They also define what [minimum contrast](https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html) should look like for the presentation of text, images of text, contrast ratios, large-scale text, user interface, decoration and logotypes.

It can be a challenge to meet the W3C’s standards and keep an interface working in harmony, looking good and pleasant for users. On the dashboard we found having a good colour range really helps.

Google material design allowed us to use an extensive colour range which is still manageable. We also needed more colours on the lower end of the range so we were able to create one. It was a big help to have subtle backgrounds to work with, lessening the blow of working with a high contrast accessibility effect.  

<figure>
  <img src="{{ site.url }}{{ site.baseurl }}/images/blog-content/colour-and-contrast-material-design.png" alt="A set of three Google material design palettes. This demonstrates that while there is a good range of colours, they are limited in the lighter tones.">
  <figcaption>
    <p><em>Caption: 3 of the Google material design palettes. Showing a good range but limited in the lighter tones i.e. only 100 and a 50.</em></p>
  </figcaption>
</figure>

<figure>
  <img src="{{ site.url }}{{ site.baseurl }}/images/blog-content/colour-and-contrast-smartcities-custom-palette.png" alt="The Smart City custom palette combined with Google Material Design. It shows a matrix of colours with lightness increasing from left to right and hue changing from top to bottom.">
  <figcaption>
    <p><em>Caption: The Smart City custom palette combined with Google Material Design.</em></p>
  </figcaption>
</figure>

We extended the palette to to include a 20, 40, 60, 80 and 90 shade. Also an additional on in the dark - 950. This also is needed to get a good contrast and range to display a chart with multiple legend items.

<figure>
  <img src="{{ site.url }}{{ site.baseurl }}/images/blog-content/colour-and-contrast-dashboard-example.png" alt="A screenshot of the Smart Cities dashboard demonstrating the use of the colour system. There are two rows, one for housing affordability and one for living affordability. Each row has three different charts displaying different data sets. Each row also has a button to view more charts.">
  <figcaption>
    <p><em>Caption: Implementing the colour system using a main colour for each section and various tones within that colour range.</em></p>
  </figcaption>
</figure>

By using a palette like this we can assure to the right levels of contrast to meet the needs of people with colour conditions and simplify the design by using subtitle tones to help communicate the essential data information.

The design awareness with both colour and contrast follows the 7 Principles of universal design. The purpose of the Principles to guide the design of environments, products and communications for all people. It directly applies to:

- Principle 1: Equitable Use
- Principle 2 Flexibility in Use
- Principle 3: Simple and Intuitive Use
- Principle 4: Perceptible Information.

## Tips and tools to get you started

Accessible design is where each element works well together. It has the potential to change the way millions of people access and use government services and makes things easier for everyone regardless of their circumstances.

To finish off, here are some top tips for accessible visual design:

### Be bold, graphic, intentional

Visuals do far more than just please the eye. They create hierarchy, clarity and meaning. It helps users focus on core tasks, features, and information when there is a clear viewing order to the visual elements on a screen.

### Make deliberate colour choices

Choose a set of colours that work well with each other for contrast and accessibility. The right colours can also set the tone of your content and help communicate your message clearly.

### Intentional white space

Create a bold interface that brings the user into the experience.

### Use colour

Colour is the key component. It’s bold, graphic and intentional.

### Think about the context

What is the context of your design? What kind of activity does your service promote? What is its purpose, when, where and how will it be accessed?

### Study the meaning behind colours

Every colour has connotations. Know what these are and make them fit your purpose.

### Think about the whole product

Individual visual elements and colours are great, but how do they work in the bigger picture of your product? Consider how visuals for the whole product affects the meaning and connection for your users.

### Make use of the colour design tools available:

- [getstark.co](http://www.getstark.co/) — use Stark to work with [Sketch](https://www.sketchapp.com/). Easily check colour contrast and view what you’re doing through different colour conditions.
- [colordrop.io](https://colordrop.io/?ref=producthunt) — a better way to visually see and search for colour palettes.
- [lolcolors](https://www.webdesignrankings.com/resources/lolcolors/?ref=producthunt) — well presented colour palettes.
- [material.io](https://material.io/color/#!/?view.left=0&view.right=0) — check contrast with multiple screens and colour pallettes at the same time.
- [coolors.co](https://coolors.co/002626-0e4749-95c623-e55812-efe7da) — a large single colour palette selection.

If you want to know more about accessible design, have a look at our blog about [going beyond the guidelines](/blog/Accessibility-going-beyond-the-guidelines/).

If you have any questions about the cities dashboard, leave a message below or contact [dashboard@digital.gov.au](mailto:dashboard@digital.gov.au).
