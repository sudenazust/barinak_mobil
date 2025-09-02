🐾 Hayvan Barınağı Mobil Uygulaması
Bu proje, kullanıcıların hayvan kategorilerine göre barınaktaki hayvanları inceleyebildiği, favorilere ekleyebildiği, detaylarını görüntüleyebildiği ve sahiplendirme formu doldurarak talepte bulunabildiği bir mobil uygulamadır.

🚀 Özellikler
Splash Screen:
Arka plan görseli\
Uygulama ismi\
Fade ve büyüme animasyonu
Listeleme Ekranı:
Hayvanlar kategorilere göre listelenir\
Detay ekranına geçiş yapılabilir
Detay Ekranı:
Görseller ve içerik bilgileri\
Düzenlenmiş arka plan uyumu
Favoriler Sistemi:
Hayvanlar favorilere eklenebilir\
shared_preferences ile kalıcı hale getirilir\
Favoriler ayrı bir sayfada listelenir
Kullanıcı Yönetimi (Giriş & Kayıt):
Sahte kullanıcı veritabanı üzerinden kayıt\
E-posta ve şifre ile giriş\
Doğrulama sonrası uygulamaya yönlendirme
Sahiplendirme Formu:
Kullanıcı, seçilen hayvan için sahiplendirme formu doldurabilir\
Form verileri işlenir
🛠️ Kullanılan Teknolojiler
Flutter (Dart)\
shared_preferences (favoriler ve kalıcılık için)\
Animasyonlar (Fade, Scale)\
State Management (temel düzeyde sınıflar üzerinden)
📂 Proje Yapısı (Örnek)
lib/
│
├── main.dart
├── screens/
│   ├── splash_screen.dart
│   ├── home_screen.dart
│   ├── detail_screen.dart
│   ├── favorites_screen.dart
│   ├── login_screen.dart
│   └── register_screen.dart
│
├── models/
│   ├── user.dart
│   └── animal.dart
│
├── widgets/
│   ├── animal_card.dart
│   └── favorite_button.dart
│
└── utils/
    └── fake_database.dart
