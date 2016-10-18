---
layout: assessment-report
title: GOV.AU
breadcrumb: GOV.AU
permalink: /standard/assessments/gov-au-alpha/
redirect_from: /standard/assessment-reports/alpha-assessment-gov-au/

report-excerpt: We're building a prototype to demonstrate how government services can be designed around the user's needs.

department: Digital Transformation Office
date: 2016-02-04
result: Pass
assessment-stage: Alpha
self-assessment: false
lead-assessor: Tom Scott
service-manager: Leisa Reichelt
criteria-1-result: Pass
criteria-2-result: Pass
criteria-3-result: Pass
criteria-4-result: Pass
criteria-5-result: Not passed
criteria-6-result: Not passed
criteria-7-result: Pass
criteria-8-result: Pass
criteria-9-result: Pass
criteria-10-result: Not passed
criteria-11-result: Not assessed
criteria-12-result: Not passed
criteria-13-result: Not assessed
criteria-14-result: Pass
---
## Assessment report summary

### Outcome of service assessment - Pass

The UK Government Digital Service (GDS) have assessed the GOV.AU alpha on behalf of the Australian Digital Transformation Office. It was reviewed against the Australian Government's [Digital Service Standard](https://www.dto.gov.au/standard/).

After consideration, the assessment panel has concluded the GOV.AU alpha has passed the 3 primary points in the Australian Service Standard at this early stage of development.

The scale of work and short timeframe to complete it were ambitious for a project of this scale and importance. The team has delivered an exciting prototype that will take time and considerable effort to deliver as a live service. Choosing the right organisations to partner with will be important and should be focused around the most needed transitions. Some more work will be needed to bring in other government organisations; this may involve taking time to develop the content and designs of how to present those organisations appropriately for the beta.

