-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 05, 2023 at 03:36 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karirimpian`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `user_id` varchar(32) NOT NULL,
  `username` varchar(125) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `acctype` enum('user','company') NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`user_id`, `username`, `email`, `password`, `acctype`, `created`) VALUES
('CMP652d0943eb0c5', 'udin', 'udin@gmail.com', '$2y$10$dcDvKovitQuO/ZInKu1Hae/1ntmzM7bO5YvlJqpOVHnIXjzRP51aK', 'company', '2023-10-16 09:58:28'),
('CMP652d0a2ee5138', 'company', 'comp@gmail.com', '$2y$10$8HtfN8LRKH28zmNGB1gCGOFKOWYo2jj4cMmaRWTB57cTIYw4k7lUq', 'company', '2023-10-16 10:02:23'),
('CMP653342d27089e', 'Kafe Nako', 'kapi@gmail.com', '$2y$10$bTttfG0P.mMEsgrywH96leSpZCvRXIX3AE2xctOJ2HUgAVZ2ZZ6Mu', 'company', '2023-10-21 03:17:39'),
('CMP6546438a178cb', 'azzam', 'azzam@jagocyber.com', '$2y$10$oUuAOB8jWTvUWn4DLY9/KeBnfyFiUc.VAgg45M5oElmiq8AFjUvIG', 'company', '2023-11-04 13:13:46'),
('USR652d3b8d403aa', 'user', 'user@gmail.com', '$2y$10$FQfQ564l9OoQovT95exIV.uRL4nsJf526BIcYHY.ztZVM2nYJAiwG', 'user', '2023-10-16 13:33:01'),
('USR652d3be01043b', 'gtau', 'gtau@gmail.com', '$2y$10$7yejSPS0LRiGeOpb150Wv.PA43BAzLWhL7h.yPMvd/3UGMrFm1OLK', 'user', '2023-10-16 13:34:24'),
('USR65337ccc2d304', 'anjay', 'anjay@gmail.com', '$2y$10$G6XfqSmlIkJF2EOi/Js0weckhFYFLxQb58Lkm.cWAgC8eAOsayEby', 'user', '2023-10-21 07:25:00'),
('USR65339b793d151', 'gery', 'gery@gmail.com', '$2y$10$LbUQ/9WquTCrdhNOQa3dP.O15jpQ8M4JKkgi2NzdLCqswo3OtFx0a', 'user', '2023-10-21 09:35:53'),
('USR65410ad241eac', 'nipudin', 'nipudin@gmail.com', '$2y$10$w6fHaHSWrUCtAy6INMJWCuTOTVcq6oDyjET6od/7hOwgqi1JZIHTC', 'user', '2023-10-31 14:10:26');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `user_id` varchar(32) NOT NULL,
  `companyname` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `profile_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'company.jpg',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Belum Ada',
  `about` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Belum Ada',
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Belum Ada'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`user_id`, `companyname`, `email`, `profile_img`, `description`, `about`, `address`) VALUES
('CMP652d0943eb0c5', 'udin', 'udin@gmail.com', 'company.jpg', 'Belum Ada', 'Belum Ada', 'Belum Ada'),
('CMP652d0a2ee5138', 'company', 'comp@gmail.com', 'company.jpg', 'Perusahaan di bidang gatau', 'helololo', 'di mana hatiku senang'),
('CMP653342d27089e', 'Kafe Nako', 'kapi@gmail.com', 'company.jpg', 'Belum Ada', 'Belum Ada', 'Belum Ada'),
('CMP6546438a178cb', 'azzam', 'azzam@jagocyber.com', 'company.jpg', 'Belum Ada', 'Belum Ada', 'Belum Ada');

-- --------------------------------------------------------

--
-- Table structure for table `lamaran`
--

