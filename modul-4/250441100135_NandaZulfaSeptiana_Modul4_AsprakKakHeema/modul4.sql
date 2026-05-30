-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2026 at 11:39 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modul4`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int NOT NULL,
  `nama_dosen` varchar(100) DEFAULT NULL,
  `bidang_keahlian` varchar(50) DEFAULT NULL,
  `id_mk` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama_dosen`, `bidang_keahlian`, `id_mk`) VALUES
(1, 'Dr. Budi', 'Pemrograman', 7),
(2, 'Prof. Siti', 'Basis Data', 2),
(3, 'Ir. Ahmad', 'Jaringan', 4),
(4, 'Dian, M.Kom', 'Pemrograman', 7),
(5, 'Eko, S.T', 'Kecerdasan Buatan', 5),
(6, 'Rina, M.T', 'Basis Data', 2),
(7, 'Hadi, Ph.D', 'Keamanan Siber', 8),
(8, 'Siska, M.SI', 'Sistem Informasi', 6),
(9, 'Bambang, M.Kom', 'Pemrograman', 7),
(10, 'Laila, M.T', 'Manajemen Proyek', 1);

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int NOT NULL,
  `id_mk` int DEFAULT NULL,
  `id_mhs` int DEFAULT NULL,
  `semester_ambil` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id_krs`, `id_mk`, `id_mhs`, `semester_ambil`) VALUES
(101, 1, 2301, 3),
(102, 2, 2301, 3),
(103, 5, 2201, 5),
(104, 4, 2302, 3),
(105, 1, 2401, 1),
(106, 7, 2402, 2),
(107, 10, 2202, 5),
(108, 6, 2303, 4),
(109, 8, 2201, 6),
(110, 3, 2401, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mhs`
--

CREATE TABLE `mhs` (
  `id_mhs` int NOT NULL,
  `nama_mhs` varchar(100) DEFAULT NULL,
  `prodi` varchar(100) DEFAULT NULL,
  `angkatan` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mhs`
--

INSERT INTO `mhs` (`id_mhs`, `nama_mhs`, `prodi`, `angkatan`) VALUES
(2201, 'Dhani Kusuma', 'Sistem Informasi', 2022),
(2202, 'Rizky Pratama', 'Sistem Informasi', 2022),
(2301, 'Andi Wijaya', 'Sistem Informasi', 2023),
(2302, 'Bunga Citra', 'Sistem Informasi', 2023),
(2303, 'Dimas Anggara', 'Sistem Informasi', 2023),
(2401, 'Candra Gupta', 'Sistem Informasi', 2024),
(2402, 'Dedi Kurniawan', 'Sistem Informasi', 2024),
(2501, 'Farah Nabila', 'Sistem Informasi', 2025),
(2502, 'Gibran Rakabumi', 'Sistem Informasi', 2025),
(2503, 'Hani Safira', 'Sistem Informasi', 2025),
(2504, 'Irfan Bachdim', 'Sistem Informasi', 2025),
(2505, 'Joko Anwar', 'Sistem Informasi', 2025);

-- --------------------------------------------------------

--
-- Table structure for table `mk`
--

CREATE TABLE `mk` (
  `id_mk` int NOT NULL,
  `nama_mk` varchar(100) DEFAULT NULL,
  `sks` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mk`
--

INSERT INTO `mk` (`id_mk`, `nama_mk`, `sks`) VALUES
(1, 'Algoritma & Pemrograman', 4),
(2, 'Basis Data Terdistribusi', 3),
(3, 'Struktur Data', 3),
(4, 'Jaringan Komputer', 3),
(5, 'Kecerdasan Buatan', 3),
(6, 'Sistem Informasi Akuntansi', 2),
(7, 'Pemrograman Web Native', 3),
(8, 'Keamanan Informasi', 3),
(9, 'Etika Profesi IT', 2),
(10, 'Administrasi Basis Data', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`),
  ADD KEY `id_mk` (`id_mk`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `id_mk` (`id_mk`),
  ADD KEY `id_mhs` (`id_mhs`);

--
-- Indexes for table `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`id_mhs`);

--
-- Indexes for table `mk`
--
ALTER TABLE `mk`
  ADD PRIMARY KEY (`id_mk`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`id_mk`) REFERENCES `mk` (`id_mk`) ON DELETE RESTRICT;

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`id_mk`) REFERENCES `mk` (`id_mk`) ON DELETE RESTRICT,
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`id_mhs`) REFERENCES `mhs` (`id_mhs`) ON DELETE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
