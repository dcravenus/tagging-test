#!/usr/bin/env bash

version="1.0.2"
echo $version
latest_version=`git ls-remote -t git@github.com:dcravenus/tagging-test.git | sed 's/.*refs\/tags\/\(.*\)/\1/' | tail -1`
echo $latest_version

if [ "$version" != "$latest_version" ]; then
  echo 'update please'
fi