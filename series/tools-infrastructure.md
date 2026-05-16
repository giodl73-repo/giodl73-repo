# Tools & Infrastructure Series

This series contains reusable Rust tools that other systems can adopt: markdown
compilation, graph-cut context, fetch/cache manifests, shared kernels, and graph
partitioning.

| Repo | Role |
|------|------|
| [PROOF](https://github.com/giodl73-repo/PROOF) | Markdown compiler and checker for terminal-first documents, dashboards, math, and diagrams. |
| [CROP](https://github.com/giodl73-repo/CROP) | Graph-cut context cropping and corpus status for AI agents and documentation systems. |
| [FLETCH](https://github.com/giodl73-repo/FLETCH) | Finished shared fetch/cache/bundle substrate for reproducible data acquisition, now adopted by ROUTE, BISECT, and ICELINES, including ICELINES paged stats, expanded Gamecenter, paced player landing, transaction window batch execution, shared manifest-helper adoption, cache-index evidence, and query partition/quiver handoff reporting. |
| [RLINE](https://github.com/giodl73-repo/RLINE) | Shared Rust graph, context, statistics, math, optimization, and history kernels. |
| [METIS-CORE](https://github.com/giodl73-repo/METIS-CORE) | Pure Rust multilevel graph partitioning engine. |

## Why these belong together

These repos are not one product's private internals. They are system components:
compilation, context selection, data acquisition, kernels, and partitioning.
Election, route, sports, corpus, and agent systems can all use them without
inheriting each other's product logic.

RLINE stays here rather than Standards & Protocols because its primary artifact
is a shared Rust kernel workspace. Its manifests and contracts support that
workspace; they are not the repo's standalone public convention.

