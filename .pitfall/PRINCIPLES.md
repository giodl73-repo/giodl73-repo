# giodl73-repo Principles

## GIODL73-P-01: The Front Door Explains, It Does Not Govern

**Status:** ACTIVE

**Statement:** giodl73-repo is the public map and narrative entry point for the
portfolio, while TRACKER owns the complete registry, readiness state, dependency
placement, and submodule snapshots.

**Decision rule:** Keep public profile changes explanatory and link-oriented;
move exhaustive portfolio state, private sequencing, and snapshot decisions to
TRACKER.

**Evidence:** `README.md`, `CLAUDE.md`, and
`.roles/parliament/series-narrative-curator.md`.

## GIODL73-P-02: Public Claims Must Stay Evidence-Labeled

**Status:** ACTIVE

**Statement:** Highlight text can summarize repo achievements, but maturity,
readiness, result, official-status, and customer-impact claims must keep their
source repo, evidence posture, and limitation language visible.

**Decision rule:** Reject a profile highlight when a reader could confuse an
internal analytical result, prototype, transfer test, or public-reference repo
with an official deployment, validated customer result, or external authority.

**Evidence:** `README.md`, `series/applied-systems.md`,
`series/knowledge-systems.md`, and
`.roles/parliament/public-surface-scrubber.md`.

## GIODL73-P-03: Links Are Public Contracts

**Status:** ACTIVE

**Statement:** A public profile link promises the right repository, branch,
series page, or local document target at the time it is published.

**Decision rule:** Any repo rename, branch change, series move, or local page
addition must update the profile and series links together and pass the retained
link proof.

**Evidence:** `tools/check-local-links.ps1`, `tests/check-proof.ps1`, and
`.roles/parliament/repo-link-steward.md`.

## GIODL73-P-04: Private Process Must Not Leak Into Public Copy

**Status:** ACTIVE

**Statement:** Public files may describe visible portfolio conventions, but not
private paths, local-only staging state, unpublished work queues, internal
codenames, or agent scratch context.

**Decision rule:** Before publishing profile or series copy, run the Public
Surface Scrubber lens and remove text that requires private TRACKER context to
understand.

**Evidence:** `CLAUDE.md`, `README.md`, and
`.roles/parliament/public-surface-scrubber.md`.

## GIODL73-P-05: Series Pages Prefer Reader Navigation Over Exhaustiveness

**Status:** ACTIVE

**Statement:** Series pages should help a public reader choose where to start;
they should not become a duplicate of TRACKER's full inventory or a stale
portfolio status board.

**Decision rule:** Add only summary, boundary, and entry-point information to
series pages unless the public navigation value is clear and maintainable.

**Evidence:** `series/README.md`, `series/*.md`, and
`.roles/parliament/series-narrative-curator.md`.
