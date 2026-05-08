<p align="center"><img src=".github/assets/qq-icon.png" alt="Qtonic Quantum" width="120"></p>

<p align="center">[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE) [![CycloneDX](https://img.shields.io/badge/CycloneDX-1.7-6E2BA8.svg)](https://cyclonedx.org/docs/1.7/json/) [![Brand discipline](https://img.shields.io/badge/brand--lint-enforced-6E2BA8.svg)](scripts/brand-lint.sh)</p>

# qq-ci-templates — leading quantum risk and vulnerability intelligence tools and services

Shared CI workflows, brand discipline scripts, CBOM validation, and governance templates for Qtonic Quantum public repositories. The foundation that lets every Qtonic Quantum tool repo pass the same gates with one line of YAML.

## What Qtonic Quantum does

**We take enterprises from current cryptographic state, through hybrid, to post-quantum.**

Four pillars deliver the journey:

- **QScout** — cryptographic assessment (current-state discovery and risk scoring)
- **QStrike** — governed follow-on validation (proves what is exploitable)
- **QSolve** — PQC migration (executes the move to hybrid then post-quantum)
- **Q-Lab** — independent public scoring registry (credentials the work)

### Why Qtonic Quantum

- **Leading intelligence tools** — credentialed by our own public Q-Lab scoring registry, not vendor self-reports.
- **Our own labs** — Q-Lab is built and operated in-house.
- **Founder-funded and independent** — no outside funding, no vendor distribution agreements. 100% vendor neutral, client focused.

---

## What this repository provides

### Reusable workflows (`.github/workflows/`)

- **qq-quality-gate.yml** — ruff plus mypy plus pytest matrix (Python 3.10 through 3.13 across ubuntu/macOS/Windows) plus brand discipline lint
- **qq-cbom-validate.yml** — validates every `*.cbom.json` against the bundled CycloneDX 1.7 schema
- **qq-link-check.yml** — lychee link-checker
- **qq-release.yml** — Sigstore-signed releases with self-CBOM attached

### Lint scripts (`scripts/`)

- **brand-lint.sh** — enforces brand discipline (canonical phrase, footer CTA, no costs, no pricing, requires full company name)
- **cbom-validate.sh** — validates CycloneDX 1.7 CBOM files via jsonschema
- **trade-secret-lint.sh** — denylist scan for internal-only terms
- **canonical-check.sh** — confirms README carries the canonical phrase

### Governance templates (`templates/`)

- SECURITY.md, CODE_OF_CONDUCT.md (Contributor Covenant 2.1), CONTRIBUTING.md, CODEOWNERS, ISSUE_TEMPLATE/, PULL_REQUEST_TEMPLATE.md

## How a downstream repo opts in

Add a workflow file at `.github/workflows/quality.yml` that references the reusable workflow at `qtonicquantum/qq-ci-templates/.github/workflows/qq-quality-gate.yml@main`.

Or curl a script directly into a custom workflow step:

```bash
curl -sSL https://raw.githubusercontent.com/qtonicquantum/qq-ci-templates/main/scripts/brand-lint.sh | bash -s .
```

See [docs/HOW-TO-USE.md](docs/HOW-TO-USE.md) and [docs/BRAND-RULES.md](docs/BRAND-RULES.md).

## License

MIT — see [LICENSE](LICENSE).

## Security

See [SECURITY.md](SECURITY.md). Report sensitive issues to ciso@qtonicquantum.com.

---

From Qtonic Quantum — leading quantum risk and vulnerability intelligence tools and services. Visit https://qtonicquantum.com.
