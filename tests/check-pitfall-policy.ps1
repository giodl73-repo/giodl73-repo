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

# Checks GIODL73-PF-01: the public front door must not become TRACKER.
Invoke-GitGrep "public map\|The series below are the public map\|Do not maintain a second exhaustive repo list here" @(
  "README.md",
  "CLAUDE.md"
)

# Checks GIODL73-PF-02: compressed highlights must keep limitation labels.
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
Assert-NoPublicMatch "C:\\|context[\\/]+waves|pulse-[0-9]+|TRACKER-only|local staging|unpublished implementation"
