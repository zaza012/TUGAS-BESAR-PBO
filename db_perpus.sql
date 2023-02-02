-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2023 at 01:58 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_anggota`
--

CREATE TABLE `tbl_anggota` (
  `id_anggota` varchar(6) NOT NULL,
  `nis` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `id_tingkat` int(3) NOT NULL,
  `kd_jurusan` varchar(10) NOT NULL,
  `id_kelas` int(2) NOT NULL,
  `notelp` varchar(13) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_anggota`
--

INSERT INTO `tbl_anggota` (`id_anggota`, `nis`, `nama`, `jk`, `id_tingkat`, `kd_jurusan`, `id_kelas`, `notelp`, `status`) VALUES
('A00001', '21103088', 'Fahmii', 'PRIA', 1, 'IPS', 1, '088123456789', 'AKTIF'),
('A00003', '121092029', 'Aya', 'WANITA', 3, 'IPS', 3, '0888123456', 'AKTIF');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id_buku` varchar(15) NOT NULL,
  `judul` varchar(35) NOT NULL,
  `pengarang` varchar(30) NOT NULL,
  `penerbit` varchar(25) NOT NULL,
  `tahun` int(10) NOT NULL,
  `id_lokasi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_buku`
--

INSERT INTO `tbl_buku` (`id_buku`, `judul`, `pengarang`, `penerbit`, `tahun`, `id_lokasi`) VALUES
('B0001', 'Entah', 'Not me', 'Just you', 1995, '1102 - Fiksi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `kd_jurusan` varchar(10) NOT NULL,
  `jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`kd_jurusan`, `jurusan`) VALUES
('BDY', 'Budaya'),
('BHS1', 'Bahasa 1'),
('BHS2', 'Bahasa 2'),
('IPA', 'Ilmu Pengetahuan Alam'),
('IPS', 'Ilmu Pengetahuan Sosial');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id_kelas` int(2) NOT NULL,
  `kelas` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id_kelas`, `kelas`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lokasi`
--

CREATE TABLE `tbl_lokasi` (
  `id_lokasi` varchar(30) NOT NULL,
  `lokasi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_lokasi`
--

INSERT INTO `tbl_lokasi` (`id_lokasi`, `lokasi`) VALUES
('1102 - Fiksi', ''),
('1190 - Geografi', ''),
('1201 - Novel', ''),
('2301 - Komik Nartod', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peminjaman`
--

CREATE TABLE `tbl_peminjaman` (
  `id_peminjam` varchar(15) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `nis` varchar(10) NOT NULL,
  `pegawai` varchar(25) NOT NULL,
  `id_buku` varchar(10) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_peminjaman`
--

INSERT INTO `tbl_peminjaman` (`id_peminjam`, `nama`, `nis`, `pegawai`, `id_buku`, `judul`, `tgl_pinjam`, `tgl_kembali`) VALUES
('A0123', 'Fahmi', 'B0123', 'Aku', 'C0123', 'Buku', '2023-02-02', '2023-02-09'),
('P0124', 'Nai', '01234', 'Er', '1235', 'Aaaaa', '1970-01-01', '1970-01-01'),
('P0125', 'Entah', '0921', 'You', '01239', 'Not me', '2023-02-11', '2023-02-22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tingkat`
--

CREATE TABLE `tbl_tingkat` (
  `id_tingkat` int(1) NOT NULL,
  `tingkat` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tingkat`
--

INSERT INTO `tbl_tingkat` (`id_tingkat`, `tingkat`) VALUES
(1, 'X'),
(2, 'XI'),
(3, 'XII');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `tingkat` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama`, `username`, `password`, `tingkat`) VALUES
(1, 'phmii', 'phmii', 'phmii', 'admin'),
(2, 'jarip', 'jarip', 'jarip', 'admin'),
(4, 'ervie', 'ervie', 'ervie', 'user'),
(6, 'nailah', 'nailah', 'nailah', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_anggota`
--
ALTER TABLE `tbl_anggota`
  ADD PRIMARY KEY (`id_anggota`),
  ADD KEY `id_tingkat` (`id_tingkat`),
  ADD KEY `kd_jurusan` (`kd_jurusan`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tbl_lokasi`
--
ALTER TABLE `tbl_lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `tbl_peminjaman`
--
ALTER TABLE `tbl_peminjaman`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- Indexes for table `tbl_tingkat`
--
ALTER TABLE `tbl_tingkat`
  ADD PRIMARY KEY (`id_tingkat`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id_kelas` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_tingkat`
--
ALTER TABLE `tbl_tingkat`
  MODIFY `id_tingkat` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_anggota`
--
ALTER TABLE `tbl_anggota`
  ADD CONSTRAINT `tbl_anggota_ibfk_1` FOREIGN KEY (`id_tingkat`) REFERENCES `tbl_tingkat` (`id_tingkat`),
  ADD CONSTRAINT `tbl_anggota_ibfk_2` FOREIGN KEY (`kd_jurusan`) REFERENCES `tbl_jurusan` (`kd_jurusan`),
  ADD CONSTRAINT `tbl_anggota_ibfk_3` FOREIGN KEY (`id_kelas`) REFERENCES `tbl_kelas` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
