---
layout: guide
title: Building digital services
permalink: /standard/design-guides/building-digital-services/
breadcrumb: Building digital services
lede: Building user-centric government digital services for customer to government (C2G), business to government (B2G) and government to government (G2G) interaction.
topic_group:
- Website design and development
topic:
- Website development
published: false
---
The purpose of this guide is to assist agencies to understand government language and terminology and the obligations they need to meet to deliver a digital service. It is also intended to provide support for agencies to help them acquire resources and skills they may lack.

In the context of this guide, ‘building’ includes solution architecture as well as software configuration for commercial off-the-shelf (COTS) solutions and software development (bespoke). Guidance on [user-centred design](/standard/design-guides/user-centred-design/) is available in other guides.

We recognise that many agencies already have expertise, resources and experience to build digital services far beyond what can be described here. As with other guides, you may only require a quick review of the top-level checklist items, rather than all of the linked detailed guidance.  

We are looking for quality feedback from agencies who are currently building digital services both in small and large scale projects. Make sure you <a class="feedbackTrigger" href="mailto:jira@ausdto.atlassian.net?subject=Building%20digital%20services">tell us</a> what guidance you need. The process will only be worthwhile if we can get input from agencies delivering services.

## Why must I?

A number of considerations exist for building digital services within government, including:

*   user experience and expectations
*   privacy and security
*   policy and legal obligations
*   ensuring a good user-centric experience in a secure and trusted framework.

These considerations are relevant to interacting with government either directly through government websites or via third-party websites that use government systems to deliver digital services.

The Australian Government requirements relating to building digital services are contained in multiple broader policy documents. As this guide evolves it aims to help agencies understand what things they should or must do.

## How do I?

This checklist is not a comprehensive guide on how to build a digital service. However, as it evolves it aims to help agencies identify their obligations, as well as provide better practice advice. It is also intended that this guide will assist agencies to identify additional resources they may require to build a digital service.

