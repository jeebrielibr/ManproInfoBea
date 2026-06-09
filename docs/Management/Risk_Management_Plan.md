# Risk Management Plan (Risk Register)
## Proyek Website Portal Informasi Beasiswa Terpusat

**Versi:** 1.0  
**Manajer Proyek:** Fachri Fadilah

---

## 1. Identifikasi & Analisis Risiko
Berikut adalah matriks risiko yang diidentifikasi untuk fase konstruksi hingga deployment.

| ID | Kategori | Deskripsi Risiko | Dampak (1-5) | Probabilitas (1-5) | Skor | Strategi Mitigasi |
|:---:|---|---|:---:|:---:|:---:|---|
| R-01 | Teknis | Konflik kode berat saat penggabungan fitur (Merge Conflict). | 4 | 4 | 16 | Implementasi Gitflow ketat dan pull update `develop` setiap hari. |
| R-02 | Teknis | Bug pada fitur Notifikasi Email (SMTP error). | 3 | 3 | 9 | Gunakan Mailtrap untuk testing dan sediakan fallback log jika email gagal. |
| R-03 | Jadwal | Keterlambatan pengerjaan fitur Tracking karena kompleksitas UI. | 4 | 3 | 12 | Monitoring harian via Standup Meeting dan penyesuaian workload developer. |
| R-04 | Data | Data beasiswa dari admin tidak valid atau duplikat. | 3 | 4 | 12 | Implementasi validasi ketat di level Database (Unique Slug) dan Form Request. |
| R-05 | Keamanan | Serangan SQL Injection atau XSS pada form pencarian. | 5 | 2 | 10 | Gunakan Eloquent ORM Laravel dan CSRF protection secara default. |
| R-06 | SDM | Anggota tim developer sakit atau berhalangan hadir. | 3 | 3 | 9 | Dokumentasi kode (Developer Guide) yang jelas agar tugas bisa di-takeover. |

---

## 2. Skala Penilaian
- **Dampak:** 1 (Sangat Rendah) s/d 5 (Sangat Tinggi/Blocker).
- **Probabilitas:** 1 (Jarang Terjadi) s/d 5 (Hampir Pasti Terjadi).
- **Skor:** Dampak x Probabilitas.
    - 1-8: Rendah (Pantau saja).
    - 9-15: Sedang (Butuh aksi mitigasi).
    - 16-25: Tinggi (Prioritas utama mitigasi).

---

## 3. Prosedur Eskalasi
Jika risiko dengan skor > 15 terjadi, maka:
1. **Scrum Master (Aurora)** segera melapor ke **Project Manager (Fachri)**.
2. PM memimpin rapat darurat untuk menentukan *Workaround* atau perubahan jadwal.
3. Seluruh perubahan didokumentasikan dalam laporan mingguan.
