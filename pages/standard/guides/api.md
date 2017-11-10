---
title: Application Programming Interfaces (APIs)
permalink: /standard/design-guides/api/
lede: Developing services that people can reuse.
redirect_from: /design-guides/guide/api
topic_group:
- Website design and development
topic:
- Data sharing
searchexcerpt: "APIs allow the private sector to use government data holdings in new ways that generate significant value for the community and economy."
---

Government services that offer Application Programming Interfaces (APIs) allow other people to reuse the service and integrate them into their own products, cheaply, simply and quickly.

## Why must I?

APIs allow the public to use government data in new ways, to do new and useful things for the community.

By making government data publicly accessible via APIs, it is easier for individuals, businesses and community organisations to find and realise these ‘value adds’.

APIs also make government services reusable by other government products, greatly reducing the overall cost and complexity of introducing new services. 

## How do I?

We previously authored our own guidance for designing and building APIs, but we’ve since realised that there is so much good information available out there on the topic already, we can’t really add much more!

The advice from the UK Government service design manual on [Using and creating APIs](https://www.gov.uk/service-manual/technology/application-programming-interfaces-apis) and the [White House Web API Standards](https://github.com/WhiteHouse/api-standards) GitHub repository are the best resources we know of about building good Government APIs --- we really recommend that you take the time to read through them.

We do however have some opinions we think you should follow, but only if it makes sense for the users of your service and the people who will be consuming your APIs.

We think that:

- [RESTful](https://en.wikipedia.org/wiki/Representational_state_transfer) APIs are cheaper, simpler and faster than [SOAP](https://en.wikipedia.org/wiki/SOAP) web services

- Your APIs should be designed to support the user journey of your service

- If you’ve built an API, your service or website should be built on top of it

- You should use widely adopted and open standards that are commonly used by the users of your API

## What else should I be aware of?

However you choose to implement your APIs, you must ensure that the data you are exposing is suitable for public distribution.

Our [Open data](https://www.dta.gov.au/standard/design-guides/open-data/) and [Privacy](https://www.dta.gov.au/standard/design-guides/privacy/) guides cover the things you need to be aware of when releasing data, no matter how it is made available.

**Last updated**: 10 November 2017
