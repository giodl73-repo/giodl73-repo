# giodl73-repo Invariants

## GIODL73-I-01: Local Profile Links Resolve

**Status:** VERIFIED

**Invariant:** Local links in the public profile README resolve to files inside
the repository.

**Why it matters:** The front door loses trust quickly if a reader lands on a
missing series page or document target.

**Evidence:** `tools/check-local-links.ps1`, `tests/check-proof.ps1`, and
`tests/fixtures/invalid-readme.md`.

**Test:** `pwsh -NoProfile -File tests\check-proof.ps1`.

## GIODL73-I-02: Missing Local Links Fail Loudly

**Status:** VERIFIED

**Invariant:** The retained invalid README fixture must fail with a structured
missing-link diagnostic.

**Why it matters:** A checker that only accepts the current profile cannot prove
that stale future links will be caught.

**Evidence:** `tests/check-proof.ps1` and `tests/fixtures/invalid-readme.md`.

**Test:** `pwsh -NoProfile -File tests\check-proof.ps1`.

## GIODL73-I-03: Public Profile Keeps TRACKER Ownership Visible

**Status:** ENFORCED

**Invariant:** Public-facing agent instructions say TRACKER owns complete
portfolio registry, readiness, dependency placement, and snapshot state.

**Why it matters:** The profile repo should not become the hidden source of
truth for portfolio management.

**Evidence:** `CLAUDE.md` and `README.md`.

**Enforcement:** Repo review checks profile edits against the
Series Narrative Curator and Public Surface Scrubber roles.

## GIODL73-I-04: Published Series Pages Remain Reader-Scoped

**Status:** ENFORCED

**Invariant:** Series pages describe public promises, repo roles, and entry
points rather than complete private backlog or readiness inventory.

**Why it matters:** Duplicating TRACKER state in the public front door creates
stale claims and makes repo status look more settled than it is.

**Evidence:** `series/README.md`, `series/ai-methodology.md`,
`series/standards-protocols.md`, and `series/tools-infrastructure.md`.

**Enforcement:** Series changes use the Series Narrative Curator and Repo Link
Steward roles.

## GIODL73-I-05: Public Surface Scrubbing Precedes Publication

**Status:** ENFORCED

**Invariant:** Public profile and series changes are reviewed for private paths,
unpublished implementation notes, unexplained shorthand, and overclaiming before
publication.

**Why it matters:** The front door is a public trust surface, not a session
handoff file.

**Evidence:** `CLAUDE.md`, `README.md`, and
`.roles/parliament/public-surface-scrubber.md`.

**Enforcement:** Public-facing edits use the Public Surface Scrubber role before
push.
