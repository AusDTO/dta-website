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
# Note - this will clobber the sitemap.xml using the site.url, so we just use production's
# config as that's the only place where we need a valid sitemap
bundle exec jekyll hyde  --config _config.yml,_config-production.yml

# Run a html proofer over the site
bundle exec htmlproofer _site  \
    --disable-external \
    --allow-hash-href \
    --url-ignore "/(mailto:.*)/" \
    --file-ignore /.*feed/index\.html/ \
    --empty-alt-ignore

