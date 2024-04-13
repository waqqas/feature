#!/bin/bash

set -e

source dev-container-features-test-lib

# Feature-specific tests
check "validate version" dmnlint --version | grep '0.1.1'

# Report result
reportResults
