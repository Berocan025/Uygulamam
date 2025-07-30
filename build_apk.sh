#!/bin/bash

echo "🚀 Android APK Build Script"
echo "=========================="

# Check if gradlew exists
if [ ! -f "./gradlew" ]; then
    echo "❌ gradlew not found. Please make sure you're in the Android project root."
    exit 1
fi

# Make gradlew executable
chmod +x ./gradlew

echo "📦 Building Debug APK..."
./gradlew assembleDebug

if [ $? -eq 0 ]; then
    echo "✅ Debug APK build completed successfully!"
    echo "📱 APK location: app/build/outputs/apk/debug/app-debug.apk"
else
    echo "❌ Debug APK build failed!"
    exit 1
fi

echo ""
echo "📦 Building Release APK..."
./gradlew assembleRelease

if [ $? -eq 0 ]; then
    echo "✅ Release APK build completed successfully!"
    echo "📱 APK location: app/build/outputs/apk/release/app-release.apk"
    
    # Show APK information
    echo ""
    echo "📊 APK Information:"
    echo "==================="
    ls -lh app/build/outputs/apk/debug/app-debug.apk 2>/dev/null || echo "Debug APK not found"
    ls -lh app/build/outputs/apk/release/app-release.apk 2>/dev/null || echo "Release APK not found"
else
    echo "❌ Release APK build failed!"
    exit 1
fi

echo ""
echo "🎉 APK build process completed!"