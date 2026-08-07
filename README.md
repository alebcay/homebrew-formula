brewtap
=======

A homebrew tap for some stuff

## Automation

Bottles are built and published via GitHub Actions:

- `.github/workflows/tests.yml` — on push to `main` (tap syntax only) and on
  pull requests touching `Formula/` (detects changed formulae, builds, bottles,
  tests, and tests dependents on `macos-15`, `macos-15-intel`, and
  `ubuntu-24.04`, uploading `bottles_*` artifacts).
- `.github/workflows/publish.yml` — `workflow_dispatch` with a `pull_request`
  input. Gated on the pull request being approved; waits for CI, pulls the
  bottle artifacts, applies the bottle block, uploads bottles to GitHub
  Packages (GHCR at `https://ghcr.io/v2/alebcay/formula`), pushes the commit,
  and merges the pull request.

`Homebrew/actions` are pinned to immutable CalVer releases; dependabot
(`.github/dependabot.yml`) proposes updates to these pins.

Head-only formulae (no `url` stanza) are audited but not bottled. Publishing
requires a `HOMEBREW_GITHUB_PACKAGES_TOKEN` secret (a classic PAT with
`write:packages`) and a public GHCR package.
