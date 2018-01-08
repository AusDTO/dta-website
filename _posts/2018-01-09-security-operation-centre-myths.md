---
title: "Shields up! and other modern security operation centre (SOC) myths"
category: [blog]
tag: 'technology'
author: Clem Colman
author-excerpt: "Clem Colman is a cyber security adviser at the DTA."
thumbnail: /images/blog-thumbnails/SOC_thumb.png
hero-image: /images/blog-banners/SOC_hero.png
searchexcerpt: Want to buy or build a security operations centre? We put a photon torpedo through the myths and give some tips on getting started.
lede: "Want to buy or build a security operations centre? We put a photon torpedo through the myths and give some tips on getting started. "
---
<figure>
  <img src="{{ site.url }}{{ site.baseurl }}{{ page.hero-image }}" alt="An illustration of a cyber security advisor monitoring multiple screens displaying live data."><br />
  <figcaption><p><em>Caption: Know your business, understand your systems and avoid a huge upfront investment</em></p></figcaption>
</figure>

I’m convinced many people think a modern security operations centre needs to look like the bridge of the Starship Enterprise, styled like the set of Blade Runner, and staffed with hackers in hoodies. Has theatre distorted our view of how we start one up and what it needs to achieve?

In cyber security, the reality is a credible incident detection capability only needs to start with 3 things:
<ol>
<li>a small team of people right for the task</li>
<li>their mandate to work with other parts of the business</li>
<li>a set of facilities for processing information.</li>
</ol>

<h2>Knowledge is key</h2>

Chinese military strategist and philosopher Sun Tzu said, “If you know the enemy and know yourself you need not fear the result of a hundred battles.”  

Once you get a team of smart and technically capable people, their first step is to identify your critical business processes and assets, understand the systems that underpin those functions and their dependencies, assess existing tools and information and get a handle on how an online attacker might try to achieve their ends.  

If you’re starting from scratch, this can seem a lot of work. Use your understanding of the business’ most critical assets to prioritise what you study, and bring some of your organisation’s technical veterans into the team so their corporate experience can kickstart your knowledge base.

<h2>Identify your scenarios</h2>

In a security operations centre, detection capabilities are underpinned by scenario-based thinking. Scenario-based thinking is a process of devising a potential attack, identifying the activity that would accompany it and determining which systems may have the opportunity and capability to detect that activity.

Scenario thinking needs us to put ourselves in the mind of our adversary. For example, most agencies’ cyber security teams will track failed logins. But the careful and patient adversary your team needs to look for is not going to announce their presence by doing the digital equivalent of pounding on the door.

In many respects successful logins are more interesting. Particularly where users are accessing things they haven’t before and have no obvious reason to. For example, a service account logging into a virtual private network.

Organisations often see similar scenarios so it’s worth reaching out to others who have done the work. However, your exact mix of detection mechanisms will depend on different factors, including network topology, product mix, encryption practices, network monitoring infrastructure, accessibility of logs and even the competence of different in-house technical teams.

<h2>Target what you need</h2>

Building a detection capability using scenarios will help avoid one dangerous trap.

The problem starts with a conversation like this:
'Do we know what information we need from these logs?'
'Not sure, let’s import them all and we’ll work it out.'

Cheap storage is responsible for many problems. Whether it’s the accumulation of photos that aren’t keepers or data logs, it’s all the same. Not filtering information creates extra work down the line.  

If the team starts focusing on collecting all the logs then your security operations centre becomes an infrastructure project. Often this is a mortal wound, albeit one which may take some time to reveal itself.

Targeting the information you need will get you better outputs for a lower cost. It will also keep the growth of supporting infrastructure in check.

<h2>Eliminate the good</h2>

One strategy for sorting through enormous amounts of data is to invert the search by identifying the activity that’s good and getting rid of it.

The more effective you are at cutting out the good stuff, the easier it is to identify the interesting activity which needs greater scrutiny.

There are good security operations centres that use this technique as their primary filter before they feed data into their management system or full packet capture capabilities.

<h2>Choose your security products</h2>

You don’t need security information and event management (SIEM) software to start building your detection capability but, for efficiency’s sake, you will want one eventually.

When you do, the temptation to go after the latest killer features is strong. Remember, whatever you choose will become tightly integrated with your security processes. The rate of churn in leading security products is high so buying based on the latest features may leave you with a technical orphan down the line.

For this purchase your normal architectural principles have to apply. For example, the strength of the vendor, the community behind the product, alignment with your existing stack and skill sets, availability of skills in the market, understanding of licensing models, flexibility, ability to grow capacity, and others. The main point is you’ll be more future-proof with a relatively flexible and open product that has an existing pool of skilled people to support it.

<h2>Reality check</h2>

Before long, identifying new scenarios and building a corresponding detection capability will be business as usual. But there are other things you should consider to improve the effectiveness of your detection capabilities.  

Putting your detection capabilities to the test will be one of the most important steps you can take. By using pen testing, or even better, rolling ‘red on blue’ exercises, detection capabilities can be tested and improved.

Red on blue exercises are a really effective approach to incrementally improve the security of your network. This is when pen testers (red) attempt to breach network security while defenders (blue) prevent, detect, contain and remediate. This is best done on production so changes made by defenders during the exercise make a difference to the network.

<h2>Save money and let people sleep</h2>

Intrusion prevention and antivirus systems will inform you of attacks they block in real time.  But they rarely need to be looked into immediately as the system generally deals with the threat.

Where an adversary has already penetrated your network, they are far more likely to be detected by a scenario-based detection approach. Often known as hunting, this happens after the initial compromise and may not detect unusual activity until days or weeks after an intrusion.

From a management perspective, the most important thing you can give your staff is time. Time to develop detection capabilities, test scenarios, and explore your systems to understand the information they offer. ‘Business hours’ time is cheaper and more effective than 24 x 7. It also offers better work life balance to help retain good people.

Have your technical security team on call, but use automated alerting and upskilling of your network operations centre (NOC) team to deal with low priority issues after hours.

<h2>It’s about learning and persisting</h2>

Knowledge of your own environment is also hard to buy. Even the best managed service provider needs plenty of time and input to learn your landscape and give you capabilities which are fit for purpose.  

But knowledge can be built over time. The key is to make a start and maintain commitment, even when your organisation's priorities move elsewhere.

<h2>Takeaway</h2>

If all this sounds familiar, so it should. Building your incident detection and response capability starts with the 3Ps — people, process and product. By prioritising what you want to protect and using the scenario-based model, you can build your capability organically without a big upfront investment.

<hr>

This blog is the second part of a series on cyber security. The first, published November, considers [whether we have the balance right between prevention and cure](/blog/cure-is-better-than-prevention/), concluding cyber security strategists may need to pivot to put more emphasis on detection and response.   

The DTA’s Cyber Security Unit is working on a white paper for building security operation centres for federal government and works with agencies to improve cyber security posture through review, collaboration and innovation.

Thanks to members of the DTA’s Cyber Security Unit, James Thompson and Stephen Bradshaw, for their contributions to this post.
