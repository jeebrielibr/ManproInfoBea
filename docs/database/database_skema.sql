-- 1. Persiapan Database
CREATE DATABASE IF NOT EXISTS db_infobea;
USE db_infobea;

-- 2. Tabel Users (Mengikuti standar Laravel + Role & Profile)
CREATE TABLE IF NOT EXISTS users (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    email_verified_at TIMESTAMP NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'mahasiswa') DEFAULT 'mahasiswa',
    major VARCHAR(100) NULL,
    current_semester INT NULL,
    current_gpa DECIMAL(3,2) NULL,
    remember_token VARCHAR(100) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- 3. Tabel Categories (Kategori Beasiswa)
CREATE TABLE IF NOT EXISTS categories (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    slug VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- 4. Tabel Scholarships (Data Induk Beasiswa)
CREATE TABLE IF NOT EXISTS scholarships (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    category_id BIGINT UNSIGNED NOT NULL,
    title VARCHAR(255) NOT NULL,
    slug VARCHAR(255) NOT NULL UNIQUE,
    provider VARCHAR(255) NOT NULL,
    external_link TEXT NOT NULL,
    description TEXT,
    requirements TEXT,
    min_gpa DECIMAL(3,2) DEFAULT 0.00,
    min_semester INT DEFAULT 1,
    max_semester INT DEFAULT 8,
    deadline DATETIME NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP NULL, -- Untuk Soft Deletes
    INDEX (slug),
    INDEX (deadline),
    CONSTRAINT fk_scholarship_category FOREIGN KEY (category_id) 
        REFERENCES categories(id) ON DELETE RESTRICT
) ENGINE=InnoDB;

-- 5. Tabel Scholarship Applications (Tracking Progres Manual)
CREATE TABLE IF NOT EXISTS scholarship_applications (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    scholarship_id BIGINT UNSIGNED NOT NULL,
    status ENUM('pending', 'processing', 'accepted', 'rejected') DEFAULT 'pending',
    remarks TEXT NULL,
    applied_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_app_user FOREIGN KEY (user_id) 
        REFERENCES users(id) ON DELETE CASCADE,
    CONSTRAINT fk_app_scholarship FOREIGN KEY (scholarship_id) 
        REFERENCES scholarships(id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- 6. Tabel Saved Scholarships (Fitur Bookmark/Simpan)
CREATE TABLE IF NOT EXISTS saved_scholarships (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    scholarship_id BIGINT UNSIGNED NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_saved_user FOREIGN KEY (user_id) 
        REFERENCES users(id) ON DELETE CASCADE,
    CONSTRAINT fk_saved_scholarship FOREIGN KEY (scholarship_id) 
        REFERENCES scholarships(id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- 7. Tabel Notifications (Untuk Reminder Deadline)
CREATE TABLE IF NOT EXISTS notifications (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    title VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    is_read BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_notif_user FOREIGN KEY (user_id) 
        REFERENCES users(id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- ==========================================
-- DATA AWAL (SEEDER) UNTUK TESTING
-- ==========================================

-- Insert Categories
INSERT INTO categories (name, slug) VALUES 
('Prestasi Akademik', 'prestasi-akademik'),
('Bantuan Biaya (Ekonomi)', 'bantuan-biaya'),
('Luar Negeri', 'luar-negeri'),
('Riset/Tugas Akhir', 'riset-tugas-akhir');

-- Insert Admin (Password: password123) - Gunakan Hash Bcrypt di Laravel nanti
INSERT INTO users (name, email, password, role) VALUES 
('Admin Bubur Sumscrum', 'admin@infobea.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin');

-- Insert Sample Scholarship
INSERT INTO scholarships (category_id, title, slug, provider, external_link, description, deadline) VALUES 
(1, 'Beasiswa Unggulan Kemendikbud 2026', 'beasiswa-unggulan-2026', 'Kemendikbud', 'https://beasiswaunggulan.kemdikbud.go.id/', 'Beasiswa untuk mahasiswa berprestasi...', '2026-08-30 23:59:59');
