# PowerShell script to install APK on connected Android device
# Make sure your phone is connected via USB with USB Debugging enabled

$ANDROID_HOME = "$env:LOCALAPPDATA\Android\Sdk"
$ADB = "$ANDROID_HOME\platform-tools\adb.exe"
$APK_PATH = "android\app\build\outputs\flutter-apk\app-release.apk"

Write-Host "Checking for connected devices..." -ForegroundColor Cyan
& $ADB devices

Write-Host "`nInstalling APK..." -ForegroundColor Green
& $ADB install -r $APK_PATH

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n✅ APK installed successfully!" -ForegroundColor Green
} else {
    Write-Host "`n❌ Installation failed. Make sure:" -ForegroundColor Red
    Write-Host "   1. Your phone is connected via USB" -ForegroundColor Yellow
    Write-Host "   2. USB Debugging is enabled" -ForegroundColor Yellow
    Write-Host "   3. You've authorized the computer on your phone" -ForegroundColor Yellow
}

