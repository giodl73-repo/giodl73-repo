# Tools & Infrastructure Series

This series contains reusable Rust tools and bounded infrastructure research:
native-code blueprints, markdown compilation, context selection, context
algebra, harness replay, fetch/cache manifests, shared kernels, and graph
partitioning.

| Repo | Role |
|------|------|
| [CODEPRINTS](https://github.com/giodl73-repo/CODEPRINTS) | Blueprint-first native-code research with an executable Rust/.NET compiler, semantic compatibility evidence, and bounded owner pilots. |
| [MDLOOM](https://github.com/giodl73-repo/MDLOOM) | Markdown compiler and checker for terminal-first documents, dashboards, math, and diagrams. |
| [MDCROP](https://github.com/giodl73-repo/MDCROP) | Markdown corpus indexing, graph selection, and bounded context packing. |
| [LATTICE](https://github.com/giodl73-repo/LATTICE) | Product-neutral context algebra for deterministic closure, meet/join, budgets, frontiers, packs, and receipts. |
| [FLETCHER](https://github.com/giodl73-repo/FLETCHER) | Replayable AI harness event, checkpoint, and LATTICE handoff contracts with a minimal public CLI. |
| [FLETCH](https://github.com/giodl73-repo/FLETCH) | Shared fetch/cache/bundle substrate for reproducible data acquisition across ROUTE, BISECT, and ICELINES. |
| [RLINE](https://github.com/giodl73-repo/RLINE) | Shared Rust graph, context, statistics, math, optimization, and history kernels. |
| [METIS-CORE](https://github.com/giodl73-repo/METIS-CORE) | Pure Rust multilevel graph partitioning engine. |

## Why these belong together

These repos are not one product's private internals. They are system components
or bounded infrastructure investigations: native-code compilation, document
compilation, context selection, context algebra, harness replay, data
acquisition, kernels, and partitioning. Election, route, sports, corpus, agent,
and developer-tool systems can evaluate them without inheriting each other's
product logic.

CODEPRINTS is deliberately not presented as a general portfolio dependency.
Its compiler and scenarios are executable evidence, while product expansion
remains frozen until a working owner system demonstrates value from one
compatibility-analysis or semantic-diff capability.

## MD family

MDLOOM and MDCROP are the executable members of a four-repository Markdown
toolchain:

```text
Markdown → MDPATH → MDCROP → MDLOOM → MDPORT
             address    select     build      transfer
```

[MDPATH](https://github.com/giodl73-repo/MDPATH) and
[MDPORT](https://github.com/giodl73-repo/MDPORT) live in Standards & Protocols
because their primary artifacts are interoperable conventions. MDCROP and
MDLOOM live here because their primary artifacts are executable Rust tools.

## Context & Harness family

```text
Sources → FLETCH → MDCROP → LATTICE → FLETCHER
           fetch     select     close       replay
```

| Layer | Repo | Responsibility |
|------|------|----------------|
| Acquisition | [FLETCH](https://github.com/giodl73-repo/FLETCH) | Fetch, verify, cache, partition, and bundle source material. |
| Candidate selection | [MDCROP](https://github.com/giodl73-repo/MDCROP) | Find and pack a bounded source neighborhood with provenance. |
| Semantic closure | [LATTICE](https://github.com/giodl73-repo/LATTICE) | Close, combine, budget, explain, and receipt context. |
| Harness capture and replay | [FLETCHER](https://github.com/giodl73-repo/FLETCHER) | Record, checkpoint, project, and replay how an AI harness uses context. |

The family is a pipeline, not a monolith. Each repository can be adopted
independently, and each boundary remains inspectable.

METIS-CORE supplies optional low-level graph partitioning without owning
context semantics.

The public LATTICE and FLETCHER repositories are product-neutral cores. They do
not include private sessions, customer material, approval records, funding
material, or organization-specific integrations.

RLINE stays here rather than Standards & Protocols because its primary artifact
is a shared Rust kernel workspace. Its manifests and contracts support that
workspace; they are not the repo's standalone public convention.

## R package family

RLINE is the product-neutral foundation for the election package family:

```text
                    ┌→ RPLAN  — district-plan packages, IO, and audits ─┐
RLINE — kernels ────┤                                                   ├→ BISECT
                    └→ RCOUNT — count packages and audit replay ────────┘
```

RPLAN, RCOUNT, and BISECT are documented in
[Election Systems](election-systems.md). The dependency direction stays
outward from RLINE; the kernel workspace does not depend on election products.
