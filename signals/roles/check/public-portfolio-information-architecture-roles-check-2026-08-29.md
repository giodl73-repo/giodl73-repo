---
skill: roles-check
topic: public-portfolio-information-architecture
date: 2026-08-29
roles_used: 3
p1_count: 0
verdict: APPROVED-WITH-CONDITIONS
---

# Roles check: public portfolio information architecture

## Artifact

Design specification for the profile README, seven family pages, capability
lines, public repository membership, evidence routes, and private-to-public
projection boundary.

## Selected roles

| Role | Why selected |
|---|---|
| Series Narrative Curator | Reviews the thesis, seven families, capability lines, and cross-family placement. |
| Public Surface Scrubber | Reviews public clarity, non-claims, terminology, and private-boundary leakage. |
| Repo Link Steward | Reviews canonical destinations, renamed repositories, compatibility routes, and registry alignment. |

## Series Narrative Curator

| # | Finding | Severity | Section | Recommendation |
|---|---|---|---|---|
| 1 | The artifact/evidence/evaluation/substrate thesis explains the portfolio more durably than a list of technologies. | P3 | 1, 3 | Lead the profile with this thesis and keep Rust subordinate to it. |
| 2 | Seven families create a coherent complete map, while capability lines prevent the families from becoming flat catalogs. | P3 | 2, 4 | Preserve both hierarchy levels in the implementation. |
| 3 | Developer & Agent Platform correctly distinguishes executable substrate from Portfolio Methods, but VTRACE cross-listing could confuse ownership. | P2 | 4.6 | Render VTRACE only once canonically and label the platform mention as a reference. |
| 4 | Business & Operations is thin but has a distinct operational-allocation promise rather than acting as miscellaneous. | P3 | 4.7 | Retain it as a family and reassess only through portfolio admission. |
| 5 | The existing eight-page narrative cannot remain authoritative beside the new seven-family map. | P2 | 5, 9 | Make old pages compatibility stubs and remove duplicate catalogs. |

## Public Surface Scrubber

| # | Finding | Severity | Section | Recommendation |
|---|---|---|---|---|
| 1 | The initial public design named private registry mechanics and disclosed internal classification detail. | P2 | 6, 8, 9 | Say “private portfolio registry” and remove internal counts and disposition vocabulary. |
| 2 | Public evidence labels are separated cleanly from coordination and lifecycle state. | P3 | 7 | Enforce the boundary in schema validation. |
| 3 | Family promises include necessary non-claims for simulation, advice, authority, and validation. | P3 | 4 | Keep boundaries adjacent to the claims they qualify. |
| 4 | Several platform terms remain specialist language even after the accessibility amendment. | P2 | 4.6, 5 | Require plain-language expansions on public pages, not only in the design. |
| 5 | The professional boundary is appropriate but must remain an intentionally verified self-description. | P3 | 5 | Confirm the current wording whenever the profile opening changes. |

## Repo Link Steward

| # | Finding | Severity | Section | Recommendation |
|---|---|---|---|---|
| 1 | FACTORIUM-to-LEXICON repair is correctly isolated as the first shippable pulse. | P2 | 9 | Complete it before presenting the hierarchy as current. |
| 2 | Seven canonical destinations are now explicit and testable. | P3 | 5 | Add all seven targets and validate them before switching the index. |
| 3 | Compatibility stubs preserve old inbound paths, but links into old page sections need mapped destinations. | P2 | 5 | Include the closest canonical section anchor in each stub. |
| 4 | Exact-set validation prevents both omitted public members and duplicate canonical ownership. | P3 | 6, 8 | Compare the manifest with the public-safe registry projection in each portfolio pulse. |
| 5 | Retired-name allowances are constrained to explicit historical paths. | P3 | 6 | Keep FACTORIUM absent from all current profile and family prose. |

## Synthesis

Roles reviewed: 3

P1 blockers: 0 | P2 issues: 6 | P3 notes: 9

Verdict: **APPROVED-WITH-CONDITIONS**

Top finding: the hierarchy is coherent, but the public design itself must not
publish private registry vocabulary or counts.

Cross-role consensus: one canonical hierarchy, explicit cross-references, and
tested compatibility routes are necessary to prevent the old and new portfolio
stories from competing.

## Amendments

1. Replace public mentions of private mechanics and internal classification detail with a
   generic private-registry boundary.
2. Require cross-family references and compatibility stubs to link to exact
   canonical sections without duplicating membership.
3. Make plain-language term expansion and current self-description checks
   explicit publication criteria.

## Fixed point

The design was amended for all three conditions. Remaining P2 work is assigned
to the implementation pulses and is not hidden as completed design work. No
role found a new design blocker.
