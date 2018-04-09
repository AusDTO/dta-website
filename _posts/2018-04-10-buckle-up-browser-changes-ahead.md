---
title: "Buckle up, browser changes ahead"
category: [blog]
tag: 'technology'
author: Adam Eijdenberg
author-excerpt: "Adam is a site reliability engineer with our cloud.gov.au platform"
thumbnail: /images/blog-thumbnails/buckle-up-browser-changes-ahead-thumbnail.png
hero-image: /images/blog-banners/buckle-up-browser-changes-ahead-hero.png
facebook-image: /images/blog-facebook/buckle-up-browser-changes-ahead-facebook.png
searchexcerpt: Soon a popular browser will warn your website visitors if there is no secure connection backed by a valid certificate. It’s an easy fix — here’s what we did.
lede: "Soon a popular browser will warn your website visitors if there is no secure connection backed by a valid certificate. It’s an easy fix — here’s what we did."
---
<figure>
  <img src="{{ site.url }}{{ site.baseurl }}{{ page.hero-image }}" alt="A browser indicating an insecure web connection."><br />
</figure>

With the release of a new [Google Chrome](https://security.googleblog.com/2018/02/a-secure-web-is-here-to-stay.html) update in July 2018, all websites that don’t use an HTTPS connection will have the words “not secure” next to the web address. Other major browsers are expected to follow.

Recently we took a look at how our teams were managing security certificates. At the DTA we use a common platform — [cloud.gov.au](https://cloud.gov.au) — to support over [150 applications](https://cloud.gov.au/insights/) being built, tested or run by government agencies. All of them support secure HTTPS connections and actively redirect HTTP requests to the secure equivalent.

We got to thinking could we get better at how we launch sites, and issue and renew website security certificates? Having done our research, we decided on a free, open, automated and non-profit certificate authority known as [Let’s Encrypt](https://letsencrypt.org/) for all sites. Our scan of [certificate logs](https://data.gov.au/dataset/certificate-transparency) shows we’re not alone with many Commonwealth, state and territory agencies also using it.

## How did we make the choice?

### User experience

First up, all certificate authorities have to meet the same [requirements](https://cabforum.org/baseline-requirements-documents/). No matter which certificate authority we choose, there is no difference in how people experience a site.

Certificate authorities typically offer 3 products:
1. Domain validated (DV) certificates can be issued to any individual who demonstrates technical control over a site.
2. Organisation validated (OV) certificates give the same user experience as a DV certificate, with the organisation’s details included in the certificate itself.
3. Extended validation (EV) certificates need more documentation from the requester and cannot be automated.

Despite the often hefty price tag of an OV certificate, the user experience is identical to a DV certificate across the major browsers.

EV certificates can see a change in some browsers with a green “butter bar” in the web address naming the organisation. There are mixed opinions whether people notice any difference. But the deal breaker for us is that issuance of EV certificates cannot be automated.

This left us with a choice between OV and DV certificates. Since both provide the same user experience, we decided the lower-priced DV certificates were the way to go.

### Automation

Automatic issuing and renewal is an important criteria for us given we practice infrastructure as code techniques and manage many sites. We found a protocol we can use to automate how certificates are verified and issued which is the Internet Engineering Task Force’s draft Automatic Certificate Management Environment ([ACME](https://tools.ietf.org/html/draft-ietf-acme-acme-10)).

At the time of writing Let’s Encrypt is the only service that supports this relatively new protocol and we hope others will follow.

We are now able to issue new certificates within minutes for site launches and renewals have worked well for us over the last 5 months. To keep on top of things we have a daily job in our implementation that checks for certificates due to expire within 32 days and automatically renews them. We have separate black box monitoring to alert us to certificates that expire in less than 30 days.

### Easy to use

Our delivery teams shouldn’t need to be certificate experts. We want to handle this at platform level. There are many libraries and tools that support the ACME protocol. We were able to install an ACME client in our stack so that certificates are automatically provisioned, renewed, tested, deployed and served by our platform. That allows the teams hosted on our platform to focus on building their applications.

### Compatible

The Let’s Encrypt root certificate has been cross-signed by a root that is in all of the major operating systems. That ensures certificates are trusted by the browsers most people use.

### Value for money

There are more than 200 certificate authorities trusted by modern browsers which come at a range of prices. Let’s Encrypt is a free certificate authority by the non-profit Internet Security Research Group.

## What else have we learnt?

### Use the staging endpoint to make testing easier

Let’s Encrypt has rate limits in place which is something to be mindful of during testing. We came across this a few times during development and testing with some servers wanting a new certificate on each restart. The service gives us a staging endpoint to help.

### There is no lock in with vendors

There is no technical reason why we can’t hold multiple certificates from multiple vendors for the same site. In future it’s easy for us to switch to another provider if it’s more suitable.

### Domain names and certificates are public

As a result of the [Certificate Transparency](https://www.certificate-transparency.org/) project launched by Google in 2013, an increasing number of certificate authorities publicly log new certificates. This includes Let’s Encrypt who were an early adopter. As an example you can see all the [certificates issued for dta.gov.au](https://crt.sh/?q=www.dta.gov.au)

As part of our work to understand government systems, we built a [small application](https://github.com/govau/certwatch) to scan for certificates involving gov.au domains from the public logs operated by Google and others. To help others, we have published the dataset on [data.gov.au](https://data.gov.au/dataset/certificate-transparency)

### Automation reduces the need for wildcard certificates

We still have a handful of wildcard certificates for some internal facing components but automated provisioning has reduced the need for them. For those endpoints we use Amazon Certificate Manager. It  is available to us to use with an automated workflow, at no additional cost and integrates well with our existing load balancers. Since we started using their service, Let’s Encrypt have [announced](https://community.letsencrypt.org/t/acme-v2-and-wildcard-certificate-support-is-live/55579) they support automatic provisioning of wildcard certificates.

### There are other options

There are other certificate authorities organisations may like to use. While your options are largely equal in the eyes of users, the important thing is to get the functionality you need, aim for automation to avoid downtime and make sure you get value for money.

For any agencies who would like to test or run applications on our cloud.gov.au platform, read more about it and drop us a line at [support@cloud.gov.au](mailto:support@cloud.gov.au) to find out more. You can also join our regular cloud showcase to hear what colleagues are up to across the federal government by emailing [secure.cloud@digital.gov.au](mailto:secure.cloud@digital.gov.au)  
