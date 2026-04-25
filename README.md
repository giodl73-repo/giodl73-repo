# Gio Della-Libera

VP of Engineering at Microsoft on **Agents 365**.

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

**62 skills across 9 namespaces** — `discover`, `specify`, `validate`, `simulate`, `prove`, `listen`, `rhythm`, `roles`, `tools`. Plugin for Claude Code and GitHub Copilot. Point a skill at a feature, it writes a dated artifact; accumulate artifacts until the feature's story is ready to ship — or until you realize it shouldn't.

Every new skill must trace back to a proven technique — innovation with heritage, not vibes. The technique catalog behind SIGNALS is ~1,060+ scenarios and ~700+ findings across 12 proven simulation techniques. You don't invent a new skill; you earn one.

### [PANEL](https://github.com/giodl73-repo/PANEL) — AI-simulated expert review

Three-tier review architecture — **paper, module, board** — with **45 persona-based reviewers** across 10 categories. Papers move through an 8-stage lifecycle and are scored on a **25-point CEMCK rubric** (Claim, Evidence, Method, Contribution, Craft). Pre-write discovery (hypothesis, competitors, causal, websearch, coherence, synthesize) and post-write validation (consistency, dimensional, contract, referee) keep the research honest.

This is how ideas coming out of SIGNALS get empirical evidence before they leave the house. Not peer review — a quality-improvement simulation that you run *before* the real reviewers see it.

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

A Claude Code skills pipeline that builds a real puzzle hunt — from blank page to print-and-web shipping package — with review gates that block you until the work clears the bar. **17 slash-command skills**, **30 reviewer personas** (Dan Katz on structure, Thomas Snyder on puzzle craftsmanship, Mike Selinker on narrative, Wei-Hwa Huang on deductive rigor, Rand Miller on world-as-puzzle, Jonathan Blow on epiphany design, Lucas Pope on deductive identification, plus 23 more), **12 solver archetypes** for blind testing, and **20 design principles** each with a source, a one-line statement, and a failing test.

An **11-stage crash-safe pipeline** (SCOPE → STRUCTURE → POOL → ASSIGNMENT → META → AUTHOR → EDIT → INTEGRATION → BUILD → PLATFORM TEST → POLISH) with a review gate between every stage. Nine end-to-end hunts already in `scenarios/`; every bug surfaced during a run becomes a toolkit improvement that gets backported, with `BUGS.md` as the receipt.

### [QUEST](https://github.com/giodl73-repo/QUEST) — D&D workshop that learns from itself

A **Dragonlance-set D&D 5e** adventure workshop where nothing in the catalogs is pre-seeded. Every player-style, every rubric amendment, every insight *emerges* from observed play — `playtest-innovation` runs threshold checks after every session and promotes a rubric axis when 2+ innovations cluster in the same dimension, or drafts a new player-style when 3+ innovations cluster across ≥ 2 sessions. Creative principle: *the treasures are the story.*

**20 skills across design/play/learn**, a **7-stage session pipeline** (PREP → PLAY → LOG → GATE → PANEL → INNOVATION → HANDOFF), and a deterministic Python game engine that owns dice, state, and PC decision-heuristics so the LLM can own narrative and nothing else. **Seven campaigns, 49 sessions, rubric v1.0 → v1.12** — forward-only, no retroactive rescoring. Player-styles like `sheet-deep-reader`, `act-without-announcement`, and `documentary-witness` weren't designed; they were discovered, validated across parties, and promoted.

### [TIGRIS](https://github.com/giodl73-repo/TIGRIS) — board game factory

Named for Knizia's *Tigris & Euphrates*. Reviews published games and designs new ones, but the interesting move is what the corpus discovered on its own: **TIGER BEAT** — a 9-dimensional coordinate system for board games, found by scoring **150 games across 28 axes** and letting the underlying geometry fall out.

The five primary dimensions (72% of the variance) are **TIGER** — Tension, Interaction, Game-spectrum, Experiential, Range. The four secondary (the remaining 28%) are **BEAT** — Breadth, Emotional Arc, Accessibility, Texture. G turned out to be **bipolar**: deep engine vs. elegant minimalism, nothing in the middle — Lisboa sits at 6.5, Crokinole at 0.3, the corpus bifurcates. Every game now has a 9-number profile, which means you can plot them, find neighbors, find **gaps** — and design into the gaps on purpose.

