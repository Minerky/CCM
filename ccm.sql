-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2024 at 08:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ccm`
--

-- --------------------------------------------------------

--
-- Table structure for table `bulan_pembayaran`
--

CREATE TABLE `bulan_pembayaran` (
  `id_bulan_pembayaran` int(11) NOT NULL,
  `nama_bulan` enum('januari','februari','maret','april','mei','juni','juli','agustus','september','oktober','november','desember') NOT NULL,
  `tahun` int(4) NOT NULL,
  `pembayaran_perminggu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bulan_pembayaran`
--

INSERT INTO `bulan_pembayaran` (`id_bulan_pembayaran`, `nama_bulan`, `tahun`, `pembayaran_perminggu`) VALUES
(17, 'november', 2024, 5000),
(18, 'desember', 2024, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'Admin CCM'),
(2, 'Bendahara'),
(3, 'Guru');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `jumlah_pengeluaran` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_uang_kas` int(11) NOT NULL,
  `aksi` text NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id_riwayat`, `id_user`, `id_uang_kas`, `aksi`, `tanggal`) VALUES
(28, 2, 36, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1731230103),
(29, 1, 36, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5', 1731568652),
(30, 1, 36, 'telah mengubah pembayaran minggu ke-2 dari Rp. 5 menjadi Rp. 5,000', 1731568658),
(31, 1, 36, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1731568664),
(32, 1, 36, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1731568670),
(33, 1, 84, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1731568798),
(34, 1, 84, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1731568818),
(35, 1, 84, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1731568825),
(36, 1, 84, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1731568830),
(37, 1, 91, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1731568845),
(38, 1, 91, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1731568851),
(39, 1, 91, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1731568857),
(40, 1, 91, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1731568863),
(41, 1, 106, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1731568873),
(42, 1, 106, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1731568881),
(43, 1, 106, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1731568887),
(44, 1, 106, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1731568893);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pengeluaran`
--

