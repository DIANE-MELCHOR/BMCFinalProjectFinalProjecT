# 🔧 Fix Errors Guide

## Error 1: Firestore Permission Denied

**Solution:** Deploy the Firestore security rules to Firebase

### Steps:

1. **Install Firebase CLI** (if not already installed):
   ```powershell
   npm install -g firebase-tools
   ```

2. **Login to Firebase**:
   ```powershell
   firebase login
   ```

3. **Deploy Firestore Rules**:
   ```powershell
   cd ecommerce_app
   firebase deploy --only firestore:rules
   ```

   **OR** manually update in Firebase Console:
   - Go to [Firebase Console](https://console.firebase.google.com/)
   - Select your project: `ecommerceapp-39fb9`
   - Go to **Firestore Database** → **Rules** tab
   - Copy the contents from `firestore.rules` file
   - Paste and click **Publish**

## Error 2: Asset Loading Error (app_logo.png)

**Solution:** Clear Flutter build cache

### Steps:

1. **Stop the running app** (if running)

2. **Clean the build cache**:
   ```powershell
   cd ecommerce_app
   flutter clean
   ```

3. **Get dependencies again**:
   ```powershell
   flutter pub get
   ```

4. **Restart the app**:
   ```powershell
   flutter run -d chrome
   ```

   Or use your IDE's run button.

## ✅ After Fixing:

- The Firestore permission error will disappear once rules are deployed
- The asset error will disappear after `flutter clean` and restart
- Make sure you're **logged in** to the app (the rules require authentication)

## 📝 Note:

The `firestore.rules` file I created uses simplified rules for development:
- Allows all authenticated users to read/write
- This is safe for development but should be tightened for production













