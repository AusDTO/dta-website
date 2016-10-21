#!/usr/bin/env bash

# Exit immediately if there is an error
set -e

# cause a pipeline (for example, curl -s http://sipb.mit.edu/ | grep foo) to produce a failure return code if any command errors not just the last command of the pipeline.
set -o pipefail

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

# main script function
#
main() {
  readonly GITBRANCH="${CIRCLE_BRANCH}"

  basicauth

  case "${GITBRANCH}" in
    master)
      appname="${CIRCLE_PROJECT_REPONAME}"
      cf api $CF_PROD_API
      cf auth $CF_PROD_USER $CF_PROD_PASSWORD
      cf target -o $CF_PROD_ORG
      cf target -s $CF_PROD_SPACE
      cf push -f manifest-production.yml
      ;;
    develop)
      appname="dta"
      cf api $CF_STAGING_API
      cf auth $CF_STAGING_USER $CF_STAGING_PASSWORD
      cf target -o $CF_STAGING_ORG
      cf target -s $CF_STAGING_SPACE
      cf push $appname
      ;;
  esac

}

main $@
