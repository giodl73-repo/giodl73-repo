# Public portfolio information architecture

Status: accepted for incremental implementation after design review
Owner: `giodl73-repo/giodl73-repo`
Scope: the public profile README, family pages, repository routes, and their
publicly verifiable source of truth

## 1. Purpose

The front door must explain a large portfolio without flattening it into a repo
list or allowing a single current project to define the whole body of work. A
reader should be able to understand the portfolio at five progressively deeper
levels and stop at the level that answers their question.

The governing narrative is:

> Build serious artifacts, make their assumptions and evidence inspectable,
> evaluate them with explicit methods, and promote reusable machinery only when
> more than one artifact needs it.

Rust is the preferred implementation substrate for durable tools, contracts,
verifiers, and simulation kernels. It is a means of making the work portable
and testable, not the portfolio's purpose by itself.

## 2. Reader contract

The public hierarchy answers one question at each tier.

| Tier | Reader question | Public surface | Required content |
|---|---|---|---|
| 0 — Identity | Who is Gio and what kind of work is this? | Profile opening | One identity statement, professional boundary, and contact route. |
| 1 — Thesis | What connects these projects? | Profile thesis | Artifact → evidence → evaluation → reusable substrate. |
| 2 — Families | What major areas exist? | Profile family map | Seven stable family promises with one recommended entry route each. |
| 3 — Capability lines | How is an area internally organized? | Family pages | Named subfamilies, their relationships, and complete governed repo membership. |
| 4 — Repository | What does this project own? | Family table and child README | One concrete purpose, maturity/evidence label, and canonical link. |
| 5 — Proof | Why should I believe its claims? | Child evidence | Build/test commands, sources, artifacts, limitations, and current results. |

No tier should repeat the tier below it. The profile is a guided tour; family
pages are complete maps; child repositories own volatile facts and proof.

## 3. Portfolio thesis

The portfolio has four interacting layers rather than one technology category:

```text
METHODS decide and review how work is done
             ↓
ARTIFACT FAMILIES produce public systems, knowledge, games, and design
             ↓
PLATFORM extracts reusable contracts, tools, and kernels
             ↓
EVIDENCE flows back into the methods and the next artifact
```

Business & Operations applies selected methods and platform components to
bounded operational domains. It remains a first-class family rather than an
implicit miscellaneous bucket.

## 4. Canonical public families

### 4.1 Portfolio Methods

**Promise:** turn intent, research, review, delivery, and observed outcomes into
an inspectable learning loop.

| Capability line | Repositories | Message |
|---|---|---|
| Decisions and evidence | SIGNALS | State hypotheses, capture evidence, and preserve the reasoning frame. |
| Review and challenge | PANEL, ROLES | Apply explicit reviewer lenses without presenting simulation as external validation. |
| Planning and learning | VTRACE, STACK-AND-TRACK | Trace intent to verification, then compare expected impact with realized gain. |
| Public portfolio | giodl73-repo | Project the governed public narrative without exposing private coordination state. |

Recommended entry: SIGNALS for evidence trails; VTRACE for systems discipline.

### 4.2 Public Systems

**Promise:** analyze consequential public systems from explicit service or
rights promises, trace conclusions to public evidence, and preserve uncertainty
instead of turning concepts into official plans.

| Capability line | Repositories | Message |
|---|---|---|
| Movement and networks | ROUTE, GAUGE, HARBOR, TARMAC, PACKET | Compare capacity, access, connectivity, resilience, and service gaps using domain-owned measures. |
| Public access | SHIELD, SLATE | Study aggregate access and delivery capacity without individual medical, educational, or eligibility advice. |
| Civic evidence | BISECT, RPLAN, RCOUNT, ZONES | Make boundaries, plans, counts, and audit packages reproducible. |
| Fiscal evidence | TAXLANE | Admit spending and rate conclusions only after explicit accounting and evidence gates. |

Recommended entry: ROUTE for the deepest applied-system example; TAXLANE for
evidence-gated policy analysis.

### 4.3 Knowledge & Evidence

**Promise:** build reviewed, navigable bodies of knowledge whose identity,
meaning, provenance, and uncertainty remain explicit.

| Capability line | Repositories | Message |
|---|---|---|
| Reference and meaning | LEXICON, MAXIM | Separate senses, preserve canonical identity, and make reference structures comparable. |
| Sources and survival | FONTES, RUINS | Track custody, loss, fragments, uncertainty, and responsible reconstruction. |
| Worlds, places, and history | LUCIA | Preserve cultural and historical perspectives without collapsing them into one voice. |
| Production and practice | CERES | Connect reference knowledge to local production and repeatable evaluation. |

Recommended entry: LEXICON for structured meaning; LUCIA for human narrative;
CERES for applied reference work.

### 4.4 Games, Sports & Experiences

**Promise:** treat play, interaction, and sports analysis as observable systems
where rules, simulations, interfaces, and failure modes can be tested.

