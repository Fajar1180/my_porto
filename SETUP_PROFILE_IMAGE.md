# Setup Foto Profil di About Me

Aplikasi MyPorto sudah siap untuk menampilkan foto profil Anda di halaman "Tentang Saya".

## Status Saat Ini:
✅ Folder `assets/images/` sudah dibuat  
✅ `pubspec.yaml` sudah dikonfigurasi  
✅ `about_me.dart` sudah siap membaca foto  
⏳ Tunggu foto Anda

## Cara Memasukkan Foto:

### Opsi 1: Windows Explorer (Paling Mudah)
1. Buka file manager, pergi ke: `C:\laragon\www\Pratikum\my_porto\assets\images\`
2. Copy file foto Anda ke folder tersebut
3. Rename foto menjadi: **`profile.jpg`** (penting!)
4. Jalankan: `flutter run`

### Opsi 2: Terminal/Command Prompt
```bash
# Copy foto Anda ke:
copy "C:\Users\[Username]\Pictures\foto_saya.jpg" "c:\laragon\www\Pratikum\my_porto\assets\images\profile.jpg"

# Jalankan app
cd c:\laragon\www\Pratikum\my_porto
flutter run
```

## Format & Spesifikasi:
- **Nama file**: `profile.jpg` (harus tepat)
- **Format**: JPG, PNG, atau WEBP
- **Ukuran**: Bebas (akan di-resize otomatis ke 160x160 px)
- **Lokasi**: `c:\laragon\www\Pratikum\my_porto\assets\images\profile.jpg`

## Jika Foto Tidak Ditemukan:
App akan menampilkan icon profil default (biru) secara otomatis. Tidak ada error.

## Struktur Folder Akhir:
```
my_porto/
├── assets/
│   └── images/
│       └── profile.jpg  ← Letakkan foto Anda di sini
├── lib/
├── pubspec.yaml
└── ...
```

## Testing:
Aplikasi sudah ditest dan berfungsi dengan baik. Saat Anda menambahkan `profile.jpg`, foto akan langsung tampil di halaman "Tentang Saya".
