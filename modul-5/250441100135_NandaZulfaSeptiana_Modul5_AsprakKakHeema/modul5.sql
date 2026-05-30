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
-- Database: `modul5`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int NOT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `kategori` varchar(20) DEFAULT NULL,
  `harga` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `kategori`, `harga`) VALUES
(1, 'Tepung Terigu', 'Bahan', 12000),
(2, 'Gula Pasir', 'Bahan', 15000),
(3, 'Telur', 'Bahan', 2500),
(4, 'Margarin', 'Bahan', 18000),
(5, 'Coklat Bubuk', 'Bahan', 35000),
(6, 'Mixer', 'Alat', 450000),
(7, 'Loyang', 'Alat', 85000),
(8, 'Cetakan Kue', 'Alat', 40000),
(9, 'Kulit Pie', 'Bahan', 22000),
(10, 'panggangan', 'Alat', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_detail` int NOT NULL,
  `id_penjualan` int DEFAULT NULL,
  `id_barang` int DEFAULT NULL,
  `qty` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id_detail`, `id_penjualan`, `id_barang`, `qty`) VALUES
(1, 1, 1, 5),
(2, 2, 2, 3),
(3, 3, 6, 3),
(4, 4, 8, 5),
(5, 5, 5, 1),
(6, 6, 3, 10),
(7, 7, 7, 2),
(8, 8, 4, 3),
(9, 9, 9, 4),
(10, 10, 10, 2),
(11, 11, 10, 4),
(12, 12, 2, 5),
(13, 13, 3, 8),
(14, 14, 4, 1),
(15, 15, 7, 2),
(16, 16, 1, 1),
(17, 17, 7, 3),
(18, 18, 2, 7),
(19, 19, 9, 5),
(20, 20, 10, 3),
(21, 21, 10, 6),
(22, 22, 2, 4),
(23, 23, 3, 12),
(24, 24, 9, 10),
(25, 25, 5, 1),
(26, 26, 1, 4),
(27, 27, 3, 6),
(28, 28, 6, 1),
(29, 29, 5, 2),
(30, 30, 9, 3),
(31, 31, 2, 5),
(32, 32, 4, 2),
(33, 33, 7, 2),
(34, 34, 10, 4),
(35, 35, 1, 3),
(36, 36, 3, 10),
(37, 37, 8, 2),
(38, 38, 2, 4),
(39, 39, 6, 1),
(40, 40, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int NOT NULL,
  `nama_dosen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama_dosen`) VALUES
(1, 'Dr. Ahmad'),
(2, 'Prof. Budi'),
(3, 'Siti Rahma, M.Kom'),
(4, 'Rudi Hartono, M.T'),
(5, 'Lina Kusuma, M.Kom');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int NOT NULL,
  `nim` int DEFAULT NULL,
  `kode_mk` varchar(50) DEFAULT NULL,
  `smt` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id_krs`, `nim`, `kode_mk`, `smt`) VALUES
(1, 21001, ' MK01', 1),
(2, 22001, 'MK01', 1),
(3, 22001, 'MK02', 2),
(4, 22002, 'MK02', 2),
(5, 23001, 'MK03', 1),
(6, 23002, 'MK04', 3),
(7, 24001, 'MK02', 1),
(8, 24002, 'MK03', 2),
(9, 24003, 'MK01', 3),
(10, 25001, 'MK05', 2),
(11, 25002, 'MK06', 3),
(12, 25003, 'MK07', 1),
(13, 25004, 'MK01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mhs`
--