| Capability line | Repositories | Message |
|---|---|---|
| Designed experiences | HUNT, TIGRIS | Build puzzle and tabletop experiences through iteration and play evidence. |
| Shared experience infrastructure | MUDDLE, RALLY, COURT, RACKET | Reuse deterministic simulation, portable state, commands, scenes, and presentation adapters. |
| Games and sports evidence | PARLOR, ICELINES | Verify classic game kernels and make sports comparisons traceable to data and assumptions. |

Recommended entry: TIGRIS for design-space study; ICELINES for live analytical
practice; COURT for reusable experience contracts.

### 4.5 Creative Design

**Promise:** make creative judgment discussable and improvable without pretending
that a rubric replaces taste.

| Capability line | Repositories | Message |
|---|---|---|
| Visual | SCENE | Evaluate clarity, precision, effect, and truth in visual work. |
| Written | PROSE | Improve writing through reviewed texts and forward-only rubric learning. |
| Sound | SCORE | Examine musical structure, craft, originality, resonance, and economy. |
| Moving image | REEL | Design films and videos through evidence-backed structure, media, and review. |

Recommended entry: the medium closest to the reader's task; PROSE is the most
mature example of forward-only rubric evolution.

### 4.6 Developer & Agent Platform

**Promise:** provide reusable, inspectable machinery for documents, context,
agents, evidence, graphs, scenarios, and production Rust systems.

| Capability line | Repositories | Message |
|---|---|---|
| Markdown identity and transport | MDPATH, MDCROP, PROOF, MDPORT | Address, select, validate, render, and transfer bounded document context. |
| Context and harness evidence | FLETCH, LATTICE, WITNESS | Acquire sources, compute context closure, and replay how an AI harness used them. |
| Contracts and scenarios | RUNE, SCENARIUM, VTRACE | Define neutral contracts, run deterministic scenarios, and connect requirements to verification. |
| Rust kernels | RLINE, METIS-CORE, SLICE | Reuse graph, partitioning, selection, expression, statistics, and optimization machinery. |
| Production engineering | FERRIS | Establish compatible Rust application and build/release foundations. |

Recommended entry: the Markdown family for an end-to-end toolchain; LATTICE and
WITNESS for agent context; FERRIS for production Rust engineering.

VTRACE is methodologically owned by Portfolio Methods and may be referenced
here as a shared contract discipline. The reference must link to VTRACE's
canonical Portfolio Methods section and be labeled “shared method”; it never
creates duplicate family ownership.

### 4.7 Business & Operations

**Promise:** turn bounded operational allocation problems into explainable
territories, service choices, and reusable decision evidence.

| Capability line | Repositories | Message |
|---|---|---|
| Territory planning | TERRAIN | Balance sales and service territories with explicit constraints and tradeoffs. |
| Territory intelligence | TURF | Organize public retail territory evidence for comparison and planning. |

Recommended entry: TERRAIN for planning; TURF for the public evidence atlas.
Only public, portfolio-governed systems appear here; private operational
applications are never implied by omission or exposed through this page.

## 5. Navigation design

The profile README should contain, in order:

1. identity and professional boundary;
2. the one-paragraph portfolio thesis;
3. three goal-based starting routes: understand a consequential public system,
   explore a reviewed body of knowledge or creative artifact, and reuse
   inspectable engineering machinery;
4. the seven-family map, each with one promise and one link;
5. two or three durable cross-family examples;
6. the public evidence and simulation boundary;
7. contact and licensing.

Time-sensitive project launches, test counts, corpus counts, open work, and
portfolio coordination state do not belong in the profile. They belong in the
child repository or a dated release note.

Each family page should contain:

1. a plain-language promise;
2. explicit boundaries and non-claims;
3. the capability-line map;
4. every governed public member exactly once as a canonical member;
5. cross-family dependencies clearly labeled as references;
6. two or three reader routes based on intent;
7. a link back to the family index and profile.

Canonical destinations are stable contracts:

| Family | Canonical page |
|---|---|
| Portfolio Methods | `series/portfolio-methods.md` |
| Public Systems | `series/public-systems.md` |
| Knowledge & Evidence | `series/knowledge-evidence.md` |
| Games, Sports & Experiences | `series/games-sports-experiences.md` |
| Creative Design | `series/creative-design.md` |
| Developer & Agent Platform | `series/developer-agent-platform.md` |
| Business & Operations | `series/business-operations.md` |

`series/README.md` is the canonical family index. Existing page paths remain as
short compatibility stubs that name the new family and link to the closest
canonical section anchor. A compatibility stub contains no duplicated repo
catalog or status claim.

Family pages use sequential headings, descriptive link labels, and short tables
grouped by capability line. Every text diagram has an adjacent prose equivalent,
and no meaning depends on color, emoji, table position, or a raw URL. Specialized
terms such as “context closure” are expanded on first use.

The profile's professional self-description is verified intentionally whenever
the opening changes; it is never inferred from repository metadata.

## 6. Public portfolio manifest

One versioned public manifest should own the mechanically checkable hierarchy:

