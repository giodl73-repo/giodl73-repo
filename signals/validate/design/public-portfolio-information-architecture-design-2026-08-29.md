---
skill: validate-design
topic: public-portfolio-information-architecture
date: 2026-08-29
reviewer_count: 9
p1_count: 0
p2_count: 17
p3_count: 19
domain_roles_active:
  - Information Architect
  - Accessibility and Plain-Language Reviewer
  - Public Boundary and Privacy Reviewer
---

# Design validation: public portfolio information architecture

## BLOCK 0 — Content signal catalogue

| Signal phrase | Domain category |
|---|---|
| “five progressively deeper levels” and “seven stable family promises” | information architecture |
| “Markdown structure and accessibility checks” | accessibility |
| “No private owner, wait state, closure state, local path, or private repository” | privacy and public-boundary governance |
| “versioned public manifest” | data contract |
| “retired names” and “compatibility links” | migration and link stability |

## BLOCK 1 — Expert roster

Stock table:

| Reviewer | Role |
|---|---|
| Architect | Stock |
| Code-Quality | Stock |
| Documentation | Stock |
| Testing | Stock |
| Process | Stock |
| Implementation | Stock |

Domain expert table:

| Signal detected | Expert added | Reason |
|---|---|---|
| “five progressively deeper levels” and “seven stable family promises” | Information Architect | The design must support progressive disclosure and reliable wayfinding across a large hierarchy. |
| “Markdown structure and accessibility checks” | Accessibility and Plain-Language Reviewer | The profile and tables are public navigation surfaces that must work for assistive technology and non-expert readers. |
| “No private owner, wait state, closure state, local path, or private repository” | Public Boundary and Privacy Reviewer | A private-to-public projection requires an explicit deny-by-default data boundary. |
| “versioned public manifest” | No expert needed | The Architect and Code-Quality stock disciplines can review this bounded local data contract. |
| “retired names” and “compatibility links” | No expert needed | Documentation, Testing, and Implementation cover rename and link migration. |

BLOCK 1 domain count = 3

## BLOCK 1.5 — Roster commitment

| Reviewer | Role | Source |
|---|---|---|
| Information Architect | Domain expert | Domain |
| Accessibility and Plain-Language Reviewer | Domain expert | Domain |
| Public Boundary and Privacy Reviewer | Domain expert | Domain |
| Architect | Stock discipline | Stock |
| Code-Quality | Stock discipline | Stock |
| Documentation | Stock discipline | Stock |
| Testing | Stock discipline | Stock |
| Process | Stock discipline | Stock |
| Implementation | Stock discipline | Stock |

Conformance: domain row count is 3 and all domain names exactly match BLOCK 1.

## BLOCK 2 — Per-reviewer findings

### Information Architect

| # | Finding | Sev | Section | Recommendation |
|---|---|---|---|---|
| 1 | The tier model is strong, but stable destinations for the seven canonical family pages are not named. | P2 | 2, 5, 9 | Specify canonical file paths and the compatibility behavior of every old series URL. |
| 2 | “Three starting routes” are named by internal categories rather than reader intentions. | P2 | 5 | Phrase routes as goals: understand a public system, explore a body of knowledge, or reuse machinery. |
| 3 | Capability lines provide useful middle-level structure and keep the profile from becoming a 76-row catalog. | P3 | 4 | Preserve capability lines as the primary family-page navigation. |
| 4 | Cross-family references can produce apparent duplicate ownership if visual treatment is not distinct. | P3 | 4.6, 6 | Render references separately from canonical membership and label them consistently. |

### Accessibility and Plain-Language Reviewer

| # | Finding | Sev | Section | Recommendation |
|---|---|---|---|---|
| 1 | The design names accessibility checks but does not define testable heading, link-label, table, or diagram requirements. | P2 | 8 | Add explicit structural acceptance criteria and an accessible text equivalent for every diagram. |
| 2 | Large repository tables may be difficult to navigate on narrow screens and with screen readers. | P2 | 5 | Require short tables grouped by capability line plus adjacent prose summaries. |
| 3 | The family promises generally use concrete verbs and explain non-claims. | P3 | 4 | Keep the promise/boundary pair at the top of every family page. |
| 4 | Terms such as “context closure” and “canonical identity” need a first-use explanation. | P3 | 4.3, 4.6 | Expand specialized terms in reader-facing prose before using shorthand. |

