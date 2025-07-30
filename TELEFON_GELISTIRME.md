# 📱 TELEFONDA ANDROID UYGULAMA GELİŞTİRME REHBERİ

## 🚀 YÖNTEMLER:

### **YÖNTEM 1: TERMUX + ANDROID SDK (ÜCRETSİZ) ⭐**

#### 📥 **Kurulum:**
1. **Termux** uygulamasını indirin: [Play Store](https://play.google.com/store/apps/details?id=com.termux) veya [F-Droid](https://f-droid.org/packages/com.termux/)

2. **Termux'ta şu komutları çalıştırın:**
```bash
# Termux'u güncelleyin
pkg update && pkg upgrade

# Gerekli paketleri kurun
pkg install git nodejs python openjdk-17 wget unzip

# Android SDK kurulumu
mkdir -p ~/android-sdk
cd ~/android-sdk
wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip
unzip commandlinetools-linux-9477386_latest.zip
mkdir -p cmdline-tools/latest
mv cmdline-tools/* cmdline-tools/latest/
```

3. **Environment Variables ayarlayın:**
```bash
echo 'export ANDROID_HOME=$HOME/android-sdk' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin' >> ~/.bashrc
source ~/.bashrc
```

4. **Projenizi klonlayın:**
```bash
git clone https://github.com/Berocan025/Uygulamam.git
cd Uygulamam
chmod +x gradlew
```

5. **APK oluşturun:**
```bash
./gradlew assembleDebug
```

---

### **YÖNTEM 2: AIDE - ANDROID IDE (ÜCRETSİZ) ⭐⭐**

#### 📱 **En Kolay Yöntem:**
1. **AIDE** uygulamasını indirin: [Play Store](https://play.google.com/store/apps/details?id=com.aide.ui)

2. **Projeyiimport edin:**
   - AIDE'yi açın
   - "Import Project" seçin
   - GitHub'dan projeyi indirin veya ZIP olarak açın

3. **Derleme:**
   - Menü → Build → Make Project
   - APK otomatik oluşturulur

---

### **YÖNTEM 3: SKETCHWARE PRO (GORSELLİ) ⭐⭐⭐**

#### 🎨 **Görsel Geliştirme:**
1. **Sketchware Pro** indirin: [GitHub](https://github.com/Sketchware-Pro/Sketchware-Pro)

2. **Yeni proje oluşturun:**
   - Package name: `com.example.uygulamam`
   - App name: `Uygulamam`

3. **Ekranı tasarlayın:**
   - TextView: "Merhaba! Uygulamama Hoş Geldiniz"
   - Button: "Tıkla!"
   - TextView: Sayaç göstergesi
   - Button: "Sıfırla"

4. **Kod yazın:**
```java
// Değişken tanımla: counter (number)
// Button tıklama eventi:
counter = counter + 1;
textview2.setText("Butona " + counter + " kez tıkladınız");

// Sıfırla butonu:
counter = 0;
textview2.setText("Sayaç sıfırlandı");
```

5. **APK oluştur:**
   - Menü → Compile → Generate APK

---

### **YÖNTEM 4: ONLINE IDE'LER (İNTERNET GEREKLİ) ⭐**

#### 🌐 **Tarayıcı Tabanlı:**

1. **Replit Android:**
   - https://replit.com/ sitesine gidin
   - Android Template seçin
   - Kodunuzu yazın
   - APK export edin

2. **Gitpod:**
   - https://gitpod.io/#https://github.com/Berocan025/Uygulamam
   - Otomatik olarak proje açılır
   - Terminal'de `./gradlew assembleDebug`

3. **CodeSandbox:**
   - GitHub reponuzu import edin
   - Tarayıcıda geliştirin

---

## 🏆 **EN ÇOK ÖNERİLEN: AIDE**

### **Neden AIDE:**
✅ Telefonda tam Android Studio deneyimi
✅ Kotlin desteği
✅ Gradle build system
✅ APK otomatik oluşturma
✅ GitHub entegrasyonu
✅ Syntax highlighting
✅ Code completion

### **AIDE ile Hızlı Başlangıç:**

1. **AIDE'yi indirin** (ücretsiz)
2. **Proje oluşturun:**
   ```
   File → New → Android App Project
   Application name: Uygulamam
   Package name: com.example.uygulamam
   ```

3. **MainActivity.kt'yi açın ve kodunuzu yapıştırın**
4. **Layout dosyasını düzenleyin**
5. **Menü → Build → Make Project**
6. **APK ready! 🎉**

---

## 📱 **APK YÜKLEME:**

APK oluşturduktan sonra:
1. **Ayarlar → Güvenlik → Bilinmeyen Kaynaklar** ✅
2. APK dosyasına tıklayın
3. **Yükle** butonuna basın
4. Uygulama hazır! 🚀

---

## 🆘 **YARDIM:**

Hangi yöntemi tercih ederseniz edin, size **adım adım** yardım edebilirim!

**Hangisini denemek istersiniz?**
1. 🎯 AIDE (En kolay)
2. 💻 Termux (Güçlü)
3. 🎨 Sketchware Pro (Görsel)
4. 🌐 Online IDE

Seçiminizi söyleyin, detaylı rehber vereyim! 😊