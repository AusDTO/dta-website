#!/usr/bin/env bash

# This script will start 'jekyll serve' but with a much faster build time. This is convenient to use when
# editing the site and previewing changes in localhost.
# Specifically it disables the search plugin, and only renders the latest blog post.

if [ -n $FAST_BUILDS ]; then
  export FAST_BUILDS=true;
fi

bundle exec jekyll serve --incremental --limit_posts 1
