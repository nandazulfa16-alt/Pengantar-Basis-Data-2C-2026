-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2026 at 11:38 PM
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
-- Database: `modul3`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventaris_gudang_pusat`
--

CREATE TABLE `inventaris_gudang_pusat` (
  `id_barang` int NOT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `kode_sku` varchar(50) DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `harga_satuan` decimal(10,0) DEFAULT NULL,
  `stok` int DEFAULT NULL,
  `lokasi_rak` varchar(20) DEFAULT NULL,
  `status_qc` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inventaris_gudang_pusat`
--

INSERT INTO `inventaris_gudang_pusat` (`id_barang`, `nama_barang`, `kode_sku`, `kategori`, `harga_satuan`, `stok`, `lokasi_rak`, `status_qc`) VALUES
(101, 'Gaming Laptop G5', 'ELEC-442-X', 'Laptop', 15500000, 12, 'A-01', 'Lulus'),
(102, 'Wireless Mouse', 'ACC-101-Y', 'Aksesoris', 250000, 150, 'NULL', 'Lulus'),
(103, 'Ultra Wide Monitor', 'ELEC-881-X', 'Monitor', 7200000, 0, 'B-05', 'Pending'),
(104, 'Mechanical Keyboard', 'ACC-202-Z', 'Aksesoris', 1200000, 45, 'B-02', 'Lulus'),
(105, 'Office Chair Pro', 'FURN-991-P', 'Furniture', 3500000, 8, 'C-01', 'NULL'),
(106, 'USB-C Hub 10-in-1', 'ACC-303-X', 'Aksesoris', 850000, 0, 'NULL', 'Gagal'),
(107, 'Smartphone Z Flip', 'ELEC-112-Y', 'Smartphone', 14000000, 4, 'A-03', 'Lulus'),
(108, 'Standing Desk', 'FURN-882-Q', 'Furniture', 5000000, 15, 'C-02', 'Lulus'),
(109, 'Headset Gaming RGB', 'ACC-404-X', 'Aksesoris', 1100000, 25, 'NULL', 'Lulus'),
(110, 'Thunderbold Cable', 'ACC-505-Z', 'Aksesoris', 4500000, 100, 'B-03', 'Lulus');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int NOT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `harga` varchar(100) DEFAULT NULL,
  `stok` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `kategori`, `harga`, `stok`) VALUES
(101, 'Laptop Asus', 'Laptop', '8500000', 10),
(102, 'Laptop Lenovo', 'Laptop', '7500000', 8),
(103, 'iPhone 13', 'Smarthpone', '12000000', 5),
(104, 'Mouse Logitech', 'Aksesoris', '150000', 30),
(105, 'Keyboard Gaming', 'Aksesoris', '500000', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventaris_gudang_pusat`
--
ALTER TABLE `inventaris_gudang_pusat`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
