---
layout: assessment-report
title: Australian Trade Mark Search    
breadcrumb: Australian Trade Mark Search
permalink:    /standard/assessments/australian-trade-mark-search-beta/
report-excerpt: Australian Trade Marks Search is the search and information discovery system for public trade marks
data.
department: IP Australia
date: October to December 2016
result: Pass
assessment-stage: Beta
self-assessment: true
lead-assessor: Scott Ashwin
product-manager: Rob Wills

criteria-1-result: Pass
criteria-2-result: Pass
criteria-3-result: Pass
criteria-4-result: Pass
criteria-5-result: Pass
criteria-6-result: Pass
criteria-7-result: Pass
criteria-8-result: Pass
criteria-9-result: Pass
criteria-10-result: Pass
criteria-11-result: Pass
criteria-12-result: Pass
criteria-13-result: Pass
---

ATMS is a web-based system that allows filers and innovators to search the trade marks database and quickly review the status of applications.

The service in scope for this assessment is the functionality and user interfaces for the trade mark public search (Australian Trade Mark Search). This service is currently being developed in partnership with an external vendor, Trademark Vision. The project team aims to ensure the new search solution is delivered in a way that enables users with a disability or limited technologies (including assistive technologies) to access information/services disseminated by IP Australia.

The project commenced before the moratorium date (6 May 2016) and before the final version of the DSS was made public. The project initially used the original 20 point standard and have been adapting their work program with each iteration of the DSS. They have opted into a Beta assessment against the DSS.

Overall, Australian Trade Mark Search is progressing well and evidence shows there is justification to move to a public Beta release for wider user feedback and further iteration as necessary.

## Assessment detail

### Criterion 1: Understand user needs

Easy to apply and repeatable research model and approach. Focus started on collecting existing user commentary via improvement logs, customer feedback, etc. which was used to inform next step conversations to explore user needs.

Clearly identified user groups broadly categorised by three key groupings --- IP Professionals, Non Professionals, Examiners.

Review of other IP office's use of search and review of how users interacted with these products --- this task has been about looking up and out. Range of data collection points with users including face to face, roadshows, surveys and workshops. Engagement covers areas such as determining user needs, feedback on design and functionally and system testing.

Mailing list created to keep interested users engaged in the project.

Evidence is being used to inform decisions.

All team members are involved with research --- everyone is hearing first-hand the needs of the customer.

**Recommendations for criterion 1:**

- There is no single document that summarises all intelligence gathered to date. Creating some sort of high level summary document will assist staff coming into the program and help educate supporting parties around the project understand the user needs rather than review the existing library of information.
- Given the priority of the project and impact to the wider agency, research findings should be shared via presentations similar to how Strategic Communication presents user research findings. This should help inform decision makers about the projects course of actions and assist inform other projects around the agency.

### Criterion 2: Have a multidisciplinary team

The project team has been established on the principle of finding the right people with desired core skill-sets who have capacity to grow and adapt into roles based on user research findings. The core team has been kept small to allow for agility, sourcing non-core ad-hoc skills as required.

**Recommendations for criterion 2:**

- None

### Criterion 3: Agile and user-centred process

Maturity is noted in the backlog management which is continually being managed, adding and prioritising user stories. Feedback loops have been established on stories so the key contacts who raise an issue are kept informed on progress and the outcome.

A product owner has been identified and empowered to make decisions.

An MVP has been established.

Retrospectives are performed regularly both with the local build team and partner vendor. Results of these sessions are being used to inform future sprints.

**Recommendations for criterion 3:**

- None

### Criterion 4: Understand tools and systems

A SaaS black box solution has been determined via research and industry consultation has the best platform for the solution. This highlights good use of external expertise to shape a solution best fit for users internally and externally to the agency and the internal support teams to support the final product.

Partnership with vendor is underpinned by an SLA.

There is an understanding that the use of tools, coding and system data management techniques can create technical debt for the support team post build. The project team is tracking decisions and working with the partner vendor to limit the amount of debt.

**Recommendations for criterion 4:**

- Given the complexity of the IP Discovery project, third party expertise could be drawn upon to assist determining best practice and to assist with avoidance of technical debt. This expertise could be drawn internally from BIMS or externally from a different vendor.

### Criterion 5: Make it secure

The solution has been through an Amazon Web Services “Well Architected” review, with critical improvements addressed post review.

