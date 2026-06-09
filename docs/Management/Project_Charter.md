# PROJECT CHARTER

## 1. Nama Proyek

**Pembangunan Website Portal Informasi Beasiswa Terpusat**

Proyek ini bertujuan untuk membangun sebuah platform digital berbasis website yang memusatkan seluruh informasi beasiswa dari berbagai sumber ke dalam satu sistem yang terintegrasi, terstruktur, dan mudah diakses oleh mahasiswa.

---

## 2. Latar Belakang

Perkembangan teknologi informasi dan komunikasi yang semakin pesat telah mendorong transformasi digital di berbagai sektor, termasuk dalam bidang pendidikan. Salah satu bentuk pemanfaatan teknologi dalam dunia pendidikan adalah dalam penyebaran informasi beasiswa yang menjadi kebutuhan penting bagi mahasiswa, baik untuk mendukung pembiayaan studi maupun pengembangan akademik dan non-akademik.

Namun demikian, kondisi yang terjadi saat ini menunjukkan bahwa penyebaran informasi beasiswa masih bersifat **terfragmentasi dan tidak terintegrasi**. Informasi tersebut tersebar di berbagai platform seperti website resmi institusi, media sosial, email, serta grup komunikasi seperti WhatsApp dan Telegram. Fragmentasi ini menyebabkan mahasiswa harus melakukan pencarian informasi secara aktif di berbagai sumber yang berbeda, sehingga membutuhkan waktu dan usaha yang lebih besar.

**Permasalahan utama yang teridentifikasi:**

1. **Informasi tidak terpusat** — Mahasiswa harus mengakses berbagai platform yang berbeda untuk mendapatkan informasi yang dibutuhkan, menimbulkan inefisiensi dalam proses pencarian serta meningkatkan kemungkinan terlewatnya informasi penting.
2. **Pencarian tidak terstruktur** — Tidak adanya fitur pencarian dan filter yang terstruktur menyebabkan mahasiswa harus menyaring informasi secara manual, yang memakan waktu dan kurang efektif.
3. **Keterlambatan informasi deadline** — Banyak mahasiswa yang tidak mendapatkan informasi secara real-time atau tidak memiliki sistem pengingat, sehingga peluang untuk mengikuti beasiswa menjadi terlewat.
4. **Tidak ada sistem pelacakan status** — Mahasiswa tidak memiliki wadah untuk mencatat dan memonitor proses aplikasi beasiswa yang sedang atau telah mereka ajukan.

Oleh karena itu, diperlukan suatu solusi berbasis teknologi informasi berupa **sistem portal informasi beasiswa terpusat** yang mampu mengatasi permasalahan-permasalahan tersebut.

---

## 3. Tujuan Proyek

Meningkatkan kemudahan akses informasi, mempercepat proses pencarian beasiswa, serta meningkatkan partisipasi mahasiswa dalam program beasiswa melalui sistem yang terintegrasi dan *user-friendly*.

### Objectives (OKR):

1. Meningkatkan efisiensi akses informasi beasiswa bagi mahasiswa.
2. Meningkatkan jumlah partisipasi mahasiswa dalam program beasiswa.
3. Meningkatkan kualitas layanan informasi berbasis teknologi.
4. Meningkatkan akurasi dan kelengkapan data pendaftaran beasiswa.

### Key Results (MVP):

1. Mengurangi waktu pencarian informasi beasiswa sebesar **50%** dalam 3 bulan pertama setelah implementasi sistem.
2. Meningkatkan jumlah pendaftar beasiswa internal sebesar **30%** dalam 1 tahun penggunaan sistem.
3. Mencapai tingkat kepuasan pengguna minimal **4.0 dari skala 5.0** berdasarkan survei pengguna.
4. Menurunkan tingkat kesalahan atau ketidaklengkapan dokumen pendaftaran sebesar **40%** melalui fitur validasi sistem.

---

## 4. Ruang Lingkup (Scope)

### In Scope:

Fitur-fitur utama yang akan dikembangkan dalam proyek ini meliputi:

| No | Fitur | Deskripsi |
|:---:|---|---|
| 1 | **Sistem Autentikasi** | Pengguna dapat membuat akun untuk menyimpan profil dan riwayat pencarian. Termasuk login, register, manajemen akun, validasi data, enkripsi password, serta pengelolaan sesi pengguna. |
| 2 | **Search & Filtering** | Pengguna dapat mencari beasiswa berdasarkan kategori (Prestasi, Bantuan Biaya, Luar Negeri, dll.) dan filter (Jurusan, Semester, IPK). Pencarian yang dinamis, cepat, dan akurat. |
| 3 | **Notifikasi / Reminder** | Pengguna mendapatkan pengingat otomatis sebelum tenggat waktu (deadline) beasiswa yang disimpan berakhir, berbasis email/push notification secara real-time. |
| 4 | **Dashboard Admin** | Pengelola dapat melakukan verifikasi, menambah, mengubah, atau menghapus informasi beasiswa (CRUD). Termasuk standarisasi format informasi dan validasi data. |
| 5 | **Tracking Status** | Pengguna dapat mencatat dan memantau status aplikasi mereka (*Applied, In Progress, Accepted, Rejected*), termasuk database status dan dashboard user. |

