APK BUILD REQUIREMENTS

This environment has no Android SDK/build-tools installed and cannot reach Google's download servers, so it cannot compile or sign an APK here. The complete Android Studio project is included in this ZIP; build the APK on a PC with Android Studio installed:

1. Extract the ZIP.
2. Open the extracted OM-Shift-Manager-Android folder in Android Studio.
3. Install the Android SDK platform 35 if prompted and allow Gradle sync.
4. Select Build > Build Bundle(s) / APK(s) > Build APK(s).
5. Find the output at app/build/outputs/apk/debug/app-debug.apk.

Node.js 18+ and network access are required on the first build because Gradle runs npm install and npm run build to bundle the React app.
