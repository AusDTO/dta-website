#!/usr/bin/env bash

# Exit immediately if there is an error
set -e

# cause a pipeline (for example, curl -s http://sipb.mit.edu/ | grep foo) to produce a failure return code if any command errors not just the last command of the pipeline.
set -o pipefail

# echo out each line of the shell as it executes
set -x

# Use JEKYLL_ENV to configure jekyll-assets
export JEKYLL_ENV=production

main() {
  readonly GITBRANCH="${CIRCLE_BRANCH}"

  # Use the branch name to set the url used by jekyll
  case "${GITBRANCH}" in
    master)
      readonly SITE_URL="https://www.dta.gov.au"
      ;;
    develop)
      readonly SITE_URL="https://dta.apps.staging.digital.gov.au"
      ;;
    "")
      readonly SITE_URL="http://localhost:4000"
      ;;
    *)
      readonly SITE_URL="https://dta-website-${GITBRANCH}.apps.staging.digital.gov.au"
      ;;
  esac

  mkdir -p _site
  echo "url: \"${SITE_URL}\"">_site/_config-url.yml

  bundle exec jekyll build --config _config.yml,_site/_config-url.yml
}

main $@
