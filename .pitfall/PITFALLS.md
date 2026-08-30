# giodl73-repo Pitfalls

## GIODL73-PF-01: Front Door Becomes Portfolio Source Of Truth

**Pattern:** README or series pages start carrying exhaustive readiness,
dependency, snapshot, or backlog state that belongs in TRACKER.

**Domain:** Public profile copy, series pages, repo highlights, portfolio
status updates, and new-repo navigation.

**Actor:** Public reader, portfolio maintainer, or future agent using the
profile as a map.

**Task:** Find repo readiness, dependency, or navigation state.

**Surface:** `README.md`, `series/*.md`, repo highlights, and new-repo
navigation.

**Likely mistake:** Treat the compressed public front door as the authoritative
complete TRACKER registry.

**Consequence:** A stale or partial public summary becomes planning input and
conflicts with TRACKER.

**Owner:** giodl73-repo owns public narrative; TRACKER owns complete portfolio
state, snapshots, and backlog.

**Detection difficulty:** Public summaries are useful, so status detail can
creep in gradually until the profile looks authoritative but stale.

**Structural solution:** Keep the profile as public map and entry point; link
to child repos for evidence and keep complete portfolio state in TRACKER.

**Evidence:** `CLAUDE.md`, `README.md`, and
`.roles/parliament/series-narrative-curator.md`.

**Test:** `tests/check-pitfall-policy.ps1`

**Status:** OPEN

## GIODL73-PF-02: Highlight Text Overclaims Repo Maturity

**Pattern:** A featured repo result, transfer test, prototype, internal
analysis, or public-reference artifact is summarized without its limitation
language, making it sound official, deployed, customer-validated, or externally
endorsed.

**Domain:** README highlights, series pages, "Start with" lists, applied-system
summaries, and knowledge-system result summaries.

**Actor:** Public reader, reviewer, or downstream maintainer.

**Task:** Judge maturity, result meaning, or adoptability from a short
highlight.

**Surface:** `README.md` highlights, `series/applied-systems.md`, and Start
with tables.

**Likely mistake:** Drop or skim the limitation language when copying or
reading a compressed result.

**Consequence:** Internal, prototype, or aggregate results are mistaken for
deployed, official, customer-validated, or endorsed outcomes.

**Owner:** giodl73-repo owns public labels; child repos own detailed evidence.

**Detection difficulty:** Highlights need compression, and compressed success
language can drop the evidence label that made the child repo safe.

**Structural solution:** Keep limitation text near any result or readiness
claim, and defer detailed evidence to the child repo's README, VTRACE, papers,
or adoption guide.

**Evidence:** `README.md`, `series/applied-systems.md`,
`series/knowledge-systems.md`, and
`.roles/parliament/public-surface-scrubber.md`.

**Test:** `tests/check-pitfall-policy.ps1`

**Status:** OPEN

## GIODL73-PF-03: Repo Rename Leaves Stale Public Pointers

**Pattern:** A repo rename, branch change, archive decision, or series move
updates TRACKER or the child repo but leaves old public links, labels, or
series placement in giodl73-repo.

**Domain:** GitHub profile README, series pages, default branch links, renamed
repos, and local document links.

**Actor:** Maintainer doing a repo rename, branch change, archive decision, or
series move.

**Task:** Update public links, labels, and placement.

**Surface:** `README.md`, `series/*.md`, `tests/check-proof.ps1`, and
`tools/check-local-links.ps1`.

**Likely mistake:** Trust GitHub redirects and miss stale labels or deep branch
links.

**Consequence:** Readers land in the wrong repo, branch, or old repo name, and
the portfolio map loses trust.

**Owner:** giodl73-repo owns public pointers; TRACKER and child repos own rename
authority.

**Detection difficulty:** GitHub links may still resolve through redirects, so
the stale label can hide until a reader follows a deeper path or branch-specific
document link.

**Structural solution:** Treat renames and moves as link-steward events and run
the retained local-link proof after profile or series edits.

**Evidence:** `tools/check-local-links.ps1`, `tests/check-proof.ps1`,
`series/README.md`, and `.roles/parliament/repo-link-steward.md`.

**Test:** `tests/check-pitfall-policy.ps1`

**Status:** OPEN

## GIODL73-PF-04: Private Process Leaks Into Public Narrative

**Pattern:** Public copy mentions private paths, local staging state, private
TRACKER-only queues, unpublished implementation history, or unexplained agent
workflow terms.

**Domain:** README copy, series pages, agent instructions, public convention
text, and portfolio highlights.

**Actor:** Maintainer or future agent moving private coordination text into
public copy.

**Task:** Publish a README, series, or convention update.

**Surface:** `README.md`, `series/*.md`, `CLAUDE.md`, and public convention
text.

**Likely mistake:** Include local paths, wave or pulse status, TRACKER-only
queues, unpublished implementation history, or unexplained agent workflow.

**Consequence:** Public copy leaks private process, confuses external readers,
or makes private local state look public.

**Owner:** public-surface-scrubber and front-door roles own public copy;
TRACKER owns private coordination.

**Detection difficulty:** The same details are useful during local coordination,
so they can feel like helpful context until read by someone outside the private
workspace.

**Structural solution:** Run public-surface review before publication and keep
private sequencing in TRACKER or child repo wave records.

**Evidence:** `CLAUDE.md`, `README.md`, and
`.roles/parliament/public-surface-scrubber.md`.

**Test:** `tests/check-pitfall-policy.ps1`

**Status:** OPEN

## GIODL73-PF-05: Series Pages Become A Second Taxonomy

**Pattern:** Public series pages start making grouping, dependency, or status
decisions that diverge from TRACKER's canonical taxonomy.

**Domain:** `series/*.md`, root README tables, portfolio-family language, and
new public repo placement.

**Detection difficulty:** Narrative grouping is the purpose of a front door, so
taxonomy drift can look like improving reader flow rather than creating another
authority.

**Structural solution:** Use TRACKER taxonomy for ownership and dependency
decisions, and keep series pages focused on public explanation and navigation.

**Evidence:** `series/README.md`, `series/*.md`,
`.roles/parliament/series-narrative-curator.md`, and
`.roles/parliament/repo-link-steward.md`.

**Status:** MITIGATED
