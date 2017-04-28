---
layout: assessment-report
title: Digital Marketplace 			
breadcrumb: Digital Marketplace		
permalink:	/standard/assessments/digital-marketplace-beta/
report-excerpt: The Digital Marketplace simplifies the process of government procurement and makes it easier for businesses of all sizes to access government contracts.
department: Digital Transformation Agency			
date: 2017-03-15
assessment-type: Digital Transformation Agency-led
assessment-stage: Beta
result: Not pass
lead-assessor: Alastair Parker
product-manager: Catherine Thompson

criteria-1-result: Pass
criteria-2-result: Pass
criteria-3-result: Pass
criteria-4-result: Pass
criteria-5-result: Pass
criteria-6-result: Pass
criteria-7-result: Pass
criteria-8-result: Pass
criteria-9-result: Not pass
criteria-10-result: Pass
criteria-11-result: Pass
criteria-12-result: Pass
criteria-13-result: Pass
---

**The service did not pass the assessment because:**

- Accessibility issues may prevent some users from accessing the service. More work needs to be done before the service can pass criterion 9. 

## Areas of good performance

### Criterion 1: Understand user needs 

The Digital Marketplace team has worked towards better understanding user needs and iterating the product accordingly through Beta stage.

Prior to the release of their latest feature (which allows sellers to onboard to the marketplace at any time) the team worked with 20 active sellers, piloting the work to date and conducting user interviews. The product backlog was informed and prioritised by this feedback.

The product is publicly available and the team has a number of additional inputs that give valuable insight into pain points and user needs:

- agency collaboration --- there is a dedicated engagement role in the team
- helpdesk --- user enquiries, feedback and issue management
- website analytics
- product manager --- who conducts extensive stakeholder engagement
- market surveys

### Criterion 2: Have a multidisciplinary team 

The initial weeks of Beta stage were focused on recruiting and onboarding DTA team members. This was a planned activity, given the Alpha product was primarily staffed by external vendors. 

The team has demonstrated they can successfully operate and improve the product while membership of the team has been changing.

There are a number of examples of team members performing multiple roles. This has become increasingly necessary, and is beneficial. The team are now operating as a business, with multiple team members performing the roles of data analyst and support analyst.

The team doesn’t have any capability gaps, but they know they need to increase capacity. They are recruiting for additional development and service design/research team members.

The team is autonomous and feel empowered to make decisions based on the information at hand. 

### Criterion 3: Agile and user-centred process 

The Digital Marketplace team used a fit-for-purpose approach to Agile techniques and practices during the Beta stage. This became necessary as they moved to a public product that operates as a business.

Their approach is a combination of Scrum and Kanban. They work with a 
2-week cadence for showcases and retrospectives, but use a “just in time” breakdown of features and flow of work.

The team has a very collaborative Definition of Done: a number of people are involved in the story kickoff, and use all data and information available to them to validate what is needed. At the completion of the story, if everyone is satisfied with the form and function the task is considered done.

The team holds regular retrospectives, capturing  suggestions for valuable improvements.

### Criterion 4: Understand tools and systems 

The team completed their transition to cloud.gov.au following Alpha stage and now run their product on this platform. They have seen real improvements in the speed and simplicity of updates to their product.

Using open-source code from the UK’s Government Digital Service (GDS) has helped the Digital Marketplace to get up and running quickly, getting to market within 5 weeks and meeting public commitments. 

Taking code from others has had some impacts on architecture, testing and accessibility. For example, all time codes were hard coded to London time. This needed modification to support Australia’s multiple  time zones.

Other impacts included:

**Architecture**

The GDS open source code is hosted across many GitHub repositories. This isn't wrong or bad, but it does mean the team need to touch several repositories to make a small change.

**Testing**

The team worked to integrate the existing GDS tests into their testing strategy. This has taken more time than expected but the whole team see the value in doing it.

**Accessibility** 

Implementing the GDS code in the Digital Marketplace has required additional work to improve accessibility.

The  team made changes based on automated tools to improve the quality of the service as the site continued to be operated.

The buyer registration process currently requires JavaScript but the team has made some progress towards server-side rendering, which will alleviate this to ensure no users are impeded.

### Criterion 5: Make it secure

The team have continued working with the DTA’s security operations team of ethical hackers. Each new feature is tested by the security team, and their feedback is prioritised in the team's backlog.

The Digital Marketplace has published a privacy statement which outlines the ways in which the Australian Privacy Principles are to be applied to the operation of the service.

The Digital Marketplace's operational data is UNCLASSIFIED: For Official Use Only. It is stored securely within cloud.gov.au, which is certified to store UNCLASSIFIED, including Dissemination Limited Marker (DLM).

### Criterion 6: Consistent and responsive design

