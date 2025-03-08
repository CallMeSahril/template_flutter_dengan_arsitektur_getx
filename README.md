# Template Flutter dengan Arsitektur GetX

Template ini menggunakan arsitektur GetX untuk pengembangan aplikasi Flutter. Template ini dirancang untuk memudahkan pengembangan aplikasi dengan struktur yang rapi dan terorganisir.

## Fitur

- **GetX State Management**: Menggunakan GetX untuk manajemen state yang efisien.
- **Modular Structure**: Struktur proyek yang modular untuk memudahkan pengelolaan kode.
- **Responsive UI**: Desain antarmuka yang responsif untuk berbagai ukuran layar.
- **Routing**: Pengaturan routing yang mudah dengan GetX.

## Struktur Proyek

```
lib/
├── models/
├── views/
├── bindings/
├── routes/
├── utils/
└── main.dart
```

- **controllers/**: Berisi semua controller untuk manajemen state.
- **models/**: Berisi semua model data.
- **views/**: Berisi semua widget dan halaman UI.
- **bindings/**: Berisi binding untuk menghubungkan controller dengan view.
- **routes/**: Berisi pengaturan routing aplikasi.
- **utils/**: Berisi utilitas dan helper functions.
- **main.dart**: Entry point aplikasi.

## Cara Menggunakan

1. Clone repository ini.
    ```bash
    git clone <repository-url>
    ```
2. Install dependencies.
    ```bash
    flutter pub get
    ```
3. Jalankan aplikasi.
    ```bash
    flutter run
    ```

## Kontribusi

Kontribusi sangat diterima! Silakan fork repository ini dan buat pull request untuk perubahan yang ingin Anda ajukan.

## Lisensi

Template ini dilisensikan di bawah [MIT License](LICENSE).
