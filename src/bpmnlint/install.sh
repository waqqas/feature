#!/bin/sh
set -e

echo "Activating feature 'bpmnlint'"
echo "Installing version: ${VERSION}"

npm install -g bpmnlint@${VERSION}
