@echo off
REM Script to install APK on connected Android device
REM Make sure your phone is connected via USB with USB Debugging enabled

set ANDROID_HOME=%LOCALAPPDATA%\Android\Sdk
set ADB=%ANDROID_HOME%\platform-tools\adb.exe
set APK_PATH=android\app\build\outputs\flutter-apk\app-release.apk

echo Checking for connected devices...
"%ADB%" devices

echo.
echo Installing APK...
"%ADB%" install -r "%APK_PATH%"

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ✅ APK installed successfully!
) else (
    echo.
    echo ❌ Installation failed. Make sure:
    echo    1. Your phone is connected via USB
    echo    2. USB Debugging is enabled
    echo    3. You've authorized the computer on your phone
)

pause

