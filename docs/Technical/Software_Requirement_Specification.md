# Software Requirement Specification (SRS)
## Proyek Website Portal Informasi Beasiswa Terpusat

**Versi:** 1.0  
**Tanggal:** 6 Juni 2026  
**Tim Pengembang:** Bubur Sum-Scrum (Kelompok 2)  
**Status:** Draft Dokumen Teknis

---

## 1. Pendahuluan

### 1.1 Tujuan
Dokumen Spesifikasi Kebutuhan Perangkat Lunak (SRS) ini bertujuan untuk mendefinisikan seluruh kebutuhan fungsional dan non-fungsional dari sistem Portal Informasi Beasiswa Terpusat. Dokumen ini akan menjadi acuan bagi tim developer dalam tahap konstruksi dan bagi tim QA dalam tahap pengujian.

### 1.2 Konvensi Dokumen
- Penulisan istilah teknis menggunakan Bahasa Inggris miring (e.g., *Database*).
- Prioritas kebutuhan ditandai dengan: **M** (Must-have), **S** (Should-have), **C** (Could-have).

### 1.3 Ruang Lingkup Proyek
Sistem ini adalah platform berbasis web untuk mengagregasi informasi beasiswa, menyediakan fitur filter dinamis, pengingat tenggat waktu, dan pelacakan status aplikasi mahasiswa.

---

## 2. Deskripsi Keseluruhan

### 2.1 Perspektif Produk
Sistem ini bertindak sebagai perantara antara penyedia beasiswa (melalui input admin) dan mahasiswa. Produk ini fokus pada platform web responsif (Mobile Friendly).

### 2.2 Fitur Utama (Product Functions)
1. **Sistem Autentikasi:** Manajemen akun mahasiswa dan admin.
2. **Search & Filtering:** Pencarian berdasarkan kategori, jurusan, IPK, dan semester.
3. **Notifikasi & Reminder:** Pengingat otomatis untuk tenggat waktu beasiswa.
4. **Tracking Status:** Pelacakan progres aplikasi mahasiswa.
5. **Dashboard Admin:** Pengelolaan data beasiswa (CRUD) dan verifikasi dokumen.

### 2.3 Karakteristik Pengguna
- **Mahasiswa:** Mencari beasiswa, mendaftar, dan melacak status.
- **Admin Kemahasiswaan:** Memperbarui data beasiswa dan memverifikasi aplikasi pendaftar.

### 2.4 Batasan Desain & Implementasi
- **Framework:** Laravel 11.x (PHP 8.2+) dengan Blade/Livewire atau Vue.js (Frontend).
- **Database:** MySQL 8.0 (Menggunakan Eloquent ORM dengan Soft Deletes & Unique Slugs).
- **Keamanan:** Laravel Sanctum/Session, Bcrypt, CSRF Protection, dan SQL Injection Prevention.
- **UI/UX:** Mengikuti standar *Premium Design* (Clean, Responsive, Micro-animations).

---

## 3. Kebutuhan Antarmuka Eksternal

### 3.1 Antarmuka Pengguna (User Interface)
- Desain responsif untuk Desktop dan Mobile.
- Navigasi utama menggunakan Sidebar untuk Admin dan Navbar untuk Mahasiswa.
- Visualisasi status tracking menggunakan *Progress Bar* atau *Steppers*.

### 3.2 Antarmuka Perangkat Lunak
- **Email Service:** Integrasi SMTP (e.g., SendGrid/Mailtrap) untuk notifikasi.
- **Cloud Hosting:** Sistem akan di-deploy pada infrastruktur Cloud.

---

## 4. Kebutuhan Fungsional

| ID | Fitur | Deskripsi | Prioritas |
|:---:|---|---|:---:|
| FR-01 | Autentikasi | Login, Register, Logout, Reset Password dengan enkripsi. | **M** |
| FR-02 | Search & Redirect | Pencarian real-time; klik beasiswa mengarahkan ke URL eksternal penyedia. | **M** |
| FR-03 | Filter Kategori | Filter berdasarkan Prestasi, Bantuan, Luar Negeri, dll. | **M** |
| FR-04 | Filter Akademik | Filter berdasarkan IPK minimal dan Semester. | **M** |
| FR-05 | Manual Tracking | Mahasiswa menginput status aplikasi secara manual (Applied, dsb.) di dashboard. | **M** |
| FR-06 | Notifikasi | Email reminder otomatis 3 hari sebelum deadline. | **S** |
| FR-07 | CRUD Beasiswa | Admin mengelola data beasiswa termasuk URL link eksternal. | **M** |
| FR-08 | Validasi Berkas | (Optional MVP v1) Validasi format file jika ada berkas pendukung lokal. | **C** |

---

## 5. Kebutuhan Non-Fungsional

### 5.1 Performa
- Halaman web harus dimuat (loaded) dalam waktu < 3 detik pada kondisi jaringan normal.
- Sistem mampu menangani hingga 500 pengguna konkuren (*Concurrent Users*).

### 5.2 Keamanan
- Proteksi terhadap SQL Injection dan Cross-Site Scripting (XSS).
- Semua komunikasi data menggunakan protokol HTTPS.
- Password tidak boleh disimpan dalam bentuk teks biasa (Plain Text).

### 5.3 Ketersediaan (Availability)
- Sistem harus tersedia 99.5% dalam waktu operasional rutin.

### 5.4 Usability
- Skor minimal 4.0/5.0 dalam User Satisfaction Survey (sesuai target MOV).

---

## 6. Atribut Kualitas Perangkat Lunak
- **Scalability:** Struktur kode modular agar mudah menambah fitur di masa depan.
- **Maintainability:** Penggunaan standar *Clean Code* dan dokumentasi API yang jelas.

