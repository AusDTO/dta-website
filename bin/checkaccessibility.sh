#!/usr/bin/env bash

# Checks accessibility.

echo "Running jekyll serve"
bundle exec jekyll serve --detach --no-watch --destination $TMPDIR/_pa11y_site > /dev/null 2>&1

# Run pa11y accessibility tests
$(npm bin)/pa11y-ci --sitemap http://localhost:4000/sitemap.xml --sitemap-exclude "*.\.pdf"

# kill jekyll
pkill -f jekyll
