# Gio Della-Libera

I build public systems in series: each repo is a concrete artifact, and each
series is the story that explains why those artifacts belong together. The
implementation through-line is Rust: even when the artifact is a paper, corpus,
game, or design lab, the durable machinery tends to become a Rust CLI, library,
or verifier.

Public repos in this portfolio use [ROLES](https://github.com/giodl73-repo/ROLES),
the `.roles` convention for repository-local review panels.

Day job: VP of Engineering at Microsoft on **Agents 365**. Everything here is
built outside that.

## AI-first development

AI-first development is not about coding faster. It is about making the parts of
engineering that usually get skipped actually happen: research, simulation,
review, validation, critique, and rework before the wrong design hardens.

The pattern is consistent across the portfolio:

1. A repo produces artifacts: code, papers, games, chapters, scorecards, maps, or
   packages.
2. Skills and reviewers evaluate those artifacts against an explicit rubric.
3. Findings become evidence.
4. Repeated evidence becomes a stronger process, a new skill, or a new repo.

The series below are the public map.

## New portfolio highlight: TAXLANE

[TAXLANE](https://github.com/giodl73-repo/TAXLANE) asks a deceptively simple
question: **what should income-tax rates be if government spending claims have
to prove themselves first?**

Instead of beginning with a desired rate or headline savings number, TAXLANE
examines fifteen public-purpose and accounting tracks through one evidence
spine. It tests the fiscal object, source currency, net cost, overlap,
beneficiary and service-continuity effects, implementation burden, and
distribution boundary before admitting a spending reduction. Payment integrity
stays non-additive, interest follows the debt path, dedicated old-age solvency
stays separate, and revenue finances only the scoped remainder.

The completed internal analysis admits **$0.000 billion** in FY2026 primary
spending reductions, retains a scoped **$813.727 billion** ordinary-income
target, and recommends **21/23/33/35/43/46/48** as its preferred analytical
marginal bracket schedule, with distinct behavior-contingency and severe-stress
rails. Zero is a result: unsupported savings are excluded rather than guessed.

The repository includes a 21-deliverable explanation corpus, ten research
papers, three presentations, an accessible six-page local website,
machine-readable closure records, twelve eight-lens review rounds, and 388
passing tests.

Start with the [new TAXLANE README](https://github.com/giodl73-repo/TAXLANE),
the [final briefing bundle](https://github.com/giodl73-repo/TAXLANE/blob/main/docs/explanation/final/briefing-bundle-index.md),
or the [local website source](https://github.com/giodl73-repo/TAXLANE/tree/main/docs/explanation/site).

TAXLANE is an internal analytical recommendation, not enacted law, personal
tax advice, an official score, formal proof of balance, or an authorized public
deployment.

## Series

| Series | What it contains | Start here |
|--------|------------------|------------|
| AI Methodology | decision intelligence and simulated expert review | [series/ai-methodology.md](series/ai-methodology.md) |
| Games Design | puzzle hunts, D&D, board games, escape rooms, and world-building simulators — with shared simulation and UX infrastructure | [series/games-design.md](series/games-design.md) |
| Knowledge Systems | civilization, reference, local-production, and evidence-gated fiscal corpora | [series/knowledge-systems.md](series/knowledge-systems.md) |
| Design Labs | visualization, writing, and music scoring labs | [series/design-labs.md](series/design-labs.md) |
| Election Systems | redistricting, district plans, count evidence, and audit packages | [series/election-systems.md](series/election-systems.md) |
| Standards & Protocols | portable conventions, identifiers, context-transfer formats, and review-panel specs | [series/standards-protocols.md](series/standards-protocols.md) |
| Tools & Infrastructure | markdown, context selection and algebra, harness replay, fetch/cache, graph kernels, and partitioning | [series/tools-infrastructure.md](series/tools-infrastructure.md) |
| Applied Systems | evidence-gated public-system design: highways, rail, grid, ports, water, aviation, connectivity, and applied analytics | [series/applied-systems.md](series/applied-systems.md) |

## The MD family

The MD family is a four-stage Markdown toolchain. Each repository owns one
boundary, so the stack is easy to adopt one layer at a time:

```text
Markdown → MDPATH → MDCROP → MDLOOM → MDPORT
             address    select     build      transfer
```

| Repo | Responsibility |
|------|----------------|
| [MDPATH](https://github.com/giodl73-repo/MDPATH) | Give headings, figures, tables, and sections stable `md://` addresses. |
| [MDCROP](https://github.com/giodl73-repo/MDCROP) | Index, graph, filter, and select bounded Markdown corpus context. |
| [MDLOOM](https://github.com/giodl73-repo/MDLOOM) | Validate, compile, render, and publish Markdown into human-facing formats. |
| [MDPORT](https://github.com/giodl73-repo/MDPORT) | Carry compact `mdport.v1` document and corpus-slice records between tools. |

## Start with

These five repos show the portfolio's artifact-to-context through-line: TAXLANE
is the new evidence-to-rate knowledge-system highlight; ROUTE is the
public-systems flagship; MDCROP selects relevant source context; LATTICE closes
and explains that context; FLETCHER records and replays how an AI harness used
it.

| Repo | What it demonstrates |
|------|----------------------|
| [TAXLANE](https://github.com/giodl73-repo/TAXLANE) | Fifteen evidence-gated fiscal tracks, disciplined zero admission, one accounting spine, and an adaptive analytical rate result. |
| [ROUTE](https://github.com/giodl73-repo/ROUTE) | Evidence-gated Interstate 2.0 research, simulation, maps, design doctrine, and reviewed papers. |
| [MDCROP](https://github.com/giodl73-repo/MDCROP) | Graph-cut context selection and provenance-aware corpus tooling. |
| [LATTICE](https://github.com/giodl73-repo/LATTICE) | Deterministic context closure, meet/join, budgets, frontiers, and receipts. |
| [FLETCHER](https://github.com/giodl73-repo/FLETCHER) | Replayable AI harness events, checkpoints, and LATTICE handoffs. |

ROUTE is open for reference, review, and local adaptation; start with the
[open adoption guide](https://github.com/giodl73-repo/ROUTE/blob/master/docs/adoption/README.md).

The public infrastructure family now extends from highways into
[rail](https://github.com/giodl73-repo/GAUGE),
[connectivity](https://github.com/giodl73-repo/PACKET),
[ports](https://github.com/giodl73-repo/HARBOR),
[water](https://github.com/giodl73-repo/BASIN), and
[aviation](https://github.com/giodl73-repo/TARMAC). See
[Applied Systems](series/applied-systems.md) for the full map and evidence
boundaries.

## How to read the portfolio

The repos are not isolated experiments. They form layers:

- **Methodology** repos define how decisions are researched and reviewed.
- **Artifact** repos produce serious work in games, knowledge, civic systems, and
  design.
- **Infrastructure** repos make those artifacts reproducible: stable markdown
  addresses, compact context-transfer formats, repo-local review panels, corpus
  compilers, context packs, context algebra, replayable harness events, finished
  shared fetch/cache substrate for ROUTE, BISECT, and ICELINES, graph kernels,
  plan packages, audit ledgers, and shared game simulation and UX engines
  (MUDDLE, RALLY, COURT, RACKET).

That is the through-line: build the artifact, build the evaluator, then promote
the reusable Rust substrate when more than one system needs it.

## Reach me

- **Email:** giodl73@gmail.com
- **GitHub:** [@giodl73-repo](https://github.com/giodl73-repo)
