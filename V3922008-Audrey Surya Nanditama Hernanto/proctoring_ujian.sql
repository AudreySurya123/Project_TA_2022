-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Sep 2025 pada 15.02
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proctoring_ujian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_ujian`
--

CREATE TABLE `hasil_ujian` (
  `id` int(11) NOT NULL,
  `ujian_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hasil_ujian`
--

INSERT INTO `hasil_ujian` (`id`, `ujian_id`, `user_id`, `score`) VALUES
(46, 51, 29, 100),
(54, 57, 29, 100),
(55, 57, 32, 100),
(56, 57, 33, 100),
(57, 57, 37, 0),
(58, 59, 38, 100),
(59, 59, 29, 100),
(60, 59, 32, 100),
(61, 60, 29, 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban_ujian`
--

CREATE TABLE `jawaban_ujian` (
  `id` int(11) NOT NULL,
  `ujian_id` int(11) NOT NULL,
  `soal_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `jawaban_mahasiswa` varchar(255) DEFAULT NULL,
  `waktu_jawab` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jawaban_ujian`
--

INSERT INTO `jawaban_ujian` (`id`, `ujian_id`, `soal_id`, `users_id`, `jawaban_mahasiswa`, `waktu_jawab`) VALUES
(112, 51, 56, 29, 'a', '2025-07-24 11:47:21'),
(121, 57, 58, 29, 'a', '2025-07-30 14:17:45'),
(122, 57, 58, 32, 'a', '2025-08-01 06:38:24'),
(123, 57, 58, 33, 'a', '2025-08-03 14:54:05'),
(124, 57, 58, 37, 'b', '2025-08-04 15:08:25'),
(125, 59, 60, 38, 'b', '2025-08-08 13:04:21'),
(126, 59, 59, 38, 'b', '2025-08-08 13:04:21'),
(127, 59, 62, 38, 'b', '2025-08-08 13:04:21'),
(128, 59, 61, 38, 'a', '2025-08-08 13:04:21'),
(129, 59, 59, 29, 'b', '2025-08-11 16:19:24'),
(130, 59, 62, 29, 'b', '2025-08-11 16:19:24'),
(131, 59, 60, 29, 'b', '2025-08-11 16:19:24'),
(132, 59, 61, 29, 'a', '2025-08-11 16:19:24'),
(133, 59, 60, 32, 'b', '2025-08-11 16:43:25'),
(134, 59, 62, 32, 'b', '2025-08-11 16:43:25'),
(135, 59, 59, 32, 'b', '2025-08-11 16:43:25'),
(136, 59, 61, 32, 'a', '2025-08-11 16:43:25'),
(137, 60, 63, 29, 'c', '2025-08-28 14:51:52'),
(138, 60, 64, 29, 'b', '2025-08-28 14:51:52'),
(139, 60, 66, 29, 'd', '2025-08-28 14:51:52'),
(140, 60, 65, 29, 'c', '2025-08-28 14:51:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `kelas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`) VALUES
(4, 'TID'),
(5, 'TIE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id` int(11) NOT NULL,
  `kode_mk` varchar(10) NOT NULL,
  `nama_mk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id`, `kode_mk`, `nama_mk`) VALUES
(22, 'MK01', 'Front End'),
(23, 'MK02', 'Back End'),
(24, 'MK03', 'IOT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `proctoring`
--

CREATE TABLE `proctoring` (
  `id` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  `bentuk_kecurangan` varchar(255) NOT NULL,
  `bukti` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ujian_id` int(11) NOT NULL,
  `dosen_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `proctoring`
--

INSERT INTO `proctoring` (`id`, `waktu`, `bentuk_kecurangan`, `bukti`, `user_id`, `ujian_id`, `dosen_id`) VALUES
(1, '2025-08-08 20:03:50', 'Menoleh', 'static\\bukti\\cheating_capture_20250808_200350.jpg', 38, 59, 38),
(3, '2025-08-08 20:03:50', 'Menoleh', 'static\\bukti\\cheating_capture_20250808_200350.jpg', 38, 59, 38),
(4, '2025-08-08 20:03:50', 'Menoleh', 'static\\bukti\\cheating_capture_20250808_200350.jpg', 38, 59, 38),
(5, '2025-08-08 20:03:50', 'Menoleh', 'static\\bukti\\cheating_capture_20250808_200350.jpg', 38, 59, 38),
(6, '2025-08-08 20:03:51', 'Menoleh', 'static\\bukti\\cheating_capture_20250808_200351.jpg', 38, 59, 38),
(7, '2025-08-08 20:03:51', 'Menoleh', 'static\\bukti\\cheating_capture_20250808_200351.jpg', 38, 59, 38),
(8, '2025-08-08 20:03:55', 'Smartphone', 'static\\bukti\\cheating_capture_20250808_200355.jpg', 38, 59, 38),
(9, '2025-08-08 20:03:55', 'Smartphone', 'static\\bukti\\cheating_capture_20250808_200355.jpg', 38, 59, 38),
(10, '2025-08-08 20:03:55', 'Smartphone', 'static\\bukti\\cheating_capture_20250808_200355.jpg', 38, 59, 38),
(11, '2025-08-08 20:03:55', 'Smartphone', 'static\\bukti\\cheating_capture_20250808_200355.jpg', 38, 59, 38),
(12, '2025-08-08 20:03:56', 'Smartphone', 'static\\bukti\\cheating_capture_20250808_200356.jpg', 38, 59, 38),
(13, '2025-08-08 20:03:56', 'Smartphone', 'static\\bukti\\cheating_capture_20250808_200356.jpg', 38, 59, 38),
(14, '2025-08-08 20:03:56', 'Smartphone', 'static\\bukti\\cheating_capture_20250808_200356.jpg', 38, 59, 38),
(15, '2025-08-08 20:04:09', 'Kertas', 'static\\bukti\\cheating_capture_20250808_200409.jpg', 38, 59, 38),
(16, '2025-08-08 20:04:12', 'Kertas', 'static\\bukti\\cheating_capture_20250808_200412.jpg', 38, 59, 38),
(17, '2025-08-08 20:04:12', 'Kertas', 'static\\bukti\\cheating_capture_20250808_200412.jpg', 38, 59, 38),
(18, '2025-08-08 20:04:12', 'Kertas', 'static\\bukti\\cheating_capture_20250808_200412.jpg', 38, 59, 38),
(19, '2025-08-08 20:04:13', 'Kertas', 'static\\bukti\\cheating_capture_20250808_200413.jpg', 38, 59, 38),
(20, '2025-08-08 20:04:13', 'Kertas', 'static\\bukti\\cheating_capture_20250808_200413.jpg', 38, 59, 38),
(21, '2025-08-08 20:04:14', 'Kertas', 'static\\bukti\\cheating_capture_20250808_200414.jpg', 38, 59, 38),
(22, '2025-08-08 20:04:14', 'Kertas', 'static\\bukti\\cheating_capture_20250808_200414.jpg', 38, 59, 38),
(23, '2025-08-08 20:04:14', 'Kertas', 'static\\bukti\\cheating_capture_20250808_200414.jpg', 38, 59, 38),
(24, '2025-08-08 20:04:15', 'Kertas', 'static\\bukti\\cheating_capture_20250808_200415.jpg', 38, 59, 38),
(25, '2025-08-08 20:04:15', 'Kertas', 'static\\bukti\\cheating_capture_20250808_200415.jpg', 38, 59, 38),
(26, '2025-08-08 20:04:15', 'Kertas', 'static\\bukti\\cheating_capture_20250808_200415.jpg', 38, 59, 38),
(27, '2025-08-08 20:04:15', 'Kertas', 'static\\bukti\\cheating_capture_20250808_200415.jpg', 38, 59, 38),
(28, '2025-08-11 23:12:33', 'Smartphone', 'static\\bukti\\cheating_20250811_231233.jpg', 29, 59, 29),
(29, '2025-08-11 23:12:59', 'Menoleh', 'static\\bukti\\cheating_20250811_231259.jpg', 29, 59, 29),
(30, '2025-08-11 23:13:03', 'Menoleh', 'static\\bukti\\cheating_20250811_231303.jpg', 29, 59, 29),
(31, '2025-08-11 23:13:47', 'Menoleh', 'static\\bukti\\cheating_20250811_231347.jpg', 29, 59, 29),
(32, '2025-08-11 23:15:29', 'Menoleh', 'static\\bukti\\cheating_20250811_231529.jpg', 29, 59, 29),
(33, '2025-08-11 23:15:49', 'Menoleh', 'static\\bukti\\cheating_20250811_231549.jpg', 29, 59, 29),
(34, '2025-08-11 23:43:18', 'Smartphone', 'static\\bukti\\cheating_capture_20250811_234318.jpg', 32, 59, 32),
(35, '2025-08-11 23:43:18', 'Smartphone', 'static\\bukti\\cheating_capture_20250811_234318.jpg', 32, 59, 32),
(36, '2025-08-11 23:43:18', 'Smartphone', 'static\\bukti\\cheating_capture_20250811_234318.jpg', 32, 59, 32),
(37, '2025-08-11 23:43:18', 'Smartphone', 'static\\bukti\\cheating_capture_20250811_234318.jpg', 32, 59, 32),
(38, '2025-08-11 23:43:19', 'Smartphone', 'static\\bukti\\cheating_capture_20250811_234319.jpg', 32, 59, 32),
(39, '2025-08-11 23:43:23', 'Menoleh', 'static\\bukti\\cheating_capture_20250811_234323.jpg', 32, 59, 32);

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id` int(11) NOT NULL,
  `ujian_id` int(11) DEFAULT NULL,
  `soal` text DEFAULT NULL,
  `pilihan_a` text DEFAULT NULL,
  `pilihan_b` text DEFAULT NULL,
  `pilihan_c` text DEFAULT NULL,
  `pilihan_d` text DEFAULT NULL,
  `pilihan_e` text DEFAULT NULL,
  `jawaban_benar` char(1) DEFAULT NULL,
  `bobot_nilai` float DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id`, `ujian_id`, `soal`, `pilihan_a`, `pilihan_b`, `pilihan_c`, `pilihan_d`, `pilihan_e`, `jawaban_benar`, `bobot_nilai`) VALUES
(56, 51, 'tes', 'tes', 'tes', 'tes', 'tes', 'tes', 'a', 100),
(58, 57, 'tes', 'tes', 'tes', 'tes', 'tes', 'tes', 'a', 100),
(59, 59, 'CSS digunakan untuk?', 'Menyimpan data', 'Mengatur tampilan', 'Membuat server', 'Mengelola database', 'Menghapus file', 'b', 25),
(60, 59, 'Tag <img> digunakan untuk menampilkan?', 'Video', 'Gambar', 'Audio', 'Tabel', 'Link', 'b', 25),
(61, 59, 'Javascript biasanya digunakan untuk?', 'Membuat halaman interaktif', 'Menyimpan data di server', 'Mengedit gambar', 'Menjalankan sistem operasi', 'Mengatur kabel jaringan', 'a', 25),
(62, 59, 'Tag <a> dalam HTML digunakan untuk?', 'Menambahkan gambar', 'Membuat Link', 'Membuat tabel', 'Memutar musik', 'Mengatur font', 'b', 25),
(63, 60, 'Bahasa utama untuk struktur halaman web adalah …', 'Python', 'Java', 'HTML', 'PHP', 'C++', 'c', 25),
(64, 60, 'CSS digunakan untuk …', 'Menghitung data', 'Mengatur tampilan halaman web', 'Menyimpan database', 'Membuat API', 'Mengelola server', 'b', 25),
(65, 60, 'Framework JavaScript yang populer untuk front-end adalah …', 'Django', 'Laravel', 'React', 'Flask', 'Spring', 'c', 25),
(66, 60, 'Tag untuk menampilkan gambar di HTML adalah …', '<div>', '<span>', '<p>', '<img>', '<link>', 'd', 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian`
--

CREATE TABLE `ujian` (
  `id` int(11) NOT NULL,
  `nama_ujian` varchar(255) NOT NULL,
  `matakuliah_id` int(11) NOT NULL,
  `acak_soal` enum('ya','tidak') DEFAULT 'tidak',
  `waktu_mulai` datetime NOT NULL,
  `waktu_selesai` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `kelas_id` int(11) DEFAULT NULL,
  `dosen_id` int(11) DEFAULT NULL,
  `is_submitted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ujian`
--

INSERT INTO `ujian` (`id`, `nama_ujian`, `matakuliah_id`, `acak_soal`, `waktu_mulai`, `waktu_selesai`, `created_at`, `kelas_id`, `dosen_id`, `is_submitted`) VALUES
(51, 'Ujian Back End', 23, 'ya', '2025-07-27 14:19:00', '2025-07-27 15:28:00', '2025-07-24 11:29:02', 4, 27, 1),
(57, 'Ujian IOT', 24, 'ya', '2025-08-04 22:06:00', '2025-08-04 23:06:00', '2025-07-30 14:15:43', 4, 27, 1),
(59, 'Ujian Front End', 22, 'ya', '2025-08-11 23:11:00', '2025-08-11 23:50:00', '2025-08-08 12:59:09', 4, 27, 1),
(60, 'UTS', 22, 'ya', '2025-08-28 21:43:00', '2025-08-28 23:43:00', '2025-08-28 14:43:34', 4, 27, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('dosen','mahasiswa','admin') NOT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `nim` varchar(50) DEFAULT NULL,
  `prodi` varchar(100) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`, `role`, `no_hp`, `alamat`, `nip`, `nim`, `prodi`, `jabatan`, `kelas_id`, `created_at`) VALUES
(21, 'Admin', 'admin@gmail.com', 'scrypt:32768:8:1$hpFeyDsPVxF6GEN0$a5cb3746ffd50d5952564c69aa2cd7dc38e520515158d34ff1b5f63c5fe4443b1ec2f90106970a6a5c1de742b8e6aa6943e3e9ef456fd550116d0f8a05eafb98', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-24 16:27:14'),
(27, 'Dosen', 'dosen@gmail.com', 'scrypt:32768:8:1$j3NX7j8Bg3o3VVEC$752c297a0037ed4882fc52a0a3c8718f33ec6d8ca846339cb608cca5058c4a7577f732352c6f439aaff01ae8e2cf6137cfeed1df5a2d37b2781cea74e94bf905', 'dosen', '081231002501', 'Jl. Cokroaminoto\r\n151B', '12345', NULL, NULL, 'Kaprodi', NULL, '2025-05-27 15:50:10'),
(28, 'Tama', 'tama@gmail.com', 'scrypt:32768:8:1$R9Dqw8F3aw8cXv4S$7a92f88f0d1b29411b63ad6097a8b9ff3c1994881439fa5e60360b87925fab8003ab31ef9c3b2d7b4e4f6ba141882058dc3e5c9a0117715989eedda77d66e38c', 'dosen', '081231002501', 'Jl. Cokroaminoto\r\n151', '123', NULL, NULL, 'Dosen', NULL, '2025-05-27 15:50:28'),
(29, 'Surya', 'surya@gmail.com', 'scrypt:32768:8:1$O3urfrqf5HEoQHBo$eab88d3786c10a88bed28701585a6f0fc12b4d0711ad21d9f4306c25ea134f56cf835cc47fff28cc6dd38f864d7d577e7a36b65c50c19e15147829e30c1889ef', 'mahasiswa', '081231002501', 'Jl. Cokroaminoto\r\n151', NULL, 'V3922008', 'TI', NULL, 4, '2025-05-27 15:50:56'),
(32, 'Nanditama', 'nanditama@gmail.com', 'scrypt:32768:8:1$sKaRiP48egoBDiWW$dec21a4a44cb7b01292c6c399781bbddc1b9130fbc1d0b5efae41140b595bf11eda736415e5acde49a2114274587e3c521f5d757594bbcaf475c3eeddf5c82b6', 'mahasiswa', '081231002501', 'Jl. Cokroaminoto\r\n151', NULL, 'V3922010', 'TI', NULL, 4, '2025-06-15 16:37:28'),
(33, 'Angga Yudho ', 'angga@gmail.com', 'scrypt:32768:8:1$uGpLk2OpRvoAFJqX$aaba19bd2cb1b7fe9529d476686002c35c3ed5c3c91b1d85e295c7ee26c39716dbd8c4ff59759857448531831463111f2ec20049a2e21e2808e0c7f0a496dae7', 'mahasiswa', '081231002501', 'Jl. Cokroaminoto\r\n151', NULL, 'V3922006', 'TI', NULL, 4, '2025-07-07 07:48:49'),
(35, 'Rifqy Rivaldi', 'valdi@gmail.com', 'scrypt:32768:8:1$E0mZmkApIZlQLzoi$d3c63a0ca25acbe1bc84b7c244ed8ca7737cccb6cc03ce3a1ae2e82620ad6fbbe49b909d74e79d87a525d162576c9ab76a933e81b49de8307afcf300ca275059', 'mahasiswa', '081231002501', 'Jl. Cokroaminoto\r\n151', NULL, 'V3922040', 'TI', NULL, 4, '2025-07-07 07:53:00'),
(36, 'Wahyu Ramadhan', 'wahyu@gmail.com', 'scrypt:32768:8:1$E3h1s1ZG70JSTAQi$91424cd1465afb88b4a375e0d27b95595eb98927d6cb4fe96b2e65990a37dda4ead875c91b8d6343e577e3c4438468b638766eafbab54d756e2089b068d1880e', 'mahasiswa', '081231002501', 'Jl. Cokroaminoto\r\n151', NULL, 'V3922046', 'TI', NULL, 4, '2025-07-07 07:55:16'),
(37, 'Subekti Bimo', 'bimo@gmail.com', 'scrypt:32768:8:1$d7TIiUmMfOSJ6KIw$2b11ae96527d5a04827a9095e63b5f115acc50014f9c25b556751c46013a04b005b3dcfc511657e2888a08abb510de624c4d455dc57f0b4f49c3673bd82b53df', 'mahasiswa', '081231002501', 'Jl. Cokroaminoto\r\n151', NULL, 'V3922041', 'TI', NULL, 4, '2025-07-07 08:10:03'),
(38, 'Mahasiswa', 'mahasiswa@gmail.com', 'scrypt:32768:8:1$hBKIRAAj9gJQp9JB$6fd8c67e9eabb9343a79c2235c38fce4e5a6f039e1a89cec7841473de846a15bacd480a0f1a5e3c64db40052763e2393ca755f84d83f1aadfaa08b612ee27934', 'mahasiswa', '081231002501', 'Jl. Cokroaminoto\r\n151', NULL, 'V3922050', 'TI', NULL, 4, '2025-08-08 12:41:18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `hasil_ujian`
--
ALTER TABLE `hasil_ujian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hasil_ujian_ibfk_1` (`ujian_id`),
  ADD KEY `hasil_ujian_ibfk_2` (`user_id`);

--
-- Indeks untuk tabel `jawaban_ujian`
--
ALTER TABLE `jawaban_ujian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jawaban_ujian_ibfk_1` (`ujian_id`),
  ADD KEY `jawaban_ujian_ibfk_2` (`soal_id`),
  ADD KEY `jawaban_ujian_ibfk_3` (`users_id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `proctoring`
--
ALTER TABLE `proctoring`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proctoring_ibfk_1` (`user_id`),
  ADD KEY `proctoring_ibfk_2` (`ujian_id`),
  ADD KEY `proctoring_ibfk_3` (`dosen_id`);

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `soal_ibfk_1` (`ujian_id`);

--
-- Indeks untuk tabel `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dosen` (`dosen_id`),
  ADD KEY `fk_matakuliah` (`matakuliah_id`),
  ADD KEY `ujian_ibfk_1` (`kelas_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD UNIQUE KEY `nim` (`nim`),
  ADD KEY `fk_kelas` (`kelas_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hasil_ujian`
--
ALTER TABLE `hasil_ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `jawaban_ujian`
--
ALTER TABLE `jawaban_ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `proctoring`
--
ALTER TABLE `proctoring`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hasil_ujian`
--
ALTER TABLE `hasil_ujian`
  ADD CONSTRAINT `hasil_ujian_ibfk_1` FOREIGN KEY (`ujian_id`) REFERENCES `ujian` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hasil_ujian_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jawaban_ujian`
--
ALTER TABLE `jawaban_ujian`
  ADD CONSTRAINT `jawaban_ujian_ibfk_1` FOREIGN KEY (`ujian_id`) REFERENCES `ujian` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jawaban_ujian_ibfk_2` FOREIGN KEY (`soal_id`) REFERENCES `soal` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jawaban_ujian_ibfk_3` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `proctoring`
--
ALTER TABLE `proctoring`
  ADD CONSTRAINT `proctoring_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `proctoring_ibfk_2` FOREIGN KEY (`ujian_id`) REFERENCES `ujian` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD CONSTRAINT `soal_ibfk_1` FOREIGN KEY (`ujian_id`) REFERENCES `ujian` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ujian`
--
ALTER TABLE `ujian`
  ADD CONSTRAINT `fk_dosen` FOREIGN KEY (`dosen_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_matakuliah` FOREIGN KEY (`matakuliah_id`) REFERENCES `mata_kuliah` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ujian_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_kelas` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
