#!/usr/bin/env bash

# Exit immediately if there is an error
set -e

# cause a pipeline (for example, curl -s http://sipb.mit.edu/ | grep foo) to produce a failure return code if any command errors not just the last command of the pipeline.
set -o pipefail

# Include build env vars
source "$(dirname "$0")/buildrc"

# setup basic auth on the container
basicauth() {
  if [[ -n ${CF_BASIC_AUTH_PASSWORD+x} ]]
  then
    htpasswd -cb _site/Staticfile.auth $CF_BASIC_AUTH_USERNAME $CF_BASIC_AUTH_PASSWORD
  else
    echo "Not setting a password."
  fi
}

# Exit if we are not the public repo
checkrepo() {
  if [[ "${CIRCLE_PROJECT_REPONAME}" != "dta-website" ]]
  then
    echo "I will not deploy this repo"
    exit 0
  fi
}

# We dont need to deploy the pa11y-sitemap.xml
rm -f _site/pa11y-sitemap.xml

# main script function
#
main() {
  case "${GITBRANCH}" in
    master)
      checkrepo
      cf api $CF_PROD_API
      cf auth $CF_USER $CF_PASSWORD
      cf target -o $CF_ORG
      cf target -s $CF_SPACE
      cf push -f manifest-production.yml
      ;;
    develop)
      checkrepo
      basicauth
      cf api $CF_STAGING_API
      cf auth $CF_USER $CF_PASSWORD
      cf target -o $CF_ORG
      cf target -s $CF_SPACE
      cf push -f manifest-develop.yml
      ;;
    ${DEPLOY_BRANCHES})
      basicauth
      cf api $CF_STAGING_API
      cf auth $CF_USER $CF_PASSWORD
      cf target -o $CF_ORG
      cf target -s $CF_SPACE
      cf push "$CF_PUSH_APPNAME"
      ;;
    *)
      echo "I will not deploy this branch"
      exit 0
      ;;
  esac
}

main $@