Reviews happen via **Parliament**: eight designer personas (Knizia, Rosenberg, Feld, Lacerda, Chvátil, Kramer–Kiesling, Stegmaier, Vaccarino) draft incompatible stakes against a design; a narrated playthrough attacks, defends, and collides them on adjacent axes; a deterministic amendment step promotes, retires, or holds axes based on what happened. **31 original games designed**, including RITE (first to land in Gap 1, previously empty across 150 games) and CODEX (first designed to attack an empty region on purpose). Rubric v2.24.85, 32-axis pool, one retired axis, three live.

---

## The pattern, applied to long-form content

Four more projects run this same discipline against subject matter that isn't a game and isn't software: a narrative encyclopedia of human civilization, a peer-level reference library, a local-production atlas, and a visualization-evaluation framework. The subject changes; the loop doesn't — every chapter, guide, playbook, or scorecard has to pass a panel before it ships.

### [LUCIA](https://github.com/giodl73-repo/LUCIA) — the human chronicle

A narrative encyclopedia of human civilization — **26 regions, ~260 peoples, 115 chapters locked** — told from inside each culture's own worldview. Named after LUCY, a German Shorthaired Pointer who always goes through the gate first.

An **11-stage pipeline** (OPENING → GATE-1 → PANEL-1 → NOTES → PANEL-2 → FIXES → WRITE → GATE-2 → CLEAN → BOARD → FINAL), two rubrics (**The Gate**, 30pts; **The Chronicle**, 60pts), and a five-voice permanent panel: Barbara Tuchman, Ibn Khaldun, Chinua Achebe, Wade Davis, Ryszard Kapuściński. The **Achebe Test** is the line nothing crosses without passing: *could a thoughtful member of this culture read this and feel their story was told with dignity, from inside?*

### [MAXIM](https://github.com/giodl73-repo/MAXIM) — the reference library

**13 sections, 217 directories, ~2,170 content files, ~14,070 pages, 52 bound volumes.** A self-authored reference spanning computing, mathematics, physics, life sciences, arts, material culture, and everything in between — peer-level depth, never dumbed down, layered ASCII diagrams and decision cheat sheets.

Review skills (`/reference-review sweep | file | clean`), **`@editor` tags** with P1/P2/P3 priority tiering, style contract gates, and a graduation check before a guide leaves review. Skills built MAXIM; skills keep it honest.

### [CERES](https://github.com/giodl73-repo/CERES) — local production atlas

*Can a town of five thousand restore a working forge, a bakery that sells wholesale, a weaving co-op?* CERES tests whether the answer is yes — and why, for whom, and at what cost. Named after Ceres, Roman goddess of grain and the nourishment of settlements.

A catalog-driven design and evaluation project for modern artisan-production equipment — forges, ovens, looms, kilns. A **five-phase pipeline** (Research → Design catalog → Evaluation matrix → Simulation → Playbook & pitch) runs each variant through a **9-cell matrix** — three settlement scales (village, town, small city) × three economic lenses (market, cooperative, civic) — with a layered simulation stack (deterministic comparator → system dynamics → agent-based).

**Six permanent panel voices** create productive friction: Market Economist, Commons Theorist, Civic Steward, Craft Practitioner, Historian, Skeptical Funder. **Three editorial gates** — Citation Auditor, Scope Keeper, Numeracy Checker — stand between `reviewed` and `validated`. The hypothesis is testable, with registered falsifiers; a rigorous null result is as valid as a positive one.

### [ASPECT](https://github.com/giodl73-repo/ASPECT) — visualization evaluation framework

A six-dimensional rubric for evaluating, designing, and evolving visualization work — from quantitative statistical graphics to pure artistic expression. **A**im, **S**chool, **P**recision, **E**ffect, **C**larity, **T**ruth — 100 points across the lot.

Reviews happen via a panel of ten historical visualizers — Minard, Tufte, Nightingale, Playfair, Bertin, Neurath, Beck, Kandinsky, Du Bois, Rosling. They disagree by design. **Fourteen visualization schools** (statistical graphics, cartography, ISOTYPE, scientific illustration, narrative visualization, data art, mathematical-proof visualization, and more) hold each work to its own grammar — a piece of advocacy-visualization is not measured against the same rules as a piece of statistical graphics.

**55 works scored**, ranging from **57.1** (WWI propaganda — Advisory) to **93.6** (the Pythagorean Chu-pei proof). Six Advisory scores all confirmed advocacy-as-coercion: WWI propaganda, tobacco physician endorsements, Soviet Five-Year Plan statistics, pharmaceutical subgroup cherry-picking, partisan gerrymandering, climate-denial baseline manipulation. Pipeline: BRIEF → SCHOOL → DESIGN → PANEL → INNOVATION → AMENDMENT → HANDOFF. The rubric reached **v3.0 through 300 innovations and 21 amendment clusters** — evolved by use, not by design.

