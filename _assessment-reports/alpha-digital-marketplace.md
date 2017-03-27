---
layout: assessment-report
title: Digital Marketplace				
breadcrumb: Digital Marketplace		
permalink:	/standard/assessments/digital-marketplace-alpha/
report-excerpt: The aim of the Digital Marketplace is to reduce the barriers to public sector Information and Communications Technology (ICT) procurement, making it easier for businesses, especially Small to Medium Enterprises (SMEs) and start-ups, to participate in the delivery of high quality, innovative digital services. The service is being delivered as part of the National Innovation and Science Agenda. The Digital Marketplace aims to give both buyers and sellers assurance, visibility and choice. 
department: Digital Transformation Office			
date: 2016-08-01
result: Pass
assessment-stage: Alpha
self-assessment: false
lead-assessor: Lindsay Holmwood
service-manager: Catherine Thompson
criteria-1-result: Pass
criteria-2-result: Pass
criteria-3-result: Pass
criteria-4-result: On track
criteria-5-result: On track
criteria-6-result: On track
criteria-7-result: On track
criteria-8-result: On track
criteria-9-result: On track
criteria-10-result: On track
criteria-11-result: On track
criteria-12-result: On track
criteria-13-result: On track
---
<br>
The Digital Marketplace team has met criteria 1 to 3 of the Digital Service Standard and shown sufficient progress towards meeting  the remaining criteria. This report recommends the Digital Marketplace proceed from Alpha to Beta stage. 

## Areas of good performance 

### Criterion 1 – Understand user needs

During Alpha the Digital Marketplace team explored the Australian Public Service (APS) ICT procurement landscape and relevant policy. 

The team developed and tested 10 hypothesis to determine what service would be of greatest value to users of the Digital Marketplace. Research identified where buyers and sellers aligned and differed. It found that buyers have difficulty communicating their needs to sellers and sellers have difficulty communicating their offering to buyers. This impacts on both groups ability to be effectively matched.

The team held weekly research sessions with users to build and iterate functionality for the prototype flows. User research covered buyers from Commonwealth and State departments both large medium and small. It also covered sellers from large to small business and included startups.

The research participants highlighted the need to have the right policy and political environment in place for a digital marketplace to operate. Both buyers and sellers wanted assurance that they were following Commonwealth Procurement Rules. Buyers wanted assurance that they were getting the right supplier for their brief or problem to solve. Small sellers wanted to know if they would be evaluated equally alongside big players. All users wanted a fair, open and transparent process. 

The Marketplace team will continue to develop hypotheses through Beta. 

### Criterion 2 – Have a multi-disciplinary team

By the end of Alpha, the team were fully staffed with a multi-disciplinary team. They developed an effective onboarding process for new team members. The latest team member commented they had access to all systems within two hours of starting and could see all interactions between members of the team, and had access to people of all levels of seniority within the program. 

The team is not averse to conflict and team members felt that they were able to discuss ideas freely with one another to constructively reach consensus. Team members engaged in robust discussions, regardless of role, skillset, or seniority. We saw evidence of this during the in-flight check-ins and particularly during the Alpha assessment when the team spontaneously debated the implications of assessor feedback. 

### Criterion 3 - Agile and user-centered process 

The team rapidly evolved their problem solving approaches and prototypes during the Alpha stage. 

The team began by sketching wireframes of individual interface elements. They put these into further context by sketching out whole pages and joining these together into user journey maps. The team quickly turned these pages and maps into running HTML prototypes that could be tested with users.

Through this process, the team discovered there were points where the prototype diverged from the sketched outlines. Some of the form designs differed and users got confused about the information hierarchy. The team gained insights with some key features missing in the prototype which subsequently created gaps in interactions. The team quickly identified key screens and components that needed to be updated in order to test the user flows. The team planned feedback for issues/fixes which made it into the next sprint (backlog).

The team tested their prototypes with users every week and quickly identified several issues around missing information for indigenous employers. The team acted on this feedback from user research sessions to rework the prototypes and re-tested the prototypes with users. 

Finally, the team also received feedback from prototype testing sessions about the language used in written content. Because the web application was more than just brochure content, users wanted clear direction on when they were required to perform tasks. 

The team introduced a daily 5@5 ceremony as a second catch-up at the end of the day. This was a mini-showcase to help build understanding across the team about how far they got during the day, what the blockers were and how they were progressing. 

Because the team are iterating very quickly, they are running their weekly ceremonies more frequently. 

### Criterion 8 - Make source code open

