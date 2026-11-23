# Pulse 01: PITFALL adoption

## Goal

Add repo-local PITFALL doctrine for the public portfolio front door so profile
copy, series pages, repo highlights, public links, and TRACKER ownership
boundaries preserve reusable failure memory.

## Change

- Added `.pitfall/PITFALL.md`.
- Added 5 principles in `.pitfall/PRINCIPLES.md`.
- Added 5 invariants in `.pitfall/INVARIANTS.md`.
- Added 5 pitfalls in `.pitfall/PITFALLS.md`.

## Findings

- `GIODL73-PF-01`, `GIODL73-PF-02`, `GIODL73-PF-03`, and
  `GIODL73-PF-04` remain open repo-local risks.
- `GIODL73-PF-05` is mitigated by the current TRACKER-owned taxonomy posture
  and the existing Series Narrative Curator / Repo Link Steward review roles.
- No GitHub issue was filed because the current risks are structural and
  repo-local. File one only if a public-profile release, repo rename, or
  cross-owner publication schedule needs public tracking.

## Validation

```powershell
C:\Users\giodl\.cargo\bin\cargo.exe run --manifest-path C:\src\TRACKER\repos\standards-protocols\pitfall\Cargo.toml -q -p pitfall-cli -- validate C:\src\TRACKER\repos\front-door\giodl73-repo --format json
python C:\src\TRACKER\repos\standards-protocols\pitfall\tools\check_pitfall.py C:\src\TRACKER\repos\front-door\giodl73-repo
pwsh -NoProfile -File tests\check-proof.ps1
pwsh -NoProfile -File tools\check-local-links.ps1 README.md
git diff --check
```