The team have continued to use GOV.AU UI-Kit (version 1), which is responsive by default. They are contributing suggestions and changes back into the DTA Guides team.

The Digital Marketplace has taken a mobile-first approach, based on data that indicates 25% of first visits to the service come from mobile.

### Criterion 7: Use open standards and common platforms

The Digital Marketplace reuses open-source code from GDS. The team believes that the benefits outweighed the issues mentioned in criterion 4,  which allowed them to launch the product within tight deadlines. If they could go back in time they would still use the GDS code, demonstrating the benefits of making code open.

Open standards are used between the internal components of the Digital Marketplace, and with all external services the product consumes.

### Criterion 8: Make source code open

The complete source code for the Digital Marketplace is available on GitHub. The GDS code used by the team was shared under the MIT License. The team have released their modifications to this code under the MIT License.

The team have also decided to license all new work under the MIT License. Keeping the licensing consistent makes it easier for others to build on top of the Digital Marketplace code, as the team did with GDS's code.

The APIs that Marketplace use aren't available for anyone else at the moment. The team are considering how they can expose data to others via public APIs in the future.

### Criterion 9: Make it accessible

In September 2016 the team conducted a round of usability research with people who use assistive technology, and are planning another round.

They are working through the accessibility issues from implementing GDS code in the Digital Marketplace.

The team are struggling to find Digital Marketplace procurement users with accessibility issues to help test the service. They are working hard to find creative solutions to the problem. Internal knowledge and expertise is a good start but it isn't enough. 

### Criterion 10: Test the service

Noting the issues from criterion 4, the team are doing a great job of testing the service. They conduct many different types of testing to ensure service paths work end-to-end.

The team have over 400 tests for the front-end component of the product and the entire code base has near 90% coverage.

The cloud.gov.au platform allows the team to create new environments at short notice. The team make modifications to their staging environment on a daily basis. These changes are tested, and are then pushed into production within a week.

A load test was conducted prior to the announcement of the Digital Marketplace in August, but there are no plans for additional tests. The team are investigating the slowest running journeys to ensure performance under load is adequate.

### Criterion 11: Measure performance

The Digital Marketplace measures and monitors metrics to understand how their service is performing. They report the 4 key performance indicators, and other relevant metrics, on the Performance Dashboard. 

They also collect much operational information.

The GDS code includes measuring and charting capability, which the team use to present fine-grained metrics. This information helps the team to make product decisions, such as how to target the right demographic of sellers.

The team's research has also shown that current and future users want to see metrics on the growth of the Digital Marketplace. To address this the team have added metrics on the number of opportunities, buyers and sellers to the landing page.

### Criterion 12: Don’t forget the non-digital experience 

The nature of traditional government procurement is challenging. But the Digital Marketplace has made it easier, more transparent and more efficient for government to buy digital services. 

The team acknowledge that there is more to do. Most of that will be tackling paper processes. The end goal is for there an entirely digital experience, but the team continues to consider users that may require non-digital support.

### Criterion 13: Encourage everyone to use the digital service

The team has recruited a dedicated engagement lead, but the whole team helps.

The existing tool used by government to buy services is email. Despite the limitations of email, people have become comfortable with it. This is the biggest challenge for the team. This problem needs to approached in different ways. There will need to be legal and policy changes broadly across government to support this style of procurement.

## Recommendations

### Criterion 5: Make it secure

The team need to develop a suite of privacy plans, such as a data breach response plan.

### Criterion 6: Consistent and responsive design

The team should include responsive design tests in their automated testing processes.

### Criterion 9: Make it accessible

The technology choices outlined in criterion 4 may prevent some users from accessing the service. This needs to be addressed before the Digital Marketplace can pass this criterion.

The team will need to broaden their search for users with disability to include anyone who understands the service's context. This should include both existing and potential buyers and sellers on the Marketplace. It is critical that the team test the service with real people to ensure the service is actually accessible and usable, not just meeting formal requirements.

The team need to undertake a formal accessibility review against WCAG 2.0 level AA, and then develop a credible plan to address any gaps within a realistic timeframe.

The team will also need to demonstrate through their backlog that the identified accessibility problems are being fixed.

### Criterion 10: Test the service

A load test was conducted prior to the announcement of the Digital Marketplace in August, but there are no plans for additional load testing. The team are investigating the slowest running journeys to ensure performance under load is adequate.

The team should also include automated accessibility testing as part of their routine testing process.

## Follow the service

Visit the [Digital Marketplace.](https://marketplace.service.gov.au/)

### Code

This service’s code is hosted in open source GitHub/x repository/ies:

[https://github.com/AusDTO/dto-digitalmarketplace-frontend](https://github.com/AusDTO/dto-digitalmarketplace-frontend)

### Metrics

[Performance Dashboard](https://dashboard.gov.au/dashboards/7-digital-marketplace)
