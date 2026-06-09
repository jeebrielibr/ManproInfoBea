# User Journey - MVP v1
## Proyek Website Portal Informasi Beasiswa Terpusat

**Aktor:** Mahasiswa (End-User)  
**Tujuan:** Menemukan beasiswa, mendaftar di situs eksternal, dan mencatat progres secara manual di portal.

---

## 1. Peta Perjalanan (Journey Map)

| Fase | Aksi Mahasiswa | Sistem (Portal) | *Touchpoint* |
|---|---|---|---|
| **Discovery** | Membuka portal & mencari beasiswa melalui filter (IPK/Kategori). | Menampilkan daftar beasiswa yang relevan secara *real-time*. | Homepage / Search Page |
| **Selection** | Membaca ringkasan beasiswa dan mengklik tombol "Daftar Sekarang". | Membuka tab baru dan mengarahkan pengguna ke **URL Website Penyedia**. | Scholarship Card |
| **Action** | Melakukan proses pendaftaran di website eksternal (di luar sistem). | - | External Site |
| **Manual Logging** | Kembali ke portal, **Login**, dan masuk ke Dashboard. | Memverifikasi sesi user dan menampilkan menu Dashboard. | Login Page |
| **Tracking** | Memilih beasiswa yang tadi didaftar dan mengubah status menjadi **"Applied"**. | Menyimpan status aplikasi secara manual di database profil user. | Student Dashboard |
| **Monitoring** | Mengecek Dashboard secara berkala untuk update status (In Progress/Accepted). | Menampilkan statistik progres pendaftaran mahasiswa. | Dashboard Statistics |

---

## 2. Alur Kerja Detil (Detailed Workflow)

### 2.1 Alur Pencarian ke Redireksi
1. Mahasiswa masuk ke halaman `/search`.
2. Mahasiswa memasukkan filter IPK: 3.5.
3. Portal menampilkan "Beasiswa Bank Indonesia".
4. Mahasiswa klik "Daftar".
5. Portal mengeksekusi `window.open(external_link)`.

### 2.2 Alur Pencatatan Status (Manual Tracking)
1. Mahasiswa sudah memiliki akun (Login Required).
2. Mahasiswa membuka `Dashboard > Tambah Tracking`.
3. Mahasiswa memilih nama beasiswa dari *dropdown* beasiswa yang tersedia di portal.
4. Mahasiswa memilih status: `Applied`.
5. Sistem menyimpan relasi `user_id` dan `scholarship_id` dengan status tersebut.
6. Mahasiswa dapat mengubah status ini kapan saja (e.g., jika mendapat email pengumuman dari penyedia beasiswa, mahasiswa manual mengubah status menjadi `Accepted`).

---

## 3. Emosi & Ekspektasi User
- **Ekspektasi:** Mahasiswa ingin portal yang cepat dalam mengarahkan ke sumber asli tanpa hambatan.
- **Pain Point:** Mahasiswa harus ingat untuk kembali ke portal guna mencatat status secara manual agar statistik tracking tetap akurat.

