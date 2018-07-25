---
title: "Using data to make investigations safer for AFP staff"
category: [blog]
tag: 'digital transformation'
author: Janis Dalins
author-excerpt: "Federal Agent Janis Dalins is a Senior Digital Forensic Examiner at the Australian Federal Police."
thumbnail: /images/blog-thumbnails/afp-guest-blog_thumb.jpg
hero-image: /images/blog-banners/afp-guest-blog_hero.jpg
searchexcerpt: Investigating crimes that have electronic evidence means looking through lots of data, including images.

---
<figure>
  <img src="{{ site.url }}{{ site.baseurl }}{{ page.hero-image }}" alt="Diagram showing the image classification process."/><br />
</figure>

For the investigators of the Australian Federal Police (AFP) this can mean looking at thousands of photographs so that the content can be identified and categorised. This includes child exploitation and extremist materials.

It’s difficult work and can take a serious toll on AFP staff.

Using computers to check and classify images is one way to reduce the exposure of staff to this material. Exploitation images are widely shared and will often be seen in multiple cases. If an image has already been seen, identified and classified for one case, it doesn’t need to be viewed again.

## Cryptographic versus perceptual hashes

Cryptographic hashes are algorithms that can be run on data to check if it’s been seen before. This is the most common approach for law enforcement when it comes to checking and classifying images (using MD5 and SHA-1).

Whilst fast and reliable, cryptographic hash algorithms rely on the data in an image, rather than the content. Any minor change to the photograph, even imperceptible to the human eye, can make an image effectively unrecognisable using this system. This means if an image has been slightly cropped, or the colour slightly altered, the image’s data is changed and it can appear to a computer as a different image.

In contrast, perceptual hash algorithms look for similarities between the content of images. By their nature they are far more computationally expensive than checks for identical data. Two images are either identical or not, but consider how many ways images can be similar!

The biggest limitation of both perceptual and cryptographic hashes is they are unable to examine a previously unseen photograph and identify its content, without having a previously classified image to compare it to.

## From an initial idea to a new approach

This was the starting point for my work as a Data Fellow. I wanted to improve the performance of existing cryptographic and perceptual hashing methods – in plain English, to speed up the process of identifying images through their content rather than their technical attributes.

During my initial pitch to Data61 researchers, it became clear my idea and approach were possible, but would need an unaffordable level of infrastructure, and would not improve the limitations around previously unseen materials.

A few people at Data61 suggested using deep learning networks (a type of machine learning) as an alternate approach. To (over)simplify, this involves designing a network and then showing it large quantities of sample images – tens if not hundreds of thousands of photographs – to teach it visual concepts rather than technical attributes.

## Creating the prototype

The Data Fellowship is similar to postgraduate research – you get a desk and IT support in an office, but ultimately it’s up to you to engage with the wide range of subject matter experts sitting nearby.

The mathematics behind deep learning networks is incredibly complex. Fortunately, Dr Yuriy Tyshetskiy, a senior data scientist at Data61, volunteered to help me out with the project.

Dr Tyshetskiy helped me design and implement a prototype image classifier using open source machine learning frameworks including Google’s [TensorFlow](https://www.tensorflow.org/). Over the course of the next 6 months we worked together to gradually improve its performance.

The prototype is currently being developed for use as an early warning system. During an investigation, the prototype analyses materials and, if they are considered to be extreme or exploitative images, the reviewer can be warned.

Importantly, the classifier works with the existing software and systems investigators use. It complements how they already work so they don’t need to change their processes.

## Onwards and upwards

The prototype has now been tested on live operations with extremely positive results. The process we went through also helped identify gaps in the research and application of emerging technologies to identify offensive materials. For example, there is no legally independent common language for labelling images, making international collaboration and objective comparison difficult.

Our findings led directly to further research that has since been peer reviewed and [published](https://www.sciencedirect.com/science/article/pii/S1742287618301555). It has also led to further collaboration with Data61 through the construction of a “data airlock”.

This is a service designed to manage legal and ethical restrictions in the field by providing trusted research and industry partners with indirect access to offensive materials on which they can develop and test deep learning based tools.

This has all resulted from my [Data Fellowship](https://beta.dta.gov.au/node/320). As a fellow I had the time and support to create a sustainable foundation for the automation of image classification within law enforcement.  It also provided the first steps in providing a safer place for members of the AFP to work.
