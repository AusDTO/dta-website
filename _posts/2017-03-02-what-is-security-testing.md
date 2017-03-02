---
title: "Hacking for good &mdash; What is security testing?"
category: [blog]
tag: 'technology'
author: Stephen Bradshaw
author-excerpt: "Stephen Bradshaw is an Ethical Hacker at the Digital Transformation Agency."
thumbnail: /images/blog-thumbnails/Hacking-for-good-THUMB.png
hero-image: /images/blog-content/Hacking-for-good-HERO.png
searchexcerpt: "Security testing helps identify vulnerabilities in systems so that they can be fixed. This makes these systems safer and more trustworthy. "
---

![Hacking for good.]({{ site.url }}{{ site.baseurl }}{{ page.hero-image }})

*Caption: Hacking for good.*

Security testing is used to find vulnerabilities in a system. As an ethical hacker at the DTA, I perform security testing on systems developed in-house at the DTA or in partnership with other government agencies. I work alongside, not outside, the product teams, helping them deliver better, secure products.

This is the first in a series of blogs in which I look at security testing &mdash; what is it, why do it, how we do it at the DTA and how developers and ethical hackers can work together.

Security testing is one component of a larger program of activities used to secure a system. This includes a variety of practices, processes and assessments that look to manage the security of the system through its entire lifecycle.

There is an important difference between security testing and other assessment techniques. You cannot do it by only referring to documentation, system diagrams or interviews. Although useful, these can be misleading or inaccurate. The system itself cannot lie. Interrogating the system itself is the best way to discover if it is insecure.

The tester will interact with the system with the goal of understanding exactly how it works and how it might be vulnerable. Malformed requests are sent. Actions are performed out of order. Probes are sent that attempt to identify common vulnerability types. Unusual or unexpected behaviour is examined.  Potential vulnerabilities are confirmed. Exploits are written to prove the vulnerability exists and to demonstrate its impact. Thus, the vulnerabilities discovered by security testing are reproducible, and backed by evidence.

## How is security testing done?

The activities that comprise security testing fall into a number of categories. A system will be tested with some combination of them, based on the security tester’s assessment of what is most suitable in each situation. 

**Source code review.** Reviewing the source code of an application for security issues. This can include:
- using third party source code analysers. These scan source code files for patterns associated with previously identified security issues.
- using custom written tools to identify "interesting" code. These are tools written by the tester to perform a particular analysis task. One example of this would be checking for hard coded passwords or security keys.  
- manual code review.  This is reading the code to understand what it does.  Depending on the size of the application, it is generally not feasible to read all of its code.  In this case, the tester will use various strategies to identify areas on which to focus. Finding interesting code through penetration testing is one such strategy.

**Penetration testing.** Probing a running system in a structured fashion to detect vulnerabilities. There are references, such as the OWASP Testing Guide, which can be used to guide the testing process. Additionally, there are many free and open source tools to use in performing the testing. A running instance of the system is required for penetration testing. This will ideally be a development, test or staging server. Testing against production is also possible if special care is taken.

**Thoroughly investigating a local instance of the application.** Running a local copy of the service, and using various tools to probe it. This is an excellent method of understanding the ins and outs of how an application operates. Building the application allows you to identify the supporting services and configuration settings. Attaching debuggers and tracing allows the tester to associate code with user actions. Modifying the code allows the tester to get more output and reach "out of the way" code paths. This provides a view "behind the curtain" when penetration testing and reviewing code.

**Security configuration reviews.**  Confirming that the system settings for supporting services are securely configured. Many services have security critical settings, and recommended secure configurations. This process confirms that the system is configured according to those guidelines.

**Scanning for vulnerabilities in supporting third party services and libraries.** Third party software has vulnerabilities which must be managed to use the software securely. You need to know when you are using vulnerable software, and install the needed updates. To detect vulnerable software, you need to use the correct tool. There are language and package manager specific tools to detect outdated software libraries. There are Operating System specific tools for detecting needed OS patches. There are vulnerability scanners that can detect missing vulnerabilities in many different products. None of the available tools provide complete coverage though. You need to understand the types of vulnerable software you are looking for to pick the correct tool/s.

The security tester will then report the vulnerabilities to the system owner, explaining why the vulnerability exists, how serious it is, how to reproduce it, and how to fix it. 

The traditional method of delivering results is in a report at completion of testing. When security testers work as part of the delivery team, reporting can be more direct. Results can be shared as soon as they are discovered. The security testers can raise tasks directly in the project’s issue tracking system. Alternatively, issues can be raised directly with responsible developers. 

Beyond providing advice, security testers are usually not involved in fixing vulnerabilities. The project team will be responsible for managing remediation.  Once a vulnerability is fixed, the security tester can "retest" to confirm remediation.

In my next blog I will look at the value of security testing. It takes time and money, so why should you do it?
