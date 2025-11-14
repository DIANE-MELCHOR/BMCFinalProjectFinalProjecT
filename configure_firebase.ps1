# PowerShell script to run flutterfire configure
# This script adds the pub cache bin to PATH temporarily and runs flutterfire

$pubCacheBin = "$env:LOCALAPPDATA\Pub\Cache\bin"
$env:PATH = "$pubCacheBin;$env:PATH"

Write-Host "Running flutterfire configure..." -ForegroundColor Green
dart pub global run flutterfire_cli:flutterfire configure















