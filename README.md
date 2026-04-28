# Gio Della-Libera

Fifteen public projects, one researcher, one Claude instance — and a single methodology that keeps producing things I didn't plan to build.

Each repo below applies the same loop to different subject matter: software decisions, narrative history, a peer-level reference library, board games, D&D, visualization, writing, music, local-production economics, congressional redistricting, NHL analytics, and the markdown infrastructure that holds the rest of it together. Same discipline, every time.

Day job: VP of Engineering at Microsoft on **Agents 365**. Everything here is built outside that.

## AI-first development

AI-first development isn't about coding *faster*. It's about coding *better*.

Not AI as autocomplete. AI as your **research team**, your **review board**, your **simulation lab**, your **implementation force**. Every stage of the lifecycle that used to be skipped, shallow, or bottlenecked on human availability — we now run with AI.

| Stage              | Then                          | Now                                                            |
|--------------------|-------------------------------|----------------------------------------------------------------|
| Research           | Skipped                       | AI researchers run hypothesis-driven experiments               |
| Design Review      | Schedule a meeting, wait      | AI experts find bugs across 12 disciplines in minutes          |
| Simulation         | Didn't exist                  | AI simulators hand-compile scenarios to find spec gaps         |
| Expert Review      | One senior dev, if available  | Named-expert AI reviewers stress-test designs                  |
| Customer Feedback  | Wait for complaints           | AI customers give feedback before real ones do                 |
| Academic Review    | No rigor                      | 3-tier simulated peer review with 51 expert personas           |
| Rework             | Constant                      | Near zero — every upstream stage actually ran                  |

The **Rework row is the punchline.** You get *better* code because research, simulation, review, and validation now actually happen — at every layer, for every decision, before any of it hardens into the wrong thing.

---

## AI Tools

Four projects are the infrastructure the rest of the portfolio runs on. Two are **methodology tools** — SIGNALS turns feature decisions into a dated artifact trail; PANEL puts academic-grade peer review on the same desk. Two are **artifact tools** — PROOF compiles and validates markdown the way LaTeX compiles documents; MDPATH gives every figure and table a stable address that survives line-number changes. They have the shape of tools because that is what they are: things AI calls when the work in the other repos demands rigor.

### [SIGNALS](https://github.com/giodl73-repo/SIGNALS) — feature decision intelligence

**You don't invent a new skill; you earn one.** Every skill in SIGNALS has to trace back to a proven technique — innovation with heritage, not vibes. Point a skill at a feature, it writes a dated artifact; accumulate artifacts until the feature's story is ready to ship — or until you realize it shouldn't.

The technique catalog behind it is ~1,060 scenarios and ~700 findings across 12 simulation techniques, and the plugin ships **62 skills across 9 namespaces** (`discover`, `specify`, `validate`, `simulate`, `prove`, `listen`, `rhythm`, `roles`, `tools`) for Claude Code and GitHub Copilot.

### [PANEL](https://github.com/giodl73-repo/PANEL) — AI-simulated expert review

**Not peer review — a quality-improvement simulation that you run *before* the real reviewers see it.** Pre-write discovery (hypothesis, competitors, causal, websearch, coherence, synthesize) and post-write validation (consistency, dimensional, contract, referee) keep the research honest at every stage.

The architecture is three tiers — **paper, module, board** — staffed by **45 persona-based reviewers** across 10 categories. Every paper is scored against a **25-point CEMCK rubric** (Claim, Evidence, Method, Contribution, Craft). This is how ideas coming out of SIGNALS get empirical evidence before they leave the house.

### [PROOF](https://github.com/giodl73-repo/PROOF) — markdown, but with a compiler

