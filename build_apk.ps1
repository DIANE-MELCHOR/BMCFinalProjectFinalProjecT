# PowerShell script to build release APK
# This script automatically changes to the correct directory

$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptPath

Write-Host "Building release APK..." -ForegroundColor Green
Write-Host "Current directory: $PWD" -ForegroundColor Cyan

flutter clean
flutter build apk --release

Write-Host ""
Write-Host "Build complete! Check: build\app\outputs\flutter-apk\app-release.apk" -ForegroundColor Green



