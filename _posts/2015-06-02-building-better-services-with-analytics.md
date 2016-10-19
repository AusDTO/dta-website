---
layout: post
title: Building better services with analytics
created: 1433212080
author: Pia Waugh
profile: "/images/pia-waugh-profile.png"
read-time: 5
category: blog
---
The DTO's mission is to create digital services that are easy to find and use. Service analytics will give us the facts of what to fix, where to start and how we're doing. By service analytics we mean:
- **web statistics** from tools like:
     - Google Analytics, which is already heavily used across government
     - agency hosted tools like Urchin, SmarterStats or Net Info
- **anonymised application logs** for authenticated transaction services online
- **social media and search statistics**
- **helpdesk, face to face and telephony statistics** from various service desk and ticketing tools. 

We're building a view of these analytics across the whole of government so we can improve the total experience of dealing with government. The data will feed into our reporting, user research and design work and our ongoing improvements program. We're 100% committed to privacy and protect it by removing context, IP addresses and by depersonalising data before it is brought in to our system. **We don't want to know who users are. We want data on what users do.** For instance, if we can see that a lot of people have called regarding a topic, we can provide that information on a website so users can self-serve if they wish. If we know the most popular topics on a website, we can have the most impact by improving that information first. Once we know what content is popular, we can make sure that information can be reused on other websites and applications (government and non-government) where it can be useful.

We want the data to be accessible back to agencies in a machine-friendly API format, to integrate into their own reporting and business intelligence purposes so they can also make improvements. This may supplement agencies’ own reporting and, perhaps in some situations, could reduce the scope of data agencies need to collect themselves.We don't want to be locked in to any single tool or technology, as this would limit our ability to use best of breed solutions as they emerge. We are going to separate our data collection from the analysis and reporting tools and take an API-driven and modular design approach. This way we can adopt different analysis tools as we need them and incrementally improve the data collection and function over time.

We're building a disposable demo environment where we can test different ideas, APIs, reporting approaches and what works best across the various types of data sources we will draw from. Right now, we are focused on the data collection aspect, and are playing with Splunk, Sumologic and elastic search options. Any of these data collection tools can then feed into any number of analytics tools through APIs. We will, of course, be looking to the market soon to see everything on offer in this space and will share more of the tech thinking in a subsequent blog post.

Importantly, much of the data and analysis that we provide will be publicly available in aggregate via open APIs and public reporting. We'll publish our code on the AusDTO github. Anyone is free to use or modify it and we'd love to collaborate in this space. We are also looking at current initiatives around the world so we can build on the shoulders of giants, such as the recent release of the analytics for U.S. government websites (https://analytics.usa.gov/).

## What do you think?
We'll publish more details over the coming weeks but we want to check our thinking and assumptions first, so tell us what you think about what we're doing. We'll follow up with more tech details over the coming week or two. What else should we check out? We'll also be holding a number of public consultations and consultative events over the next few months; so stay informed and involved by subscribing to the [DTO mailing list](http://govspace.us10.list-manage.com/subscribe?u=18f172213d32ca205c7e524bd&amp;id=172d06cc83) or the [RSS feed](https://www.dto.gov.au/feed)