- family ID, public name, promise, and page;
- capability-line ID, name, and parent family;
- repository name, canonical URL, canonical family, capability line, concise
  purpose, and evidence route;
- optional cross-family references;
- an explicit public inclusion flag supplied by the private portfolio registry's
  public-safe projection.

The manifest schema identifier is `giodl73.public-portfolio.v1`. Its allowlisted
fields are:

- root: `schema`, `families`, and `retired_names`;
- family: `id`, `name`, `promise`, `page`, `order`, and `capability_lines`;
- capability line: `id`, `name`, `message`, `order`, and `repositories`;
- repository: `name`, `url`, `purpose`, `evidence_route`, `evidence_label`, and
  optional `references`;
- retired name: `name`, `replacement`, and `allowed_historical_paths`.

Unknown fields, duplicate IDs, duplicate canonical membership, non-public
records, unapproved owners, local paths, and URLs outside the public allowlist
fail validation. Families, capability lines, and repositories are serialized by
their explicit order and then stable name. Purpose text is plain text, ends with
punctuation, and is concise enough to remain readable in a narrow table.

The public repository owns editorial messages. The private portfolio registry
owns admission, exact snapshot coordination, and the projection of public-safe
identity fields.
No private owner, wait state, closure state, local path, or private repository
may enter the public manifest.

The private registry supplies only repository name, canonical URL, public
visibility, canonical family, and inclusion. The public repository owns family promises,
capability placement, concise purpose, reader routes, and evidence labels. A
projection conflict fails closed and requires a reviewed update; neither side
silently overwrites the other.

Family pages remain hand-authored. The validator compares their canonical
membership and links with the manifest but does not generate their explanatory
prose.

Generated checks—not generated prose—should ensure that every included public
repo appears exactly once canonically, all links resolve, retired names are
absent, family pages match the manifest, and cross-listings do not become
duplicate ownership.

## 7. Status and evidence language

The front door uses only public evidence labels, not internal workflow states:

| Label | Meaning |
|---|---|
| Reference | Primarily a corpus, paper, standard, or explanatory artifact. |
| Working tool | A documented executable path exists and is locally reproducible. |
| Verified core | The repository's declared automated checks pass for its published core. |
| Demonstrated system | A bounded, cited or reproducible example exercises the core. |
| Experimental | The work is public for inspection but its contract or evidence remains exploratory. |

Labels are optional at the profile tier and required only where a family page
makes a maturity claim. Public visibility alone never implies production,
adoption, official authority, safety certification, or external validation.

## 8. Governance and verification

Every front-door change should pass:

1. manifest schema and uniqueness validation;
2. local and canonical GitHub link validation;
3. retired-name and private-surface scanning;
4. family-page membership validation;
5. Markdown structure and accessibility checks;
6. the repository's Series Narrative Curator, Public Surface Scrubber, and Repo
   Link Steward roles.

The private registry may update the public projection during an explicit portfolio pulse,
but it must not overwrite child-owned purpose prose or publish coordination
state. A repository rename changes the manifest, all canonical links, and its
family page in one reviewed change.

Acceptance criteria:

- the manifest's repository set exactly equals the current registry-projected
  governed public set;
- every manifest repository has exactly one canonical family and capability
  line, while typed references remain visibly non-canonical;
- every canonical page and compatibility stub resolves locally;
- current pages contain LEXICON and no FACTORIUM reference, except an explicitly
  permitted historical note;
- headings are sequential, link labels are descriptive, tables have header
  rows, and diagrams have prose equivalents;
- the non-network proof suite passes in pull-request CI; optional live-link
  observations cannot make the structural gate flaky;
- the three repository roles record no unresolved publication blocker.

## 9. Migration

Each pulse is independently reviewable and leaves the public front door more
truthful than it found it.

| Pulse | Scope | Exit condition |
|---|---|---|
| IA-1 — identity repair | Replace FACTORIUM with LEXICON and remove volatile profile-level counts. | Current profile and Knowledge page use the canonical name and child-owned evidence route. |
| IA-2 — contract | Land this design, the strict public manifest, schema validation, and exact-set fixture for all currently governed public repositories. | Manifest is deterministic, public-safe, complete, and locally validated. |
| IA-3 — hierarchy | Introduce the seven canonical pages, compatibility stubs, capability-line maps, reader routes, and profile tour. | Every governed public repo appears exactly once canonically and every old local route resolves. |
| IA-4 — proof | Add the single proof entry point, pull-request workflow, accessibility structure checks, and three-role fixed-point review. | Required CI is green and the role review has no unresolved blocker. |
| IA-5 — portfolio boundary | In the private portfolio registry, audit public repositories not yet represented in the governed manifest for admission, legacy treatment, or continued exclusion. | The private registry records each disposition; only resulting public-safe inclusion changes are projected in a later child pulse. |

No public artifact records internal exclusion rationale or coordination state.

Migration is complete when a reader can move from identity to proof without a
contradictory name, family, purpose, status claim, or private-only assumption.
