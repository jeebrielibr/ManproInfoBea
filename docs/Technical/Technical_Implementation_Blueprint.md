# Technical Implementation Blueprint
## Proyek Website Portal Informasi Beasiswa Terpusat

**Versi:** 1.0  
**Status:** Approved  
**Referensi:** SRS v1.0, SAD v1.0, Developer Guide v1.0

---

## 1. Route Mapping (`routes/web.php`)
Seluruh endpoint harus didaftarkan di `web.php` dengan pengelompokan middleware yang sesuai untuk keamanan.

| Group | URL | Method | Controller@Method | Middleware | Deskripsi |
|---|---|---|---|---|---|
| **Public** | `/` | GET | `HomeController@index` | - | Landing Page Utama |
| | `/scholarships` | GET | `ScholarshipController@index` | - | Search & Filter Results |
| | `/scholarships/{slug}` | GET | `ScholarshipController@show` | - | Detail & Redirect URL |
| **Guest** | `/login` | GET/POST | `AuthController@login` | `guest` | Form & Proses Login |
| | `/register` | GET/POST | `AuthController@register` | `guest` | Form & Proses Registrasi |
| **Auth** | `/logout` | POST | `AuthController@logout` | `auth` | Proses Logout |
| **Student** | `/dashboard` | GET | `Student\DashboardController@index` | `auth, role:mahasiswa` | Dashboard Mahasiswa |
| | `/profile` | GET/PUT | `Student\ProfileController@edit/update`| `auth, role:mahasiswa` | Update IPK & Jurusan |
| | `/applications` | POST | `Student\ApplicationController@store` | `auth, role:mahasiswa` | Simpan Tracking Manual |
| | `/applications/{id}` | PUT | `Student\ApplicationController@update`| `auth, role:mahasiswa` | Update Status Tracking |
| **Admin** | `/admin` | GET | `Admin\DashboardController@index` | `auth, role:admin` | Dashboard Utama Admin |
| | `/admin/scholarships`| CRUD | `Admin\ScholarshipController` | `auth, role:admin` | Manajemen Data Beasiswa |
| | `/admin/categories` | CRUD | `Admin\CategoryController` | `auth, role:admin` | Manajemen Kategori |
| | `/admin/users` | GET | `Admin\UserController@index` | `auth, role:admin` | Monitoring User |

---

## 2. Repository Structure
Struktur direktori utama mengikuti standar Laravel 11 dengan implementasi *Service Pattern*.

```text
ManproInfoBea/
├── app/
│   ├── Http/
│   │   ├── Controllers/
│   │   │   ├── Admin/             # Controller Fitur Admin
│   │   │   ├── Student/           # Controller Fitur Mahasiswa
│   │   │   └── AuthController.php # Logika Auth (Login/Reg)
│   │   ├── Middleware/            # Middleware Role-Based Access
│   │   └── Requests/              # Validasi Input (Form Request)
│   ├── Models/                    # User, Scholarship, Category, Application
│   ├── Services/                  # Logika Bisnis (Dianjurkan)
│   │   ├── ScholarshipService.php # Logika Filter & Search
│   │   └── ApplicationService.php # Logika Tracking Status
│   └── Providers/
├── database/
│   ├── migrations/                # Schema (User, Scholar, Cat, App, Notif)
│   └── seeders/                   # Initial Data (Admin & Categories)
├── doc/                           # Dokumentasi & Blueprint
├── resources/
│   ├── js/ & css/                 # Vite, Tailwind & Alpine.js
│   └── views/                     # Blade Templates
│       ├── admin/                 # Layouts khusus Admin
│       ├── student/               # Layouts khusus Mahasiswa
│       ├── components/            # Reusable UI Components
│       └── layouts/               # Base Layout (App Shell)
├── routes/
│   └── web.php                    # File Definisi Route
├── tests/                         # Unit, Feature, & PEST/PHPUnit
├── .env.example                   # Template Konfigurasi Environment
└── composer.json
```

---

## 3. Aturan Teknis Tambahan
1. **Security:** Gunakan middleware `role` (custom) atau `Gate` Laravel untuk membatasi akses Admin vs Mahasiswa.
2. **SEO:** Field `slug` pada tabel `scholarships` harus bersifat *unique* dan di-generate otomatis dari `title`.
3. **Tracking:** Status aplikasi mahasiswa di tabel `scholarship_applications` menggunakan enum: `pending`, `processing`, `accepted`, `rejected`.
4. **Validation:** Semua input dari user wajib melalui `FormRequest` untuk mencegah *mass assignment* dan XSS.
