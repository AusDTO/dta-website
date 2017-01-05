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

# Run jekyll hyde
# Note - this will clobber the sitemap.xml using the site.url, so we just use production's
# config as that's the only place where we need a valid sitemap
bundle exec jekyll hyde  --config _config.yml,_config-production.yml

# Run a html proofer over the site
bundle exec htmlproofer _site  \
    --allow-hash-href \
    --url-ignore "/mailto:.*/,/www.linkedin.com/*/" \
    --file-ignore /.*feed/index\.html/ \
    --empty-alt-ignore \
    --http-status-ignore "301,302" \
    --url-swap "http\://localhost\:4000:,https\://dta.apps.staging.digital.gov.au:,https\://www.dta.gov.au:"

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

# Run pa11y accessibility tests
node_modules/.bin/pa11y-ci --sitemap http://localhost:4000/pa11y-sitemap.xml
