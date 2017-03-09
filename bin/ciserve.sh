#!/usr/bin/env bash

# Exit immediately if there is an error
set -e

# cause a pipeline (for example, curl -s http://sipb.mit.edu/ | grep foo) to produce a failure return code if any command errors not just the last command of the pipeline.
set -o pipefail

# echo out each line of the shell as it executes
set -x

# Include build env vars
source "$(dirname "$0")/buildrc"

# Start a local copy of the site to test against
bundle exec jekyll serve --config="_config.yml,_config-accesslint.yml" --detach --destination $TMPDIR/_pa11y_site