### Out of Scope:

- Integrasi langsung dengan sistem akademik kampus (SIAKAD) pada fase awal.
- Fitur pembayaran atau transaksi finansial.
- Pengembangan aplikasi mobile native (fokus pada platform web responsif).

---

## 5. Stakeholder Utama

| Peran | Nama | Tanggung Jawab |
|---|---|---|
| **Dosen Pengampu** | Venera Genia, S.S.I., M.T.I. | Pembimbing dan evaluator proyek. |
| **Asdos Penanggung Jawab** | Nuranisah | Pendamping dan pengawas teknis kelompok. |
| **Project Manager** | Fachri Fadilah (0110224146) | Mengkoordinasikan keseluruhan perancangan sistem, menyusun kebutuhan fitur utama, membuat timeline proyek, serta melakukan monitoring dan evaluasi setiap sprint. |
| **Scrum Master** | Aurora Zalfa Hartono (0110224057) | Menyusun workflow Scrum, sprint planning, daily coordination, memastikan setiap anggota tim bekerja sesuai backlog dan timeline. |
| **Media Creative** | Eko Budi Prasetio (0110224170) | Mendesain UI/UX website (wireframe, prototype, desain final) agar responsif dan user-friendly. |
| **Media Creative** | Nur Indah (0110224199) | Menyusun dan mengelola konten informasi beasiswa, standarisasi format, serta pengelolaan tampilan visual. |
| **Developer** | Jibril Ibrahim (0110224002) | Mengembangkan fitur tracking status pendaftaran, dashboard user, serta deployment ke server/hosting. |
| **Developer** | Silvia Zahrodiniah (0110224019) | Mengembangkan fitur search & filtering beasiswa dinamis dan mengoptimalkan performa pencarian. |
| **Developer** | Tri Nurjuliyanti (0110224194) | Mengimplementasikan sistem notifikasi & reminder deadline berbasis email/push notification. |
| **Developer** | Alya Dliya Zahra Andre (0110224055) | Membangun sistem autentikasi (login, register, manajemen akun), validasi data, enkripsi password, dan pengelolaan sesi. |
| **Pengguna Akhir** | Mahasiswa | Target pengguna utama portal informasi beasiswa. |

---

## 6. Anggaran & Sumber Daya

Berdasarkan hasil analisis finansial, proyek ini akan menggunakan pendekatan **pengembangan mandiri (Alternatif A)** yang telah terpilih melalui metode *Weighted Scoring Model* dengan skor tertinggi **9.05 dari 10.00**.

### Rincian Anggaran:

| Kategori | Detail | Biaya (IDR) |
|---|---|---:|
| Gaji Tim | Rp 8.000.000/bulan × 3 bulan | Rp 24.000.000 |
| Biaya Domain | Biaya registrasi domain | Rp 252.900 |
| Biaya Hosting | Biaya sewa hosting | Rp 210.900 |
| Biaya Perangkat | Rp 6.000.000 × 4 orang Tim Dev | Rp 24.000.000 |
| Biaya Legalitas | Perizinan dan legalitas | Rp 600.000 |
| Operasional Tahunan | Perpanjangan domain & hosting | Rp 505.800/tahun |
| Pemeliharaan | Biaya maintenance (1 Dev) | Rp 8.000.000/tahun |
| **Total Investasi Awal** | | **Rp 49.063.800** |

### Indikator Finansial (Proyeksi 5 Tahun):

| Indikator | Nilai |
|---|---|
| Payback Period (PP) | **2,73 tahun** |
| Return on Investment (ROI) | **44,7%** |
| Net Present Value (NPV) | **Rp 56.743.100** (Discount Rate 8%) |

### Sumber Daya Teknologi:

- **Frontend:** HTML, CSS, JavaScript (Framework modern)
- **Backend:** Server-side framework
- **Database:** Relational Database Management System
- **Hosting:** Cloud-based hosting
- **Version Control:** Git & GitHub

---

## 7. Timeline Utama

