-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2026 at 04:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpus_dira`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `id_penerbit` int(11) NOT NULL,
  `id_ktg` int(11) NOT NULL,
  `jdl_buku` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `thn_terbit` year(4) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `jml_hal` int(250) NOT NULL,
  `stok` int(250) NOT NULL,
  `cover_buku` varchar(100) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_penerbit`, `id_ktg`, `jdl_buku`, `pengarang`, `thn_terbit`, `isbn`, `jml_hal`, `stok`, `cover_buku`) VALUES
(1, 3, 1, 'Bumi Manusia', 'Pramoedya Ananta Toer', '1980', '978-979-97312-3-1', 535, 10, 'cover bumi manusia.jpeg'),
(2, 2, 3, 'Bahasa Inggris untuk SMA/MA Kelas XI', 'Tim Penyusun Bahasa Inggris Erlangga', '2022', '978-602-486-123-4', 256, 20, 'cover bhs ing.png'),
(3, 1, 1, 'Perahu Kertas', 'Dewi Lestari', '2009', '978-979-22-4760-9', 444, 5, 'cover perahu kertas.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nm_ktg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nm_ktg`) VALUES
(1, 'Novel'),
(2, 'Sejarah Fiksi'),
(3, 'Pendidikan');

-- --------------------------------------------------------

--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `id` int(11) NOT NULL,
  `nm_penerbit` varchar(100) NOT NULL,
  `al_penerbit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit` (`id`, `nm_penerbit`, `al_penerbit`) VALUES
(1, 'Gramedia Pustaka Utama', 'Gedung Kompas Gramedia, Jl. Palmerah Barat No. 29–37, Jakarta 10270, Indonesia.'),
(2, 'Erlangga', 'Jl. H. Baping Raya No. 100, Ciracas, Jakarta Timur 13740, Indonesia.'),
(3, 'Hasta Mitra', 'alan Menteng Raya No. 35, Kebon Sirih, Kecamatan Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `pass`) VALUES
(1, 'dira', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
