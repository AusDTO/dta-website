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
    *)
      echo "I do not know how to deploy that branch"
      exit 0
      ;;
  esac
}

main $@