**Write in markdown. Compile to anything.** PROOF is a Rust CLI that does for markdown what LaTeX does for documents: validates structure (ASCII art geometry, GFM table schemas, link integrity, heading order, broken `md://` heading paths, with did-you-mean suggestions on every diagnostic) and compiles `.source.md` files into rendered `.md` artifacts. Source documents carry `proof:` directives that the compiler resolves at build time — LaTeX math (pure-Rust renderer, no install required), six-layout ASCII slide decks with progressive reveal, tree diagrams (dirtree, org, taxonomy, dependency, outline), fixed-width dashboards with named-region canvases, scoped tables of contents, cross-references that follow heading renames, named symbols (`[sym:checkmark]` → ✓), data elements (sparklines, mini-bars, badges, deltas) that compose into corpus-driven rows, and direct figure inclusion from `md://` URIs.

The result is a static site generator for terminal-first content — except instead of HTML, the output is perfectly-formatted ASCII that renders everywhere: terminals, GitHub, VS Code, any markdown viewer. **DaVinci pinning** locks a figure's structural invariants; compile aborts if a future edit violates them, so diagrams can't drift silently. Three-crate workspace (`proof`, `proof-canvas`, `proof-math`) — the math renderer and char-grid canvas are usable standalone in any TUI. PROOF powers a 2,700-file reference library plus presentation decks and cross-linked documentation corpora.

### [MDPATH](https://github.com/giodl73-repo/MDPATH) — the `md://` URI standard

**Every important element in a markdown file gets a stable address that survives line-number changes.** Instead of "the box on line 47," you write `md://languages/10-GO.md#concurrency-model:figure.flowchart:goroutine-scheduler`. The URI resolves to the same element after the file grows or shrinks around it — heading slugs are normalized, named selectors take precedence over numeric indices, ambiguous matches return errors instead of guessing. OData-style filters and projections are supported (`?select=Axis,Value&filter=Axis eq Binding`).

Standalone Rust library with no `proof` dependency — any tool (editor, CI pipeline, agent) can implement a resolver against the same spec. PROOF is the reference implementation; 56+ tests cover URI parsing, section navigation, element detection, label matching, sub-selectors, and round-trip stability.

---

## Emergent AI — how the skills evolve

The model doesn't get smarter. The **skill library does.**

Every skill ships with a **golden quest**: a reference prompt paired with a known-good output. New variations get scored against the golden; a variation that beats it gets promoted. A customer test that finds the skill confusing triggers an amendment. Rubrics move **forward-only** — old work is judged by the old bar, new work meets the new one. *The quest loop builds the ship. The customer test confirms it floats.*

When a run produces something the rubric *didn't anticipate* — a new kind of finding, a new angle of attack, a better structure — it goes into the **innovation log**. Once a cluster forms, the rubric version increments. LUCIA's chapter rubric has cycled through seven versions that way; MAXIM has gate-promoted ~2,170 guides against an evolving style contract; PANEL's CEMCK rubric has been re-tuned off its own review rounds; TIGRIS's 32-axis pool is 144 consecutive games deep with one retired axis and three live; QUEST has moved a playtest rubric v1.0 → v1.12 across seven campaigns without a single retroactive rescore. The bar keeps rising because the work itself keeps raising it.

**New skills don't get invented; they get earned.** A finding that surfaces repeatedly across investigations becomes the candidate for a new skill. Ideas become skills when the evidence says they should, and every artifact keeps a provenance frontmatter so you can always ask: *what did we think we learned vs. what did we actually learn?*

That's the loop. Skills produce dated evidence. Evidence surfaces patterns. Patterns become new skills. The system gets sharper without the model changing at all.

---

## The games — where the loop shows up most clearly

The clearest examples of the emergent-skills loop in the wild are three projects that point it at game design. Games are a good stress test: a puzzle that can't be solved, a D&D session that drags, a board game that never hits the table — failures the rubric has to feel and fix. All three are workshops that learn from their own output.

### [HUNT](https://github.com/giodl73-repo/HUNT) — puzzle hunt production pipeline

**Every skill earned its place by being needed during a real run.** Hunts are notoriously hard to design — most of the craft lives in veteran heads. HUNT pulls it onto disk: principles with sources, reviewer profiles with documented philosophies, stage gates with pass/fail tests. Nothing ships without three solver personas blind-testing it first.

