# Opt-in helper. Does not configure identity or publish to GitHub.
$ErrorActionPreference='Stop'
$root=Split-Path -Parent $PSScriptRoot
if (-not (Get-Command git -ErrorAction SilentlyContinue)) { throw 'Git not installed.' }
if (-not (Test-Path (Join-Path $root '.git'))) { throw 'Not a Git repository.' }
& git -C $root status
Write-Host 'Review all staged files and the publication policy first.'
Write-Host "When ready, run manually: git -C `"$root`" add ."
Write-Host "Then: git -C `"$root`" diff --cached"
Write-Host "Then: git -C `"$root`" commit -m 'docs: bootstrap ecosystem'"
