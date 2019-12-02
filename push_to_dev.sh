#!/usr/bin/env bash

# exit when any command fails
set -e

cur_branch=`git rev-parse --abbrev-ref HEAD`
dev_branch=${1:-dev}

git checkout $dev_branch
git pull
git merge $cur_branch --no-edit
git push origin $dev_branch
git checkout $cur_branch