CREATE TABLE `mhs` (
  `nim` int DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `angkatan` year DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mhs`
--

INSERT INTO `mhs` (`nim`, `nama`, `angkatan`, `jurusan`) VALUES
(21001, 'Andi Saputra', '2021', 'Teknik Informatika'),
(22001, 'Budi Santoso', '2022', 'Sistem Informasi'),
(22002, ' Citra Dewi', '2022', 'Teknik Informatika'),
(23001, ' Dewi Lestari', '2023', ' Sistem Informasi'),
(23002, 'Eko Prasetyo', '2023', 'Teknik Informatika'),
(24001, 'Fajar Hidayat', '2024', ' Sistem Informasi'),
(24002, ' Gina Putri', '2024', 'Teknik Informatika'),
(24003, ' Hendra Wijaya', '2024', 'Sistem Informasi'),
(25001, ' Indra Mahendra', '2025', 'Teknik Informatika'),
(25002, 'Joko Purwanto', '2025', ' Sistem Informasi'),
(25003, 'Kiara Sabrina', '2025', ' Teknik Informatika'),
(25004, 'Laura Mala', '2025', 'Sistem Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `mk`
--

CREATE TABLE `mk` (
  `kode_mk` varchar(10) DEFAULT NULL,
  `nama_mk` varchar(100) DEFAULT NULL,
  `sks` int DEFAULT NULL,
  `id_dosen` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mk`
--

INSERT INTO `mk` (`kode_mk`, `nama_mk`, `sks`, `id_dosen`) VALUES
('MK01', ' Pengantar Basis Data', 3, 1),
('MK02', 'Pemrograman Berbasis Web', 3, 2),
('MK03', 'Desain Manajemen Jaringan', 2, 3),
('MK04', 'Sistem Operasi', 3, 1),
('MK05', 'Algoritma dan Dasar Pemrograman', 2, 2),
('MK06', ' Kecerdasan Buatan', 3, 4),
('MK07', ' Data Mining', 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int NOT NULL,
  `nim` int DEFAULT NULL,
  `kode_mk` varchar(50) DEFAULT NULL,
  `nilai_angka` varchar(50) DEFAULT NULL,
  `nilai_huruf` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `nim`, `kode_mk`, `nilai_angka`, `nilai_huruf`) VALUES
(1, 21001, 'MK01', '82', 'A'),
(2, 22001, 'MK01', '85', 'A'),
(3, 22001, 'MK02', '78', 'B'),
(4, 22002, 'MK02', '80', 'A'),
(5, 23001, 'MK03', '75', 'B'),
(6, 23002, 'MK04', '88', 'A'),
(7, 24001, 'MK02', '90', 'A'),
(8, 24002, 'MK03', '77', 'B'),
(9, 24003, 'MK01', '84', 'A'),
(10, 25001, 'MK05', '79', 'B'),
(11, 25002, 'MK06', '83', 'A'),
(12, 25003, 'MK07', '76', 'B'),
(13, 25004, 'MK01', '81', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int NOT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `kota`) VALUES
(1, 'kaca mayang', 'Siak'),
(2, 'roro jonggrang', 'Kediri'),
(3, 'bawang putih', 'Lamongan'),
(4, 'sangkuriang', 'Depok'),
(5, 'joko tarub', 'Solo'),
(6, 'sangkuriang', 'Bekasi'),
(7, 'Nuaiman', 'Siak'),
(8, 'Hamzah', 'Surabaya');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int NOT NULL,
  `tanggal` date DEFAULT NULL,
  `id_pelanggan` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `tanggal`, `id_pelanggan`) VALUES
(1, '2025-04-01', 1),
(2, '2025-04-03', 1),
(3, '2024-04-06', 1),
(4, '2024-04-10', 1),
(5, '2024-04-15', 1),
(6, '2026-04-02', 2),
(7, '2025-04-05', 2),
(8, '2026-04-08', 2),
(9, '2025-04-12', 2),
(10, '2026-04-18', 2),
(11, '2023-04-02', 3),
(12, '2023-04-04', 3),
(13, '2023-04-07', 3),
(14, '2022-04-11', 3),
(15, '2022-04-16', 3),
(16, '2024-04-03', 4),
(17, '2025-04-06', 4),
(18, '2023-04-09', 4),
(19, '2025-04-13', 4),
(20, '2025-04-17', 4),
(21, '2024-04-04', 5),
(22, '2025-04-07', 5),
(23, '2024-04-10', 5),
(24, '2025-04-14', 5),
(25, '2024-04-19', 5),
(26, '2025-05-01', 6),
(27, '2026-05-03', 6),
(28, '2024-05-06', 6),
(29, '2025-05-10', 6),
(30, '2025-05-15', 6),
(31, '2024-05-02', 7),
(32, '2024-05-05', 7),
(33, '2024-05-08', 7),
(34, '2023-05-12', 7),
(35, '2023-05-18', 7),
(36, '2026-05-03', 8),
(37, '2026-05-07', 8),
(38, '2025-05-11', 8),
(39, '2025-05-14', 8),
(40, '2025-05-19', 8);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_transkrip_lengkap`
-- (See below for the actual view)
--
CREATE TABLE `v_transkrip_lengkap` (
`nim` int
,`nama_mhs` varchar(100)
,`nama_mk` varchar(100)
,`nilai_huruf` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_view`
-- (See below for the actual view)
--
CREATE TABLE `v_view` (
`nim` int
,`nama` varchar(100)
);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_penjualan` (`id_penjualan`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

-- --------------------------------------------------------

--
-- Structure for view `v_transkrip_lengkap`
--
DROP TABLE IF EXISTS `v_transkrip_lengkap`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_transkrip_lengkap`  AS SELECT `m`.`nim` AS `nim`, `m`.`nama` AS `nama_mhs`, `mk`.`nama_mk` AS `nama_mk`, `n`.`nilai_huruf` AS `nilai_huruf` FROM ((`mhs` `m` join `nilai` `n` on((`m`.`nim` = `n`.`nim`))) join `mk` on((`n`.`kode_mk` = `mk`.`kode_mk`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_view`
--
DROP TABLE IF EXISTS `v_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_view`  AS SELECT `mhs`.`nim` AS `nim`, `mhs`.`nama` AS `nama` FROM `mhs` ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `detail_penjualan_ibfk_1` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualan` (`id_penjualan`),
  ADD CONSTRAINT `detail_penjualan_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
