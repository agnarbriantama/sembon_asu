-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Bulan Mei 2022 pada 03.50
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_monitoring`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `level_id` int(11) NOT NULL,
  `nama_level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`level_id`, `nama_level`) VALUES
(1, 'superadmin'),
(2, 'ketua'),
(3, 'anggota');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gardu`
--

CREATE TABLE `tb_gardu` (
  `id_gardu` int(11) NOT NULL,
  `nama_gardu` varchar(255) NOT NULL,
  `gambar_gardu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_gardu`
--

INSERT INTO `tb_gardu` (`id_gardu`, `nama_gardu`, `gambar_gardu`) VALUES
(4, 'gardu A', '1.png'),
(5, 'Gardu B', '_Logo_GARDU_(5).png'),
(6, 'Gardu C', '2.png'),
(7, 'Gardu D', '3.png'),
(8, 'Gardu E', '4.png'),
(9, 'Gardu F', '5.png'),
(10, 'Gardu G', '6.png'),
(11, 'Gardu H', '7.png'),
(12, 'Gardu I', '8.png'),
(13, 'Gardu J', '9.png'),
(14, 'Gardu KK', 'bg2.png'),
(16, 'ccccccaaa', ''),
(17, 'Gardu Tests', 'Picture112.png'),
(18, 'gardu ketua', 'Picture111.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pantauanharian`
--

