-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2021 at 07:09 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuliah`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id_admin` bigint(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` bigint(20) NOT NULL,
  `nama_dosen` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama_dosen`, `password`, `username`) VALUES
(3, 'Chelsea Islan', 'wakanda', 'wakanda');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` bigint(20) NOT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `nama_mahasiswa` varchar(255) DEFAULT NULL,
  `nim` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `jenis_kelamin`, `nama_mahasiswa`, `nim`, `password`) VALUES
(3, 'Pria', 'Dewabrata', '123456', '1234567'),
(4, 'Pria', 'Aqil', '123459', '121345'),
(5, 'Wanita', 'Dewi', '123457', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_mata_kuliah` bigint(20) NOT NULL,
  `nama_mata_kuliah` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id_mata_kuliah`, `nama_mata_kuliah`) VALUES
(3, 'Matematika');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` bigint(20) NOT NULL,
  `nilai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id` bigint(20) NOT NULL,
  `jawaban1` varchar(255) DEFAULT NULL,
  `jawaban2` varchar(255) DEFAULT NULL,
  `jawaban3` varchar(255) DEFAULT NULL,
  `jawaban4` varchar(255) DEFAULT NULL,
  `jawaban_benar` varchar(255) DEFAULT NULL,
  `pertanyaan1` varchar(255) DEFAULT NULL,
  `status_gambar` varchar(255) DEFAULT NULL,
  `id_soal` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`id`, `jawaban1`, `jawaban2`, `jawaban3`, `jawaban4`, `jawaban_benar`, `pertanyaan1`, `status_gambar`, `id_soal`) VALUES
(7, 'Chelsea Islan', 'Umi', 'Dilan', 'Octa', 'Chelsea Islan', 'Siapa nama artis disamping ini ?', '/user-photos/chelsea.jpg', 6),
(8, 'Avatar', 'Nemo', 'Fancy', 'Blue Rim', 'Blue Rim', 'Ini ikan cupang jenis apa ?', '/user-photos/8653e5eb2f63f6a2d21ce1f414f601b3.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `plot_mata_kuliah`
--

CREATE TABLE `plot_mata_kuliah` (
  `id_plot_mata_kuliah` bigint(20) NOT NULL,
  `id_dosen` bigint(20) DEFAULT NULL,
  `id_mahasiswa` bigint(20) DEFAULT NULL,
  `id_matakuliah` bigint(20) DEFAULT NULL,
  `id_soal` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plot_mata_kuliah`
--

INSERT INTO `plot_mata_kuliah` (`id_plot_mata_kuliah`, `id_dosen`, `id_mahasiswa`, `id_matakuliah`, `id_soal`) VALUES
(4, 3, 3, 3, 6),
(5, 3, 5, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id` bigint(20) NOT NULL,
  `nama_soal` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `id_nilai` bigint(20) DEFAULT NULL,
  `id_plotmatakuliah` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id`, `nama_soal`, `status`, `id_nilai`, `id_plotmatakuliah`) VALUES
(6, 'Mat Terapan', 1, NULL, NULL),
(7, 'Kalkulus', 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_mata_kuliah`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjwdowj1x79y78oj4nbbu1idug` (`id_soal`);

--
-- Indexes for table `plot_mata_kuliah`
--
ALTER TABLE `plot_mata_kuliah`
  ADD PRIMARY KEY (`id_plot_mata_kuliah`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKcdpdmkfk4efhb22a2ir180b57` (`id_nilai`),
  ADD KEY `FKlvcq4gxs24jts3bodikupqfe3` (`id_plotmatakuliah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id_admin` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_mata_kuliah` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `plot_mata_kuliah`
--
ALTER TABLE `plot_mata_kuliah`
  MODIFY `id_plot_mata_kuliah` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD CONSTRAINT `FKjwdowj1x79y78oj4nbbu1idug` FOREIGN KEY (`id_soal`) REFERENCES `soal` (`id`);

--
-- Constraints for table `plot_mata_kuliah`
--
ALTER TABLE `plot_mata_kuliah`
  ADD CONSTRAINT `FK2xouaqquvpbajpic1h2e7racj` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_mata_kuliah`),
  ADD CONSTRAINT `FK954bklruq1opfh1xmwabi3p1t` FOREIGN KEY (`id_soal`) REFERENCES `soal` (`id`),
  ADD CONSTRAINT `FKqftn4db8rdya7afgu757rscge` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`),
  ADD CONSTRAINT `FKtm2yc8xqhodxstiyebv1m847k` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`);

--
-- Constraints for table `soal`
--
ALTER TABLE `soal`
  ADD CONSTRAINT `FKcdpdmkfk4efhb22a2ir180b57` FOREIGN KEY (`id_nilai`) REFERENCES `nilai` (`id_nilai`),
  ADD CONSTRAINT `FKlvcq4gxs24jts3bodikupqfe3` FOREIGN KEY (`id_plotmatakuliah`) REFERENCES `plot_mata_kuliah` (`id_plot_mata_kuliah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
