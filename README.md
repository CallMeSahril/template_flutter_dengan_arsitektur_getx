# Project Overview
Proyek ini adalah aplikasi berbasis Flutter yang menggunakan arsitektur modular dengan bantuan GetX untuk manajemen state dan dependensi. Struktur proyek telah diatur sedemikian rupa agar mudah dikelola dan dikembangkan.

## Struktur Direktori

```
lib
├── app
│   ├── data
│   │   ├── products
│   │   │   ├── product_model.dart
│   │   │   ├── product_service.dart
│   │   │   ├── product_service_interface.dart
│   │   ├── response
│   │   │   ├── response_model.dart
│   ├── modules
│   │   ├── products
│   │   │   ├── bindings
│   │   │   │   ├── products_binding.dart
│   │   │   ├── controllers
│   │   │   │   ├── products_controller.dart
│   │   │   ├── view
│   │   │   │   ├── products_view.dart
│   │   ├── transaction
│   │   │   ├── bindings
│   │   │   │   ├── products_binding.dart
│   │   │   ├── controllers
│   │   │   │   ├── products_controller.dart
│   │   │   ├── view
│   │   │   │   ├── products_view.dart
│   ├── routes
│   │   ├── app_pages.dart
│   │   ├── app_routes.dart
├── main.dart
```

## Penjelasan Folder & File
- **`data`**: Berisi model dan service untuk data yang digunakan dalam aplikasi.
  - `products`: Berisi model dan service terkait produk.
  - `response`: Berisi model untuk menangani response dari API.
- **`modules`**: Berisi modul-modul utama aplikasi.
  - `products`: Modul yang menangani fitur terkait produk.
  - `transaction`: Modul yang menangani fitur transaksi.
- **`routes`**: Berisi konfigurasi rute aplikasi.
  - `app_pages.dart`: Berisi daftar halaman dalam aplikasi.
  - `app_routes.dart`: Berisi konstanta nama rute.
- **`main.dart`**: Entry point utama aplikasi Flutter.

## Cara Menjalankan Proyek
1. Pastikan sudah menginstal Flutter dan memiliki environment yang sesuai.
2. Clone repository ini.
3. Jalankan perintah berikut di terminal:
   ```sh
   flutter pub get
   flutter run
   ```

## Dependencies
Beberapa package yang digunakan dalam proyek ini:
- `flutter`
- `get`
- `http` (jika ada API call)

Pastikan semua dependencies telah terinstal sebelum menjalankan aplikasi.

## Kontribusi
Jika ingin berkontribusi, silakan buat branch baru dan ajukan pull request.

## Lisensi
Proyek ini menggunakan lisensi [MIT](LICENSE).

