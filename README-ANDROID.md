# O&M Shift Manager — Android project

This is an Android Studio project wrapper for the current React app. It keeps the admin/viewer login, monthly roster, fixed monthly shifts, two recurring weekly-off days, one-day shift swaps, leave workflow, watermark, and formatted Excel/image exports.

## Android JSON storage

The Android app writes all application data to a JSON file in its private app files directory: `om-shift-manager-data.json`. It does not use `localStorage` or IndexedDB. The JSON file is loaded automatically at app startup and saved after data changes. Use **Import JSON** to import a JSON backup from the desktop version. JSON export and roster downloads use Android's document save dialog.

Because this file is app-private, uninstalling the app removes it. Export the JSON backup regularly if you need to preserve or transfer data.

## Build an APK (requires Android Studio, Android SDK, Java 17+, and Node.js 18+)

1. Open this `OM-Shift-Manager-Android` folder in Android Studio.
2. Allow Gradle sync and SDK installation if prompted.
3. Build menu → **Build Bundle(s) / APK(s)** → **Build APK(s)**.
4. The debug APK will be under `app/build/outputs/apk/debug/app-debug.apk`.

The Gradle build runs `npm install` and `npm run build` for the React web app and copies the result into Android assets before compiling the APK. The first build requires internet access to download npm and Gradle dependencies.

## First launch

The app creates its own JSON data file and seeds two starter accounts:
- Admin: `admin` / `admin123`
- Viewer: `viewer` / `viewer123`

Use the admin account to configure the roster and create individual user accounts. Import your existing desktop JSON backup if you want to carry current employees and schedules onto Android.

## Security note

Role restrictions are implemented in the client app. This is suitable for a locally managed app but not a server-backed multi-device authentication system. Anyone with access to the device and app data may be able to inspect local data. Change the default passwords and export backups securely.
