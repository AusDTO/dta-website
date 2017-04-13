#!/usr/bin/env bash

#
# EXPECTS THE SITE TO HAVE ALREADY BEEN BUILT AND RUNNING LOCALLY
#

# Exit immediately if there is an error
set -e

# cause a pipeline (for example, curl -s http://sipb.mit.edu/ | grep foo) to produce a failure return code if any command errors not just the last command of the pipeline.
set -o pipefail

# echo out each line of the shell as it executes
set -x

# Include build env vars
source "$(dirname "$0")/buildrc"

# Run jekyll hyde
# Note - this will clobber sitemap.xml using the site.url, so config must have the correct url.
bundle exec jekyll hyde  --config _config.yml,${TMPDIR}/_config-url.yml

DTA_SITE_URL_ESCAPED=${DTA_SITE_URL//:/\\:}

# Run a html proofer over the site
bundle exec htmlproofer _site  \
    --disable-external \
    --allow-hash-href \
    --url-ignore "/(mailto:.*)/,/(.*/jobs/#op.*)/" \
    --file-ignore /.*feed/index\.html/ \
    --empty-alt-ignore \
    --url-swap "https\://www.dta.gov.au:,${DTA_SITE_URL_ESCAPED}${DTA_SITE_BASEURL}:,${DTA_SITE_BASEURL}:"
