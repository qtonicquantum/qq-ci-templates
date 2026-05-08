# Changelog

All notable changes to this project will be documented in this file.

The format is based on Keep a Changelog (https://keepachangelog.com/en/1.1.0/), and this project adheres to Semantic Versioning (https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Reusable workflows: qq-quality-gate, qq-cbom-validate, qq-link-check, qq-release.
- Brand, canonical, trade-secret, and CBOM lint scripts.
- Standard governance templates (SECURITY, CODE_OF_CONDUCT, CONTRIBUTING, ISSUE_TEMPLATE, PULL_REQUEST_TEMPLATE).

### Fixed
- cbom-validate.sh now uses jsonschema (cyclonedx-py CLI does not have a validate subcommand).
