# Tools & Infrastructure Series

This series contains reusable Rust tools that other systems can adopt: markdown
compilation, context selection, context algebra, harness replay, fetch/cache
manifests, shared kernels, and graph partitioning.

| Repo | Role |
|------|------|
| [PROOF](https://github.com/giodl73-repo/PROOF) | Markdown compiler and checker for terminal-first documents, dashboards, math, and diagrams. |
| [CROP](https://github.com/giodl73-repo/CROP) | Graph-cut context cropping and corpus status for AI agents and documentation systems. |
| [LATTICE](https://github.com/giodl73-repo/LATTICE) | Product-neutral context algebra for deterministic closure, meet/join, budgets, frontiers, packs, and receipts. |
| [FLETCHER](https://github.com/giodl73-repo/FLETCHER) | Replayable AI harness event, checkpoint, and LATTICE handoff contracts with a minimal public CLI. |
| [FLETCH](https://github.com/giodl73-repo/FLETCH) | Shared fetch/cache/bundle substrate for reproducible data acquisition across ROUTE, BISECT, and ICELINES. |
| [RLINE](https://github.com/giodl73-repo/RLINE) | Shared Rust graph, context, statistics, math, optimization, and history kernels. |
| [METIS-CORE](https://github.com/giodl73-repo/METIS-CORE) | Pure Rust multilevel graph partitioning engine. |

## Why these belong together

These repos are not one product's private internals. They are system components:
compilation, context selection, context algebra, harness replay, data
acquisition, kernels, and partitioning. Election, route, sports, corpus, and
agent systems can all use them without inheriting each other's product logic.

## Context and harness stack

| Layer | Repo | Responsibility |
|------|------|----------------|
| Candidate selection | [CROP](https://github.com/giodl73-repo/CROP) | Find and pack the relevant source neighborhood with provenance. |
| Semantic closure | [LATTICE](https://github.com/giodl73-repo/LATTICE) | Close, combine, budget, explain, and receipt context. |
| Harness control | [FLETCHER](https://github.com/giodl73-repo/FLETCHER) | Record, checkpoint, project, and replay how an AI harness uses context. |
| Graph partitioning | [METIS-CORE](https://github.com/giodl73-repo/METIS-CORE) | Supply optional low-level partitioning without owning context semantics. |

The public LATTICE and FLETCHER repositories are product-neutral cores. They do
not include private sessions, customer material, approval records, funding
material, or organization-specific integrations.

RLINE stays here rather than Standards & Protocols because its primary artifact
is a shared Rust kernel workspace. Its manifests and contracts support that
workspace; they are not the repo's standalone public convention.
