-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2024 at 01:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_arsip_digital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(255) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_username`, `admin_password`, `admin_foto`) VALUES
(1, 'Rahmadsyah 2', 'admin', '0192023a7bbd73250516f069df18b500', '1471275613_Screen Shot 2019-10-11 at 16.26.42.png');

-- --------------------------------------------------------

--
-- Table structure for table `arsip`
--

CREATE TABLE `arsip` (
  `arsip_id` int(11) NOT NULL,
  `arsip_user` int(11) NOT NULL,
  `arsip_waktu_upload` datetime NOT NULL,
  `arsip_petugas` int(11) NOT NULL,
  `arsip_kode` varchar(255) NOT NULL,
  `arsip_nama` varchar(255) NOT NULL,
  `arsip_jenis` varchar(255) NOT NULL,
  `arsip_kategori` int(11) NOT NULL,
  `arsip_keterangan` text NOT NULL,
  `arsip_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `arsip`
--

INSERT INTO `arsip` (`arsip_id`, `arsip_user`, `arsip_waktu_upload`, `arsip_petugas`, `arsip_kode`, `arsip_nama`, `arsip_jenis`, `arsip_kategori`, `arsip_keterangan`, `arsip_file`) VALUES
(3, 8, '2019-10-10 16:02:44', 4, 'asd', 'asdasd 2x', 'pdf', 3, 'asdasd', '432536246_mamunur.pdf'),
(4, 11, '2019-10-12 17:02:16', 5, 'MN-002', 'Contoh Surat Izin Pelaksanaan', 'pdf', 4, 'Ini Contoh Surat Izin Pelaksanaan', '1352467019_c4611_sample_explain.pdf'),
(5, 12, '2019-10-12 17:03:01', 5, 'MN-003', 'Contoh Keputusan Kerja', 'pdf', 3, 'Contoh Keputusan Kerja pegawai', '1765932248_Contoh-surat-lamaran-kerja-pdf (1).pdf'),
(6, 10, '2019-10-12 17:03:37', 5, 'MN-004', 'Contoh Surat Izin Pegawai', 'pdf', 7, 'berikut Contoh Surat Izin Pegawai untuk pelaksana kerja', '1651167980_instructions-for-adding-your-logo.pdf'),
(7, 11, '2019-10-12 17:04:30', 5, 'MN-005', 'Contoh SPK Proyek Kontraktor', 'pdf', 5, 'Contoh SPK Proyek Kontraktor adalah contoh surat SPK KONTRAK', '142845393_OoPdfFormExample.pdf'),
(8, 12, '2019-10-12 17:05:22', 5, 'MN-006', 'SPK Kontrak Jembatan', 'pdf', 6, 'Surat SPK Kontrak Jembatan Layang', '106615077_sample-link_1.pdf'),
(20, 2024, '0000-00-00 00:00:00', 1234, '8', '1234', 'png', 1, '1234', '1430625157_Screenshot 2024-09-06 at 23-13-27 He says that he will never die (Blood Meridian) – Biblioklept.png');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL,
  `kategori_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`, `kategori_keterangan`) VALUES
(1, 'Tidak berkategori', 'Semua yang tidak memiliki kategori'),
(3, 'Surat Keputusan', 'Format arsip untuk surat keputusan\r\n'),
(4, 'Surat Izin Pelaksanaan', 'Contoh format surat izin pelaksaan pekerjaan'),
(5, 'Surat Perintah Kerja Proyek jalan', 'Contoh format surat perintah untuk pekerjaan proyek jalan'),
(6, 'Surat Perintah Kerja Proyek Jembatan', 'Contoh format untuk surat perintah kerja proyek jembatan'),
(7, 'Surat Kesehatan Pegawai', 'Surat kesehatan untuk pegawai'),
(8, 'Surat Lampiran Skripsi', 'Surat contoh lampiran untuk skripsi'),
(10, 'Curiculum Vitae', 'Contoh format surat curiculum vitae untuk kenaikan jabatan');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `petugas_id` int(11) NOT NULL,
  `petugas_nama` varchar(255) NOT NULL,
  `petugas_username` varchar(255) NOT NULL,
  `petugas_password` varchar(255) NOT NULL,
  `petugas_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`petugas_id`, `petugas_nama`, `petugas_username`, `petugas_password`, `petugas_foto`) VALUES
(6, 'pras', 'pras', '164361f78dbf22b529438ea4cc7f6496', ''),
(9, 'and', 'and', 'and', '');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `riwayat_id` int(11) NOT NULL,
  `riwayat_waktu` datetime NOT NULL,
  `riwayat_user` int(11) NOT NULL,
  `riwayat_arsip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`riwayat_id`, `riwayat_waktu`, `riwayat_user`, `riwayat_arsip`) VALUES
(1, '2019-10-11 15:32:29', 8, 3),
(2, '2019-10-12 17:09:31', 8, 10),
(3, '2019-10-12 17:09:45', 8, 9),
(4, '2019-10-12 17:09:50', 8, 8),
(5, '2019-10-12 17:09:53', 8, 3),
(6, '2019-10-12 17:10:07', 9, 10),
(7, '2019-10-12 17:10:16', 9, 9),
(8, '2019-10-12 17:10:19', 9, 8),
(9, '2019-10-12 17:10:22', 9, 6),
(10, '2019-10-12 17:10:26', 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `user_username` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_foto`) VALUES
(8, 'Samsul Bahri', '', '24c9e15e52afc47c225b757e7bee1f9d', ''),
(9, 'Reza Yuzanni', 'user2', '7e58d63b60197ceb55a1c487989a3720', ''),
(10, 'Ajir Muhajier', 'user3', '92877af70a45fd6a2ed7fe81e1236b78', ''),
(11, 'Cut Nanda Somay', 'user4', '3f02ebe3d7929b091e3d8ccfde2f3bc6', ''),
(12, 'pras', 'pras', '164361f78dbf22b529438ea4cc7f6496', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `arsip`
--
ALTER TABLE `arsip`
  ADD PRIMARY KEY (`arsip_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`petugas_id`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`riwayat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `arsip`
--
ALTER TABLE `arsip`
  MODIFY `arsip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `petugas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `riwayat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
