---
title: "How can developers assist security testers?"
category: [blog]
tag: 'technology'
author: Stephen Bradshaw
author-excerpt: "Stephen Bradshaw is an Ethical Hacker at the Digital Transformation Agency."
thumbnail: /images/blog-thumbnails/blog4-Thumb.png
hero-image: /images/blog-content/blog4-Hero.png
searchexcerpt: "Security testers sometimes need a little help from their friends."
---

![]({{ site.url }}{{ site.baseurl }}{{ page.hero-image }})

*Caption: Security testers and their developers.*

Security testers don’t work in a vacuum. Their effectiveness is dependant on the actions of a number of other groups and one group whose actions have a significant impact on security testers are developers. 

This is especially true in the case of the DTA. Here security testers and developers work together more closely than is the norm. This close working relationship creates significant opportunities to gain improved outcomes through collaboration. The better each group understands each other, the better they can help each other work. And the better each group can help each other work, the better the shared outcomes they can achieve. 

## How can a developer assist security testers to do their job?

I was asked this by a developer at the DTA while discussing security testing.  At the time I hadn't really given the matter much thought. After all, this is not something developers normally ask me. So I answered in the way that many security testers in that position would, with a tongue-in-cheek comment: "Don't add vulnerabilities to your code".

After the discussion however, I realised what a rare opportunity this was. Someone wanting to know how to make my job easier? This was clearly a situation that required further thought. 

Developers can help testers by making their code more maintainable, and by getting things right the first time round to avoid having to fix problems later.

I developed this list in the fervent hope that developers everywhere will pay attention:

### Have accurate and up to date build instructions for your application

The security tester will probably be building and running a local copy of your application to test it. The less time it takes to get the application up and running, the more time we can spend actually testing it. Particular pain points that are ideal to document are: 

- Anything involving a database. Including connection strings, setup and migration scripts, and how to insert test data.
- The important configuration options for your app and where to set them.

### Make the code readable

The security tester will read the code as part of testing. The clearer and easier to follow it is, the quicker we will be able to determine if there are any security issues. Making your code readable will also make it maintainable, so there is more than one reason to do so. A full description of what makes code readable is beyond the scope of this post. It will include things such as: 

- Sensible and consistent naming of variables, methods and classes. 
- Consistency in formatting and indenting.
- Code grouping.
- Appropriate commenting. 

### If there are special interfaces or tools that you use when testing your code, let us know about them

If you find them useful, chances are that we will find them useful too. We already use a number of tools originally designed for developers to do our work.

### If you're about to make a change or add a feature that you think might have a security impact, come and talk to us about it

We may be able to point out problems and solutions with your intended approach. We may be able to suggest more secure approaches to achieve the same result. We may suggest a quick security test be performed on the final result to check for problems.  Coming to us early may save you time by ensuring you do things the secure way first time around.

### Be ready to answer questions from us when we are testing your code

I have never had any issues getting help from any of the developers I have dealt with at the DTA. I mainly mention this to make the point that this help is much appreciated and can often be a big time saver.

### Inform us of any security concerns you have while developing the application

Your “gut feel” may assist us in identifying security vulnerabilities.
 
### Validate the credibility of all third party libraries you use in the application

Consider factors such as:

- Are the authors trustworthy? Where are they located? How many of them are they? Do you even know who they are, or are they hiding behind some level of anonymity?
- Do they accept contributions from outside the group? If so, how well are those contributions vetted before inclusion?
- Are security vulnerabilities in the libraries quickly and properly addressed? Has there been a history of vulnerabilities in the library?
- How complex is the library? Do you understand how it works? Do you know all the features it offers and how to configure them?
- Is there a contact point to raise security issues with the library?
- Has the library ever had a security review performed?
- Who else uses the library? Do you think they might notice if it did something unexpected?
- Is it being actively maintained? Are any problems likely to be addressed?

### Don't add vulnerabilities to your code ;)