CREATE TABLE `tb_pantauanharian` (
  `id_pantauan` int(11) NOT NULL,
  `id_gardu` int(11) NOT NULL,
  `id_tim` int(11) NOT NULL,
  `suhu` varchar(255) NOT NULL,
  `arus` varchar(255) NOT NULL,
  `cosphi` varchar(255) NOT NULL,
  `tgl_pantauan` date NOT NULL,
  `tegangan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `lokasi_pantauan` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pantauanharian`
--

INSERT INTO `tb_pantauanharian` (`id_pantauan`, `id_gardu`, `id_tim`, `suhu`, `arus`, `cosphi`, `tgl_pantauan`, `tegangan`, `status`, `lokasi_pantauan`, `username`, `gambar`) VALUES
(21, 5, 0, '12', '12', '12', '2022-04-22', '11', '0', '-6.2910082,106.7588609', '', 'Screenshot_2022-03-01_101745.png'),
(22, 4, 0, '321', '321', '321', '2022-04-22', '321', '1', '-6.2910082,106.7588609', '', 'Picture11.png'),
(23, 6, 0, '12', '12', '12', '2022-04-23', '12', '0', '-6.2910082,106.7588609', '', 'download7.jpg'),
(25, 8, 0, '55', '12', '12', '2022-04-23', '55', '0', '-6.2910082,106.7588609', '', 'download8.jpg'),
(26, 9, 0, '12', '77', '77', '2022-04-23', '55', '0', '-6.2910082,106.7588609', '', 'download9.jpg'),
(27, 10, 0, '12', '55', '12', '2022-04-23', '999', '0', '-6.2910082,106.7588609', '', 'download10.jpg'),
(28, 11, 0, '12', '12', '77', '2022-04-23', '55', '0', '-6.2910082,106.7588609', '', 'download11.jpg'),
(29, 12, 0, '12', '12', '12', '2022-04-23', '12', '0', '-6.2910082,106.7588609', '', 'Picture12.png'),
(30, 13, 0, '12', '77', '55', '2022-04-23', '4444', '0', '-6.2910082,106.7588609', '', 'Picture13.png'),
(31, 14, 0, '7790', '55', '55', '2022-04-23', '55', '0', '-6.2910082,106.7588609', '', 'Picture14.png'),
(32, 14, 0, '7790', '55', '55', '2022-04-23', '55', '0', '-6.2910082,106.7588609', '', 'WhatsApp_Image_2021-07-04_at_17_14_563.jpeg'),
(34, 7, 0, '77', '33', '77', '2022-04-23', '55', '0', '-6.2944613,106.7619894', '', 'WhatsApp_Image_2021-07-04_at_17_14_564.jpeg'),
(35, 6, 0, '55', '12', '22', '2022-04-23', '55', '0', '-6.2944613,106.7619894', '', 'WhatsApp_Image_2021-07-04_at_17_14_565.jpeg'),
(38, 8, 0, '77', '55', '22', '2022-04-24', '999', '1', '-6.2910082,106.7588609', '', 'download12.jpg'),
(40, 7, 0, '77', '66', '66', '2022-04-25', '54', '0', '-6.2910082,106.7588609', 'anggota', 'kreshna2.png'),
(41, 13, 0, '12', '33', '22', '2022-04-25', '55', '0', '-6.2910082,106.7588609', 'anggota2', 'Picture16.png'),
(42, 8, 0, '77', '12', '12', '2022-04-26', '55', '1', '-6.2910082,106.7588609', 'aghasyaf', 'download13.jpg'),
(43, 10, 0, '77', '111', '11', '2022-04-27', '33', '0', '-6.2390272,106.807296', '', 'Picture17.png'),
(44, 6, 4, '90', '90', '90', '2022-04-27', '90', '0', '-6.2944566,106.762007', 'superadmin', 'bg21.png'),
(46, 10, 7, '12', '33', '12', '2022-04-28', '12', '0', '-6.2944569,106.7620063', 'superadmin', 'Picture18.png'),
(48, 7, 1, '12', '12', '12', '2022-04-29', '12', '2', '-6.2910082,106.7588609', 'superadmin', 'kamu22.jpeg'),
(55, 7, 4, '12', '12', '12', '2022-05-01', '12', '0', '-6.2910082,106.7588609', 'superadmin', 'kamu1.jpeg'),
(56, 6, 1, '12', '12', '122', '2022-05-01', '12', '0', '-6.2910082,106.7588609', 'superadmin', 'photo_2022-04-28_00-09-23.jpg'),
(58, 14, 8, '43', '43', '43', '2022-05-01', '43', '0', '-6.2910082,106.7588609', 'superadmin', 'teh.jpg'),
(59, 17, 5, '77', '77', '77', '2022-05-01', '77', '0', '-6.2910082,106.7588609', 'superadmin', 'seblak1.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tim`
--

CREATE TABLE `tim` (
  `id_tim` int(11) NOT NULL,
  `nama_tim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tim`
--

INSERT INTO `tim` (`id_tim`, `nama_tim`) VALUES
(1, 'Bima Panca Satya'),
(2, 'Cita Sandya'),
(3, 'Nusantara Merdeka'),
(4, 'Nusantara Bersatu'),
(5, 'Three Star'),
(6, 'Ini Tes'),
(7, 'Test 2'),
(8, 'Ini Tes 3'),
(9, 'Semangat 454');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_tim` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `level_id` int(11) NOT NULL,
  `gambar_user` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `is_active` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `full_name`, `username`, `password`, `email`, `id_tim`, `phone`, `level_id`, `gambar_user`, `created_at`, `is_active`) VALUES
(4, 'kreshna putra adi wicaksana', 'superadmin', '$2y$10$RV7haWUHmYHh6UnI8uNMyOxoidM4FHeMflim8i.HKSGFJ5dp6ZdD6', 'kreshnaputraadi31@student.uns.ac.id', 0, '081287560665', 1, 'kreshna2.png', '1650900711', '1'),
(9, 'Agnar Briantama Ridhwanullah', 'agnarbriantama', '$2y$10$5y8QLEzxr7Rsf.RnTKiZxu3s09AmyhLZwFbE3KLqrwGLGKg1EcjaC', 'agnarbriantama25@student.uns.ac.id', 1, '085235905122', 2, 'WhatsApp_Image_2021-07-04_at_17_14_563.jpeg', '1650900750', '1'),
(10, 'Agha Syafrila Myzanina', 'aghasyaf', '$2y$10$b55H.PR/s2NLoZpgvb/NRuYgOwkzIjFZLDPu7iWTWIykqrErRqBoe', 'aghasyafrilam@student.uns.ac.id', 1, '082324511375', 3, 'download3.jpg', '1650945898', '1'),
(11, ' Hildanniar Fauzi', 'hildanniar', '$2y$10$6gQkSwWyxDWJlpJu//VJ2eWogFjxGbzPvhg4F8.V.dgU.dZjEP8KO', 'hildanniarfauzi6@student.uns.ac.id', 2, '089685015606', 2, 'Picture18.png', '1651369870', '1'),
(12, 'Arin Dwi Padmasari', 'arindwip', '$2y$10$bIJK.yFFM0pyPknWFh9JtuV5Dgdzjr4CwWGx.W9QAjw.AR3N3x61u', 'arindwipadmasari_1@student.uns.ac.id', 2, '085748502961', 3, 'download.jpg', '1651369952', '1'),
(13, 'Rudi Tabuti', 'rudi123', '$2y$10$OrBpWMcs2Ns9gCW/uDG6uuyUentIxBW2ivOO.nUEAMNTUUBWsDvd.', 'khususkuliahuns@gmail.com', 3, '09888', 2, 'Picture1.png', '1651135596', '1'),
(16, 'test user', 'useruser', '$2y$10$LeK0lSgmZc7.tE8NY5MtqORGKV4VkanuupEaFbajWRfQ7gTKM7W0.', 'kreshnaputraadi31@student.uns.ac.id', 4, '333444', 2, 'Picture1.png', '1651368988', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indeks untuk tabel `tb_gardu`
--
ALTER TABLE `tb_gardu`
  ADD PRIMARY KEY (`id_gardu`);

--
-- Indeks untuk tabel `tb_pantauanharian`
--
ALTER TABLE `tb_pantauanharian`
  ADD PRIMARY KEY (`id_pantauan`),
  ADD KEY `id_gardu` (`id_gardu`);

--
-- Indeks untuk tabel `tim`
--
ALTER TABLE `tim`
  ADD PRIMARY KEY (`id_tim`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `level`
--
ALTER TABLE `level`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_gardu`
--
ALTER TABLE `tb_gardu`
  MODIFY `id_gardu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tb_pantauanharian`
--
ALTER TABLE `tb_pantauanharian`
  MODIFY `id_pantauan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `tim`
--
ALTER TABLE `tim`
  MODIFY `id_tim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_pantauanharian`
--
ALTER TABLE `tb_pantauanharian`
  ADD CONSTRAINT `id_gardu` FOREIGN KEY (`id_gardu`) REFERENCES `tb_gardu` (`id_gardu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
