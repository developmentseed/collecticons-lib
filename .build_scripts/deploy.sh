#!/usr/bin/env bash
set -e # halt script on error

# If this is the deploy branch, push it up to gh-pages
if [ $TRAVIS_PULL_REQUEST = "false" ] && [ $TRAVIS_BRANCH = ${DEPLOY_BRANCH} ]; then
  git clone "https://${GH_DEST}" collecticons
  cd collecticons
  git submodule update --init --recursive
  cd collecticons-lib
  git pull origin master
  cd ..
  npm install
  gulp collecticons
  gulp

  echo "Get ready, we're pushing to gh-pages!"
  cd dist
  git init
  git config user.name "Travis-CI"
  git config user.email "travis@somewhere.com"
  git add .
  git commit -m "CI deploy to gh-pages"
  git push --force --quiet "https://${GH_TOKEN}@${GH_DEST}" master:gh-pages
else
  echo "Not a publishable branch so we're all done here"
fi
