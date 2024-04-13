# Features

This repository contains a _collection_ of two Features - `bpmnlint` and `dmnlint`.  Each sub-section below shows a sample `devcontainer.json`.

### `bpmnlint`

Adds a bpmnlint utility to the dev-container that can be used to validate BPMN files

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/waqqas/feature/bpmnlint:1": {}
    }
}
```

Add a `.bpmnlintrc` file in project root directory. Example would be like this

``` jsonc
{
  "extends": "bpmnlint:recommended",
  "rules": {
    "label-required": "off"
  }
}
```
For more information please visit [bpmnlint page](https://github.com/bpmn-io/bpmnlint)

You can add this in `pre-commit` hook comfiguration file (`.pre-commit-config.yaml`)
``` yaml
  - repo: local
    hooks:
      - id: bpmnlint
        name: Lint BPMN files
        entry: bpmnlint
        language: system
        pass_filenames: true
        files: '^.+\.bpmn$'
```

### `dmnlint`

Adds a dmnlint utility to the dev-container that can be used to validate DMN files

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/waqqas/feature/dmnlint:1": {}
    }
}
```

Add a `.dmnlintrc` file in project root directory. Example would be like this

``` jsonc
{
  "extends": "dmnlint:recommended",
  "rules": {
    "label-required": "off"
  }
}
```
For more information please visit [dmntlint page](https://github.com/bpmn-io/dmnlint)

You can add this in `pre-commit` hook comfiguration file (`.pre-commit-config.yaml`)
``` yaml
  - repo: local
      - id: dmn
        name: Lint DMN files
        entry: dmnlint
        language: system
        pass_filenames: true
        files: '^.+\.dmn$'
```

