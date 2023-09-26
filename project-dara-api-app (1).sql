-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2023 at 06:06 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project-dara-api-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritas`
--

INSERT INTO `beritas` (`id`, `gambar`, `judul`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'https://cdn.hellosehat.com/wp-content/uploads/2016/10/setelah-donor-darah.jpg', 'Serba-serbi Donor Darah: Prosedur, Persyaratan, dan Hal yang Harus Diperhatikan', 'Donor darah adalah prosedur sukarela yang dapat membantu menyelamatkan nyawa orang lain. Darah dari setiap pendonor akan dikumpulkan lewat jarum steril sekali pakai, kemudian ditampung dalam kantong darah steril.\n\nAmerican Association of Blood Banks menyebutkan bahwa umumnya, sekali mendonor, darah Anda akan diambil sebanyak sekitar 500 ml. Ini kurang lebih 8% dari total keseluruhan darah Anda. \n\nProsedur ini bisa jadi dilakukan dengan menyumbangkan darah utuh atau komponen darah tertentu, seperti trombosit atau plasma. Jumlah yang diberikan dalam prosedur donor darah komponen darah tertentu ini akan bergantung pada tinggi badan, berat badan, dan jumlah trombosit Anda.\n\nDonor darah di Indonesia diatur oleh Peraturan Pemerintah No. 2/2011 tentang pelayanan donor darah yang diatur oleh Palang Merah Indonesia (PMI) sebagai tujuan sosial dan kemanusiaan. \n\nProsedur ini di bawah pengawasan PMI juga dijamin UU No. 36/2009 tentang Kesehatan, bahwa pemerintah bertanggung jawab atas pelaksanaan pelayanan donor darah yang aman, mudah diakses, dan sesuai dengan kebutuhan masyarakat.', '2023-09-15 17:00:00', '2023-09-15 17:00:00'),
(2, 'https://cdn.hellosehat.com/wp-content/uploads/2017/07/shutterstock_335397308-702x467.jpg', 'Siapa saja yang bisa donor darah?', 'Tidak semua orang diperbolehkan melakukan prosedur ini.  Syarat-syarat yang perlu Anda penuhi jika ingin mendonorkan darah di antaranya adalah:\n\nBerusia 17-65 tahun boleh mendonorkan darah\nLolos pemeriksaan kesehatan sebelum mendonorkan darah\nmemiliki berat badan tidak kurang dari 45 kilogram dan sehat, baik jasmani maupun rohani\nTekanan darah Anda harus berada pada angka 100-170 (sistolik) dan 70-100 (diastolik)\nKadar hemoglobin darah saat pemeriksaan harus berkisar antara 12,5g% – 17g%', '2023-09-15 17:00:00', '2023-09-15 17:00:00'),
(3, 'https://cdn.hellosehat.com/wp-content/uploads/2017/09/3-Manfaat-Donor-Darah-yang-Bisa-Mencegah-Penyakit-700x467.jpg', 'Apa itu donor darah?', 'Donor darah adalah prosedur sukarela yang dapat membantu menyelamatkan nyawa orang lain. Darah dari setiap pendonor akan dikumpulkan lewat jarum steril sekali pakai, kemudian ditampung dalam kantong darah steril.\r\n\r\nAmerican Association of Blood Banks menyebutkan bahwa umumnya, sekali mendonor, darah Anda akan diambil sebanyak sekitar 500 ml. Ini kurang lebih 8% dari total keseluruhan darah Anda. \r\n\r\nProsedur ini bisa jadi dilakukan dengan menyumbangkan darah utuh atau komponen darah tertentu, seperti trombosit atau plasma. Jumlah yang diberikan dalam prosedur donor darah komponen darah tertentu ini akan bergantung pada tinggi badan, berat badan, dan jumlah trombosit Anda.\r\n\r\nDonor darah di Indonesia diatur oleh Peraturan Pemerintah No. 2/2011 tentang pelayanan donor darah yang diatur oleh Palang Merah Indonesia (PMI) sebagai tujuan sosial dan kemanusiaan. \r\n\r\nProsedur ini di bawah pengawasan PMI juga dijamin UU No. 36/2009 tentang Kesehatan, bahwa pemerintah bertanggung jawab atas pelaksanaan pelayanan donor darah yang aman, mudah diakses, dan sesuai dengan kebutuhan masyarakat.', '2023-09-15 17:00:00', '2023-09-16 14:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `golongan_darah`
--

CREATE TABLE `golongan_darah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `golongan_darah`
--

