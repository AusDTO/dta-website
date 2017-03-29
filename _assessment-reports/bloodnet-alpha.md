---
layout: assessment-report
title: BloodNet				
breadcrumb: BloodNet		
permalink:	/standard/assessments/bloodnet-alpha/
report-excerpt: Australia's online blood ordering and inventory management system. BloodNet is a web-based system that allows staff in health facilities across Australia to order blood and blood products in a standardised way and to do so, quickly, easily and securely from the Australian Red Cross Blood Service (Blood Service).

department: National Blood Authority			
date: 2017-03-16
result: Pass
assessment-stage: Alpha
lead-assessor: Alastair Parker
product-manager: Rebecca Heland
service-manager: Leanne Lawrance

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
criteria-12-result: Not assessed
criteria-13-result: Not assessed
---
## Areas of good performance

### Criterion 1 - Understand user needs

"We all feel the importance for the product because we've been to hospitals and seen how important it is" - quote from the team.

During Alpha, the BloodNet team explored the current system and its users. BloodNet was developed 10 years ago and is used today by nearly all hospitals and laboratories that purchase blood products.

The team have visited 39 locations, interviewed 102 people over 187 hours of research to hypothesise a Minimum Viable Product (MVP). Not all the team could participate in every user research session, but the team synthesise daily and playback with the group. The group were not surprised that the primary user need was registration, ordering and receipting of blood. But they did discover a high need for various ordering templates.

Their research identified that the existing system was too cluttered, and it was difficult to find key information quickly – something which needs to be resolved with a time-sensitive product.

The team developed several paper prototypes to test with their users, and held A/B testing sessions.

The prototypes that tested well had strong resemblance to the existing system. The team pared everything back to the bare minimum, which tested well. A feature of the prototypes that was very well received was matching the colour coding of products to items in the system to make receipting clearer.

The BloodNet team will continue to develop their hypotheses through Beta.

### Criterion 2 - Have a multi-disciplinary team

The team are very well  supported by their service manager and their organisation. National Blood Authority isn't a big department, and this is their first exposure to formally using the agile development methodology.  After building the case for the agile methodology, the organisation has fully supported this team.

This support has helped form a well rounded team, with deep knowledge about the product and its ecosystem. They have multiple user researchers and developers, a UX and accessibility member and their own ethical hacker. The team are predominantly contractors, which might pose an issue for continuity and the long term development of the service. Their service manager is working with the agency to investigate how they can continue to improve and grow the service after it goes live.

Most team members are quite new to the product, but they are well supported by a very knowledgeable product manager. The team are also helped by an operations centre who run the existing BloodNet system.

The setup of their office has some limitations for colocating and working together, however the team have managed to create a working environment that supports the way they work. 

### Criterion 3 - Agile and user-centred process

The team's delivery manager participated in one of the DTO's exemplar teams and is bringing that experience to the team. There was some initial hesitation from some members about working this way. After some coaching sessions and exposure to real users through their user research, everyone is embracing the new approach.

Their sprint cadence follows how the DTA operates, but they aren't blindly following a process. They are flexible and move things around to cater for the team and their users.

The team are using an online tool for managing their tasks, based on a suggestion from a retrospective. The user researchers had reservations about not having a physical wall, but agreed to trial it. They found that it works quite well for them, and helps to bridge the gaps formed by not being completely colocated.

The team are honest about making mistakes, and are learning from them. Sizing of tasks was something the team weren't doing well but they have iterated their approach.

## Recommendations

### Criterion 1 - Understand user needs

As the team moves into Beta, they should consider  extending some research time into how suppliers will interact and integrate with the system. As well as documenting the needs to suppliers.

### Criterion 2: Have a multi-disciplinary team

The majority of the current team will return to original projects after the initial release of the service. Services at the National Blood Authority are supported by a common maintenance team, and this will make it difficult for any new members to develop empathy for the users.  Assessors recommend keeping the team together for as long as possible after launch. This will help keep institutional knowledge and research findings with the product but also provide a platform to learn and iterate the product.

### Criterion 3: Agile and user-centered process

Assessors recommend the team create a ‘User storymap’, an easily referenceable architect to track how complete Beta is towards MVP and what features are in scope for future versions.

As the team progress through Beta, they’ll need to consider the following points: 

- The login behaviours of their users, especially those using tablet devices, and the implications for security and privacy for devices that do not reside in secure labs 
- Adopting the GOV.AU UI-Kit as a mobile first responsive front-end 
- The use of APIs to make data (eg. Inventory or orders by state) available
- Increasing their focus on accessibility by using [CAST Figuration](http://aem.cast.org/creating/cast-figuration.html#.WNsnWKJ97fZ) instead of Bootstrap and in conducting an independent review of their accessibility compliance (WCAG 2.0 AA), both technically and functionally 
- Using an appropriate unit-testing tool for accessibility testing of each build 
- Working with stakeholders to devise a smaller, incremental roll out strategy
- Focusing on more detailed performance indicators, like how long orders take to be fulfilled, what the bloodtype holdings are in each state, etc and baselining those for future comparison. 
