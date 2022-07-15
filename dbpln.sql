-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2022 at 09:51 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpln`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2022_06_22_150947_create_tb_golongan_table', 2),
(21, '2014_10_12_000000_create_users_table', 3),
(22, '2014_10_12_100000_create_password_resets_table', 3),
(23, '2019_08_19_000000_create_failed_jobs_table', 3),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(25, '2022_06_23_071353_create_tb_golongan_table', 3),
(26, '2022_06_23_073413_create_tb_pelanggan_table', 3),
(27, '2022_06_23_073614_create_tb_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_golongan`
--

CREATE TABLE `tb_golongan` (
  `gol_id` tinyint(4) NOT NULL,
  `gol_kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gol_nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_golongan`
--

INSERT INTO `tb_golongan` (`gol_id`, `gol_kode`, `gol_nama`, `created_at`, `updated_at`) VALUES
(18, '01', 'Alvi Syahrin', '2022-07-15 06:25:30', '2022-07-15 06:25:30'),
(20, '02', 'Supardi', '2022-07-16 06:25:00', '2022-07-16 13:25:00'),
(22, '03', 'Amad Suharto', '2022-07-16 06:27:00', '2022-07-16 13:27:00'),
(23, '04', 'Chairul Manar', '2022-07-16 06:28:00', '2022-07-16 13:28:00'),
(24, '05', 'Sugianto', '2022-07-16 06:33:00', '2022-07-16 13:33:00'),
(25, '06', 'Muhammad Hasan', '2022-07-16 06:36:00', '2022-07-16 13:36:00'),
(26, '07', 'Muhammad Anto', '2022-07-16 06:37:00', '2022-07-16 13:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `pel_id` int(11) NOT NULL,
  `pel_id_gol` tinyint(4) NOT NULL,
  `pel_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pel_nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pel_alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pel_hp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pel_ktp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pel_seri` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pel_meteran` int(11) NOT NULL,
  `pel_aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pel_id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`pel_id`, `pel_id_gol`, `pel_no`, `pel_nama`, `pel_alamat`, `pel_hp`, `pel_ktp`, `pel_seri`, `pel_meteran`, `pel_aktif`, `pel_id_user`, `created_at`, `updated_at`) VALUES
(6, 1, '01', 'alvi syahrin', 'jl.manggis Limau Sundai', '081267252626', '', '', 0, '', 0, '2022-07-15 06:26:23', '2022-07-15 06:26:23'),
(7, 0, '02', 'Supardi', 'jl.permai', '0812452555', '', '', 0, 'Y', 0, '2022-07-15 06:27:03', '2022-07-15 06:27:03'),
(8, 0, '03', 'Amad Suharto', 'Jl.Sudirman', '081275637645', '', '', 0, 'Y', 0, '2022-07-14 23:28:12', '2022-07-15 06:28:12'),
(9, 0, '04', 'Chairul Manar', 'Jl.Supoemo', '082176836534', '', '', 0, 'Y', 0, '2022-07-14 23:29:49', '2022-07-15 06:29:49'),
(10, 0, '05', 'Sugianto', 'Jl.Sutomo', '08572573836', '', '', 0, 'Y', 0, '2022-07-14 23:34:40', '2022-07-15 06:34:40'),
(11, 0, '06', 'Muhammad Hasan', 'Jl.Lapangan Golf', '08387684653', '', '', 0, 'Y', 0, '2022-07-14 23:36:34', '2022-07-15 06:36:34'),
(12, 0, '07', 'Muhammad Anto', 'Jl.Veteran', '087836548746', '', '', 0, 'Y', 0, '2022-07-14 23:40:10', '2022-07-15 06:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_hp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_pos` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` tinyint(4) NOT NULL,
  `user_aktif` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Miftahul Ulyana hutabarat', 'mifthulyn07@gmail.com', NULL, '$2y$10$ViAGPCPAsztzbHW.Ub36EeeBQ.N6BtSNa1jK6MfRgzOfJT7tpuRFm', NULL, '2022-06-23 01:19:27', '2022-06-23 01:19:27'),
(2, 'alvi syahrin', 'alvioppo9@gmail.com', NULL, '$2y$10$CY2ArD7s/hU7.oFCv1Y5kuZGXH1vfHqe6qNsPlOG0.hw1Ry0ft9lq', NULL, '2022-06-24 07:43:02', '2022-06-24 07:43:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tb_golongan`
--
ALTER TABLE `tb_golongan`
  ADD PRIMARY KEY (`gol_id`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`pel_id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_golongan`
--
ALTER TABLE `tb_golongan`
  MODIFY `gol_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `pel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
