---
layout: assessment-report
title: Citizenship appointment bookings
breadcrumb: Citizenship appointment bookings
permalink: /standard/assessments/appointment-booking-service-beta/

report-excerpt: The aim of the Australian Citizenship appointment booking service is to enable users to book, or reschedule, an appointment for a citizenship test or a time to come in and prove who they are through an in-person identity verification appointment. At the moment, these types of appointments are scheduled by the department. As a result, many appointments need to be rescheduled as they are inconvenient for the user. This causes delays and increases calls and interactions. This could be avoided if the user was able to select an appointment time and date that was convenient to them.

searchexcerpt: "The Citizenship appointment bookings service began before the Digital Service Standard became live. This means the service was assessed against the beta version of the Standard. The team is in the process of transitioning to the live Standard."

department: Department of Immigration and Border Protection
date: 2016-05-03
result: Pass
assessment-stage: Beta
self-assessment: false
lead-assessor: Matthew Landauer
service-manager: Anne Judd
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
criteria-14-result: Pass
---
<br>
The Citizenship appointment bookings service began before the Digital Service Standard became live. This means the service was assessed against the [beta version](https://www.dto.gov.au/standard/changes-to-standard/) of the Standard. The team is in the process of transitioning to the live Standard. 

## Areas of good performance

### Criterion 3
The team have built an excellent technical environment which supports agile and continuous improvement practices: there is heavy use of continuous integration, automated testing and repeatable zero-downtime deployments across multiple environments.

The team have been releasing code regularly throughout the beta development process.

### Criterion 4
The team are operating the service on the DTO's platform-as-a-service solution. We were pleased that this includes automated monitoring for the infrastructure and that the team have set up an automatic uptime check for the application.

Structured on-call processes have been put in place and the service has been added to the DIBP helpdesk and escalation points added.

### Criterion 6
The team are measuring user satisfaction, digital take-up, completion rate and cost per transaction across the service. This is currently a manual data collection process.

The data has been provided for the DTO’s performance dashboard.

### Criterion 7
The team have used several open standards in the development of the service, including presenting event details in the iCalendar format and adopting the PDF417 standard for producing barcodes.

We are also pleased that this service is an early adopter of the DTO's platform-as-a-service solution.

### Criterion 8
The service is built on open source technology (Spring), and we are pleased that the source code for both the frontend and backend services has been released on GitHub under an MIT Licence.

### Criterion 9
The team have adopted a responsive design approach from the beginning and reflected on the high proportion (~60%) of mobile and tablet use during the private beta.

We were satisfied with the team's approach to browser support, with an estimated 99% of users covered by browser choice.

The team have chosen to provide a core experience for all browsers (including a text-only calendar) and provide an enhanced experience for modern browsers.

The team have automated cross-browser testing as part of their continuous integration pipeline. They also carried out usability testing with a range of devices.

## On the path to Live

### Criterion 1
Keep putting user experience first, even if modifying the service is hard.

For instance, with the issue of the client id and name on a login error getting cleared, look at a range of technical solutions that will allow the entered client id and name to be preserved on errors in such a way that security is maintained.

As identified in usability testing, the picking of the time in the calendar needs further work as  some users had some issues knowing what to pick.

The team should continue regular usability testing and user research throughout public beta on the path to live and iterate the service based on what they learn.

## What we've learnt

### Assessment team
There is immense value in assessors watching videos of the usability testing and user research.

Having some visibility on the product backlog allows the assessors to understand how the team is prioritising features.

### Delivery team
Moving to the in-flight assessment model was an important and helpful step.

The team learnt earlier about the intentions of the Digital Service Standard criteria, and the assessors gained a better understanding of the service.

Allowing assessors to challenge assumptions earlier adds rigour to the process. This is helpful when it's done in a supportive way.

The team knows that there's still plenty of work to do to get the service to the Live stage. The most important goal is to support the scale of a nation-wide rollout.

We will also continue user research and find ways to share useful patterns with other teams.

### Keeping up with the Citizenship appointment booking service

Public Beta : [Citizenship appointment booking service](https://appointments.border.gov.au/ title="visit the Australian Government - Citizenship Appointment Booking service)

### Code

* [https://github.com/AusDTO/citizenship-appointment-client](https://github.com/AusDTO/citizenship-appointment-client)
* [https://github.com/AusDTO/citizenship-appointment-server](https://github.com/AusDTO/citizenship-appointment-server)

The service also has continuous integration builds that the public can follow:

* [https://travis-ci.org/AusDTO/citizenship-appointment-client](https://travis-ci.org/AusDTO/citizenship-appointment-client)
* [https://travis-ci.org/AusDTO/citizenship-appointment-server](https://travis-ci.org/AusDTO/citizenship-appointment-server)

### Metrics
Performance dashboard: [The Citizenship Appointment Booking service dashboard](https://dashboard.gov.au/dashboards/2-australian-citizenship-appointment-booking-service-dashboard).

### Benefits
The Citizenship appointment booking system is currently in beta - used in the Melbourne office for approximately 1000 appointments per week. Since going live in Melbourne, there have been 10,154 appointment bookings, 4249 arrivals, and 1634 re-schedules using the online system (about 16% of the client base). Customer feedback continues to be gathered and assessed and is generally very positive (over 90% 5/5 rating).

People who need to reschedule their appointment are now able to do so directly online. They save approximately 60 minutes and no longer wait in a phone queue.
