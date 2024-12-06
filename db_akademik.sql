-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2024 at 09:21 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_absensi`
--

CREATE TABLE `tbl_absensi` (
  `id` int(11) NOT NULL,
  `id_santri` int(11) NOT NULL,
  `id_tingkat` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_tahunajaran` int(11) NOT NULL,
  `sakit` int(11) DEFAULT NULL,
  `izin` int(11) DEFAULT NULL,
  `alfa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aplikasi`
--

CREATE TABLE `tbl_aplikasi` (
  `id` int(11) NOT NULL,
  `nama_apps` varchar(255) DEFAULT NULL,
  `nohp_apps` varchar(20) DEFAULT NULL,
  `email_apps` varchar(255) DEFAULT NULL,
  `alamat_apps` text DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_aplikasi`
--

INSERT INTO `tbl_aplikasi` (`id`, `nama_apps`, `nohp_apps`, `email_apps`, `alamat_apps`, `logo`) VALUES
(1, 'Kang IT', '08931212', 'kangit@gmail.com', 'Tangerang', '11.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id` int(11) NOT NULL,
  `nama_guru` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `nohp_guru` varchar(20) DEFAULT NULL,
  `email_guru` varchar(255) DEFAULT NULL,
  `alamat_guru` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id`, `nama_guru`, `tgl_lahir`, `tempat_lahir`, `nohp_guru`, `email_guru`, `alamat_guru`) VALUES
(2, 'Ahmad', '2024-11-14', 'Tangerang', '0833121', 'guru@gmail.com', 'Tangerang'),
(3, 'Muklis', '2024-11-14', 'Tangerang', '0831412', 'guru2@gmail.com', 'Tangerang'),
(4, 'Sela', '2024-11-14', 'Tangerang', '0867565', 'guru3@gmail.com', 'Tangerang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gurukitab`
--

CREATE TABLE `tbl_gurukitab` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gurukitab_detail`
--

CREATE TABLE `tbl_gurukitab_detail` (
  `id` int(11) NOT NULL,
  `id_gurukitab` int(11) NOT NULL,
  `id_kitab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwalpelajaran`
--

CREATE TABLE `tbl_jadwalpelajaran` (
  `id` int(11) NOT NULL,
  `id_tingkat` int(11) NOT NULL,
  `hari` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwalpelajaran_detail`
--

CREATE TABLE `tbl_jadwalpelajaran_detail` (
  `id` int(11) NOT NULL,
  `id_jadwalpelajaran` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_kitab` int(11) NOT NULL,
  `waktu` text DEFAULT NULL,
  `tempat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kitab`
--

CREATE TABLE `tbl_kitab` (
  `id` int(11) NOT NULL,
  `nama_kitab` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_kitab`
--

INSERT INTO `tbl_kitab` (`id`, `nama_kitab`) VALUES
(2, 'Safinah'),
(3, 'Nadzom Maqsud'),
(4, 'Jurumiyah'),
(5, 'Alfiyah');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilaiuas`
--

CREATE TABLE `tbl_nilaiuas` (
  `id` int(11) NOT NULL,
  `id_santri` int(11) NOT NULL,
  `id_tingkat` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_tahunajaran` int(11) NOT NULL,
  `jml_kitab` int(11) DEFAULT NULL,
  `total_nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilaiuas_detail`
--

CREATE TABLE `tbl_nilaiuas_detail` (
  `id` int(11) NOT NULL,
  `id_nilaiuas` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_kitab` int(11) NOT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilaiuts`
--

CREATE TABLE `tbl_nilaiuts` (
  `id` int(11) NOT NULL,
  `id_santri` int(11) NOT NULL,
  `id_tingkat` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_tahunajaran` int(11) NOT NULL,
  `jml_kitab` int(11) DEFAULT NULL,
  `total_nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilaiuts_detail`
--

CREATE TABLE `tbl_nilaiuts_detail` (
  `id` int(11) NOT NULL,
  `id_nilaiuts` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_kitab` int(11) NOT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_santri`
--

CREATE TABLE `tbl_santri` (
  `id` int(11) NOT NULL,
  `no_induk` varchar(255) DEFAULT NULL,
  `nama_santri` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('Laki - Laki','Perempuan') DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `kewarganegaraan` varchar(255) DEFAULT NULL,
  `tahun_masuk` int(11) DEFAULT NULL,
  `anak_ke` int(11) DEFAULT NULL,
  `bersaudara` int(11) DEFAULT NULL,
  `foto_santri` varchar(255) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `nohp_ortu` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_santri`
--

INSERT INTO `tbl_santri` (`id`, `no_induk`, `nama_santri`, `jenis_kelamin`, `tgl_lahir`, `tempat_lahir`, `kewarganegaraan`, `tahun_masuk`, `anak_ke`, `bersaudara`, `foto_santri`, `nama_ayah`, `nama_ibu`, `nohp_ortu`, `alamat`) VALUES
(1, '1234', 'Pras', 'Laki - Laki', '2024-11-14', 'Tangerang', 'Indonesia', 2024, 1, 2, '6b8c3b65-de60-421f-ac94-b460f97302491.png', 'Ayah', 'Ibu', '0841212', 'Tangerang'),
(2, '1212', 'Ebel', 'Laki - Laki', '2024-11-14', 'Tangerang', 'Indonesia', 2024, 2, 3, 'civic.jpg', 'Ayah 2', 'Ibu 2', '0894512', 'Tangerang'),
(3, '2323', 'Bimo', 'Laki - Laki', '2024-11-14', 'Tangerang', 'Indonesia', 2024, 1, 2, 'honda-city-2020-e16197903026481.jpg', 'Ayah 3', 'Ibu 3', '089472', 'Tangerang'),
(4, '4545', 'Juju', 'Perempuan', '2024-11-14', 'Tangerang', 'Indonesia', 2024, 1, 2, 'ppp11.jpg', 'Ayah 4', 'Ibu 4', '08312121', 'Tangerang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_santritingkat`
--

CREATE TABLE `tbl_santritingkat` (
  `id` int(11) NOT NULL,
  `id_santri` int(11) NOT NULL,
  `id_tingkat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_semester`
--

CREATE TABLE `tbl_semester` (
  `id` int(11) NOT NULL,
  `semester` enum('Ganjil','Genap') DEFAULT NULL,
  `status_semester` enum('Aktif','Nonaktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_semester`
--

INSERT INTO `tbl_semester` (`id`, `semester`, `status_semester`) VALUES
(1, 'Ganjil', 'Aktif'),
(2, 'Genap', 'Nonaktif');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tahunajaran`
--

CREATE TABLE `tbl_tahunajaran` (
  `id` int(11) NOT NULL,
  `tahun_ajaran` varchar(255) DEFAULT NULL,
  `status_tahun` enum('Aktif','Nonaktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_tahunajaran`
--

INSERT INTO `tbl_tahunajaran` (`id`, `tahun_ajaran`, `status_tahun`) VALUES
(1, '2023/2024', 'Nonaktif'),
(2, '2024/2025', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tingkat`
--

CREATE TABLE `tbl_tingkat` (
  `id` int(11) NOT NULL,
  `tingkat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_tingkat`
--

INSERT INTO `tbl_tingkat` (`id`, `tingkat`) VALUES
(2, 'Tingkat 1'),
(3, 'Tingkat 2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Admin','Guru') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama_user`, `email`, `password`, `role`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', 'Admin'),
(5, 'Ahmad', 'guru@gmail.com', 'guru', 'Guru'),
(6, 'Muklis', 'guru2@gmail.com', 'guru2', 'Guru'),
(7, 'Sela', 'guru3@gmail.com', '12345678', 'Guru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_absensi`
--
ALTER TABLE `tbl_absensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tahunajaran` (`id_tahunajaran`),
  ADD KEY `id_semester` (`id_semester`),
  ADD KEY `id_tingkat` (`id_tingkat`),
  ADD KEY `id_santri` (`id_santri`);

--
-- Indexes for table `tbl_aplikasi`
--
ALTER TABLE `tbl_aplikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gurukitab`
--
ALTER TABLE `tbl_gurukitab`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_gurukitab_detail`
--
ALTER TABLE `tbl_gurukitab_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_gurukitab` (`id_gurukitab`),
  ADD KEY `id_kitab` (`id_kitab`);

--
-- Indexes for table `tbl_jadwalpelajaran`
--
ALTER TABLE `tbl_jadwalpelajaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tingkat` (`id_tingkat`);

--
-- Indexes for table `tbl_jadwalpelajaran_detail`
--
ALTER TABLE `tbl_jadwalpelajaran_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_kitab` (`id_kitab`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_jadwalpelajaran` (`id_jadwalpelajaran`);

--
-- Indexes for table `tbl_kitab`
--
ALTER TABLE `tbl_kitab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nilaiuas`
--
ALTER TABLE `tbl_nilaiuas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tahunajaran` (`id_tahunajaran`),
  ADD KEY `id_semester` (`id_semester`),
  ADD KEY `id_tingkat` (`id_tingkat`),
  ADD KEY `id_santri` (`id_santri`);

--
-- Indexes for table `tbl_nilaiuas_detail`
--
ALTER TABLE `tbl_nilaiuas_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kitab` (`id_kitab`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_nilaiuas` (`id_nilaiuas`);

--
-- Indexes for table `tbl_nilaiuts`
--
ALTER TABLE `tbl_nilaiuts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tahunajaran` (`id_tahunajaran`),
  ADD KEY `id_semester` (`id_semester`),
  ADD KEY `id_tingkat` (`id_tingkat`),
  ADD KEY `id_santri` (`id_santri`);

--
-- Indexes for table `tbl_nilaiuts_detail`
--
ALTER TABLE `tbl_nilaiuts_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kitab` (`id_kitab`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_nilaiuts` (`id_nilaiuts`);

--
-- Indexes for table `tbl_santri`
--
ALTER TABLE `tbl_santri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_santritingkat`
--
ALTER TABLE `tbl_santritingkat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_siswa` (`id_santri`),
  ADD KEY `id_tingkat` (`id_tingkat`);

--
-- Indexes for table `tbl_semester`
--
ALTER TABLE `tbl_semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tahunajaran`
--
ALTER TABLE `tbl_tahunajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tingkat`
--
ALTER TABLE `tbl_tingkat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_absensi`
--
ALTER TABLE `tbl_absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_aplikasi`
--
ALTER TABLE `tbl_aplikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_gurukitab`
--
ALTER TABLE `tbl_gurukitab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_gurukitab_detail`
--
ALTER TABLE `tbl_gurukitab_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_jadwalpelajaran`
--
ALTER TABLE `tbl_jadwalpelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_jadwalpelajaran_detail`
--
ALTER TABLE `tbl_jadwalpelajaran_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_kitab`
--
ALTER TABLE `tbl_kitab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_nilaiuas`
--
ALTER TABLE `tbl_nilaiuas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_nilaiuas_detail`
--
ALTER TABLE `tbl_nilaiuas_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_nilaiuts`
--
ALTER TABLE `tbl_nilaiuts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_nilaiuts_detail`
--
ALTER TABLE `tbl_nilaiuts_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_santri`
--
ALTER TABLE `tbl_santri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_santritingkat`
--
ALTER TABLE `tbl_santritingkat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_semester`
--
ALTER TABLE `tbl_semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_tahunajaran`
--
ALTER TABLE `tbl_tahunajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_tingkat`
--
ALTER TABLE `tbl_tingkat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
