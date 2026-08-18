param([Parameter(Mandatory)][string]$Path)

try {
    $file = Resolve-Path $Path -ErrorAction Stop
    $text = Get-Content $file -Raw -ErrorAction Stop
} catch {
    Write-Output "ERROR cannot read markdown file: $Path"
    exit 2
}

$root = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
$errors = [System.Collections.Generic.List[string]]::new()
foreach ($match in [regex]::Matches($text, '\[[^\]]+\]\(([^)]+)\)')) {
    $target = $match.Groups[1].Value
    if ($target -match '^(https?://|#|mailto:)') { continue }
    $clean = $target.Split('#')[0]
    if (-not $clean) { continue }
    $resolved = [IO.Path]::GetFullPath((Join-Path (Split-Path $file.Path -Parent) $clean))
    if (-not $resolved.StartsWith($root, [StringComparison]::OrdinalIgnoreCase) -or
        -not (Test-Path $resolved -PathType Leaf)) {
        $errors.Add("missing local link target: $clean")
    }
}
if ($errors.Count) {
    $errors | Sort-Object -Unique | ForEach-Object { Write-Output "ERROR $_" }
    exit 2
}
Write-Output "OK $Path"
