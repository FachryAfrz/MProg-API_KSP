-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2022 at 08:11 AM
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
(32, 'P62ba99b6064e5', 'Novan Rizkianto', 'Menengah', 3350000, '28 Jun'),
(33, 'P62ba99efefcfe', 'Roseanita Maharani Endharu', 'Full', 4455000, '28 Jun');

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
(50, 'S62ba999b8be15', 'Hilman Hidayat', 'Sukarela', 5500000, '28 Jun'),
(51, 'S62ba99d4aad0b', 'Ayu Intan Putri Maharani', 'Pokok', 6200000, '28 Jun'),
(52, 'S62ba9a022e777', 'Fachry Dwi Afriza', 'Wajib', 14420000, '28 Jun');

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
(75, 'S62ba999b8be15', 'Simpanan', 'Hilman Hidayat', 5500000, '28 Jun'),
(76, 'P62ba99b6064e5', 'Pinjaman', 'Novan Rizkianto', 3350000, '28 Jun'),
(77, 'S62ba99d4aad0b', 'Simpanan', 'Ayu Intan Putri Maharani', 6200000, '28 Jun'),
(78, 'P62ba99efefcfe', 'Pinjaman', 'Roseanita Maharani Endharu', 4455000, '28 Jun'),
(79, 'S62ba9a022e777', 'Simpanan', 'Fachry Dwi Afriza', 14420000, '28 Jun');

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
(10, 'K62aca96aa45b6', 'Fachry Dwi Afriza', 'fachry@gmail.com', '$2y$10$PAD3/i.m9h0L02paJSinz.vyBkMl9IxyOjiu7.5qKmQPny.w5C4c.');

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
(9, '10', 'VlI21xbf7PUxRlGG48IjAa6qbtJNhJtZwfsHaLRciVecUl1mpIgdrrd53GCjsmau0mckYJrauk6lHsTid7L45Ls46eWOdhssfnVr'),
(10, '10', '20TrzQfksPr3YX29SigjnwjDMlf3AHgcDwQfcd6uRga3aD910iltQt6gg5v5JUuDd0eF9mMKodX0VMxj5ziy2gJEPxTREVcuVZna'),
(11, '10', 'BkazgCzQwpGKfa54iZU5dowD2OHz1dYxJLqJSLKemR1MqdsVXdcLds1IsZNsNuuwVgkNstPzgFiTTf3PqtnP3dkE4ONBLIU03Te4'),
(12, '10', 'vdYn6wBzfmYBtFCdvqZwgAB2QwhlCAEXMlRw4UMuMoh60WvJJFGCkq3YormQMiPBBn4Hyxkpt0CCWmbLEVEsiTrGTgi5zKllHplk'),
(13, '10', '4iKQREn47Wpo62YrbIqtPTseNBSd5jyQQPiOdq4Y6UodznlGWcwykrJ3oKHkXXDajnvLFsIq70IpIhqXEm0dkDROVkaTy8SED0Oe'),
(14, '10', 'd5bnpN8rm6gELNOXRYqCdKD4c4Ne6CJciRCZXl4oUXt5K8VR9R0dD6bCYHXZdGi8thhMcdixo675wcJaD1e7UroPFnW2YTHhC2cK'),
(15, '10', 'WzswR3cm48Drgb8NBdWpAhvXddtdeCsNhpun3WAXGSJZUy9ZkQSwEdFORpHupsjlaa7isVirWWJhsHsqag3EAdF8RcsIocCHCbwl'),
(16, '10', 'eCUZ8MsNQYnGnpwNKgbR7EnIBk0amrObK7AHYfHBKDJTkOsTIMgNd4dutDZ7pYAAbUxZczHRWuzhjgrJoUjEdUZsEnmdIGbqOZkQ'),
(17, '10', 'cTZVU3GgFqB1tE9f80GihVC6OZFSUs6pCtr4t5tBMAmP39Hd5vAiyjLudr2h6omH0ZkVr3WPlO64hqT6eHOhJjFaFxCvE52K5KXi'),
(18, '10', 'pftd4543k7qVl2xP6Qjs8OvK8L7kOGWejJPd9XduRoA1JBX3dYyjdPhdFOvrjkL2wcTLdcE4eyhA5z8JGkIObOdnds3X3OfbisVz'),
(19, '10', 'CuBtrx1YD2bqQPBTvQCSr23FagYSaPo4d4EKHimMy2dIpsMoiXjp6OzC2shlmBQlT5NZ6BRYvyKQlksqCdYsldSOQlzGQSAY5Wkt'),
(20, '10', '4mCKFtvzG4gdhsr5NKrF8ssrWsCssvl5nSdsAolh2SxhvJcXs39uYUdsHRsZ2JSwQiCO73s8HgmaboQqxPFILtkTnVj7gmyB9gQY'),
(21, '10', 'T3KmxYhI2iaWtcmMw37Z6VjkNdYQ1w6RGiuH52V6KcuUTGLNQ5oAwdbeS5U0be1GlSIn0aarnMQmdTbnGznaQbVS0Af9mnd98M9V');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `simpanan`
--
ALTER TABLE `simpanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
