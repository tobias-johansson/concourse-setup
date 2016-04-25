#!/bin/bash

set -x

# concourse-setup

fly -t ci login -c http://192.168.100.4:8080/
for file in concourse-setup/pipelines/*.yml; do
  name="$(basename "$file")"
  echo $file
  echo $name
done
