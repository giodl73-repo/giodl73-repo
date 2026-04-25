# Public-portfolio conventions

Single source of truth for what every public repo in `giodl73-repo` should
look like. Both `/new-repo` (writes) and `/audit-repo` (reads only) defer to
this file. CLAUDE.md summarizes; this is the canonical detail.

If something here changes, every skill that references it picks up the new
behavior automatically. Don't duplicate any of these strings in skill files.

---

## Identity

- **Author**: `Gio Della-Libera`
- **Public email**: `giodl73@gmail.com`
- **GitHub**: `@giodl73-repo`

Per-repo `git config user.email` is set to `giodl73@gmail.com`. Historical
`giodl@microsoft.com` commits are rewritten via `git filter-branch
--env-filter`.

---

## License

Every public repo has an MIT `LICENSE` at the root with this exact form:

```
MIT License

Copyright (c) 2026 Gio Della-Libera

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

The root `README.md` ends with a `## License` section pointing to it:

```markdown
## License

[MIT](LICENSE) — © 2026 Gio Della-Libera.
```

---

## `.gitignore` baseline

This block lives in every public repo's `.gitignore`:

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

`.claude/settings.local.json` and `.claude/scheduled_tasks.lock` must
never be tracked. `.claude/skills/*` IS the public surface.

---

## Persona files

### Where personas live

Standard locations for files that name real (often historical) people whose
voices the repo simulates:

- `personas/`
- `.roles/`
- `toolkit/profiles/` (HUNT-specific)
- `agents/` (when the agent profile mirrors a real person's voice)

Skip when scanning: `_index.yaml`, `README.md`, `__pycache__/`, build dirs.

### AI-simulation disclaimer banner

Every persona-definition file gets this banner near the top (after any
YAML frontmatter, before the H1 heading):

```markdown
> **Note:** This is an AI simulation of the named person's published work
> and public intellectual positions, written by Claude for research and
> quality-improvement purposes. It is not a statement by the person and
> does not represent their views, endorsement, or participation.
```

Detection marker is the substring `AI simulation` in the first 800 characters.
Idempotent — if the marker is present, skip.

### Review-output files

Files that contain AI-generated reviews in the voice of a named expert
(e.g. `reviews/REVIEW-bernstein.md`) get a slightly different banner:

```markdown
> **Note:** This is an AI-generated simulated review, written by Claude in
> the voice of a named-expert persona. It is not an actual review by the
> named person and does not reflect their views or endorsement.
```

---

## Research layout

Repos that publish research follow this convention:

```
<repo>/
├── research/
│   ├── papers/                 # markdown papers (one dir per paper)
│   ├── publications/           # LaTeX papers (one dir per paper, each with main.tex)
│   ├── Makefile                # master build (`make -C research`)
│   └── references.bib          # optional shared bibliography
└── README.md                   # has a `## Research` section near the end
```

The `## Research` section of the root README lists each paper with a
human-readable title and a link to `research/publications/<paper>/main.pdf`
(once built) or `research/papers/<paper>/main.md` for markdown papers.

---

## Internal-naming scrub

Public repos must not contain internal-framework or codename references in
file content, commit messages, file paths, or branch names. The list of
keywords to scrub is maintained as a private artifact, not committed
anywhere public. When in doubt, ask before publishing.

---

## History rewrite snippet

Used by the `/new-repo` skill at the email-rewrite step. Equivalent
output is acceptable; the keys here are using `--env-filter` (so the tree
is unchanged) and `--branches --tags` (so all refs are rewritten):

```bash
git filter-branch -f --env-filter '
  if [ "$GIT_COMMITTER_EMAIL" = "giodl@microsoft.com" ]; then
    export GIT_COMMITTER_EMAIL="giodl73@gmail.com"
  fi
  if [ "$GIT_AUTHOR_EMAIL" = "giodl@microsoft.com" ]; then
    export GIT_AUTHOR_EMAIL="giodl73@gmail.com"
  fi
' --tag-name-filter cat -- --branches --tags
```

`filter-branch` refuses to run with a dirty tree — stash first, pop after.

---

## README rubric (50 points)

Every public-repo README is scored per-section against ten axes, five
points each. Five axes test **substance** (does the section say
something), five test **style** (does it land).

### Substance — does the section say something?

| Axis | Question |
|------|----------|
| **Thesis** | Does it advance the AI-first / emergent-skills argument, not just describe the repo? |
| **Headline** | Does it lead with a memorable claim, not a stat? Is there a line worth quoting? |
| **Principle** | Does it surface a principle a reader can take elsewhere ("forward-only rubrics", "skills earn their place")? |
| **Evidence** | Is there a concrete example/artifact/quote that grounds the abstract — not just numbers? |
| **Stakes** | Does the reader leave with *why this matters* or *what they could do with it*? |

### Style — does it land?

| Axis | Question |
|------|----------|
| **Hook** | Draws a thoughtful outsider in within 30 seconds without front-loading numbers |
| **Voice** | Friendly + confident, not academic-cold |
| **Density** | High info per word without being a wall of stats |
| **Clarity** | Domain newcomer can follow without a glossary |
| **Truth** | Accurate; no overclaim, no underclaim |

### Bands (per section)

| Band | Total | Action |
|------|------:|--------|
| Strong | 45–50 | Keep |
| OK | 38–44 | Small revision |
| Weak | 30–37 | Significant rewrite |
| Cut | < 30 | Section should probably be cut or redesigned |

### Repo aggregate

A repo's README score is the **mean of its section scores**, rounded to
the nearest integer. Recorded in `TRACKER.md` in the **README score**
column.

The rubric is expected to evolve — section scores recorded against an
older rubric version stay frozen until the next rescore. Note the rubric
version (e.g. `v1.0`, `v1.1`) in TRACKER alongside each score.

---

## README alignment with front-door

Each public repo's README must be coherent with `giodl73-repo/README.md`:

- **Faithful upward**: every claim/principle/headline that the front-door
  README makes about a repo must be backed by something in that repo's
  own README.
- **Faithful downward**: every distinctive principle or signature claim
  in a repo's README should have at least a one-line representation in
  the front-door README's stanza for that repo.

Tracked in `TRACKER.md` as the **Aligned** column (Y/N), with a short
gap note when N. The `/readme-score` skill performs the check whenever
the target isn't the front-door repo itself.

---

## TRACKER columns

Each public repo gets a row in `TRACKER.md` with these columns:

| Column | Source convention |
|--------|-------------------|
| LICENSE | this file's "License" section |
| README `## License` | this file's "License" section |
| AI-sim disclaimers on personas | this file's "Persona files" section |
| Internal naming scrubbed | this file's "Internal-naming scrub" section |
| Local state files gitignored | this file's ".gitignore baseline" section |
| Research PDFs built | this file's "Research layout" section |
| README links to PDFs | this file's "Research layout" section |

The `/audit-repo` skill checks each column against this file's rules and
reports `[x]` / `[ ]` / `n/a`. The `/new-repo` skill reads this file and
applies the rules to bring a repo into compliance.
