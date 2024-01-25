#!/bin/bash

set -ex

name=$1
repo_name="mediawiki-extensions-${name:=$1}"

curl "https://codeload.github.com/wikimedia/${repo_name}/zip/refs/heads/REL1_$VERSION" -o /tmp/${name}.zip
unzip /tmp/${name}.zip -d /tmp/${name}
mkdir /tmp/extensions/${name}/
cp -r /tmp/${name}/*/* /tmp/extensions/${name}/
