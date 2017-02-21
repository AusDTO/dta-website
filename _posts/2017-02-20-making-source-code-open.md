---
title: "Making source code open"
category: blog
tags: technology
author: Alastair Parker
author-excerpt: "Alastair Parker is an architect at the Digital Transformation Agency."
thumbnail: /images/blog-thumbnails/git-branch-thumb.png
hero-image: /images/blog-content/github-screenshot-content.png
searchexcerpt: "Deciding whether or not something should be made open source can be a tricky decision. Firstly, knowing what you're trying to achieve, and then understanding how you can get there, will make the decision a little easier. Here are three options to consider: collaborative open source, open source and closed source."
---

![Screenshot of the dto-digitalmarketplace-buyer-frontend repository on GitHub]({{site.url}}{{site.baseurl}}{{page.hero-image}}){:class="shadow"}

*Caption: This image shows contributions to the DTA’s open source Digital Marketplace from the UK’s Government Digital Service and people in the community.*

## Collaborative open source code

### What is it?

Equal parts product, community and collaboration. It might have started off as only your project but it's much more than that now. The community might now be dependent on this code.

### Why would I?

You have made something that solves your problems, and you know it will solve other people's as well. There are features you want implemented but you don't have the time.

### How do I?

It can be a lot of work, but it will pay off when you start getting features implemented for free by others. Before anyone else starts helping out, you’ll have to make it easy for them.

There aren't any hard and fast rules, but there is a good chance you’ll want to have:
- **great developer documentation:** remember that people will be contributing because they want to not because they have to. Write the kind of documentation you would want to read.
- **automated tests:** nobody likes integrating with code that doesn't work. Unless you want to spend all your time debugging, you will want people to write tests for their own code.
- **clear and simple structure:** your project should be well laid out with well named packages and classes. Your code should be easy to read and clear about what it is doing and why. Nobody cares how clever you are and how much you can achieve with a single line of code. Aim for 10 lines per method.
- **well structured code:** your code should be in standalone parts that are reusable on their own. Make it easy for people to reuse the bits they want without having to pull apart everything you've done.
- **contribution guidelines:** tell your contributors how you want things done and what can they do to maximise the chances of you accepting their new code. There are guidelines out there that can help you. [Here is an example from GitHub](https://help.github.com/articles/setting-guidelines-for-repository-contributors/).

### Anything else?

You will need to dedicate some time to growing and nurturing your community. Questions will need answering, issues will need filing, releases will need releasing. Always keep in mind that this is now bigger than you and your team, and you might not always have total control of what happens. We're all in this together. Anything we can do to reuse code and minimise costs to the community is worth any extra effort.

Let us know if you take this direction. We would love to see what you've done. We might even contribute.

## Open source

### What is it?

Code that is available to others, but you aren't helping them use or improve it. It isn't bad code, but you haven't gone the extra mile to make it collaborative.

Maybe you’ve started something that others will be able to expand upon and reuse? Maybe it will inspire others about new ways they can solve their own problems? You never know, someone might have been struggling with exactly the same thing!

**Making your code open source is not giving away user data.**

[Criterion 8](https://www.dta.gov.au/standard/8-make-source-code-open/) of the [Digital Service Standard](https://www.dta.gov.au/standard/) tells teams to be open by default, but this can be difficult for some teams. First timers can be unsure about what extra work going 'open source' will mean. Others feel that their code shouldn't be open source because nobody else would want it. I've also heard that code can not be open sourced because of security reasons. These are all important considerations for teams.

If you have secrets littered through your closed source code, someone will eventually find them. Anyone who views your site has access to your HTML and javascript at the click of a button. It's not as simple for mobile and desktop apps, but still very achievable. [Industry best practice](https://12factor.net/) tells us to separate our code from the secrets it uses. If you haven’t done this, it’s unlikely you’ll meet criterion 5 of the Digital Service Standard: [Make it secure](https://www.dta.gov.au/standard/5-make-it-secure/).

### Why would I?

Government code should be available to others unless there is a compelling reason. Everyone in the public service benefits from being able to reuse code that others have developed. We all work for the taxpayer and they should be able to see and use what they've paid for.

### How do I?

Start today! Sign your department up to an online open source community and add your product. We use [GitHub](https://github.com/ausdto) but you can use whatever works for you and your department.

We have a [guide about sharing code](https://www.dta.gov.au/standard/design-guides/code-sharing/) that will give you more information about how to make your code open.
At some point in your journey you will need to pick an open source license for your code.  The [Choose a License website](https://choosealicense.com/) is a good resource to get you started on the different types of licences available. They can be a little hard to read, so seek legal advice on the licenses if you're unsure.

If you're struggling to get started, let us know! We're happy to give you a hand.

### Anything else?

Try to find some time to make your work easier for others to reuse and contribute to. If nothing else, it will help the people who take over maintaining what you're working on.

## Closed source

### What is it?

Pretty much exactly what it sounds like. The source code is only available to the authors and a select few within their agency.

### Why would I?

Once teams understand more about what open source is, and isn’t, they find they don't usually have any reason not to be open. However, it is common for teams to be concerned about security.

Security is a very valid reason, but you shouldn't use it as an excuse to close everything. Keeping passwords and keys private helps to keep our user's data private and secure. Not only is it good practice, it's part of the obligation we have in serving the public. Code that doesn't contain these secrets can be shared and reused by others.

There are lots of examples of world class security products that are open source. Talk with your department's [ITSA](http://www.asd.gov.au/publications/Information_Security_Manual_2016_Controls.pdf) (Information Technology Security Advisor) for specific advice.

Many private sector organisations close their code to maintain control of their brand and their user experience, in government, we don’t have those issues.

### How do I?

Simple. Keep doing what you are already doing. **But remember:** having closed source code doesn't mean you can get lazy. People will still need to read and update your code, it could be around for a long, long time. Take pride in your work and code like the world is watching.

### Anything else?

Have a careful think if there are any parts of your code that might be useful to others. The code doesn't have to come from your primary product. Tools and utilities you've written might be useful for others in similar circumstances.

If you can't find any code to make available to others, see if you can offer products as open services instead. At least that way government won't have to reinvent the wheel.

If you’d like some help or just to get in touch, leave us a comment below.
