#!/bin/bash

echo "🚀 Android Geliştirme Ortamı Kurulum Scripti"
echo "============================================="

# Renk kodları
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[✅]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[⚠️]${NC} $1"
}

print_error() {
    echo -e "${RED}[❌]${NC} $1"
}

# İşletim sistemi kontrolü
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS="linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS="mac"
elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]]; then
    OS="windows"
else
    print_error "Desteklenmeyen işletim sistemi: $OSTYPE"
    exit 1
fi

print_status "İşletim sistemi tespit edildi: $OS"

# Java kontrolü
print_status "Java kontrolü yapılıyor..."
if command -v java &> /dev/null; then
    JAVA_VERSION=$(java -version 2>&1 | head -1 | cut -d'"' -f2)
    print_success "Java bulundu: $JAVA_VERSION"
else
    print_warning "Java bulunamadı!"
    
    if [[ "$OS" == "linux" ]]; then
        print_status "Ubuntu/Debian için OpenJDK kurulumu öneriliyor:"
        echo "sudo apt update"
        echo "sudo apt install openjdk-17-jdk"
    elif [[ "$OS" == "mac" ]]; then
        print_status "macOS için Homebrew ile Java kurulumu:"
        echo "brew install openjdk@17"
    elif [[ "$OS" == "windows" ]]; then
        print_status "Windows için Oracle JDK veya OpenJDK indirin:"
        echo "https://www.oracle.com/java/technologies/downloads/"
    fi
    echo ""
fi

# Android Studio kontrolü
print_status "Android Studio kontrolü..."
if [[ -d "$HOME/Android/Sdk" ]] || [[ -d "/opt/android-sdk" ]] || [[ -d "$HOME/Library/Android/sdk" ]]; then
    print_success "Android SDK bulundu"
else
    print_warning "Android SDK bulunamadı!"
    print_status "Android Studio'yu indirip kurun:"
    echo "https://developer.android.com/studio"
    echo ""
fi

# Gradle kontrolü
print_status "Gradle kontrolü..."
if [[ -f "./gradlew" ]]; then
    chmod +x ./gradlew
    print_success "Gradle wrapper bulundu ve executable yapıldı"
else
    print_error "gradlew bulunamadı! Bu scripti proje klasöründe çalıştırın."
    exit 1
fi

# APK derleme testi
print_status "APK derleme testi yapılıyor..."
echo ""
echo "🔥 TEST DERLEMESI BAŞLATIYOR..."
echo "================================"

if ./gradlew assembleDebug --stacktrace; then
    print_success "Debug APK başarıyla oluşturuldu!"
    
    APK_PATH="app/build/outputs/apk/debug/app-debug.apk"
    if [[ -f "$APK_PATH" ]]; then
        APK_SIZE=$(du -h "$APK_PATH" | cut -f1)
        print_success "APK konumu: $APK_PATH"
        print_success "APK boyutu: $APK_SIZE"
        
        # APK'yı daha kolay erişilebilir bir yere kopyala
        cp "$APK_PATH" "./Uygulamam-debug.apk"
        print_success "APK kopyalandı: ./Uygulamam-debug.apk"
    fi
else
    print_error "APK derlemesi başarısız!"
    echo ""
    print_status "Olası çözümler:"
    echo "1. Android SDK'nın kurulu olduğundan emin olun"
    echo "2. ANDROID_HOME environment variable'ını ayarlayın"
    echo "3. Java 8+ kurulu olduğundan emin olun"
    echo "4. İnternet bağlantınızı kontrol edin (dependencies indiriliyor)"
    exit 1
fi

echo ""
print_success "✨ Kurulum tamamlandı!"
print_status "APK oluşturmak için:"
echo "  📱 Debug APK: ./build_apk.sh"
echo "  🎁 AAB dosyası: ./build_aab.sh"
echo ""
print_status "APK dosyanız hazır: ./Uygulamam-debug.apk"
print_status "Bu dosyayı Android telefonunuza aktarıp yükleyebilirsiniz!"