CREATE TABLE `riwayat_pengeluaran` (
  `id_riwayat_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `aksi` text NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `jenis_kelamin` enum('pria','wanita') NOT NULL,
  `no_telepon` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `jenis_kelamin`, `no_telepon`, `email`) VALUES
(2, 'Aafiyah Balqis', 'wanita', '', ''),
(7, 'Achmad Rizqi', 'pria', '', ''),
(8, 'Adhitya Chandra Nugraha', 'pria', '', ''),
(9, 'Ahmad Alif Badawi', 'pria', '', ''),
(10, 'Ahmad Anthoni', 'pria', '', ''),
(11, 'Aldyan Saputra', 'pria', '', ''),
(12, 'Alvin Christian Farrell', 'pria', '', ''),
(13, 'Araechpaet R. Gading', 'pria', '', ''),
(14, 'Arga Pratama', 'pria', '', ''),
(15, 'Arsya Briliant Perdana', 'pria', '', ''),
(16, 'Bintang Dwi Anggara', 'pria', '', ''),
(17, 'Driyo Uno Pandu Handoyo', 'pria', '', ''),
(18, 'Duvadilan Davin Rheyadi', 'pria', '', ''),
(19, 'Elgin Meysa Espandiani', 'pria', '', ''),
(20, 'Fahri Ramadhan Ghani', 'pria', '', ''),
(21, 'Faiz Asfar Triansyah', 'pria', '', ''),
(22, 'Gunawan Madya Pratama', 'pria', '', ''),
(23, 'Hanna Nailah Ansaria', 'wanita', '', ''),
(24, 'Ilham Sikumbang', 'pria', '', ''),
(25, 'Imanuel Halim', 'pria', '', ''),
(26, 'Keisha Rainuri Wihamdy', 'wanita', '', ''),
(27, 'M. Pasha Praba Sakti Hutabarat', 'pria', '', ''),
(28, 'Muhammad Althafiyawan Siregar', 'pria', '', ''),
(29, 'Mikel Ibrahim', 'pria', '', ''),
(30, 'Muhamad Jibril Muqodas', 'pria', '', ''),
(31, 'Muhammad Fahri', '', '', ''),
(32, 'Muhammad Pasya Rakasyach', 'pria', '', ''),
(33, 'Muhammad Rezky', 'pria', '', ''),
(34, 'Nur Apriliyanti Putri', 'wanita', '', ''),
(35, 'Panglima Akbar Abdillah', 'pria', '', ''),
(36, 'Rafif Dzaki Akmal', 'pria', '', ''),
(37, 'Roihan Fajareno', 'pria', '', ''),
(38, 'Sanders Mitcheel Ruung', 'pria', '', ''),
(39, 'Siddharta Purnama Siddi Wijaya', 'pria', '', ''),
(40, 'Siti Mutia Mutmainah Suharta', 'wanita', '', ''),
(41, 'Vylan Yoza Sinaga', 'pria', '', ''),
(43, 'Ahmad Rival Pangestu', 'pria', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `uang_kas`
--

CREATE TABLE `uang_kas` (
  `id_uang_kas` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_bulan_pembayaran` int(11) NOT NULL,
  `minggu_ke_1` int(11) DEFAULT NULL,
  `minggu_ke_2` int(11) DEFAULT NULL,
  `minggu_ke_3` int(11) DEFAULT NULL,
  `minggu_ke_4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uang_kas`
--

INSERT INTO `uang_kas` (`id_uang_kas`, `id_siswa`, `id_bulan_pembayaran`, `minggu_ke_1`, `minggu_ke_2`, `minggu_ke_3`, `minggu_ke_4`) VALUES
(36, 2, 15, 5000, 5000, 5000, 5000),
(37, 7, 16, 0, 0, 0, 0),
(38, 8, 16, 0, 0, 0, 0),
(39, 9, 16, 0, 0, 0, 0),
(40, 10, 16, 0, 0, 0, 0),
(41, 43, 16, 0, 0, 0, 0),
(42, 11, 16, 0, 0, 0, 0),
(43, 12, 16, 0, 0, 0, 0),
(44, 13, 16, 0, 0, 0, 0),
(45, 13, 16, 0, 0, 0, 0),
(46, 14, 16, 0, 0, 0, 0),
(47, 15, 16, 0, 0, 0, 0),
(48, 16, 16, 0, 0, 0, 0),
(49, 17, 16, 0, 0, 0, 0),
(50, 18, 16, 0, 0, 0, 0),
(51, 19, 16, 0, 0, 0, 0),
(52, 20, 16, 0, 0, 0, 0),
(53, 21, 16, 0, 0, 0, 0),
(54, 22, 16, 0, 0, 0, 0),
(55, 23, 16, 0, 0, 0, 0),
(56, 24, 16, 0, 0, 0, 0),
(57, 25, 16, 0, 0, 0, 0),
(58, 26, 16, 0, 0, 0, 0),
(59, 27, 16, 0, 0, 0, 0),
(60, 29, 16, 0, 0, 0, 0),
(61, 30, 16, 0, 0, 0, 0),
(62, 30, 16, 0, 0, 0, 0),
(63, 28, 16, 0, 0, 0, 0),
(64, 31, 16, 0, 0, 0, 0),
(65, 32, 16, 0, 0, 0, 0),
(66, 33, 16, 0, 0, 0, 0),
(67, 34, 16, 0, 0, 0, 0),
(68, 34, 16, 0, 0, 0, 0),
(69, 35, 16, 0, 0, 0, 0),
(70, 35, 16, 0, 0, 0, 0),
(71, 36, 16, 0, 0, 0, 0),
(72, 37, 16, 0, 0, 0, 0),
(73, 38, 16, 0, 0, 0, 0),
(74, 39, 16, 0, 0, 0, 0),
(75, 40, 16, 0, 0, 0, 0),
(76, 41, 16, 0, 0, 0, 0),
(77, 0, 16, 0, 0, 0, 0),
(78, 0, 16, 0, 0, 0, 0),
(79, 2, 17, 0, 0, 0, 0),
(80, 7, 17, 0, 0, 0, 0),
(81, 8, 17, 0, 0, 0, 0),
(82, 9, 17, 0, 0, 0, 0),
(83, 10, 17, 0, 0, 0, 0),
(84, 11, 17, 5000, 5000, 5000, 5000),
(85, 12, 17, 0, 0, 0, 0),
(86, 13, 17, 0, 0, 0, 0),
(87, 14, 17, 0, 0, 0, 0),
(88, 15, 17, 0, 0, 0, 0),
(89, 16, 17, 0, 0, 0, 0),
(90, 17, 17, 0, 0, 0, 0),
(91, 18, 17, 5000, 5000, 5000, 5000),
(92, 19, 17, 0, 0, 0, 0),
(93, 20, 17, 0, 0, 0, 0),
(94, 21, 17, 0, 0, 0, 0),
(95, 22, 17, 0, 0, 0, 0),
(96, 23, 17, 0, 0, 0, 0),
(97, 24, 17, 0, 0, 0, 0),
(98, 25, 17, 0, 0, 0, 0),
(99, 26, 17, 0, 0, 0, 0),
(100, 27, 17, 0, 0, 0, 0),
(101, 28, 17, 0, 0, 0, 0),
(102, 29, 17, 0, 0, 0, 0),
(103, 30, 17, 0, 0, 0, 0),
(104, 31, 17, 0, 0, 0, 0),
(105, 32, 17, 0, 0, 0, 0),
(106, 33, 17, 5000, 5000, 5000, 5000),
(107, 34, 17, 0, 0, 0, 0),
(108, 35, 17, 0, 0, 0, 0),
(109, 36, 17, 0, 0, 0, 0),
(110, 37, 17, 0, 0, 0, 0),
(111, 38, 17, 0, 0, 0, 0),
(112, 39, 17, 0, 0, 0, 0),
(113, 40, 17, 0, 0, 0, 0),
(114, 41, 17, 0, 0, 0, 0),
(115, 43, 17, 0, 0, 0, 0),
(116, 2, 18, 0, 0, 0, 0),
(117, 7, 18, 0, 0, 0, 0),
(118, 8, 18, 0, 0, 0, 0),
(119, 9, 18, 0, 0, 0, 0),
(120, 10, 18, 0, 0, 0, 0),
(121, 11, 18, 0, 0, 0, 0),
(122, 12, 18, 0, 0, 0, 0),
(123, 13, 18, 0, 0, 0, 0),
(124, 14, 18, 0, 0, 0, 0),
(125, 15, 18, 0, 0, 0, 0),
(126, 16, 18, 0, 0, 0, 0),
(127, 17, 18, 0, 0, 0, 0),
(128, 18, 18, 0, 0, 0, 0),
(129, 19, 18, 0, 0, 0, 0),
(130, 20, 18, 0, 0, 0, 0),
(131, 21, 18, 0, 0, 0, 0),
(132, 22, 18, 0, 0, 0, 0),
(133, 23, 18, 0, 0, 0, 0),
(134, 24, 18, 0, 0, 0, 0),
(135, 25, 18, 0, 0, 0, 0),
(136, 26, 18, 0, 0, 0, 0),
(137, 27, 18, 0, 0, 0, 0),
(138, 28, 18, 0, 0, 0, 0),
(139, 29, 18, 0, 0, 0, 0),
(140, 30, 18, 0, 0, 0, 0),
(141, 31, 18, 0, 0, 0, 0),
(142, 32, 18, 0, 0, 0, 0),
(143, 33, 18, 0, 0, 0, 0),
(144, 34, 18, 0, 0, 0, 0),
(145, 35, 18, 0, 0, 0, 0),
(146, 36, 18, 0, 0, 0, 0),
(147, 37, 18, 0, 0, 0, 0),
(148, 38, 18, 0, 0, 0, 0),
(149, 39, 18, 0, 0, 0, 0),
(150, 40, 18, 0, 0, 0, 0),
(151, 41, 18, 0, 0, 0, 0),
(152, 43, 18, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_jabatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `username`, `password`, `id_jabatan`) VALUES
(1, 'Admin CCM', 'PKL', '$2y$10$fu8uBpwugrQNyENs0/3ZMuXehJibfhXER3qBq2O.pS9Ob7fjk7qji', 1),
(2, 'Keisya Rainuri Wihamdy', 'Bendahara', '$2y$10$HigHTRX6ZL0R.YPdiPydQe/W3AmFUgSdxqNFNfcyX1NysKlCH04Oa', 2),
(3, 'Amrul Si Guru Digital', 'Guru', '$2y$10$1G9mvmbcbdwjdqCb1EuG5OGAYNhPa1aOmlmd2yS2/Yz.A3HRS/u5u', 3),
(4, 'Siswa', 'Siswa', '$2y$10$MpVG4tPY8r43onVmB3GhGuZ..E.0k9EjZnaKQnTK1PYE8/OCo5TLO', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bulan_pembayaran`
--
ALTER TABLE `bulan_pembayaran`
  ADD PRIMARY KEY (`id_bulan_pembayaran`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_uang_kas` (`id_uang_kas`);

--
-- Indexes for table `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  ADD PRIMARY KEY (`id_riwayat_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `uang_kas`
--
ALTER TABLE `uang_kas`
  ADD PRIMARY KEY (`id_uang_kas`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_bulan_pembayaran` (`id_bulan_pembayaran`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_jabatan` (`id_jabatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bulan_pembayaran`
--
ALTER TABLE `bulan_pembayaran`
  MODIFY `id_bulan_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  MODIFY `id_riwayat_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `uang_kas`
--
ALTER TABLE `uang_kas`
  MODIFY `id_uang_kas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
