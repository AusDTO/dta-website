---
title: "Building trust with certificate transparency"
category: [blog]
tag: 'digital transformation'
author: Adam Eijdenberg
author-excerpt: "Adam Eijdenberg is a site reliability engineer with cloud.gov.au at the DTA."
thumbnail: /images/blog-thumbnails/building-trust-with-certficate-transparency_thumb.png
hero-image: /images/blog-banners/building-trust-with-certficate-transparency_hero.png
facebook-image: /images/blog-facebook/building-trust-with-certficate-transparency_facebook.png
twitter-image: /images/blog-twitter/building-trust-with-certficate-transparency_twitter.png
searchexcerpt: Since the end of April 2018, most website security certificates are now being published to public logs. Why is this happening and what does it mean for your site?
redirect_from: /blog/building-trust-with-certficate-transparency/

---
<figure>
  <img src="{{ site.url }}{{ site.baseurl }}{{ page.hero-image }}" alt="Sketch of a certificate on a laptop screen"/><br />
</figure>

The push for website security certificate issuance to be transparent has been led by browsers — particularly Google Chrome — who recently [announced](https://groups.google.com/a/chromium.org/forum/#!topic/ct-policy/wHILiYf31DE) that all security certificates need to be submitted to 2 or more [transparency logs](https://www.certificate-transparency.org/known-logs) to be considered secure. This change affects all certificates issued after 30 April 2018.


## Why is this happening?

We place a lot of trust in certificate authorities — a typical phone or laptop trusts more than 200 different authorities, many operated by overseas entities. We expect those organisations to only issue secure certificates to people who demonstrate technical control over a domain. And we assume each of those authorities are correctly adhering to a common set of [baseline requirements](https://cabforum.org/about-the-baseline-requirements/).

Most of the time things run smoothly but certificate authorities can be fallible, mis-issuing certificates to people other than the appropriate site owners, which breaches trust and puts people’s data at risk. Notable incidents include the [DigiNotar](https://threatpost.com/final-report-diginotar-hack-shows-total-compromise-ca-servers-103112/77170/) attack in 2011, the [Turktrust](https://nakedsecurity.sophos.com/2013/01/08/the-turktrust-ssl-certificate-fiasco-what-happened-and-what-happens-next/) incident detected in 2012 and the [CNNIC](https://nakedsecurity.sophos.com/2015/04/14/tls-certificate-blunder-revisited-whither-china-internet-network-information-center/) incident in 2012. Some of these were due to determined hackers and others operational errors and mis-steps.

In the end, issuing certificates to the wrong person makes [man-in-the-middle](https://www.globalsign.com/en/blog/what-is-a-man-in-the-middle-attack/) attacks possible, where parties can eavesdrop or potentially tamper with communications between users and the sites they visit.

In the past, certificates were only sent to the party requesting them, which made detecting mis-issued certificates largely a matter of luck with some help from the now [superseded HTTP public key pinning](https://www.theregister.co.uk/2017/10/30/google_hpkp/). In 2013 several Google engineers [proposed a change](https://tools.ietf.org/html/rfc6962) to the certificate issuance process that required a new certificate be written to several publicly verifiable append-only log servers in order for a browser to consider it valid.

Called certificate transparency, this means that any interested party, particularly site operators, can examine the set of log servers to see all certificates and check if any are being issued without their authorisation.

While certificate transparency gives us the ability to keep a check on what’s issued, we now need a way to verify the integrity of the logs themselves. The [protocol](https://tools.ietf.org/html/rfc6962) describing the operation of certificate transparency logs includes an innovative use of [Merkle trees](https://en.wikipedia.org/wiki/Merkle_tree) to provide a cryptographic proof that a log is append-only, no entries are hidden and no data has been changed over time. Merkle trees also underpin the tamper-proof ledger in blockchain technologies, which share many of the same properties as certificate transparency logs.


## What do I need to do for my website?

Any new certificates issued after 30 April 2018 must be submitted to 2 or more certificate transparency logs in order to be considered valid. In practice, the majority of certificate authorities have already changed their issuance processes to do this for you. Most are including the necessary proof of submission (called signed certificate timestamps) as an embedded extension within the certificate returned to you. This means you don’t need to make any changes to your configuration or software when you install the new certificate in your server stack.

For more information on what a signed certificate timestamp is, and how to ensure they are present in a certificate, see [this blog post](https://letsencrypt.org/2018/04/04/sct-encoding.html) from a member of the Let’s Encrypt engineering team. If your certificate authority isn’t doing this for you, you have the option of looking for another provider. Read more about [website security certificates](https://beta.dta.gov.au/blogs/buckle-browser-changes-ahead) and how we use them in my last blog.

## What should I do if I need to run a HTTPS proxy?

Some networks choose to run corporate HTTPS proxy servers with a custom locally-signed certificate authority on user’s devices. Just like they did with HTTP public key pinning, Chrome disables certificate transparency checking when it recognises that a certificate chains to a locally trusted certificate authority.

## What else should I be aware of?

Certificate transparency means any domain names in a certificate can be discovered through public logs as soon as they are issued. That includes domains for sites that might be intended for internal use in your organisation or aren’t launched yet.

There isn’t much you can do about that, other than being aware or getting your certificate closer to the date of release. You can ask some certificate authorities to avoid logging your certificate but doing so will see Chrome mark your site as not secure, defeating the purpose of getting website security certificates in the first place.

Another interesting side-effect of this increased transparency occurs when you combine a software installer that is unauthenticated by default with automatically provisioning HTTPS certificates during installation. With certificates being submitted to logs in real-time, the risk of leaving an unauthenticated installation open is higher, allowing log observers to detect your new site before you are ready to configure it.

Some versions of WordPress were shown to be [particularly susceptible](https://media.defcon.org/DEF%20CON%2025/DEF%20CON%2025%20presentations/DEFCON-25-Hanno-Boeck-Abusing-Certificate-Transparency-Logs.pdf) to this weakness in a presentation at the DEF CON hacking conference last year. As the presenter noted, finding unauthenticated installers is not a new idea but using certificate transparency logs as a target source of new hostnames makes it much easier.

## What are the benefits of certificate transparency?

The core idea of certificate transparency is that working in the open gives a wide range of people the ability to monitor and audit logs for any certificates that aren’t issued correctly. With that transparency comes accountability. And that has never been more important given the increasing amount of trust we put into certificate authorities to keep internet connections secure.

To participate in this ecosystem, you can start monitoring public certificate transparency logs to check certificates being issued for your sites. There are a number of websites and services which make that easier and will even notify you when new certificates are detected including:

- Google’s transparency report allows you to [search for your domain](https://transparencyreport.google.com/https/certificates)
- cyber security company Comodo has a more [technical view of all certificates](https://crt.sh/)
- software company Cali Dog Security has a [live stream API for new certificates](https://certstream.calidog.io/)

To build our understanding of government systems, we’ve set up a [small application](https://github.com/govau/certwatch) to watch for new certificates with gov.au domain names. That is updated in real time to a [certificate transparency dataset](https://data.gov.au/dataset/certificate-transparency), which you can download or query on [data.gov.au](https://data.gov.au/), the home for public data from Australian governments.
