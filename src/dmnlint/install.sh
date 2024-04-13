#!/bin/sh
set -e

echo "Activating feature 'dmnlint'"
echo "Installing version: ${VERSION}"

npm install -g dmnlint@${VERSION}
