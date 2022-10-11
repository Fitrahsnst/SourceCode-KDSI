-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2022 at 03:16 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lomba`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lomba`
--

CREATE TABLE `tbl_lomba` (
  `id_lomba` varchar(200) CHARACTER SET latin1 NOT NULL,
  `id_siswa` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `nama_lomba` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `peringkat` varchar(200) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_lomba`
--

INSERT INTO `tbl_lomba` (`id_lomba`, `id_siswa`, `nama_lomba`, `peringkat`) VALUES
('L01', '012', 'Olimpiade Matematika', '3'),
('L02', '060', 'Olimpiade Ekonomi', '1'),
('L03', '052', 'Olimpiade Kimia', '2'),
('L04', '045', 'Olimpiade Biologi', '1'),
('L05', '028', 'Olimpiade Fisika', '2'),
('L06', '073', 'Olimpiade Geografi', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id_siswa` varchar(200) NOT NULL,
  `nama_siswa` varchar(200) DEFAULT NULL,
  `jenis_kelamin` varchar(200) DEFAULT NULL,
  `asal_sekolah` varchar(200) DEFAULT NULL,
  `nama_lomba` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id_siswa`, `nama_siswa`, `jenis_kelamin`, `asal_sekolah`, `nama_lomba`) VALUES
('012', 'Citra', 'Perempuan', 'SMA N 2 Panyabungan', 'Olimpiade Matematika'),
('028', 'Dwi', 'Perempuan', 'SMA N 1 Medan', 'Olimpiade Fisika'),
('045', 'Raina', 'Perempuan', 'SMA N 1 Sibolga', 'Olimpiade Biologi'),
('052', 'Khairani', 'Perempuan', 'SMA N 1 Kotanopan', 'Olimpiade Kimia'),
('060', 'Rahmad', 'alaski-laki', 'SMA N 3 Sidimpuan', 'Olimpiade Ekonomi'),
('073', 'Kevin', 'Laki-laki', 'SMA N 2 Panyabungan', 'Olimpiade Geografi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_lomba`
--
ALTER TABLE `tbl_lomba`
  ADD PRIMARY KEY (`id_lomba`),
  ADD UNIQUE KEY `id_siswa` (`id_siswa`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_lomba`
--
ALTER TABLE `tbl_lomba`
  ADD CONSTRAINT `tbl_lomba_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `tbl_siswa` (`id_siswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
