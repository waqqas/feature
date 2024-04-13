#!/bin/bash

set -e

source dev-container-features-test-lib

cat > .bpmnlintrc << EOF
{
  "extends": "bpmnlint:recommended",
  "rules": {
    "label-required": "off"
  }
}
EOF

# Feature-specific tests
check "execute command" bash -c "bpmnlint bpmn/hello_world.bpmn"

# Report result
reportResults
