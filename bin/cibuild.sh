#!/usr/bin/env bash

# Exit immediately if there is an error
set -e

# cause a pipeline (for example, curl -s http://sipb.mit.edu/ | grep foo) to produce a failure return code if any command errors not just the last command of the pipeline.
set -o pipefail

# echo out each line of the shell as it executes
set -x

# Include build env vars
source "$(dirname "$0")/buildrc"

main() {
  mkdir -p _site
  echo "url: \"${DTA_SITE_URL}\"">${TMPDIR}/_config-url.yml
  echo "baseurl: \"${DTA_SITE_BASEURL}\"">>${TMPDIR}/_config-url.yml

  # Use JEKYLL_ENV to configure jekyll-assets
  export JEKYLL_ENV=production

  bundle exec jekyll build --config _config.yml,${TMPDIR}/_config-url.yml
}

main $@
