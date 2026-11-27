# Non-destructive heuristics. False positives and false negatives are possible.
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
Write-Host '=== ALFCYBERCOP — PUBLICATION PRECHECK ==='
Write-Host "Location: $root"
$tracked = Get-ChildItem -LiteralPath $root -Recurse -File -Force |
    Where-Object { $_.FullName -notmatch '[\\/]\.git[\\/]' -and $_.FullName -notmatch '[\\/]local-private[\\/]' }
$badNames = $tracked | Where-Object { $_.Name -match '(^\.env$|\.pem$|\.key$|\.p12$|id_rsa|\.kdbx$|\.bak$|\.sqlite$|\.pcap$|\.zip$)' }
if ($badNames) {
    Write-Warning 'Potentially sensitive file types were found:'
    $badNames | Select-Object -ExpandProperty FullName
}
$patterns = @('(?i)(password|token|api[_-]?key|secret)\s*[:=]\s*["''][^"'']{6,}',
              '(?i)-----BEGIN .*PRIVATE KEY-----',
              '(?i)mongodb(\+srv)?://[^\s]+:[^\s]+@')
foreach ($f in $tracked | Where-Object { $_.Extension -in '.md','.txt','.ps1','.py','.yaml','.yml','.json','.ini','.conf','.sh','.csv' }) {
    foreach ($pat in $patterns) {
        if (Select-String -LiteralPath $f.FullName -Pattern $pat -Quiet -ErrorAction SilentlyContinue) {
            Write-Warning "Review content: $($f.FullName)"
            break
        }
    }
}
Write-Host 'Precheck finished. Manual review required before any git push.'
