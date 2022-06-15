-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 04:11 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alfan`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `provider` text NOT NULL,
  `kuota` varchar(255) NOT NULL,
  `kategori_harga` varchar(255) NOT NULL,
  `minat` varchar(255) NOT NULL,
  `unlimited` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `provider`, `kuota`, `kategori_harga`, `minat`, `unlimited`, `created_at`) VALUES
(2, 'XL', 'Sedang', 'Murah', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(3, 'XL', 'Besar', 'Sedang', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(4, 'XL', 'Besar', 'Sedang', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(5, 'XL', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(6, 'XL', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(7, 'XL', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(8, 'XL', 'Kecil', 'Murah', 'Tinggi', 'Tidak', '2022-06-12 00:55:33'),
(9, 'XL', 'Besar', 'Sedang', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(10, 'XL', 'Besar', 'Sedang', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(11, 'XL', 'Kecil', 'Murah', 'Tinggi', 'Tidak', '2022-06-12 00:55:33'),
(12, 'XL', 'Besar', 'Sedang', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(13, 'XL', 'Besar', 'Sedang', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(14, 'AXIS', 'Kecil', 'Murah', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(15, 'AXIS', 'Sedang', 'Murah', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(16, 'AXIS', 'Besar', 'Sedang', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(17, 'AXIS', 'Kecil', 'Murah', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(18, 'AXIS', 'Kecil', 'Murah', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(19, 'AXIS', 'Kecil', 'Sedang', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(20, 'AXIS', 'Sedang', 'Mahal', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(21, 'AXIS', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(22, 'Indosat', 'Sedang', 'Mahal', 'Rendah', 'Ya', '2022-06-12 00:55:33'),
(23, 'Indosat', 'Kecil', 'Murah', 'Rendah', 'Ya', '2022-06-12 00:55:33'),
(24, 'Indosat', 'Kecil', 'Sedang', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(25, 'Indosat', 'Kecil', 'Murah', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(26, 'Indosat', 'Besar', 'Murah', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(27, 'Indosat', 'Kecil', 'Sedang', 'Sedang', 'Ya', '2022-06-12 00:55:33'),
(28, 'Indosat', 'Kecil', 'Sedang', 'Rendah', 'Ya', '2022-06-12 00:55:33'),
(29, 'Indosat', 'Kecil', 'Mahal', 'Rendah', 'Ya', '2022-06-12 00:55:33'),
(30, 'Indosat', 'Sedang', 'Mahal', 'Rendah', 'Ya', '2022-06-12 00:55:33'),
(31, 'Indosat', 'Besar', 'Murah', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(32, 'Tri AON', 'Kecil', 'Murah', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(33, 'Tri AON', 'Kecil', 'Sedang', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(34, 'Tri AON', 'Sedang', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(35, 'Tri AON', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(36, 'Tri AON', 'Sedang', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(37, 'Tri AON', 'Besar', 'Mahal', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(38, 'Tri AON', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(39, 'Tri AON', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(40, 'Tri AON', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(41, 'Tri AON', 'Besar', 'Murah', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(42, 'Telkomsel', 'Besar', 'Murah', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(43, 'Telkomsel', 'Besar', 'Murah', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(44, 'Telkomsel', 'Kecil', 'Sedang', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(45, 'Telkomsel', 'Sedang', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(46, 'Telkomsel', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(47, 'Smartfren', 'Besar', 'Murah', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(48, 'Smartfren', 'Besar', 'Sedang', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(49, 'Smartfren', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(50, 'Smartfren', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(51, 'Smartfren', 'Besar', 'Mahal', 'Rendah', 'Ya', '2022-06-12 00:55:33'),
(52, 'Indosat', 'Kecil', 'Murah', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(53, 'Indosat', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(54, 'Indosat', 'Besar', 'Mahal', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(55, 'Indosat', 'Kecil', 'Murah', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(56, 'Indosat', 'Kecil', 'Murah', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(57, 'Indosat', 'Sedang', 'Murah', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(58, 'Indosat', 'Besar', 'Sedang', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(59, 'Indosat', 'Besar', 'Sedang', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(60, 'Indosat', 'Besar', 'Mahal', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(61, 'Indosat', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(62, 'Indosat', 'Besar', 'Sedang', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(63, 'Indosat', 'Besar', 'Sedang', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(64, 'Indosat', 'Besar', 'Mahal', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(65, 'Indosat', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(66, 'Indosat', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(67, 'XL', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(68, 'XL', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(69, 'XL', 'Kecil', 'Murah', 'Tinggi', 'Tidak', '2022-06-12 00:55:33'),
(70, 'XL', 'Kecil', 'Sedang', 'Tinggi', 'Tidak', '2022-06-12 00:55:33'),
(71, 'XL', 'Kecil', 'Murah', 'Tinggi', 'Tidak', '2022-06-12 00:55:33'),
(72, 'XL', 'Kecil', 'Murah', 'Tinggi', 'Tidak', '2022-06-12 00:55:33'),
(73, 'XL', 'Kecil', 'Sedang', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(74, 'XL', 'Besar', 'Mahal', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(75, 'XL', 'Besar', 'Mahal', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(76, 'XL', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(77, 'Smartfren', 'Besar', 'Sedang', 'Rendah', 'Ya', '2022-06-12 00:55:33'),
(78, 'Smartfren', 'Besar', 'Mahal', 'Rendah', 'Ya', '2022-06-12 00:55:33'),
(79, 'Smartfren', 'Sedang', 'Murah', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(80, 'Smartfren', 'Kecil', 'Murah', 'Tinggi', 'Tidak', '2022-06-12 00:55:33'),
(81, 'Smartfren', 'Sedang', 'Murah', 'Tinggi', 'Tidak', '2022-06-12 00:55:33'),
(82, 'Smartfren', 'Sedang', 'Sedang', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(83, 'Smartfren', 'Besar', 'Murah', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(84, 'Smartfren', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(85, 'Smartfren', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(86, 'Smartfren', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(87, 'Tri AON', 'Kecil', 'Murah', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(88, 'Tri AON', 'Kecil', 'Murah', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(89, 'Tri AON', 'Besar', 'Sedang', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(90, 'Tri AON', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(91, 'Tri AON', 'Sedang', 'Sedang', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(92, 'Tri AON', 'Besar', 'Sedang', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(93, 'Tri Keep ON', 'Kecil', 'Sedang', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(94, 'Tri Mix Small', 'Kecil', 'Murah', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(95, 'Mix Small', 'Besar', 'Murah', 'Sedang', 'Tidak', '2022-06-12 00:55:33'),
(96, 'Telkomsel', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(97, 'Telkomsel', 'Sedang', 'Sedang', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(98, 'Telkomsel', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(99, 'Telkomsel', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33'),
(100, 'Telkomsel', 'Besar', 'Mahal', 'Rendah', 'Tidak', '2022-06-12 00:55:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