For Beta, the team intends to use the marketplace software developed and [open sourced by the UK’s Government Digital Service (GDS)](https://github.com/alphagov?utf8=%E2%9C%93&query=marketplace). The team has worked closely with GDS to ensure the software runs on the open source Cloud Foundry Platform-as-a-Service. 

The original marketplace software was developed for a UK context. The team identified that the user needs for the UK cohort were different from the Australian cohort. They have chosen to use the backend components of the marketplace software, but build a new frontend tailored to the Australian user needs identified during Discovery and Alpha. This new frontend will also be open sourced. 

This is a unique opportunity for cross-government collaboration; where features developed by one government can be rapidly shared, used and improved by another. 

## Recommendations

During Alpha and the weekly in-flight check-ins, assessors provided recommendations that the team need to consider during the Beta stage.

### Criterion 1 - Understand user needs

The team will need to ensure that additional functionality being added to the Marketplace service is continually tested against the hypotheses identified during Discovery and refined in Alpha. The team will need to effectively combine qualitative and quantitative research to ensure new functionality continues to meet user needs.

During Beta the team intends to work with their counterparts at GDS in the UK and 18F in the USA to get a better understanding of the procurement problems faced by their respective governments. This as an opportunity to collaborate on global procurement reform. 

### Criterion 2 - Have a multi-disciplinary team

The team has identified that they will need to reform and reshape the team as they move into Beta. The operational realities of running a service will need to be balanced with building new functionality to meet the identified user needs. 

The assessors strongly recommend the team expedite the hiring of a data analyst to build out a fact base, and do comparative analysis of data from AusTender. This is needed to quantitatively ensure that the Marketplace is not duplicating existing functionality and is delivering value that meets user needs. 

### Criterion 4 - Understand tools and systems

As part of determining the technical feasibility of using the UK Marketplace software, the team has already started adapting the Marketplace software to work in the Cloud Foundry environment provided by cloud.gov.au. The team works in the open on GitHub and all changes are reviewed by at least one developer in the team before being deployed to production. 

The assessors recommend the team spends time optimising its deployment and release process. This ensures the team can continue building at speed while not impacting on the availability of the service to users. 

### Criterion 5 - Make it secure

Close attention needs to be paid to data classification and record management in line with APS requirements and the Information Security Manual. In particular, the assessment panel recommends that the team must pay attention to the intersection of privacy policy and technical implementation, particularly around data collected via analytics software. 

The Marketplace team has engaged the ethical hacking group within the DTO to perform penetration tests of the software to be used in Beta. The team also has a person dedicated to legal and privacy and believes it is well placed to address these issues within their multi-disciplinary team.

### Criterion 6 - Consistent and responsive design

While the Marketplace is making use of the responsive GOV.AU User Interface (UI) kit, the assessors recommend integrating responsive design testing into the test plan around all software changes. 

The Marketplace team intends to drive UI kit development based on patterns they’re discovering, and feeding that back into ongoing development so that all users of the UI kit are able to benefit. 

### Criterion 9 - Make it accessible

The team recognises that it needs to incorporate accessibility into the testing plan earlier for all changes being made to the service. 

By using the GOV.AU UI kit, much of the usability and accessibility testing of individual components has been completed. The team will need to incorporate regular accessibility testing that covers a diverse range of users for both the buyer and seller user journeys. 

The team has identified there may be difficulty finding users that meet these accessibility testing requirements, however intends to work with service leads and procurement contacts to increase their sample size. 

### Criterion 10 - Test the service

In the evaluation of the UK marketplace software, the team built a continuous delivery pipeline that executes the existing unit and integration test. 

The team has identified that it needs to expand the coverage of the automated integration testing, specifically with Cucumber, and it must be run on every code change. 

The assessment panel recommends the team spends time adapting their ways of working to ensure adequate testing of changes are performed before those changes are released to users. This testing should cover accessibility, usability, penetration and performance testing as required.

There are opportunities for using the same automated release processes used in other DTO programs of work that allow changes to be tested in production-like environments on-demand. 

### Criterion 11 - Measure performance

Based on their testing of the UK marketplace software, the team intends to use Google Analytics as the main method for measuring user behaviour. Completion rate can be derived through individual Google Analytics workflows. Digital take-up can be determined by tracing which transactions are going through AusTender versus the Digital Marketplace. 

The team recognises that they will need to work with the Performance Dashboard team to determine a method for finding the cost per transaction. 

The Marketplace team intends to add a data analyst to the team in Beta to derive metrics from the collected data, build out a fact base and report transaction information back to AusTender.

