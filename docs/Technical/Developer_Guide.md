# Developer Guide & Git Workflow
## Proyek Website Portal Informasi Beasiswa Terpusat

**Versi:** 1.0  
**Tim:** Bubur Sum-Scrum (Kelompok 2)

---

## 1. Setup Lingkungan Pengembangan
Untuk memastikan konsistensi antar developer, gunakan spesifikasi berikut:
- **PHP:** 8.2+
- **Framework:** Laravel 11.x
- **Database:** MySQL 8.0
- **Node.js & NPM:** Latest LTS (untuk Vite & Bootstrap 5)
- **Editor:** VS Code (Disarankan menggunakan ekstensi: Laravel Extension Pack).

### Langkah Instalasi Lokal:
1. Clone repository: `git clone [URL_REPO]`
2. Install dependencies: `composer install`
3. Copy environment: `cp .env.example .env`
4. Generate key: `php artisan key:generate`
5. Migrasi database: `php artisan migrate --seed`
6. Jalankan server: `php artisan serve` & `npm run dev`

---

## 2. Git Workflow (Gitflow Standar)
Tim akan menggunakan model branching sebagai berikut:

- **`main`**: Kode produksi yang stabil. Hanya PM/SM yang boleh melakukan merge ke sini.
- **`develop`**: Branch utama pengembangan. Semua fitur di-merge ke sini sebelum rilis.
- **`feature/[nama-fitur]`**: Branch untuk pengerjaan fitur spesifik (contoh: `feature/auth-login`, `feature/filter-scholarship`).
- **`fix/[nama-bug]`**: Branch untuk perbaikan bug.

### Prosedur Pull Request (PR):
1. Tarik update terbaru dari `develop`.
2. Buat branch fitur dari `develop`.
3. Setelah selesai, lakukan commit dengan pesan yang jelas (Contoh: `feat: add manual tracking status for students`).
4. Push ke remote dan buka PR ke branch `develop`.
5. Minimal 1 developer lain harus melakukan review sebelum PR di-merge.

---

## 3. Standar Penulisan Kode (Clean Code)
- **Naming Convention:**
    - Controller: `ScholarshipController.php` (PascalCase, Singular).
    - Model: `Scholarship.php` (PascalCase, Singular).
    - Table: `scholarships` (snake_case, plural).
    - View: `index.blade.php`, `create.blade.php` (snake_case).
- **Service Pattern:** Jangan menaruh logika bisnis yang kompleks di Controller. Gunakan direktori `app/Services` untuk logika yang bisa digunakan kembali.
- **Validation:** Gunakan *Form Request Validation* (`php artisan make:request`) untuk menjaga Controller tetap bersih.

---

## 4. Komunikasi Teknis
- Gunakan **Trello/GitHub Projects** untuk memantau status tugas (To Do, In Progress, Review, Done).
- Jika ada perubahan pada skema database, segera jalankan `php artisan make:migration` dan beritahu tim di grup WhatsApp agar mereka melakukan `php artisan migrate`.
