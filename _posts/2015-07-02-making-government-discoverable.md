---
layout: post
title: Making government discoverable
created: 1435799488
author: Pia Waugh
profile: "/images/pia-waugh-profile.png"
read-time: 5
category: blog
---
If we want to give people the right information and services at the right time, we need to know more about what information and services the government offers.

At the moment each agency keeps track of its own content and services, and there is no central listing that can be used to help bring together useful or related information. Websites like *[australia.gov.au](http://www.australia.gov.au/)* and *[business.gov.au](http://www.business.gov.au)* have listings of government information for end users, but this only goes so far and their listings and metadata are not currently reusable by other agencies and third parties. There is some work required to make government content and services more consistent, easy to find and easy to access – not just for end users but for all parties involved in the end to end process of servicing user needs.

We think a first step would be to create a “discovery layer”. This is essentially a search-enabled set of registries that will be exposed publicly to make it easier for government agencies, external search tools and third parties to find what they need. It will also enable government entry points to better present curated information and services for user needs.

Secondly content, services, publications and other information from government could be both discoverable and increasingly consumable through APIs ([http://en.wikipedia.org/wiki/Application_programming_interface](http://en.wikipedia.org/wiki/Application_programming_interface)). APIs mean that anyone can write their own program to present government information (like data, publications, media releases, photos, video, tags, profiles or groups) in new and different ways.

This API-enabled discovery layer enables what we like to call “mashable government”, or the ability to aggregate the right information and services for users through websites and applications, whether they are run by government or third parties. Making the information and services across government more consistent and discoverable will also improve search results, getting people where they need to go faster and easier.

## What does this mean for Government content?

Existing government website content and publications have been created and managed by separate groups within separate government departments. The result being that it is often presented in fragmented, duplicated and poorly targeted ways to end users. To help resolve this, we are proposing a content register – looking at [Solr](http://lucene.apache.org/solr/) or [Elasticsearch](https://www.elastic.co/products/elasticsearch) – to bring this information together using an extendable tagging and metadata capability, which agencies and third parties can use to improve tailored content delivery. This will mean content can be tagged as relating to particular topics, life events or types of users, regardless of which agency it comes from.

This will allow us to relate and curate content across government to create an integrated and comprehensive view with less duplication. There are many examples of this approach, including the [http://decarboni.se/](http://decarboni.se/) website which aggregates and makes consistent content from over 500 websites in a particularly clever way.

## What does this mean for services?

Some agencies have a services catalogue but there is no single or complete view of services across the federal government - so how do we get people to the service they need? To deal with this we are developing a register of government services with rich metadata. This will make it easy to find and present appropriate service information in multiple places, so online agencies and third parties can provide tailored service information. People will then be able to find what they need, where they are, and seamlessly move from discovery to using services and transactions.

We would also like to identify where services are consumable for third party applications to make it easier for the private sector to retail consumable government services. A good example of a consolidated services register is the [National Health Services Directory](http://www.nhsd.com.au/), where Federal, State and Territory and Local Governments along with various allied health organisations publish health related services in the one API enabled, extendable and searchable database.

We’ve been analysing some of the agency specific or partial service registers out there, and have built a proof of concept approach we’d love your feedback on. For this POC, we’ve worked with DHS and we’ve taken the generic services catalogue from Australia.gov.au. We created a consistent metadata schema for services and merged the content into a GitHub repository of JSON files for ease of reuse. We also built an experimental front end for search across the whole discovery layer. It is still a work in progress but please check it out and let us know what you think of this approach and the metadata proposed, and we’ll integrate your feedback into the next stage of development. Our goal is to make it easy for governments (across jurisdictions) and third parties to discovery and represent appropriate Federal Government services for user needs.

The service catalogue is at [https://github.com/AusDTO/govHackServiceCatalogue](https://github.com/AusDTO/govHackServiceCatalogue)

## data.gov.au

While exposing information and services for people is our primary driver we are also considering that the same approach can be used to make other useful stuff discoverable, such as [all government APIs and common platforms](http://data.gov.au/dataset/common-platforms-and-web-services) that agencies can leverage, all websites, etc. We’ll likely use *data.gov.au* for these miscellaneous lists of useful things for easier discovery.

## What do you think?

We haven’t made any decisions yet on the exact tools and technology we will be using but we will talking with interested parties as we progress. We hope to have a proof of concept up by next month for people to play with, just to test our ideas.

Let us know your thoughts on the idea and on our approach in the comments below, and we’d love any examples you have where it has been done well. We see this as a first big step towards a more readily consumed and reusable “Government as an API” in Australia, and we look forward to working with you on developing a useful discovery layer for government. We also look forward to seeing what you can do with the APIs.

We will continue to provide our thinking through blog links with the individual ideas and designs. We’ll also be holding a number of public consultations and consultative events over the next few months – so [subscribe to the DTO mailing list or the RSS feed](/contact/) to stay involved.
