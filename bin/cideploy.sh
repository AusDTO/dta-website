#!/usr/bin/env bash

# Exit immediately if there is an error
set -e

# cause a pipeline (for example, curl -s http://sipb.mit.edu/ | grep foo) to produce a failure return code if any command errors not just the last command of the pipeline.
set -o pipefail

# enable pattern lists like +(...|...)
shopt -s extglob

# The master and develop branches are continuously deployed to production and staging.
# You can also add additional branches here which will be deployed to a temporary staging site.
# Separate branches with a | character. e.g. "+(branch1|branch2)"
readonly DEPLOY_BRANCHES="+(annual-report)"

# setup basic auth on the container
#
basicauth() {
  if [[ -n ${CF_BASIC_AUTH_PASSWORD+x} ]]
  then
    htpasswd -cb _site/Staticfile.auth $CF_BASIC_AUTH_USERNAME $CF_BASIC_AUTH_PASSWORD
  else
    echo "Not setting a password."
  fi
}

# We dont need to deploy the pa11y-sitemap.xml
rm -f _site/pa11y-sitemap.xml

# main script function
#
main() {
  readonly GITBRANCH="${CIRCLE_BRANCH}"

  case "${GITBRANCH}" in
    master)
      cf api $CF_PROD_API
      cf auth $CF_USER $CF_PASSWORD
      cf target -o $CF_ORG
      cf target -s $CF_SPACE
      cf push -f manifest-production.yml
      ;;
    develop)
      basicauth
      cf api $CF_STAGING_API
      cf auth $CF_USER $CF_PASSWORD
      cf target -o $CF_ORG
      cf target -s $CF_SPACE
      cf push -f manifest-develop.yml
      ;;
    ${DEPLOY_BRANCHES})
      basicauth
      appname="${CIRCLE_PROJECT_REPONAME}-${GITBRANCH}"
      cf api $CF_STAGING_API
      cf auth $CF_USER $CF_PASSWORD
      cf target -o $CF_ORG
      cf target -s $CF_SPACE
      cf push $appname
      ;;
    *)
      echo "I will not deploy this branch"
      exit 0
      ;;
  esac
}

main $@
