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

### 2. LICENSE file

- If `LICENSE` is missing at repo root: write the standard MIT LICENSE
  with `Copyright (c) 2026 Gio Della-Libera`.
- If present: leave alone. Note its first line in the report.

### 3. README `## License` section

- Search for `^## License` heading in `README.md`.
- If missing: append `\n---\n\n## License\n\n[MIT](LICENSE) — © 2026 Gio Della-Libera.\n`.
- If present: leave alone.

### 4. `.gitignore` block

- Append the standard local-state block (idempotent — check for marker
  comment first):

  ```
  # Local/editor state (not public)
  .claude/settings.local.json
  .claude/scheduled_tasks.lock
  .DS_Store
  .vscode/
  .idea/
  *.swp
  __pycache__/
  *.pyc
  .pytest_cache/
  .venv/
  venv/
  .env
  .env.local

  # LaTeX build artifacts
  *.aux
  *.bbl
  *.blg
  *.fls
  *.fdb_latexmk
  *.log
  *.out
  *.synctex.gz
  *.toc
  ```

- For any tracked file matching the new patterns, run `git rm --cached`.

### 5. Persona AI-simulation banner

- Find persona files in `personas/`, `.roles/`, `toolkit/profiles/`,
  `agents/` (top-level *.md files in those directories — skip
  `_index.yaml`, `README.md`, etc.).
- For each, check first 800 characters for the marker `AI simulation`.
- If absent, prepend the banner block (after any YAML frontmatter):

  ```
  > **Note:** This is an AI simulation of the named person's published
  > work and public intellectual positions, written by Claude for research
  > and quality-improvement purposes. It is not a statement by the person
  > and does not represent their views, endorsement, or participation.
  ```

- Report files modified vs skipped.

### 6. Per-repo committer config

- `git config user.email "giodl73@gmail.com"`
- `git config user.name "Gio Della-Libera"`

### 7. Pre-rewrite commit

- If steps 2–5 produced any changes: stage and commit with a message
  like `Add license section, AI-sim disclaimers, expand gitignore`.

### 8. History rewrite (committer/author email)

- Stash any remaining uncommitted state (filter-branch refuses to run
  with a dirty tree).
- Run:

  ```
  git filter-branch -f --env-filter '
    if [ "$GIT_COMMITTER_EMAIL" = "giodl@microsoft.com" ]; then export GIT_COMMITTER_EMAIL="giodl73@gmail.com"; fi
    if [ "$GIT_AUTHOR_EMAIL" = "giodl@microsoft.com" ]; then export GIT_AUTHOR_EMAIL="giodl73@gmail.com"; fi
  ' --tag-name-filter cat -- --branches --tags
  ```

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
