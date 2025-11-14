@echo off
REM This script builds the release APK from the correct directory
cd /d "%~dp0"
echo Building release APK...
echo Current directory: %CD%
flutter clean
flutter build apk --release
echo.
echo Build complete! Check: build\app\outputs\flutter-apk\app-release.apk
pause