*   [Identify existing experience and capability](#identify)
*   [Reuse, buy, build (in that order)](#reuse)
*   [Understand service obligations](#understand)
*   [Use an iterative and user-centred methodology](#use)
*   [Use open standards](#useopen)
*   [Select the right tools](#select)

### <a id="identify" name="identify"></a>Identify existing experience and capability

[Agencies’ skills](/standard/design-guides/the-team/), experience and capability to build digital services vary across government. Understanding the current level of experience and capability is important to help you recognise when and where you may need expert help.

### <a id="reuse" name="reuse"></a>Reuse, buy, build (in that order)

There are many existing government capabilities and platforms that you can reuse. The lessons learnt from similar government projects will assist in building new services.

If you need something not yet produced in government, open source or existing commercial off-the- shelf (COTS) products should suit your need. Certain [cloud computing service models](http://en.wikipedia.org/wiki/Cloud_computing#Service_models) can reduce the need for internal technical expertise in producing the required service.

The Digital Transformation Office is coordinating the development of many [core platforms](/standard/common-government-solutions) for government. These core platforms should be used before building your own similar software solution.

### <a id="understand" name="understand"></a>Understand service obligations

This guide will include a list of obligations, their level of compliance requirement (should or must), reference to the appropriate material and contextual examples of how to comply with the obligation. Future content will include additional information on:

*   procurement
*   accessibility
*   archiving requirements
*   security frameworks
*   whole-of-government core services.

### <a id="use" name="use"></a>Use an iterative and user-centred methodology

Digital services may use one or more [project management](http://en.wikipedia.org/wiki/Project_management) (for example, PRINCE2) and [software development](http://en.wikipedia.org/wiki/Software_development_process) methodologies (for example, waterfall or agile) or a combination of these.

The [Digital Service Standard](/standard) requires agencies to build services using agile, iterative and user-centred methods. [Waterfall](http://en.wikipedia.org/wiki/Waterfall_model) should only be used by exception and where it can be shown to better meet user needs. Projects may need the best of both formal and agile methods, playing to their respective strengths. Producing successful digital services is about knowing when to use the right tool at the right time.

We will be extending this guide and others with more detail on software development methodologies and case studies. In the meantime, we recommend looking at the [UK Government’s guidance on agile methodologies](https://www.gov.uk/service-manual/agile/index.html) and how the [how the Australian Government Department of Finance’s Online Service Branch uses Agile](http://www.finance.gov.au/blog/2014/06/16/behold-the-power-of-agile/) to deliver service products.

### <a id="useopen" name="useopen"></a>Use open standards

Open standards enable you to leverage defined protocols, approaches and data or information interchange. There is more information available in the [using open standards guide](/standard/design-guides/open-standards/)

### <a id="select" name="select"></a>Select the right tools

This section is intended to evolve. It will help agencies identify and justify the use of tools required for building digital services to meet Australian Government obligations.

The decision about which tool to use will depend on the:

*   technologies and platform selected
*   knowledge and experience of your team
*   security level of the environment you are developing in.

The best people to identify the right set of tools for your project are the resources using those tools. There is always a productivity balance between using the current tools your agency already has and providing your teams with more modern and perhaps more suitable tools.

#### Common tools required

##### Analysis tools

Business analysts will need tools that help in the gathering and documenting of requirements and business rules. This will include tools to assist with holding workshops, communication and collaboration with stakeholders and the technical teams, presentations and so forth.

##### User experience

Tools to support [usability testing](/standard/design-guides/usability-testing/) including generation of mock-ups, prototypes and capturing user-experience feedback should be used. Some government agencies have specialist user-testing facilities that may assist in engaging and testing with your user groups.

##### Design tools

Service design will need tools to define and describe the proposed service and its iterations. Design tools typically range from documents and diagrams through to sophisticated architecture tools that allow tracking against requirements and impact analysis for design changes.

##### Development environment

The development environment is where the developers perform their daily coding. Each developer will likely need their own development box (physical or virtual) on which they will install a range of development tools suited to their task.

Developers generally need administrative level rights to their development machine (to be able to install and uninstall on demand). Developers often need to perform some sort of destructive unit testing where they will need to cause a deliberate failure or rebuild their development box.

Developers need to work at a fast pace. Waiting hours or days for someone else (an administrator) to install software, rebuild a database or download tools, on their behalf, can have a significant impact on their productivity. A balance needs to be achieved between security and productivity when dealing with developers.

##### Metrics and reporting tools

Tools to track code completion, test coverage and unresolved bugs or issues can assist in identifying weak areas in the code or potential schedule slippages.

##### Source control

Any developed source code will require a source code repository. A good source code repository will include features such as roles, tasks, issue identification and tracking, to-do items, branching, backlog, test integration, automated build and testing, and reporting.

##### Prototyping environment

When using iterative methodologies such as Agile it is important to have an environment that is accessible by the developers and the users. This type of environment enables quick turnaround of feature change requests by users and business owners to ‘try’ different approaches without going through a significant and costly development cycle.

This environment may need to be accessible over the internet but is not considered or managed as a stable production system. Cloud-based solutions may be a great help for these environments.

##### Verification and testing environments

These tools enable independent system and user-acceptance testing. It is common to have an integration or system test environment for the test team to perform testing. This is in addition to a user acceptance testing environment to allow users and business owners to perform acceptance testing.

##### Automated testing

Automated testing tools enable execution of tests over and over again and are extremely important for regression testing. This reduces the need for people to repeat the same tests for new iterations and releases.

##### Bug and issues tracking

A tool to enable users to raise bugs or issues and track their progress is normally necessary for both development and business-as-usual work. This is often separate to the tools available in the source control platform. This is because it needs to be exposed to end users and also often needs to live beyond the development lifetime.

##### Configuration and release management

Tools may be necessary to track software releases and the configuration of the environments in which the software is installed. Configuration management tools may include monitoring tools that can identify issues that have occurred. Many can now often predict if an issue is going to occur before it happens.

##### Business as usual

Once a system is in production a number of tools are needed to manage and operate the solution. These will vary greatly depending on your operating model. They may include everything from a service desk with an on-call support team through to user-accessible issue lodgement and tracking.

_This content has been adapted from [UK Government Digital Service Design Manual guides](https://www.gov.uk/service-manual/) under the_ [_Open Government Licence v2.0_](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/2/)_._

**Last updated**: 27 March 2015
