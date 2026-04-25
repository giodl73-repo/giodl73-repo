# Gio Della-Libera

Ten public projects, one researcher, one Claude instance — and a single methodology that keeps producing things I didn't plan to build.

Each repo below applies the same loop to different subject matter: software decisions, narrative history, a peer-level reference library, congressional redistricting, board games, D&D, visualization, local-production economics. Same discipline, every time.

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

## The engines

Two projects are the core of how I do AI-first development. Everything else is this same pattern, applied to something that isn't code.

### [SIGNALS](https://github.com/giodl73-repo/SIGNALS) — feature decision intelligence

**You don't invent a new skill; you earn one.** Every skill in SIGNALS has to trace back to a proven technique — innovation with heritage, not vibes. Point a skill at a feature, it writes a dated artifact; accumulate artifacts until the feature's story is ready to ship — or until you realize it shouldn't.

The technique catalog behind it is ~1,060 scenarios and ~700 findings across 12 simulation techniques, and the plugin ships **62 skills across 9 namespaces** (`discover`, `specify`, `validate`, `simulate`, `prove`, `listen`, `rhythm`, `roles`, `tools`) for Claude Code and GitHub Copilot.

### [PANEL](https://github.com/giodl73-repo/PANEL) — AI-simulated expert review

**Not peer review — a quality-improvement simulation that you run *before* the real reviewers see it.** Pre-write discovery (hypothesis, competitors, causal, websearch, coherence, synthesize) and post-write validation (consistency, dimensional, contract, referee) keep the research honest at every stage.

The architecture is three tiers — **paper, module, board** — staffed by **45 persona-based reviewers** across 10 categories. Every paper is scored against a **25-point CEMCK rubric** (Claim, Evidence, Method, Contribution, Craft). This is how ideas coming out of SIGNALS get empirical evidence before they leave the house.

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

Four projects point the same loop at subject matter that isn't a game and isn't software. The subject changes — human civilization, peer-level reference, local-production economics, visualization design — and the loop doesn't. Every chapter, guide, playbook, or scorecard has to pass a panel before it ships.

### [LUCIA](https://github.com/giodl73-repo/LUCIA) — the human chronicle

***Could a thoughtful member of this culture read this and feel their story was told with dignity, from inside?*** LUCIA's **Achebe Test** is the line nothing crosses without passing. The text never steps outside a culture's worldview to judge it; the Aztecs tell the Aztec story, the Mongols tell the Mongol story, the Māori tell the Māori story.

A narrative encyclopedia of human civilization — **26 regions, ~260 peoples, 115 chapters locked** — produced through an **11-stage pipeline** scored against two rubrics (The Gate, 30pts; The Chronicle, 60pts) and reviewed by a five-voice permanent panel: Barbara Tuchman, Ibn Khaldun, Chinua Achebe, Wade Davis, Ryszard Kapuściński. Named after LUCY, a German Shorthaired Pointer who always goes through the gate first.

### [MAXIM](https://github.com/giodl73-repo/MAXIM) — the reference library

**Skills built MAXIM; skills keep it honest.** A self-authored reference spanning computing, mathematics, physics, life sciences, arts, material culture, and everything in between — peer-level depth, never dumbed down, layered ASCII diagrams and decision cheat sheets. Every guide leaves review only after `@editor` tags with P1/P2/P3 tiering have been resolved against a style contract that's still evolving.

**13 sections, 217 directories, ~2,170 content files, ~14,070 pages, 52 bound volumes** — every page lives or dies by the same review skills (`/reference-review sweep | file | clean`) that built it.

### [CERES](https://github.com/giodl73-repo/CERES) — local production atlas

***Can a town of five thousand restore a working forge, a bakery that sells wholesale, a weaving co-op?*** CERES tests whether the answer is yes — and **a rigorous null result is as valid as a positive one**. The hypothesis is testable, with registered falsifiers, and the project has to be willing to find out it was wrong.

