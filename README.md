# 🚀 Uygulamam - Android Mobil Uygulama

Modern ve kullanıcı dostu bir Android uygulaması. Material Design prensipleri ile geliştirilmiş basit ama etkili bir sayaç uygulaması.

## 📱 Özellikler

- ✨ Modern Material Design 3 arayüzü
- 🎯 Basit sayaç fonksiyonalitesi
- 🔄 Sıfırlama özelliği
- 🎉 Her 5 tıklamada tebrik mesajı
- 🌙 Koyu/Açık tema desteği
- 📱 Responsive tasarım

## 🛠️ Teknolojiler

- **Kotlin** - Ana programlama dili
- **Android SDK** - Minimum API 21 (Android 5.0)
- **Material Design 3** - Modern UI bileşenleri
- **ViewBinding** - Güvenli view erişimi
- **Gradle** - Build sistemi

## 🏗️ Kurulum ve Derleme

### Gereksinimler

- Android Studio Flamingo veya üzeri
- JDK 8 veya üzeri
- Android SDK 34
- Gradle 8.0+

### 📦 APK Derleme

```bash
# Debug APK oluşturma
./build_apk.sh

# Manuel olarak:
./gradlew assembleDebug
./gradlew assembleRelease
```

APK dosyaları şu konumlarda oluşturulur:
- Debug: `app/build/outputs/apk/debug/app-debug.apk`
- Release: `app/build/outputs/apk/release/app-release.apk`

### 📱 AAB (Android App Bundle) Derleme

```bash
# AAB dosyalarını oluşturma
./build_aab.sh

# Manuel olarak:
./gradlew bundleDebug
./gradlew bundleRelease
```

AAB dosyaları şu konumlarda oluşturulur:
- Debug: `app/build/outputs/bundle/debug/app-debug.aab`
- Release: `app/build/outputs/bundle/release/app-release.aab`

### 🔧 Geliştirici Komutları

```bash
# Proje temizleme
./gradlew clean

# Test çalıştırma
./gradlew test

# Lint kontrolü
./gradlew lint

# Dependency güncellemesi kontrol
./gradlew dependencyUpdates
```

## 📂 Proje Yapısı

```
Uygulamam/
├── app/
│   ├── src/main/
│   │   ├── java/com/example/uygulamam/
│   │   │   └── MainActivity.kt
│   │   ├── res/
│   │   │   ├── layout/
│   │   │   │   └── activity_main.xml
│   │   │   ├── values/
│   │   │   │   ├── strings.xml
│   │   │   │   ├── colors.xml
│   │   │   │   └── themes.xml
│   │   │   └── xml/
│   │   └── AndroidManifest.xml
│   ├── build.gradle
│   └── proguard-rules.pro
├── gradle/
├── build.gradle
├── settings.gradle
├── gradle.properties
├── build_apk.sh
├── build_aab.sh
└── README.md
```

## 🎯 Kullanım

1. Uygulamayı telefonda açın
2. **"Tıkla!"** butonuna basarak sayacı artırın
3. Her 5 tıklamada özel tebrik mesajı alın
4. **"Sıfırla"** butonu ile sayacı sıfırlayın

## 🔄 Sürüm Geçmişi

### v1.0 (İlk Sürüm)
- ✅ Temel sayaç fonksiyonalitesi
- ✅ Material Design 3 arayüzü
- ✅ Türkçe dil desteği
- ✅ Otomatik build scriptleri

## 🤝 Katkıda Bulunma

1. Bu repository'yi fork edin
2. Feature branch oluşturun (`git checkout -b feature/yeni-ozellik`)
3. Değişikliklerinizi commit edin (`git commit -am 'Yeni özellik eklendi'`)
4. Branch'inizi push edin (`git push origin feature/yeni-ozellik`)
5. Pull Request oluşturun

## 📄 Lisans

Bu proje MIT lisansı altında lisanslanmıştır. Detaylar için [LICENSE](LICENSE) dosyasına bakınız.

## 📞 İletişim

- **GitHub**: [Berocan025](https://github.com/Berocan025)
- **Repository**: [Uygulamam](https://github.com/Berocan025/Uygulamam)

---
**Uygulamam** - Basit ama güçlü Android uygulaması 🚀