The pipeline runs **17 slash-command skills** through 11 crash-safe stages (SCOPE → STRUCTURE → POOL → META → AUTHOR → EDIT → INTEGRATION → BUILD → TEST → POLISH) with a review gate between every one. **30 reviewer personas** — Dan Katz on structure, Thomas Snyder on craftsmanship, Mike Selinker on narrative, Rand Miller on world-as-puzzle, Jonathan Blow on epiphany, Lucas Pope on deductive identification, plus 24 more — and **12 solver archetypes** stand between you and a hunt that doesn't ship.

### [QUEST](https://github.com/giodl73-repo/QUEST) — D&D workshop that learns from itself

**Nothing in the catalogs is pre-seeded.** Every player-style, every rubric amendment, every insight *emerges* from observed play. Run a session, score it, log the surprises, cluster them — when two surprises hit the same dimension the rubric increments; when three cluster across sessions a new player-style gets promoted. Creative principle: *the treasures are the story.*

The setting is **Dragonlance D&D 5e**, the loop is **20 skills across design / play / learn**, and the engine is a deterministic Python runtime that owns dice, state, and PC heuristics so the LLM can own narrative and nothing else. **Seven campaigns, 49 sessions, rubric v1.0 → v1.12** — forward-only, no retroactive rescoring. Player-styles like `sheet-deep-reader`, `act-without-announcement`, and `documentary-witness` weren't designed; they were discovered.

### [TIGRIS](https://github.com/giodl73-repo/TIGRIS) — board game factory

**Score enough games on enough axes and the design space tells you its own dimensions.** TIGRIS scored **150 games across 28 axes** and out fell **TIGER BEAT** — a 9-number coordinate system every game now has. Plot games. Find neighbors. Find **gaps** — empty regions the corpus has never visited — and design into them on purpose.

The five primary dimensions (72% of variance) are **TIGER** — Tension, Interaction, Game-spectrum, Experiential, Range. The four secondary are **BEAT** — Breadth, Emotional Arc, Accessibility, Texture. G turned out to be **bipolar**: deep engine vs. elegant minimalism, nothing in the middle — Lisboa sits at 6.5, Crokinole at 0.3.

Reviews happen via **Parliament**: eight designer personas (Knizia, Rosenberg, Feld, Lacerda, Chvátil, Kramer–Kiesling, Stegmaier, Vaccarino) draft incompatible stakes; a narrated playthrough collides them; deterministic amendment promotes, retires, or holds axes based on what happened. **31 original games designed** so far, including RITE (first to land in Gap 1) and CODEX (first designed to attack an empty region on purpose).

---

## The pattern, applied to long-form content

Three projects point the same loop at subject matter that isn't a game and isn't software. The subject changes — human civilization, peer-level reference, local-production economics — and the loop doesn't. Every chapter, guide, or playbook has to pass a panel before it ships.

### [LUCIA](https://github.com/giodl73-repo/LUCIA) — the human chronicle

***Could a thoughtful member of this culture read this and feel their story was told with dignity, from inside?*** LUCIA's **Achebe Test** is the line nothing crosses without passing. The text never steps outside a culture's worldview to judge it; the Aztecs tell the Aztec story, the Mongols tell the Mongol story, the Māori tell the Māori story.

A narrative encyclopedia of human civilization — **26 regions, ~260 peoples, 115 chapters locked** — produced through an **11-stage pipeline** scored against two rubrics (The Gate, 30pts; The Chronicle, 60pts) and reviewed by a five-voice permanent panel: Barbara Tuchman, Ibn Khaldun, Chinua Achebe, Wade Davis, Ryszard Kapuściński. Named after LUCY, a German Shorthaired Pointer who always goes through the gate first.

### [MAXIM](https://github.com/giodl73-repo/MAXIM) — the reference library

**Skills built MAXIM; skills keep it honest.** A self-authored reference spanning computing, mathematics, physics, life sciences, arts, material culture, and everything in between — peer-level depth, never dumbed down, layered ASCII diagrams and decision cheat sheets. Every guide leaves review only after `@editor` tags with P1/P2/P3 tiering have been resolved against a style contract that's still evolving.

