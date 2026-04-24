# Gio Della-Libera

VP of Engineering at Microsoft on **Agents 353**.

## I believe in AI-first development

The shortest version: **know what you know before you commit.** Inertia is the real competitor — not the other tool, not the other team. Most features lose to nothing getting built at all, or to the wrong thing getting built confidently.

AI-first development, as I practice it, is a discipline for closing that gap. Every one of the projects below is cut from the same pattern:

1. **Author skills** — small, self-contained units of behavior. Each skill is one stage of a pipeline.
2. **Run them end-to-end** — the pipeline gates work at scored checkpoints. Nothing advances without evidence.
3. **Score against an evolving rubric** — when something exceptional shows up, log the innovation and raise the bar forward-only.
4. **Keep every artifact** — dated, append-only, provenanced. The history of what you believed and when is preserved.

Skills beget signals. Signals beget better skills. Four of the five projects below are different applications of that same loop; the fifth is a side line of research I can't put down.

---

## The AI-first stack

### [SIGNALS](https://github.com/giodl73-repo/SIGNALS) — feature decision intelligence

**62 skills across 9 namespaces** — `discover`, `specify`, `validate`, `simulate`, `prove`, `listen`, `rhythm`, `roles`, `tools`. Plugin for Claude Code and GitHub Copilot. Point a skill at a feature, it writes a dated artifact; accumulate artifacts until the feature's story is ready to ship — or until you realize it shouldn't.

This is where **golden quests** live: each skill has a golden rubric defining what "good" looks like, plus a customer test that confirms a real person can actually use it. *The quest loop builds the ship. The customer test confirms it floats.* Every new skill must trace back to a proven technique — innovation with heritage.

### [PANEL](https://github.com/giodl73-repo/PANEL) — AI-simulated expert review

Three-tier review architecture — **paper, module, board** — with **45 persona-based reviewers** across 10 categories. Papers move through an 8-stage lifecycle and are scored on a **25-point CEMCK rubric** (Claim, Evidence, Method, Contribution, Craft). Pre-write discovery (hypothesis, competitors, causal, websearch, coherence, synthesize) and post-write validation (consistency, dimensional, contract, referee) keep the research honest.

This is how the ideas coming out of SIGNALS get empirical evidence before they leave the house. Not peer review — a quality-improvement simulation that you run *before* the real reviewers see it.

### [LUCIA](https://github.com/giodl73-repo/LUCIA) — the human chronicle

A narrative encyclopedia of human civilization — **26 regions, ~260 peoples, 115 chapters locked** — told from inside each culture's own worldview. Named after LUCY, a German Shorthaired Pointer who always goes through the gate first.

The same AI-first pattern, applied to cultural writing: an **11-stage pipeline** (OPENING → GATE-1 → PANEL-1 → NOTES → PANEL-2 → FIXES → WRITE → GATE-2 → CLEAN → BOARD → FINAL), two rubrics (**The Gate**, 30pts; **The Chronicle**, 60pts), and a five-voice permanent panel: Barbara Tuchman, Ibn Khaldun, Chinua Achebe, Wade Davis, Ryszard Kapuściński. The **Achebe Test** is the line nothing crosses without passing: *could a thoughtful member of this culture read this and feel their story was told with dignity, from inside?*

### [MAXIM](https://github.com/giodl73-repo/MAXIM) — the reference library

**13 sections, 217 directories, ~2,170 content files, ~14,070 pages, 52 bound volumes.** A self-authored reference spanning computing, mathematics, physics, life sciences, arts, material culture, and everything in between — peer-level depth, never dumbed down, layered ASCII diagrams and decision cheat sheets.

Same pattern again: review skills (`/reference-review sweep | file | clean`), **`@editor` tags** with P1/P2/P3 priority tiering, style contract gates, and a graduation check before a guide leaves review. Skills built MAXIM; skills keep it honest.

---

## Side project

### [DEXTRO](https://github.com/giodl73-repo/DEXTRO) — congressional redistricting

Purely algorithmic redistricting for all 50 US states across three census years (2000, 2010, 2020) — **435 districts** drawn via METIS recursive bisection on census-tract adjacency graphs. No political or racial data in the loop; the objective is compactness and population balance, nothing else.

A different line of research from the AI-first stack, but it scratches the same itch: *make the process legible and the evidence explicit.*

---

## The shared pattern

```
          SIGNALS          PANEL            LUCIA             MAXIM
          ───────          ─────            ─────             ─────
  skills  62 skills        16 research      15+ chronicle     5 reference
          9 namespaces     sub-skills       pipeline skills   review skills

pipeline  discover →       draft → panel    OPENING → GATE →  sweep →
          specify →        → synthesis →    PANEL → NOTES →   file →
          validate →       revision →       WRITE → GATE →    clean →
          prove → ship     submit           BOARD → FINAL     graduate

  rubric  golden quest +   CEMCK (25 pt)    Gate 30 +         style contract
          customer test                     Chronicle 60      + @editor tiers

artifact  {topic}-{signal} REVIEW-{name}    opening.md +      {field}/{NN}-
          -{date}.md       + SYNTHESIS.md   chapter.md        {topic}.md
```

Different domains. Same discipline.

---

## Reach me

- **Email:** giodl@microsoft.com
- **GitHub:** [@giodl73-repo](https://github.com/giodl73-repo)
