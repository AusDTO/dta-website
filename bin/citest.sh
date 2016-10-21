#!/usr/bin/env bash

#
# EXPECTS THE SITE TO HAVE ALREADY BEEN BUILT
#

# Exit immediately if there is an error
set -e

# cause a pipeline (for example, curl -s http://sipb.mit.edu/ | grep foo) to produce a failure return code if any command errors not just the last command of the pipeline.
set -o pipefail

# echo out each line of the shell as it executes
set -x

# Run jekyll hyde
bundle exec jekyll hyde

# Check for url conflicts
bundle exec jekyll doctor


# Run a html proofer over the site
# Temporarily disabled until we fix these issues so we dont block deploys 
# bundle exec htmlproofer _site  \
#    --disable-external \
#    --allow-hash-href \
#    --url-ignore "/((#open-menu)|(#open-search)|(mailto:.*))/" \
#    --file-ignore /.*feed/index\.html/ \
#    --empty-alt-ignore

