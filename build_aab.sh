#!/bin/bash

echo "🚀 Android App Bundle (AAB) Build Script"
echo "========================================"

# Check if gradlew exists
if [ ! -f "./gradlew" ]; then
    echo "❌ gradlew not found. Please make sure you're in the Android project root."
    exit 1
fi

# Make gradlew executable
chmod +x ./gradlew

echo "📦 Building Debug AAB..."
./gradlew bundleDebug

if [ $? -eq 0 ]; then
    echo "✅ Debug AAB build completed successfully!"
    echo "📱 AAB location: app/build/outputs/bundle/debug/app-debug.aab"
else
    echo "❌ Debug AAB build failed!"
    exit 1
fi

echo ""
echo "📦 Building Release AAB..."
./gradlew bundleRelease

if [ $? -eq 0 ]; then
    echo "✅ Release AAB build completed successfully!"
    echo "📱 AAB location: app/build/outputs/bundle/release/app-release.aab"
    
    # Show AAB information
    echo ""
    echo "📊 AAB Information:"
    echo "=================="
    ls -lh app/build/outputs/bundle/debug/app-debug.aab 2>/dev/null || echo "Debug AAB not found"
    ls -lh app/build/outputs/bundle/release/app-release.aab 2>/dev/null || echo "Release AAB not found"
else
    echo "❌ Release AAB build failed!"
    exit 1
fi

echo ""
echo "🎉 AAB build process completed!"
echo "💡 Tip: AAB files are optimized for Google Play Store distribution."