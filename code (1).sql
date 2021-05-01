-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 01, 2021 at 01:50 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `code`
--

-- --------------------------------------------------------

--
-- Table structure for table `auditi_trail`
--

DROP TABLE IF EXISTS `auditi_trail`;
CREATE TABLE IF NOT EXISTS `auditi_trail` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `login_time` datetime(6) NOT NULL,
  `logout_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auditi_trail`
--

INSERT INTO `auditi_trail` (`id`, `username`, `login_time`, `logout_time`) VALUES
(23, 'ADMIN', '2021-04-29 02:57:08.000000', '2021-04-29 03:26:11.000000'),
(25, 'ADMIN', '2021-04-29 03:30:05.000000', '2021-04-29 03:33:22.000000'),
(26, 'ADMIN', '2021-04-29 03:36:01.000000', '2021-04-29 03:36:01.000000'),
(27, 'ADMIN', '2021-04-29 03:36:14.000000', '2021-04-29 03:36:23.000000'),
(28, 'ADMIN', '2021-04-29 03:36:52.000000', '2021-04-29 03:37:09.000000'),
(29, 'ADMIN', '2021-04-29 03:59:55.000000', '2021-04-29 04:00:31.000000'),
(30, 'ADMIN', '2021-04-29 04:14:15.000000', '2021-04-29 04:14:26.000000'),
(31, 'ADMIN', '2021-04-29 04:15:48.000000', '2021-04-29 04:16:09.000000'),
(32, 'ADMIN', '2021-04-29 04:17:28.000000', '2021-04-29 04:17:42.000000'),
(33, 'nataliee_28', '2021-05-01 19:02:47.000000', '2021-05-01 19:02:47.000000'),
(34, 'nataliee_28', '2021-05-01 19:03:08.000000', '2021-05-01 19:03:08.000000'),
(35, 'nataliee_28', '2021-05-01 19:03:55.000000', '2021-05-01 19:04:04.000000'),
(36, 'nataliee_28', '2021-05-01 19:04:47.000000', '2021-05-01 19:04:56.000000'),
(37, 'natnat28', '2021-05-01 20:02:49.000000', '2021-05-01 20:02:49.000000'),
(38, 'natnat28', '2021-05-01 20:04:24.000000', '2021-05-01 20:04:24.000000'),
(39, 'nat0728', '2021-05-01 20:10:24.000000', '2021-05-01 20:10:31.000000'),
(40, 'natnat0728', '2021-05-01 20:19:17.000000', '2021-05-01 20:19:50.000000'),
(41, 'natnat0728', '2021-05-01 20:22:27.000000', '2021-05-01 20:22:49.000000');

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

