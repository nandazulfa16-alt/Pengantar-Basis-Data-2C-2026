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
-- Database: `modul6_pbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int NOT NULL,
  `id_transaksi` int DEFAULT NULL,
  `id_produk` int DEFAULT NULL,
  `jumlah` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail`, `id_transaksi`, `id_produk`, `jumlah`) VALUES
(1, 1, 101, 1),
(2, 1, 102, 2),
(3, 2, 103, 3),
(4, 3, 105, 1),
(5, 4, 107, 10),
(6, 5, 109, 2),
(7, 6, 110, 1),
(8, 7, 104, 1),
(9, 8, 101, 1),
(10, 9, 106, 2),
(11, 10, 108, 5),
(12, 11, 103, 4),
(13, 12, 105, 2),
(14, 13, 102, 1),
(15, 14, 107, 5),
(16, 15, 110, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Elektronik'),
(2, 'Pakaian'),
(3, 'Buku'),
(4, 'Alat Tulis'),
(5, 'Aksesoris');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int NOT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `kota`) VALUES
(1, 'Andi', 'Surabaya'),
(2, 'Budi', 'Malang'),
(3, 'Citra', 'Surabaya'),
(4, 'Dewi', 'Sidoarjo'),
(5, 'Eko', 'Gresik');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int NOT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `harga` int DEFAULT NULL,
  `id_kategori` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `id_kategori`) VALUES
(101, 'Laptop Asus', 8500000, 1),
(102, 'Mouse Wireless', 150000, 1),
(103, 'Kaos Polos', 50000, 2),
(104, 'Jaket Denim', 250000, 2),
(105, 'Buku SQL Dasar', 80000, 3),
(106, 'Buku Jaringan', 90000, 3),
(107, 'Bolpoin Gel', 5000, 4),
(108, 'Buku Catatan', 15000, 4),
(109, 'Topi Baseball', 35000, 5),
(110, 'Kacamata Hitam', 75000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int NOT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `id_pelanggan` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tgl_transaksi`, `id_pelanggan`) VALUES
(1, '2026-05-01', 1),
(2, '2026-05-02', 2),
(3, '2026-05-02', 1),
(4, '2026-05-03', 3),
(5, '2026-05-03', 4),
(6, '2026-05-04', 5),
(7, '2026-05-04', 2),
(8, '2026-05-05', 1),
(9, '2026-05-05', 3),
(10, '2026-05-06', 4),
(11, '2026-05-06', 5),
(12, '2026-05-07', 1),
(13, '2026-05-07', 2),
(14, '2026-05-08', 3),
(15, '2026-05-08', 4);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_pelanggan_surabaya`
-- (See below for the actual view)
--
CREATE TABLE `view_pelanggan_surabaya` (
`nama_pelanggan` varchar(50)
,`kota` varchar(50)
);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

-- --------------------------------------------------------

--
-- Structure for view `view_pelanggan_surabaya`
--
DROP TABLE IF EXISTS `view_pelanggan_surabaya`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pelanggan_surabaya`  AS SELECT `pelanggan`.`nama_pelanggan` AS `nama_pelanggan`, `pelanggan`.`kota` AS `kota` FROM `pelanggan` WHERE (`pelanggan`.`kota` = 'Surabaya') ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`),
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
