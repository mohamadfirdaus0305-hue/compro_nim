-- Migration: 001_initial_schema.sql
-- Deskripsi : Skema awal — tabel berita, kontak, layanan, users
-- Tanggal   : 2026-05-18
-- ─────────────────────────────────────────────────────────────
-- File ini adalah SNAPSHOT pertama dari dbcompro_nim.sql.
-- Setiap perubahan DB selanjutnya harus dibuat sebagai file migrasi
-- BARU (002_..., 003_..., dst), JANGAN edit file ini.
-- ─────────────────────────────────────────────────────────────

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- Tabel berita
CREATE TABLE IF NOT EXISTS `berita` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(280) NOT NULL,
  `excerpt` varchar(400) NOT NULL,
  `konten` longtext NOT NULL,
  `image` varchar(512) DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `idx_published` (`is_published`),
  KEY `idx_created` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabel kontak
CREATE TABLE IF NOT EXISTS `kontak` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(120) NOT NULL,
  `email` varchar(200) NOT NULL,
  `subjek` varchar(200) NOT NULL DEFAULT '',
  `pesan` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_read` (`is_read`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabel layanan
CREATE TABLE IF NOT EXISTS `layanan` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(120) NOT NULL,
  `icon` varchar(60) NOT NULL DEFAULT 'code',
  `deskripsi` text NOT NULL,
  `urutan` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabel users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'admin',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Seed data awal (hanya diinsert jika tabel kosong)
INSERT IGNORE INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '$2b$10$AYEh3JcdZRr76lMBa3jyVOp7ljwlJRiS205Hs.3vNVKXqsxCrlUrq', 'admin');