| Fase | Penanggung Jawab | Aktivitas Utama | Batas Waktu |
|:---:|---|---|:---:|
| 1 | Fachri (Project Manager) | Perancangan sistem, penyusunan kebutuhan fitur utama, pembuatan timeline proyek, setup monitoring & evaluasi sprint. | Minggu 1 |
| 1 | Aurora (Scrum Master) | Penyusunan workflow Scrum, sprint planning, daily coordination, pengelolaan backlog. | Minggu 1 |
| 1 | Alya (Developer) | Pembangunan sistem autentikasi (login, register, manajemen akun), validasi data, enkripsi password, pengelolaan sesi. | Minggu 1 |
| 1 | Eko (Media Creative) | Desain UI/UX website: wireframe, prototype, hingga desain final responsif. | Minggu 1 |
| 2 | Jibril (Developer) | Pengembangan fitur tracking status, pembuatan database status, dashboard user, serta deployment ke server/hosting. | Minggu 2 |
| 2 | Silvia (Developer) | Pengembangan fitur search & filtering beasiswa dinamis, optimalisasi performa pencarian. | Minggu 2 |
| 2 | Tri (Developer) | Implementasi sistem notifikasi & reminder deadline (email/push notification), pengaturan jadwal otomatis. | Minggu 2 |
| 2 | Nur (Media Creative) | Penyusunan konten informasi beasiswa, standarisasi format informasi, pengelolaan tampilan visual konten. | Minggu 2 |

---

## 8. Risiko Utama

| No | Risiko | Dampak | Mitigasi |
|:---:|---|---|---|
| 1 | Keterlambatan pengembangan karena keterbatasan sumber daya internal. | Timeline proyek mundur, fitur tidak selesai tepat waktu. | Perencanaan sprint yang realistis, pembagian tugas jelas, serta monitoring progres harian oleh Scrum Master. |
| 2 | Ketidakpastian kebutuhan pengguna terhadap fitur-fitur tertentu (misal: tracking status). | Fitur yang dikembangkan tidak digunakan secara optimal oleh mahasiswa. | Melakukan survei awal dan validasi kebutuhan pengguna sebelum pengembangan fitur. |
| 3 | Ketidaklengkapan atau ketidakvalidan data beasiswa yang diinput. | Informasi pada portal menjadi tidak akurat dan tidak dipercaya. | Implementasi sistem validasi admin dan mekanisme verifikasi data secara berkala. |
| 4 | Rendahnya adopsi pengguna terhadap platform baru. | Target MOV/OKR partisipasi tidak tercapai. | Strategi sosialisasi aktif, desain UI/UX yang menarik, serta feedback loop dari pengguna. |
| 5 | Masalah keamanan data pengguna. | Kebocoran data pribadi mahasiswa, menurunkan kepercayaan. | Penerapan enkripsi password, proteksi SQL Injection/XSS, autentikasi berbasis JWT/session terenkripsi. |

---

## 9. Kriteria Kesuksesan

Proyek dianggap berhasil apabila memenuhi indikator **Measurable Organizational Value (MOV)** berikut:

| Aspek | Kriteria Kesuksesan | Target |
|---|---|---|
| **Efisiensi Operasional** | Mengurangi waktu pencarian informasi beasiswa oleh mahasiswa. | Penurunan **50%** dalam 3 bulan pertama implementasi. |
| **Partisipasi** | Meningkatkan jumlah pendaftar beasiswa internal. | Peningkatan **30%** pada tahun pertama penggunaan sistem. |
| **Kualitas Layanan** | Mencapai tingkat kepuasan pengguna (mahasiswa) berdasarkan survei kepuasan layanan informasi. | Skor minimal **4.0 dari skala 5.0**. |
| **Akurasi Data** | Menurunkan tingkat kesalahan dokumen/berkas yang tidak lengkap melalui fitur validasi sistem. | Penurunan **40%**. |

---

## 10. Persetujuan

Dengan ditandatanganinya Project Charter ini, semua pihak menyetujui ruang lingkup, tujuan, anggaran, dan timeline proyek sebagaimana tercantum di atas.

| Peran | Nama | Tanda Tangan | Tanggal |
|---|---|:---:|:---:|
| **Dosen Pengampu** | Venera Genia, S.S.I., M.T.I. | ___________________ | ____________ |
| **Asdos Penanggung Jawab** | Nuranisah | ___________________ | ____________ |
| **Project Manager** | Fachri Fadilah | ___________________ | ____________ |
| **Scrum Master** | Aurora Zalfa Hartono | ___________________ | ____________ |

---

**Nama Kelompok:** Bubur Sum-Scrum
**Nomor Kelompok:** 2
**Mata Kuliah:** Manajemen Proyek — Program Studi Teknik Informatika
