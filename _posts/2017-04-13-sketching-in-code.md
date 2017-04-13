---
title: "Sketching in code to build online services"
category: [blog]
tags: 'technology'
author: Simon Schwartz
author-excerpt: "Simon Schwartz is a frontend developer at the Digital Transformation Agency."
thumbnail: /images/blog-thumbnails/Sketch_in_code_sml.png
hero-image: /images/blog-content/Sketch_in_code_hero.png
---

!Four developers working together in an office.]({{ site.url }}{{ site.baseurl }}{{ page.hero-image }})

*Caption: DTA developers at work.*

A great online service is the result of bringing together excellent design and code. To deliver these services it is critical designers and developers work together. 

It is no use if a designer gives a developer a set of high fidelity specs that don’t consider the constraints of the technology the product is being built in, or the browsers it will be displayed on.

Luckily, this is a pretty easy problem to solve—allow designers and developer to work closely together, and sketch in code. At the DTA, this approach is BAU, and produces great results.

## Ideas are cheap, actually making stuff is where you begin to win the battle

It is good practice to test your ideas early. By doing this you are able to identify some of the constraints you may face—whether it is navigation, layout, accessibility or mobile responsiveness. The best way to do this is by sketching in code, prototyping your work early and iterating quickly.

When developing a product you need to sketch out what it will look like—prototype it. Prototyping takes an idea or hypothesis and demonstrates how you plan to address it. It makes sure that your idea (or your team’s idea) is valid. It makes it easy for others to have a shared understanding of what you are trying to do.

Prototyping could be done with a design program, or even on paper. However, sketching in code has a number of practical benefits over these approaches.

It also brings together the design and coding elements of the product delivery, reinforcing that developers are invaluable team members during the design process.

I’ve been working in agile multidisciplinary teams sketching in code for some time now and I’d like to share the major benefits I, and my teams, have noticed.

## Accessibility

Sketching in code forces you to understand how you are structuring the HTML on your page. It makes it much easier to understand the accessibility issues you need to solve. I prefer to structure the HTML on the page before designing the page layout.

## Understand the simplest way to solve a problem
Many problems can be solved using existing frameworks or libraries. If you start by finding the simplest solution in code first it can save time from building bespoke functionality.

## Responsive design

It is much easier to understand how your page layouts respond when designing in the browser. It is hard to address these constraints if you are designing and building your prototype in anything other than code.

## Easy to share

Having a codified prototype means that you can host your prototype on the web. This means that:

- all your team can see the latest version of the prototype
- if you version control code it’s easy to have history of the prototype
- showing people a real thing on their real device is magical
- it’s quick and easy to make changes and perform a/b testing

## Easy to test

A critical part of the prototyping design process is testing the prototype with users. This is how we get feedback about whether our ideas are valid. Sketching in code will allow you to:
- test your prototype on a real device (or a user’s own device)
- test your prototype across mobile and desktop
- test with remote users
- add analytics or screen record user interactions
- test with people who use assistive technology, this includes users with diverse abilities such as vision impairment, mobility impairment and age related impairments

## How to do it

The outcome of prototyping is to:

- define a clear and shared understanding of what you are going to build in beta
- confirm your original idea or hypothesis is valid

It is important to remember that prototyping shouldn’t be the same as building production software. It’s about rapidly testing and validating ideas before committing to building production software.

I recommend the following guidelines for prototyping.

## You don't need to build it right, until you know you are building the right thing

In most cases it is more valuable to have a rough, low fidelity prototype that covers the entire user journey you are testing. Testing well built, high fidelity features in isolation won’t give you as many meaningful user insights during usability testing. 

## Don’t waste time on code quality

The goal is to test your ideas, not build production ready code. Your prototyping code should be designed to be thrown away. It’s important not to get attached to it, as it could and should change rapidly based on user feedback. You need to be fast and loose.

Depending on what you need to test with your prototype, it may be viable to omit features such as:

- cross browser/device testing
- unit and integration tests
- high fidelity visual design
- accessibility

Commit messages and pull requests could also be brief and merely name the piece of work being done.

## Keep the tech simple

Evaluate how you want to build the prototype. Remember that the most important thing is to be able to build ideas out quickly. Some ideas you build will get disproved and you will have to delete them anyway. For static prototypes we use Jekyll, a static site generator. For interactive prototypes that need to persist data such as decision tools or forms, we use React. The key is to choose a technology that makes it quick and easy to build and iterate the team’s ideas.

## Fake it if you can

Evaluate whether you need to integrate with existing services or real data. It may be simpler to fake interactions with JavaScript than to integrate with production systems. You need to decide whether it is viable to test your ideas without using real data.

## Make it easy for everyone to contribute

Try to make it easy for non-technical people in the team to contribute to the prototype. While this isn’t critical it’s always better to harness the collective intelligence of the team. We should remove the developers as blockers for ideas getting into the prototype. This may be showing your team mates how to edit markdown files in GitHub, or editing a JSON blob consumed by your prototype.

## Want to learn more?

DTA Service design handbook - [http://ausdto.github.io/service-handbook/alpha/](http://ausdto.github.io/service-handbook/alpha/)

Jalpha, a rubygem for scaffolding out new opinionated Jekyll projects - https://github.com/AusDTO/jalpha
