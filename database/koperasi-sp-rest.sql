-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2022 at 07:59 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koperasi-sp-rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id` int(11) NOT NULL,
  `id_pinjaman` varchar(128) NOT NULL,
  `nama_user` varchar(128) NOT NULL,
  `jenis_pinjaman` varchar(128) NOT NULL,
  `nominal_pinjaman` int(11) NOT NULL,
  `tanggal_pinjaman` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pinjaman`
--

INSERT INTO `pinjaman` (`id`, `id_pinjaman`, `nama_user`, `jenis_pinjaman`, `nominal_pinjaman`, `tanggal_pinjaman`) VALUES
(26, 'P62ad67e3131da', 'Ayu Intan Putri Maharani', 'Menengah', 3000000, '14 Jun'),
(27, 'P62ad6826624cb', 'Novan Rizkianto', 'Full', 12500000, '16 Jun');

-- --------------------------------------------------------

--
-- Table structure for table `simpanan`
--

CREATE TABLE `simpanan` (
  `id` int(11) NOT NULL,
  `id_simpanan` varchar(128) NOT NULL,
  `nama_user` varchar(128) NOT NULL,
  `jenis_simpanan` varchar(128) NOT NULL,
  `nominal_simpanan` int(11) NOT NULL,
  `tanggal_simpanan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `simpanan`
--

INSERT INTO `simpanan` (`id`, `id_simpanan`, `nama_user`, `jenis_simpanan`, `nominal_simpanan`, `tanggal_simpanan`) VALUES
(32, 'S62ad67ce6e822', 'Hilman Hidayat', 'Pokok', 9000000, '11 Jun'),
(33, 'S62ad6814d54dd', 'Roseanita Maharani Endharu', 'Wajib', 15000000, '15 Jun'),
(34, 'S62ad683a57079', 'Fachry Dwi Afriza', 'Wajib', 140000000, '18 Jun');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `id_transaksi` varchar(128) NOT NULL,
  `jenis_transaksi` varchar(128) NOT NULL,
  `nama_user` varchar(128) NOT NULL,
  `nominal_transaksi` int(11) NOT NULL,
  `tanggal_transaksi` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_transaksi`, `jenis_transaksi`, `nama_user`, `nominal_transaksi`, `tanggal_transaksi`) VALUES
(40, 'S62ad67ce6e822', 'Simpanan', 'Hilman Hidayat', 9000000, '11 Jun'),
(41, 'P62ad67e3131da', 'Pinjaman', 'Ayu Intan Putri Maharani', 3000000, '14 Jun'),
(42, 'S62ad6814d54dd', 'Simpanan', 'Roseanita Maharani Endharu', 15000000, '15 Jun'),
(43, 'P62ad6826624cb', 'Pinjaman', 'Novan Rizkianto', 12500000, '16 Jun'),
(44, 'S62ad683a57079', 'Simpanan', 'Fachry Dwi Afriza', 140000000, '18 Jun');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `id_user`, `nama`, `email`, `password`) VALUES
(5, 'K62ab312392d30', 'Max', 'maxchamp@gmail.com', '$2y$10$RNLzBWVwtknvQWICorDDF.eX2ivAx6GXzra.wOvYkNfDfbnFuRtf6'),
(6, 'K62ac54db5e141', 'Lewis Hamilton', 'lewis@gmail.com', '$2y$10$mQ6I/PvwapkrCHIGr8zht.mwMUw4eRtxMoucWi8GprgEg6bBBBFVK'),
(10, 'K62aca96aa45b6', 'Fachry Dwi', 'fachry@gmail.com', '$2y$10$PAD3/i.m9h0L02paJSinz.vyBkMl9IxyOjiu7.5qKmQPny.w5C4c.');

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `user_id` varchar(128) NOT NULL,
  `auth_key` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `user_id`, `auth_key`) VALUES
(1, '6', 'DeO2X4Ixbqbn2UsjMApvRzN6R4FsdNPZfTu4VBFFMk0Cv1Lcv9AtqcrHoYYIVhodWhne6FSf2ddS91IECAuW9HYtcbd75GzpImsc'),
(2, '6', 'KeJO15ntnYAr9xyt2qsQjKqqjx8A6q2ep4xRDnujZPLr4Us0FuvXzqtcKM3vNFD7xWxwodQiNS5lKp4LOssehkPqyHkFugv4cL7I'),
(3, '10', '5lXKrsvD7FIbdsgxq9bdJEdGJcmuWmluZknROJjdsaZZEpXdW02DcbVRBewdcIDddnVLCtWmVsUy929UVTFvyKOx1HufAZOOLCFd'),
(4, '10', 'viLXsLYA3rdbuBbVlZ4Cd8b9PaQgXPPfsIRV93VsD9ZhhBzkopLQ376BjbxDPhXME3xBAS10snF8TxrneYddduPYKE8ucd9e2bB5'),
(5, '10', '4VrCLogVV2i7SWsqFbYdx3kahEFsifb9PIhWN0dVlk7EcmC982ndwbMH4J2dkpMdtXjFx4QsCI7EAtBhjDN2lnHZgO1THvh8GnL2'),
(6, '10', 'Cs23MwPpavvhN2puULAIhgS097fhvI3aWdJYxQ4bTs4QaoxYbqopIJRJi5QOMyCrvrMuhZ8sP88XnK2nFoJUsVVtlcR8syb2sPnz'),
(7, '10', 'F8i5Zsonm93P9sOVID0wRpKcC6RFAmloKnVo0YHh9QstzIu5OiZgh7CMRaDdUbCJKj1gQNy2h4ZDM01Rdb3d4mad6e9aeoCKuMvE'),
(8, '10', 'B7f2GssrADUfrjj7ysbd1DlK7sdiA6yG5shlvh52CyWsbHsh5RATiES3dBsYbvsjaKfawL2l64Qts3zttPSYIT4csYifdgSh7odK'),
(9, '10', 'VlI21xbf7PUxRlGG48IjAa6qbtJNhJtZwfsHaLRciVecUl1mpIgdrrd53GCjsmau0mckYJrauk6lHsTid7L45Ls46eWOdhssfnVr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simpanan`
--
ALTER TABLE `simpanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pinjaman`
--
ALTER TABLE `pinjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `simpanan`
--
ALTER TABLE `simpanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