A catalog-driven design and evaluation project for modern artisan-production equipment — forges, ovens, looms, kilns. Each variant runs through a **9-cell matrix** (three settlement scales × three economic lenses — market, cooperative, civic) with a layered simulation stack (deterministic comparator → system dynamics → agent-based). **Six panel voices** create productive friction (Market Economist, Commons Theorist, Civic Steward, Craft Practitioner, Historian, Skeptical Funder); **three editorial gates** — Citation Auditor, Scope Keeper, Numeracy Checker — stand between `reviewed` and `validated`.

### [ASPECT](https://github.com/giodl73-repo/ASPECT) — visualization evaluation framework

**The rubric evolved by use, not by design — v3.0 through 300 innovations and 21 amendment clusters.** ASPECT scores visualization work across six dimensions — **A**im, **S**chool, **P**recision, **E**ffect, **C**larity, **T**ruth — 100 points across the lot, but every school in the corpus (statistical graphics, cartography, ISOTYPE, narrative visualization, data art, advocacy visualization, fourteen in all) gets held to its own grammar. A piece of advocacy is not judged against the rules of statistical graphics.

Reviews happen via a panel of ten historical visualizers (Minard, Tufte, Nightingale, Playfair, Bertin, Neurath, Beck, Kandinsky, Du Bois, Rosling) who disagree by design. **55 works scored**, ranging from 57.1 (WWI propaganda — Advisory) to 93.6 (the Pythagorean Chu-pei proof). Six Advisory scores all confirmed advocacy-as-coercion: WWI propaganda, tobacco physician endorsements, Soviet Five-Year Plan statistics, pharmaceutical subgroup cherry-picking, partisan gerrymandering, climate-denial baseline manipulation.

---

## Applied to civic infrastructure

### [REDIST](https://github.com/giodl73-repo/REDIST) — automated congressional redistricting

The fairest method turns out to be the oldest one in the book: **divide in half.** Split each state into two halves of equal population; split each half again; keep going until you have the right number of districts. Nobody gets to choose which half is theirs, so nobody gets an advantage — every district is the product of a series of neutral halvings, not a single optimized design. The state becomes a graph (census tracts as nodes, shared borders as edges weighted by border length) and **METIS** runs recursive bisection under a **±0.5% population-balance** constraint. **The base model is race- and politics-blind: only geometry and population enter.**

Because minimizing the total weight of the edges cut directly minimizes district perimeter, Polsby–Popper compactness goes up automatically — the metric is never targeted, it just falls out of the geometry. **Headline result on 2020:** mean Polsby–Popper **0.367** — **+56% over the unweighted baseline, +20% over enacted 2020 districts.** 37 of 50 states beat their own enacted maps; Illinois improves +174%, Louisiana +104%. Run against 2010 data, the same algorithm produces 0.320 — only 10% lower across vastly different political environments, evidence that geographic structure (not political opportunity) is what drives the outcome.

A separate track extends the base method for **Voting Rights Act compliance**, adding minority voting-age population as a second vertex weight so the compactness-versus-compliance tradeoff can be measured explicitly rather than assumed. That track's headline finding is a sharp **~42% statewide-minority threshold**: above it, geography delivers all statutory majority-minority districts without sacrificing compactness; below it, the tradeoff is real and bounded.

Around all of it sits the same AI-first tooling as the rest: **20 research papers across five tracks** (Synthesis, Algorithm, Validation, VRA compliance, Experimental Extensions), an interactive 50-state dashboard, a 215-test suite, and a LaTeX pipeline that compiles papers, presentations, and guides directly from the run outputs. Different subject matter; same discipline.

---

## The shape of the loop

Every project above runs the same loop, only the artifacts change. Skills produce dated evidence — a paper, a hunt scenario, a chapter, a scorecard. Evidence surfaces patterns. Patterns become new skills. Rubrics evolve forward-only — old work judged by the old bar, new work meets the new one. Personas (real designers, real historians, real visualizers) review every artifact before it ships, and they disagree by design.

The result is the same shape across very different subject matter: a corpus that didn't exist a year ago, scored against a rubric that wasn't fixed when scoring started, with the rubric and the corpus co-evolving until the system is sharper than what kicked it off.

Each project's specific skills, pipeline, rubric, and artifact format are listed in [TRACKER.md](TRACKER.md).

---

## Reach me

- **Email:** giodl@microsoft.com
- **GitHub:** [@giodl73-repo](https://github.com/giodl73-repo)
