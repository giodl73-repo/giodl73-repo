# Games Design Series

This series applies the same evidence-and-review loop to games. Games are a hard
test because failure is immediate: a puzzle cannot be solved, a session drags, or
a board game never produces the intended tension.

## Product repos

| Repo | Role |
|------|------|
| [HUNT](https://github.com/giodl73-repo/HUNT) | Puzzle hunt production pipeline with authoring, editing, integration, solver testing, and polish gates. |
| [TIGRIS](https://github.com/giodl73-repo/TIGRIS) | Board-game factory and empirical design-space map built from 150+ reviewed games and the TIGER BEAT framework. |

## Shared infrastructure

The product repos share a layer of reusable Rust tools built for game validation
and interactive UX.

| Repo | Role |
|------|------|
| [MUDDLE](https://github.com/giodl73-repo/MUDDLE) | Shared room-command UX engine with CLI, browser-window, and native Macroquad clients. |
| [RALLY](https://github.com/giodl73-repo/RALLY) | Shared simulation and validation substrate for deterministic runs, event traces, validation reports, and comparison packets. |
| [COURT](https://github.com/giodl73-repo/COURT) | Scalable experience framework contracts: portable state snapshots, actions, scene nodes, and UX intent for terminal, browser, and native surfaces. |
| [RACKET](https://github.com/giodl73-repo/RACKET) | First engine adapter for COURT, turning portable snapshots into native engine frame plans. |

## Why these belong together

The product repos turn play into evidence. The output is creative, but the
process is systematic: run the scenario, observe failure modes, amend the rubric,
and build the next artifact at a higher bar. The infrastructure layer exists
because deterministic runs, shared UX contracts, and validation evidence are too
valuable to rebuild separately in each product repo.
