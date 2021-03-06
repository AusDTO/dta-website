#!/usr/bin/env bash

# Exit immediately if there is an error
set -e

# cause a pipeline (for example, curl -s http://sipb.mit.edu/ | grep foo) to produce a failure return code if any command errors not just the last command of the pipeline.
set -o pipefail

# echo out each line of the shell as it executes
set -x

# Include build env vars
source "$(dirname "$0")/buildrc"

# install all the needed ruby gems
gem install --conservative bundler -v 1.16.0
bundle check --path=vendor/bundle || bundle install --path=vendor/bundle --jobs=4 --retry=3

# install the cloud foundry cli tool if required
case "${GITBRANCH}" in
  master|develop|${DEPLOY_BRANCHES})
    curl -v -L -o cf-cli_amd64.deb 'https://cli.run.pivotal.io/stable?release=debian64&version=6.32.0&source=github-rel'
    sudo dpkg -i cf-cli_amd64.deb
    cf -v
    cf install-plugin https://github.com/govau/autopilot/releases/download/0.0.5-venapp/autopilot-linux -f
    ;;
esac

# htpasswd is needed when setting up basicauth
if [[ -n ${CF_BASIC_AUTH_PASSWORD+x} ]]
then
  sudo apt-get update
  sudo apt-get install -qy apache2-utils
fi
