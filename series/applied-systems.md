# Applied Systems Series

This series contains domain workbenches that use the same Rust-first,
evidence-heavy style against concrete public systems.

| Repo | Role |
|------|------|
| [ICELINES](https://github.com/giodl73-repo/ICELINES) | NHL analytics, fantasy tools, season data, and historical player/team comparisons. |
| [ROUTE](https://github.com/giodl73-repo/ROUTE) | Interstate 2.0 research and design workbench for corridor evidence, service tiers, simulation, maps, and refinement. |

## Why these belong together

These are applied systems: data-heavy, simulation-friendly, and grounded in
real-world infrastructure. They also show why the infrastructure series exists:
ICELINES, ROUTE, and BISECT have each had to solve fetching, caching, profiling,
and graph analysis locally. FLETCH is now the shared fetch/cache layer for those
three clients; RLINE and METIS-CORE are the shared graph/kernel layer.

## ROUTE evidence boundary

ROUTE is public so its research, assumptions, code, maps, and held claims can be
inspected. Public repository visibility does not imply an official plan,
construction readiness, guaranteed service, agency endorsement, or deployment
approval. Each artifact keeps its own evidence and publication label.
