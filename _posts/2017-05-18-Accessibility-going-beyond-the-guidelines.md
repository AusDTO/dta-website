---
title: "Accessibility - going beyond the guidelines"
category: [blog]
tag: 'technology'
author: Jonathan Conway
author-excerpt: "Front End Developer "
thumbnail: /images/blog-thumbnails/Privacy-by-design.png
searchexcerpt: "Standards such as the Web Content Accessibility Guidelines (WCAG) are useful tools for building accessible platforms. However, at the DTA, we have been going beyond the guidelines, by ensuring all multidisciplinary team members take responsibility for accessibility. This blog gives some insight into how we create accessible products at the DTA."
---

## Accessibility is everyone’s responsibility

We make the accessibility of our products and services the responsibility of each team member. Whether you are a developer, a researcher or a delivery manager, everyone needs to be thinking about accessibility when they do their work. This ensures that products are accessible from the start, and don’t need to be retrofitted with accessible features. 

## User research is a team sport

Going out and researching how diverse users interact with government services online has given us invaluable insights into accessibility. Through conversations with users, and, by observing where and how they use services – their location, physical space and assistive technology – we build empathy and gain a greater understanding of what accessibility means for them.

User research isn’t just for researchers – all disciplines should participate. At the DTA, designers and developers regularly attend user research sessions with diverse users. In these sessions they can see first-hand how, for example, a blind person or someone from a non-English-speaking background interacts with what they’ve built. By listening, asking questions and observing, they gain an understanding of people’s unique challenges. They can then incorporate this understanding into their work.

In one particular project where we spoke to vision impaired users, we found they often relied on online services due to their limited mobility. They embraced, but equally often struggled with, technology. Users were highly proficient with certain assistive technologies, such as screen-readers, braille-readers and even specially designed, lo-fi equipment such as a cardboard document scanners. However, they also found technology frustrating and challenging. For example, web forms were sometimes difficult to navigate, with certain elements being skipped over and pop-ups appearing that the user wasn’t aware of.

These learnings were then incorporated back into the service design and development cycle. We began to rethink our designs to support the needs of these users. For example, we looked at adjusting page elements and features to prepare the user for the upcoming task. 

## Accessible design

Accessibility has been a focus for all designers across the DTA. We regularly hold ‘clinics’ where visual and content designers can bring their accessibility challenges. These are then discussed and insights are shared across teams. 

Some recent examples of accessibility challenges brought to the clinics include:
  - use of colour and contrast so that content is clear and legible for colour-blind and low-vision individuals
  - display of focus states using clear visual indicators
  - handling of form errors and validation in a clear, consistent manner

We apply findings from clinics, as well as accessibility research, guidelines and best practices, to the UI Kit, our common pattern library. By doing so, we can work toward consistent and accessible design across all government services.

## Accessible technology

When it comes to delivering web content and designs, simple and clear usually work best. For us this means writing well structured, minimal HTML, separating style from content and clearly communicating context changes visually and semantically.

We run a basic 3-step accessibility test on all screens. They are:

1. **Accessibility checker**. Run a checker, such as [WAVE](http://wave.webaim.org/). This will quickly pick up very basic errors, such as incorrect heading structure.
2. **Keyboard only**. Push the mouse away and try to operate the screen. You should be able to navigate with the keyboard only. 
3. **Screen-reader only**. Turn on a screen-reader such as NVDA or VoiceOver and turn off the screen (or look away). All essential content should be read out and you should be able to navigate the screen.

This approach won’t cover all cases, but if used consistently, it will ensure at least a very basic level of accessibility throughout an application.

We also run some of our applications through automated accessibility testing tools, such as [WebAxe](http://www.webaxe.org/color-contrast-tools/). These tools flag accessibility issues, such as insufficient colour contrast.

We take our solution to diverse users and test using their own software and technology (including assistive technology). This helps us to better understand how the user’s technological setup, such as screen reader settings, may impact our solution.

## Our culture

If everything we build needs to be accessible, accessibility needs to be part of our culture. 

This means talking about accessibility right from the start and including it in the conversation throughout the course of developing a service.

It means utilising the expertise of experienced accessibility consultants – bringing them into our planning meetings and design clinics and working with them as part of our product teams.

It also means making accessibility a priority for all disciplines involved in delivering a service. From doing research with users with diverse needs, to designing and writing for accessibility, to making technology work for everyone, accessibility cuts across multiple disciplines.

## This is for everyone

Finally, at the DTA, we like to say: “solve for one, extend to many”. 

Better accessibility benefits everyone, not just those who need it today. Laying an accessible foundation today will help others who may be affected by an impairment in the future, which is a striking majority of people.

Making services accessible to all people, regardless of their physical, sensory or cognitive way of functioning, is crucial to meeting their needs in a way that works for them.

------------------

Check out the [Web Content Accessibility Guidelines](https://www.w3.org/WAI/intro/wcag) for how you can ensure you your websites and online services are accessible. 
