---
title: "The tech behind dta.gov.au"
category: [blog]
tag: 'technology'
author: Brendan Gordon
author-excerpt: "Brendan Gordon is a Developer at the Digital Transformation Agency."
thumbnail: /images/blog-thumbnails/Blog-Thumb-DTA-website.png
hero-image: /images/blog-content/Blog-Hero-DTA-website.png
searchexcerpt: "Our website continues to change to reflect the changes in our work, and will continue to grow and adapt as we do. In this post, we share our approach to how we developed the website and the technology that sits behind it."
---

![Extract of HTML source code from the DTA website.]({{ site.url }}{{ site.baseurl }}{{ page.hero-image }})

*Caption: Extract of HTML source code from the DTA website.*

In November 2016, when we became the DTA, the technical needs for our website were relatively simple. Our site needed to be able to:

- allow publishing of simple, informative content
- support less than 10 page templates
- allow previewing of changes on the site before they go live
- handle less than 1000 pages.

As a small agency, we needed to minimise costs, so we took a minimum viable product (MVP) approach to development --- creating a simple static site with a view to iterate and evolve the website as the DTA grew. We found that a simple static site met our needs and was cheap, fast, secure, and easy to work with.

Our development goals were to build a site that:

- used open source and shared resources like the UI-Kit to reduce costs
- had the minimum functionality needed to meet our business goals at the time
- used the right tools for our simple needs, taking into account our in-house skills 
- could be further developed in the future without the needs for a full redevelopment. 

WARNING: it’s about to get technical.

## The tech behind the site 

