# dta-website

[![CircleCI](https://circleci.com/gh/AusDTO/dta-website.svg?style=svg&circle-token=2bcec14fa84e7b927e3e048f8448bc3c4f91674d)](https://circleci.com/gh/AusDTO/dta-website)


## Setting up CircleCI

* go to circleci in the browser and authorize with Github.
* follow your new github repo
* add the following environment variables via the circleci UI

```
CF_PROD_API
CF_PROD_USER
CF_PROD_PASSWORD
CF_PROD_ORG
CF_PROD_SPACE

CF_STAGING_API
CF_STAGING_USER
CF_STAGING_PASSWORD
CF_STAGING_ORG
CF_STAGING_SPACE

CF_BASIC_AUTH_USERNAME  [optional]
CF_BASIC_AUTH_PASSWORD  [optional]
```

