@echo off
setlocal
where npm >nul 2>nul || (echo Node.js/npm not found. Install Node.js 18+ first.& pause & exit /b 1)
where gradle >nul 2>nul || (echo Gradle not found on PATH. Open this folder in Android Studio and build the APK from the Build menu.& pause & exit /b 1)
call npm --prefix web install
if errorlevel 1 exit /b 1
call npm --prefix web run build
if errorlevel 1 exit /b 1
gradle assembleDebug
if errorlevel 1 exit /b 1
echo APK should be at app\build\outputs\apk\debug\app-debug.apk
pause
