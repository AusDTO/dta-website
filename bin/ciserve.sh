#!/usr/bin/env bash

# Exit immediately if there is an error
set -e

# cause a pipeline (for example, curl -s http://sipb.mit.edu/ | grep foo) to produce a failure return code if any command errors not just the last command of the pipeline.
set -o pipefail

# echo out each line of the shell as it executes
set -x

# use /tmp if TMPDIR is not defined
if [ -z "$TMPDIR" ]; then
    TMPDIR="/tmp"
fi

# Start a local copy of the site to test against
bundle exec jekyll serve --no-watch --destination $TMPDIR/_pa11y_site