The DTA website is built with [Jekyll](https://jekyllrb.com/) --- an open source static website generator. The site content is mostly written in [markdown](https://en.wikipedia.org/wiki/Markdown). Jekyll only runs whenever the content changes, and it generates a set of HTML, CSS and JavaScript files. These files are easily hosted on a basic web server.

We have found this simple tech approach to be very cheap compared to the alternatives, but is still powerful enough to suit our publishing needs.

## Using the UI-Kit 

The DTA website is styled using the [UI-Kit](https://github.com/govau/uikit) and the [DTA Design Guide](http://guides.service.gov.au/design-guide/). This allowed us to save time and money by using styling that already exists as the foundation for our website. 

The UI-Kit is a whole-of-government toolkit being created by the DTA to give government a set of accessible web components to use on their websites. Agencies can use it instead of creating custom designs and styles for their sites --- the intention is to create more consistency across government sites. It is designed to meet the accessibility standards required by the [Digital Service Standard](https://www.dta.gov.au/standard/). 

We still sometimes need to write our own CSS, but the UI-Kit gives us a simple starting point.

## Publishing content 

For our MVP static site we do not have a content management system. The website source files are stored on [GitHub](https://github.com/), a code hosting platform with powerful collaboration tools used across all DTA delivery teams. Our publishers work in [Markdown](https://daringfireball.net/projects/markdown/), using the GitHub web interface.

We use a [public repository on GitHub](https://github.com/AusDTO/dta-website) and our publishing workflow is based around [branches](https://www.atlassian.com/git/tutorials/using-branches). This allows us to track all changes made to the site, and the use of branches helps us to isolate and preview changes before they are published. 

This is how it works:

- Most changes and additions to the site start as a new branch.
- Every change is immediately tested using [Circle CI](https://circleci.com/gh/AusDTO/dta-website).
- If there is a problem, a notification is sent so that it can be fixed.
- A pull request is created, reviewed and then merged to the ‘develop’ branch.
- Changes are deployed to the staging site for sign-off.
- Changes are then merged with the ‘master’ branch, which triggers a deployment to the live site. 

Each part of the deployment happens automatically whenever the ‘develop’ or ‘master’ branch is updated. This speeds up and simplifies the release process for content publishers. The repository contents are the single source of truth, and the staging site is an exact copy of what will go to the live site.

Our website is a Commonwealth record and needs to be managed in accordance with the Archives Act 1983 and the [National Archives of Australia guidance](http://www.naa.gov.au/Images/archweb_guide_tcm16-47165.pdf). Since every change to the site is tracked in version control, we can easily meet this requirement by going back and rebuilding the site as it was at any point in time.

Publishing content via GitHub is not the best solution for everyone. This was the simplest solution for us because we have in-house technical skills available and an ability to share those skills among the people involved in content management. Working without a content management system means that we are more reliant on our developers --- this is not possible for everyone. 

## Hosting our site — cloud.gov.au

The DTA website is hosted on [cloud.gov.au](https://www.dta.gov.au/what-we-do/platforms/cloud/) – the platform the DTA is developing to make it easier for government to build digital services. Cloud.gov.au saves time and effort by managing infrastructure, so a team can focus on building the service.

Cloud.gov.au has an API that allows deployments to be entirely automated. We specify the [static build pack](http://docs.cloudfoundry.org/buildpacks/staticfile/index.html) in our [manifest file](https://github.com/AusDTO/dta-website/blob/develop/manifest-production.yml), and the platform takes care of provisioning a server and inserting the built website files. This means our exposure to security attacks is minimised, and we do not have to spend time regularly applying platform updates.

We use Cloudfront as our CDN (content delivery network), and requests are routed to a HTTPS termination layer on cloud.gov.au before being forwarded to our web server.

## Testing

The build pipeline is a series of scripts, which allows us to customise the process and add tools to check the quality of the site. We run [HTMLProofer](https://github.com/gjtorikian/html-proofer) which quickly validates the static files HTML, and makes sure there are no broken internal links or missing images.

We also have ad-hoc tests that run on a local copy of the site. We can:
- check for broken external links
- test all pages for obvious accessibility using [pa11y-ci](https://github.com/pa11y/ci) (recognising we still need to undertake manual testing)

We have found these are best kept out of CI — we want our CI to be fast, and having build dependencies on every external server puts us at risk of outages. 

## External services and plugins

A static site on its own has limitations, but this is where external services are useful. The ones we currently use are:
- Disqus for our blog commenting system
- [YouTube](https://www.youtube.com/channel/UCmDkFN3UlK2wSKDQQhd-Y-A) for hosting our videos
- Recruiterbox for showing [our open jobs](https://www.dta.gov.au/who-we-are/corporate/jobs/)
- Google Apps Script for receiving form submissions.

Site search is something you might expect to be an external service, but we use [client-side JavaScript](https://github.com/slashdotdash/jekyll-lunr-js-search). We could improve our search with an external service, but for our current usage this is free and fast.

## Things we’ve learnt

### Control over the markup is good for accessibility 

We don’t have a sophisticated system managing our site, so a lot of the complexity in the website is more exposed to our content publishers. Adding a new or changed template needs someone who knows HTML and CSS. However, having such close control over the generated markup makes it easier to create semantically correct content, which helps with accessibility.

Content publishers are likely to have never used git, and so need to be trained up in basic use of GitHub. This keeps us consistent with the rest of the agency, and it’s actually really cool to see non-developers using GitHub. However, as our business needs change we will need to re-consider if this is still the best process for us. 

### The right tool for the right problem

It’s important to choose the right tool to solve the right problem. If you don’t have the right capabilities in house it might be better to use GovCMS or Drupal for content publishing. If your website is really simple though, and you have developers in house, GitHub or a [decoupled/headless CMS](https://www.contentful.com/r/knowledgebase/headless-and-decoupled-cms/) might be all you need.  

### Keep source-code open --- most of the time

Our [GitHub repository](https://github.com/AusDTO/dta-website) is public, so embargoed content can’t be added there until it is ready for release. Most of the time this isn’t an issue, but occasionally we’ll use a private repository to prepare content, which is then merged to the public repository when it is ready for release.

## In the future

The DTA is growing, and so are our digital needs. We currently have a good foundation site that we can build on as we expand our responsibilities. 

But, a website is not a set and forget thing. Digital technology changes at a rapid rate, and it’s important to keep our website working well as business needs and the online environment change. Having a team in place and a plan for improvements save us from needing to re-develop our website every few years. 

We are currently looking at iterating on our MVP website to reflect the changing needs of the business and our users. We are currently doing user research to understand our future needs and are exploring options for improvements.



Take a look at the [source code for this website on GitHub](https://github.com/AusDTO/dta-website).
