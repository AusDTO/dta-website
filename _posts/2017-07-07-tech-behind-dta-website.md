---
title: "The tech behind dta.gov.au"
category: [blog]
tag: 'technology'
author: Brendan Gordon
author-excerpt: "Brendan Gordon is a Developer at the Digital Transformation Agency."
thumbnail: /images/blog-thumbnails/Blog-Thumb-DTA-website.png
hero-image: /images/blog-content/Blog-Hero-DTA-website.png
searchexcerpt: "The DTA website is an important part of our online presence. But as a small agency we have found our needs can be met with a simple static site. In this blog post we share our approach to development and the technology behind the DTA website."
---

![An illustration of a pony with a rainbow coloured mane.]({{ site.url }}{{ site.baseurl }}{{ page.hero-image }})

*Caption: 'I want a pony' – a demonstration of a want, not a need.*

The technical needs for our [website](https://www.dta.gov.au/) are relatively simple. We took a minimum viable product (MVP) approach to development – creating a simple static site – with a view that we would iterate and evolve the website as the DTA grows.

Our site needs to be able to:
- allow publishing of simple, informative content
- support less than ten page templates
- allow previewing of changes on the site before they go live
- handle less than 1000 pages

We’ve found that a simple static site meets our needs for the moment and is cheap, fast, secure, and easy to work with.

WARNING: it’s about to get technical 

## The tech behind the site 

The DTA website is built with [Jekyll](https://jekyllrb.com/) — an open source static website generator. The site content is mostly written in [Markdown](https://en.wikipedia.org/wiki/Markdown). Jekyll only runs whenever the content changes, and it generates a set of HTML, CSS and JavaScript files. These files are easily hosted on a basic web server.

We have found this simple tech approach to be very cheap compared to the alternatives, but is still powerful enough to suit our publishing needs.

## Using the UI-Kit 

The DTA website is styled using the [UI-Kit](https://github.com/AusDTO/gov-au-ui-kit) and the [DTA Design Guide](http://guides.service.gov.au/design-guide/). 

The UI-Kit is a whole-of-government toolkit being created by the DTA to provide government with a set of accessible web components to use on their websites. Agencies can use it instead of creating custom designs and styles for their sites — the intention is to create more consistency across government sites. It is designed to meet high accessibility standards required for the [Digital Service Standard](https://www.dta.gov.au/standard/). 

We still sometimes need to write our own CSS, but the UI-Kit gives us an easy to use starting point

## Publishing content 

For our MVP static site we do not have a content management system (CMS). The website source files are stored on [GitHub](https://github.com/), a code hosting platform with powerful collaboration tools used across all DTA delivery teams. Our publishers work in [Markdown](https://daringfireball.net/projects/markdown/), using the GitHub web interface.

We use a [public repository on GitHub](https://github.com/AusDTO/dta-website) and our publishing workflow is based around [branches](https://www.atlassian.com/git/tutorials/using-branches). This allows us to track all changes made to the site, and the use of branches helps us to isolate and preview changes before they are published. 

This is how it works:
- Most changes and additions to the site start as a new branch.
- Every change is immediately tested using Circle CI.
- If there is a problem, a notification is sent so that it can be fixed.
- A pull request (PR) is created, reviewed and then merged to the ‘develop’ branch.
- Changes are deployed to the staging site for sign-off.
- Changes are then merged with the ‘master’ branch which triggers a deployment to the live site. 

Each part of the deployment happens automatically whenever the ‘develop’ or ‘master’ branch is updated. This speeds up and simplifies the release process for content publishers. The repository contents are the single source of truth, and the staging site is an exact copy of what will go to the live site.

Our website is a Commonwealth record and needs to be managed in accordance with the Archives Act 1983 and the [National Archives of Australia guidance](http://www.naa.gov.au/Images/archweb_guide_tcm16-47165.pdf). Since every change to the site is tracked in version control, we can easily meet this requirement by going back and rebuilding the site as it was at any point in time.

## Hosting our site — cloud.gov.au

The DTA website is hosted on [cloud.gov.au](https://www.dta.gov.au/what-we-do/platforms/cloud/) – the platform the DTA is developing to make it easier for government to build digital services. Cloud.gov.au saves time and effort by managing infrastructure, so a team can focus on building the service.

Cloud.gov.au has an API which allows deployments to be entirely automated. We specify the [static build pack](http://docs.cloudfoundry.org/buildpacks/staticfile/index.html) in our [manifest file](https://github.com/AusDTO/dta-website/blob/develop/manifest-production.yml), and the platform takes care of provisioning a server and inserting the built website files. This means our exposure to security attacks is minimised, and we do not have to spend time regularly applying platform updates.

We use [Cloudfront](https://aws.amazon.com/cloudfront/) as our content delivery network, and requests are routed to a HTTPS termination layer on cloud.gov.au before being forwarded to our web server.

## Testing

The build pipeline is a series of scripts, which allows us to customise the process and add tools to check the quality of the site. We run [HTMLProofer](https://github.com/gjtorikian/html-proofer) which quickly validates the static files HTML, and makes sure there are no broken internal links or missing images.

We also have ad-hoc tests that run on a local copy of the site. We can:
- check for broken external links
- test all pages for obvious accessibility using [pa11y-ci](https://github.com/pa11y/ci) (recognising we still need to undertake manual testing)

We have found these are best kept out of CI — we want our CI to be fast, and having build dependencies on every external server puts us at risk of outages. 

## External services and plugins

A static site on its own has limitations, but this is where external services are useful. The ones we currently use are:
- [Disqus](https://disqus.com/) for our blog commenting system
- [Youtube](https://www.youtube.com/channel/UCmDkFN3UlK2wSKDQQhd-Y-A) for hosting our videos
- [Recruiterbox](https://recruiterbox.com/) for showing [our open jobs](https://www.dta.gov.au/who-we-are/corporate/jobs/)
- [Google Apps Script](https://www.google.com/script/start/) for receiving form submissions

Site search is something you might expect to be an external service, but we use [client-side JavaScript](https://github.com/slashdotdash/jekyll-lunr-js-search). We could improve our search with an external service, but for our current usage this is free and fast.

## Things we’ve learnt

We don’t have a sophisticated system managing our site, so a lot of the complexity in the website is more exposed to our content publishers. Adding a new or changed template needs someone who knows HTML and CSS. However, having such close control over the generated markup makes it easier to create semantically correct content, which helps with accessibility.

Content publishers are likely to have never used git, and so need to be trained up in basic use of GitHub. This keeps us consistent with the rest of the agency, and it’s actually really cool to see non-developers using GitHub.

Our [GitHub repository](https://github.com/AusDTO/dta-website) is public, so embargoed content can’t be added there until it is ready for release. Most of the time this isn’t an issue, but occasionally we’ll use a private repository to prepare content, which is then merged to the public repository when it is ready for release.

## In the future

The DTA is growing, and so are our digital needs. We currently have a good foundation site that we can build on as we expand our responsibilities in government. We will continue to iterate our website to ensure that we continue to meet our user’s needs. 

Take a look at the [source code for this website on GitHub](https://github.com/AusDTO/dta-website).
