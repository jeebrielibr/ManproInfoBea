# TUGAS RESPONSI IV MANAJEMEN PROYEK
**Program Studi Teknik Informatika**

**Tujuan:** Mahasiswa mampu bekerja sama dalam mengidentifikasi, menganalisis, dan membuat *Software Development Plan*.
**Dosen Pengampu:** Venera Genia, S.S.I., M.T.I.

---

# Daftar Isi
- [Identitas Kelompok & Tabel Peran](#identitas-kelompok--tabel-peran)
- [Software Development Plan](#software-development-plan)
  - [1. Review MOV](#1-review-mov)
  - [2. Scope Definition](#2-scope-definition)
    - [2.1 Use Case Diagram](#21-use-case-diagram)
    - [2.2 Delivery Structure Chart (DSC)](#22-delivery-structure-chart-dsc)
  - [3. Work Breakdown Structure (WBS)](#3-work-breakdown-structure-wbs)

---

# Identitas Kelompok & Tabel Peran

**Identitas Kelompok:**
- **Nama Kelompok:** Bubur Sum-Scrum
- **Nomor Kelompok:** 2
- **Asdos Penanggung Jawab:** Nuranisah

**Tabel Peran:**

| NO | NIM | NAMA | Peran |
|:---:|:---|:---|:---|
| 1 | 0110224146 | Fachri Fadilah | Project Manager |
| 2 | 0110224057 | Aurora Zalfa Hartono | Scrum Master |
| 3 | 0110224170 | Eko Budi Prasetio | Media Creative (UI/UX) |
| 4 | 0110224199 | Nur Indah | Media Creative (Content) |
| 5 | 0110224002 | Jibril Ibrahim | Developer (Laravel Backend/Tracking) |
| 6 | 0110224019 | Silvia Zahrodiniah | Developer (Search & Blade Templating) |
| 7 | 0110224194 | Tri Nurjuliyanti | Developer (Notification & Bootstrap UI) |
| 8 | 0110224055 | Alya Dliya Zahra Andre | Developer (Auth & Security) |

---

# Software Development Plan

## 1. Review MOV
Berdasarkan dokumen *Project Charter* yang telah disepakati, *Measurable Organizational Value (MOV)* dari Proyek Pembangunan Website Portal Informasi Beasiswa Terpusat dirancang untuk memberikan dampak positif yang terukur, yaitu:

1. **Efisiensi Akses Informasi (Waktu):** Mengurangi waktu pencarian informasi beasiswa oleh mahasiswa hingga **50%** dalam 3 bulan pertama setelah implementasi sistem.
2. **Peningkatan Partisipasi:** Meningkatkan jumlah partisipasi pendaftaran beasiswa di lingkup internal kampus sebesar **30%** pada tahun pertama penggunaan sistem.
3. **Kualitas Layanan & UI/UX:** Mencapai tingkat kepuasan pengguna minimal dengan skor **4.0 dari skala 5.0** berdasarkan survei pengguna.
4. **Validasi & Akurasi Dokumen:** Menurunkan tingkat kesalahan atau ketidaklengkapan dokumen pendaftaran sebesar **40%** melalui fitur validasi pengunggahan berkas dalam sistem.

---

## 2. Scope Definition

### 2.1 Use Case Diagram
Berikut adalah diagram *Use Case* yang merepresentasikan *Product-Oriented Scope*, menunjukkan fungsionalitas sistem (modul utama) serta interaksi dari setiap aktor (Mahasiswa dan Admin):

```mermaid
flowchart LR
    %% Actors
    Mahasiswa([Mahasiswa])
    Admin([Admin/Pengelola])

    %% System Boundary
    subgraph Portal Informasi Beasiswa Terpusat
        direction TB
        UC1(Sistem Autentikasi: Login, Register, Profil)
        UC2(Pencarian & Filtering Beasiswa)
        UC3(Notifikasi & Reminder Deadline)
        UC4(Tracking Status Pendaftaran)
        UC5(CMS: CRUD Data Beasiswa)
        UC6(Verifikasi Data & Validasi Berkas)
    end

    %% Mahasiswa interactions
    Mahasiswa --- UC1
    Mahasiswa --- UC2
    Mahasiswa --- UC3
    Mahasiswa --- UC4

    %% Admin interactions
    Admin --- UC1
    Admin --- UC5
    Admin --- UC6
    
    style Portal Informasi Beasiswa Terpusat fill:#f9f9f9,stroke:#333,stroke-width:2px
    style Mahasiswa fill:#bbf,stroke:#333,stroke-width:2px,color:#000
    style Admin fill:#fbb,stroke:#333,stroke-width:2px,color:#000
```

### 2.2 Delivery Structure Chart (DSC)
*Delivery Structure Chart* (DSC) ini menjabarkan *Project-Oriented Scope* dengan merincikan hasil akhir (*deliverables*) yang wajib dihasilkan pada setiap fase pengerjaan proyek:

```mermaid
mindmap
  root((Portal Beasiswa))
    Fase 1: Inisiasi & Perencanaan
      Project Charter
      Software Development Plan
      Backlog & Sprint Plan
    Fase 2: Desain Sistem & UX
      Wireframe & Prototype UI
      Database Schema (ERD)
      Standarisasi Konten Beasiswa
    Fase 3: Pengembangan Core Fitur (Laravel + Bootstrap 5)
      Modul Autentikasi (Laravel Session)
      Blade View: Search & Filter
      Service: Notifikasi & Reminder
      Blade View: Tracking & Dashboard
      Dashboard CMS Admin
    Fase 4: Testing & Deployment
      Laporan System Testing
      Aplikasi Web Ter-deploy (Cloud)
```

**Penjelasan Singkat DSC:**
- **Fase 1 (Inisiasi):** Difokuskan pada finalisasi dokumen manajerial proyek (*Charter, Plan, Timeline*).
- **Fase 2 (Desain):** Menghasilkan *blueprint* desain antarmuka menggunakan Bootstrap 5, skema basis data, dan struktur konten.
- **Fase 3 (Pengembangan):** Implementasi kode menggunakan Laravel 11 dengan templating Blade secara bertahap melalui metode iteratif (*Sprint*).
- **Fase 4 (Deployment):** Menjamin sistem diuji (UAT, keamanan) sebelum dirilis di infrastruktur *Cloud Hosting*.

---

## 3. Work Breakdown Structure (WBS)
Berikut adalah *Work Breakdown Structure* yang mendekomposisi seluruh paket pekerjaan pengembangan proyek menjadi rincian tugas (*tasks*) yang lebih terkelola dan spesifik.

```mermaid
gantt
    title Work Breakdown Structure (WBS) - Portal Beasiswa (Laravel)
    dateFormat  YYYY-MM-DD
    axisFormat  %W
    
    section 1. Perencanaan Proyek
    1.1 Susun Kebutuhan & Fitur (Fachri)          :a1, 2026-05-19, 3d
    1.2 Workflow Scrum & Timeline (Aurora)        :a2, after a1, 3d
    
    section 2. Desain UI/UX & Data
    2.1 Desain Wireframe & Bootstrap Prototype    :b1, 2026-05-22, 5d
    2.2 Susun & Standarisasi Konten (Nur)         :b2, 2026-05-24, 3d
    
    section 3. Pengembangan Inti (Backend)
    3.1 Infrastruktur Database & Migration        :c1, 2026-05-26, 3d
    3.2 Logic Autentikasi & Security (Alya)       :c2, after c1, 4d
    3.3 Controller CRUD Beasiswa (Silvia/Jibril)  :c3, after c2, 4d
    
    section 4. Pengembangan Antarmuka (Blade)
    4.1 Implementasi Blade Auth (Alya)            :d1, 2026-05-29, 3d
    4.2 Blade View: Search & Filter (Silvia)      :d2, 2026-05-30, 5d
    4.3 Blade View: Dashboard & Tracking (Jibril) :d3, 2026-05-31, 5d
    4.4 Integrasi Bootstrap & Notif (Tri)         :d4, 2026-06-03, 4d
    
    section 5. Testing & Deployment
    5.1 System & Security Testing (Tim)           :e1, 2026-06-06, 3d
    5.2 Bug Fixing (Tim)                          :e2, after e1, 2d
    5.3 Deployment ke Hosting (Jibril)            :e3, after e2, 2d
```

### Rincian Hierarki WBS

**1. Fase Inisiasi & Perencanaan (Minggu 1)**
- 1.1 Perancangan sistem, penyusunan kebutuhan fitur utama (*Project Manager*)
- 1.2 Penyusunan *workflow* Scrum, *Daily Coordination*, penentuan *Backlog* & *Sprint Plan* (*Scrum Master*)

**2. Fase Desain & UI/UX (Minggu 1)**
- 2.1 Desain *Wireframe* & *Prototype* responsif menggunakan standar Bootstrap 5 (*Media Creative*)
- 2.2 Agregasi dan standarisasi konten informasi beasiswa (*Media Creative*)

**3. Fase Pengembangan Logika Bisnis & Database (Minggu 1 - 2)**
- 3.1 Pembangunan skema database menggunakan Laravel Migrations (*Developer*)
- 3.2 Implementasi Autentikasi Laravel (Session-based) dan proteksi CSRF (*Developer*)
- 3.3 Pembuatan Controller dan Model untuk fungsi CRUD Beasiswa (*Developer*)

**4. Fase Pengembangan Frontend (Blade & Bootstrap) (Minggu 2 - 3)**
- 4.1 Implementasi halaman Login, Register, dan Profil menggunakan Blade Templates (*Developer*)
- 4.2 Pengembangan sistem *Search & Filtering* dinamis dengan integrasi Controller-to-Blade (*Developer*)
- 4.3 Pembangunan antarmuka *Dashboard* untuk pelacakan (*Tracking Status*) menggunakan komponen Bootstrap 5 (*Developer*)
- 4.4 Integrasi sistem notifikasi email (Laravel Mail) dan pengingat *deadline* (*Developer*)

**5. Fase Pengujian & Deployment (Minggu 3)**
- 5.1 Pengujian fungsional sistem, validasi antarmuka Bootstrap, dan proteksi (XSS/SQLi) (*Tim*)
- 5.2 Evaluasi *feedback* dan perbaikan celah/bug sistem (*Tim*)
- 5.3 *Deployment* akhir aplikasi ke server *Cloud* dan manajemen *domain* (*Developer*)
