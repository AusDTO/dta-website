# Digital Transformation Agency's website

[![CircleCI](https://circleci.com/gh/AusDTO/dta-website.svg?style=svg&circle-token=2bcec14fa84e7b927e3e048f8448bc3c4f91674d)](https://circleci.com/gh/AusDTO/dta-website)
[![Stories in Ready](https://badge.waffle.io/AusDTO/dta-website.png?label=ready&title=Ready)](https://waffle.io/AusDTO/dta-website)

www.dta.gov.au is a [Jekyll website](http://jekyllrb.com/).


## Installation

**Ensure you have the pre-requisites installed:**

- [Ruby 2.3.1](https://www.ruby-lang.org/en/documentation/installation/)
- [rbenv](https://github.com/rbenv/rbenv)
- [Bundler](http://bundler.io/)

Run each of the following commands to get the site running locally:

1. `git clone git@github.com:AusDTO/dta-website.git`
2. `cd dta-website`
3. `bundle install`
4. `bundle exec jekyll serve`

You should be able to see the site at: http://127.0.0.1:4000

To increase the speed of jekyll builds, you can replace the last step with `bin/serve`. This will disable the search plugin and only render the latest post.

## Development Process

The `develop` branch is continuously deployed by circleCI to https://dta.apps.staging.digital.gov.au/

The `master` branch is continuously deployed by circleCI to https://www.dta.gov.au/

When starting a new change, create a branch from the `develop` branch.

To test that branch out you can push to cloud.gov.au before commiting to git. Refer to the [cloud.gov.au documentation](http://docs.cloud.gov.au/) to setup `cf` if needed.

Run each of the following commands to deploy your local site to cloud.gov.au:

1. `bundle exec jekyll build`
2. `cf push branchname` # assumes you are logged into the staging platform.

Remember to delete unused apps when you are done:

`cf delete branchname`

When your change is ready, submit a PR to the `develop` branch.

When ready for a production deploy, merge the `develop` branch to `master`. You can do this through Github [with a PR](https://github.com/AusDTO/dta-website/compare/master...develop) or from the command line:

* `git checkout master`
* `⁠git pull`
* `git merge --no-ff develop`
* `git push origin master`

## cloud.gov.au details

### staging

* **api**: https://api.system.staging.digital.gov.au
* **org**: dta
* **space**: website
* **circle user**: dtacircleci

### production

* **api**: https://api.system.platform.digital.gov.au
* **org**: dta
* **space**: website
* **circle user**: dtacircleci
* has a cloudfront distribution under the parent DTO AWS account
* cloudfront is logging to an S3 bucket in the parent DTO AWS account
  * `dta-site-cdn-logs`
* uses AWS Route53 for dns under the parent DTO AWS account

## Setting up CircleCI

* go to circleci in the browser and authorize with Github.
* follow your new github repo
* add the following environment variables via the circleci UI

```
CF_PROD_API
CF_STAGING_API

CF_USER
CF_PASSWORD
CF_ORG
CF_SPACE

CF_BASIC_AUTH_USERNAME  [optional]
CF_BASIC_AUTH_PASSWORD  [optional]
```
