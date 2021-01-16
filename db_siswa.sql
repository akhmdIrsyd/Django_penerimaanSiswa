-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 03:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add student', 7, 'add_student'),
(26, 'Can change student', 7, 'change_student'),
(27, 'Can delete student', 7, 'delete_student'),
(28, 'Can view student', 7, 'view_student'),
(29, 'Can add pengumuman', 8, 'add_pengumuman'),
(30, 'Can change pengumuman', 8, 'change_pengumuman'),
(31, 'Can delete pengumuman', 8, 'delete_pengumuman'),
(32, 'Can view pengumuman', 8, 'view_pengumuman'),
(33, 'Can add tombol', 9, 'add_tombol'),
(34, 'Can change tombol', 9, 'change_tombol'),
(35, 'Can delete tombol', 9, 'delete_tombol'),
(36, 'Can view tombol', 9, 'view_tombol'),
(37, 'Can add alur', 10, 'add_alur'),
(38, 'Can change alur', 10, 'change_alur'),
(39, 'Can delete alur', 10, 'delete_alur'),
(40, 'Can view alur', 10, 'view_alur'),
(41, 'Can add gambar', 11, 'add_gambar'),
(42, 'Can change gambar', 11, 'change_gambar'),
(43, 'Can delete gambar', 11, 'delete_gambar'),
(44, 'Can view gambar', 11, 'view_gambar'),
(45, 'Can add visimisi', 12, 'add_visimisi'),
(46, 'Can change visimisi', 12, 'change_visimisi'),
(47, 'Can delete visimisi', 12, 'delete_visimisi'),
(48, 'Can view visimisi', 12, 'view_visimisi');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-11-27 13:58:53.124893', '1', '1', 1, '[{\"added\": {}}]', 8, 1),
(2, '2020-11-27 13:59:26.638733', '1', 'admin@mail.com', 2, '[{\"changed\": {\"fields\": [\"User type\"]}}]', 6, 1),
(3, '2020-11-27 14:04:35.543760', '2', 'Student object (2)', 2, '[{\"changed\": {\"fields\": [\"Nama\", \"Alamat\", \"Sekolah\", \"Foto\", \"Ijazah\", \"SKHUN\", \"Status pendaftaran\", \"Status verifikasi\", \"Status seleksi\"]}}]', 7, 1),
(4, '2020-11-27 15:58:57.490316', '1', '1', 1, '[{\"added\": {}}]', 9, 1),
(5, '2020-11-27 15:59:04.794056', '1', '1', 2, '[{\"changed\": {\"fields\": [\"Is tombol\"]}}]', 9, 1),
(6, '2021-01-16 00:37:43.619054', '1', 'gambar object (1)', 1, '[{\"added\": {}}]', 11, 1),
(7, '2021-01-16 00:50:42.166627', '1', 'alur object (1)', 1, '[{\"added\": {}}]', 10, 1),
(8, '2021-01-16 01:14:00.454630', '1', 'visimisi object (1)', 1, '[{\"added\": {}}]', 12, 1),
(9, '2021-01-16 01:14:09.311064', '2', 'visimisi object (2)', 1, '[{\"added\": {}}]', 12, 1),
(10, '2021-01-16 01:49:29.809016', '2', 'gambar object (2)', 1, '[{\"added\": {}}]', 11, 1),
(11, '2021-01-16 01:49:54.408612', '3', 'gambar object (3)', 1, '[{\"added\": {}}]', 11, 1),
(12, '2021-01-16 02:07:15.024176', '1', 'alur object (1)', 2, '[{\"changed\": {\"fields\": [\"Alur\"]}}]', 10, 1),
(13, '2021-01-16 02:17:16.604190', '3', 'gambar object (3)', 2, '[{\"changed\": {\"fields\": [\"Gambar\"]}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(10, 'web_penerimaan', 'alur'),
(11, 'web_penerimaan', 'gambar'),
(8, 'web_penerimaan', 'pengumuman'),
(7, 'web_penerimaan', 'student'),
(9, 'web_penerimaan', 'tombol'),
(6, 'web_penerimaan', 'user'),
(12, 'web_penerimaan', 'visimisi');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-11-27 13:57:07.842197'),
(2, 'contenttypes', '0002_remove_content_type_name', '2020-11-27 13:57:07.954894'),
(3, 'auth', '0001_initial', '2020-11-27 13:57:08.133416'),
(4, 'auth', '0002_alter_permission_name_max_length', '2020-11-27 13:57:08.540327'),
(5, 'auth', '0003_alter_user_email_max_length', '2020-11-27 13:57:08.547308'),
(6, 'auth', '0004_alter_user_username_opts', '2020-11-27 13:57:08.554290'),
(7, 'auth', '0005_alter_user_last_login_null', '2020-11-27 13:57:08.561272'),
(8, 'auth', '0006_require_contenttypes_0002', '2020-11-27 13:57:08.565261'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2020-11-27 13:57:08.572280'),
(10, 'auth', '0008_alter_user_username_max_length', '2020-11-27 13:57:08.579260'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2020-11-27 13:57:08.587201'),
(12, 'auth', '0010_alter_group_name_max_length', '2020-11-27 13:57:08.604157'),
(13, 'auth', '0011_update_proxy_permissions', '2020-11-27 13:57:08.611138'),
(14, 'web_penerimaan', '0001_initial', '2020-11-27 13:57:08.757746'),
(15, 'admin', '0001_initial', '2020-11-27 13:57:09.252422'),
(16, 'admin', '0002_logentry_remove_auto_add', '2020-11-27 13:57:09.383073'),
(17, 'admin', '0003_logentry_add_action_flag_choices', '2020-11-27 13:57:09.392048'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2020-11-27 13:57:09.400060'),
(19, 'sessions', '0001_initial', '2020-11-27 13:57:09.450782'),
(20, 'web_penerimaan', '0002_auto_20200922_0025', '2020-11-27 13:57:09.503603'),
(21, 'web_penerimaan', '0003_auto_20200922_0026', '2020-11-27 13:57:09.538546'),
(22, 'web_penerimaan', '0004_auto_20200924_0926', '2020-11-27 13:57:09.547521'),
(23, 'web_penerimaan', '0005_auto_20201125_1359', '2020-11-27 13:57:09.582389'),
(24, 'web_penerimaan', '0006_student_nilai_skhu', '2020-11-27 14:34:26.084698'),
(25, 'web_penerimaan', '0007_tombol', '2020-11-27 15:57:44.416457'),
(26, 'web_penerimaan', '0008_auto_20210116_0718', '2021-01-16 00:19:28.678111');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('natzypecqz61t78ssnd4s8014kx2pixw', '.eJxVjEEOwiAQRe_C2hAHKAWX7nsGwsyAVA1NSrsy3l1JutDte-__lwhx30rYW1rDzOIiQJx-GUZ6pNoF32O9LZKWuq0zyp7IwzY5LZye16P9Oyixlb7OCM5p7UgNFlPUkC2erUqKkzbGESnnIZLlDJ6VtoPxo8MR0Fj4QvH-AOSBN6w:1l0b5R:NbDZkQZQvzTKpPfnNe6QK9cXKGNQca_QSgzvl6HMQDM', '2021-01-30 02:13:09.192961'),
('o8lirmepckjexp3e1i3edkidki7rngf3', '.eJxVjMsOwiAQRf-FtSGAvOrSvd_QDMOMVA0kpV0Z_92QdKHbe865bzHDvpV577TOSxYXcRan3y0BPqkOkB9Q701iq9u6JDkUedAuby3T63q4fwcFehm15UQM1oO2iI4hsCJvlCUbGTVrp_wUgJX2jg0BJkzRxmAmYEKdxOcLE4Y5Gw:1kt2Z7:AaRxVoOtv8u_yauN1YTfM8aAZR25ESwn7S1Msmq-nUo', '2021-01-09 05:56:33.142217'),
('wsk1qrr7bllogymb0b6s9yttlyavf3zl', '.eJxVjEEOwiAQRe_C2hAHKAWX7nsGwsyAVA1NSrsy3l1JutDte-__lwhx30rYW1rDzOIiQJx-GUZ6pNoF32O9LZKWuq0zyp7IwzY5LZye16P9Oyixlb7OCM5p7UgNFlPUkC2erUqKkzbGESnnIZLlDJ6VtoPxo8MR0Fj4QvH-AOSBN6w:1l0aVu:M6j_mpDM7YKO7-t94A_9kD8u09sNxGl5yxsHvgX6px8', '2021-01-30 01:36:26.268345'),
('za0lx1db7mt17f67cxvh46nh4okc9tyj', '.eJxVjDsOwjAQBe_iGln-fyjpc4Zos7smARRLcVIh7o4spYD2zcx7ixGOfR6Pxtu4kLgKIy6_2wT45LUDesB6rxLrum_LJLsiT9rkUIlft9P9O5ihzb2OlrTJphRKmL0DNEU5zlo7xzTZpHzIASEa5lS8TmRVoKhCKug5gPh8AeS5N-Y:1l0Ur4:17UO4-tPMWkWouBqB44o5gcFKx4wtx62jxxEAxd01jk', '2021-01-29 19:33:54.441858');

-- --------------------------------------------------------

--
-- Table structure for table `web_penerimaan_alur`
--

CREATE TABLE `web_penerimaan_alur` (
  `id` int(11) NOT NULL,
  `alur` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `web_penerimaan_alur`
--

INSERT INTO `web_penerimaan_alur` (`id`, `alur`) VALUES
(1, 'static/alur/cover.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `web_penerimaan_gambar`
--

CREATE TABLE `web_penerimaan_gambar` (
  `id` int(11) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `web_penerimaan_gambar`
--

INSERT INTO `web_penerimaan_gambar` (`id`, `gambar`) VALUES
(1, 'static/gambar/x.jpg'),
(2, 'static/gambar/cover.JPG'),
(3, 'static/gambar/dash-min.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `web_penerimaan_pengumuman`
--

CREATE TABLE `web_penerimaan_pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` longtext NOT NULL,
  `tanggal` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `web_penerimaan_pengumuman`
--

INSERT INTO `web_penerimaan_pengumuman` (`id`, `judul`, `isi`, `tanggal`) VALUES
(1, 'Pengumuman 1', 'pengumuman', '2020-11-27 13:58:53.123933');

-- --------------------------------------------------------

--
-- Table structure for table `web_penerimaan_student`
--

CREATE TABLE `web_penerimaan_student` (
  `nisn` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` longtext NOT NULL,
  `sekolah` varchar(100) NOT NULL,
  `nama_ayah` varchar(50) DEFAULT NULL,
  `nama_ibu` varchar(50) DEFAULT NULL,
  `alamat_orang_tua` longtext DEFAULT NULL,
  `Penghasilan_ayah` int(10) UNSIGNED NOT NULL CHECK (`Penghasilan_ayah` >= 0),
  `Penghasilan_ibu` int(10) UNSIGNED NOT NULL CHECK (`Penghasilan_ibu` >= 0),
  `foto` varchar(100) DEFAULT NULL,
  `ijazah` varchar(100) DEFAULT NULL,
  `SKHUN` varchar(100) DEFAULT NULL,
  `status_pendaftaran` int(10) UNSIGNED NOT NULL CHECK (`status_pendaftaran` >= 0),
  `status_verifikasi` int(10) UNSIGNED NOT NULL CHECK (`status_verifikasi` >= 0),
  `status_seleksi` int(10) UNSIGNED NOT NULL CHECK (`status_seleksi` >= 0),
  `nilai_skhu` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `web_penerimaan_student`
--

INSERT INTO `web_penerimaan_student` (`nisn`, `user_id`, `nama`, `alamat`, `sekolah`, `nama_ayah`, `nama_ibu`, `alamat_orang_tua`, `Penghasilan_ayah`, `Penghasilan_ibu`, `foto`, `ijazah`, `SKHUN`, `status_pendaftaran`, `status_verifikasi`, `status_seleksi`, `nilai_skhu`) VALUES
('12345', 2, 'siswa 1', 'alamat 1', 'sekolah 1', NULL, NULL, '', 1, 1, 'static/uploads/2/CFCFAC_Full_time_Insta_1080x1920_with_pic.jpg', 'static/uploads/2/778-2098-1-PB.pdf', 'static/uploads/2/Apostolopoulos-Mpesiana2020_Article_Covid-19AutomaticDetectionFrom.pdf', 2, 2, 3, 0),
('1234567999', 3, '', '', '', NULL, NULL, NULL, 1, 1, '', '', '', 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_penerimaan_tombol`
--

CREATE TABLE `web_penerimaan_tombol` (
  `id` int(11) NOT NULL,
  `is_tombol` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `web_penerimaan_tombol`
--

INSERT INTO `web_penerimaan_tombol` (`id`, `is_tombol`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_penerimaan_user`
--

CREATE TABLE `web_penerimaan_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_type` int(10) UNSIGNED NOT NULL CHECK (`user_type` >= 0),
  `email` varchar(254) NOT NULL,
  `is_student` tinyint(1) NOT NULL,
  `is_teacher` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `web_penerimaan_user`
--

INSERT INTO `web_penerimaan_user` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `user_type`, `email`, `is_student`, `is_teacher`) VALUES
(1, 'pbkdf2_sha256$216000$ghlrTdMUBtdj$15qT8PVvavi7XZgVlb0/S23phz2aF9a7kXRkPh21zI8=', '2021-01-16 02:13:09.188932', 1, '', '', 1, 1, '2020-11-27 13:57:53.000000', 3, 'admin@mail.com', 0, 0),
(2, 'pbkdf2_sha256$216000$FHIxK1dxDqQQ$Mh/VoY74PRXFLsM8Rs36+jECNQqLTCLwDbrm0O6lYLA=', '2021-01-15 19:47:48.097341', 0, '', '', 0, 1, '2020-11-27 14:00:52.796354', 1, 'siswa1@mail.com', 0, 0),
(3, 'pbkdf2_sha256$216000$ZUtQViEgRs6Y$LLIHMWiZ47vEq0NRa1REacq90hQ4DP7CbX0v09J1qyM=', '2020-12-26 05:56:33.136233', 0, '', '', 0, 1, '2020-12-26 05:56:32.870943', 1, 'siswa10@gmail.com', 0, 0),
(4, 'pbkdf2_sha256$216000$6PxQpyP4oGou$bROq0z+FeFN2obUAtLB6efR8+cqoaOU0iKdgjD+7/ng=', '2021-01-15 19:39:50.325735', 0, '', '', 0, 1, '2021-01-15 19:22:54.859759', 2, 'panitia@mail.com', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_penerimaan_user_groups`
--

CREATE TABLE `web_penerimaan_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `web_penerimaan_user_user_permissions`
--

CREATE TABLE `web_penerimaan_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `web_penerimaan_visimisi`
--

CREATE TABLE `web_penerimaan_visimisi` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `visimisi` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `web_penerimaan_visimisi`
--

INSERT INTO `web_penerimaan_visimisi` (`id`, `judul`, `visimisi`) VALUES
(1, 'Visi', 'aaaa'),
(2, 'Misi', '<ul><li>aaaaa</li><li>sfsf</li></ul>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_web_penerimaan_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `web_penerimaan_alur`
--
ALTER TABLE `web_penerimaan_alur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_penerimaan_gambar`
--
ALTER TABLE `web_penerimaan_gambar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_penerimaan_pengumuman`
--
ALTER TABLE `web_penerimaan_pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_penerimaan_student`
--
ALTER TABLE `web_penerimaan_student`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `nisn` (`nisn`);

--
-- Indexes for table `web_penerimaan_tombol`
--
ALTER TABLE `web_penerimaan_tombol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_penerimaan_user`
--
ALTER TABLE `web_penerimaan_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `web_penerimaan_user_groups`
--
ALTER TABLE `web_penerimaan_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_penerimaan_user_groups_user_id_group_id_5df7e42c_uniq` (`user_id`,`group_id`),
  ADD KEY `web_penerimaan_user_groups_group_id_068d9e66_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `web_penerimaan_user_user_permissions`
--
ALTER TABLE `web_penerimaan_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_penerimaan_user_user_user_id_permission_id_b1d08a19_uniq` (`user_id`,`permission_id`),
  ADD KEY `web_penerimaan_user__permission_id_b9b920ad_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `web_penerimaan_visimisi`
--
ALTER TABLE `web_penerimaan_visimisi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `web_penerimaan_alur`
--
ALTER TABLE `web_penerimaan_alur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `web_penerimaan_gambar`
--
ALTER TABLE `web_penerimaan_gambar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `web_penerimaan_pengumuman`
--
ALTER TABLE `web_penerimaan_pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `web_penerimaan_tombol`
--
ALTER TABLE `web_penerimaan_tombol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `web_penerimaan_user`
--
ALTER TABLE `web_penerimaan_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `web_penerimaan_user_groups`
--
ALTER TABLE `web_penerimaan_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_penerimaan_user_user_permissions`
--
ALTER TABLE `web_penerimaan_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_penerimaan_visimisi`
--
ALTER TABLE `web_penerimaan_visimisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_web_penerimaan_user_id` FOREIGN KEY (`user_id`) REFERENCES `web_penerimaan_user` (`id`);

--
-- Constraints for table `web_penerimaan_student`
--
ALTER TABLE `web_penerimaan_student`
  ADD CONSTRAINT `web_penerimaan_stude_user_id_1c97a51a_fk_web_pener` FOREIGN KEY (`user_id`) REFERENCES `web_penerimaan_user` (`id`);

--
-- Constraints for table `web_penerimaan_user_groups`
--
ALTER TABLE `web_penerimaan_user_groups`
  ADD CONSTRAINT `web_penerimaan_user__user_id_6a988c9b_fk_web_pener` FOREIGN KEY (`user_id`) REFERENCES `web_penerimaan_user` (`id`),
  ADD CONSTRAINT `web_penerimaan_user_groups_group_id_068d9e66_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `web_penerimaan_user_user_permissions`
--
ALTER TABLE `web_penerimaan_user_user_permissions`
  ADD CONSTRAINT `web_penerimaan_user__permission_id_b9b920ad_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `web_penerimaan_user__user_id_39250425_fk_web_pener` FOREIGN KEY (`user_id`) REFERENCES `web_penerimaan_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
