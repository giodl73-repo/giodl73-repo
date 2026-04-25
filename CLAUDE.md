# giodl73-repo — house rules

You're in Gio's GitHub profile repo. This is the front door for the public
portfolio of personal-account repos.

## What's here

- **`README.md`** — public profile narrative; intro + AI-first development
  thesis + the portfolio breakdown.
- **`TRACKER.md`** — status board for the 10+ public repos. Per-repo
  checklist columns track readiness (LICENSE, AI-sim disclaimers, gitignore,
  PDFs, etc.). Read this first when working on any portfolio repo.
- **`HOPPER.md`** — future-project ideas list. Where new repo concepts go
  before they get a home.
- **`.claude/skills/new-repo/`** — opinionated 10-step prep pass for a new
  public repo (writes changes).
- **`.claude/skills/audit-repo/`** — read-only sibling; reports a repo's
  status against the TRACKER columns without making changes.

## Portfolio at a glance

The public repos under `giodl73-repo` on GitHub. Local path mappings are in
each cloned working tree's `.git/config`; don't hardcode paths.

| Repo | Theme |
|------|-------|
| SIGNALS | feature decision intelligence |
| PANEL | AI-simulated expert review |
| LUCIA | human chronicle (narrative encyclopedia) |
| MAXIM | reference library |
| CERES | local production atlas |
| REDIST | automated congressional redistricting |
| HUNT | puzzle hunt production pipeline |
| QUEST | D&D workshop |
| TIGRIS | board game factory |
| ASPECT | visualization evaluation framework |
| giodl73-repo | this profile repo |

## Conventions across all public repos

1. **Committer email** is `giodl73@gmail.com`. Set per-repo, not globally.
   Historical commits with `giodl@microsoft.com` get rewritten via
   `git filter-branch --env-filter`.
2. **MIT LICENSE** at root, copyright `Gio Della-Libera`. Root README has
   a `## License` section near the end linking to it.
3. **No internal-framework naming in public content.** No internal
   codenames, wave/release names, or private-tooling references in
   files committed to a public repo. Scrub before push.
4. **Personas naming real people** (in `personas/`, `.roles/`,
   `toolkit/profiles/`, `agents/`, or review-output files) carry the
   AI-simulation disclaimer banner near the top.
5. **`.claude/settings.local.json`** is gitignored and never tracked.
   `.claude/skills/*` IS the public surface.
6. **Research lives at** `research/papers/` (markdown) and/or
   `research/publications/` (LaTeX). LaTeX repos have a master
   `research/Makefile`. The root README has a `## Research` section
   linking each paper to its built `main.pdf`.
7. **Default branch** varies — most repos are `main`, a few are `master`.
   Don't assume.

## When working on a portfolio repo

- Read TRACKER.md first to see where the repo stands.
- For a brand-new repo: run `/new-repo` (or follow the steps in
  `.claude/skills/new-repo/SKILL.md`).
- For a status check: run `/audit-repo` (read-only).
- For an existing repo with a specific change: just edit. The conventions
  above are the baseline; everything else is up to the repo's own
  conventions in its own CLAUDE.md (if it has one).

## Author / contact

- **Email**: `giodl73@gmail.com`
- **GitHub**: [@giodl73-repo](https://github.com/giodl73-repo)
