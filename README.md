# dta-website

[![CircleCI](https://circleci.com/gh/AusDTO/dta-website.svg?style=svg&circle-token=2bcec14fa84e7b927e3e048f8448bc3c4f91674d)](https://circleci.com/gh/AusDTO/dta-website)
[![Stories in Ready](https://badge.waffle.io/AusDTO/dta-website.png?label=ready&title=Ready)](https://waffle.io/AusDTO/dta-website)

## Development

### Setup

DTA.GOV.AU is a [Jekyll website](http://jekyllrb.com/). You will need to have [rbenv](https://github.com/rbenv/rbenv) installed to manage Ruby and RubyGems.

Setup dta.gov.au locally

```
git clone git@github.com:AusDTO/dta-website.git
cd dta-website
gem install bundler
bundle install
```

Launch dta.gov.au locally

```
bundle exec jekyll serve --watch
```

You should be able to see the site at: http://127.0.0.1:4000

## Hacking on Content

Create a branch from the `develop` branch.  

To test that branch out you can push to cloud.gov.au before commiting to git.

`cf push branchname` # assumes you are logged into the staging platform.

Remember to delete unused apps:

`cf delete branchname`

When your change is ready, submit a PR to the `develop` branch.
The develop branch is continuously deployed to https://dta.apps.staging.digital.gov.au/
The master branch is continuously deployed to https://www.dta.gov.au/

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