INSERT INTO `golongan_darah` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'A+', NULL, NULL),
(2, 'A', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_donor_darahs`
--

CREATE TABLE `jadwal_donor_darahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tanggal_donor` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `kontak` varchar(20) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwal_donor_darahs`
--

INSERT INTO `jadwal_donor_darahs` (`id`, `lokasi`, `alamat`, `tanggal_donor`, `jam_mulai`, `jam_selesai`, `kontak`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'tempat 1', 'jakarta', '2023-09-19', '13:00:00', '14:00:00', '0812345678', -6.272617683478921, 106.75724260631549, NULL, NULL),
(2, 'tempat 2', 'padang', '2023-09-21', '13:00:00', '14:00:00', '0777777777777777', -6.286140227917907, 106.74247972785645, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_donor_pendonors`
--

CREATE TABLE `jadwal_donor_pendonors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pendonor` bigint(20) UNSIGNED NOT NULL,
  `id_jadwal_donor_darah` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwal_donor_pendonors`
--

INSERT INTO `jadwal_donor_pendonors` (`id`, `id_pendonor`, `id_jadwal_donor_darah`, `created_at`, `updated_at`) VALUES
(5, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lupa_passwords`
--

CREATE TABLE `lupa_passwords` (
  `email` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `otp` varchar(4) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lupa_passwords`
--

INSERT INTO `lupa_passwords` (`email`, `token`, `otp`, `created_at`) VALUES
('afifpermana10@gmail.com', '9YSwrr3lX3xF0U8VPpem869ERmCPHjDQllHqwkJNmDMBRDe4GfwCSKJ3ous52s6G', '9720', '2023-09-22 14:35:47'),
('afifpermana1009@gmail.com', 'TmTzdio9vHbu1DSBQO1heBvuP0GrvMQFvvb596clGWeNPBGdZhERRfYwIReDgEAN', '7095', '2023-09-22 07:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_09_15_074547_create_pendonors_table', 1),
(3, '2023_09_15_080030_create_golongan_darahs_table', 1),
(4, '2023_09_15_085154_create_jadwal_donor_pendonors_table', 1),
(5, '2023_09_15_085207_create_jadwal_donor_darahs_table', 1),
(6, '2023_09_16_134614_create_beritas_table', 1),
(7, '2023_09_22_040147_create_lupa_passwords_table', 2),
(8, '2023_09_22_061834_create_lupa_passwords_table', 3),
(9, '2023_09_22_062306_create_lupa_passwords_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pendonors`
--

CREATE TABLE `pendonors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `kode_pendonor` varchar(10) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `id_golongan_darah` bigint(20) UNSIGNED NOT NULL,
  `berat_badan` int(11) NOT NULL,
  `kontak_pendonor` varchar(20) NOT NULL,
  `alamat_pendonor` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `stok_darah_tersedia` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pendonors`
--

INSERT INTO `pendonors` (`id`, `gambar`, `nama`, `email`, `kode_pendonor`, `tanggal_lahir`, `jenis_kelamin`, `id_golongan_darah`, `berat_badan`, `kontak_pendonor`, `alamat_pendonor`, `password`, `stok_darah_tersedia`, `created_at`, `updated_at`) VALUES
(1, '1695266127.png', 'Afif Permana', 'afifpermana10@gmail.com', 'dara98386', '2002-09-10', 'laki-laki', 1, 49, '08877541516', 'padang', '$2y$10$2RNUEIQuBemMzkRM5o5FQ.ZhVIAYdzwfzboXdvS.7Vz0h8hhGMK2q', 0, '2023-09-16 07:10:06', '2023-09-22 07:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `golongan_darah`
--
ALTER TABLE `golongan_darah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `golongan_darah_nama_unique` (`nama`);

--
-- Indexes for table `jadwal_donor_darahs`
--
ALTER TABLE `jadwal_donor_darahs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal_donor_pendonors`
--
ALTER TABLE `jadwal_donor_pendonors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lupa_passwords`
--
ALTER TABLE `lupa_passwords`
  ADD UNIQUE KEY `email` (`email`,`token`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendonors`
--
ALTER TABLE `pendonors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pendonors_kode_pendonor_unique` (`kode_pendonor`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `golongan_darah`
--
ALTER TABLE `golongan_darah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jadwal_donor_darahs`
--
ALTER TABLE `jadwal_donor_darahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jadwal_donor_pendonors`
--
ALTER TABLE `jadwal_donor_pendonors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pendonors`
--
ALTER TABLE `pendonors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