### Public Boundary and Privacy Reviewer

| # | Finding | Sev | Section | Recommendation |
|---|---|---|---|---|
| 1 | An inclusion flag alone is not a sufficient private-to-public export control. | P2 | 6 | Define an allowlisted public schema; reject every unknown field and all non-public records. |
| 2 | The repository-boundary migration step could accidentally publish private planning rationale. | P2 | 9 | Record only the resulting public inclusion or exclusion; retain reasons and coordination state in the private registry. |
| 3 | The separation between public evidence labels and private workflow states is explicit and appropriate. | P3 | 7 | Enforce the separation in the manifest validator. |
| 4 | Business & Operations correctly avoids implying hidden private applications. | P3 | 4.7 | Use the same no-inference rule anywhere public membership is intentionally incomplete. |

### Architect

| # | Finding | Sev | Section | Recommendation |
|---|---|---|---|---|
| 1 | Ownership is split sensibly, but the handoff contract between private-registry projection and child editorial content is underspecified. | P2 | 6, 8 | Define immutable identity fields, child-owned prose fields, and conflict behavior. |
| 2 | The design does not define whether family pages are generated, hand-authored, or validated hybrids. | P2 | 6 | Choose validated hand-authored pages driven by a manifest, consistent with the stated “checks, not generated prose” rule. |
| 3 | The five-tier model separates portfolio state from repository proof cleanly. | P3 | 2 | Treat this as the architectural invariant for subsequent edits. |
| 4 | Canonical ownership plus cross-family references avoids forcing a repository into only one reader route. | P3 | 4, 6 | Encode canonical family once and references as typed edges. |

### Code-Quality

| # | Finding | Sev | Section | Recommendation |
|---|---|---|---|---|
| 1 | “Versioned manifest” lacks a schema identifier and deterministic ordering rule. | P2 | 6 | Add a schema name, stable family/capability/repository ordering, and strict parser behavior. |
| 2 | Retired-name scanning should use explicit aliases instead of an expanding ad hoc regex. | P3 | 6, 8 | Store retired public names in the manifest or validator fixture. |
| 3 | Repository descriptions should have a length and punctuation contract to prevent table degradation. | P3 | 6 | Set a concise plain-text purpose limit and disallow Markdown in manifest purpose fields. |
| 4 | Validation commands need one stable entry point. | P3 | 8 | Add a single proof script that invokes schema, membership, link, and Markdown checks. |

### Documentation

| # | Finding | Sev | Section | Recommendation |
|---|---|---|---|---|
| 1 | Compatibility links are promised, but GitHub Markdown has no redirect mechanism. | P2 | 9 | Retain old files as concise moved-page stubs pointing to canonical family pages. |
| 2 | The “recommended entry” sentences are useful but do not state the reader goal served by each choice. | P2 | 4 | Convert each recommendation into a small “Choose this if…” route. |
| 3 | Removing volatile counts from the profile materially reduces drift. | P3 | 5 | Keep current quantitative claims in child READMEs and dated releases. |
| 4 | The governing narrative is distinctive and more durable than a Rust-first slogan alone. | P3 | 1, 3 | Lead with the narrative and position Rust as implementation discipline. |

### Testing

| # | Finding | Sev | Section | Recommendation |
|---|---|---|---|---|
| 1 | Completeness is not testable until the expected public repository set is fixed in a manifest fixture. | P2 | 6, 8 | Require exact-set comparison between manifest membership and projected public inventory. |
| 2 | Link checks alone will not catch a repository listed under the wrong capability line. | P2 | 8 | Validate page membership and canonical ownership against the manifest. |
| 3 | Rename handling needs positive and negative fixtures. | P3 | 8, 9 | Test that LEXICON is present, FACTORIUM is absent from current pages, and historical fixtures remain permitted. |
| 4 | The proof script should be exercised in GitHub Actions on pull requests. | P3 | 8 | Add one non-network structural job and isolate optional live-link checks. |

