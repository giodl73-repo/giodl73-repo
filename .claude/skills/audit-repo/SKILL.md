---
name: audit-repo
description: Read-only inspection of a repo against the public-portfolio readiness checklist documented in TRACKER.md. Reports status without making any changes. Use when you want to know where a repo stands before deciding whether to run /new-repo (the opinionated, write-mode sibling).
---

# audit-repo — read-only readiness check

Sibling of `/new-repo`, but inspects only — no commits, no force-push, no
file edits. Walks the same checklist and emits a status report. Use this
when you're surveying the portfolio or sanity-checking a repo before
deciding whether to apply the opinionated prep pass.

## When to use

- You want to know which repos are out of compliance.
- You're about to run `/new-repo` but want to see what it would change first.
- You're updating `TRACKER.md` and need fresh per-repo status.

## When not to use

- If you're ready to fix things, just run `/new-repo`. This skill is for
  *looking*, not *fixing*.

## Inputs

- **Repo path** (defaults to cwd). Must be a git repo.

> All "what passes" rules below come from
> [`.claude/references/conventions.md`](../../references/conventions.md). This
> skill checks against that file; if a convention changes, edit the
> conventions doc — not this skill.

## Checks

For each item, report `[x]` (pass), `[ ]` (fail / needs work), or `n/a`
(does not apply to this repo).

### 1. LICENSE present
- Check for `LICENSE` at repo root.
- Report: `[x]` if MIT and named correctly; `[ ]` otherwise.

### 2. README `## License` section
- Grep `^## License` in `README.md`.

### 3. Persona AI-simulation disclaimers
- Find files in standard persona locations (`personas/`, `.roles/`,
  `toolkit/profiles/`, `agents/`).
- For each, check the first 800 characters for the marker `AI simulation`.
- Report: `[x]` if all persona files have the banner; `[ ]` with a count
  of missing ones; `n/a` if the repo has no persona files.

### 4. Internal naming scrubbed
- Search committed text files for the user's internal-framework keywords
  (the user maintains their own list — this skill checks for whatever the
  current portfolio expects to see scrubbed).
- Report: `[x]` if zero hits; `[ ]` with a count of files with hits.

### 5. Local state files gitignored
- Check `.gitignore` covers `.claude/settings.local.json` and
  `.claude/scheduled_tasks.lock`.
- Check `git ls-files` doesn't return either.

### 6. Commit emails
- `git log --format='%ce' | sort | uniq -c`.
- Report: `[x]` if all `giodl73@gmail.com` (and optionally
  `noreply@github.com` for merge commits); `[ ]` with the breakdown if
  any `giodl@microsoft.com` remain.

### 7. Research PDFs (LaTeX repos only)
- Count `*.tex` files at `research/publications/*/main.tex`.
- Count corresponding `*.pdf` files at `research/publications/*/main.pdf`.
- Report `[x]` if all source files have a built PDF; `[~]` with `M/N` for
  partial; `n/a` if no LaTeX papers in this repo.

### 8. README links to PDFs
- Search `README.md` for `research/publications/` links.
- Report: `[x]` if all such links target `…/main.pdf` (not the source dir);
  `[ ]` if any point at the source dir; `n/a` if no research links.

### 9. README score (recorded)

- Read the recorded score from `giodl73-repo/TRACKER.md` for this repo.
- Report the score and band (Strong / OK / Weak / Cut) per the rubric in
  conventions.md.
- If no score is recorded yet, report `not yet scored — run /readme-score`.

### 10. README aligned with front-door

- Read the recorded `Aligned` column from `TRACKER.md`.
- Report `Y` / `N` / `n/a` (front-door itself).
- For a fresh alignment check, the user runs `/readme-score` against
  the target repo (which performs alignment as part of its run).

## Output format

A status block, suitable for pasting into `TRACKER.md`:

```
=== <repo>: audit-repo report ===

remote:           github.com/giodl73-repo/X
default branch:   main
commits:          73 (8 with giodl@microsoft.com)

[x] LICENSE present (MIT, © 2026 Gio Della-Libera)
[ ] README ## License section — missing
[~] Persona disclaimers — 6 of 10 files have banner
[x] Internal naming scrubbed
[ ] Local state files gitignored — settings.local.json IS tracked
[ ] Commit emails — 8 commits use giodl@microsoft.com
[x] Research PDFs — 6/6 built
[ ] README links to PDFs — 4 of 6 still point at source dirs

Suggested next step: run /new-repo to apply the standard fixes.
```

If everything is `[x]` or `n/a`, the report ends with:

```
Repo passes the public-readiness baseline. No /new-repo run needed.
```

## What this skill does NOT do

- Does not modify any file.
- Does not run `git filter-branch`, `git commit`, `git push`, or
  `git rm --cached`.
- Does not build LaTeX papers — it only counts source-vs-PDF.
- Does not check the user's evolving private-naming concerns. If a new
  internal codename starts leaking, update the keyword list in the
  conventions section of `CLAUDE.md`, then rerun this skill.