Thank you for taking the time to show us this excellent start, the panel were impressed with the team - an important measure for success in an alpha - and expect to see future developments challenge the way users and government interact. This important work will help to improve the lives of people in Australia; my hope is we are able to learn from what you are doing and incorporate this into [GOV.UK](https://www.gov.uk/) as well.

## Reasons

The GOV.AU team demonstrated a deep understanding of user needs, established a broad multi-disciplinary team and developed an alpha prototype based on the Digital Transformation Office’s (DTO) [service design and delivery process](https://www.dto.gov.au/standard/service-design-and-delivery-process/). All this was achieved in a tight 9-week period using an agile approach.

### User needs (Criteria 1)

The team were looking to find solutions to the problems that users face in accessing information and services from government. From existing research, it was clear that users do not have a good mental model of how government works, what government expects of them, or how to find information and services across 1,500 Commonwealth government websites and over 4,000 other state and local government sites.

The team have done in-depth user research with over 100 citizens, covering a good variety of people, and focused on three ‘transitions’: starting a business, becoming an adult and living well as you get older. The team initially planned to focus on ‘planning for retirement’, but changed to ‘living well as you get older’ as the team learned that citizens do not always plan for retirement.

From the research it was clear that citizens understand the role of government, but make choices to avoid government bureaucracy. They use search engines to find information, and trust in the advice and experience of friends and family. The fear of not completing a complex task correctly pushes many people to intermediaries eg. accountants, grant specialists, visa experts, import brokers etc.

The team looked predominantly at Sydney Metro users. They had varied socioeconomic backgrounds and a range of experiences of government. But the team recognise that they need to include a broader range of the Australian population in future research.

It was encouraging to see that the whole team observed research sessions. The focus on long, complex transactions in research was good, but the panel would have liked some thought about how simple and quick things fit in as well.

Some work has been completed on accessibility, with more to come, but there are challenges around English literacy rates which also need further investigation.

The team validated that users trust well known and understood government services, supporting these will be essential.

### The team (Criteria 2)

The team followed an agile approach using Kanban as the basis for working. From the first day, all the expected roles were in place to build a successful service, some of these roles were filled by contractors as it is difficult to find the skills needed within existing government organisations. The larger team was split across the three research areas, each smaller team being multi-disciplinary. Sprints were run over a week, timeboxed over a 9-week period. This appears to have left the team drained at the pace of expected delivery. But being agile in the processes around agile can be useful; the teams could trial 2-week sprints to give teams time to digest findings, prototype work and test it with users. Each team shared information through showcases and retrospectives.

The team know they will need to grow during the beta with the aim for roles to be filled primarily with public servants, although there may be some reliance on design agencies and there needs to be more capability built around the analyst and product management roles. It was encouraging that the experience of relatively small sub-teams has led to the decision to have larger sub-teams during the beta.

### Development (Criteria 3)

The team have designed the alpha around the findings from research with users. They have iterated the designs and developed an accordion based presentation of tasks in a checklist format that users can complete as they “transition” through broad services. This design pattern created helps users understand the scale of work and could potentially offer guidance for related tasks. As the panel expected, much of the code developed in the alpha will not be used in the beta. An example of an iterated design was the alerting of users to tasks to be completed in sections; this did not test well as users expected there to be a problem or action to be taken.

Time was taken to use natural language throughout the design, content has been considered throughout, supported by design prompts.

### Tools and information (Criteria 4 & 5)

The GOV.AU alpha has been built with easily accessible technology helping to give confidence to the team and rest of government that changes will not cause failures. HTML, CSS, JavaScript have been used on the front end with Jekyll and Jenkins in the back-end, hosted on AWS with Cloud Foundry. Prose is used to edit content. The team have an impressive continuous integration/delivery capability which will enable them to rapidly iterate in beta and beyond.

The team are planning for other government organisations to hold personal information. As yet there is no team member dedicated to information security in the DTO. The design of the alpha site implies collection, processing, display, and retention of personal information, but the alpha did not consider if or how this could be technically implemented in a secure manner. All approaches to using data and personal information have risk, the design could inadvertently introduce fraud vectors. The team plan is to look in depth at this in the beta.

It was encouraging that the team are working to build ethical hacking capabilities to mitigate against security risks.

### Measuring and reporting (Criteria 6)

The team are yet to understand how to measure and report success for GOV.AU, a discovery is just starting for the publication of performance data. It is likely that key performance indicators (KPIs) will be set for each transition rather than the whole site. The team plan to implement Google Analytics, like [GOV.UK](http://gov.uk/), and to allow feedback at page level.

### Open standards (Criteria 7 & 8)

The team are planning on using established and well understood platforms like govCMS for content editing, contributing back any developments they make. Like [GOV.UK](https://www.gov.uk/) there is a plan to set up a standard design patterns library for elements needed; this saves time by not starting from scratch again. The team will validate any changes needed for localisation.

The alpha code is not currently open source, the team are planning for the beta to start by being open source. [Experience has shown](https://gdstechnology.blog.gov.uk/2016/01/26/working-out-how-to-open-up-the-register-to-vote-code/) that coding in the open from the start is the easier and most effective open source approach. Contributing back to other code bases and allowing others to use newly created code helps to strengthen sites. Blocking this is illogical.

### Design (Criteria 9, 10, 12 & 14)

The service team prioritised GOV.AU to work very effectively on a smartphone first, building up to a fully responsive design. This was useful in the initial user testing in the field, however it does not recognise [the range of browsers that should be designed for](https://www.dto.gov.au/standard/design-guides/performance-testing/) in DTO guidance . It was good to see accessibility was prioritised in early design to ensure as many users who want to can access GOV.AU in a way that meets their needs. More research is going to take place with users in their own environments during beta, particularly those who are not based in metropolitan areas.

Most users that the service was tested with were able to complete a transition unaided first time. The prototype does not show the full range of interactions with different organisations within government; this is the difficult design task still to be completed.

Point 12 of the Standard ensures users do not have to repeat themselves when moving into different channels. The transitions need to be accessible to relevant government organisations - this is a significant challenge and could change the nature of the checklists to being transactional, with users sharing information with government. This would change the nature of GOV.AU into being a service.

## Recommendations

### User needs (Criteria 1)

* More research with a wider population sample is needed, less Sydney-centric and specifically those who are most likely to be excluded by digital transformation and those who have complicated relationships with government.
* Have a clearer plan about what kinds of internal users there are likely to be, and how to conduct research with them.

### The team (Criteria 2)

* Losing many of the contractors at the end of this phase is likely to cause issues with pace of delivery, particularly at the start of the beta. Make sure there is a plan to keep as many team members in place during the beta and beyond.
* Work on developing product management and performance analysis skills needs to be the primary focus for the team.
* There is likely to be a bigger need around development and security with the planned approach, make sure the skills can be developed quickly and have a person responsible for this.

### Development (Criteria 3)

* Choosing to complete just one or two transitions during beta may lead to scaling fallacy. Choosing which transitions will be important to prove the concept, and the team should tackle the most complicated first.
* Agile is adaptable to the needs of product teams. The team should ensure they are adjusting processes throughout.

### Tools and information (Criteria 4 & 5)

* Ensure there is a role dedicated to information security and risk assessment within the team.
* The prototype currently collects personal information and data. Designing and validating an implementation plan for how this can be done securely needs to be an early priority in beta.
* The team should research current phishing activity around government services to understand how to protect future users of GOV.AU.

### Measuring and reporting (Criteria 6)

* While the panel recognise that the team will define the details of performance measurement during beta, the panel expected the team to have a clearer statement of the outcomes they were trying to achieve, and how they would measure the achievement of those outcomes.

### Accessibility and non-digital channels (Criteria 10)

* The team have done some work on the technical accessibility of their prototype, but it was not clear whether their research had covered users’ broader access needs.
* The team showed that checklists were very valuable in helping users to navigate government services during big ‘transitions’, the team must consider how this will be used by people ‘outside of a digital environment’.
* The team must consider how checklists will work across channels, eg. if a user is struggling to complete some items on their checklist and visits a government office for help.

### Open standards (Criteria 7 & 8)

* The principle of coding in the open has many benefits (improved security, accountability etc.). The team must abide by the standards of the DTO and release code publically as soon as blockers are removed.

### Design (Criteria 9 & 12)

* The team have designed a pattern for the transitions which may be difficult for users on mobile phones. The team should test this with the most difficult transitions to validate the pattern works well.
* There needs to be more thought given to the non-digital channels for the transitions, how progress can be shared with government organisations and what users who have started these journeys should do to continue later.
* KPIs have not been established; setting some early even if they are wrong gets the team in the practice of building services that can be measured. This is important if the team are to understand the impact of their work on other government organisations.
* Ensure that [all browsers are considered](https://www.dto.gov.au/standard/design-guides/performance-testing/).
* Prioritise the design of the hardest transitions with the most intricate and difficult interactions, including transactions with national and state government.
