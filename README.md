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

When a run produces something the rubric *didn't anticipate* — a new kind of finding, a new angle of attack, a better structure — it goes into the **innovation log**. Once a cluster forms, the rubric version increments. LUCIA's chapter rubric has cycled through seven versions that way; MAXIM has gate-promoted ~2,170 guides against an evolving style contract; PANEL's CEMCK rubric has been re-tuned off its own review rounds. The bar keeps rising because the work itself keeps raising it.

**New skills don't get invented; they get earned.** A finding that surfaces repeatedly across investigations becomes the candidate for a new skill. Ideas become skills when the evidence says they should, and every artifact keeps a provenance frontmatter so you can always ask: *what did we think we learned vs. what did we actually learn?*

That's the loop. Skills produce dated evidence. Evidence surfaces patterns. Patterns become new skills. The system gets sharper without the model changing at all.

---

## The pattern, applied

Three more projects run this same discipline against subject matter that isn't software.

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

---

## Side project

### [DEXTRO](https://github.com/giodl73-repo/DEXTRO) — automated congressional redistricting

Draws all **435 congressional districts** across **50 US states** and **three census years** (2000, 2010, 2020) via **recursive bifurcation** using the **METIS** graph partitioning algorithm. Census tracts are the atoms; a queen-contiguity adjacency graph — with **county-aware, water-based adjacency** so San Francisco Bay and island tracts resolve correctly — is the substrate. Each state splits in half, halves split recursively, until every region holds one district, with the split tree preserved as a rounds hierarchy you can walk back through.

The objective function is **compactness** (Polsby-Popper, Reock) and **population balance** (±0.5%). The longitudinal angle — the same algorithm run against 2000, 2010, and 2020 — is the interesting part: you can watch how the country's shape actually redistricts itself as census realities shift underneath.

Around the algorithm sits the same AI-first tooling as the rest: **31 Claude Code skills** covering the pipeline, a **215-test suite** at 90%+ coverage, interactive per-run and cross-run dashboards, and a LaTeX pipeline that compiles papers, presentations, and guides directly from the run outputs. Different subject matter; same discipline.

---

## The shared pattern

|          | SIGNALS                    | PANEL                     | LUCIA                         | MAXIM                       | CERES                          |
|----------|----------------------------|---------------------------|-------------------------------|-----------------------------|--------------------------------|
| **skills**   | 62 across 9 namespaces     | 16 research sub-skills    | 15+ chronicle pipeline skills | 5 reference review skills   | 4+ CERES review skills         |
| **pipeline** | discover → specify → validate → prove → ship | draft → panel → synthesis → revision → submit | OPENING → GATE → PANEL → NOTES → WRITE → GATE → BOARD → FINAL | sweep → file → clean → graduate | research → catalog → matrix → simulate → playbook |
| **rubric**   | golden quest + customer test | CEMCK (25 pt)             | Gate (30) + Chronicle (60)    | style contract + @editor tiers | 6-voice panel + 3 editorial gates |
| **artifact** | `{topic}-{signal}-{date}.md` | `REVIEW-{name}.md` + SYNTHESIS | `opening.md` + `chapter.md`   | `{field}/{NN}-{topic}.md`   | catalog entry + playbook file  |

Different domains. Same discipline.

---

## Reach me

- **Email:** giodl@microsoft.com
- **GitHub:** [@giodl73-repo](https://github.com/giodl73-repo)
