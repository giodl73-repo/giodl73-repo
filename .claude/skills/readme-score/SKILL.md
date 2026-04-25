---
name: readme-score
description: Score any public-repo README per-section against the 50-point rubric documented in conventions.md, and (when target isn't the front-door repo) check alignment with giodl73-repo's README. Read-only — outputs a report and the row to paste into TRACKER.md. Use when refreshing a repo's README score or before deciding to rewrite a section.
---

# readme-score — per-section README scoring + alignment check

Scores a README against the 50-point rubric and, when applicable, checks
alignment with the front-door repo. Read-only — no edits.

## When to use

- A repo's README hasn't been scored yet, or the rubric just changed.
- You're about to rewrite a README section and want a baseline.
- You suspect the front-door narrative and a portfolio repo's README
  have drifted out of sync.

## Inputs

- **Repo path** (defaults to cwd). Must be a git repo with a `README.md`
  at the root.

## Reference

The rubric, axes, bands, and alignment rules all live in
[`.claude/references/conventions.md`](../../references/conventions.md)
under "README rubric (50 points)" and "README alignment with front-door".
This skill applies that rubric — don't duplicate the axis definitions
here.

## Procedure

### 1. Identify sections

Parse the README into sections. A section is the text between two `^##`
headings (excluding `^###` and below — those roll up into the parent
section's score). Treat the lead-in before the first `##` as section
"Intro".

### 2. Score each section against the 10-axis rubric

For each section, score each axis (1–5):

- **Substance** axes: Thesis, Headline, Principle, Evidence, Stakes
- **Style** axes: Hook, Voice, Density, Clarity, Truth

Total per section = sum of all 10 axes (max 50).

For each axis score under 4, write a one-line note explaining what
specifically is weak (e.g. "Thesis 2 — section reads as a feature list
without connecting back to the emergent-skills loop").

### 3. Alignment check (only if target ≠ giodl73-repo)

Read both:

- The target repo's `README.md`
- `C:\src\giodl73-repo\README.md` (or fetch from GitHub if not local)

Find the front-door stanza for the target repo. Then:

- **Faithful upward** — for each claim the front-door makes about this
  repo, check that the repo's own README backs it (e.g. front-door says
  "150 games scored" — does the repo's README confirm this?).
- **Faithful downward** — for each distinctive principle or signature
  claim in the repo's README, check that the front-door has at least a
  one-line representation of it.

Report each gap:

```
Faithful upward gaps:
  - Front-door claims "31 original games designed" — repo README says
    "31 originals" elsewhere ✓ but doesn't list them.

Faithful downward gaps:
  - Repo README lead-in: "the rubric evolves from the play record, not
    by committee." Front-door doesn't capture this principle in the
    TIGRIS stanza — could be added.
```

Final verdict: `Aligned: Y` or `Aligned: N — <one-line summary>`.

### 4. Output

A per-section card, then a repo-level summary, then a TRACKER row.

```
=== <repo>: README score (rubric v1.0) ===

Section: Intro
  Substance: Thesis 4, Headline 3, Principle 3, Evidence 4, Stakes 3 = 17
  Style:     Hook 4, Voice 4, Density 3, Clarity 4, Truth 5 = 20
  Total: 37 — Weak / significant rewrite needed
  Notes:
    - Headline 3: opens with a stat ("150 games") — could lead with
      the gap-finding insight instead.
    - Density 3: paragraph 2 is a feature list; trim or convert to
      a callout.

Section: How it works
  Total: 46 — Strong
  ...

Repo aggregate: 41 / 50 (mean of N sections)
Aligned with front-door: Y

TRACKER row:
| TIGRIS | ... | 41 | Y |
```

## What this skill does NOT do

- Does not edit the README. Use `/readme-revise` (when it exists) for
  the writing pass.
- Does not update TRACKER. The output prints the row to paste; updating
  the file is a manual or `/new-repo` step.
- Does not score sections that are auto-generated (e.g. tables of
  contents, license blocks). Mark those `n/a`.
- Does not check alignment when target IS the front-door repo (no
  comparison target). For the front-door, only the rubric scoring
  applies.
