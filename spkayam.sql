-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Des 2022 pada 15.36
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spkayam`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator'),
('RYU', 'f3770595e0cb4d9a988bd5da98d2187d', 'Rizky Yuni Utami'),
('januriawan', '21232f297a57a5a743894a0e4a801fc3', 'Fajar Januriawan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `kode_pengetahuan` int(11) NOT NULL,
  `kode_penyakit` int(11) NOT NULL,
  `kode_gejala` int(11) NOT NULL,
  `mb` double(11,1) NOT NULL,
  `md` double(11,1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`kode_pengetahuan`, `kode_penyakit`, `kode_gejala`, `mb`, `md`) VALUES
(148, 37, 95, 1.0, 0.2),
(147, 37, 94, 0.8, 0.2),
(146, 37, 93, 0.8, 0.2),
(145, 37, 92, 0.8, 0.2),
(144, 37, 91, 1.0, 0.2),
(143, 37, 90, 0.8, 0.2),
(142, 37, 89, 0.8, 0.2),
(141, 37, 88, 0.8, 0.2),
(140, 37, 78, 1.0, 0.4),
(139, 37, 74, 0.8, 0.2),
(138, 37, 64, 0.8, 0.2),
(137, 37, 61, 1.0, 0.2),
(136, 36, 88, 0.8, 0.2),
(135, 36, 87, 0.8, 0.2),
(134, 36, 86, 1.0, 0.2),
(133, 36, 85, 0.8, 0.2),
(132, 36, 84, 0.8, 0.4),
(131, 36, 83, 0.6, 0.4),
(130, 36, 82, 1.0, 0.2),
(129, 36, 81, 1.0, 0.2),
(128, 36, 80, 0.8, 0.2),
(127, 36, 79, 0.6, 0.2),
(126, 36, 78, 1.0, 0.4),
(125, 36, 77, 1.0, 0.2),
(124, 36, 76, 0.8, 0.2),
(123, 36, 64, 0.8, 0.2),
(104, 33, 61, 1.0, 0.4),
(122, 36, 61, 1.0, 0.2),
(121, 35, 76, 0.6, 0.2),
(120, 35, 75, 0.8, 0.2),
(119, 35, 74, 0.8, 0.2),
(118, 35, 73, 0.8, 0.2),
(117, 35, 72, 0.8, 0.2),
(116, 35, 71, 1.0, 0.2),
(115, 35, 65, 0.8, 0.4),
(114, 35, 63, 0.8, 0.2),
(113, 34, 70, 0.8, 0.2),
(112, 34, 69, 1.0, 0.2),
(111, 34, 68, 1.0, 0.4),
(110, 33, 67, 0.6, 0.4),
(109, 33, 66, 0.8, 0.4),
(108, 33, 65, 0.8, 0.4),
(107, 33, 64, 0.6, 0.4),
(106, 33, 63, 0.8, 0.4),
(105, 33, 62, 0.6, 0.2),
(103, 33, 60, 1.0, 0.4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` int(11) NOT NULL,
  `nama_gejala` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`) VALUES
(82, 'Terhalanganya perutumbuhan psikis, kecerdasan'),
(81, 'Menurunnya perkembangan kognitif'),
(80, 'Rambut rangup dan gampang tanggal'),
(79, 'Mudah marah'),
(78, 'Diare kronis'),
(77, 'Kehilangan lemak dan massa otot tubuh'),
(76, 'Kulit dan rambut kering'),
(75, 'Sanitasi yang buruk'),
(74, 'Keletihan akut'),
(73, 'Sering sakit dan lama untuk sembuh'),
(72, 'Balita terlihat lebih muda/kecil untuk usianya'),
(71, 'Nafsu makan rendah'),
(70, 'Badan Gemuk'),
(69, 'Obesitas'),
(68, 'Kelebihan berat badan'),
(67, 'Pubertas terlambat'),
(66, 'Pendiam dan tidak banyak melakukan kontak mata'),
(65, 'Memori belajar yang kurang baik'),
(64, 'Pertumbuhan gigi terhambat'),
(63, 'Wajah tampak lebih muda dari anak seusianya'),
(62, 'Terserang berbagai penyakit infeksi'),
(60, 'Tinggi badan lebih pendek dari seusianya'),
(61, 'Pertumbuhan tulang terhambat'),
(83, 'Sakit kepala'),
(84, 'Selalu lapar'),
(85, 'Badan tampak semakin ramping'),
(86, 'Muka terlihat tua'),
(87, 'Berat badan menurun'),
(88, 'Mudah menangis'),
(89, 'Otot-otot melemah'),
(90, 'Kulit terlihat keriput'),
(91, 'pembengkakan pada tungkai, kaki, tangan, dan muka'),
(92, 'Bintik dan bersisik pada kulit'),
(93, 'Perut makin mengembung'),
(94, 'Infeksi yang lebih sering dan parah'),
(95, 'Tanda jari membekas di kulit saat disentuh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL DEFAULT '0',
  `penyakit` text NOT NULL,
  `gejala` text NOT NULL,
  `hasil_id` int(11) NOT NULL,
  `hasil_nilai` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `tanggal`, `penyakit`, `gejala`, `hasil_id`, `hasil_nilai`) VALUES
(201, '2018-02-20 13:25:09', 'a:10:{i:10;s:6:\"0.6480\";i:11;s:6:\"0.6000\";i:8;s:6:\"0.6000\";i:13;s:6:\"0.4800\";i:9;s:6:\"0.4720\";i:4;s:6:\"0.2960\";i:5;s:6:\"0.2400\";i:1;s:6:\"0.1200\";i:12;s:6:\"0.1200\";i:7;s:6:\"0.1200\";}', 'a:5:{i:1;s:1:\"3\";i:2;s:1:\"1\";i:3;s:1:\"5\";i:5;s:1:\"4\";i:7;s:1:\"2\";}', 10, '0.6480'),
(202, '2018-02-20 15:51:20', 'a:9:{i:3;s:6:\"1.0000\";i:2;s:6:\"0.8240\";i:5;s:6:\"0.2400\";i:10;s:6:\"0.1200\";i:12;s:6:\"0.1200\";i:9;s:6:\"0.1200\";i:7;s:6:\"0.1200\";i:1;s:6:\"0.1200\";i:4;s:6:\"0.1200\";}', 'a:4:{i:1;s:1:\"3\";i:7;s:1:\"6\";i:14;s:1:\"1\";i:15;s:1:\"2\";}', 3, '1.0000'),
(204, '2018-02-20 18:19:53', 'a:2:{i:2;s:6:\"0.6000\";i:13;s:6:\"0.4800\";}', 'a:4:{i:1;s:1:\"5\";i:3;s:1:\"2\";i:5;s:1:\"5\";i:7;s:1:\"2\";}', 2, '0.6000'),
(205, '2018-02-20 18:20:05', 'a:2:{i:9;s:6:\"0.8000\";i:7;s:6:\"0.6000\";}', 'a:2:{i:38;s:1:\"3\";i:40;s:1:\"2\";}', 9, '0.8000'),
(206, '2018-02-20 20:18:58', 'a:4:{i:10;s:6:\"1.0000\";i:9;s:6:\"0.6000\";i:7;s:6:\"0.6000\";i:11;s:6:\"0.4000\";}', 'a:4:{i:38;s:1:\"3\";i:40;s:1:\"3\";i:41;s:1:\"1\";i:42;s:1:\"4\";}', 10, '1.0000'),
(207, '2018-02-20 20:19:30', 'a:2:{i:5;s:6:\"0.8000\";i:1;s:6:\"0.4800\";}', 'a:2:{i:12;s:1:\"3\";i:16;s:1:\"1\";}', 5, '0.8000'),
(209, '2018-02-21 05:43:56', 'a:7:{i:2;s:6:\"0.6832\";i:5;s:6:\"0.2400\";i:12;s:6:\"0.1200\";i:10;s:6:\"0.1200\";i:7;s:6:\"0.1200\";i:1;s:6:\"0.1200\";i:4;s:6:\"0.1200\";}', 'a:3:{i:1;s:1:\"3\";i:3;s:1:\"2\";i:5;s:1:\"5\";}', 2, '0.6832'),
(210, '2018-02-21 09:13:13', 'a:0:{}', 'a:3:{i:1;s:1:\"8\";i:3;s:1:\"9\";i:6;s:1:\"7\";}', 0, ''),
(211, '2018-02-21 09:35:01', 'a:1:{i:12;s:6:\"0.4800\";}', 'a:1:{i:35;s:1:\"3\";}', 12, '0.4800'),
(212, '2018-02-21 10:18:30', 'a:8:{i:5;s:6:\"0.1600\";i:10;s:6:\"0.0800\";i:12;s:6:\"0.0800\";i:9;s:6:\"0.0800\";i:7;s:6:\"0.0800\";i:4;s:6:\"0.0800\";i:1;s:6:\"0.0800\";i:2;s:6:\"0.0800\";}', 'a:1:{i:1;s:1:\"4\";}', 5, '0.1600'),
(213, '2018-02-21 11:48:56', 'a:4:{i:4;s:6:\"0.2704\";i:11;s:6:\"0.2400\";i:8;s:6:\"0.2400\";i:10;s:6:\"0.2000\";}', 'a:3:{i:1;s:1:\"5\";i:2;s:1:\"4\";i:4;s:1:\"4\";}', 4, '0.2704'),
(214, '2018-02-21 11:50:21', 'a:9:{i:13;s:6:\"0.4800\";i:2;s:6:\"0.3744\";i:5;s:6:\"0.1600\";i:12;s:6:\"0.0800\";i:10;s:6:\"0.0800\";i:7;s:6:\"0.0800\";i:4;s:6:\"0.0800\";i:1;s:6:\"0.0800\";i:9;s:6:\"0.0800\";}', 'a:3:{i:1;s:1:\"4\";i:3;s:1:\"4\";i:7;s:1:\"2\";}', 13, '0.4800'),
(215, '2018-02-21 11:52:04', 'a:3:{i:7;s:6:\"0.6400\";i:5;s:6:\"0.6400\";i:2;s:6:\"0.6000\";}', 'a:4:{i:7;s:1:\"8\";i:15;s:1:\"3\";i:16;s:1:\"2\";i:39;s:1:\"2\";}', 7, '0.6400'),
(216, '2018-02-21 11:52:21', 'a:2:{i:2;s:6:\"1.0000\";i:11;s:6:\"0.8560\";}', 'a:4:{i:5;s:1:\"5\";i:15;s:1:\"1\";i:36;s:1:\"2\";i:42;s:1:\"3\";}', 2, '1.0000'),
(217, '2018-02-21 12:54:09', 'a:3:{i:9;s:6:\"0.8000\";i:1;s:6:\"0.6400\";i:5;s:6:\"0.3200\";}', 'a:3:{i:5;s:1:\"2\";i:12;s:1:\"2\";i:16;s:1:\"4\";}', 9, '0.8000'),
(218, '2018-02-21 12:54:43', 'a:3:{i:9;s:6:\"0.8000\";i:1;s:6:\"0.6400\";i:5;s:6:\"0.3200\";}', 'a:3:{i:5;s:1:\"2\";i:12;s:1:\"2\";i:16;s:1:\"4\";}', 9, '0.8000'),
(221, '2018-02-22 18:47:41', 'a:9:{i:2;s:6:\"0.8320\";i:10;s:6:\"0.4624\";i:11;s:6:\"0.3600\";i:8;s:6:\"0.3600\";i:5;s:6:\"0.3200\";i:12;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:9;s:6:\"0.1600\";i:1;s:6:\"0.1600\";}', 'a:4:{i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"1\";i:4;s:1:\"7\";}', 2, '0.8320'),
(222, '2018-02-27 14:12:19', 'a:7:{i:9;s:6:\"0.6640\";i:5;s:6:\"0.3200\";i:12;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:1;s:6:\"0.1600\";i:4;s:6:\"0.0400\";}', 'a:3:{i:1;s:1:\"2\";i:2;s:1:\"7\";i:5;s:1:\"3\";}', 9, '0.6640'),
(223, '2018-03-01 14:53:58', 'a:10:{i:2;s:6:\"0.5632\";i:10;s:6:\"0.3616\";i:5;s:6:\"0.3200\";i:11;s:6:\"0.2400\";i:8;s:6:\"0.2400\";i:4;s:6:\"0.2272\";i:12;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:1;s:6:\"0.1600\";i:9;s:6:\"0.1600\";}', 'a:3:{i:1;s:1:\"2\";i:2;s:1:\"4\";i:3;s:1:\"3\";}', 2, '0.5632'),
(225, '2018-03-07 05:26:33', 'a:0:{}', 'a:0:{}', 0, ''),
(226, '2018-03-07 05:26:53', 'a:8:{i:5;s:6:\"0.2400\";i:10;s:6:\"0.1200\";i:12;s:6:\"0.1200\";i:9;s:6:\"0.1200\";i:7;s:6:\"0.1200\";i:4;s:6:\"0.1200\";i:1;s:6:\"0.1200\";i:2;s:6:\"0.1200\";}', 'a:1:{i:1;s:1:\"3\";}', 5, '0.2400'),
(227, '2018-03-07 05:43:07', 'a:10:{i:3;s:6:\"1.0000\";i:13;s:6:\"0.3600\";i:5;s:6:\"0.3200\";i:12;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:10;s:6:\"0.1600\";i:9;s:6:\"0.1600\";i:1;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:4;s:6:\"0.1600\";}', 'a:3:{i:1;s:1:\"2\";i:7;s:1:\"3\";i:25;s:1:\"1\";}', 3, '1.0000'),
(232, '2018-03-07 06:23:47', 'a:8:{i:5;s:6:\"0.3200\";i:10;s:6:\"0.1600\";i:12;s:6:\"0.1600\";i:9;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:1;s:6:\"0.1600\";i:4;s:6:\"0.0400\";}', 'a:2:{i:1;s:1:\"2\";i:4;s:1:\"5\";}', 5, '0.3200'),
(233, '2018-03-07 06:24:13', 'a:8:{i:5;s:6:\"0.3200\";i:10;s:6:\"0.1600\";i:12;s:6:\"0.1600\";i:9;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:1;s:6:\"0.1600\";i:4;s:6:\"0.0400\";}', 'a:2:{i:1;s:1:\"2\";i:4;s:1:\"5\";}', 5, '0.3200'),
(275, '2018-03-13 12:57:51', 'a:7:{i:5;s:6:\"0.4000\";i:10;s:6:\"0.2000\";i:12;s:6:\"0.2000\";i:9;s:6:\"0.2000\";i:7;s:6:\"0.2000\";i:4;s:6:\"0.2000\";i:2;s:6:\"0.2000\";}', 'a:1:{i:1;s:1:\"1\";}', 5, '0.4000'),
(276, '2018-03-13 13:10:17', 'a:0:{}', 'a:1:{i:1;s:1:\"5\";}', 0, ''),
(277, '2018-03-13 13:10:32', 'a:7:{i:5;s:6:\"0.1600\";i:10;s:6:\"0.0800\";i:12;s:6:\"0.0800\";i:9;s:6:\"0.0800\";i:7;s:6:\"0.0800\";i:4;s:6:\"0.0800\";i:2;s:6:\"0.0800\";}', 'a:1:{i:1;s:1:\"4\";}', 5, '0.1600'),
(278, '2018-03-13 13:21:49', 'a:0:{}', 'a:1:{i:1;s:1:\"5\";}', 0, ''),
(253, '2018-03-07 06:41:06', 'a:11:{i:10;s:6:\"0.6640\";i:11;s:6:\"0.6000\";i:8;s:6:\"0.6000\";i:4;s:6:\"0.3280\";i:5;s:6:\"0.3200\";i:3;s:6:\"0.3200\";i:12;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:1;s:6:\"0.1600\";i:9;s:6:\"0.1600\";}', 'a:3:{i:1;s:1:\"2\";i:2;s:1:\"1\";i:19;s:1:\"2\";}', 10, '0.6640'),
(254, '2018-03-07 06:41:33', 'a:8:{i:2;s:6:\"0.6832\";i:5;s:6:\"0.2400\";i:10;s:6:\"0.1200\";i:12;s:6:\"0.1200\";i:9;s:6:\"0.1200\";i:7;s:6:\"0.1200\";i:1;s:6:\"0.1200\";i:4;s:6:\"0.1200\";}', 'a:2:{i:1;s:1:\"3\";i:3;s:1:\"2\";}', 2, '0.6832'),
(255, '2018-03-07 06:45:39', 'a:0:{}', 'a:0:{}', 0, ''),
(256, '2018-03-07 06:46:37', 'a:2:{i:13;s:6:\"0.5914\";i:4;s:6:\"0.2400\";}', 'a:4:{i:20;s:1:\"4\";i:27;s:1:\"3\";i:33;s:1:\"2\";i:34;s:1:\"3\";}', 13, '0.5914'),
(257, '2018-03-09 00:50:24', 'a:0:{}', 'a:0:{}', 0, ''),
(258, '2018-03-09 01:08:28', 'a:9:{i:10;s:6:\"0.5632\";i:11;s:6:\"0.4800\";i:8;s:6:\"0.4800\";i:5;s:6:\"0.3200\";i:4;s:6:\"0.2944\";i:12;s:6:\"0.1600\";i:9;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:7;s:6:\"0.1600\";}', 'a:2:{i:1;s:1:\"2\";i:2;s:1:\"2\";}', 10, '0.5632'),
(259, '2018-03-09 01:26:39', 'a:1:{i:12;s:6:\"0.4800\";}', 'a:2:{i:16;s:1:\"8\";i:17;s:1:\"2\";}', 12, '0.4800'),
(260, '2018-03-09 01:27:45', 'a:1:{i:12;s:6:\"0.4800\";}', 'a:2:{i:16;s:1:\"8\";i:17;s:1:\"2\";}', 12, '0.4800'),
(261, '2018-03-09 04:51:04', 'a:10:{i:13;s:6:\"0.8960\";i:8;s:6:\"0.8128\";i:10;s:6:\"0.5840\";i:2;s:6:\"0.5840\";i:11;s:6:\"0.4800\";i:5;s:6:\"0.4000\";i:4;s:6:\"0.2080\";i:12;s:6:\"0.2000\";i:9;s:6:\"0.2000\";i:7;s:6:\"0.2000\";}', 'a:7:{i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"5\";i:7;s:1:\"2\";i:8;s:1:\"2\";i:18;s:1:\"2\";}', 13, '0.8960'),
(262, '2018-03-10 00:04:05', 'a:3:{i:9;s:6:\"0.4800\";i:13;s:6:\"0.2400\";i:4;s:6:\"0.2400\";}', 'a:4:{i:4;s:1:\"4\";i:5;s:1:\"3\";i:7;s:1:\"4\";i:9;s:1:\"5\";}', 9, '0.4800'),
(263, '2018-03-10 03:14:39', 'a:4:{i:1;s:6:\"0.6400\";i:12;s:6:\"0.3600\";i:6;s:6:\"0.2400\";i:9;s:6:\"0.2400\";}', 'a:3:{i:9;s:1:\"4\";i:12;s:1:\"2\";i:17;s:1:\"3\";}', 1, '0.6400'),
(264, '2018-03-10 03:19:27', 'a:3:{i:11;s:6:\"1.0000\";i:10;s:6:\"0.4000\";i:9;s:6:\"0.4000\";}', 'a:3:{i:5;s:1:\"4\";i:37;s:1:\"1\";i:41;s:1:\"4\";}', 11, '1.0000'),
(265, '2018-03-10 03:21:03', 'a:4:{i:8;s:6:\"0.9293\";i:11;s:6:\"0.4800\";i:10;s:6:\"0.4800\";i:4;s:6:\"0.1600\";}', 'a:4:{i:2;s:1:\"2\";i:18;s:1:\"4\";i:29;s:1:\"2\";i:34;s:1:\"5\";}', 8, '0.9293'),
(266, '2018-03-10 03:22:27', 'a:3:{i:6;s:6:\"1.0000\";i:7;s:6:\"0.6000\";i:1;s:6:\"0.3200\";}', 'a:4:{i:12;s:1:\"4\";i:28;s:1:\"5\";i:30;s:1:\"1\";i:32;s:1:\"3\";}', 6, '1.0000'),
(267, '2018-03-10 17:35:54', 'a:4:{i:9;s:6:\"0.8000\";i:6;s:6:\"0.4800\";i:13;s:6:\"0.2400\";i:4;s:6:\"0.1600\";}', 'a:3:{i:5;s:1:\"2\";i:7;s:1:\"4\";i:10;s:1:\"2\";}', 9, '0.8000'),
(273, '2018-03-11 01:13:51', 'a:3:{i:6;s:6:\"0.8000\";i:5;s:6:\"0.6000\";i:13;s:6:\"0.0800\";}', 'a:3:{i:28;s:1:\"3\";i:30;s:1:\"2\";i:33;s:1:\"4\";}', 6, '0.8000'),
(279, '2018-03-15 05:15:44', 'a:6:{i:5;s:6:\"0.3200\";i:12;s:6:\"0.1600\";i:10;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:9;s:6:\"0.0400\";}', 'a:3:{i:1;s:1:\"2\";i:4;s:1:\"8\";i:9;s:1:\"5\";}', 5, '0.3200'),
(280, '2018-03-15 13:09:09', 'a:7:{i:5;s:6:\"0.4000\";i:10;s:6:\"0.2000\";i:12;s:6:\"0.2000\";i:9;s:6:\"0.2000\";i:7;s:6:\"0.2000\";i:4;s:6:\"0.2000\";i:2;s:6:\"0.2000\";}', 'a:1:{i:1;s:1:\"1\";}', 5, '0.4000'),
(281, '2018-03-15 13:10:02', 'a:7:{i:5;s:6:\"0.4000\";i:10;s:6:\"0.2000\";i:12;s:6:\"0.2000\";i:9;s:6:\"0.2000\";i:7;s:6:\"0.2000\";i:4;s:6:\"0.2000\";i:2;s:6:\"0.2000\";}', 'a:1:{i:1;s:1:\"1\";}', 5, '0.4000'),
(282, '2018-03-15 13:10:36', 'a:7:{i:5;s:6:\"0.4000\";i:10;s:6:\"0.2000\";i:12;s:6:\"0.2000\";i:9;s:6:\"0.2000\";i:7;s:6:\"0.2000\";i:4;s:6:\"0.2000\";i:2;s:6:\"0.2000\";}', 'a:1:{i:1;s:1:\"1\";}', 5, '0.4000'),
(283, '2018-03-15 13:12:00', 'a:8:{i:10;s:6:\"0.6800\";i:4;s:6:\"0.5840\";i:5;s:6:\"0.4000\";i:6;s:6:\"0.3200\";i:12;s:6:\"0.2000\";i:2;s:6:\"0.2000\";i:9;s:6:\"0.2000\";i:7;s:6:\"0.2000\";}', 'a:5:{i:1;s:1:\"1\";i:6;s:1:\"4\";i:11;s:1:\"3\";i:14;s:1:\"9\";i:22;s:1:\"3\";}', 10, '0.6800'),
(284, '2018-03-15 13:30:20', 'a:3:{i:11;s:6:\"0.6000\";i:12;s:6:\"0.4800\";i:13;s:6:\"0.0800\";}', 'a:5:{i:30;s:1:\"9\";i:32;s:1:\"5\";i:33;s:1:\"4\";i:35;s:1:\"3\";i:42;s:1:\"3\";}', 11, '0.6000'),
(285, '2022-12-16 15:36:22', 'a:1:{i:4;s:6:\"0.6691\";}', 'a:43:{i:1;s:1:\"7\";i:2;s:1:\"9\";i:3;s:1:\"9\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"9\";i:7;s:1:\"9\";i:8;s:1:\"9\";i:9;s:1:\"9\";i:10;s:1:\"4\";i:11;s:1:\"4\";i:12;s:1:\"9\";i:13;s:1:\"9\";i:14;s:1:\"8\";i:15;s:1:\"5\";i:16;s:1:\"4\";i:17;s:1:\"9\";i:18;s:1:\"2\";i:19;s:1:\"1\";i:20;s:1:\"4\";i:21;s:1:\"3\";i:22;s:1:\"8\";i:23;s:1:\"9\";i:24;s:1:\"9\";i:25;s:1:\"4\";i:26;s:1:\"1\";i:27;s:1:\"7\";i:28;s:1:\"8\";i:29;s:1:\"9\";i:30;s:1:\"6\";i:31;s:1:\"4\";i:32;s:1:\"9\";i:33;s:1:\"9\";i:34;s:1:\"2\";i:35;s:1:\"8\";i:36;s:1:\"8\";i:37;s:1:\"4\";i:38;s:1:\"8\";i:39;s:1:\"8\";i:40;s:1:\"9\";i:41;s:1:\"3\";i:42;s:1:\"6\";i:43;s:1:\"7\";}', 4, '0.6691'),
(286, '2022-12-16 19:54:20', 'a:10:{i:1;s:6:\"1.0000\";i:9;s:6:\"0.6800\";i:6;s:6:\"0.6000\";i:13;s:6:\"0.6000\";i:5;s:6:\"0.4000\";i:2;s:6:\"0.2000\";i:4;s:6:\"0.2000\";i:7;s:6:\"0.2000\";i:10;s:6:\"0.2000\";i:12;s:6:\"0.2000\";}', 'a:4:{i:1;s:1:\"1\";i:7;s:1:\"1\";i:9;s:1:\"1\";i:24;s:1:\"1\";}', 1, '1.0000'),
(287, '2022-12-19 15:33:38', 'a:1:{i:34;s:6:\"0.9251\";}', 'a:3:{i:68;s:1:\"2\";i:69;s:1:\"2\";i:70;s:1:\"1\";}', 34, '0.9251'),
(288, '2022-12-19 16:25:44', 'a:5:{i:33;s:6:\"0.9861\";i:36;s:6:\"0.9200\";i:37;s:6:\"0.9200\";i:35;s:6:\"0.7600\";i:34;s:6:\"0.3600\";}', 'a:9:{i:60;s:1:\"1\";i:61;s:1:\"1\";i:62;s:1:\"1\";i:63;s:1:\"1\";i:64;s:1:\"1\";i:65;s:1:\"1\";i:66;s:1:\"1\";i:67;s:1:\"2\";i:68;s:1:\"3\";}', 33, '0.9861'),
(289, '2022-12-19 20:00:13', 'a:1:{i:33;s:6:\"0.6000\";}', 'a:1:{i:60;s:1:\"1\";}', 33, '0.6000'),
(290, '2022-12-19 20:00:30', 'a:3:{i:37;s:6:\"0.8000\";i:36;s:6:\"0.8000\";i:33;s:6:\"0.6000\";}', 'a:1:{i:61;s:1:\"1\";}', 37, '0.8000'),
(291, '2022-12-19 20:48:43', 'a:1:{i:34;s:6:\"0.9210\";}', 'a:3:{i:68;s:1:\"4\";i:69;s:1:\"1\";i:70;s:1:\"2\";}', 34, '0.9210');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kondisi`
--

