#!/bin/bash

set -x

# concourse-setup

fly -t ci login -c http://192.168.100.4:8080/
for file in concourse-setup/pipelines/*.yml; do
  name="$(basename "$file")"
  name=${name%.yml}

  fly -t ci set-pipeline -p "$name" -c "$file"
done
