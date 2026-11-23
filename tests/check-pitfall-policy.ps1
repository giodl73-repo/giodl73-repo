Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Resolve-Path (Join-Path $PSScriptRoot "..")
$publicFiles = @(
  "README.md",
  "series/README.md",
  "series/ai-methodology.md",
  "series/applied-systems.md",
  "series/design-labs.md",
  "series/election-systems.md",
  "series/games-design.md",
  "series/knowledge-systems.md",
  "series/standards-protocols.md",
  "series/tools-infrastructure.md"
) | ForEach-Object { Join-Path $root $_ }
$boundaryPath = Join-Path $root "docs/public-boundaries.v1.json"

function Invoke-GitGrep {
  param(
    [string]$Pattern,
    [string[]]$Paths
  )

  & git grep -n $Pattern -- $Paths | Out-Null
  if ($LASTEXITCODE -ne 0) {
    throw "Expected front-door policy text was not found for pattern: $Pattern"
  }
}

function Assert-NoPublicMatch {
  param([string]$Pattern)

  $matches = Select-String -Path $publicFiles -Pattern $Pattern -ErrorAction Stop
  if ($matches) {
    $first = $matches | Select-Object -First 1
    throw "Unexpected public-surface match in $($first.Path):$($first.LineNumber): $($first.Line)"
  }
}

function Assert-Boundary {
  param(
    [object]$Manifest,
    [string]$Pitfall,
    [string]$RequiredOwner,
    [string[]]$BlockedClaims
  )

  $boundary = $Manifest.pitfall_boundaries | Where-Object { $_.pitfall -eq $Pitfall }
  if (-not $boundary) {
    throw "Missing public boundary for $Pitfall"
  }

  if ($boundary.required_owner -ne $RequiredOwner) {
    throw "Unexpected required owner for $Pitfall`: $($boundary.required_owner)"
  }

  foreach ($claim in $BlockedClaims) {
    if ($boundary.blocked_claims -notcontains $claim) {
      throw "Missing blocked claim for $Pitfall`: $claim"
    }
  }
}

if (-not (Test-Path -LiteralPath $boundaryPath)) {
  throw "Missing public boundary manifest: $boundaryPath"
}

$boundaryManifest = Get-Content -LiteralPath $boundaryPath -Raw | ConvertFrom-Json
if ($boundaryManifest.'$schema' -ne "giodl73-repo.public-boundaries.v1") {
  throw "Unexpected public boundary schema: $($boundaryManifest.'$schema')"
}

if ($boundaryManifest.authority.complete_registry_readiness_dependencies_snapshots_and_backlog -ne "TRACKER") {
  throw "TRACKER must own complete portfolio state in the public boundary manifest."
}

if ($boundaryManifest.authority.detailed_repo_evidence_maturity_and_validation -ne "child repositories") {
  throw "Child repos must own detailed evidence and maturity state in the public boundary manifest."
}

# Checks GIODL73-PF-01: the public front door must not become TRACKER.
Assert-Boundary $boundaryManifest "GIODL73-PF-01" "TRACKER" @(
  "front door is the complete portfolio registry",
  "front door owns readiness, dependency, snapshot, or backlog state",
  "series pages replace TRACKER portfolio taxonomy"
)
Invoke-GitGrep "public map\|The series below are the public map\|Do not maintain a second exhaustive repo list here" @(
  "README.md",
  "CLAUDE.md"
)

# Checks GIODL73-PF-02: compressed highlights must keep limitation labels.
Assert-Boundary $boundaryManifest "GIODL73-PF-02" "child repositories" @(
  "prototype result is deployed",
  "internal analysis is customer validated",
  "public reference artifact is official or externally endorsed",
  "transfer test proves child repo maturity without child evidence"
)
Invoke-GitGrep "not enacted law\|not individual advice\|Core ready\|Cited analysis\|Transfer test" @(
  "README.md",
  "series/applied-systems.md"
)

# Checks GIODL73-PF-03: front-door local links must fail loudly when stale.
& pwsh -NoProfile -File (Join-Path $root "tests/check-proof.ps1") | Out-Null
if ($LASTEXITCODE -ne 0) {
  throw "Retained front-door link proof failed."
}
Invoke-GitGrep "LEXICON" @(
  "README.md",
  "series/knowledge-systems.md"
)
Assert-NoPublicMatch "FACTORIUM|Factorium|factorium"

# Checks GIODL73-PF-04: public pages must not expose private process surfaces.
Assert-Boundary $boundaryManifest "GIODL73-PF-04" "giodl73-repo public-surface review" @(
  "public copy can mention local private paths",
  "public copy can publish TRACKER-only queues",
  "public copy can expose unpublished implementation history",
  "public copy can rely on unexplained agent workflow terms"
)
Assert-NoPublicMatch "C:\\|context[\\/]+waves|pulse-[0-9]+|TRACKER-only|local staging|unpublished implementation"