### Process

| # | Finding | Sev | Section | Recommendation |
|---|---|---|---|---|
| 1 | The migration has ordered steps but no review/commit boundary between design, manifest, pages, and automation. | P2 | 9 | Split work into independently reviewable pulses with explicit exit conditions. |
| 2 | Some public repositories are not yet represented in the governed portfolio. | P2 | 9 | Make the private-registry classification audit a separate gate, not an implicit front-door copy decision. |
| 3 | Existing front-door roles are correctly retained as the publication gate. | P3 | 8 | Record their findings in the public repo for each narrative migration. |
| 4 | The private portfolio registry remains the appropriate coordination authority. | P3 | 6, 8 | Keep child implementation and later registry pointer admission in separate changes. |

### Implementation

| # | Finding | Sev | Section | Recommendation |
|---|---|---|---|---|
| 1 | Rewriting all family pages before the manifest exists risks another manually inconsistent snapshot. | P2 | 9 | Land schema/manifest validation before completing the seven page rewrites. |
| 2 | The first migration step should repair the public FACTORIUM error immediately without waiting for the full hierarchy. | P2 | 9 | Make the rename and count removal the first independently shippable pulse. |
| 3 | Existing old page names can preserve inbound links while canonical pages are introduced. | P3 | 9 | Use short compatibility stubs and test their targets. |
| 4 | The current repository already contains local proof scripts that can become the single CI entry point. | P3 | 8 | Extend existing checks rather than introduce a parallel validation framework. |

## BLOCK 3 — Synthesis

Overall verdict: APPROVED-WITH-CONDITIONS

P1 blockers (must resolve before implementation):

- None — proceed to targeted amendments.

P2 conditions (must resolve before sign-off):

- Information Architect 1–2 — name stable routes and express entry paths as reader goals.
- Accessibility 1–2 — make structural accessibility and table behavior testable.
- Public Boundary 1–2 — use an allowlisted export and keep disposition reasons private.
- Architect 1–2 — define field ownership and validated-hand-authored page behavior.
- Code-Quality 1 — define schema identity and deterministic ordering.
- Documentation 1–2 — specify compatibility stubs and goal-based entry routes.
- Testing 1–2 — validate the exact public set and canonical page membership.
- Process 1–2 — establish pulse boundaries and separately disposition unclassified repos.
- Implementation 1–2 — sequence manifest before full rewrite while shipping the stale rename first.

Cross-reviewer consensus:
The five-tier model and seven-family promises are sound. Reviewers consistently
required a stricter private-to-public contract, stable navigation destinations,
testable accessibility, and an incremental migration that does not recreate
manual drift.

Strongest signal:
The front door can be complete and readable only if a strict public manifest
governs membership while human-authored pages govern meaning.

## AMEND

1. Expand Navigation Design with canonical page paths, goal-based entry routes,
   compatibility-stub behavior, and accessible family-page structure.
2. Expand Public Portfolio Manifest with an allowlisted schema, deterministic
   order, field ownership, strict rejection, and exact-set validation.
3. Replace the linear migration with reviewable pulses and add measurable
   acceptance criteria, including the separate private-registry disposition of
   public repositories outside the governed manifest.

## Amendments applied and fixed point

All three amendments were applied to
`docs/portfolio-information-architecture.md`:

1. Seven stable canonical paths, compatibility-stub rules, goal-based routes,
   and structural accessibility requirements now govern navigation.
2. `giodl73.public-portfolio.v1` now has an allowlisted field contract,
   deterministic ordering, strict rejection rules, explicit field ownership,
   and validated hand-authored pages.
3. Acceptance criteria and five independently reviewable migration pulses now
   separate identity repair, manifest contract, hierarchy, proof, and the
   private-registry disposition of public repos outside the governed manifest.

The nine reviewers rechecked the amended design. The 17 P2 conditions are
resolved in the design; implementation evidence remains intentionally assigned
to IA-1 through IA-5. No new P1 or P2 design finding emerged. The design is at a
fixed point and may proceed incrementally.
