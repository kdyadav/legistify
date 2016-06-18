-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2016 at 09:21 AM
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
  `meeting_time` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `user_id`, `lawyer_id`, `meeting_time`, `created_at`, `updated_at`) VALUES
(1, 4, 3, '0000-00-00', '2016-06-18 12:59:06', '2016-06-18 12:59:06'),
(2, 4, 6, '0000-00-00', '2016-06-18 13:11:41', '2016-06-18 13:11:41'),
(3, 4, 5, '0000-00-00', '2016-06-18 13:39:15', '2016-06-18 13:39:15');

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
('2016_06_17_041510_create_meetings_table', 2);

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
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'khkgeh', 'khgjkh@gmail.com', '$2y$10$.uJULsOzCPQ6UOO/mZ3w2e1JBDRVRCF75WQ8wfJQXAOsRA8k7Xj4G', 1, 1, 'jaYuuaVAqLRDX9Pgia2TTMHqkdlhY0bHjcvHneAUu410wv8zk90RD69hl0ij', '2016-06-18 10:35:58', '2016-06-18 11:05:04'),
(3, 'kjhkhkhkjh', 'hkjhkjh@gmail.com', '$2y$10$Df95icTROGDfuEe.h6pB5ONKoKl4ZNpUCnUhneUO/3n/XLztW4dfy', 2, 1, 'LrjkEYjm0YyLtgrXA5y26bVcfrjXj5TeJSeftNEOzECq5UlhReUXltQLG6Ml', '2016-06-18 11:05:27', '2016-06-18 11:44:29'),
(4, 'kuldeep', 'kuldeep.yadav3012@gmail.com', '$2y$10$Qs7oB2xsyJb2fVZtk16ZuelmMgpovXiaGbhX4dtit4FMBFfJi8A/C', 1, 1, NULL, '2016-06-18 11:45:00', '2016-06-18 11:45:00'),
(5, 'kjhkhkhkjh', 'hkjhdssgkjh@gmail.com', '$2y$10$Df95icTROGDfuEe.h6pB5ONKoKl4ZNpUCnUhneUO/3n/XLztW4dfy', 2, 1, 'LrjkEYjm0YyLtgrXA5y26bVcfrjXj5TeJSeftNEOzECq5UlhReUXltQLG6Ml', '2016-06-18 11:05:27', '2016-06-18 11:44:29'),
(6, 'ashu', 'ashu@gmail.com', '$2y$10$M/88o8Fm9G9sP.8/sc7QQOCaP5hciNE/mvaYB3ts01RN7lP2tNAty', 2, 0, 'N4WRrr0VDZspVF7MoOsYCRn2JDP25QXjXxXWCHJVkj8U74Fr4ynaNRyjuvwx', '2016-06-18 13:10:12', '2016-06-18 13:41:58');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
