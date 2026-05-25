-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 18, 2026 at 01:19 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcompro_nim`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(280) NOT NULL,
  `excerpt` varchar(400) NOT NULL,
  `konten` longtext NOT NULL,
  `image` varchar(512) DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
    
--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `slug`, `excerpt`, `konten`, `image`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 'Mohamad Firdaus  Raih Penghargaan Best Tech Company 2026', 'mohamad-firdaus-raih-penghargaan-best-tech-company-2026', 'Mohamad Firdaus berhasil meraih penghargaan bergengsi sebagai Best Tech Company 2026 dari Asia Pacific Innovation Awards atas kontribusinya dalam transformasi digital di kawasan ASEAN.', '<p>DigiTech dengan bangga mengumumkan bahwa perusahaan telah berhasil meraih penghargaan bergengsi <strong>Best Tech Company 2026</strong> dari Asia Pacific Innovation Awards. Penghargaan ini diberikan atas kontribusi luar biasa DigiTech dalam memimpin transformasi digital di kawasan ASEAN.</p><p>Dalam acara yang dihadiri lebih dari 500 pemimpin industri teknologi dari 15 negara, DigiTech diakui atas inovasi produk-produknya yang revolusioner, dampak sosial yang signifikan, dan pertumbuhan bisnis yang konsisten selama tiga tahun berturut-turut.</p><p>\"Penghargaan ini bukan hanya milik tim DigiTech, tapi juga milik seluruh klien dan mitra yang telah mempercayai kami,\" ujar CEO DigiTech, Moh Firdaus.</p>', 'https://images.unsplash.com/photo-1552664730-d307ca884978?w=800&q=80', 1, '2026-04-24 02:59:16', '2026-04-24 03:15:31'),
(2, 'Peluncuran Platform AI Generatif DigiMind v2.0', 'peluncuran-platform-ai-generatif-digimind-v2', 'DigiTech memperkenalkan DigiMind v2.0, platform AI generatif berbahasa Indonesia pertama yang mampu memahami konteks bisnis lokal dan menghasilkan konten berkualitas tinggi secara otomatis.', '<p>Setelah 18 bulan riset dan pengembangan, DigiTech secara resmi meluncurkan <strong>DigiMind v2.0</strong> — platform kecerdasan buatan generatif yang dirancang khusus untuk ekosistem bisnis Indonesia.</p><p>DigiMind v2.0 hadir dengan kemampuan pemahaman bahasa Indonesia yang jauh lebih akurat, dukungan untuk lebih dari 20 dialek regional, dan integrasi langsung dengan sistem ERP, CRM, serta e-commerce platform populer di Indonesia.</p><p>Platform ini telah diuji coba oleh 50+ perusahaan selama fase beta, dengan rata-rata peningkatan produktivitas sebesar <strong>340%</strong> dalam pengelolaan dokumen dan komunikasi bisnis.</p>', 'https://images.unsplash.com/photo-1677442135703-1787eea5ce01?w=800&q=80', 1, '2026-04-24 02:59:16', '2026-04-24 02:59:16'),
(3, 'Kemitraan Strategis dengan AWS untuk Solusi Cloud Enterprise', 'kemitraan-strategis-aws-cloud-enterprise', 'DigiTech menandatangani perjanjian kemitraan strategis dengan Amazon Web Services (AWS) untuk menghadirkan solusi cloud enterprise kelas dunia bagi bisnis skala menengah dan besar di Indonesia.', '<p>DigiTech dan <strong>Amazon Web Services (AWS)</strong> resmi menandatangani perjanjian kemitraan strategis yang akan memperkuat layanan cloud computing DigiTech di seluruh Indonesia.</p><p>Melalui kemitraan ini, DigiTech menjadi <em>AWS Advanced Consulting Partner</em> pertama yang berbasis di Indonesia Timur, membuka akses ke teknologi cloud AWS terdepan termasuk layanan AI/ML, IoT, dan keamanan siber untuk klien-klien enterprise.</p><p>Program kemitraan ini juga mencakup pelatihan sertifikasi AWS untuk 200 engineer DigiTech sepanjang tahun 2026, memastikan standar layanan tertinggi bagi seluruh klien.</p>', 'https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=800&q=80', 1, '2026-04-24 02:59:16', '2026-04-24 02:59:16'),
(4, 'Workshop DevOps & Kubernetes Gratis untuk Startup Indonesia', 'workshop-devops-kubernetes-gratis-startup-indonesia', 'DigiTech membuka program workshop DevOps & Kubernetes gratis untuk 100 startup Indonesia terpilih sebagai bentuk komitmen mendukung ekosistem teknologi nasional.', '<p>Sebagai bagian dari program <strong>DigiTech for Startups</strong>, kami dengan bangga mengumumkan program workshop DevOps & Kubernetes gratis untuk 100 startup Indonesia terpilih.</p><p>Workshop 3 hari intensif ini akan mencakup materi containerisasi dengan Docker, orkestrasi dengan Kubernetes, implementasi CI/CD pipeline, monitoring & observability, serta best practices keamanan cloud-native.</p><p>Peserta terpilih akan mendapatkan akses ke platform cloud DigiTech senilai Rp 5 juta selama 3 bulan, mentoring langsung dari senior engineer DigiTech, dan sertifikasi resmi yang diakui industri.</p>', 'https://images.unsplash.com/photo-1517180102446-f3ece451e9d8?w=800&q=80', 1, '2026-04-24 02:59:16', '2026-04-24 02:59:16'),
(5, 'Laporan Riset: Tren Keamanan Siber Indonesia 2026', 'laporan-riset-tren-keamanan-siber-indonesia-2026', 'Tim riset DigiTech menerbitkan laporan komprehensif tentang lanskap keamanan siber Indonesia 2026, mengungkap tren ancaman terbaru dan rekomendasi mitigasi untuk perusahaan Indonesia.', '<p>Tim riset DigiTech Cyber Intelligence merilis laporan tahunan <strong>\"Indonesia Cybersecurity Landscape 2026\"</strong> yang menjadi referensi utama bagi lebih dari 500 CISO dan pemimpin keamanan siber di Indonesia.</p><p>Laporan setebal 120 halaman ini menganalisis lebih dari 2 juta insiden keamanan yang terjadi sepanjang 2025, mengidentifikasi pola serangan baru, dan memberikan rekomendasi praktis untuk memperkuat postur keamanan organisasi di era AI.</p><p>Temuan kunci: serangan ransomware meningkat 280% YoY, phishing via AI-generated content menjadi ancaman terbesar, dan 73% perusahaan Indonesia belum memiliki incident response plan yang memadai.</p>', 'https://images.unsplash.com/photo-1550751827-4bd374c3f58b?w=800&q=80', 1, '2026-04-24 02:59:16', '2026-04-24 02:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int UNSIGNED NOT NULL,
  `nama` varchar(120) NOT NULL,
  `email` varchar(200) NOT NULL,
  `subjek` varchar(200) NOT NULL DEFAULT '',
  `pesan` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `id` int UNSIGNED NOT NULL,
  `nama` varchar(120) NOT NULL,
  `icon` varchar(60) NOT NULL DEFAULT 'code',
  `deskripsi` text NOT NULL,
  `urutan` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`id`, `nama`, `icon`, `deskripsi`, `urutan`, `created_at`, `updated_at`) VALUES
(1, 'Integrasi AI', 'brain', 'Implementasi kecerdasan buatan tingkat lanjut untuk mengotomatisasi kompleksitas dan meningkatkan efisiensi operasional bisnis Anda dengan teknologi machine learning terkini.', 1, '2026-04-24 02:59:16', '2026-04-24 02:59:16'),
(2, 'Cloud Nexus', 'cloud', 'Arsitektur cloud masa depan yang skalabel, aman, dan dirancang khusus untuk performa tinggi tanpa batas. Migrasi, optimasi, dan manajemen infrastruktur cloud enterprise.', 2, '2026-04-24 02:59:16', '2026-04-24 02:59:16'),
(3, 'Cyber Fortress', 'shield', 'Sistem keamanan siber mutakhir dengan perlindungan proaktif 24/7 yang menjaga aset digital Anda dari ancaman tercanggih menggunakan AI-driven threat intelligence.', 3, '2026-04-24 02:59:16', '2026-04-24 02:59:16'),
(4, 'Custom Software', 'layers', 'Pengembangan aplikasi web dan mobile yang disesuaikan penuh dengan kebutuhan bisnis Anda — dari ideasi hingga deployment production.', 4, '2026-04-24 02:59:16', '2026-04-24 02:59:16'),
(5, 'Data Analytics', 'bar-chart', 'Transformasi data mentah menjadi insight bisnis yang actionable melalui dashboard real-time, predictive analytics, dan laporan interaktif berbasis BI tools modern.', 5, '2026-04-24 02:59:16', '2026-04-24 02:59:16'),
(6, 'DevOps & CI/CD', 'git-merge', 'Automasi pipeline delivery, containerisasi (Docker/Kubernetes), dan kultur DevOps yang mempercepat time-to-market hingga 10x lebih cepat.', 6, '2026-04-24 02:59:16', '2026-04-24 02:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'admin',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'admin', '$2b$10$AYEh3JcdZRr76lMBa3jyVOp7ljwlJRiS205Hs.3vNVKXqsxCrlUrq', 'admin', '2026-04-24 02:59:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `idx_published` (`is_published`),
  ADD KEY `idx_created` (`created_at`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_read` (`is_read`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
