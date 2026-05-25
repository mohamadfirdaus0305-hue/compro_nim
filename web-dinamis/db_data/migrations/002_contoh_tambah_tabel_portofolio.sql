-- Migration: 002_contoh_tambah_tabel_portofolio.sql
-- Deskripsi : Contoh cara menambah tabel baru
-- Tanggal   : 2026-05-25
-- ─────────────────────────────────────────────────────────────
-- CARA MEMBUAT MIGRASI BARU:
-- 1. Buat file baru dengan nama: NNN_deskripsi_singkat.sql
--    (NNN = nomor urut 3 digit: 002, 003, dst)
-- 2. Gunakan CREATE TABLE IF NOT EXISTS / ALTER TABLE (jangan DROP!)
-- 3. Commit & push → migrasi jalan otomatis saat deploy
-- ─────────────────────────────────────────────────────────────

-- Contoh: tambah tabel portofolio
CREATE TABLE IF NOT EXISTS `portofolio` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `judul` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `image` varchar(512) DEFAULT NULL,
  `url` varchar(512) DEFAULT NULL,
  `urutan` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Contoh: tambah kolom baru ke tabel yang sudah ada
-- ALTER TABLE `layanan` ADD COLUMN IF NOT EXISTS `is_active` tinyint(1) NOT NULL DEFAULT 1 AFTER `urutan`;

-- Contoh: tambah index baru
-- ALTER TABLE `berita` ADD KEY IF NOT EXISTS `idx_updated` (`updated_at`);
