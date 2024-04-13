#!/bin/bash

set -e

source dev-container-features-test-lib

# Feature-specific tests
check "validate version" bpmnlint --version | grep '1.0.0'

# Report result
reportResults
