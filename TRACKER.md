# TRACKER — public repos

Status board for the 10 public repos in `giodl73-repo`. Updated as work happens.

---

## Repo summary

| Repo | What it is | Default branch | Research papers |
|------|------------|---------------:|----------------:|
| [SIGNALS](https://github.com/giodl73-repo/SIGNALS) | feature decision intelligence | `main` | — |
| [PANEL](https://github.com/giodl73-repo/PANEL) | AI-simulated expert review | `main` | 10 (LaTeX) |
| [LUCIA](https://github.com/giodl73-repo/LUCIA) | human chronicle | `master` | 9 (markdown) |
| [MAXIM](https://github.com/giodl73-repo/MAXIM) | reference library | `master` | — |
| [CERES](https://github.com/giodl73-repo/CERES) | local production atlas | `main` | — |
| [REDIST](https://github.com/giodl73-repo/REDIST) | redistricting | `main` | 20 (LaTeX) |
| [HUNT](https://github.com/giodl73-repo/HUNT) | puzzle hunt pipeline | `master` | 7 (LaTeX) |
| [QUEST](https://github.com/giodl73-repo/QUEST) | D&D workshop | `main` | 6 (LaTeX) |
| [TIGRIS](https://github.com/giodl73-repo/TIGRIS) | board game factory | `main` | 6 (LaTeX) |
| [ASPECT](https://github.com/giodl73-repo/ASPECT) | visualization evaluation framework | `main` | — |
| [giodl73-repo](https://github.com/giodl73-repo/giodl73-repo) | profile / front door | `main` | — |

---

## Pre-publication checklist

Things every public repo should have before it's broadcast widely.

|  | LICENSE | README ## License | AI-sim disclaimers on personas | Internal naming scrubbed | Local state files gitignored | Research PDFs built | README links to PDFs | README score (/50) | Aligned |
|---|---|---|---|---|---|---|---|---:|---|
| SIGNALS | [x] | [x] | n/a | [x] | [x] | n/a | n/a | — | — |
| PANEL | [x] | [x] | [x] | [x] | [x] | [x] (10/10) | [x] | — | — |
| LUCIA | [x] | [x] | [x] | [x] | [x] | n/a (md) | n/a | — | — |
| MAXIM | [x] | [x] | n/a | [x] | [x] | n/a | n/a | — | — |
| CERES | [x] | [x] | [x] | [x] | [x] | n/a | n/a | — | — |
| REDIST | [x] | [x] | n/a | [x] | [x] | [x] | [x] | — | — |
| HUNT | [x] | [x] | [x] | [x] | [x] | [~] (6/7) | [x] | — | — |
| QUEST | [x] | [x] | [x] | [x] | [x] | [x] (6/6) | [x] | — | — |
| TIGRIS | [x] | [x] | [x] | [x] | [x] | [x] (6/6) | [x] | — | — |
| ASPECT | [x] | [x] | [x] | [x] | [x] | n/a | n/a | — | — |
| giodl73-repo | [x] | [x] | n/a | [x] | [x] | n/a | n/a | — | n/a |

> **README score** is per the 50-point rubric in
> [conventions.md](.claude/references/conventions.md#readme-rubric-50-points).
> Run `/readme-score` to refresh. **Aligned** = does this repo's README
> stay coherent with the front-door narrative; `n/a` for the front-door
> itself.

---

## Pending — known issues

### LaTeX build failures (1 remaining of 8)

| Repo | Paper | Status |
|------|-------|--------|
| HUNT | `games-human-ai-calibration` | pgfplots chart issue with `symbolic_y_coords` and `Rdg.\ Reward` data label — needs hand-fix (chart data uses brace-wrapped labels that pgfplots can't reconcile with stored coords) |

### Other follow-ups

- A handful of `*.aux`, `*.log`, `*.out` files were committed in HUNT before
  `.gitignore` covered them. Untrack on next pass.
- Stale feature branches still pushed to a few repos — review/close.

---

## Operational rules

1. Every commit uses `giodl73@gmail.com`.
2. `.claude/settings.local.json` and `.claude/scheduled_tasks.lock` are
   gitignored. `.claude/skills/*` IS the public surface.
3. Public repos must not contain internal framework names or codenames.
4. Real-person personas in `.roles/` and review files carry an AI-simulation
   disclaimer banner.
5. Research lives at `research/papers/` (markdown) and/or `research/publications/`
   (LaTeX). LaTeX repos have a master `research/Makefile`. Root README has a
   `## Research` section near the end.
6. MIT LICENSE in every repo, copyright "Gio Della-Libera".
