#!/bin/bash

set -e

# Optional: Import test library bundled with the devcontainer CLI
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
# The 'check' command comes from the dev-container-features-test-lib.
check "execute command" bash -c "bpmnlint bpmn/hello_world.bpmn"

# Report result
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults
