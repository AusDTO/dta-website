# Digital Transformation Agency's website

[![CircleCI](https://circleci.com/gh/AusDTO/dta-website.svg?style=svg&circle-token=2bcec14fa84e7b927e3e048f8448bc3c4f91674d)](https://circleci.com/gh/AusDTO/dta-website)
[![Stories in Ready](https://badge.waffle.io/AusDTO/dta-website.png?label=ready&title=Ready)](https://waffle.io/AusDTO/dta-website)
[![Code Climate](https://codeclimate.com/github/AusDTO/dta-website/badges/gpa.svg)](https://codeclimate.com/github/AusDTO/dta-website)

www.dta.gov.au is a [Jekyll website](http://jekyllrb.com/).

## Installation

**Ensure you have the pre-requisites installed:**

- [Ruby 2.3.3](https://www.ruby-lang.org/en/documentation/installation/)
- [rbenv](https://github.com/rbenv/rbenv)
- [Bundler](http://bundler.io/)
- [Node.js](https://nodejs.org) (For pa11y tests)

Run each of the following commands to get the site running locally:

1. `git clone git@github.com:AusDTO/dta-website.git`
2. `cd dta-website`
3. `bundle install`
4. `bundle exec jekyll serve`

You should be able to see the site at: http://127.0.0.1:4000

To increase the speed of jekyll builds, you can replace the last step with `bin/servefast.sh`. This will disable the search plugin and only render the latest post.

### Run tests locally

Run the tests with:

`bin/citest.sh`

### Test external links

External links are not tested as part of CI in `bin/citest.sh` to keep test results reproducible.

You can separately test external links with:

`bin/checkexternal.sh`

### Test accessibility

The site can be tested for accessibility using pa11y.

Install pa11y-ci and it's dependencies with:

1. `npm install -g phantomjs-prebuilt`
2. `npm install pa11y-ci@^0.4`
 
You can then run the test with: 

`bin/checkaccessibility.sh`

## Development Process

Issues are tracked on GitHub and are best viewed using [waffle](https://waffle.io/AusDTO/dta-website).

The default branch is `develop` which is continuously deployed by circleCI to https://dta.apps.staging.digital.gov.au/

The production branch is `master` which is continuously deployed by circleCI to https://www.dta.gov.au/

When starting a new change, branch from `develop`.

If needed a branch can be continuously deployed by circleCI to a staging site at https://dta-website-branchname.apps.staging.digital.gov.au/. As long as the circleCI tests are passing, this staging site will be kept up to date with all commits to the branch. To start continuously deploying a branch, add the branch name to `DEPLOY_BRANCHES` in `bin/buildrc`. We have a quota for the number of running apps, so when you are finished you should remove the branch from `DEPLOY_BRANCHES` and delete the app by running `cf delete dta-website-<branchname>`.

When your change is ready, submit a PR to the `develop` branch. After the PR is merged, it will be deployed to [staging](https://dta.apps.staging.digital.gov.au/).

When ready for a production deploy, merge the `develop` branch to `master`. You can do this through Github [with a PR](https://github.com/AusDTO/dta-website/compare/master...develop) or from the command line:

* `git checkout master`
* `⁠git pull`
* `git merge --no-ff develop`
* `git push origin master`

## Working with embargoed content

The [dta-website repository is public](https://www.dta.gov.au/standard/8-make-source-code-open/). All content including drafts is publicly accessible. 

If you need to draft content which is embargoed, you need to use the [private repository](https://github.com/AusDTO/dta-website-private).
  
You should keep the content on a new branch, i.e. do NOT merge to `develop` or `master`.

When the content is ready to be published and approved for release, the content needs to first be merged into a branch in the [public repository](https://github.com/AusDTO/dta-website).
 
This must be done on the command line:
 
* `git clone git@github.com:AusDTO/dta-website.git`
* `cd dta-website`
* `git remote add private git@github.com:AusDTO/dta-website-private.git`
* `git fetch private`
* `git checkout private/branchname`
* `git checkout -b branchname`
* `git rebase -i origin/develop` # squash any commits if required
* `git push origin` # pushes the branch to the public repository

The branch can now be worked on in the [public repository](https://github.com/AusDTO/dta-website) and merged via a PR to `develop` as normal.

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
