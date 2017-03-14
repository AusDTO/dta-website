---
title: "Security testing in an agile environment"
category: [blog]
tag: 'technology'
author: Stephen Bradshaw
author-excerpt: "Stephen Bradshaw is an Ethical Hacker at the Digital Transformation Agency."
thumbnail: /images/blog-thumbnails/blog3-Thumb.png
hero-image: /images/blog-content/blog3-Hero.png
searchexcerpt: "How is security testing performed at the DTA? What are the challenges and opportunities presented by the DTA environment to security testing?"
---

![Security testing in an agile environment.]({{ site.url }}{{ site.baseurl }}{{ page.hero-image }})

*Caption: Security testing in an agile environment.*

## Security testing at the DTA

The DTA has a team of "Ethical Hackers" that perform security testing on systems developed by or with the DTA. This includes in-house development and systems developed in partnerships with other government agencies. 

There are a variety of factors that can initiate a test: a significant feature being added; a particular project milestone being hit; a certain amount of time passing since the last test; a significant volume of changes being made to the project’s code base since the last test; or a request from a project team member. 

Once a decision to test is made, the scope of work is decided and a test scheduled. Each testing period can last anywhere from a few hours to a few weeks.  

Ethical Hackers in the DTA are generally not formally assigned to the projects they work on. This is in contrast to the way most other technical staff in the DTA work. They instead sit within their own "secops" team, and work with projects on an as-needed basis. This requires balancing the schedules of the team, and of each project they support. The culture at the DTA facilitates this approach.

## The challenges and opportunities of security testing at the DTA

Many of the standard practices used in security testing are designed for consultancies. They are also better suited to the [waterfall method](https://en.wikipedia.org/wiki/Waterfall_model) of software development. We had to modify these practices to work for an internal security team in an [agile](https://en.wikipedia.org/wiki/Agile_software_development) environment like the DTA.

This presents both challenges and opportunities, some of which are listed below:
- Agile development has smaller more frequent releases than waterfall development. Large and infrequent releases provide an obvious point to perform security testing. You perform a full test just before release, cover many changes at once, and don't have to test very often. Test scheduling is not so obvious in an agile environment. The first test you perform on an agile product can be a complete test. But when do you test next? Potentially insecure features are added with every release. And those releases come on fast. An approach that makes the most efficient use of testing resources is needed. This involves monitoring change, and performing focused tests when things have changed "enough".

- Developers and security testers work together, giving developers easy access to security expertise. Normally, security testers are available only after development is complete. And even then, they work at a distance from the developers. The alternative provides developers the ability to consult early on potentially concerning issues. Thus, security issues can be caught early on in the development process.

- Security testers also have easy access to developers. They can easily reach out to the developer of the code they are testing. This is a huge advantage to the security tester seeking to understand the code they are testing.

- Working closely with the project team makes the reporting of vulnerabilities more efficient. Gone is the giant report delivered at the end of testing. Each issue can instead be directly added to the project issue tracker. Or, reported directly to the developer.  As well as making reporting more immediate, this also makes it simpler. The ease of communication means that less information can be provided up front. Follow up questions, or requests for clarification or more information are easily asked.

- Having easy access to the source code repositories provides opportunities for automated checks. How much change has been made in each project? Are there any obvious security issues in each commit? We have some simple monitoring in place for this now, and are working on improvements.

- The use of a [continuous delivery](https://en.wikipedia.org/wiki/Continuous_delivery) pipeline also provides opportunities. Namely, the ability to run automated security tests during deployment. This is something we are investigating.
