# Applied Systems

**Real networks. Explicit service promises. Evidence before advocacy.**

These repos apply the portfolio's Rust-first, evidence-gated method to public
systems. They do not begin with a preferred project. They build a corpus, score
what exists, classify service, find measured gaps, and preserve a rigorous null
result when the proposed intervention is not supported.

## Infrastructure 2.0

| System | Repo | Public question | Current evidence |
|--------|------|-----------------|------------------|
| Highways | [ROUTE](https://github.com/giodl73-repo/ROUTE) | What should the next national road network promise? | **Flagship:** corridor research, service tiers, optimizer, simulation, maps, and evidence-labelled design. |
| Electric grid | [PYLON](https://github.com/giodl73-repo/PYLON) | Where do transfer capability, congestion, redundancy, resilience, or interconnection headroom fail a declared grid promise? | **Core ready:** transmission analysis workspace; first cited system run is next. |
| Passenger rail | [GAUGE](https://github.com/giodl73-repo/GAUGE) | Which corridors fail a credible trip-time, frequency, reliability, or connectivity promise? | **Cited analysis:** 12-corridor frequency run; 8 below the declared bar. |
| Connectivity | [PACKET](https://github.com/giodl73-repo/PACKET) | Where do coverage, capacity, latency, resilience, affordability, or competition fall short? | **Cited analysis:** broadband-divide run with both tested dimensions 50% below the bar. |
| Ports | [HARBOR](https://github.com/giodl73-repo/HARBOR) | Where do channel access, dwell, throughput, hinterland connection, or resilience constrain a gateway? | **Cited analysis:** channel-adequacy run across eight US gateways. |
| Water | [BASIN](https://github.com/giodl73-repo/BASIN) | Where do supply, demand, storage, conveyance, reuse, resilience, or access fail a declared tier? | **Core ready:** scale-aware analysis workspace; first cited system run is next. |
| Wastewater | [DRAIN](https://github.com/giodl73-repo/DRAIN) | Where do collection, conveyance, overflow control, treatment, recovery, or affordability fail a sanitation promise? | **Core ready:** scale-aware sanitation analysis; first cited utility run is next. |
| Aviation | [TARMAC](https://github.com/giodl73-repo/TARMAC) | Where do delay, capacity, connectivity, resilience, competition, or access fail a declared tier? | **Core ready:** scale-aware analysis workspace; first cited network run is next. |
| Healthcare access | [SHIELD](https://github.com/giodl73-repo/SHIELD) | Where do travel, capacity, workforce, referral continuity, affordability, or surge resilience fail? | **Transfer test:** synthetic, aggregate-only core; no patient records or medical advice. |
| Education access | [SLATE](https://github.com/giodl73-repo/SLATE) | Where do seats, educators, programs, pathways, affordability, or resilience fail? | **Corroboration test:** synthetic, aggregate-only core; no student records or individual advice. |

The sibling analysis cores are released at `v0.1.0`. ROUTE remains the deeper
flagship and proving ground.

ROUTE is open for reference, review, and local adaptation. Start with the
[ROUTE open adoption guide](https://github.com/giodl73-repo/ROUTE/blob/master/docs/adoption/README.md)
if you want to reuse the service-promise model for a state, corridor, port,
region, terminal district, or freight network.

## ROUTE map showcase

The tier model is easiest to understand by seeing the national promise spine and
regional connector layer separately.

| T1 national spine | T2 regional connectors |
|-------------------|------------------------|
| [![ROUTE T1 national service spine](https://raw.githubusercontent.com/giodl73-repo/ROUTE/master/maps/beck-schematic.png)](https://github.com/giodl73-repo/ROUTE/blob/master/maps/beck-schematic.png) | [![ROUTE T2 regional service map](https://raw.githubusercontent.com/giodl73-repo/ROUTE/master/maps/beck-schematic-t2-only.png)](https://github.com/giodl73-repo/ROUTE/blob/master/maps/beck-schematic-t2-only.png) |

ROUTE also exercises the same evidence-gated hierarchy workflow outside the
United States:

| Canada | Rhine–Alpine | India |
|--------|---------------|-------|
| [![Canada candidate service hierarchy](https://raw.githubusercontent.com/giodl73-repo/ROUTE/master/maps/international/canada-candidate-hierarchy-v2.png)](https://github.com/giodl73-repo/ROUTE/blob/master/maps/international/canada-candidate-hierarchy-v2.png) | [![Rhine-Alpine candidate hierarchy](https://raw.githubusercontent.com/giodl73-repo/ROUTE/master/maps/international/eu-rhine-alpine-candidate-hierarchy-v2.png)](https://github.com/giodl73-repo/ROUTE/blob/master/maps/international/eu-rhine-alpine-candidate-hierarchy-v2.png) | [![India candidate logistics hierarchy](https://raw.githubusercontent.com/giodl73-repo/ROUTE/master/maps/international/india-candidate-hierarchy-v2.png)](https://github.com/giodl73-repo/ROUTE/blob/master/maps/international/india-candidate-hierarchy-v2.png) |

[Japan](https://github.com/giodl73-repo/ROUTE/blob/master/maps/international/japan-candidate-hierarchy-v2.png)
and
[China](https://github.com/giodl73-repo/ROUTE/blob/master/maps/international/china-candidate-hierarchy-v2.png)
complete the current portability set.

These are structural and candidate-hierarchy review surfaces—not official
networks, approved projects, guaranteed service, construction programs, or
validated ROI claims.

## One method, different systems

```text
PUBLIC SOURCES
    |
    v
CORPUS -> SCORE -> TIER / SERVICE PROMISE -> GAP MAP
                                            |
                                            v
                              CONCEPT -> REVIEW -> DESIGN
```

The shared shape is deliberate; the conclusions are not. A rail corridor is not
a water system, a port is not an airport, and healthcare or education capacity
cannot be forced into a freight-flow model. Each repo owns its dimensions,
demand basis, review panel, evidence labels, and domain-specific failure modes.

## Start with the evidence

| Need | Start here |
|------|------------|
| Portfolio-scale flagship | [ROUTE — Interstate 2.0](https://github.com/giodl73-repo/ROUTE) |
| Public reuse / local adaptation | [ROUTE open adoption guide](https://github.com/giodl73-repo/ROUTE/blob/master/docs/adoption/README.md) |
| Rail finding | [GAUGE frequency and span-of-service analysis](https://github.com/giodl73-repo/GAUGE/blob/master/docs/findings/2026-06-frequency-span-of-service.md) |
| Connectivity finding | [PACKET broadband adoption divide](https://github.com/giodl73-repo/PACKET/blob/master/docs/findings/2026-06-broadband-adoption-divide.md) |
| Ports finding | [HARBOR deep-draft channel tail](https://github.com/giodl73-repo/HARBOR/blob/master/docs/findings/2026-06-deep-draft-channel-tail.md) |
| Requirements and traceability | Each repo's `docs/vtrace/` package |
| Adversarial review | Each repo's `.roles/` parliament and editorial gate |

## Other applied systems

| Repo | Role |
|------|------|
| [ICELINES](https://github.com/giodl73-repo/ICELINES) | NHL analytics, fantasy tools, season data, and historical player/team comparisons. |
| [ZONES](https://github.com/giodl73-repo/ZONES) | Time-zone redistricting along civic boundaries using reusable graph and district-plan systems. |

## Shared infrastructure

The products stay separate, but they reuse public infrastructure where the
contract is genuinely shared:

- [FLETCH](https://github.com/giodl73-repo/FLETCH) — reproducible fetch/cache bundles.
- [RLINE](https://github.com/giodl73-repo/RLINE) and
  [METIS-CORE](https://github.com/giodl73-repo/METIS-CORE) — graph and optimization kernels.
- [CROP](https://github.com/giodl73-repo/CROP) — provenance-aware context selection.
- [ROLES](https://github.com/giodl73-repo/ROLES) — repository-local review panels.
- [VTRACE](https://github.com/giodl73-repo/VTRACE) — requirements, traceability, and verification discipline.

## Evidence boundary

Public repository visibility makes assumptions, code, corpora, findings, held
claims, and limitations inspectable. It does **not** imply an official plan,
engineering readiness, environmental clearance, agency endorsement, funding,
procurement, guaranteed service, or a mandate to build.

Every artifact keeps its own evidence and publication label.
