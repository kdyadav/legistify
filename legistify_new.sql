-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2016 at 05:08 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `legistify`
--

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE IF NOT EXISTS `meetings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `lawyer_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `meeting_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `user_id`, `lawyer_id`, `status`, `meeting_time`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 0, '0000-00-00 00:00:00', '2016-06-19 08:29:24', '2016-06-19 09:11:13'),
(2, 2, 1, 1, '0000-00-00 00:00:00', '2016-06-19 08:40:39', '2016-06-19 09:11:19'),
(3, 3, 1, NULL, '0000-00-00 00:00:00', '2016-06-19 09:15:20', '2016-06-19 09:15:20'),
(4, 3, 1, NULL, '0000-00-00 00:00:00', '2016-06-19 09:15:59', '2016-06-19 09:15:59'),
(5, 3, 1, NULL, '0000-00-00 00:00:00', '2016-06-19 09:17:50', '2016-06-19 09:17:50'),
(6, 3, 1, NULL, '1999-12-12 12:12:12', '2016-06-19 09:20:18', '2016-06-19 09:20:18'),
(7, 3, 1, NULL, '0000-00-00 00:00:00', '2016-06-19 09:23:08', '2016-06-19 09:23:08'),
(8, 3, 1, NULL, '1999-12-12 12:12:12', '2016-06-19 09:24:45', '2016-06-19 09:24:45'),
(9, 2, 1, NULL, '2016-06-15 00:00:00', '2016-06-19 09:47:28', '2016-06-19 09:47:28'),
(10, 5, 1, NULL, '0000-00-00 00:00:00', '2016-06-19 09:48:50', '2016-06-19 09:48:50'),
(11, 5, 1, NULL, '0000-00-00 00:00:00', '2016-06-19 09:49:11', '2016-06-19 09:49:11'),
(12, 5, 4, 0, '0000-00-00 00:00:00', '2016-06-19 09:49:18', '2016-06-19 09:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_06_17_041510_create_meetings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lawyer', 'yiuy@gmail.com', '$2y$10$OYoSbxg2fPGd7YOigMnbye69DCX3tsSKJx.5F2Ej.2ZlmzH/YztMi', 2, 1, 'JrvWMJddKomPFpeJuB9LYgTQFbTWrwCbAR6zU0Zwk3u29wCPLe5gtEaMMDzZ', '2016-06-19 08:25:45', '2016-06-19 09:14:23'),
(2, 'Client', 'client@gmail.com', '$2y$10$Kursqnz8R69x0RSZQCGk...PIMrBjF0YK.XNpRjMmFqsd65eFr4Oi', 1, 0, 'mnGN2bJfuw5WuHn9tK9TCPC72VhPocQbkKkpFIZOaRlvnBYzSPOmmwwriZiU', '2016-06-19 08:29:19', '2016-06-19 09:47:50'),
(3, 'Kuldeep', 'kuldeep.yadav3012@gmail.com', '$2y$10$ay7b5VYGriL8GOxVhUkOuOw459AUy15/QBHn7z7SmBgKM2MPC/w36', 1, 0, 'qqyyaDvBBlqmaluNqK9UDsVTImrt43nCc1JGCdBdYkeezu8bnvb2zoJIdJBh', '2016-06-19 09:14:54', '2016-06-19 09:40:46'),
(4, 'kkkkkk', 'kjkj@gmail.com', '$2y$10$QDjHwSzIj0q2Q6tXmS0iNeMev.T0xMn/z8xvzIinbmbpvtG/jK18q', 2, 1, NULL, '2016-06-19 09:45:53', '2016-06-19 09:49:04'),
(5, 'Client', 'kkkkkk@gmail.com', '$2y$10$4u6UV8gEM12Gr9NUqMebV.SwYqu6UONopwmU35M5OypDbcQdPsuK.', 1, 0, NULL, '2016-06-19 09:48:32', '2016-06-19 09:48:32');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
