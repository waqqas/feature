#!/bin/bash

set -e

source dev-container-features-test-lib

cat > .dmnlintrc << EOF
{
  "extends": "dmnlint:recommended",
  "rules": {
    "label-required": "off"
  }
}
EOF

# Feature-specific tests
check "execute command" bash -c "dmnlint dmn/pizza_price.dmn"

# Report result
reportResults
