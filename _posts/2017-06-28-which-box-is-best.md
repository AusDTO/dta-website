---
title: "Which box is best?"
category: [blog]
tag: 'technology'
author: Stephen Bradshaw
author-excerpt: "Stephen Bradshaw is an Ethical Hacker at the DTA."
thumbnail: /images/blog-thumbnails/whitegreyblack_thumb.png
hero-image: /images/blog-content/whitegreyblack_hero.png
searchexcerpt: "White box? Grey box? Black box? What exactly do these terms mean with regards to security testing, and which form of testing is right for you?"
---

![]({{ site.url }}{{ site.baseurl }}{{ page.hero-image }})

*Caption: White Grey Black.*

If you have ever been a consumer of [security testing](https://www.dta.gov.au/blog/what-is-security-testing/) services, you may have heard the terms white box, grey box and black box. Did you ever wonder what these meant? Or how choosing one ‘box’ over another could impact final results?

In this blog post I’ll try to shine a light on what these terms mean in the context of security testing, provide some guidance about which ‘box’ is best for you and explain our preference in this area at DTA.

## Which box is best and what does it mean?

White box. Grey box. Black box.

These terms refer to the amount of information a software tester has about the system they are testing.  The colours serve as metaphors indicating the level of transparency the tester has into the system. 

### Black box test

In a black box test the tester receives the minimum information about the system possible. Just enough to access it. For example, if a web application was being black box tested, the tester might just receive the URL.  That’s it.

### White box test

For a white box test, the tester gets as much information and access to the system as possible. For a web application this could include such things as access to application source code, system documentation, detailed configuration information, system addressing details and access to developers and system administrators in order to ask questions.

Any information or access that helps the tester understand the system can be included in the scope.

### Grey box test

Grey box testing sits somewhere in between these two extremes. Often a test may turn from white to grey due to the project team choosing to withhold some specific information from the tester. This is another way to look at grey box testing — as white box testing with some information withheld.

Rather than worrying too much about precise definitions however, it is most useful to just treat these terms as useful shorthand to describe the overall testing approach. When it comes to the specifics of what information gets provided, this can be decided via negotiation during test setup.

## What type of testing is best for me?

White box testing is the best type of testing for you.

There may be situations where providing certain information or access to testers is just not practical, or even possible. But generally speaking, the more information and access you can provide, the better the final result from the testing. 

More specifically, here are some of the benefits from white box testing:

### Minimise and manage potential disruptions caused by the testing

Some things are more likely to ‘break’ when being penetration tested. Things like system functions that connect to a database or trigger some sort of backend process, like an email sent to a shared mailbox, a file copy or a backup.  Source code and documentation allow these ‘breakable’ components to be more easily identified by a tester. Testing of these components can then be handled in a way to best manage any disruption. 

### More efficient testing

Having access to additional resources and techniques makes the overall testing process more efficient. Rather than using inefficient information discovery techniques testers are able to read documentation or source code. Injection flaw tests can be restricted to attacks relevant to backend technology. For example, if an input variable is not sent to a database, SQL injection flaws do not need to be tested.  Running an application locally and tracing input makes it easier to determine if a potential issue is exploitable. This all means more work gets done in less time.

### Better test coverage

A full white box test gives the tester access to multiple assessment techniques. This includes:

- source code analysis 
- traditional penetration testing techniques 
- security configuration reviews 
- tracing/debugging of a locally running instance of the system

Obviously, the more options that a tester has, the more types of vulnerabilities they can find. There are certain types of issues that can only be found using certain approaches. For example, you are only likely to find hardcoded passwords or secrets via source code analysis. The tester can also combine multiple techniques in order to better discover issues. A local instance of the application can be run with a debugger attached. Malformed input can be sent to the application, tracing that input as it is processed. This is a very effective way of finding exploitable injection vulnerabilities.

### Detailed vulnerability writeups

Being able to access source code helps testers who have discovered vulnerabilities to better understand what has caused them. For example, they can identify where in the code the vulnerability has been triggered, if protections against misuse have failed or whether third party libraries are involved. They might even be able to see an easy way to fix the problem. This allows the vulnerability write-up to be much more specific and useful.

## Really? I should only use white box testing?

Yes. Assuming your testers take care with the systems they're testing, you cannot get a worse result from a white box test than from a black one.  This is because a white box test contains all of the most useful and effective parts of a black box test. The only things removed are the inefficient and inconclusive parts, which are replaced with better ways of getting the same result. There are also other useful things from the white box toolset that can be added.

The ethical hackers at the DTA perform white box testing on DTA developed systems. When we test partner systems, we also strongly prefer white box testing.

Below I have tried to address all the common objections that are raised in response to this position.

### I want the test to simulate an external attack from an ‘evil hacker’!

There is common misconception among people new to security testing that they need to simulate an attack by an ‘evil hacker’ in order to meet security needs. I disagree with this approach for a number of reasons. The first relates to understanding the difference between an attack simulation and a security test. 

An attack simulation, often referred to as a ‘red team’ exercise, is a more holistic assessment of an organisation’s security posture. This tests whether an adversary can break into your network, and what they can obtain access to. It’s also an opportunity to test backend processes. For example, how quickly your incident response processes detects the presence of an attacker, and how quickly they can be locked out. This is the ideal type of activity to run in a black box fashion as it gives realistic feedback on how prepared an organisation is to deal with an attack.

The purpose of a security test is different. The goal here is to find and fix as many technical security vulnerabilities as you can, as efficiently as possible. Attempting to ‘hide’ vulnerabilities by restricting access to information works against this goal. Remember that each test has a limited amount of time associated with it. Any time spent by the testers manually discovering things that are covered in the documentation or source is time that is NOT spent on finding vulnerabilities.

Organisations who are new to technical security assessments should carefully weigh up the pros and cons of undertaking a ‘red team’ exercise. They are a fantastic way of measuring your organisations ability to withstand attack. On the other hand they usually cost more than a simple ‘penetration test’ and require more effort to plan and perform. Some preparation on your part is also required to get full value from the process. If you red team BEFORE you have eliminated the majority of vulnerabilities in your systems via normal security testing, the red teamers will find it too easy to get in. If you red team before having an incident response team and processes in place, you can’t use the red team to test their capabilities.

The second reason I advise against a black box test in the first instance is that there are significant differences in approach between an ‘evil hacker’ and an ‘ethical hacker’ which could impact on the ability to get results.  Some of the most relevant differences are:

- an evil hacker does not need to be careful when assessing your system. They can try risky things without caring about the consequences. An ethical hacker has to be careful
- an evil hacker can spend as much time as they want trying to break into a system. An ethical hacker only has a limited amount of time to test each system
- an evil hacker finding a vulnerability in your system is bad – they will use it against you. An ethical hacker finding a vulnerability in your system is good – they will tell you about it and help fix it. In other words, you DO want ethical hackers to find vulnerabilities, so you should make it easy for them.

### We want to maintain strict control over our code/documentation/design diagrams!

While security by obscurity can be a valid defence, it’s important to remember perfect secrecy is never going to be possible. At the minimum, anyone who develops your code is going to be able to read it, that also goes for the person who administers your source code repository. If one of these people were to ‘go bad’ vulnerabilities that were ‘hidden’ by the secrecy of your source code suddenly become a lot more serious.

Ensure your source code is security reviewed before this happens.
 
So what should you do if your code/documentation/design diagrams are highly sensitive? In this instance, you should try to negotiate with your testers to find a way to securely allow access. Do so in a way that doesn’t compromise your security requirements while ensuring that the classification level is appropriate. If sensitive parts of the documentation are not relevant to testing, remove them to create a lower classified extract. Make sure the testers are appropriately cleared, and justify their ‘need to know’. 

Other things you could do?

- Put non disclosure agreements in place.
- Ensure the access is obtained from areas with appropriate physical security.
- Use IT systems certified to process information with that level of classification.
- Use encryption to reduce handling requirements during data transfer.

Remember also that security testing is by nature a trusted activity. You need to be able to trust your testers with sensitive information about your system, because this is exactly what they may discover during the course of their testing. If you can trust them with that information, why not trust them with source code?

### I’m worried about the availability of my system or the security of my sensitive data if administrative control is granted to ‘hackers’

First of all, don’t think that just because you haven’t explicitly granted those ‘hackers’ admin access, that they won’t gain it anyway during the course of testing.  Breaking security is what you essentially hired them to do, so you need to be able to trust them with privileged access to your system. If availability or the security of sensitive data is a concern, you can take steps beforehand to manage this. If you have systems that can’t go down or highly classified data, a non-production test system is a good option. This way its availability matters less, and you can populate it with sanitised data. Just make it mirror the real thing so the results are applicable.

### I don't control all of the infrastructure that my system uses

In some cases you will need to exclude some levels of access to your system in a white box test. For example, it’s unlikely that your cloud provider is going to provide security testers administrative access to its systems, so you may not be able to provide this access. This is OK, practical limitations always need to be dealt with when performing security testing. Your testers will understand. If you don’t control all your systems infrastructure make sure you inform your providers before security testing occurs. Many hosting platforms, like cloud services will have a defined process for doing this.

### My provider wants to charge more for a white box test and I want to save money

White box testing, while more efficient than black box testing, invariably involves more activities, particularly if those activities are performed to the maximum extent possible. Because pricing is based around man-hours of effort white box testing can be more expensive.

One way to get ‘white box’ results for ‘black box’ money is to time box the test. Set a similar time limit to a black box test, but provide white box information to the tester. Let the tester make the decision on how best to spend the allotted time. At a minimum, the black box information discovery tasks can be avoided and replaced with something better. The end result is that you get better testing for the same money.

This does place additional requirements on your provider. Assuming a commercial provider, they need to be flexible in their quoting and be comfortable with modifying their testing approach. Although these are not unreasonable expectations for a professional provider, so it should be possible for them to do this for you.


I hope I’ve been able to shed some light on different security testing approaches and the benefits and drawbacks associated with each.

If you found this topic interesting, you may want to check out some of the other [technology blogs](https://www.dta.gov.au/tags/technology/) we’ve published.
