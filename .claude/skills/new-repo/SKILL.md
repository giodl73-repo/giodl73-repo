---
name: new-repo
description: Walk a public repo through the standard pre-publication checklist documented in TRACKER.md. Use when adding a new repo to the public portfolio, or auditing an existing one.
---

# new-repo — pre-publication checklist runner

Walks any repo (default: current working directory) through the standard
prep steps so it lands on the public portfolio with the same baseline as
the rest. The mapping back to `TRACKER.md` columns is one-to-one — every
step here ticks one column.

## When to use

- A new repo just got pushed to GitHub and needs the standard sweep.
- An existing repo needs an audit against the tracker checklist.
- Onboarding a personal-account repo that wasn't in the original portfolio.

## Inputs

- **Repo path** (defaults to cwd). Must be a git repo with a remote.
- **Optional**: list of persona-file paths if non-standard layout (default
  scans `personas/`, `.roles/`, `toolkit/profiles/`, `agents/`).

## Steps

For each step, report what was applied and what was skipped (already done).

### 1. Inventory

- `git remote -v`, count commits, current branch, default branch.
- Count persona files (in standard locations).
- Count `*.tex` source files (LaTeX papers in `research/publications/`).
- Tracked files in `.claude/`.
- Existing committer-email distribution.

Report the inventory as a status block before making any changes.

> Canonical text for LICENSE, gitignore block, banner, and email-rewrite
> snippet lives in [`.claude/references/conventions.md`](../../references/conventions.md).
> This skill applies those conventions; the conventions file is the source
> of truth.

### 2. LICENSE file

- If missing at repo root: write the MIT LICENSE from the conventions doc.
- If present: leave alone, note its first line in the report.

### 3. README `## License` section

- If `^## License` heading is missing in `README.md`, append the section
  from the conventions doc.

### 4. `.gitignore` block

- Append the standard `.gitignore` block from the conventions doc
  (idempotent — check for the `# Local/editor state` marker first).
- For any tracked file matching the new patterns, run `git rm --cached`.

### 5. Persona AI-simulation banner

- Scan the persona-file locations listed in the conventions doc.
- For each file, prepend the persona banner from the conventions doc
  (after any YAML frontmatter) if the marker `AI simulation` isn't already
  in the first 800 characters.
- For files in review-output locations, use the review banner instead.

### 6. Per-repo committer config

- `git config user.email "giodl73@gmail.com"` (per the conventions doc).
- `git config user.name "Gio Della-Libera"`.

### 7. Pre-rewrite commit

- If steps 2–5 produced any changes: stage and commit with a message
  like `Add license section, AI-sim disclaimers, expand gitignore`.

### 8. History rewrite (committer/author email)

- Stash any remaining uncommitted state (filter-branch refuses to run
  with a dirty tree).
- Run the filter-branch snippet from the conventions doc.
- Verify with `git log --format='%ce' | sort | uniq -c` that no
  `giodl@microsoft.com` remains.
- Pop the stash if one was made.

### 9. Force-push

- `git push --force-with-lease` on the default branch.
- If rejected by branch protection, ask the user to enable force-push
  (or PR-only-merge). Don't keep retrying.

### 10. TRACKER row

- Append a row to `giodl73-repo/TRACKER.md` in the **Repo summary** table.
- Append a row to the **Pre-publication checklist** table with `[x]` for
  the columns this skill ticks (LICENSE, README license, persona
  disclaimers, internal naming scrubbed, gitignore, history rewritten)
  and `[ ]` / `n/a` for what's outside scope (research PDFs, README →
  PDF links).
- If the repo has no LaTeX papers, mark the PDF columns `n/a`.

## Output format

A per-step report:

```
=== <repo>: new-repo skill run ===

Step 1 — Inventory:
  remote: github.com/giodl73-repo/X
  commits: 4
  default: main
  personas: 10 files
  tracked .claude/: 1 settings.local.json + 4 skills

Step 2 — LICENSE: [+] added MIT LICENSE
Step 3 — README ## License: [+] added section
Step 4 — .gitignore: [+] appended block, untracked 1 file
Step 5 — Persona disclaimers: [+] 10/10 files banner added
Step 6 — Per-repo email: [+] set giodl73@gmail.com
Step 7 — Pre-rewrite commit: [+] commit abc1234
Step 8 — Filter-branch: [+] 4 commits rewritten
Step 9 — Push: [+] force-pushed origin/main
Step 10 — TRACKER: [+] row appended

Done. Repo passes the public-readiness baseline.
```

## What this skill does NOT do

- Does not build LaTeX papers (separate task — see TRACKER for failed
  builds).
- Does not update README links to PDFs (do after first build).
- Does not handle stale feature branches.
- Does not check for the user's private internal-naming concerns —
  that's a separate per-pass review.