**13 sections, 217 directories, ~2,170 content files, ~14,070 pages, 52 bound volumes** — every page lives or dies by the same review skills (`/reference-review sweep | file | clean`) that built it.

### [CERES](https://github.com/giodl73-repo/CERES) — local production atlas

***Can a town of five thousand restore a working forge, a bakery that sells wholesale, a weaving co-op?*** CERES tests whether the answer is yes — and **a rigorous null result is as valid as a positive one**. The hypothesis is testable, with registered falsifiers, and the project has to be willing to find out it was wrong.

A catalog-driven design and evaluation project for modern artisan-production equipment — forges, ovens, looms, kilns. Each variant runs through a **9-cell matrix** (three settlement scales × three economic lenses — market, cooperative, civic) with a layered simulation stack (deterministic comparator → system dynamics → agent-based). **Six panel voices** create productive friction (Market Economist, Commons Theorist, Civic Steward, Craft Practitioner, Historian, Skeptical Funder); **three editorial gates** — Citation Auditor, Scope Keeper, Numeracy Checker — stand between `reviewed` and `validated`.

---

## The design labs — same engine, three mediums

Three projects point the panel-and-rubric machinery at artistic mediums instead of corpora. Same disagreement-by-design, same forward-only rubric evolution, same innovation-to-amendment loop — pointed at images, text, and music. The dimensions differ (six in one, five in the others); the engine underneath is identical. Each lab is a scoring engine first; corpora accumulate as a side effect of running the rubric on real work.

### [ASPECT](https://github.com/giodl73-repo/ASPECT) — the visualization design lab

**The rubric evolved by use, not by design — v3.0 through 300 innovations and 21 amendment clusters.** ASPECT scores visualization work across six dimensions — **A**im, **S**chool, **P**recision, **E**ffect, **C**larity, **T**ruth — 100 points across the lot, but every school in the corpus (statistical graphics, cartography, ISOTYPE, narrative visualization, data art, advocacy visualization, fourteen in all) gets held to its own grammar. A piece of advocacy is not judged against the rules of statistical graphics.

Reviews happen via a panel of ten historical visualizers (Minard, Tufte, Nightingale, Playfair, Bertin, Neurath, Beck, Kandinsky, Du Bois, Rosling) who disagree by design. **55 works scored**, ranging from 57.1 (WWI propaganda — Advisory) to 93.6 (the Pythagorean Chu-pei proof). Six Advisory scores all confirmed advocacy-as-coercion: WWI propaganda, tobacco physician endorsements, Soviet Five-Year Plan statistics, pharmaceutical subgroup cherry-picking, partisan gerrymandering, climate-denial baseline manipulation.

### [PROSE](https://github.com/giodl73-repo/PROSE) — the writing design lab

**Purpose serves the form; form serves the reader.** PROSE evaluates writing across **P**urpose / **R**eader / **O**rganization / **S**tyle / **E**conomy — 100 points, reviewed by a panel of ten historical writer voices selected because they disagree about the things that matter most. Orwell on plain language as moral commitment. Hemingway on the iceberg theory. Didion on the first person as an instrument of precision. Baldwin on telling the truth that isn't comfortable. Feynman on explaining simply as a test of understanding. DFW on writing as a gift to the reader.

Same engine as ASPECT, pointed at text instead of images. Forms (literary essay, journalism, technical writing, short story, lyric essay, science writing) each carry their own grammar; no form is treated as simpler than another.

### [SCORE](https://github.com/giodl73-repo/SCORE) — the music design lab

**Every note earns its place.** SCORE evaluates compositions across **S**tructure / **C**raft / **O**riginality / **R**esonance / **E**conomy — 100 points, reviewed by ten historical composers and musician-critics chosen because they disagree about everything that matters. Bach on counterpoint as moral geometry. Coltrane on technique clearing the way for the search. Miles Davis on what you don't play being what you play. Pärt on silence as music's most expressive element. Sondheim on finding the one thing that does everything. Ellington on writing for Cootie Williams, not "the trumpet section."

