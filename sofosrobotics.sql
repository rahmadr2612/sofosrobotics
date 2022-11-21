-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Nov 2022 pada 09.35
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sofosrobotics`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `agenda`
--

INSERT INTO `agenda` (`id`, `judul`, `deskripsi`, `image`) VALUES
(1, 'judul agenda', 'ini adalah contoh dari deskripsi agenda', 'agenda.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL,
  `kode` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_detail`
--

CREATE TABLE `order_detail` (
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL,
  `idOrder` varchar(45) DEFAULT NULL,
  `kode` varchar(45) DEFAULT NULL,
  `penawaran` varchar(45) DEFAULT NULL,
  `komponen` varchar(45) DEFAULT NULL,
  `jasa` varchar(45) DEFAULT NULL,
  `harga` varchar(45) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pilihan_jenis`
--

CREATE TABLE `pilihan_jenis` (
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pilihan_jenis`
--

INSERT INTO `pilihan_jenis` (`create_time`, `update_time`, `id`, `nama`) VALUES
(NULL, NULL, 1, 'radio'),
(NULL, NULL, 2, 'pilihan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `robot_jawaban`
--

CREATE TABLE `robot_jawaban` (
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL,
  `idRMaster` int(11) NOT NULL,
  `idRPerangkat` int(11) NOT NULL,
  `idRPenawaran` int(11) NOT NULL,
  `jenisPilihan` varchar(45) DEFAULT NULL,
  `harga` varchar(45) DEFAULT NULL,
  `satuan` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `robot_jawaban`
--

INSERT INTO `robot_jawaban` (`create_time`, `update_time`, `id`, `idRMaster`, `idRPerangkat`, `idRPenawaran`, `jenisPilihan`, `harga`, `satuan`) VALUES
('2022-04-13 06:25:15', '2022-04-13 06:25:15', 1, 1, 2, 1, '1', '5000000', NULL),
('2022-04-13 07:29:42', '2022-04-13 07:29:42', 2, 1, 2, 2, '1', '5000000', NULL),
('2022-04-13 08:00:35', '2022-04-13 08:00:35', 3, 1, 1, 3, '2', '45000000', '50'),
('2022-04-13 08:00:35', '2022-04-13 08:00:35', 4, 1, 1, 3, '2', '90000000', '350'),
('2022-04-13 08:00:35', '2022-04-13 08:00:35', 5, 1, 1, 3, '2', '75000000', '200'),
('2022-04-13 08:00:35', '2022-04-13 08:00:35', 6, 1, 1, 3, '2', '60000000', '100'),
('2022-04-21 17:26:23', '2022-04-21 17:26:23', 8, 1, 2, 4, '1', '500000', NULL),
('2022-04-21 17:28:49', '2022-04-21 17:28:49', 9, 1, 2, 5, '1', '250000', NULL),
('2022-04-21 17:29:56', '2022-04-21 17:29:56', 10, 1, 2, 6, '1', '200000', NULL),
('2022-04-21 17:39:44', '2022-04-21 17:39:44', 11, 1, 3, 7, '1', '400000', NULL),
('2022-04-21 17:40:22', '2022-04-21 17:40:22', 12, 1, 3, 8, '1', '8000000', NULL),
('2022-04-21 17:40:59', '2022-04-21 17:40:59', 13, 1, 3, 9, '1', '1300000', NULL),
('2022-04-21 17:42:05', '2022-04-21 17:42:05', 14, 1, 3, 10, '1', '500000', NULL),
('2022-04-21 17:43:26', '2022-04-21 17:43:26', 15, 1, 3, 11, '1', '6500000', NULL),
('2022-04-21 17:44:13', '2022-04-21 17:44:13', 16, 1, 3, 12, '1', '2500000', NULL),
('2022-04-21 17:44:58', '2022-04-21 17:44:58', 17, 1, 3, 13, '1', '1200000', NULL),
('2022-04-21 17:46:04', '2022-04-21 17:46:04', 18, 1, 3, 14, '1', '5600000', NULL),
('2022-04-21 17:46:40', '2022-04-21 17:46:40', 19, 1, 3, 15, '1', '1500000', NULL),
('2022-04-21 17:47:03', '2022-04-21 17:47:03', 20, 1, 3, 16, '1', '350000', NULL),
('2022-04-21 17:47:24', '2022-04-21 17:47:24', 21, 1, 3, 17, '1', '850000', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `robot_master`
--

CREATE TABLE `robot_master` (
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `robot_master`
--

INSERT INTO `robot_master` (`create_time`, `update_time`, `id`, `nama`, `image`) VALUES
('2022-11-06 11:00:23', '2022-11-06 11:00:23', 2, 'Angkut', 'mekanik3.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `robot_order`
--

CREATE TABLE `robot_order` (
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL,
  `robot` varchar(255) DEFAULT NULL,
  `kode_invoice` varchar(255) DEFAULT NULL,
  `penawaran` varchar(255) DEFAULT NULL,
  `komponen` varchar(255) DEFAULT NULL,
  `jasa` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `pilihan` varchar(255) DEFAULT NULL,
  `deskripsiRobot` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `robot_order`
--

INSERT INTO `robot_order` (`create_time`, `update_time`, `id`, `robot`, `kode_invoice`, `penawaran`, `komponen`, `jasa`, `harga`, `total`, `pilihan`, `deskripsiRobot`) VALUES
('2022-04-26 14:40:47', '2022-04-26 14:40:47', 1, 'Angkut', '4C8CEE', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-04-26 14:40:47', '2022-04-26 14:40:47', 2, 'Angkut', '4C8CEE', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-04-26 14:40:47', '2022-04-26 14:40:47', 3, 'Angkut', '4C8CEE', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-04-26 14:40:47', '2022-04-26 14:40:47', 4, 'Angkut', '4C8CEE', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-04-26 14:50:00', '2022-04-26 14:50:00', 5, 'Angkut', '6FEC43', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-04-26 14:50:00', '2022-04-26 14:50:00', 6, 'Angkut', '6FEC43', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-04-26 14:50:00', '2022-04-26 14:50:00', 7, 'Angkut', '6FEC43', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-04-26 14:50:00', '2022-04-26 14:50:00', 8, 'Angkut', '6FEC43', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-04-26 14:50:25', '2022-04-26 14:50:25', 9, 'Angkut', 'CD9B9B', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-04-26 14:50:25', '2022-04-26 14:50:25', 10, 'Angkut', 'CD9B9B', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-04-26 14:50:25', '2022-04-26 14:50:25', 11, 'Angkut', 'CD9B9B', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-04-26 14:50:25', '2022-04-26 14:50:25', 12, 'Angkut', 'CD9B9B', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-04-26 14:58:35', '2022-04-26 14:58:35', 13, 'Angkut', 'D23BAD', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-04-26 14:58:35', '2022-04-26 14:58:35', 14, 'Angkut', 'D23BAD', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-04-26 14:58:35', '2022-04-26 14:58:35', 15, 'Angkut', 'D23BAD', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '45000000', '45000000', '50 Kg', NULL),
('2022-04-26 14:58:35', '2022-04-26 14:58:35', 16, 'Angkut', 'D23BAD', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-04-26 14:58:35', '2022-04-26 14:58:35', 17, 'Angkut', 'D23BAD', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-04-26 15:04:35', '2022-04-26 15:04:35', 18, 'Angkut', '50C58E', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-04-26 15:04:35', '2022-04-26 15:04:35', 19, 'Angkut', '50C58E', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-04-26 15:04:35', '2022-04-26 15:04:35', 20, 'Angkut', '50C58E', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '45000000', '45000000', '50 Kg', NULL),
('2022-04-26 15:04:35', '2022-04-26 15:04:35', 21, 'Angkut', '50C58E', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-04-26 15:04:35', '2022-04-26 15:04:35', 22, 'Angkut', '50C58E', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-04-26 15:04:51', '2022-04-26 15:04:51', 23, 'Angkut', 'B2B3A3', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-04-26 15:04:51', '2022-04-26 15:04:51', 24, 'Angkut', 'B2B3A3', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-04-26 15:04:51', '2022-04-26 15:04:51', 25, 'Angkut', 'B2B3A3', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '45000000', '45000000', '50 Kg', NULL),
('2022-04-26 15:04:51', '2022-04-26 15:04:51', 26, 'Angkut', 'B2B3A3', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-04-26 15:04:51', '2022-04-26 15:04:51', 27, 'Angkut', 'B2B3A3', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-11 03:33:15', '2022-05-11 03:33:15', 28, 'Angkut', 'F75B3A', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-11 03:33:15', '2022-05-11 03:33:15', 29, 'Angkut', 'F75B3A', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '45000000', '45000000', '50 Kg', NULL),
('2022-05-11 03:33:15', '2022-05-11 03:33:15', 30, 'Angkut', 'F75B3A', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-11 03:33:15', '2022-05-11 03:33:15', 31, 'Angkut', 'F75B3A', 'Wall Tracking', 'SRF', '1000000', '8000000', '8000000', 'Menggunakan', NULL),
('2022-05-11 03:33:40', '2022-05-11 03:33:40', 32, 'Angkut', '6C9697', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-11 03:33:40', '2022-05-11 03:33:40', 33, 'Angkut', '6C9697', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '45000000', '45000000', '50 Kg', NULL),
('2022-05-11 03:33:40', '2022-05-11 03:33:40', 34, 'Angkut', '6C9697', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-11 03:33:40', '2022-05-11 03:33:40', 35, 'Angkut', '6C9697', 'Wall Tracking', 'SRF', '1000000', '8000000', '8000000', 'Menggunakan', NULL),
('2022-05-11 03:47:25', '2022-05-11 03:47:25', 36, 'Angkut', 'A36DD1', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-11 03:47:25', '2022-05-11 03:47:25', 37, 'Angkut', 'A36DD1', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-11 03:47:25', '2022-05-11 03:47:25', 38, 'Angkut', 'A36DD1', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '45000000', '45000000', '50 Kg', NULL),
('2022-05-11 03:47:25', '2022-05-11 03:47:25', 39, 'Angkut', 'A36DD1', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-11 03:47:58', '2022-05-11 03:47:58', 40, 'Angkut', '7531BC', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-11 03:47:58', '2022-05-11 03:47:58', 41, 'Angkut', '7531BC', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '45000000', '45000000', '50 Kg', NULL),
('2022-05-11 03:47:58', '2022-05-11 03:47:58', 42, 'Angkut', '7531BC', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-11 03:47:58', '2022-05-11 03:47:58', 43, 'Angkut', '7531BC', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-11 03:47:58', '2022-05-11 03:47:58', 44, 'Angkut', '7531BC', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-11 03:47:58', '2022-05-11 03:47:58', 45, 'Angkut', '7531BC', 'Wall Tracking', 'SRF', '1000000', '8000000', '8000000', 'Menggunakan', NULL),
('2022-05-11 03:57:15', '2022-05-11 03:57:15', 46, 'Angkut', 'F9800D', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-11 03:57:15', '2022-05-11 03:57:15', 47, 'Angkut', 'F9800D', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-11 03:57:15', '2022-05-11 03:57:15', 48, 'Angkut', 'F9800D', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '45000000', '45000000', '50 Kg', NULL),
('2022-05-11 03:57:15', '2022-05-11 03:57:15', 49, 'Angkut', 'F9800D', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-11 03:58:13', '2022-05-11 03:58:13', 50, 'Angkut', '4EB13F', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-11 03:58:13', '2022-05-11 03:58:13', 51, 'Angkut', '4EB13F', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-11 03:58:13', '2022-05-11 03:58:13', 52, 'Angkut', '4EB13F', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '45000000', '45000000', '50 Kg', NULL),
('2022-05-11 03:58:13', '2022-05-11 03:58:13', 53, 'Angkut', '4EB13F', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-12 03:25:03', '2022-05-12 03:25:03', 54, 'Angkut', '4AD777', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 03:25:03', '2022-05-12 03:25:03', 55, 'Angkut', '4AD777', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 03:25:03', '2022-05-12 03:25:03', 56, 'Angkut', '4AD777', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '45000000', '45000000', '50 Kg', NULL),
('2022-05-12 03:25:03', '2022-05-12 03:25:03', 57, 'Angkut', '4AD777', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-12 03:30:00', '2022-05-12 03:30:00', 58, 'Angkut', 'AD642D', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 03:30:00', '2022-05-12 03:30:00', 59, 'Angkut', 'AD642D', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 03:30:00', '2022-05-12 03:30:00', 60, 'Angkut', 'AD642D', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '45000000', '45000000', '50 Kg', NULL),
('2022-05-12 03:30:00', '2022-05-12 03:30:00', 61, 'Angkut', 'AD642D', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-12 03:37:15', '2022-05-12 03:37:15', 62, 'Angkut', 'B9B693', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 03:37:15', '2022-05-12 03:37:15', 63, 'Angkut', 'B9B693', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 03:37:15', '2022-05-12 03:37:15', 64, 'Angkut', 'B9B693', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '45000000', '45000000', '50 Kg', NULL),
('2022-05-12 03:37:15', '2022-05-12 03:37:15', 65, 'Angkut', 'B9B693', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-12 03:38:46', '2022-05-12 03:38:46', 66, 'Angkut', '436997', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 03:38:46', '2022-05-12 03:38:46', 67, 'Angkut', '436997', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 03:38:46', '2022-05-12 03:38:46', 68, 'Angkut', '436997', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '75000000', '75000000', '200 Kg', NULL),
('2022-05-12 03:38:46', '2022-05-12 03:38:46', 69, 'Angkut', '436997', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-12 04:24:02', '2022-05-12 04:24:02', 70, 'Angkut', 'FAF653', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 04:24:02', '2022-05-12 04:24:02', 71, 'Angkut', 'FAF653', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 04:24:02', '2022-05-12 04:24:02', 72, 'Angkut', 'FAF653', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-12 04:24:02', '2022-05-12 04:24:02', 73, 'Angkut', 'FAF653', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-12 04:24:13', '2022-05-12 04:24:13', 74, 'Angkut', 'EDFAE7', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 04:24:13', '2022-05-12 04:24:13', 75, 'Angkut', 'EDFAE7', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 04:24:13', '2022-05-12 04:24:13', 76, 'Angkut', 'EDFAE7', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-12 04:24:13', '2022-05-12 04:24:13', 77, 'Angkut', 'EDFAE7', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-12 04:30:11', '2022-05-12 04:30:11', 78, 'Angkut', '003839', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 04:30:11', '2022-05-12 04:30:11', 79, 'Angkut', '003839', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 04:30:11', '2022-05-12 04:30:11', 80, 'Angkut', '003839', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-12 04:30:11', '2022-05-12 04:30:11', 81, 'Angkut', '003839', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-12 04:34:00', '2022-05-12 04:34:00', 82, 'Angkut', '3FE19C', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 04:34:00', '2022-05-12 04:34:00', 83, 'Angkut', '3FE19C', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 04:34:00', '2022-05-12 04:34:00', 84, 'Angkut', '3FE19C', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-12 04:34:00', '2022-05-12 04:34:00', 85, 'Angkut', '3FE19C', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-12 04:34:52', '2022-05-12 04:34:52', 86, 'Angkut', '912D81', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 04:34:52', '2022-05-12 04:34:52', 87, 'Angkut', '912D81', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 04:34:52', '2022-05-12 04:34:52', 88, 'Angkut', '912D81', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-12 04:34:52', '2022-05-12 04:34:52', 89, 'Angkut', '912D81', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-12 18:39:25', '2022-05-12 18:39:25', 90, 'Angkut', 'CC176B', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 18:39:25', '2022-05-12 18:39:25', 91, 'Angkut', 'CC176B', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-12 18:39:25', '2022-05-12 18:39:25', 92, 'Angkut', 'CC176B', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-12 18:39:25', '2022-05-12 18:39:25', 93, 'Angkut', 'CC176B', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-13 02:28:59', '2022-05-13 02:28:59', 94, 'Angkut', 'E7AF4A', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-13 02:28:59', '2022-05-13 02:28:59', 95, 'Angkut', 'E7AF4A', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-13 02:28:59', '2022-05-13 02:28:59', 96, 'Angkut', 'E7AF4A', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-13 02:28:59', '2022-05-13 02:28:59', 97, 'Angkut', 'E7AF4A', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 05:24:58', '2022-05-16 05:24:58', 98, 'Angkut', 'BAC067', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:24:58', '2022-05-16 05:24:58', 99, 'Angkut', 'BAC067', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:24:58', '2022-05-16 05:24:58', 100, 'Angkut', 'BAC067', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '75000000', '75000000', '200 Kg', NULL),
('2022-05-16 05:24:58', '2022-05-16 05:24:58', 101, 'Angkut', 'BAC067', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 05:27:37', '2022-05-16 05:27:37', 102, 'Angkut', '5A89DF', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:27:37', '2022-05-16 05:27:37', 103, 'Angkut', '5A89DF', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:27:37', '2022-05-16 05:27:37', 104, 'Angkut', '5A89DF', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '75000000', '75000000', '200 Kg', NULL),
('2022-05-16 05:27:37', '2022-05-16 05:27:37', 105, 'Angkut', '5A89DF', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 05:29:19', '2022-05-16 05:29:19', 106, 'Angkut', '7143E1', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:29:19', '2022-05-16 05:29:19', 107, 'Angkut', '7143E1', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:29:19', '2022-05-16 05:29:19', 108, 'Angkut', '7143E1', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '75000000', '75000000', '200 Kg', NULL),
('2022-05-16 05:29:19', '2022-05-16 05:29:19', 109, 'Angkut', '7143E1', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 05:30:31', '2022-05-16 05:30:31', 110, 'Angkut', '2D2A3D', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:30:31', '2022-05-16 05:30:31', 111, 'Angkut', '2D2A3D', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:30:31', '2022-05-16 05:30:31', 112, 'Angkut', '2D2A3D', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '75000000', '75000000', '200 Kg', NULL),
('2022-05-16 05:30:31', '2022-05-16 05:30:31', 113, 'Angkut', '2D2A3D', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 05:37:32', '2022-05-16 05:37:32', 114, 'Angkut', 'E456F5', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:37:32', '2022-05-16 05:37:32', 115, 'Angkut', 'E456F5', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:37:32', '2022-05-16 05:37:32', 116, 'Angkut', 'E456F5', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '75000000', '75000000', '200 Kg', NULL),
('2022-05-16 05:37:32', '2022-05-16 05:37:32', 117, 'Angkut', 'E456F5', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 05:38:40', '2022-05-16 05:38:40', 118, 'Angkut', 'A22582', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:38:40', '2022-05-16 05:38:40', 119, 'Angkut', 'A22582', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:38:40', '2022-05-16 05:38:40', 120, 'Angkut', 'A22582', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 05:38:40', '2022-05-16 05:38:40', 121, 'Angkut', 'A22582', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 05:41:36', '2022-05-16 05:41:36', 122, 'Angkut', '5DE58B', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:41:36', '2022-05-16 05:41:36', 123, 'Angkut', '5DE58B', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:41:36', '2022-05-16 05:41:36', 124, 'Angkut', '5DE58B', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 05:41:36', '2022-05-16 05:41:36', 125, 'Angkut', '5DE58B', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 05:41:36', '2022-05-16 05:41:36', 126, 'Angkut', '5DE58B', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 05:41:36', '2022-05-16 05:41:36', 127, 'Angkut', '5DE58B', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 05:44:29', '2022-05-16 05:44:29', 128, 'Angkut', '8BE5C7', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:44:29', '2022-05-16 05:44:29', 129, 'Angkut', '8BE5C7', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:44:29', '2022-05-16 05:44:29', 130, 'Angkut', '8BE5C7', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 05:44:29', '2022-05-16 05:44:29', 131, 'Angkut', '8BE5C7', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 05:44:29', '2022-05-16 05:44:29', 132, 'Angkut', '8BE5C7', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 05:44:29', '2022-05-16 05:44:29', 133, 'Angkut', '8BE5C7', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 05:44:48', '2022-05-16 05:44:48', 134, 'Angkut', 'E97715', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:44:48', '2022-05-16 05:44:48', 135, 'Angkut', 'E97715', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:44:48', '2022-05-16 05:44:48', 136, 'Angkut', 'E97715', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 05:44:48', '2022-05-16 05:44:48', 137, 'Angkut', 'E97715', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 05:44:48', '2022-05-16 05:44:48', 138, 'Angkut', 'E97715', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 05:44:48', '2022-05-16 05:44:48', 139, 'Angkut', 'E97715', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 05:47:45', '2022-05-16 05:47:45', 140, 'Angkut', 'BCF70A', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:47:45', '2022-05-16 05:47:45', 141, 'Angkut', 'BCF70A', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:47:45', '2022-05-16 05:47:45', 142, 'Angkut', 'BCF70A', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 05:47:45', '2022-05-16 05:47:45', 143, 'Angkut', 'BCF70A', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 05:47:45', '2022-05-16 05:47:45', 144, 'Angkut', 'BCF70A', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 05:47:45', '2022-05-16 05:47:45', 145, 'Angkut', 'BCF70A', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 05:55:34', '2022-05-16 05:55:34', 146, 'Angkut', 'B4D3FB', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:55:34', '2022-05-16 05:55:34', 147, 'Angkut', 'B4D3FB', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:55:34', '2022-05-16 05:55:34', 148, 'Angkut', 'B4D3FB', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 05:55:34', '2022-05-16 05:55:34', 149, 'Angkut', 'B4D3FB', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 05:55:34', '2022-05-16 05:55:34', 150, 'Angkut', 'B4D3FB', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 05:55:34', '2022-05-16 05:55:34', 151, 'Angkut', 'B4D3FB', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 05:56:09', '2022-05-16 05:56:09', 152, 'Angkut', 'CA39A2', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:56:09', '2022-05-16 05:56:09', 153, 'Angkut', 'CA39A2', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:56:09', '2022-05-16 05:56:09', 154, 'Angkut', 'CA39A2', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 05:56:09', '2022-05-16 05:56:09', 155, 'Angkut', 'CA39A2', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 05:56:09', '2022-05-16 05:56:09', 156, 'Angkut', 'CA39A2', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 05:56:09', '2022-05-16 05:56:09', 157, 'Angkut', 'CA39A2', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 05:56:53', '2022-05-16 05:56:53', 158, 'Angkut', '2600CC', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:56:53', '2022-05-16 05:56:53', 159, 'Angkut', '2600CC', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:56:53', '2022-05-16 05:56:53', 160, 'Angkut', '2600CC', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 05:56:53', '2022-05-16 05:56:53', 161, 'Angkut', '2600CC', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 05:56:53', '2022-05-16 05:56:53', 162, 'Angkut', '2600CC', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 05:56:53', '2022-05-16 05:56:53', 163, 'Angkut', '2600CC', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 05:57:20', '2022-05-16 05:57:20', 164, 'Angkut', 'B7F79B', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:57:20', '2022-05-16 05:57:20', 165, 'Angkut', 'B7F79B', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:57:20', '2022-05-16 05:57:20', 166, 'Angkut', 'B7F79B', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 05:57:20', '2022-05-16 05:57:20', 167, 'Angkut', 'B7F79B', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 05:57:20', '2022-05-16 05:57:20', 168, 'Angkut', 'B7F79B', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 05:57:20', '2022-05-16 05:57:20', 169, 'Angkut', 'B7F79B', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 05:57:57', '2022-05-16 05:57:57', 170, 'Angkut', 'C1737E', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:57:57', '2022-05-16 05:57:57', 171, 'Angkut', 'C1737E', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:57:57', '2022-05-16 05:57:57', 172, 'Angkut', 'C1737E', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 05:57:57', '2022-05-16 05:57:57', 173, 'Angkut', 'C1737E', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 05:57:57', '2022-05-16 05:57:57', 174, 'Angkut', 'C1737E', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 05:57:57', '2022-05-16 05:57:57', 175, 'Angkut', 'C1737E', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 05:58:34', '2022-05-16 05:58:34', 176, 'Angkut', '7A6D6B', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:58:34', '2022-05-16 05:58:34', 177, 'Angkut', '7A6D6B', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:58:34', '2022-05-16 05:58:34', 178, 'Angkut', '7A6D6B', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 05:58:34', '2022-05-16 05:58:34', 179, 'Angkut', '7A6D6B', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 05:58:34', '2022-05-16 05:58:34', 180, 'Angkut', '7A6D6B', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 05:58:34', '2022-05-16 05:58:34', 181, 'Angkut', '7A6D6B', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 05:59:01', '2022-05-16 05:59:01', 182, 'Angkut', '145E74', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:59:01', '2022-05-16 05:59:01', 183, 'Angkut', '145E74', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:59:01', '2022-05-16 05:59:01', 184, 'Angkut', '145E74', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 05:59:01', '2022-05-16 05:59:01', 185, 'Angkut', '145E74', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 05:59:01', '2022-05-16 05:59:01', 186, 'Angkut', '145E74', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 05:59:01', '2022-05-16 05:59:01', 187, 'Angkut', '145E74', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 05:59:38', '2022-05-16 05:59:38', 188, 'Angkut', '962AB9', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:59:38', '2022-05-16 05:59:38', 189, 'Angkut', '962AB9', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 05:59:38', '2022-05-16 05:59:38', 190, 'Angkut', '962AB9', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 05:59:38', '2022-05-16 05:59:38', 191, 'Angkut', '962AB9', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 05:59:38', '2022-05-16 05:59:38', 192, 'Angkut', '962AB9', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 05:59:38', '2022-05-16 05:59:38', 193, 'Angkut', '962AB9', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:00:11', '2022-05-16 06:00:11', 194, 'Angkut', '108DE7', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:00:11', '2022-05-16 06:00:11', 195, 'Angkut', '108DE7', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:00:11', '2022-05-16 06:00:11', 196, 'Angkut', '108DE7', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:00:11', '2022-05-16 06:00:11', 197, 'Angkut', '108DE7', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 06:00:11', '2022-05-16 06:00:11', 198, 'Angkut', '108DE7', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 06:00:11', '2022-05-16 06:00:11', 199, 'Angkut', '108DE7', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:00:28', '2022-05-16 06:00:28', 200, 'Angkut', '51A7D9', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:00:28', '2022-05-16 06:00:28', 201, 'Angkut', '51A7D9', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:00:28', '2022-05-16 06:00:28', 202, 'Angkut', '51A7D9', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:00:28', '2022-05-16 06:00:28', 203, 'Angkut', '51A7D9', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 06:00:28', '2022-05-16 06:00:28', 204, 'Angkut', '51A7D9', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 06:00:28', '2022-05-16 06:00:28', 205, 'Angkut', '51A7D9', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:08:55', '2022-05-16 06:08:55', 206, 'Angkut', '42393D', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:08:55', '2022-05-16 06:08:55', 207, 'Angkut', '42393D', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:08:55', '2022-05-16 06:08:55', 208, 'Angkut', '42393D', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:08:55', '2022-05-16 06:08:55', 209, 'Angkut', '42393D', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 06:08:55', '2022-05-16 06:08:55', 210, 'Angkut', '42393D', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 06:08:55', '2022-05-16 06:08:55', 211, 'Angkut', '42393D', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:09:21', '2022-05-16 06:09:21', 212, 'Angkut', 'F430BD', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:09:21', '2022-05-16 06:09:21', 213, 'Angkut', 'F430BD', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:09:21', '2022-05-16 06:09:21', 214, 'Angkut', 'F430BD', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:09:21', '2022-05-16 06:09:21', 215, 'Angkut', 'F430BD', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 06:09:21', '2022-05-16 06:09:21', 216, 'Angkut', 'F430BD', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 06:09:21', '2022-05-16 06:09:21', 217, 'Angkut', 'F430BD', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:09:42', '2022-05-16 06:09:42', 218, 'Angkut', '87E829', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:09:42', '2022-05-16 06:09:42', 219, 'Angkut', '87E829', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:09:42', '2022-05-16 06:09:42', 220, 'Angkut', '87E829', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:09:42', '2022-05-16 06:09:42', 221, 'Angkut', '87E829', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 06:09:42', '2022-05-16 06:09:42', 222, 'Angkut', '87E829', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 06:09:42', '2022-05-16 06:09:42', 223, 'Angkut', '87E829', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:09:55', '2022-05-16 06:09:55', 224, 'Angkut', '0E1998', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:09:55', '2022-05-16 06:09:55', 225, 'Angkut', '0E1998', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:09:55', '2022-05-16 06:09:55', 226, 'Angkut', '0E1998', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:09:55', '2022-05-16 06:09:55', 227, 'Angkut', '0E1998', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 06:09:55', '2022-05-16 06:09:55', 228, 'Angkut', '0E1998', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 06:09:55', '2022-05-16 06:09:55', 229, 'Angkut', '0E1998', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:10:25', '2022-05-16 06:10:25', 230, 'Angkut', 'F4CAC8', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:10:25', '2022-05-16 06:10:25', 231, 'Angkut', 'F4CAC8', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:10:25', '2022-05-16 06:10:25', 232, 'Angkut', 'F4CAC8', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:10:25', '2022-05-16 06:10:25', 233, 'Angkut', 'F4CAC8', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-16 06:10:25', '2022-05-16 06:10:25', 234, 'Angkut', 'F4CAC8', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-05-16 06:10:25', '2022-05-16 06:10:25', 235, 'Angkut', 'F4CAC8', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:17:12', '2022-05-16 06:17:12', 236, 'Angkut', '18D686', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:17:12', '2022-05-16 06:17:12', 237, 'Angkut', '18D686', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '75000000', '75000000', '200 Kg', NULL),
('2022-05-16 06:17:12', '2022-05-16 06:17:12', 238, 'Angkut', '18D686', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:17:12', '2022-05-16 06:17:12', 239, 'Angkut', '18D686', 'Wall Tracking', 'SRF', '1000000', '8000000', '8000000', 'Menggunakan', NULL),
('2022-05-16 06:17:43', '2022-05-16 06:17:43', 240, 'Angkut', 'C78CA1', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:17:43', '2022-05-16 06:17:43', 241, 'Angkut', 'C78CA1', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '75000000', '75000000', '200 Kg', NULL),
('2022-05-16 06:17:43', '2022-05-16 06:17:43', 242, 'Angkut', 'C78CA1', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:17:43', '2022-05-16 06:17:43', 243, 'Angkut', 'C78CA1', 'Wall Tracking', 'SRF', '1000000', '8000000', '8000000', 'Menggunakan', NULL),
('2022-05-16 06:18:23', '2022-05-16 06:18:23', 244, 'Angkut', 'DC7D5F', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:18:23', '2022-05-16 06:18:23', 245, 'Angkut', 'DC7D5F', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '75000000', '75000000', '200 Kg', NULL),
('2022-05-16 06:18:23', '2022-05-16 06:18:23', 246, 'Angkut', 'DC7D5F', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:18:23', '2022-05-16 06:18:23', 247, 'Angkut', 'DC7D5F', 'Wall Tracking', 'SRF', '1000000', '8000000', '8000000', 'Menggunakan', NULL),
('2022-05-16 06:20:10', '2022-05-16 06:20:10', 248, 'Angkut', 'A34757', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:20:10', '2022-05-16 06:20:10', 249, 'Angkut', 'A34757', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '75000000', '75000000', '200 Kg', NULL),
('2022-05-16 06:20:10', '2022-05-16 06:20:10', 250, 'Angkut', 'A34757', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:20:10', '2022-05-16 06:20:10', 251, 'Angkut', 'A34757', 'Wall Tracking', 'SRF', '1000000', '8000000', '8000000', 'Menggunakan', NULL),
('2022-05-16 06:20:37', '2022-05-16 06:20:37', 252, 'Angkut', '34DF57', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:20:37', '2022-05-16 06:20:37', 253, 'Angkut', '34DF57', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '75000000', '75000000', '200 Kg', NULL),
('2022-05-16 06:20:37', '2022-05-16 06:20:37', 254, 'Angkut', '34DF57', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:20:37', '2022-05-16 06:20:37', 255, 'Angkut', '34DF57', 'Wall Tracking', 'SRF', '1000000', '8000000', '8000000', 'Menggunakan', NULL),
('2022-05-16 06:21:20', '2022-05-16 06:21:20', 256, 'Angkut', '7C4E61', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:21:20', '2022-05-16 06:21:20', 257, 'Angkut', '7C4E61', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '75000000', '75000000', '200 Kg', NULL),
('2022-05-16 06:21:20', '2022-05-16 06:21:20', 258, 'Angkut', '7C4E61', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:21:20', '2022-05-16 06:21:20', 259, 'Angkut', '7C4E61', 'Wall Tracking', 'SRF', '1000000', '8000000', '8000000', 'Menggunakan', NULL),
('2022-05-16 06:21:36', '2022-05-16 06:21:36', 260, 'Angkut', '3588E5', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:21:36', '2022-05-16 06:21:36', 261, 'Angkut', '3588E5', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '75000000', '75000000', '200 Kg', NULL),
('2022-05-16 06:21:36', '2022-05-16 06:21:36', 262, 'Angkut', '3588E5', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:21:36', '2022-05-16 06:21:36', 263, 'Angkut', '3588E5', 'Wall Tracking', 'SRF', '1000000', '8000000', '8000000', 'Menggunakan', NULL),
('2022-05-16 06:22:29', '2022-05-16 06:22:29', 264, 'Angkut', '1D8CD4', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:22:29', '2022-05-16 06:22:29', 265, 'Angkut', '1D8CD4', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '75000000', '75000000', '200 Kg', NULL),
('2022-05-16 06:22:29', '2022-05-16 06:22:29', 266, 'Angkut', '1D8CD4', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:22:29', '2022-05-16 06:22:29', 267, 'Angkut', '1D8CD4', 'Wall Tracking', 'SRF', '1000000', '8000000', '8000000', 'Menggunakan', NULL),
('2022-05-16 06:23:05', '2022-05-16 06:23:05', 268, 'Angkut', '119A84', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:23:05', '2022-05-16 06:23:05', 269, 'Angkut', '119A84', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:23:05', '2022-05-16 06:23:05', 270, 'Angkut', '119A84', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:23:05', '2022-05-16 06:23:05', 271, 'Angkut', '119A84', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:23:47', '2022-05-16 06:23:47', 272, 'Angkut', 'FCCFCC', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:23:47', '2022-05-16 06:23:47', 273, 'Angkut', 'FCCFCC', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:23:47', '2022-05-16 06:23:47', 274, 'Angkut', 'FCCFCC', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:23:47', '2022-05-16 06:23:47', 275, 'Angkut', 'FCCFCC', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:24:10', '2022-05-16 06:24:10', 276, 'Angkut', 'E44E98', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:24:10', '2022-05-16 06:24:10', 277, 'Angkut', 'E44E98', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:24:10', '2022-05-16 06:24:10', 278, 'Angkut', 'E44E98', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:24:10', '2022-05-16 06:24:10', 279, 'Angkut', 'E44E98', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:25:00', '2022-05-16 06:25:00', 280, 'Angkut', '8285B7', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:25:00', '2022-05-16 06:25:00', 281, 'Angkut', '8285B7', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:25:00', '2022-05-16 06:25:00', 282, 'Angkut', '8285B7', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:25:00', '2022-05-16 06:25:00', 283, 'Angkut', '8285B7', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:26:45', '2022-05-16 06:26:45', 284, 'Angkut', '9A53EB', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:26:45', '2022-05-16 06:26:45', 285, 'Angkut', '9A53EB', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:26:45', '2022-05-16 06:26:45', 286, 'Angkut', '9A53EB', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:26:45', '2022-05-16 06:26:45', 287, 'Angkut', '9A53EB', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:27:27', '2022-05-16 06:27:27', 288, 'Angkut', 'B69750', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:27:27', '2022-05-16 06:27:27', 289, 'Angkut', 'B69750', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:27:27', '2022-05-16 06:27:27', 290, 'Angkut', 'B69750', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:27:27', '2022-05-16 06:27:27', 291, 'Angkut', 'B69750', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:28:09', '2022-05-16 06:28:09', 292, 'Angkut', '96FB1D', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:28:09', '2022-05-16 06:28:09', 293, 'Angkut', '96FB1D', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:28:09', '2022-05-16 06:28:09', 294, 'Angkut', '96FB1D', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:28:09', '2022-05-16 06:28:09', 295, 'Angkut', '96FB1D', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:29:07', '2022-05-16 06:29:07', 296, 'Angkut', 'F0A583', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:29:07', '2022-05-16 06:29:07', 297, 'Angkut', 'F0A583', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:29:07', '2022-05-16 06:29:07', 298, 'Angkut', 'F0A583', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:29:07', '2022-05-16 06:29:07', 299, 'Angkut', 'F0A583', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:29:34', '2022-05-16 06:29:34', 300, 'Angkut', '4099AF', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:29:34', '2022-05-16 06:29:34', 301, 'Angkut', '4099AF', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:29:34', '2022-05-16 06:29:34', 302, 'Angkut', '4099AF', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:29:34', '2022-05-16 06:29:34', 303, 'Angkut', '4099AF', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:30:12', '2022-05-16 06:30:12', 304, 'Angkut', 'C288EF', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:30:12', '2022-05-16 06:30:12', 305, 'Angkut', 'C288EF', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:30:12', '2022-05-16 06:30:12', 306, 'Angkut', 'C288EF', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:30:12', '2022-05-16 06:30:12', 307, 'Angkut', 'C288EF', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:30:46', '2022-05-16 06:30:46', 308, 'Angkut', '50D2B1', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:30:46', '2022-05-16 06:30:46', 309, 'Angkut', '50D2B1', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:30:46', '2022-05-16 06:30:46', 310, 'Angkut', '50D2B1', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:30:46', '2022-05-16 06:30:46', 311, 'Angkut', '50D2B1', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:31:17', '2022-05-16 06:31:17', 312, 'Angkut', '928DEA', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:31:17', '2022-05-16 06:31:17', 313, 'Angkut', '928DEA', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:31:17', '2022-05-16 06:31:17', 314, 'Angkut', '928DEA', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:31:17', '2022-05-16 06:31:17', 315, 'Angkut', '928DEA', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:33:24', '2022-05-16 06:33:24', 316, 'Angkut', '371A0D', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:33:24', '2022-05-16 06:33:24', 317, 'Angkut', '371A0D', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:33:24', '2022-05-16 06:33:24', 318, 'Angkut', '371A0D', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:33:24', '2022-05-16 06:33:24', 319, 'Angkut', '371A0D', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL);
INSERT INTO `robot_order` (`create_time`, `update_time`, `id`, `robot`, `kode_invoice`, `penawaran`, `komponen`, `jasa`, `harga`, `total`, `pilihan`, `deskripsiRobot`) VALUES
('2022-05-16 06:34:17', '2022-05-16 06:34:17', 320, 'Angkut', '76D74F', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:34:17', '2022-05-16 06:34:17', 321, 'Angkut', '76D74F', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:34:17', '2022-05-16 06:34:17', 322, 'Angkut', '76D74F', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:34:17', '2022-05-16 06:34:17', 323, 'Angkut', '76D74F', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:35:13', '2022-05-16 06:35:13', 324, 'Angkut', '1DEDD0', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:35:13', '2022-05-16 06:35:13', 325, 'Angkut', '1DEDD0', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:35:13', '2022-05-16 06:35:13', 326, 'Angkut', '1DEDD0', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:35:13', '2022-05-16 06:35:13', 327, 'Angkut', '1DEDD0', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:35:39', '2022-05-16 06:35:39', 328, 'Angkut', 'B486C3', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:35:39', '2022-05-16 06:35:39', 329, 'Angkut', 'B486C3', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:35:39', '2022-05-16 06:35:39', 330, 'Angkut', 'B486C3', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:35:39', '2022-05-16 06:35:39', 331, 'Angkut', 'B486C3', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:36:20', '2022-05-16 06:36:20', 332, 'Angkut', 'C920AE', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:36:20', '2022-05-16 06:36:20', 333, 'Angkut', 'C920AE', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:36:20', '2022-05-16 06:36:20', 334, 'Angkut', 'C920AE', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:36:20', '2022-05-16 06:36:20', 335, 'Angkut', 'C920AE', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:36:42', '2022-05-16 06:36:42', 336, 'Angkut', '022ADA', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:36:42', '2022-05-16 06:36:42', 337, 'Angkut', '022ADA', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:36:42', '2022-05-16 06:36:42', 338, 'Angkut', '022ADA', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:36:42', '2022-05-16 06:36:42', 339, 'Angkut', '022ADA', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:37:25', '2022-05-16 06:37:25', 340, 'Angkut', 'B1EF0D', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:37:25', '2022-05-16 06:37:25', 341, 'Angkut', 'B1EF0D', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:37:25', '2022-05-16 06:37:25', 342, 'Angkut', 'B1EF0D', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:37:25', '2022-05-16 06:37:25', 343, 'Angkut', 'B1EF0D', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-16 06:39:49', '2022-05-16 06:39:49', 344, 'Angkut', '5235C8', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-16 06:39:49', '2022-05-16 06:39:49', 345, 'Angkut', '5235C8', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '60000000', '60000000', '100 Kg', NULL),
('2022-05-16 06:39:49', '2022-05-16 06:39:49', 346, 'Angkut', '5235C8', 'Remote Acces', 'Infrared', '200000', '200000', '200000', 'Menggunakan', NULL),
('2022-05-16 06:39:49', '2022-05-16 06:39:49', 347, 'Angkut', '5235C8', 'Line Tracking', 'Line Sensor', '1000000', '400000', '400000', 'Menggunakan', NULL),
('2022-05-24 17:59:43', '2022-05-24 17:59:43', 348, 'Angkut', '594563', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-05-24 17:59:43', '2022-05-24 17:59:43', 349, 'Angkut', '594563', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '90000000', '90000000', '350 Kg', NULL),
('2022-05-24 17:59:43', '2022-05-24 17:59:43', 350, 'Angkut', '594563', 'Web Based', 'ESP 32 internet acces', '5000000', '500000', '500000', 'Menggunakan', NULL),
('2022-05-24 17:59:43', '2022-05-24 17:59:43', 351, 'Angkut', '594563', 'Bluetooth Acces', 'HC 05', '200000', '250000', '250000', 'Menggunakan', NULL),
('2022-10-24 15:52:04', '2022-10-24 15:52:04', 352, 'Angkut', 'BC02BA', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-10-24 15:52:04', '2022-10-24 15:52:04', 353, 'Angkut', 'BC02BA', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-10-24 15:52:04', '2022-10-24 15:52:04', 354, 'Angkut', 'BC02BA', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '90000000', '90000000', '350 Kg', NULL),
('2022-11-03 03:37:34', '2022-11-03 03:37:34', 355, 'Angkut', 'D767E0', 'Database', 'ESP 32', '500000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-11-03 03:37:34', '2022-11-03 03:37:34', 356, 'Angkut', 'D767E0', 'Mobile Based', 'HC 05', '250000', '5000000', '5000000', 'Menggunakan', NULL),
('2022-11-03 03:37:34', '2022-11-03 03:37:34', 357, 'Angkut', 'D767E0', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '45000000', '45000000', '50 Kg', NULL),
('2022-11-04 06:34:47', '2022-11-04 06:34:47', 358, 'Angkut', '118FF0', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '90000000', '90000000', '350 Kg', NULL),
('2022-11-04 06:34:48', '2022-11-04 06:34:48', 359, 'Angkut', '26E0D3', 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '15000000', '90000000', '90000000', '350 Kg', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `robot_ordertotal`
--

CREATE TABLE `robot_ordertotal` (
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL,
  `kode_invoice` varchar(45) DEFAULT NULL,
  `sub` varchar(45) DEFAULT NULL,
  `ppn` varchar(45) DEFAULT NULL,
  `tot` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `robot_ordertotal`
--

INSERT INTO `robot_ordertotal` (`create_time`, `update_time`, `id`, `kode_invoice`, `sub`, `ppn`, `tot`) VALUES
('2022-04-26 14:40:47', '2022-04-26 14:40:47', 1, '4C8CEE', '10750000', '11%', '11825000'),
('2022-04-26 14:50:00', '2022-04-26 14:50:00', 2, '6FEC43', '10750000', '11%', '11825000'),
('2022-04-26 14:50:25', '2022-04-26 14:50:25', 3, 'CD9B9B', '10750000', '11%', '11825000'),
('2022-04-26 14:58:35', '2022-04-26 14:58:35', 4, 'D23BAD', '55750000', '11%', '61325000'),
('2022-04-26 15:04:35', '2022-04-26 15:04:35', 5, '50C58E', '55750000', '11%', '61325000'),
('2022-04-26 15:04:51', '2022-04-26 15:04:51', 6, 'B2B3A3', '55700000', '11%', '61270000'),
('2022-05-11 03:33:15', '2022-05-11 03:33:15', 7, 'F75B3A', '58500000', '11%', '64350000'),
('2022-05-11 03:33:40', '2022-05-11 03:33:40', 8, '6C9697', '58500000', '11%', '64350000'),
('2022-05-11 03:47:25', '2022-05-11 03:47:25', 9, 'A36DD1', '55500000', '11%', '61050000'),
('2022-05-11 03:47:58', '2022-05-11 03:47:58', 10, '7531BC', '59100000', '11%', '65010000'),
('2022-05-11 03:57:15', '2022-05-11 03:57:15', 11, 'F9800D', '55500000', '11%', '61050000'),
('2022-05-11 03:58:13', '2022-05-11 03:58:13', 12, '4EB13F', '55500000', '11%', '61050000'),
('2022-05-12 03:25:03', '2022-05-12 03:25:03', 13, '4AD777', '55500000', '11%', '61050000'),
('2022-05-12 03:30:00', '2022-05-12 03:30:00', 14, 'AD642D', '55500000', '11%', '61050000'),
('2022-05-12 03:37:15', '2022-05-12 03:37:15', 15, 'B9B693', '55500000', '11%', '61050000'),
('2022-05-12 03:38:46', '2022-05-12 03:38:46', 16, '436997', '85500000', '11%', '94050000'),
('2022-05-12 04:24:02', '2022-05-12 04:24:02', 17, 'FAF653', '70500000', '11%', '77550000'),
('2022-05-12 04:24:13', '2022-05-12 04:24:13', 18, 'EDFAE7', '70500000', '11%', '77550000'),
('2022-05-12 04:30:11', '2022-05-12 04:30:11', 19, '003839', '70500000', '11%', '77550000'),
('2022-05-12 04:34:00', '2022-05-12 04:34:00', 20, '3FE19C', '70500000', '11%', '77550000'),
('2022-05-12 04:34:52', '2022-05-12 04:34:52', 21, '912D81', '70500000', '11%', '77550000'),
('2022-05-12 18:39:25', '2022-05-12 18:39:25', 22, 'CC176B', '70500000', '11%', '77550000'),
('2022-05-13 02:28:59', '2022-05-13 02:28:59', 23, 'E7AF4A', '70250000', '11%', '77275000'),
('2022-05-16 05:24:58', '2022-05-16 05:24:58', 24, 'BAC067', '85500000', '11%', '94050000'),
('2022-05-16 05:27:37', '2022-05-16 05:27:37', 25, '5A89DF', '85500000', '11%', '94050000'),
('2022-05-16 05:29:19', '2022-05-16 05:29:19', 26, '7143E1', '85500000', '11%', '94050000'),
('2022-05-16 05:30:31', '2022-05-16 05:30:31', 27, '2D2A3D', '85500000', '11%', '94050000'),
('2022-05-16 05:37:32', '2022-05-16 05:37:32', 28, 'E456F5', '85500000', '11%', '94050000'),
('2022-05-16 05:38:40', '2022-05-16 05:38:40', 29, 'A22582', '70500000', '11%', '77550000'),
('2022-05-16 05:41:36', '2022-05-16 05:41:36', 30, '5DE58B', '70950000', '11%', '78045000'),
('2022-05-16 05:44:29', '2022-05-16 05:44:29', 31, '8BE5C7', '70950000', '11%', '78045000'),
('2022-05-16 05:44:48', '2022-05-16 05:44:48', 32, 'E97715', '70950000', '11%', '78045000'),
('2022-05-16 05:47:45', '2022-05-16 05:47:45', 33, 'BCF70A', '70950000', '11%', '78045000'),
('2022-05-16 05:55:34', '2022-05-16 05:55:34', 34, 'B4D3FB', '70950000', '11%', '78045000'),
('2022-05-16 05:56:09', '2022-05-16 05:56:09', 35, 'CA39A2', '70950000', '11%', '78045000'),
('2022-05-16 05:56:53', '2022-05-16 05:56:53', 36, '2600CC', '70950000', '11%', '78045000'),
('2022-05-16 05:57:20', '2022-05-16 05:57:20', 37, 'B7F79B', '70950000', '11%', '78045000'),
('2022-05-16 05:57:57', '2022-05-16 05:57:57', 38, 'C1737E', '70950000', '11%', '78045000'),
('2022-05-16 05:58:34', '2022-05-16 05:58:34', 39, '7A6D6B', '70950000', '11%', '78045000'),
('2022-05-16 05:59:01', '2022-05-16 05:59:01', 40, '145E74', '70950000', '11%', '78045000'),
('2022-05-16 05:59:38', '2022-05-16 05:59:38', 41, '962AB9', '70950000', '11%', '78045000'),
('2022-05-16 06:00:11', '2022-05-16 06:00:11', 42, '108DE7', '70950000', '11%', '78045000'),
('2022-05-16 06:00:28', '2022-05-16 06:00:28', 43, '51A7D9', '70950000', '11%', '78045000'),
('2022-05-16 06:08:55', '2022-05-16 06:08:55', 44, '42393D', '70950000', '11%', '78045000'),
('2022-05-16 06:09:21', '2022-05-16 06:09:21', 45, 'F430BD', '70950000', '11%', '78045000'),
('2022-05-16 06:09:42', '2022-05-16 06:09:42', 46, '87E829', '70950000', '11%', '78045000'),
('2022-05-16 06:09:55', '2022-05-16 06:09:55', 47, '0E1998', '70950000', '11%', '78045000'),
('2022-05-16 06:10:25', '2022-05-16 06:10:25', 48, 'F4CAC8', '70950000', '11%', '78045000'),
('2022-05-16 06:17:12', '2022-05-16 06:17:12', 49, '18D686', '88400000', '11%', '97240000'),
('2022-05-16 06:17:43', '2022-05-16 06:17:43', 50, 'C78CA1', '88400000', '11%', '97240000'),
('2022-05-16 06:18:23', '2022-05-16 06:18:23', 51, 'DC7D5F', '88400000', '11%', '97240000'),
('2022-05-16 06:20:10', '2022-05-16 06:20:10', 52, 'A34757', '88400000', '11%', '97240000'),
('2022-05-16 06:20:37', '2022-05-16 06:20:37', 53, '34DF57', '88400000', '11%', '97240000'),
('2022-05-16 06:21:20', '2022-05-16 06:21:20', 54, '7C4E61', '88400000', '11%', '97240000'),
('2022-05-16 06:21:36', '2022-05-16 06:21:36', 55, '3588E5', '88400000', '11%', '97240000'),
('2022-05-16 06:22:29', '2022-05-16 06:22:29', 56, '1D8CD4', '88400000', '11%', '97240000'),
('2022-05-16 06:23:05', '2022-05-16 06:23:05', 57, '119A84', '65600000', '11%', '72160000'),
('2022-05-16 06:23:47', '2022-05-16 06:23:47', 58, 'FCCFCC', '65600000', '11%', '72160000'),
('2022-05-16 06:24:10', '2022-05-16 06:24:10', 59, 'E44E98', '65600000', '11%', '72160000'),
('2022-05-16 06:25:00', '2022-05-16 06:25:00', 60, '8285B7', '65600000', '11%', '72160000'),
('2022-05-16 06:26:45', '2022-05-16 06:26:45', 61, '9A53EB', '65600000', '11%', '72160000'),
('2022-05-16 06:27:27', '2022-05-16 06:27:27', 62, 'B69750', '65600000', '11%', '72160000'),
('2022-05-16 06:28:09', '2022-05-16 06:28:09', 63, '96FB1D', '65600000', '11%', '72160000'),
('2022-05-16 06:29:08', '2022-05-16 06:29:08', 64, 'F0A583', '65600000', '11%', '72160000'),
('2022-05-16 06:29:34', '2022-05-16 06:29:34', 65, '4099AF', '65600000', '11%', '72160000'),
('2022-05-16 06:30:12', '2022-05-16 06:30:12', 66, 'C288EF', '65600000', '11%', '72160000'),
('2022-05-16 06:30:46', '2022-05-16 06:30:46', 67, '50D2B1', '65600000', '11%', '72160000'),
('2022-05-16 06:31:17', '2022-05-16 06:31:17', 68, '928DEA', '65600000', '11%', '72160000'),
('2022-05-16 06:33:24', '2022-05-16 06:33:24', 69, '371A0D', '65600000', '11%', '72160000'),
('2022-05-16 06:34:17', '2022-05-16 06:34:17', 70, '76D74F', '65600000', '11%', '72160000'),
('2022-05-16 06:35:13', '2022-05-16 06:35:13', 71, '1DEDD0', '65600000', '11%', '72160000'),
('2022-05-16 06:35:39', '2022-05-16 06:35:39', 72, 'B486C3', '65600000', '11%', '72160000'),
('2022-05-16 06:36:20', '2022-05-16 06:36:20', 73, 'C920AE', '65600000', '11%', '72160000'),
('2022-05-16 06:36:42', '2022-05-16 06:36:42', 74, '022ADA', '65600000', '11%', '72160000'),
('2022-05-16 06:37:25', '2022-05-16 06:37:25', 75, 'B1EF0D', '65600000', '11%', '72160000'),
('2022-05-16 06:39:49', '2022-05-16 06:39:49', 76, '5235C8', '65600000', '11%', '72160000'),
('2022-05-24 17:59:43', '2022-05-24 17:59:43', 77, '594563', '95750000', '11%', '105325000'),
('2022-10-24 15:52:04', '2022-10-24 15:52:04', 78, 'BC02BA', '100000000', '11%', '110000000'),
('2022-11-03 03:37:34', '2022-11-03 03:37:34', 79, 'D767E0', '55000000', '11%', '60500000'),
('2022-11-04 06:34:47', '2022-11-04 06:34:47', 80, '118FF0', '90000000', '11%', '99000000'),
('2022-11-04 06:34:48', '2022-11-04 06:34:48', 81, '26E0D3', '90000000', '11%', '99000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `robot_penawaran`
--

CREATE TABLE `robot_penawaran` (
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL,
  `idRMaster` int(11) NOT NULL,
  `idRPerangkat` int(11) NOT NULL,
  `penawaran` varchar(45) DEFAULT NULL,
  `komponen` varchar(45) DEFAULT NULL,
  `jenisPilihan` varchar(45) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `jasa` varchar(45) DEFAULT NULL,
  `keterangan` varchar(45) DEFAULT NULL,
  `satuan2` varchar(45) DEFAULT NULL,
  `required` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `robot_penawaran`
--

INSERT INTO `robot_penawaran` (`create_time`, `update_time`, `id`, `idRMaster`, `idRPerangkat`, `penawaran`, `komponen`, `jenisPilihan`, `image`, `jasa`, `keterangan`, `satuan2`, `required`) VALUES
('2022-04-13 06:25:15', '2022-04-13 06:25:15', 1, 1, 2, 'Database', 'ESP 32', '1', '02109042-c98d-4b7b-96ce-d712f6236bfa_1649856315.jpg', '500000', NULL, NULL, NULL),
('2022-04-13 07:29:42', '2022-04-13 07:29:42', 2, 1, 2, 'Mobile Based', 'HC 05', '1', 'acacc248-ae19-4e2e-9156-f9d190ae3b02_1649860182.jpg', '250000', NULL, NULL, NULL),
('2022-04-13 08:00:35', '2022-04-13 08:00:35', 3, 1, 1, 'Daya Angkut', 'Torsi motor sesuai dengan pilihan', '2', 'd48aa292-3588-4ab1-86c2-6a94307c65be_1649862035.png', '15000000', NULL, 'Kg', 'required'),
('2022-04-21 17:26:23', '2022-04-21 17:26:23', 4, 1, 2, 'Web Based', 'ESP 32 internet acces', '1', '4edf6bf2-fcd1-441f-b358-f4f435261c7b_1650587183.jpg', '5000000', NULL, NULL, NULL),
('2022-04-21 17:28:49', '2022-04-21 17:28:49', 5, 1, 2, 'Bluetooth Acces', 'HC 05', '1', '6f4f0ca9-ee20-4fad-83a8-fc489213ff5b_1650587329.jpg', '200000', NULL, NULL, NULL),
('2022-04-21 17:29:56', '2022-04-21 17:29:56', 6, 1, 2, 'Remote Acces', 'Infrared', '1', 'bea1603f-3d18-40b9-9069-c47dd58e53dd_1650587396.jpg', '200000', NULL, NULL, NULL),
('2022-04-21 17:39:44', '2022-04-21 17:39:44', 7, 1, 3, 'Line Tracking', 'Line Sensor', '1', 'c5e8b579-b372-4f1b-bede-f57091e0b81f_1650587984.jpg', '1000000', NULL, NULL, NULL),
('2022-04-21 17:40:22', '2022-04-21 17:40:22', 8, 1, 3, 'Wall Tracking', 'SRF', '1', 'b0d6e5cf-c606-41c1-9725-968fd145c10a_1650588022.jpg', '1000000', NULL, NULL, NULL),
('2022-04-21 17:40:59', '2022-04-21 17:40:59', 9, 1, 3, 'Camera Tracking', 'Camera Module', '1', '5c892a00-8bbc-48ae-b5d0-f69c02d49ffe_1650588059.jpg', '3500000', NULL, NULL, NULL),
('2022-04-21 17:42:05', '2022-04-21 17:42:05', 10, 1, 3, 'GPS Tracking', 'GPS Module', '1', 'f1189a22-5158-435f-b0dd-add56dc0cbd1_1650588125.jpg', '5000000', NULL, NULL, NULL),
('2022-04-21 17:43:26', '2022-04-21 17:43:26', 11, 1, 3, 'Lidar', 'Lidar', '1', '6e438ef7-6030-4c15-be21-ac2fbf1b2af0_1650588206.jpg', '800000', NULL, NULL, NULL),
('2022-04-21 17:44:13', '2022-04-21 17:44:13', 12, 1, 3, 'Rfid', 'RFID reader', '1', 'e838d9ca-b43e-4f69-a2e7-2928745c3ded_1650588253.png', '800000', NULL, NULL, NULL),
('2022-04-21 17:44:58', '2022-04-21 17:44:58', 13, 1, 3, 'Kompas', 'Kompas Module', '1', '2dac6cd8-c244-4cf3-86cb-4f104779c6eb_1650588298.jpg', '500000', NULL, NULL, NULL),
('2022-04-21 17:46:04', '2022-04-21 17:46:04', 14, 1, 3, 'Gyro + Accelero', 'Navigation Module', '1', 'b8106c43-0a56-421e-9d42-ad49fc566e5b_1650588364.jpg', '800000', NULL, NULL, NULL),
('2022-04-21 17:46:40', '2022-04-21 17:46:40', 15, 1, 3, 'Rotary Encoder', 'Rotary OMRON', '1', '56372750-a8d9-45e3-a3a4-daa962a83238_1650588400.jpg', '800000', NULL, NULL, NULL),
('2022-04-21 17:47:03', '2022-04-21 17:47:03', 16, 1, 3, 'Voice Recognition', 'Voice Module', '1', '7662b1bd-6ea2-41c4-89f0-70ea7b156b23_1650588423.jpg', '200000', NULL, NULL, NULL),
('2022-04-21 17:47:24', '2022-04-21 17:47:24', 17, 1, 3, 'Sound', 'Speaker', '1', '26425493-d629-48b2-8115-752b54577f34_1650588444.jpg', '200000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `robot_perangkat`
--

CREATE TABLE `robot_perangkat` (
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `robot_perangkat`
--

INSERT INTO `robot_perangkat` (`create_time`, `update_time`, `id`, `nama`, `image`) VALUES
(NULL, NULL, 1, 'Mekanik', NULL),
(NULL, NULL, 2, 'Software', NULL),
(NULL, NULL, 3, 'Fitur', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `deleted_at` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`create_time`, `update_time`, `id`, `nama`, `url`, `deleted_at`) VALUES
('2022-05-12 09:04:06', NULL, 1, 'Admin', 'admin', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `timestamps`
--

CREATE TABLE `timestamps` (
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL,
  `kode_invoice` varchar(45) DEFAULT NULL,
  `sub` varchar(255) DEFAULT NULL,
  `ppn` varchar(255) DEFAULT NULL,
  `tot` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sandi` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`create_time`, `update_time`, `id`, `username`, `password`, `sandi`, `email`, `phone`, `role`, `status`, `nama`) VALUES
('2022-05-12 09:00:20', NULL, 1, 'admin', '$2y$10$AgSAAxYaHrx95zu2Gq229uo4mEmHu9o3B6rLXPqkpqZ654yXlVUzm', 'admin123', '', NULL, '1', '1', 'Admin Sofosrosbotics');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pilihan_jenis`
--
ALTER TABLE `pilihan_jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `robot_jawaban`
--
ALTER TABLE `robot_jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `robot_master`
--
ALTER TABLE `robot_master`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `robot_order`
--
ALTER TABLE `robot_order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `robot_ordertotal`
--
ALTER TABLE `robot_ordertotal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `robot_penawaran`
--
ALTER TABLE `robot_penawaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `robot_perangkat`
--
ALTER TABLE `robot_perangkat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `timestamps`
--
ALTER TABLE `timestamps`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pilihan_jenis`
--
ALTER TABLE `pilihan_jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `robot_jawaban`
--
ALTER TABLE `robot_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `robot_master`
--
ALTER TABLE `robot_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `robot_order`
--
ALTER TABLE `robot_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT untuk tabel `robot_ordertotal`
--
ALTER TABLE `robot_ordertotal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `robot_penawaran`
--
ALTER TABLE `robot_penawaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `robot_perangkat`
--
ALTER TABLE `robot_perangkat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `timestamps`
--
ALTER TABLE `timestamps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
