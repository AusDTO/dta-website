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
#bundle exec htmlproofer _site  \
#    --disable-external \
#    --allow-hash-href \
#    --url-ignore "/(mailto:.*)/" \
#    --file-ignore /.*feed/index\.html/ \
#    --empty-alt-ignore \
#    --url-swap "https\://www.dta.gov.au:,${DTA_SITE_URL_ESCAPED}${DTA_SITE_BASEURL}:,${DTA_SITE_BASEURL}:"

# CI should have already started a webserver in the background for pa11y to test against, but it might not be ready yet
echo "Waiting for webserver to start..."
COUNT=0
until $(curl --output /dev/null --silent --head --fail http://localhost:4000); do
    COUNT=$(($COUNT+1))
    if [ "$COUNT" -gt 24 ]
    then
        echo "Webserver did not start"
        exit 1
    fi
    sleep 5
done
echo "Webserver has started"

# Run accesslint accessibility tests
bundle exec accesslint-ci scan http://localhost:4000

# Run accesslint accessibility tests
# node_modules/.bin/pa11y-ci --sitemap http://localhost:4000/pa11y-sitemap.xml