DROP TABLE IF EXISTS `code`;
CREATE TABLE IF NOT EXISTS `code` (
  `id_code` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `code` varchar(6) NOT NULL,
  `created_at` datetime NOT NULL,
  `expiration` datetime NOT NULL,
  PRIMARY KEY (`id_code`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`id_code`, `user_id`, `code`, `created_at`, `expiration`) VALUES
(4, 1, '827013', '2021-04-05 13:15:29', '2021-04-05 13:16:29'),
(5, 1, '206385', '2021-04-24 23:23:58', '2021-04-24 23:24:58'),
(6, 1, '257109', '2021-04-24 23:24:07', '2021-04-24 23:25:07'),
(7, 1, '581397', '2021-04-25 01:27:28', '2021-04-25 01:28:28'),
(8, 1, '987154', '2021-04-25 01:32:42', '2021-04-25 01:33:42'),
(9, 1, '153649', '2021-04-25 01:35:52', '2021-04-25 01:36:52'),
(10, 1, '786942', '2021-04-25 01:38:16', '2021-04-25 01:39:16'),
(11, 1, '731598', '2021-04-25 01:45:35', '2021-04-25 01:46:35'),
(12, 1, '382045', '2021-04-25 01:47:07', '2021-04-25 01:48:07'),
(13, 1, '429815', '2021-04-25 01:52:27', '2021-04-25 01:53:27'),
(14, 1, '598270', '2021-04-25 01:53:43', '2021-04-25 01:54:43'),
(15, 1, '362984', '2021-04-25 01:54:33', '2021-04-25 01:55:33'),
(16, 1, '981205', '2021-04-25 01:55:15', '2021-04-25 01:56:15'),
(17, 1, '490813', '2021-04-25 01:58:52', '2021-04-25 01:59:52'),
(18, 1, '123657', '2021-04-25 01:59:31', '2021-04-25 02:00:31'),
(19, 1, '348592', '2021-04-25 02:00:31', '2021-04-25 02:01:31'),
(20, 1, '657012', '2021-04-25 02:01:08', '2021-04-25 02:02:08'),
(21, 1, '187359', '2021-04-25 02:02:33', '2021-04-25 02:03:33'),
(22, 1, '290485', '2021-04-25 02:03:07', '2021-04-25 02:04:07'),
(23, 1, '920158', '2021-04-25 02:10:11', '2021-04-25 02:11:11'),
(24, 1, '956478', '2021-04-25 02:11:35', '2021-04-25 02:12:35'),
(25, 1, '482315', '2021-04-25 02:13:05', '2021-04-25 02:14:05'),
(26, 1, '059731', '2021-04-25 02:14:03', '2021-04-25 02:15:03'),
(27, 1, '269081', '2021-04-25 02:15:21', '2021-04-25 02:16:21'),
(28, 1, '506178', '2021-04-25 09:56:26', '2021-04-25 09:57:26'),
(29, 1, '294538', '2021-04-25 10:02:32', '2021-04-25 10:03:32'),
(30, 1, '618930', '2021-04-25 10:09:01', '2021-04-25 10:10:01'),
(31, 1, '953127', '2021-04-25 10:13:13', '2021-04-25 10:14:13'),
(32, 1, '964725', '2021-04-25 10:17:03', '2021-04-25 10:18:03'),
(33, 1, '387690', '2021-04-25 10:19:38', '2021-04-25 10:20:38'),
(34, 1, '476053', '2021-04-25 10:24:32', '2021-04-25 10:25:32'),
(35, 1, '801764', '2021-04-25 10:26:00', '2021-04-25 10:27:00'),
(36, 1, '067819', '2021-04-25 11:29:43', '2021-04-25 11:30:43'),
(37, 1, '037159', '2021-04-25 11:35:53', '2021-04-25 11:36:53'),
(38, 1, '836574', '2021-04-25 11:36:39', '2021-04-25 11:37:39'),
(39, 1, '813695', '2021-04-25 11:38:00', '2021-04-25 11:39:00'),
(40, 1, '790845', '2021-04-25 11:40:00', '2021-04-25 11:41:00'),
(41, 1, '986410', '2021-04-25 11:51:43', '2021-04-25 11:52:43'),
(42, 1, '347591', '2021-04-25 12:03:32', '2021-04-25 12:04:32'),
(43, 1, '325791', '2021-04-25 12:05:17', '2021-04-25 12:06:17'),
(44, 1, '526194', '2021-04-25 12:06:04', '2021-04-25 12:07:04'),
(45, 1, '408625', '2021-04-25 12:07:38', '2021-04-25 12:08:38'),
(46, 1, '209574', '2021-04-25 12:15:37', '2021-04-25 12:16:37'),
(47, 1, '293810', '2021-04-25 12:22:36', '2021-04-25 12:23:36'),
(48, 1, '427953', '2021-04-25 12:29:17', '2021-04-25 12:30:17'),
(49, 1, '790614', '2021-04-25 12:40:25', '2021-04-25 12:41:25'),
(50, 1, '497210', '2021-04-25 12:41:46', '2021-04-25 12:42:46'),
(51, 1, '673280', '2021-04-25 12:50:38', '2021-04-25 12:51:38'),
(52, 1, '423190', '2021-04-25 12:57:10', '2021-04-25 12:58:10'),
(53, 1, '519687', '2021-04-25 13:17:58', '2021-04-25 13:18:58'),
(54, 1, '876451', '2021-04-25 13:18:06', '2021-04-25 13:19:06'),
(55, 1, '475016', '2021-04-25 13:19:03', '2021-04-25 13:20:03'),
(56, 1, '258390', '2021-04-25 14:01:54', '2021-04-25 14:02:54'),
(57, 1, '928531', '2021-04-25 14:02:01', '2021-04-25 14:03:01'),
(58, 1, '873425', '2021-04-25 14:03:33', '2021-04-25 14:04:33'),
(59, 1, '371698', '2021-04-25 14:13:47', '2021-04-25 14:14:47'),
(60, 1, '680512', '2021-04-25 14:17:49', '2021-04-25 14:18:49'),
(61, 1, '045123', '2021-04-25 14:21:43', '2021-04-25 14:22:43'),
(62, 1, '248376', '2021-04-25 14:22:03', '2021-04-25 14:23:03'),
(63, 1, '168904', '2021-04-25 14:29:27', '2021-04-25 14:30:27'),
(64, 1, '053827', '2021-04-25 14:34:16', '2021-04-25 14:35:16'),
(65, 1, '703459', '2021-04-25 14:49:10', '2021-04-25 14:50:10'),
(66, 1, '759281', '2021-04-25 17:13:57', '2021-04-25 17:14:57'),
(67, 1, '428306', '2021-04-25 17:14:04', '2021-04-25 17:15:04'),
(68, 1, '164970', '2021-04-25 17:16:20', '2021-04-25 17:17:20'),
(69, 1, '530628', '2021-04-25 17:23:36', '2021-04-25 17:24:36'),
(70, 1, '625170', '2021-04-28 23:57:19', '2021-04-28 23:58:19'),
(71, 1, '914352', '2021-04-28 23:58:26', '2021-04-28 23:59:26'),
(72, 1, '147628', '2021-04-29 00:24:19', '2021-04-29 00:25:19'),
(73, 1, '503162', '2021-04-29 00:26:06', '2021-04-29 00:27:06'),
(74, 1, '954182', '2021-04-29 00:29:04', '2021-04-29 00:30:04'),
(75, 1, '297185', '2021-04-29 00:57:54', '2021-04-29 00:58:54'),
(76, 1, '927680', '2021-04-29 00:58:00', '2021-04-29 00:59:00'),
(77, 1, '184526', '2021-04-29 00:59:54', '2021-04-29 01:00:54'),
(78, 1, '508647', '2021-04-29 01:00:01', '2021-04-29 01:01:01'),
(79, 1, '658407', '2021-04-29 01:01:12', '2021-04-29 01:02:12'),
(80, 1, '369842', '2021-04-29 01:07:10', '2021-04-29 01:08:10'),
(81, 1, '723986', '2021-04-29 01:13:58', '2021-04-29 01:14:58'),
(82, 1, '045987', '2021-04-29 01:14:05', '2021-04-29 01:15:05'),
(83, 1, '392604', '2021-04-29 01:17:59', '2021-04-29 01:18:59'),
(84, 1, '571038', '2021-04-29 01:18:08', '2021-04-29 01:19:08'),
(85, 1, '931047', '2021-04-29 01:21:02', '2021-04-29 01:22:02'),
(86, 1, '472918', '2021-04-29 01:23:37', '2021-04-29 01:24:37'),
(87, 1, '370865', '2021-04-29 01:24:58', '2021-04-29 01:25:58'),
(88, 1, '439852', '2021-04-29 01:25:04', '2021-04-29 01:26:04'),
(89, 1, '765239', '2021-04-29 01:26:54', '2021-04-29 01:27:54'),
(90, 1, '825179', '2021-04-29 01:27:01', '2021-04-29 01:28:01'),
(91, 1, '756491', '2021-04-29 01:30:21', '2021-04-29 01:31:21'),
(92, 1, '968074', '2021-04-29 01:43:20', '2021-04-29 01:44:20'),
(93, 1, '936708', '2021-04-29 01:46:14', '2021-04-29 01:47:14'),
(94, 1, '853217', '2021-04-29 01:47:44', '2021-04-29 01:48:44'),
(95, 1, '721690', '2021-04-29 01:52:57', '2021-04-29 01:53:57'),
(96, 1, '987314', '2021-04-29 01:53:03', '2021-04-29 01:54:03'),
(97, 1, '408321', '2021-04-29 01:56:07', '2021-04-29 01:57:07'),
(98, 1, '638051', '2021-04-29 01:57:18', '2021-04-29 01:58:18'),
(99, 1, '928745', '2021-04-29 02:57:08', '2021-04-29 02:58:08'),
(100, 1, '873456', '2021-04-29 03:20:02', '2021-04-29 03:21:02'),
(101, 1, '968350', '2021-04-29 03:23:38', '2021-04-29 03:24:38'),
(102, 1, '597032', '2021-04-29 03:26:02', '2021-04-29 03:27:02'),
(103, 1, '273819', '2021-04-29 03:28:51', '2021-04-29 03:29:51'),
(104, 1, '796145', '2021-04-29 03:30:07', '2021-04-29 03:31:07'),
(105, 1, '904537', '2021-04-29 03:32:09', '2021-04-29 03:33:09'),
(106, 1, '945763', '2021-04-29 03:33:13', '2021-04-29 03:34:13'),
(107, 1, '527163', '2021-04-29 03:36:14', '2021-04-29 03:37:14'),
(108, 1, '417859', '2021-04-29 03:59:55', '2021-04-29 04:00:55'),
(109, 1, '960182', '2021-04-29 04:00:12', '2021-04-29 04:01:12'),
(110, 1, '627193', '2021-04-29 04:14:15', '2021-04-29 04:15:15'),
(111, 1, '752914', '2021-04-29 04:15:48', '2021-04-29 04:16:48'),
(112, 1, '251390', '2021-04-29 04:17:28', '2021-04-29 04:18:28'),
(113, 3, '729583', '2021-05-01 19:03:55', '2021-05-01 19:04:55'),
(114, 3, '067914', '2021-05-01 19:04:02', '2021-05-01 19:05:02'),
(115, 5, '891745', '2021-05-01 20:10:24', '2021-05-01 20:11:24'),
(116, 6, '289170', '2021-05-01 20:19:17', '2021-05-01 20:20:17'),
(117, 6, '680749', '2021-05-01 20:22:27', '2021-05-01 20:23:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Email` char(50) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `Email`, `created_at`) VALUES
(1, 'ADMIN', '$2y$10$.kJ7gO6CbEAtw.wy3gu0COBzUcfHs/l0GWQJeoR/2r4oQJ.j7WB.K', 'admin@yahoo.com', '2021-03-21 14:07:36'),
(2, 'USER', '$2y$10$SGpqtFMmQRZNN4fiZ6DCRurfSK9ClkeyjBoaOhmYV9S/8hVoKa6US', 'user@gmail.com', '2021-04-25 01:06:16'),
(3, 'nataliee_28', '$2y$10$VDj4/eBG78MpPrwIYU0QfuHVE3TAeoYtdN4PQGT7.sSY6XAv6ORA6', 'erickmetra1598@gmail.com', '2021-05-01 19:01:51'),
(4, 'natnat28', '$2y$10$HAEPV9zDIPScJe2Z7.LSWeXqkAzdbcobh3Vm22ixCb53tUuUORz1e', 'natalie_sison28@gmail.com', '2021-05-01 20:02:19'),
(5, 'nat0728', '$2y$10$y/L7kYBGL8fXIdoxeOhx4.UIVz5Ay/hb.WOFazbOHAwl0pBGjG6.W', 'nat0728@gmail.com', '2021-05-01 20:09:57'),
(6, 'natnat0728', '$2y$10$6Krx.hktcSenkPsImohIuuYp272w8PrXg.7r4RY1Mpx5hkTMY1/lC', 'natnat28@gmail.com', '2021-05-01 20:18:43');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