CREATE TABLE `lamaran` (
  `lamaran_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `job_id` varchar(32) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `status` enum('pending','accepted','declined') NOT NULL,
  `company` varchar(32) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lamaran`
--

INSERT INTO `lamaran` (`lamaran_id`, `job_id`, `user_id`, `status`, `company`, `time`) VALUES
('65367f637d847', '653343fa38bb3', 'USR65339b793d151', 'pending', 'CMP653342d27089e', '2023-10-23 14:12:51.514159'),
('6541046f54109', '652d405b11a69', 'USR65339b793d151', 'accepted', 'CMP652d0a2ee5138', '2023-10-31 13:43:11.344370'),
('65410473513ad', '652e5c45769bf', 'USR65339b793d151', 'declined', 'CMP652d0a2ee5138', '2023-10-31 13:43:15.332764'),
('6541f8e008e80', '6541f7183dd92', 'USR65410ad241eac', 'accepted', 'CMP652d0943eb0c5', '2023-11-01 07:06:08.036508'),
('6545cced84569', '652d405b11a69', 'USR65410ad241eac', 'accepted', 'CMP652d0a2ee5138', '2023-11-04 04:47:41.542081');

-- --------------------------------------------------------

--
-- Table structure for table `loker`
--

CREATE TABLE `loker` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `company` varchar(32) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `short_desc` varchar(200) DEFAULT NULL,
  `detail` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `loker`
--

INSERT INTO `loker` (`id`, `company`, `name`, `short_desc`, `detail`, `created_at`) VALUES
('652d405b11a69', 'CMP652d0a2ee5138', 'Kuli DKF Expert', 'Saya butuh orang kreatif', 'Jadi kuli dengan kretivitas', '2023-10-16 13:53:31.072370'),
('652e5c45769bf', 'CMP652d0a2ee5138', 'DKF Reguler', 'kamu butuh orang', 'kami butuh orang yang ada kretiitas walau sedikit', '2023-10-17 10:04:53.485946'),
('653343fa38bb3', 'CMP653342d27089e', 'Tukang Parkir', 'Saya butuh tukang parkir', 'Belakangan ini saya melihat banyak yang datang berkunjung ke cafe saya, Tapi saya hanya memiliki satu tukang parkir. maka dari itu bagi yang berkeinginan menjadi tukang parkir di cafe saya, silahkan melamar\r\n\r\nKriteria Pekerja :\r\n\r\n- Laki-laki\r\n\r\n- Usia 17-40 tahun\r\n\r\n- Memiliki Adab, akhlak dan karakter 3B\r\n', '2023-10-21 03:22:34.232447'),
('6541f7183dd92', 'CMP652d0943eb0c5', 'Jadi Raja IT di SI', 'Kami butuh orang2 multi talent', 'Kriteria \r\nBisa Semuanya', '2023-11-01 06:58:32.253446'),
('6541f7d05ec0d', 'CMP652d0943eb0c5', 'Jadi Raja IT di SI', 'Kami butuh orang2 multi talent', 'Kriteria \r\nBisa Semuanya', '2023-11-01 07:01:36.388165');

-- --------------------------------------------------------

--
-- Table structure for table `notif`
--

CREATE TABLE `notif` (
  `notif_id` varchar(32) NOT NULL,
  `company` varchar(32) NOT NULL,
  `user` varchar(32) NOT NULL,
  `job_id` varchar(32) NOT NULL,
  `status` enum('read','unread') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` enum('pending','accepted','declined','') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tujuan` varchar(32) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notif`
--

INSERT INTO `notif` (`notif_id`, `company`, `user`, `job_id`, `status`, `type`, `tujuan`, `time`) VALUES
('653523cd707b7', 'CMP652d0a2ee5138', 'USR65339b793d151', '652d405b11a69', 'unread', 'pending', 'CMP652d0a2ee5138', '2023-10-22 13:58:50.310878'),
('65367ceb5eea0', 'CMP652d0a2ee5138', 'USR65339b793d151', '652d405b11a69', 'unread', 'pending', 'CMP652d0a2ee5138', '2023-10-23 14:02:19.390209'),
('65367cf2f3859', 'CMP652d0a2ee5138', 'USR65339b793d151', '652d405b11a69', 'unread', 'pending', 'CMP652d0a2ee5138', '2023-10-23 14:02:26.998808'),
('65367d4356076', 'CMP652d0a2ee5138', 'USR65339b793d151', '652d405b11a69', 'unread', 'pending', 'CMP652d0a2ee5138', '2023-10-23 14:03:47.354248'),
('65367d4811f40', 'CMP652d0a2ee5138', 'USR65339b793d151', '652d405b11a69', 'unread', 'pending', 'CMP652d0a2ee5138', '2023-10-23 14:03:52.074715'),
('65367d7103401', 'CMP652d0a2ee5138', 'USR65339b793d151', '652d405b11a69', 'unread', 'pending', 'CMP652d0a2ee5138', '2023-10-23 14:04:33.020122'),
('65367db833fee', 'CMP652d0a2ee5138', 'USR65339b793d151', '652d405b11a69', 'unread', 'pending', 'CMP652d0a2ee5138', '2023-10-23 14:05:44.219753'),
('65367dc7e8b65', 'CMP652d0a2ee5138', 'USR65339b793d151', '652d405b11a69', 'unread', 'pending', 'CMP652d0a2ee5138', '2023-10-23 14:05:59.960317'),
('65367dd30e4bc', 'CMP652d0a2ee5138', 'USR65339b793d151', '652d405b11a69', 'unread', 'pending', 'CMP652d0a2ee5138', '2023-10-23 14:06:11.059800'),
('65367e0e01560', 'CMP652d0a2ee5138', 'USR65339b793d151', '652d405b11a69', 'unread', 'pending', 'CMP652d0a2ee5138', '2023-10-23 14:07:10.012194'),
('65367f4ee8050', 'CMP652d0a2ee5138', 'USR65339b793d151', '652d405b11a69', 'unread', 'pending', 'CMP652d0a2ee5138', '2023-10-23 14:12:30.951665'),
('65367f5a84ccc', 'CMP652d0a2ee5138', 'USR65339b793d151', '652d405b11a69', 'unread', 'pending', 'CMP652d0a2ee5138', '2023-10-23 14:12:42.550883'),
('65367f613fcb7', 'CMP652d0a2ee5138', 'USR65339b793d151', '652e5c45769bf', 'unread', 'pending', 'CMP652d0a2ee5138', '2023-10-23 14:12:49.262621'),
('65367f637d847', 'CMP653342d27089e', 'USR65339b793d151', '653343fa38bb3', 'unread', 'pending', 'CMP653342d27089e', '2023-10-23 14:12:51.515607'),
('6541046f54109', 'CMP652d0a2ee5138', 'USR65339b793d151', '652d405b11a69', 'unread', 'pending', 'CMP652d0a2ee5138', '2023-10-31 13:43:11.346686'),
('65410473513ad', 'CMP652d0a2ee5138', 'USR65339b793d151', '652e5c45769bf', 'unread', 'pending', 'CMP652d0a2ee5138', '2023-10-31 13:43:15.339089'),
('6541f8e008e80', 'CMP652d0943eb0c5', 'USR65410ad241eac', '6541f7183dd92', 'unread', 'pending', 'CMP652d0943eb0c5', '2023-11-01 07:06:08.038109'),
('6545cced84569', 'CMP652d0a2ee5138', 'USR65410ad241eac', '652d405b11a69', 'unread', 'pending', 'CMP652d0a2ee5138', '2023-11-04 04:47:41.547709');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `skillname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `level` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `user_id`, `skillname`, `level`) VALUES
('6536802400e67', 'USR65339b793d151', 'Designer', 'Advanced'),
('6541f45e958fa', 'USR65410ad241eac', 'After Effects', 'Intermediate'),
('6541f46fe38b6', 'USR65410ad241eac', 'Photoshop & Illustrator', 'Intermediate'),
('6541f4785b9ed', 'USR65410ad241eac', 'Premiere Pro', 'Intermediate'),
('6541f48a4c90e', 'USR65410ad241eac', 'Full-Stack Developer', 'Intermediate');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(32) NOT NULL,
  `username` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `profile_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'user.png',
  `bio` varchar(255) NOT NULL DEFAULT 'Bio Not Set',
  `about` varchar(4000) NOT NULL DEFAULT 'Welcome To My Profile',
  `experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Not Set',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Not Set',
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Not Set'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `profile_img`, `bio`, `about`, `experience`, `address`, `instagram`) VALUES
('USR652d3b8d403aa', 'user', 'user@gmail.com', 'user.png', 'Bio Not Set', 'Welcome To My Profile', 'Not Set', 'Not Set', 'Not Set'),
('USR652d3be01043b', 'gtau', 'gtau@gmail.com', 'user.png', 'Bio Not Set', 'Welcome To My Profile', 'Not Set', 'Not Set', 'Not Set'),
('USR65337ccc2d304', 'anjay', 'anjay@gmail.com', 'user.png', 'Bio Not Set', 'Welcome To My Profile', 'Not Set', 'Not Set', 'Not Set'),
('USR65339b793d151', 'Gery', 'gery@gmail.com', 'USR65339b793d151', 'anjay', 'Saya desainer grafis style texture kertas', 'Jadi ODT DKV di SI', 'bekasi', 'gryzrinhsmn'),
('USR65410ad241eac', 'nipudin', 'nipudin@gmail.com', 'USR65410ad241eac', 'Hapis Hanipudin', 'Welcome To My Profile', 'jadi orang', 'Cimanggis Indah Depok', 'hapishanipudin');

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `works_id` varchar(32) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `company_id` varchar(32) NOT NULL,
  `work_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`works_id`, `user_id`, `company_id`, `work_name`) VALUES
('653683b65abad', 'USR65339b793d151', 'CMP652d0a2ee5138', 'Kuli DKF Expert'),
('653683e48b760', 'USR65339b793d151', 'CMP652d0a2ee5138', 'DKF Reguler'),
('654107049ed96', 'USR65339b793d151', 'CMP652d0a2ee5138', 'Kuli DKF Expert'),
('6541f8edbcef5', 'USR65410ad241eac', 'CMP652d0943eb0c5', 'Jadi Raja IT di SI'),
('6545ccfc81b42', 'USR65410ad241eac', 'CMP652d0a2ee5138', 'Kuli DKF Expert');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `lamaran`
--
ALTER TABLE `lamaran`
  ADD PRIMARY KEY (`lamaran_id`);

--
-- Indexes for table `loker`
--
ALTER TABLE `loker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company` (`company`);

--
-- Indexes for table `notif`
--
ALTER TABLE `notif`
  ADD PRIMARY KEY (`notif_id`),
  ADD KEY `company` (`company`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`works_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loker`
--
ALTER TABLE `loker`
  ADD CONSTRAINT `loker_ibfk_1` FOREIGN KEY (`company`) REFERENCES `company` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notif`
--
ALTER TABLE `notif`
  ADD CONSTRAINT `notif_ibfk_1` FOREIGN KEY (`company`) REFERENCES `company` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notif_ibfk_2` FOREIGN KEY (`user`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skill`
--
ALTER TABLE `skill`
  ADD CONSTRAINT `skill_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `worker`
--
ALTER TABLE `worker`
  ADD CONSTRAINT `worker_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `worker_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
