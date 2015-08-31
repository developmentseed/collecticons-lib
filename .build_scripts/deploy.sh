#!/usr/bin/env bash
set -e # halt script on error

# If this is the deploy branch, push it up to gh-pages
if [ $TRAVIS_PULL_REQUEST = "false" ] && [ $TRAVIS_BRANCH = ${DEPLOY_BRANCH} ]; then
  rm -rf collecticons
  git clone "https://${GH_DEST}" collecticons
  cd collecticons
  git submodule update --init --recursive
  cd collecticons-lib
  git pull origin master
  cd ..
  git add collecticons-lib

  echo "Get ready, we're updating!"
  git config user.name "Travis-CI"
  git config user.email "travis@somewhere.com"
  git commit -m "CI: update collecticons-lib submodule"
  git push --quiet "https://${GH_TOKEN}@${GH_DEST}" master
else
  echo "Not a publishable branch so we're all done here"
fi
