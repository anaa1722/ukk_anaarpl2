-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 03 Sep 2024 pada 04.06
-- Versi server: 8.0.31
-- Versi PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_galerifoto_anaa2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

DROP TABLE IF EXISTS `album`;
CREATE TABLE IF NOT EXISTS `album` (
  `albumid` int NOT NULL AUTO_INCREMENT,
  `namaalbum` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggalbuat` date NOT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`albumid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggalbuat`, `userid`) VALUES
(6, ' otomotif', 'mobil keren', '2024-08-08', 1),
(10, ' Teknologi', 'laptop', '2024-08-23', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

DROP TABLE IF EXISTS `foto`;
CREATE TABLE IF NOT EXISTS `foto` (
  `fotoid` int NOT NULL AUTO_INCREMENT,
  `judulfoto` varchar(255) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(255) NOT NULL,
  `albumid` int NOT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`fotoid`),
  KEY `albumid` (`albumid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`) VALUES
(5, ' mobil', 'mobil keren', '2024-08-08', '87854912-', 6, 1),
(12, ' laptop', 'komputer canggih', '2024-08-23', '883907135-', 10, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentarfoto`
--

DROP TABLE IF EXISTS `komentarfoto`;
CREATE TABLE IF NOT EXISTS `komentarfoto` (
  `komentarid` int NOT NULL AUTO_INCREMENT,
  `fotoid` int NOT NULL,
  `userid` int NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL,
  PRIMARY KEY (`komentarid`),
  KEY `fotoid` (`fotoid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `komentarfoto`
--

INSERT INTO `komentarfoto` (`komentarid`, `fotoid`, `userid`, `isikomentar`, `tanggalkomentar`) VALUES
(5, 12, 1, ' woww', '2024-09-03'),
(6, 5, 1, ' mobillkuu', '2024-09-03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `likefoto`
--

DROP TABLE IF EXISTS `likefoto`;
CREATE TABLE IF NOT EXISTS `likefoto` (
  `likeid` int NOT NULL AUTO_INCREMENT,
  `fotoid` int NOT NULL,
  `userid` int NOT NULL,
  `tanggallike` date NOT NULL,
  PRIMARY KEY (`likeid`),
  KEY `fotoid` (`fotoid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `likefoto`
--

INSERT INTO `likefoto` (`likeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(58, 5, 1, '2024-09-03'),
(56, 12, 1, '2024-09-03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`) VALUES
(1, ' admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', 'admin', 'perdamaian'),
(5, ' admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', 'admin', 'perdamaian');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