Sibling to ASPECT (visualization) and PROSE (writing). Traditions — fugue, jazz standard, blues, song cycle, minimalism, raga, art song — each carry their own exacting standards and their own ways of failing.

---

## Side projects

Two projects that don't fit the corpus-or-engine pattern above — they answer specific questions instead of producing a system. Same AI-first discipline, narrower scope.

### [REDIST](https://github.com/giodl73-repo/REDIST) — automated congressional redistricting

The fairest method turns out to be the oldest one in the book: **divide in half.** Split each state into two halves of equal population; split each half again; keep going until you have the right number of districts. Nobody gets to choose which half is theirs, so nobody gets an advantage — every district is the product of a series of neutral halvings, not a single optimized design. The state becomes a graph (census tracts as nodes, shared borders as edges weighted by border length) and **METIS** runs recursive bisection under a **±0.5% population-balance** constraint. **The base model is race- and politics-blind: only geometry and population enter.**

Because minimizing the total weight of the edges cut directly minimizes district perimeter, Polsby–Popper compactness goes up automatically — the metric is never targeted, it just falls out of the geometry. **Headline result on 2020:** mean Polsby–Popper **0.367** — **+56% over the unweighted baseline, +20% over enacted 2020 districts.** 37 of 50 states beat their own enacted maps; Illinois improves +174%, Louisiana +104%. Run against 2010 data, the same algorithm produces 0.320 — only 10% lower across vastly different political environments, evidence that geographic structure (not political opportunity) is what drives the outcome.

A separate track extends the base method for **Voting Rights Act compliance**, adding minority voting-age population as a second vertex weight so the compactness-versus-compliance tradeoff can be measured explicitly rather than assumed. That track's headline finding is a sharp **~42% statewide-minority threshold**: above it, geography delivers all statutory majority-minority districts without sacrificing compactness; below it, the tradeoff is real and bounded.

Around all of it sits the same AI-first tooling as the rest: **20 research papers across five tracks** (Synthesis, Algorithm, Validation, VRA compliance, Experimental Extensions), an interactive 50-state dashboard, a 215-test suite, and a LaTeX pipeline that compiles papers, presentations, and guides directly from the run outputs. Different subject matter; same discipline.

### [ICELINES](https://github.com/giodl73-repo/ICELINES) — NHL analytics platform

**Five seasons bundled in the binary; thirty-eight available on demand — back to Gretzky's 1987-88 trade to LA.** ICELINES is a Rust CLI that does pace-adjusted player rankings, cross-team depth fit (★ Elite / ~ Solid / ↑ Buried / ↓ Stretch — how a player would slot on each of the other 31 rosters), 30+ sortable metrics with filters that combine on AND logic, fantasy league management with simulated trades and a web dashboard, and historical comps via similarity search. Data sources: free NHL public API plus MoneyPuck CSVs for xG/CF%/FF%/xGF%; the bundled binary works zero-config.

The architecture is a **4-crate Rust workspace** (`icelines-core` / `-fetch` / `-site` / `-cli`) with a **338-test pyramid** (L0 unit, L1 integration, L2 system, mock NHL API fixture). Different subject matter; same discipline.

---

## The shape of the loop

Every project above runs the same loop, only the artifacts change. Skills produce dated evidence — a paper, a hunt scenario, a chapter, a scorecard, a composition spec, a depth chart. Evidence surfaces patterns. Patterns become new skills. Rubrics evolve forward-only — old work judged by the old bar, new work meets the new one. Personas (real designers, real historians, real visualizers, real writers, real composers) review every artifact before it ships, and they disagree by design.

The result is the same shape across very different subject matter: a corpus that didn't exist a year ago, scored against a rubric that wasn't fixed when scoring started, with the rubric and the corpus co-evolving until the system is sharper than what kicked it off.

Each project's specific skills, pipeline, rubric, and artifact format are listed in [TRACKER.md](TRACKER.md).

---

## Reach me

- **Email:** giodl@microsoft.com
- **GitHub:** [@giodl73-repo](https://github.com/giodl73-repo)
