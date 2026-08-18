$checker = Join-Path $PSScriptRoot "..\tools\check-local-links.ps1"
$accepted = & pwsh -NoProfile -File $checker (Join-Path $PSScriptRoot "..\README.md")
if ($LASTEXITCODE -ne 0 -or $accepted -notmatch '^OK ') { throw "profile links were not accepted" }

$rejected = & pwsh -NoProfile -File $checker (Join-Path $PSScriptRoot "fixtures\invalid-readme.md")
if ($LASTEXITCODE -ne 2 -or $rejected -notmatch 'missing local link target: series/missing.md') {
    throw "missing profile link did not produce the expected structured failure"
}
Write-Output "PASS accepted profile links and rejected missing target"