Security has been reviewed by the IP Australia ICT Security team. ITSEC have been working directly with the team and have passed the tool. System logging is limited to a single log which the vendor can provide reports from. The team can access these logs and investigate directly also. User behaviour and system occurrences are detailed.

At the point of this DSS review secure code review on the source is underway, and penetration testing will take place prior to Public Beta release.

Security patches are typically added within 48 hours, under the teams’ own policy.

**Recommendations for criterion 5:**

- None

### Criterion 6: Consistent and responsive design

Mobile compatibility is limited --- this decision has been informed by user research which indicated that users did not have an interest in using mobile devices to access the tool. Google analytics will be used in future to determine enhancements.

Consideration has been given to low internet speeds. Techniques to minimise page size and graphics and an ability to disable graphics to use text only are core to meeting the needs of users on low speed internet connections.

**Recommendations for criterion 6:**

- While there may be limited need for mobile access at this point, industry acknowledges this is where growth will be happening over the coming years. More focus on building a complete mobile experience should be considered sooner rather than later to cater for growth.

### Criterion 7: Use open standards and common platforms

Technologies and languages such as Lucene/Elasticsearch, HTML, PostgreSQL, and JSON are used to construct the system.

Github is being used as the code repository in line with programs such as govCMS.

**Recommendations for criterion 7:**

- None

### Criterion 8: Make source code open

IP Discovery uses a range of products and services for its offering. The tool has been built in partnership with a third party vendor. Given the complexity and the partnership arrangements some parts of the project are not open. This has been a necessary step to allow for delivery.

**Recommendations for criterion 8:**

- None

### Criterion 9: Make it accessible

Auditing of accessibility has been completed by Vision Australia. An initial report highlighted multiple areas of improvement. These items were added to the backlog and actioned prior to beta release.

Vision Australia completed a second review of IP Discovery and have noted the required corrections needed to meet WCAG2 have been implemented.

Usability testing has been part of the overall build process with testing taking place on developed items when complete. Testing has taken advantage of heatmap tools to support findings.

Service is being designed to support common contemporary browser versions --- IE 9 and above, Firefox, Chrome. etc.

**Recommendations for criterion 9:**

- Developing an understanding of the devices and browsers customer will be using to access this application may provide further insight into the ongoing development requirements of the solution.

### Criterion 11: Measure performance

The four KPIs listed in the guides have been included in the non-functional requirements for reporting to allow the creation of reports based as needed going forward.

A long term challenge for the agency has been a lack of analytics in the existing public search system. This is particularly so for non-expert users who have a short relationship with the agency and never ultimately file a trade mark application. User research revealed the need for the service to cater for widely different users groups seeking different outcomes and there has been a dramatic increase in the understanding of end users up until this point in the system’s development. Improved system analytics (system logs and Google Analaytics) will continue to increase understanding as the system moves into its public beta phase.

**Recommendations for criterion 11:**

- None

### Criterion 12: Don't forget the non-digital experience

It is difficult to provide a meaningful non-digital version of a non-transactional information service such as Australian Trade Mark Search, due to the very nature of using a search system to search across 1.8 million trade mark records.

While IP Australia encourages customers to transact with us online, customers who require a non-digital experience are able to contact the organisation via the call centre. Operators are able to address simple search questions over the phone, or can refer the customer to other staff in the organisation for more specific information. Another channel can involve submitting a TM Headstart request for a specialised trade mark examiner to perform a comprehensive search and provide an opinion to the customer over the phone within 5 business days.

**Recommendations for criterion 12:**

- None

### Criterion 13: Encourage everyone to use the digital service

Current data from IP Australia’s call centre has shown us that 64% of calls that relate to trade mark searching are customers asking for help checking a trade mark application’s current status. The system introduces a simple search interface and graphical representation of each trade mark’s lifecycle. More customers are receiving correspondence from IP Australia digitally, and this digital customer correspondence will be able to link directly to the relevant trade mark’s information page on the system, instead of requiring customers to perform a search to see its information. The expectation is a significant reduction in calls relating to trade mark searching, as customers will be more easily able to meet their own information needs using the digital service.

IP Australia will promote the public beta of Australian Trade Mark Search via its social media channels, website and newsletters to encourage participation and feedback. Media involvement is planned around the formal launch early 2017 to increase awareness of the service, including the Assistant Minister for Industry, Innovation and Science being present for the launch.

Collaboration between the agency and Department of Industry, Innovation and Science will provide a more coherent end-to-end experience for those starting a business.

**Recommendations for criterion 13:**

- None