---

## Side project

### [REDIST](https://github.com/giodl73-repo/REDIST) — automated congressional redistricting

The fairest method turns out to be the oldest one in the book: **divide in half.** Split each state into two halves of equal population; split each half again; keep going until you have the right number of districts. Nobody gets to choose which half is theirs, so nobody gets an advantage — every district is the product of a series of neutral halvings, not a single optimized design. The state becomes a graph (census tracts as nodes, shared borders as edges weighted by border length) and **METIS** runs recursive bisection under a **±0.5% population-balance** constraint. **The base model is race- and politics-blind: only geometry and population enter.**

Because minimizing the total weight of the edges cut directly minimizes district perimeter, Polsby–Popper compactness goes up automatically — the metric is never targeted, it just falls out of the geometry. **Headline result on 2020:** mean Polsby–Popper **0.367** — **+56% over the unweighted baseline, +20% over enacted 2020 districts.** 37 of 50 states beat their own enacted maps; Illinois improves +174%, Louisiana +104%. Run against 2010 data, the same algorithm produces 0.320 — only 10% lower across vastly different political environments, evidence that geographic structure (not political opportunity) is what drives the outcome.

A separate track extends the base method for **Voting Rights Act compliance**, adding minority voting-age population as a second vertex weight so the compactness-versus-compliance tradeoff can be measured explicitly rather than assumed. That track's headline finding is a sharp **~42% statewide-minority threshold**: above it, geography delivers all statutory majority-minority districts without sacrificing compactness; below it, the tradeoff is real and bounded.

Around all of it sits the same AI-first tooling as the rest: **20 research papers across five tracks** (Synthesis, Algorithm, Validation, VRA compliance, Experimental Extensions), an interactive 50-state dashboard, a 215-test suite, and a LaTeX pipeline that compiles papers, presentations, and guides directly from the run outputs. Different subject matter; same discipline.

---

## The shared pattern

**Games** — the pattern against play.

|              | HUNT                                                   | QUEST                                         | TIGRIS                                         |
|--------------|--------------------------------------------------------|-----------------------------------------------|------------------------------------------------|
| **skills**   | 17 hunt + puzzle skills                                | 20 design / play / learn skills               | 6 factory skills (ideate, concept, design, panel, amendment, handoff) |
| **pipeline** | SCOPE → STRUCTURE → POOL → META → AUTHOR → EDIT → INTEGRATION → BUILD → TEST → POLISH | PREP → PLAY → LOG → GATE → PANEL → INNOVATION → HANDOFF | ideate → concept → design → Parliament → amendment → handoff |
| **rubric**   | 20 principles + 30-profile panel + 12 solver archetypes | 8-axis design + 8-axis playtest + innovation log | 32-axis Pool + 8-designer Parliament + forward-only amendment |
| **artifact** | `scenarios/<hunt>/` + backport to `toolkit/`           | `sessions/S{N}-{prep,log,gate,panel,…}.md` + `TRACKER.md` | `games/<NNNN>-<slug>/` + TIGER BEAT score row |

**Long-form content** — the pattern against writing at scale.

|              | SIGNALS                     | PANEL                          | LUCIA                              | MAXIM                          | CERES                             | ASPECT                            |
|--------------|-----------------------------|--------------------------------|------------------------------------|--------------------------------|-----------------------------------|-----------------------------------|
| **skills**   | 62 across 9 namespaces      | 16 research sub-skills         | 15+ chronicle pipeline skills      | 5 reference review skills      | 4+ CERES review skills            | 7-stage pipeline skills           |
| **pipeline** | discover → specify → validate → prove → ship | draft → panel → synthesis → revision → submit | OPENING → GATE → PANEL → NOTES → WRITE → GATE → BOARD → FINAL | sweep → file → clean → graduate | research → catalog → matrix → simulate → playbook | BRIEF → SCHOOL → DESIGN → PANEL → INNOVATION → AMENDMENT → HANDOFF |
| **rubric**   | golden quest + customer test | CEMCK (25 pt)                 | Gate (30) + Chronicle (60)         | style contract + @editor tiers | 6-voice panel + 3 editorial gates | ASPECT (100 pt) + 10-persona panel + 14 schools |
| **artifact** | `{topic}-{signal}-{date}.md` | `REVIEW-{name}.md` + SYNTHESIS | `opening.md` + `chapter.md`        | `{field}/{NN}-{topic}.md`      | catalog entry + playbook file     | scorecard + design brief          |

Different domains. Same discipline.

---

## Reach me

- **Email:** giodl@microsoft.com
- **GitHub:** [@giodl73-repo](https://github.com/giodl73-repo)
