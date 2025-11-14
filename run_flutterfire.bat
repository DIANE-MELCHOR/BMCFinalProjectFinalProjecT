@echo off
cd /d "%~dp0"
set PATH=%LOCALAPPDATA%\Pub\Cache\bin;%PATH%
echo Running flutterfire configure...
flutterfire configure
pause















