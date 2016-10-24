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
      bundle exec jekyll build --config _config.prod.yml
      ;;
    develop)
      echo "Building with development jekyll config"
      bundle exec jekyll build
      ;;
    *)
      echo "Not building site"
      exit 0
      ;;
  esac
}

main $@
