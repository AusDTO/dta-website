---
layout: assessment-report
title: Citizenship appointment bookings
breadcrumb: Citizenship appointment bookings
permalink: /standard/assessments/appointment-booking-service-alpha/

report-excerpt: The aim of the Australian Citizenship appointment booking service is to enable users to book, or reschedule an appointment for a citizenship test, or a time to come in and prove who they are through an in-person identity verification appointment. At the moment, these types of appointments are scheduled by the department. As a result, many appointments need to be rescheduled as they are inconvenient for the user. This causes delays and increases calls and interactions. This could be avoided if the user was able to select an appointment time and date that was convenient to them.

searchexcerpt: "The DIBP Citizenship appointment booking service team has shown sufficient progress and evidence of meeting the first 3 criteria of the Digital Service Standard. The team are on track for other criteria and they should proceed to beta stage, taking account of the recommendations outlined in this report."

department: Department of Immigration and Border Protection
date: 2015-12-15
result: Pass
assessment-stage: Alpha
self-assessment: false
lead-assessor: Matthew Landauer
service-manager: Rocio Trapaga-Saul
criteria-1-result: Pass
criteria-2-result: Pass
criteria-3-result: Pass
criteria-4-result: On track
criteria-5-result: On track
criteria-6-result: On track
criteria-7-result: Not assessed
criteria-8-result: On track
criteria-9-result: On track
criteria-10-result: On track
criteria-11-result: Not assessed
criteria-12-result: On track
criteria-13-result: On track
criteria-14-result: On track
---
## Assessment report summary

### Outcome of service assessment - Pass
The DIBP Citizenship appointment booking service team has shown sufficient progress and evidence of meeting the first 3 criteria of the Digital Service Standard. The team are on track for other criteria and they should proceed to beta stage, taking account of the recommendations outlined in this report.

### Reasons
The service meets the required elements of the Digital Service Standard at the alpha stage.  The assessment panel noted:

* The service is being developed in response to a clear user need informed by good user research including in context user research, shadowing, observing and interviewing a broad range of users. The team had also conducted extensive in depth discussions and observations with internal users and stakeholders. The team can talk in detail around the experiences and needs of users at key points in their journey to become an Australian citizen.
* The team has made sensible and pragmatic decisions around the roles and capabilities of the people in the team during their discovery stage. They are aware of their reliance on external suppliers for digital capability and indicated that they will plan for capability building within the agency during the beta stage.
* The team could show they have adopted an agile way of working.
* The team were able to show how their activities align to the service design and delivery process. They showed a range of artefacts that helped to demonstrate the discovery stage, their user needs analysis and how they narrowed their focus to design and deliver an alpha prototype that has been tested and iterated to meet the user need.
* The team showed their alpha prototype on mobile and desktop browsers.

## Areas of good performance against the Standard

### User needs research (Criteria 1)
The team demonstrated good research process in discovery and alpha. They showed they had a deep understanding of the experiences of real users during the citizenship application process. The team showed how their user research informed their focus area for the alpha. Initially they were focused on improving the citizenship ceremony. The focus shifted to appointment booking when the user research demonstrated that the process of changing appointments was the biggest pain-point.

### Agile and user centred (Criteria 3)
The team showed good evidence of adoption of agile methods in their presentation and the delivery manager was able to speak confidently about the prioritisation processes and agile ceremonies in place. The user research and design work was clearly integrated with development in the alpha stage. The team were able to show good evidence of how the design iterated over time in response to usability testing in each sprint.

### Data, tools and systems (Criteria 4)
The assessment team were pleased to see that the team has reused the ‘Slotpicker’ calendar code from the prison visits booking system developed in the UK. Ideally where different functionality is needed, the team should extend the calendar component and share their changes back to the original code base. The team has also open-sourced their beta ‘client’ and are continuing to develop it in the open. We would welcome the team blogging about their open source approach to help other teams do the same.

## Recommendations
The assessment panel makes the following recommendations to assist the team as they move into beta stage.

### User needs - Criteria 1
User research must continue throughout beta. User research should be conducted in each sprint throughout the beta stage. The team must make sure that design and research are integrated into the activities of each sprint and that the user interface continues to iterate throughout the beta stage.

### Multidisciplinary team - Criteria 2
Strong service management is needed for the beta stage and to ensure that the right skills are available at the right time during beta. The team will need to carefully manage issues around security clearances and systems access for team members to ensure there are no blockers during beta development.

The team is established from, and reliant on, multiple suppliers. While there are plans to build modularised training to help support transfer of knowledge from suppliers, it needs to be prioritised so that this can happen during the beta phase.

### Agile & user centred - Criteria 3
There was concern that what was shown in the live demo deviated from what was shown on paper as the latest version.

### Data, tools & systems - Criteria 4 & 5
A progressive enhancement approach should be adopted for beta to ensure that the service can be used when JavaScript fails.

For beta onwards, the team have decided to use Java with the Spring web framework, after reaching a compromise with the DIBP IT team. The team should be mindful of any assurance and security requirements and should start working through any issues that may arise early in the beta stage to avoid any delays in releasing the service to users.

Throughout the beta, the team must make sure that they continue to work in a way that keeps feedback loops short, automates testing and deployment, and supports multidisciplinary team working.

### Measures - Criteria 6
There are opportunities to improve the team's understanding of the metrics and baseline measures of their service; for example the cost to the department for scheduling and rescheduling appointments.  We will expect to see the team has devised a clear set of metrics to measure when they return for their beta assessment.

### Open source - Criteria 8
At present, DIBP have open-sourced their beta ‘client’ code and are developing it in the open. The ‘backend’ code for the service is currently private, but the teams should consider opening this up as soon as is practical.

### Accessible - Criteria 10
In the demonstration of the Alpha prototype the screen rendered quite small on a mobile device and the assessment team had some concerns about target size for people who have imperfect motor control. The team will be expected to have done testing with people who have a range of accessibility issues for the beta assessment, including those with upper body mobility issues.
