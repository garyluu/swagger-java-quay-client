#!/usr/bin/env bash
set -x

git checkout -f master
curl -o rawswagger.yaml 'https://quay.io//api/v1/discovery?' -H 'x-requested-with: XMLHttpRequest'
jq . rawswagger.yaml > swagger.yaml
git diff --exit-code
if [ $? == 0 ] ; then
  exit 1
fi
git add swagger.yaml
git commit -m "Update swagger.yaml"

