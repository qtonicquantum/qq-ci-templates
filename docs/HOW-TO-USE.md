# How to use qq-ci-templates

Reusable workflows and shared scripts for Qtonic Quantum public repositories.

## Quality gate

In your repo, create `.github/workflows/quality.yml`:

```yaml
name: Quality
on: [push, pull_request]
jobs:
  quality:
    uses: qtonicquantum/qq-ci-templates/.github/workflows/qq-quality-gate.yml@main
    with:
      python-versions: '["3.10","3.11","3.12","3.13"]'
      coverage-threshold: 85
```

## CBOM validation (CycloneDX 1.7)

```yaml
name: CBOM
on: [push, pull_request]
jobs:
  cbom:
    uses: qtonicquantum/qq-ci-templates/.github/workflows/qq-cbom-validate.yml@main
```

Place CBOM files anywhere with the suffix `*.cbom.json`. They must declare `"specVersion": "1.7"`.

## Link checking

```yaml
name: Links
on: [pull_request]
jobs:
  links:
    uses: qtonicquantum/qq-ci-templates/.github/workflows/qq-link-check.yml@main
```

## Release with sigstore signing

```yaml
name: Release
on:
  push:
    tags: ["v*"]
jobs:
  release:
    uses: qtonicquantum/qq-ci-templates/.github/workflows/qq-release.yml@main
    with:
      tag: ${{ github.ref_name }}
```

## Brand and content rules

Every public repo must satisfy `scripts/brand-lint.sh`. See [BRAND-RULES.md](BRAND-RULES.md).

## Templates

Copy from `templates/` into your repo: SECURITY.md, CODE_OF_CONDUCT.md, CONTRIBUTING.md, CODEOWNERS, PULL_REQUEST_TEMPLATE.md, ISSUE_TEMPLATE/.

---

From Qtonic Quantum — leading quantum risk and vulnerability intelligence tools and services. Visit https://qtonicquantum.com.
