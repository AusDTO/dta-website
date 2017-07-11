---
layout: guide
title: Performance testing
permalink: /standard/design-guides/performance-testing/
lede: Testing services across common platforms and devices
topic_group:
- Website design and development
topic:
- Website development
---
This provides general guidance on the technical process of testing of your service across devices. There is also guidance available on usability testing and user research.

## Why must I?

Government services should be universally accessible, regardless of how the user is choosing to access them. That’s why it’s crucial to verify that your service works for users across a representative range of browsers and devices.

## How do I?

*   [Decide which browsers and OS to test](#decide)
*   [Use a representative sample of users](#use)
*   [Test end to end](#test)
*   [Consider other kinds of testing](#consider)

### <a id="decide" name="decide"></a>Decide which browsers and OS to test

While it is not practical to test your website or service against all possible configurations of browser, device and operating system (OS), you should test against the most common combinations.

For existing services that are being improved, identifying the browsers, devices and OSs you should test is usually as easy as looking at your website analytics. Most analytics tools allow you to see which browsers, devices and operating systems being used to access your site. If you have built your service with web standards in mind, it will give it the best possible chance of working across all devices.

For new services (and for verification of existing service analytics), you should check broader usage statistics through services such as [Market Share Statistics for Internet Technologies](http://marketshare.hitslink.com/) and [StatCounter Global Stats](http://gs.statcounter.com/).

### Sample model for browser and OS support

*   Actively test the most common browsers so that your solution is proven to display and function correctly for around 90% of users. The browsers are tested on their most popular OS platforms, for example Internet Explorer on Microsoft Windows 7, Safari on Mac OS X 10.x.
*   Support (including fixing production defects), but not actively test, any additional browser/OS combination used by more than 2% of users. Accept there may be cosmetic (for example font size and spacing) issues for this group.

#### Example active testing and support matrix - desktop
<div class="horizontal-scroll-table-container">
<table class="content-table">
  <thead>
    <tr>
      <th>Browser</th>
      <th>Windows 7</th>
      <th>Windows XP</th>
      <th>Linux</th>
      <th>Mac OS X 10.x</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>22.79% - Internet Explorer 11.0</td>
      <td>Test and support</td>
      <td>Support</td>
      <td>Support</td>
      <td> </td>
    </tr>
    <tr>
      <td>19.08% - Internet Explorer 8.0</td>
      <td>Support</td>
      <td>Support</td>
      <td>Test and support</td>
      <td> </td>
    </tr>
    <tr>
      <td>15.10% - Chrome 40</td>
      <td> </td>
      <td> </td>
      <td>Test and support</td>
      <td> </td>
    </tr>
    <tr>
      <td>8.43% - Firefox 35</td>
      <td>Test and support</td>
      <td>Support</td>
      <td>Test and support</td>
      <td>Support</td>
    </tr>
    <tr>
      <td>8.03% - Internet Explorer 9.0</td>
      <td>Support</td>
      <td>Support</td>
      <td>Support</td>
      <td>Support</td>
    </tr>
    <tr>
      <td>5.43% - Internet Explorer 10.0</td>
      <td>Test and support</td>
      <td>Support</td>
      <td>Test and support</td>
      <td>Test and support</td>
    </tr>
    <tr>
      <td>2.65% - Chrome 36</td>
      <td>Test and support</td>
      <td>Support</td>
      <td>Support</td>
      <td> </td>
    </tr>
    <tr>
      <td>2.32% - Safari 8.0</td>
      <td>Test and support</td>
      <td>Support</td>
      <td>Support</td>
      <td> </td>
    </tr>
    <tr>
      <td>1.31% - Internet Explorer 6.0</td>
      <td>Test and support</td>
      <td>Support</td>
      <td> </td>
      <td>Support</td>
    </tr>
  </tbody>
</table>
</div>

<h4 id="example-active-testing-and-support-matrix---mobile-access">Example active testing and support matrix - mobile access</h4>

<div class="horizontal-scroll-table-container">
<table class="content-table">
  <thead>
    <tr>
      <th>Browser</th>
      <th>iOS</th>
      <th>Android</th>
      <th>Blackberry</th>
      <th>Symbian</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>21.66% - Safari 8.0</td>
      <td>Test and support</td>
      <td>Support</td>
      <td>Support</td>
      <td> </td>
    </tr>
    <tr>
      <td>14.54% - Android Browser 4.0</td>
      <td>Support</td>
      <td>Support</td>
      <td>Test and support</td>
      <td> </td>
    </tr>
    <tr>
      <td>11.75% - Chrome 40</td>
      <td>Test and support</td>
      <td> </td>
      <td> </td>
      <td> </td>
    </tr>
    <tr>
      <td>8.69% - Safari 7.0</td>
      <td>Test and support</td>
      <td>Support</td>
      <td>Test and support</td>
      <td>Support</td>
    </tr>
    <tr>
      <td>6.32% - Safari 600</td>
      <td>Support</td>
      <td>Support</td>
      <td>Support</td>
      <td>Support</td>
    </tr>
    <tr>
      <td>4.29% - Chrome 28</td>
      <td>Test and support</td>
      <td>Support</td>
      <td>Test and support</td>
      <td>Test and support</td>
    </tr>
    <tr>
      <td>2.86% - Chrome 30</td>
      <td>Test and support</td>
      <td>Support</td>
      <td>Support</td>
      <td> </td>
    </tr>
    <tr>
      <td>2.36% - Opera Mini 7.5</td>
      <td>Test and support</td>
      <td>Support</td>
      <td>Support</td>
      <td> </td>
    </tr>
    <tr>
      <td>1.98% - Chrome 39</td>
      <td>Test and support</td>
      <td>Support</td>
      <td>Support</td>
      <td> </td>
    </tr>
  </tbody>
</table>
</div>

You might also decide to support the latest stable version of each browser plus a single version back, or test against any browsers currently supported by each vendor. Be aware that you may have to make an exception if a significant portion of your user base is using an unsupported browser.

> Remember that browser and OS usage on mobile devices will be very different to desktop so ensure you test against the most common desktop and mobile combinations.

Whatever combinations you decide, you should publish the fully supported browsers on your website.

### <a id="use" name="use"></a>Use a representative sample of users

Using a representative sample of users to test your website or service helps ensures it will meet user needs when it goes live.

It is vital to recruit participants who are as similar to your intended site users as possible. Depending on the website or service, you may have multiple potential users groups. Try to include representatives of all these groups or, optimally, perform testing with each group separately. This allows you to really concentrate on role-based information or functionality.

Representative samples need not be a large number; [as few as 5 users](https://www.nngroup.com/articles/how-many-test-users/) can be used to identify major usability problems. This number will increase depending on the method of testing or research so use the minimum appropriate number. The key is to test often.

Testers should represent the intended users of the site. Agencies will need to select testers according to specific profiles to ensure a realistic match between testers and real users. Testers should be impartial; that is, not involved in the development of the website and need not have particular expertise in using the web resources. Users who have no knowledge of the resource are generally much more likely to reveal useful information than users who are familiar with the resource.

It may be appropriate to provide testers from outside the agency, or outside the Australian Public Service, with a small payment as an incentive to participate.

When using crowdsourcing to test a website or service, you should ensure that users tell you what device, OS and browser version they were using when they were testing. This will help you to replicate issues and fix them.

You should ensure that there is an obvious way for users to report problems they find. Additional testing and adjustments should be made upon receiving such a report.

### <a id="test" name="test"></a>Test end to end

Testing your website and services in an environment that is as close as possible to your live environment and final version is essential. A website or service may pass all tests in a lower environment, however it may be exposed if the live environment is different to the one in which testing took place.

You should have multiple environments to deploy to. At the very least, you should have a development environment running the latest version of the software, and a production environment being used by real users. You may also have other environments dedicated to exploratory testing, user testing, performance testing or a staging environment prior to production.

Environments below live (or production) environments are called a number of things, including pre-production, staging, UAT (user acceptance testing) or simply test.

The environments should be ordered so that a version of the software cannot be deployed to a later environment before it’s been deployed and tested in an earlier stage. That way, the software cannot be deployed to production without having been tested in every previous environment first.

This does not need to be a strict linear ordering. Some sets of tests may be run in parallel, such as user acceptance testing and performance testing. However there is very often one single production environment which is later than all others, and one single entry point which precedes all others.

Building and maintaining a test environment that is identical to your live environment may involve significant costs for agencies. The investment will, however, help ensure problems are identified before a live release and reduce costs of fixing problems post go-live.

### <a id="consider" name="consider"></a>Consider other kinds of testing

While usability testing is predominantly used to test websites and services with users, there are a number of other forms of testing that agencies should be aware of and use if appropriate.

*   **Expert evaluation:** the system or website is evaluated by a person skilled in usability and user interface design. The expert role-plays less-expert users in order to identify potential usability problems (based the expert’s knowledge of design principles, standards and ergonomics).
*   **Heuristic review:** usability is evaluated by inspecting the user interface and assessing it against a set of usability design principles.
*   <a id="popup" name="popup"></a>**Pop up user reserach**: (often known as 'guerrilla testing') is a low cost method of user research. The term ‘pop up’ refers to the fact that it can be conducted anywhere where there is significant footfall rather than in a controlled lab environment.
*   **Accessibility testing:** accessibility testing is very similar to usability testing, in that it’s about making sure a product or service is easy for its intended audience to use. It involves meeting the Australian Government’s minimum accessibility standards.
*   **Code testing:** essentially making sure that code does what it’s supposed to.
*   **Load and performance testing:** ensuring that systems and applications are highly efficient and can deal with expected (and unexpected) levels of traffic.
*   **Vulnerability and penetration testing:** analysing and testing a service for security problems. This is often a specialist activity done via a third party.

Qualitative research techniques, such as surveys and analysis of website statistics are also used to support testing.

_This content has been adapted from the UK Government Digital Service Design Manual guides on:_

*   _[An introduction to user research techniques](https://www.gov.uk/service-manual/user-centred-design/user-research/index.html)_
*   _​[Exploratory testing](https://www.gov.uk/service-manual/making-software/exploratory-testing.html)_
*   _​[Load and performance testing](https://www.gov.uk/service-manual/operations/load-and-performance-testing.html)_
*   _[Testing code](https://www.gov.uk/service-manual/making-software/code-testing.html)_
*   _[Testing in an agile environment](https://www.gov.uk/service-manual/making-software/testing-in-agile.html)_
*   _[Vulnerability and penetration testing](https://www.gov.uk/service-manual/operations/penetration-testing.html)_

_[​​](https://www.gov.uk/service-manual/operations/penetration-testing.html)under the [Open Government Licence v2.0](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/2)._

**Last updated:**  24 June 2016
