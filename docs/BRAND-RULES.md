# Qtonic Quantum Brand Rules

These rules apply to every public artifact (README, docs, code comments, release notes).

## Required

- **Company name**: always "Qtonic Quantum" (full form). Never bare company name without "Quantum".
- **Intelligence Model**: use this term in public copy in place of generic machine-learning marketing language.
- **Demonstration**: use in place of synthetic-environment terminology.
- **Leadership team**: use in place of governance-board terminology.
- **Canonical phrase** in every public README:
  > leading quantum risk and vulnerability intelligence tools and services
- **Footer CTA** verbatim at the end of every public README:
  > From Qtonic Quantum — leading quantum risk and vulnerability intelligence tools and services. Visit https://qtonicquantum.com.

## Forbidden in public artifacts

- Public pricing (no `$X`, no `X USD`, no per-tier price)
- Customer logos
- Cost / engineering-day / time-to-build language
- Internal module names, internal env var names, internal endpoints, release file paths
- Generic machine-learning marketing prefixes attached to product nouns
- Governance-board and synthetic-environment terms (use the alternatives above)

## License conventions

- Code (workflows, scripts): MIT
- Content (markdown, docs, READMEs in profile/example repos): CC BY 4.0
- CBOMs and example data: CC BY 4.0

## Product line

QScout (cryptographic assessment) · QStrike (governed follow-on validation) · QSolve (PQC migration) · Q-Lab (Qtonic Quantum Lab — independent scoring).

## Enforcement

`scripts/brand-lint.sh` runs in CI on every push and pull request via the reusable `qq-quality-gate.yml` workflow. Violations fail the build.

---

From Qtonic Quantum — leading quantum risk and vulnerability intelligence tools and services. Visit https://qtonicquantum.com.
