# Games Design Series

This series applies the same evidence-and-review loop to games. Games are a hard
test because failure is immediate: a puzzle cannot be solved, a session drags, or
a board game never produces the intended tension.

## Product repos

| Repo | Role |
|------|------|
| [HUNT](https://github.com/giodl73-repo/HUNT) | Puzzle hunt production pipeline with authoring, editing, integration, solver testing, and polish gates. |
| [QUEST](https://github.com/giodl73-repo/QUEST) | D&D workshop where adventures, player styles, and rubric amendments emerge from play. |
| [TIGRIS](https://github.com/giodl73-repo/TIGRIS) | Board-game factory and empirical design-space map built from 150+ reviewed games and the TIGER BEAT framework. |
| [AMAZE](https://github.com/giodl73-repo/AMAZE) | Escape-room design workshop for physical built environments: puzzle design, simulation, harness, and build planning. |
| [BANISH](https://github.com/giodl73-repo/BANISH) | Video-game and world-building simulator lab, starting with settlement survival systems and the Pilgrim Loss vertical slice. |

## Shared infrastructure

The product repos share a layer of reusable Rust tools built for game validation
and interactive UX.

| Repo | Role |
|------|------|
| [MUDDLE](https://github.com/giodl73-repo/MUDDLE) | Shared room-command UX engine. BANISH, AMAZE, QUEST, and TIGRIS host their own playable experiences through MUDDLE's adapter contracts, with CLI, browser-window, and native Macroquad clients. |
| [RALLY](https://github.com/giodl73-repo/RALLY) | Shared simulation and validation substrate. Deterministic runs, event traces, validation reports, and comparison packets used across AMAZE, QUEST, HUNT, TIGRIS, and BANISH. |
| [COURT](https://github.com/giodl73-repo/COURT) | Scalable experience framework contracts: portable state snapshots, actions, scene nodes, and UX intent for terminal, browser, and native surfaces. |
| [RACKET](https://github.com/giodl73-repo/RACKET) | First engine adapter for COURT. Turns COURT snapshots into native engine frame plans. AMAZE Prism Vault and TIGRIS Parliament exercise RACKET as adoption fixtures. |

## Why these belong together

All five product repos turn play into evidence. The output is creative, but the
process is systematic: run the scenario, observe failure modes, amend the rubric,
and build the next artifact at a higher bar. The infrastructure layer exists
because deterministic runs, shared UX contracts, and validation evidence are too
valuable to rebuild separately in each product repo.