CREATE TABLE `kondisi` (
  `id` int(11) NOT NULL,
  `kondisi` varchar(64) NOT NULL,
  `ket` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kondisi`
--

INSERT INTO `kondisi` (`id`, `kondisi`, `ket`) VALUES
(1, 'Pasti ya', ''),
(2, 'Hampir pasti ya', ''),
(3, 'Kemungkinan besar ya', ''),
(4, 'Mungkin ya', ''),
(5, 'Tidak tahu', ''),
(6, 'Mungkin tidak', ''),
(7, 'Kemungkinan besar tidak', ''),
(8, 'Hampir pasti tidak', ''),
(9, 'Pasti tidak', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` int(11) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `det_penyakit` varchar(500) NOT NULL,
  `srn_penyakit` varchar(500) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `det_penyakit`, `srn_penyakit`, `gambar`) VALUES
(37, 'Kwashiorkor', 'kwashiorkor diartikan sebagai kondisi kekurangan atau bahkan ketiadaan asupan protein. Padahal, protein merupakan jenis nutrisi yang sangat dibutuhkan oleh tubuh, salah satunya adalah untuk memperbaiki dan membuat sel-sel baru.\r\n\r\nKwashiorkor ditandai dengan pembengkakan di bagian bawah kulit atau edema akibat terlalu banyaknya cairan dalam jaringan tubuh. Pembengkakan tersebut dapat muncul di seluruh bagian tubuh, tetapi umumnya di kaki.', 'Kwashiorkor bisa dicegah dengan mengonsumsi cukup kalori dan makanan yang kaya protein. Pedoman pola makan dari Institute of Medicine merekomendasikan bahwa 10 hingga 35 persen kalori harian orang dewasa berasal dari protein.', 'slide_7.jpg'),
(36, 'Marasmus', 'marasmus adalah kekurangan asupan energi atau kalori dari semua bentuk makronutrien, yang mencakup karbohidrat, lemak, dan protein. Ini merupakan salah satu bentuk gizi buruk. Selain itu, penderita marasmus rentan mengalami infeksi akut, seperti infeksi saluran pernapasan dan gastroenteritis, serta infeksi kronis seperti tuberkulosis.\r\n\r\nTak hanya dapat meningkatkan risiko terjadinya berbagai macam penyakit, kondisi malnutrisi energi protein juga dapat mengancam nyawa. Meski telah ditangani, tet', 'Mengonsumsi makanan yang kaya kalori dan protein, seperti mengonsumsi buah, sayur, susu, telur, ikan, dan kacang.\r\nMengonsumsi vitamin.\r\nMenjaga kebersihan dengan cara selalu menggunakan air yang bersih untuk makan, minum, dan mandi.\r\nMinum ASI ekslusif 6 bulan pertama.', 'slide_7.jpg'),
(34, 'Gizi Lebih', 'Penyakit gizi lebih (obesitas) berhubungan dengan kelebihan energi di dalam tubuh, kelebihan energi ini kemudian diubah menjadi lemak dan ditimbun pada tempat-tempat tertentu. Jaringan lemak ini merupakan jaringan yang relatif inaktif, tidak langsung berperan serta dalam kegiatan kerja tubuh.', 'Pola makan yang dianjurkan adalah 3 kali makan besar diselingi dengan 2 camilan. Setiap kali kamu makan besar, kurangi jumlah karbohidrat yang masuk dan perbanyak sayuran, konsumsi makanan berprotein, dan tentu saja buah-buahan. Batasilah makanan manis, asin, dan berlemak.', 'Stunting-dan-Obesitas-03-min-scaled.jpg'),
(33, 'Stunting', 'Stunting adalah penyakit tumbuh kembang anak yang ditandai dengan rendahnya tinggi badan serta dengan bertambahnya usia tubuhnya tidak berkembang baik sesuai usianya dan berlangsung dalam waktu lama. ', '1. Pemberian pola asuh yang tepat\r\nLangkah pertama adalah memberikan pola asuh yang tepat untuk anak. Ini meliputi Inisiasi Menyusui Dini atau IMD dan memberikan ASI eksklusif untuk bayi hingga usianya genap 6 bulan, dan lanjutkan hingga usianya 2 tahun. \r\n\r\n2. Memberikan MPASI yang optimal\r\nUnited Nations Children’s Fund (UNICEF) bersama dengan World Health Organization (WHO) merekomendasikan, bayi yang berusia 6 sampai 23 bulan memperoleh asupan makanan pendamping ASI atau MPASI yang tepat dan', 'download.jfif'),
(35, 'Gizi Kurang', 'Gizi kurang adalah gangguan kesehatan akibat kekurangan atau ketidakseimbangan zat gizi yang diperlukan untuk pertumbuhan, aktivitas berfikir dan semua hal yang berhubungan dengan kehidupan. Kekurangan zat gizi adaptif bersifat ringan sampai dengan berat. Gizi kurang banyak terjadi pada anak usia kurang dari 5 tahun.Gizi buruk adalah kondisi gizi kurang hingga tingkat yang berat dan di sebabkan oleh rendahnya konsumsi energi dan protein dari makanan sehari-hari dan terjadi dalam waktu yang cukup', 'Makan makanan yang lengkap mengandung kalori serta bergizi, bukan hanya tinggi kalori saja.\r\nMakan sedikit-sedikit tapi sering.\r\nMakan snack di antara waktu makan besar.\r\nMinum minuman yang juga mengandung kalori.', '0607_kriteria-gizi-buruk.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE `post` (
  `kode_post` int(11) NOT NULL,
  `nama_post` varchar(50) NOT NULL,
  `det_post` varchar(15000) NOT NULL,
  `srn_post` varchar(15000) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `post`
--

INSERT INTO `post` (`kode_post`, `nama_post`, `det_post`, `srn_post`, `gambar`) VALUES
(26, 'Produksi Telur (Egg Drop Syndrome 76/EDS 76)', '<p>Egg Drop Syndrome (EDS) adalah suatu penyakit ayam yang disebabkan oleh kelompok virus <em>adeno</em>. Ayam yang terserang oleh penyakit ini akan mengalami penurunan produksi telur, kerabang telur lembek atau tidak membentuk kerabang, sementara ayamnya sendiri terlihat sehat. Penyakit ini biasanya dijumpai pada ayam petelur yang sedang dalam puncak produksi.</p>\r\n\r\n<p>Egg drop syndrome pertama kali ditemukan pada unggas di tahun 1970an. Virus penyebab,&nbsp; adenovirus, memiliki reservoir dalam bebek dan angsa. Penyebab awal terjadinya disebabkan oleh vaksin penyakit Marek yang tumbuh dalam fibroblas embrio bebek. Virus ini menginfeksi ternak, berkembang biak dan menyebar ke ternak lain melalui telur yang terinfeksi. Meskipun telah dimusnahkan dari peternak , adenovirus menjadi endemik pada sebagian dunia. Egg drop <a href=\"http://thoms212.blogspot.com/2014/10/penyakit-egg-drop-syndrome-dan.html\" target=\"_blank\">syndrome</a> merupakan wabah yang langka disebabkan oleh penularan virus dari bebek dan angsa, baik secara langsung atau melalui air yang terkontaminasi<strong>.</strong></p>\r\n\r\n<p>Egg Drop Syndrome disebabkan oleh adenovirus, anggota genus Atad-enovirus dan keluarga Adenoviridae. Virus ini juga telah dikenal sebagai adenovirus 1 (DAdV-1) sindrom penurunan telur (EDS) virus, telur-drop-sindrom-76 (EDS-76) virus dan 127 adenovirus.</p>\r\n\r\n<p><strong>SPESIES YANG TERINFEKSI</strong></p>\r\n\r\n<p>Itik dan angsa tampaknya menjadi tempat yang alami untuk adenovirus.&nbsp; Virus ini juga telah diisolasi oleh coots dan grebes, dan antibodi telah ditemukan pada spesies burung termasuk burung camar, burung hantu, bangau, angsa, ayam mutiara, dan merpati. Penyakit klinis telah dilaporkan pada ayam, puyuh, dan angsa. Kalkun dapat terinfeksi eksperimental namun tetap asimtomatik (Bishop, 1996).</p>\r\n\r\n<p><strong>EPIDEMIOLOGI</strong></p>\r\n\r\n<p>Adenovirus ditemukan di seluruh dunia pada itik dan angsa. Egg drop syndrome&nbsp; terjadi di Eropa, Asia, Afrika, dan Amerika Latin, namun belum terlihat di AS atau Kanada. Penyakit pernapasan pada angsa hanya dilaporkan di negara Hungaria.</p>\r\n\r\n<p>Penyakit menular secara horizontal maupun vertikal. Infeksi EDS menyebabkan daya tetas telur menjadi turun sehingga jumlah DOC dari induk tertular EDS hanya sedikit. Tetapi masih ada kemungkinan induk terserang EDS tetap tampak sehat dan menghasilkan telur tercemar ringan virus EDS sehingga bisa menetas menjadi DOC.</p>\r\n\r\n<p>Hal ini perlu diwaspadai karena selama DOC tumbuh, virus EDS tetap ada didalamm tubuhnya dan seolah-olah tertidur. Pada saat ayam mulai bertelur, virus EDS yang tertidur dan jumlahnya sedikit menjadi terbangun. Berkembang biak dan menyebar ke ayam lain dalam satu kandang. pada saat ayam akan mencapai puncak, produksi virus EDS yang berkembang mampu memunculkan gejala klinis jika sebelumnya tidak ada upaya pencegahan.</p>\r\n\r\n<p>Selain tertular sejak DOC seperti tersebut diatas, penularan dapat terjadi secara horizontal. Virus EDS&#39;76 yang berhasil menular dalam tubuh ayam berkembangbiak dan menyebar ke ayam lain selama masa grower dan ayam tetap sehat. Tetapi kelak pada saat mulai bertelur sampai mencapai puncak produksi gejala klinis EDS siap muncul jika tidak ada usaha pencegahan. Sumber penularan bisa terbawa bersama telur tetas, peralatan penetasan dan &quot;egg tray&quot;.</p>\r\n\r\n<p>Penularan Egg drop syndrome secara horizontal melalui &nbsp;oral. namun penyakit saluran pernapasan pada unggas ini dihasilkan oleh intratrakeal virus. Adenovirus juga dapat menyebar pada air. Beberapa wabah telah dikaitkan dengan kontak dengan unggas liar atau air yang terkontaminasi oleh tinja dari burung liar.</p>\r\n\r\n<p><strong>GEJALA&nbsp; KLINIS</strong></p>\r\n\r\n<p>Egg drop syndrome telah dilaporkan pada ayam dan burung puyuh. Gejala utama adalah penurunan dalam produksi telur dan&nbsp; telur yang di hasilkan abnormal.</p>\r\n\r\n<p>Penyakit sering terjadi pada ayam petelur usia 25-26 minggu. Ayam tampak sehat, tidak memperlihatkan gejala sakit kecuali penurunan produksi yang sangat drastis disertai penurunan kualitas telur. Biasanya semakin besar penurunan kuantitas telur yang diproduksi makin rendah pula kualitasnya. Tetapi adakalanya penurunan kualitas telur mendahului penurunan produksi telur. kerabang telur berubah warna menjadi lebih pucat, lembek atau kasar dan telur berubah bentuk atau kecil.</p>\r\n\r\n<p>Produksi telur akan menurun 20-40% selama 6-10 minggu. Telur-telur yang menyimpang dari bentuk normal mengalami penurunan daya tunas (fertilitas) dan daya tetas. Pada bedah bangkai ayam yang terinfeksi EDS&#39;76 ditemukan kelainan seperti limpa sedikit membesar dengan bagian bintik putihnya membesar, uterus (oviduk) menjadi kendur dan terdapat oedema pada jaringan subserosanya. Lipatan-lipatan mukosa uterus membengkak dan oedema, terselaputi eksudat berwarna buram, kadang-kadang ditemukan materi perkapuran berwarna kekuningan diantara lipatan mukosa uterus. Pengecilan ringan pada kuning telur.</p>\r\n\r\n<p>Telur yang kehilangan pikmen kulit atau empuk atau kulit telur sangat tipis. Juga produksi telur dalam 36 jam turun. Umumnya EDS secara klinis bermanifestasi pada puncak produksi telur. Hal ini disebabkan karena virus yang laten menjadi aktif pada masa ini. Penekanan atau penurunan produksi telur tanpa gejala-gejala jelas mungkin disebabkan oleh bentuk ringan dari gejala EDS.</p>\r\n\r\n<p>Dalam kelompok ini, gejala pertama biasanya kehilangan warna dalam telur berpigmen, diikuti dengan tipisnya cangkang. Produksi telur biasanya turun 10% sampai 40%, namun, telur yang sesuai untuk penetasan / pengaturan tetap dan menetas seperti biasa. Meskipun diare sementara dan bulu kusam dapat dilihat sebelum perubahan cangkang terjadi, burung yang terinfeksi umumnya tetap sehat.</p>\r\n\r\n<p><a href=\"http://4.bp.blogspot.com/-VwOPG9dVGoE/VEhnNbVUf9I/AAAAAAAAAaU/kmzYfATF9Nk/s1600/wqwqw.jpeg\"><img alt=\"Penyakit Egg Drop Syndrome dan Pencegahannya\" src=\"http://4.bp.blogspot.com/-VwOPG9dVGoE/VEhnNbVUf9I/AAAAAAAAAaU/kmzYfATF9Nk/s1600/wqwqw.jpeg\" style=\"height:200px; width:400px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sampai saat ini, angsa masih di anggap paling&nbsp; sering terkena. Namun, pada tahun 2001, penyakit pernapasan akut berat yang terkait dengan adenovirus dilaporkan pada unggas yang terinfeksi di Negara Hungaria. Penyakit ini sangat <a href=\"http://thoms212.blogspot.com/2014/10/penyakit-egg-drop-syndrome-dan.html\" target=\"_blank\">berpengaruh</a> pada unggas pada usia antara 4 dan 20 hari. Gejala-gejala meliputi anoreksia, depresi, bersin, batuk, dyspnea, dan rales.</p>\r\n\r\n<p><strong>PATOLOGI KLINIS</strong></p>\r\n\r\n<p>Sesudah infeksi akan terjadi viremi. Virus hidup dan berkembang biak di dalam tractus digestivus dan keluar melalui tinja. Virus juga dikeluarkan melalui telur. Anak ayam yang dieramkan dari telur-telur tertular tidak memiliki antibody IgY, dapat mengekskresi dan mengeluarkan virus melalui faeces.</p>\r\n\r\n<p>Dengan demikian virus menular secara kontak langsung anak ayam lainnya. EDS dapat bersifat carier. Ayam pembawa virus (carrier) mulai mengekskresi virus sewaktu mulai bertelur. Bila pada perusahan ada banyak ayam yang tidak mengandung antibody maka EDS dapat terjadi secara eksplosif. Ayam-ayam yang mempunyai antibody tidak memperlihatkan gejala klinis terserang EDS. Seperti telah dikatakan penyebaran virus terutama melalui telur dan faeces. Secara alami bebek tidak memegang peranan penting sebagai sumber penularan (Taniguchi, 1981).</p>\r\n\r\n<p>Dalam kawanan unggas yang&nbsp; terinfeksi terlihat bercak pada trakea. Edema dan kongesti sedikit terlihat dalam trakea dan paru-paru. Lesi lain yang dilaporkan meliputi ekimosis pada epikardium dan bintik dalam hati. Akut tracheo-bronkitis dan dibatasi kataral pneumonia digambarkan pada burung yang terinfeksi. Kelainan histopatologi termasuk fibrin dan celular dalam trakea dan bronkus lumina; yang epithelium adalah hiperplastik dan metaplastic. Sel-sel superfisial yang terkandung inti bengkak dengan badan inklusi amphophilic. Paru-paru berisi limfosit-histiocytic dan infiltrasi granulocytic heterophil di septae dan di lumina dari alveoli. Tidak ada lesi signifikan terlihat pada jaringan lain.</p>\r\n\r\n<p><strong>&nbsp;</strong><strong>MORBIDITAS DAN MORTALITAS</strong></p>\r\n\r\n<p>Egg drop syndrome biasanya berlangsung 4 sampai 10 minggu. Sebuah penurunan 10% menjadi 40% pada produksi telur. Tingkat&nbsp; kekebalan pada penyakit tersebut menyebabkan penurunan&nbsp; 2% sampai 4%. Pada&nbsp; puyuh, penurunan produksi telur adalah 10% dan 50%. Kematian tidak diharapkan.</p>\r\n\r\n<p>Penyakit pernapasan telah dilaporkan dalam 4 sampai 20 hari pada angsa peliharaan. Penyakit ini terlihat hanya pada burung sangat muda dari kawanan, kelangkaannya dapat dijelaskan dengan prevalensi antibodi yang tinggi pada populasi angsa dan adanya antibodi ibu pada burung muda selama periode kerentanan. Pada unggas yang mempunyai&nbsp; penyakit pernapasan, tingkat mortalitas adalah 5% sampai 7% (Nanics,2001).</p>\r\n\r\n<p>Dalam mendiagnosis Egg Droop Sydrome&nbsp; dapat dilakukan dalam tiga cara diagnosis yaitu :</p>\r\n\r\n<p>1. Diagnosis Klinik</p>\r\n\r\n<p>Cangkang kualitas buruk dan penurunan produksi telur, dalam sebuah kawanan yang sehat, penyebabnya dipastikan Egg drop syndrome. Penyakit ini juga dapat bermanifestasi sebagai penurunan kecil pada hasil telur atau kegagalan untuk mencapai produksi. Diharapkan&nbsp; tingkat Penyakit pernapasan disebabkan oleh adenovirus dapat ditekan.</p>\r\n\r\n<p>2. Diagnosis Labotarium</p>\r\n\r\n<p>Adenovirus dapat diisolasi pada bebek atau telur berembrio,dan dalam kultur sel. Garis sel rentan termasuk bebek dan embrio ayam, hati, ginjal bebek, dan fibro sel-sel blast. Virus dapat diisolasi langsung dari saluran reproduksi ayam yang terkena. Antigen virus dapat dideteksi dengan reaksi rantai polimerase (PCR) atau antigen-capture (enzyme-linked immuno assay &not; sorben (ELISA) teknik imunofluoresensi telah digunakan dalam beberapa kasus (Dhinakar Raj G,2003). Tes serologi hemaglutinasi inhibisi termasuk menggunakan unggas RBC, ELISA, dan netralisasi serum. Tes imunodifusi ganda juga telah digunakan.</p>\r\n\r\n<p>3. Diagnosis lainya</p>\r\n\r\n<p>Gizi dan faktor-faktor manajemen lainnya berdasar diagnosa banding . Penurunan produksi dan rendahnya kualitas cangkang juga dapat terjadi dengan penyakit seperti bronkitis menular, Penyakit Newcastle dan flu burung, namun burung dengan penyakit ini biasanya menjadi sakit. Diagnosis diferensial untuk penyakit pernapasan pada unggas mencakup berbagai penyakit virus, bakteri, dan jamur lainnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><strong>PENGENDALIAN&nbsp; <em>Egg Droop Syndrome</em></strong></p>\r\n\r\n<p><strong>1. Pengobatan</strong></p>\r\n\r\n<p>Tidak ada obat yang dapat menyembuhkan penyakit EDS &ndash; 76. usaha yang dapat dilakukan adalah menjaga kondisi badan tetap baik dan meningkatkan nafsu makan dengan memberikan Vita Stress. Infeksi sekunder dicegah dengan memberikan Therapy atau Doxyvet. Dapat pula diberikan pemanasan tambahan pada kandang.</p>\r\n\r\n<p><strong>2. Pencegahan</strong></p>\r\n\r\n<ul>\r\n	<li>Vaksinasi Vaksinasi EDS&#39;76 pada umur 16-18 minggu.</li>\r\n	<li>Melakukan sanitasi kandang (kandang dibersihkan, dicuci ), membatasi tamu, mencegah hewan liar dan hewan peliharaan lain masuk ke lingkungan kandang. Sanitasi sarana angkutan dan sapronak yang akan masuk kandang.</li>\r\n	<li>Melakukan sanitasi kandang dan lingkungan termasuk mencegah banyak tamu dan hewan liar masuk kandang</li>\r\n	<li>Usaha peternakan dikelola dengan baik sehingga memungkinkan suasana nyaman bagi ayam, antara lain : jumlah ayam pada suatu luasan kandang tidak terlalu padat, ventilasi kandang cukup dan sedapat mungkin dilaksanakan sistem &ldquo;all in all out&rdquo;.</li>\r\n</ul>\r\n', '13 EDS.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`kode_pengetahuan`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indeks untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indeks untuk tabel `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`kode_post`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  MODIFY `kode_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `kode_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `kode_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `post`
--
ALTER TABLE `post`
  MODIFY `kode_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
