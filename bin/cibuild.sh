#!/usr/bin/env bash

# Exit immediately if there is an error
set -e

# cause a pipeline (for example, curl -s http://sipb.mit.edu/ | grep foo) to produce a failure return code if any command errors not just the last command of the pipeline.
set -o pipefail

# echo out each line of the shell as it executes
set -x

main() {
  readonly GITBRANCH="${CIRCLE_BRANCH}"

  case "${GITBRANCH}" in
    master)
      echo "Building with production jekyll config"
      JEKYLL_ENV=production bundle exec jekyll build --config _config.yml,_config.prod.yml
      ;;
    develop)
      echo "Building with staging jekyll config"
      JEKYLL_ENV=production bundle exec jekyll build --config _config.yml,_config.staging.yml
      ;;
    *)
      echo "Building with normal jekyll config"
      bundle exec jekyll build
      exit 0
      ;;
  esac
}

main $@
