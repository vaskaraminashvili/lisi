-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 03, 2019 at 01:50 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lisi_lisi`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_projects`
--

DROP TABLE IF EXISTS `about_projects`;
CREATE TABLE IF NOT EXISTS `about_projects` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_ka` text COLLATE utf8_unicode_ci,
  `image` int(11) DEFAULT NULL,
  `landing_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `link` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `about_projects_landing_id_foreign` (`landing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about_projects`
--

INSERT INTO `about_projects` (`id`, `deleted_at`, `created_at`, `updated_at`, `title_ka`, `text_ka`, `image`, `landing_id`, `link`) VALUES
(1, NULL, '2019-03-05 08:13:11', '2019-03-06 04:34:02', 'great project', 'great project  great project', 7, 1, 'https://www.facebook.com/Lisi.Development/');

-- --------------------------------------------------------

--
-- Table structure for table `aparatmnets`
--

DROP TABLE IF EXISTS `aparatmnets`;
CREATE TABLE IF NOT EXISTS `aparatmnets` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `space` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `rooms` varchar(256) COLLATE utf8_unicode_ci DEFAULT '[]',
  `floor` int(10) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `aparatmnets_floor_foreign` (`floor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

DROP TABLE IF EXISTS `backups`;
CREATE TABLE IF NOT EXISTS `backups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `file_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `backup_size` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `backups_name_unique` (`name`),
  UNIQUE KEY `backups_file_name_unique` (`file_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
CREATE TABLE IF NOT EXISTS `blocks` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `active` tinyint(1) DEFAULT '1',
  `floors` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blocks_project_id_foreign` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `deleted_at`, `created_at`, `updated_at`, `title_ka`, `title_en`, `title_ru`, `image`, `project_id`, `active`, `floors`) VALUES
(1, NULL, '2019-02-22 08:26:34', '2019-02-22 09:01:08', 'Block title', NULL, NULL, 1, 1, 1, 2),
(2, NULL, '2019-02-22 09:00:58', '2019-02-22 09:00:58', 'block c', NULL, NULL, 0, 1, 1, 4),
(3, NULL, '2019-02-22 09:01:30', '2019-02-22 09:01:30', 'Block sd', NULL, NULL, 0, 2, 1, 4),
(4, NULL, '2019-02-22 09:01:46', '2019-02-22 09:01:46', 'block hotel', NULL, NULL, 0, 2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `callbacks`
--

DROP TABLE IF EXISTS `callbacks`;
CREATE TABLE IF NOT EXISTS `callbacks` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `firstname` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `email` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `callbacks`
--

INSERT INTO `callbacks` (`id`, `deleted_at`, `created_at`, `updated_at`, `firstname`, `phone`, `project`, `active`, `email`) VALUES
(1, NULL, '2019-03-11 08:26:43', '2019-03-11 08:26:43', 'vas', 're123123', 'lisi', 0, NULL),
(2, NULL, '2019-03-11 08:30:03', '2019-03-11 08:30:03', 'test', '324234234234', 'lisi', 0, NULL),
(3, NULL, '2019-03-11 08:31:20', '2019-03-11 08:31:20', 'test', 'asdasd', 'lisi', 0, NULL),
(4, NULL, '2019-03-11 08:32:21', '2019-03-12 03:05:41', 'vas', '324234234234', 'lisi', 1, NULL),
(5, NULL, '2019-03-12 03:21:39', '2019-03-12 03:21:39', NULL, NULL, NULL, 0, NULL),
(6, NULL, '2019-03-12 03:21:45', '2019-03-12 03:21:45', NULL, NULL, NULL, 0, NULL),
(7, NULL, '2019-03-12 03:22:07', '2019-03-12 03:22:07', NULL, NULL, NULL, 0, NULL),
(8, NULL, '2019-03-12 03:22:58', '2019-03-12 03:22:58', NULL, NULL, NULL, 0, 'vaska@digitalmate.io'),
(9, NULL, '2019-03-27 06:14:07', '2019-03-27 06:14:07', 'sdfsdf', '3123123', 'lisi', 0, NULL),
(10, NULL, '2019-03-27 06:14:07', '2019-03-27 06:14:07', 'sdfsdf', '3123123', 'lisi', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
CREATE TABLE IF NOT EXISTS `catalogs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_en` text COLLATE utf8_unicode_ci,
  `text_ru` text COLLATE utf8_unicode_ci,
  `image` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_views`
--

DROP TABLE IF EXISTS `company_views`;
CREATE TABLE IF NOT EXISTS `company_views` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_ru` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company_views`
--

INSERT INTO `company_views` (`id`, `deleted_at`, `created_at`, `updated_at`, `text_ka`, `text_en`, `text_ru`, `image`, `active`) VALUES
(1, NULL, '2019-02-25 07:30:31', '2019-02-25 07:30:31', 'sss', NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `tags` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `departments_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Administration', '[]', '#000', NULL, '2019-02-22 06:24:06', '2019-02-22 06:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `gender` varchar(191) COLLATE utf8_unicode_ci DEFAULT 'Male',
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_email_unique` (`email`),
  KEY `employees_dept_foreign` (`dept`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `gender`, `email`, `dept`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Super Admin', 'Male', 'vaska@digitalmate.io', 1, NULL, '2019-02-22 06:24:25', '2019-02-22 06:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

DROP TABLE IF EXISTS `floors`;
CREATE TABLE IF NOT EXISTS `floors` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`id`, `deleted_at`, `created_at`, `updated_at`, `title_ka`, `title_en`, `title_ru`) VALUES
(1, NULL, '2019-02-25 04:25:46', '2019-02-25 04:25:46', 'pirveli ', 'first', 'pervi'),
(2, NULL, '2019-02-25 04:37:56', '2019-02-25 04:37:56', 'meore', 'second', 'vtaroi'),
(4, NULL, '2019-02-25 04:39:16', '2019-02-25 04:39:16', 'mesame', 'third', 'treti'),
(5, NULL, '2019-02-25 04:39:16', '2019-02-25 04:39:16', 'moetxe', 'fourth', 'chitiri');

-- --------------------------------------------------------

--
-- Table structure for table `green_zones`
--

DROP TABLE IF EXISTS `green_zones`;
CREATE TABLE IF NOT EXISTS `green_zones` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `tag_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `green_zones_tag_id_foreign` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `green_zones`
--

INSERT INTO `green_zones` (`id`, `deleted_at`, `created_at`, `updated_at`, `title_ka`, `title_en`, `title_ru`, `image`, `active`, `tag_id`) VALUES
(1, NULL, '2019-02-25 07:10:59', '2019-02-26 05:27:38', '80 procenti', '80 Percent', NULL, 3, 1, 1),
(2, NULL, '2019-02-26 05:26:20', '2019-02-26 05:27:30', '20 percent', '20 %', NULL, 0, 1, 1),
(3, NULL, '2019-02-26 05:26:20', '2019-02-26 05:26:20', '10', NULL, NULL, 0, 1, 1),
(4, NULL, '2019-02-26 05:26:20', '2019-02-26 05:26:20', '20', NULL, NULL, 0, 1, 1),
(5, NULL, '2019-02-26 05:26:20', '2019-02-26 05:26:20', '30', NULL, NULL, 0, 1, 2),
(6, NULL, '2019-02-26 05:26:20', '2019-02-26 05:26:20', '40', NULL, NULL, 0, 1, 2),
(7, NULL, '2019-02-26 05:26:20', '2019-02-26 05:26:20', '50', NULL, NULL, 0, 1, 2),
(8, NULL, '2019-02-26 05:26:20', '2019-02-26 05:26:20', '60', NULL, NULL, 0, 1, 2),
(9, NULL, '2019-02-26 05:26:20', '2019-02-26 05:26:20', '70', NULL, NULL, 0, 1, 2),
(10, NULL, '2019-02-26 05:26:20', '2019-02-26 05:26:20', '80', NULL, NULL, 0, 1, 2),
(11, NULL, '2019-02-26 05:26:20', '2019-02-26 05:26:20', '90', NULL, NULL, 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

DROP TABLE IF EXISTS `home_sliders`;
CREATE TABLE IF NOT EXISTS `home_sliders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_ru` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `deleted_at`, `created_at`, `updated_at`, `text_ka`, `text_en`, `text_ru`, `image_id`, `active`) VALUES
(1, NULL, '2019-02-22 07:22:33', '2019-02-22 07:22:33', 'სლაიდერ', 'Slider', NULL, 2, 1),
(2, NULL, '2019-02-22 07:23:02', '2019-02-22 07:23:02', 'სლაიდერ 2', 'Slider 2', NULL, 3, 1),
(3, NULL, '2019-02-25 06:32:27', '2019-02-25 06:32:27', 'სლაიდერ 3', 'slider 3', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `landings`
--

DROP TABLE IF EXISTS `landings`;
CREATE TABLE IF NOT EXISTS `landings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `landing_home` tinyint(1) DEFAULT '1',
  `season` tinyint(1) DEFAULT '1',
  `about_project` tinyint(1) DEFAULT '1',
  `project_info` tinyint(1) DEFAULT '1',
  `project_summary` tinyint(1) DEFAULT '1',
  `landing_apartment` tinyint(1) DEFAULT '1',
  `footer` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `landings`
--

INSERT INTO `landings` (`id`, `deleted_at`, `created_at`, `updated_at`, `title`, `landing_home`, `season`, `about_project`, `project_info`, `project_summary`, `landing_apartment`, `footer`) VALUES
(1, NULL, '2019-02-27 03:05:20', '2019-03-06 08:13:58', 'lisi', 1, 1, 1, 1, 1, 1, 0),
(2, NULL, '2019-02-27 03:05:25', '2019-03-07 04:44:04', 'kokhta', 1, 1, 0, 0, 0, 0, 0),
(3, NULL, '2019-02-27 03:05:31', '2019-02-27 03:07:09', 'batumi', 1, 1, 1, 1, 1, 1, 1),
(4, '2019-02-27 05:24:39', '2019-02-27 05:17:31', '2019-02-27 05:24:39', 'lisi', 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `landing_apartments`
--

DROP TABLE IF EXISTS `landing_apartments`;
CREATE TABLE IF NOT EXISTS `landing_apartments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `landing_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `landing_apartments_landing_id_foreign` (`landing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `landing_apartments`
--

INSERT INTO `landing_apartments` (`id`, `deleted_at`, `created_at`, `updated_at`, `title_ka`, `text_ka`, `image`, `landing_id`) VALUES
(1, NULL, '2019-03-06 08:26:07', '2019-03-06 08:26:07', 'Apartment', 'text apartment', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `landing_footers`
--

DROP TABLE IF EXISTS `landing_footers`;
CREATE TABLE IF NOT EXISTS `landing_footers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  `phone` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  `address` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  `landing_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `landing_footers_landing_id_foreign` (`landing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `landing_footers`
--

INSERT INTO `landing_footers` (`id`, `deleted_at`, `created_at`, `updated_at`, `email`, `phone`, `address`, `landing_id`) VALUES
(1, NULL, '2019-03-06 04:42:55', '2019-03-06 04:42:55', 'lisi@lisi.ge', '+958875 67815', 'Bolsunovska 13-15, Kiev', 1),
(2, NULL, '2019-03-06 08:43:58', '2019-03-06 08:43:58', 'kokhta@kokhta.ge', '+995778822', 'bakuriani', 2);

-- --------------------------------------------------------

--
-- Table structure for table `landing_homes`
--

DROP TABLE IF EXISTS `landing_homes`;
CREATE TABLE IF NOT EXISTS `landing_homes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_ka` text COLLATE utf8_unicode_ci,
  `landing_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `image` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `landing_homes_landing_id_foreign` (`landing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `landing_homes`
--

INSERT INTO `landing_homes` (`id`, `deleted_at`, `created_at`, `updated_at`, `title_ka`, `text_ka`, `landing_id`, `image`) VALUES
(1, NULL, '2019-03-05 06:57:11', '2019-03-06 04:22:33', 'LIsi is perfect', 'ქართულად ლისი', 1, 6),
(2, NULL, '2019-03-06 03:30:44', '2019-03-06 08:44:29', 'landing kokhta', 'kokhta text', 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `landing_socials`
--

DROP TABLE IF EXISTS `landing_socials`;
CREATE TABLE IF NOT EXISTS `landing_socials` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `landing_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `landing_socials_landing_id_foreign` (`landing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `landing_socials`
--

INSERT INTO `landing_socials` (`id`, `deleted_at`, `created_at`, `updated_at`, `facebook`, `twitter`, `instagram`, `youtube`, `email`, `landing_id`) VALUES
(1, NULL, '2019-03-05 08:36:26', '2019-03-05 08:36:26', 'https://www.facebook.com/Lisi.Development/', 'https://www.facebook.com/Lisi.Development/', 'https://www.facebook.com/Lisi.Development/', 'https://www.facebook.com/Lisi.Development/', 'https://www.facebook.com/Lisi.Development/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `la_configs`
--

DROP TABLE IF EXISTS `la_configs`;
CREATE TABLE IF NOT EXISTS `la_configs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'Admin', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(2, 'sitename_part1', '', 'Admin', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(3, 'sitename_part2', '', 'Skeleton', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(4, 'sitename_short', '', 'AS', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(5, 'site_description', '', 'Admin Panel Description', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(6, 'sidebar_search', '', '1', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(7, 'show_messages', '', '1', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(8, 'show_notifications', '', '1', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(9, 'show_tasks', '', '1', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(10, 'show_rightsidebar', '', '1', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(11, 'skin', '', 'skin-white', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(12, 'layout', '', 'fixed', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(13, 'default_email', '', 'test@example.com', '2019-02-22 06:24:06', '2019-02-22 06:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `la_menus`
--

DROP TABLE IF EXISTS `la_menus`;
CREATE TABLE IF NOT EXISTS `la_menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hierarchy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(1, 'Team', '#', 'fa-group', 'custom', 0, 1, '2019-02-22 06:24:05', '2019-02-22 06:24:05'),
(2, 'Users', 'users', 'fa-group', 'module', 1, 0, '2019-02-22 06:24:05', '2019-02-22 06:24:05'),
(3, 'Uploads', 'uploads', 'fa-files-o', 'module', 0, 0, '2019-02-22 06:24:05', '2019-02-22 06:24:05'),
(4, 'Departments', 'departments', 'fa-tags', 'module', 1, 0, '2019-02-22 06:24:05', '2019-02-22 06:24:05'),
(5, 'Employees', 'employees', 'fa-group', 'module', 1, 0, '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(6, 'Roles', 'roles', 'fa-user-plus', 'module', 1, 0, '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(7, 'Permissions', 'permissions', 'fa-magic', 'module', 1, 0, '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(8, 'Tests', 'tests', 'fa fa-cube', 'module', 0, 0, '2019-02-22 06:29:20', '2019-02-22 06:29:20'),
(11, 'Navigations', 'navigations', 'fa fa-cube', 'module', 0, 0, '2019-02-22 06:59:00', '2019-02-22 06:59:00'),
(12, 'Home_sliders', 'home_sliders', 'fa fa-cube', 'module', 0, 0, '2019-02-22 07:08:10', '2019-02-22 07:08:10'),
(14, 'Green_zones', 'green_zones', 'fa fa-cube', 'module', 0, 0, '2019-02-22 07:14:32', '2019-02-22 07:14:32'),
(15, 'Catalogs', 'catalogs', 'fa fa-cube', 'module', 0, 0, '2019-02-22 07:27:14', '2019-02-22 07:27:14'),
(16, 'Company_views', 'company_views', 'fa fa-cube', 'module', 0, 0, '2019-02-22 07:34:47', '2019-02-22 07:34:47'),
(18, 'Teams', 'teams', 'fa fa-cube', 'module', 0, 0, '2019-02-22 08:10:03', '2019-02-22 08:10:03'),
(19, 'Projects', 'projects', 'fa fa-cube', 'module', 0, 0, '2019-02-22 08:13:18', '2019-02-22 08:13:18'),
(20, 'Blocks', 'blocks', 'fa fa-cube', 'module', 0, 0, '2019-02-22 08:25:32', '2019-02-22 08:25:32'),
(21, 'Floors', 'floors', 'fa fa-cube', 'module', 0, 0, '2019-02-22 08:53:06', '2019-02-22 08:53:06'),
(22, 'Aparatmnets', 'aparatmnets', 'fa fa-cube', 'module', 0, 0, '2019-02-22 08:57:16', '2019-02-22 08:57:16'),
(23, 'Tags', 'tags', 'fa fa-tags', 'module', 0, 0, '2019-02-26 05:23:10', '2019-02-26 05:23:10'),
(24, 'Text_Images', 'text_images', 'fa fa-cube', 'module', 0, 0, '2019-02-26 06:10:59', '2019-02-26 06:10:59'),
(25, 'Landings', 'landings', 'fa fa-cube', 'module', 0, 0, '2019-02-27 03:00:37', '2019-02-27 03:00:37'),
(29, 'Landing_Homes', 'landing_homes', 'fa fa-cube', 'module', 0, 0, '2019-03-05 06:56:38', '2019-03-05 06:56:38'),
(30, 'Seasons', 'seasons', 'fa fa-cube', 'module', 0, 0, '2019-03-05 07:50:57', '2019-03-05 07:50:57'),
(31, 'About_projects', 'about_projects', 'fa fa-cube', 'module', 0, 0, '2019-03-05 08:09:49', '2019-03-05 08:09:49'),
(32, 'Landing_socials', 'landing_socials', 'fa fa-cube', 'module', 0, 0, '2019-03-05 08:35:27', '2019-03-05 08:35:27'),
(34, 'Landing_footers', 'landing_footers', 'fa fa-cube', 'module', 0, 0, '2019-03-06 04:42:28', '2019-03-06 04:42:28'),
(35, 'Project_infos', 'project_infos', 'fa fa-cube', 'module', 0, 0, '2019-03-06 05:09:50', '2019-03-06 05:09:50'),
(36, 'Project_summaries', 'project_summaries', 'fa fa-cube', 'module', 0, 0, '2019-03-06 07:10:31', '2019-03-06 07:10:31'),
(37, 'Landing_apartments', 'landing_apartments', 'fa fa-cube', 'module', 0, 0, '2019-03-06 08:24:21', '2019-03-06 08:24:21'),
(38, 'Callbacks', 'callbacks', 'fa fa-cube', 'module', 0, 0, '2019-03-11 05:53:42', '2019-03-11 05:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_05_26_050000_create_modules_table', 1),
(2, '2014_05_26_055000_create_module_field_types_table', 1),
(3, '2014_05_26_060000_create_module_fields_table', 1),
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2014_12_01_000000_create_uploads_table', 1),
(7, '2016_05_26_064006_create_departments_table', 1),
(8, '2016_05_26_064007_create_employees_table', 1),
(9, '2016_05_26_064446_create_roles_table', 1),
(10, '2016_07_05_115343_create_role_user_table', 1),
(11, '2016_07_07_134058_create_backups_table', 1),
(12, '2016_07_07_134058_create_menus_table', 1),
(13, '2016_09_10_163337_create_permissions_table', 1),
(14, '2016_09_10_163520_create_permission_role_table', 1),
(15, '2016_09_22_105958_role_module_fields_table', 1),
(16, '2016_09_22_110008_role_module_table', 1),
(17, '2016_10_06_115413_create_la_configs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'name', 'User', 'UsersController', 'fa-group', 1, '2019-02-22 06:24:03', '2019-02-22 06:24:06'),
(2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2019-02-22 06:24:04', '2019-02-22 06:24:06'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2019-02-22 06:24:04', '2019-02-22 06:24:06'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2019-02-22 06:24:04', '2019-02-22 06:24:06'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2019-02-22 06:24:04', '2019-02-22 06:24:06'),
(6, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2019-02-22 06:24:04', '2019-02-22 06:24:06'),
(7, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2019-02-22 06:24:04', '2019-02-22 06:24:06'),
(9, 'Tests', 'Tests', 'tests', 'title', 'Test', 'TestsController', 'fa-cube', 1, '2019-02-22 06:28:53', '2019-02-22 06:29:20'),
(16, 'Navigations', 'Navigations', 'navigations', 'menu_ka', 'Navigation', 'NavigationsController', 'fa-cube', 1, '2019-02-22 06:51:16', '2019-02-22 06:59:00'),
(17, 'Home_sliders', 'Home_sliders', 'home_sliders', 'text_ka', 'Home_slider', 'Home_slidersController', 'fa-cube', 1, '2019-02-22 07:05:08', '2019-02-22 07:08:10'),
(19, 'Green_zones', 'Green_zones', 'green_zones', 'title_ka', 'Green_zone', 'Green_zonesController', 'fa-cube', 1, '2019-02-22 07:13:03', '2019-02-22 07:14:32'),
(20, 'Catalogs', 'Catalogs', 'catalogs', 'text_ka', 'Catalog', 'CatalogsController', 'fa-cube', 1, '2019-02-22 07:24:14', '2019-02-22 07:27:14'),
(21, 'Company_views', 'Company_views', 'company_views', 'text_ka', 'Company_view', 'Company_viewsController', 'fa-cube', 1, '2019-02-22 07:32:26', '2019-02-22 07:34:47'),
(23, 'Teams', 'Teams', 'teams', 'fullname_ka', 'Team', 'TeamsController', 'fa-cube', 1, '2019-02-22 07:50:07', '2019-02-22 08:10:03'),
(24, 'Projects', 'Projects', 'projects', 'title_ka', 'Project', 'ProjectsController', 'fa-cube', 1, '2019-02-22 08:10:48', '2019-02-25 08:52:25'),
(25, 'Blocks', 'Blocks', 'blocks', 'title_ka', 'Block', 'BlocksController', 'fa-cube', 1, '2019-02-22 08:18:57', '2019-02-22 08:25:32'),
(26, 'Floors', 'Floors', 'floors', 'title_ka', 'Floor', 'FloorsController', 'fa-cube', 1, '2019-02-22 08:42:58', '2019-02-22 08:53:06'),
(27, 'Aparatmnets', 'Aparatmnets', 'aparatmnets', 'block_id', 'Aparatmnet', 'AparatmnetsController', 'fa-cube', 1, '2019-02-22 08:53:48', '2019-02-25 05:24:56'),
(28, 'Tags', 'Tags', 'tags', 'title', 'Tag', 'TagsController', 'fa-tags', 1, '2019-02-26 05:22:32', '2019-02-26 05:23:10'),
(29, 'Text_Images', 'Text_Images', 'text_images', 'title_ka', 'Text_Image', 'Text_ImagesController', 'fa-cube', 1, '2019-02-26 06:08:01', '2019-02-26 06:10:59'),
(30, 'Landings', 'Landings', 'landings', 'title', 'Landing', 'LandingsController', 'fa-cube', 1, '2019-02-27 02:59:12', '2019-02-27 03:06:23'),
(34, 'Landing_Homes', 'Landing_Homes', 'landing_homes', 'title_ka', 'Landing_Home', 'Landing_HomesController', 'fa-cube', 1, '2019-03-05 06:55:08', '2019-03-05 06:56:38'),
(35, 'Seasons', 'Seasons', 'seasons', 'title_ka', 'Season', 'SeasonsController', 'fa-cube', 1, '2019-03-05 07:49:35', '2019-03-05 07:50:57'),
(36, 'About_projects', 'About_projects', 'about_projects', 'title_ka', 'About_project', 'About_projectsController', 'fa-cube', 1, '2019-03-05 08:08:40', '2019-03-05 08:09:49'),
(37, 'Landing_socials', 'Landing_socials', 'landing_socials', 'facebook', 'Landing_social', 'Landing_socialsController', 'fa-cube', 1, '2019-03-05 08:33:34', '2019-03-05 08:35:27'),
(39, 'Landing_footers', 'Landing_footers', 'landing_footers', 'email', 'Landing_footer', 'Landing_footersController', 'fa-cube', 1, '2019-03-06 04:40:48', '2019-03-06 04:42:28'),
(40, 'Project_infos', 'Project_infos', 'project_infos', 'title_ka', 'Project_info', 'Project_infosController', 'fa-cube', 1, '2019-03-06 05:07:21', '2019-03-06 05:09:50'),
(41, 'Project_summaries', 'Project_summaries', 'project_summaries', 'title_ka', 'Project_summary', 'Project_summariesController', 'fa-cube', 1, '2019-03-06 07:03:30', '2019-03-06 07:10:31'),
(42, 'Landing_apartments', 'Landing_apartments', 'landing_apartments', 'title_ka', 'Landing_apartment', 'Landing_apartmentsController', 'fa-cube', 1, '2019-03-06 08:20:26', '2019-03-06 08:24:21'),
(43, 'Callbacks', 'Callbacks', 'callbacks', 'firstname', 'Callback', 'CallbacksController', 'fa-cube', 1, '2019-03-11 05:51:50', '2019-03-11 05:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `module_fields`
--

DROP TABLE IF EXISTS `module_fields`;
CREATE TABLE IF NOT EXISTS `module_fields` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) UNSIGNED NOT NULL,
  `field_type` int(10) UNSIGNED NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `defaultvalue` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_fields_module_foreign` (`module`),
  KEY `module_fields_field_type_foreign` (`field_type`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(5, 'type', 'User Type', 1, 7, 0, 'Employee', 0, 0, 0, '[\"Employee\",\"Client\"]', 0, '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(9, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(10, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(11, 'type', 'Type', 2, 13, 0, '0', 0, 20, 0, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(12, 'size', 'Size', 2, 22, 0, '', 0, 250, 1, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(13, 'url', 'Url', 2, 19, 0, '', 0, 250, 0, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(14, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(15, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(16, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(17, 'name', 'Name', 4, 16, 0, '', 5, 250, 1, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(18, 'designation', 'Designation', 4, 19, 0, '', 0, 50, 1, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(19, 'gender', 'Gender', 4, 18, 0, 'Male', 0, 0, 1, '[\"Male\",\"Female\"]', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(20, 'email', 'Email', 4, 8, 1, '', 5, 250, 1, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(21, 'dept', 'Department', 4, 7, 0, '0', 0, 0, 1, '@departments', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(22, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(23, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(24, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(25, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(26, 'dept', 'Department', 5, 7, 0, '1', 0, 0, 0, '@departments', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(27, 'name', 'Name', 6, 16, 1, '', 0, 250, 1, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(28, 'file_name', 'File Name', 6, 19, 1, '', 0, 250, 1, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(29, 'backup_size', 'File Size', 6, 19, 0, '0', 0, 10, 1, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(30, 'name', 'Name', 7, 16, 1, '', 1, 250, 1, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(31, 'display_name', 'Display Name', 7, 19, 0, '', 0, 250, 1, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(32, 'description', 'Description', 7, 21, 0, '', 0, 1000, 0, '', 0, '2019-02-22 06:24:04', '2019-02-22 06:24:04'),
(35, 'title', 'title', 9, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 06:29:05', '2019-02-22 06:29:05'),
(36, 'new_field', 'new_field', 9, 21, 0, '', 0, 0, 0, '', 0, '2019-02-22 06:30:23', '2019-02-22 06:30:23'),
(49, 'menu', 'menu', 9, 15, 0, '', 0, 0, 0, '[\"header\",\"burger\",\"footer\"]', 0, '2019-02-22 06:46:11', '2019-02-22 06:49:47'),
(50, 'menu_ka', 'menu ka', 16, 19, 0, '', 0, 256, 1, '', 0, '2019-02-22 06:57:19', '2019-02-22 06:57:19'),
(51, 'menu_en', 'menu en', 16, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 06:57:36', '2019-02-22 06:57:36'),
(52, 'menu_ru', 'menu ru', 16, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 06:57:51', '2019-02-22 06:57:51'),
(53, 'active', 'Active', 16, 2, 0, 'true', 0, 0, 0, '', 0, '2019-02-22 06:58:12', '2019-02-22 07:01:10'),
(54, 'menu_location', 'menu location', 16, 15, 0, '', 0, 0, 0, '[\"Menu\",\"Burger\",\"Footer\"]', 0, '2019-02-22 06:59:49', '2019-02-25 04:00:50'),
(55, 'text_ka', 'text ka', 17, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 07:05:30', '2019-02-22 07:05:30'),
(56, 'text_en', 'text en', 17, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 07:06:09', '2019-02-22 07:06:09'),
(57, 'text_ru', 'text ru', 17, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 07:06:27', '2019-02-22 07:06:27'),
(58, 'image_id', 'Image', 17, 12, 0, '', 0, 0, 0, '', 0, '2019-02-22 07:07:52', '2019-02-25 07:45:48'),
(63, 'title_ka', 'Title ka', 19, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 07:13:24', '2019-02-22 07:13:24'),
(64, 'title_en', 'Title en', 19, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 07:13:38', '2019-02-22 07:13:38'),
(65, 'title_ru', 'Title ru', 19, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 07:13:55', '2019-02-22 07:13:55'),
(66, 'image', 'Image', 19, 12, 0, '', 0, 0, 0, '', 0, '2019-02-22 07:14:09', '2019-02-22 07:14:09'),
(67, 'active', 'Active', 19, 2, 0, 'false', 0, 0, 0, '', 0, '2019-02-22 07:14:22', '2019-02-22 07:14:22'),
(68, 'active', 'Active', 17, 2, 0, 'false', 0, 0, 1, '', 0, '2019-02-22 07:15:59', '2019-02-22 07:15:59'),
(69, 'text_ka', 'Catalog Title ka', 20, 21, 0, '', 0, 256, 0, '', 0, '2019-02-22 07:24:54', '2019-02-22 07:25:46'),
(70, 'text_en', 'Catalog Title en', 20, 21, 0, '', 0, 0, 0, '', 0, '2019-02-22 07:26:05', '2019-02-22 07:26:05'),
(71, 'text_ru', 'Catalog Title ru', 20, 21, 0, '', 0, 0, 0, '', 0, '2019-02-22 07:26:25', '2019-02-22 07:26:25'),
(72, 'image', 'Image', 20, 12, 0, '', 0, 0, 0, '', 0, '2019-02-22 07:26:43', '2019-02-22 07:26:43'),
(73, 'active', 'Active', 20, 2, 0, 'false', 0, 0, 0, '', 0, '2019-02-22 07:27:04', '2019-02-22 07:27:04'),
(74, 'text_ka', 'Company View Text ka', 21, 22, 0, '', 0, 256, 0, '', 0, '2019-02-22 07:33:04', '2019-02-22 07:33:04'),
(75, 'text_en', 'Company View Text en', 21, 22, 0, '', 0, 256, 0, '', 0, '2019-02-22 07:33:28', '2019-02-22 07:33:28'),
(76, 'text_ru', 'Company View Text ru', 21, 22, 0, '', 0, 256, 0, '', 0, '2019-02-22 07:33:49', '2019-02-22 07:33:49'),
(77, 'image', 'Image', 21, 12, 0, '', 0, 0, 0, '', 0, '2019-02-22 07:34:08', '2019-02-22 07:34:08'),
(78, 'active', 'Active', 21, 2, 0, 'true', 0, 0, 0, '', 0, '2019-02-22 07:34:30', '2019-02-22 07:34:30'),
(84, 'fullname_ka', 'Full name ka', 23, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 07:50:59', '2019-02-22 07:50:59'),
(85, 'full_name en', 'Full name en', 23, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 07:53:15', '2019-02-22 07:53:15'),
(86, 'Full name ru', 'Full name ru', 23, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 07:53:27', '2019-02-22 07:53:27'),
(87, 'image', 'Image', 23, 12, 0, '', 0, 0, 0, '', 0, '2019-02-22 08:08:41', '2019-02-22 08:08:41'),
(88, 'position_ka', 'Position ka', 23, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 08:09:00', '2019-02-22 08:09:00'),
(89, 'position_en', 'Position en', 23, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 08:09:16', '2019-02-22 08:09:16'),
(90, 'position_ru', 'Position ru', 23, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 08:09:37', '2019-02-22 08:09:37'),
(91, 'active', 'Active', 23, 2, 0, 'true', 0, 0, 1, '', 0, '2019-02-22 08:09:54', '2019-02-22 08:09:54'),
(92, 'title_ka', 'Title ka', 24, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 08:11:18', '2019-02-22 08:11:18'),
(93, 'title_en', 'Title en', 24, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 08:11:28', '2019-02-22 08:11:28'),
(94, 'title_ru', 'Title ru', 24, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 08:11:44', '2019-02-22 08:11:44'),
(95, 'text_ka', 'Text ka', 24, 21, 0, '', 0, 0, 0, '', 0, '2019-02-22 08:12:12', '2019-02-22 08:12:12'),
(96, 'text_en', 'Text en', 24, 21, 0, '', 0, 0, 0, '', 0, '2019-02-22 08:12:28', '2019-02-22 08:12:28'),
(97, 'text_ru', 'Text ru', 24, 21, 0, '', 0, 0, 0, '', 0, '2019-02-22 08:12:51', '2019-02-22 08:12:51'),
(98, 'image', 'Image', 24, 12, 0, '', 0, 0, 0, '', 0, '2019-02-22 08:13:10', '2019-02-22 08:13:10'),
(99, 'title_ka', 'Block Title ka', 25, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 08:19:24', '2019-02-22 08:19:24'),
(100, 'title_en', 'Block Title en', 25, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 08:19:45', '2019-02-22 08:19:45'),
(101, 'title_ru', 'Block Title ru', 25, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 08:19:54', '2019-02-22 08:19:54'),
(102, 'image', 'Image', 25, 12, 0, '', 0, 0, 0, '', 0, '2019-02-22 08:24:29', '2019-02-22 08:24:29'),
(103, 'project_id', 'Project', 25, 7, 0, '', 0, 0, 0, '@projects', 0, '2019-02-22 08:25:05', '2019-02-22 08:25:05'),
(104, 'active', 'Active', 25, 2, 0, 'true', 0, 0, 0, '', 0, '2019-02-22 08:25:24', '2019-02-22 08:25:24'),
(105, 'floors', 'Floors', 25, 13, 0, '', 0, 11, 0, '', 0, '2019-02-22 08:28:49', '2019-02-22 08:28:49'),
(106, 'title_ka', 'Floor ka', 26, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 08:50:16', '2019-02-22 08:50:16'),
(107, 'title_en', 'Floor en', 26, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 08:50:48', '2019-02-22 08:50:48'),
(108, 'title_ru', 'Floor ru', 26, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 08:50:59', '2019-02-22 08:50:59'),
(111, 'title_ka', 'Title ka', 27, 19, 0, '', 0, 256, 0, '', 1, '2019-02-22 08:54:33', '2019-02-22 08:55:04'),
(112, 'title_en', 'Title en', 27, 19, 0, '', 0, 256, 0, '', 2, '2019-02-22 08:55:15', '2019-02-22 08:55:15'),
(113, 'title_ru', 'Title ru', 27, 19, 0, '', 0, 256, 0, '', 3, '2019-02-22 08:55:28', '2019-02-22 08:55:28'),
(114, 'space', 'Space', 27, 13, 0, '', 0, 11, 0, '', 5, '2019-02-22 08:56:10', '2019-02-22 08:56:10'),
(116, 'active', 'Sold', 27, 2, 0, 'true', 0, 0, 0, '', 6, '2019-02-22 08:57:04', '2019-02-22 08:57:04'),
(117, 'rooms', 'Rooms', 27, 15, 0, '', 0, 0, 0, '[\"bedroom\",\"kitchen\",\"balcony\",\"toilet\"]', 7, '2019-02-22 08:59:43', '2019-02-22 08:59:43'),
(120, 'floor', 'Floor', 27, 7, 0, '', 0, 0, 0, '@floors', 4, '2019-02-25 05:18:31', '2019-02-25 05:18:31'),
(122, 'slug', 'Slug', 24, 19, 0, '', 0, 256, 0, '', 0, '2019-02-25 08:52:13', '2019-02-25 08:52:13'),
(123, 'title', 'Name', 28, 19, 1, '', 0, 256, 1, '', 0, '2019-02-26 05:22:55', '2019-02-26 05:22:55'),
(124, 'tag_id', 'Tag', 19, 7, 0, '', 0, 0, 0, '@tags', 0, '2019-02-26 05:26:04', '2019-02-26 05:26:04'),
(125, 'title_ka', 'Title', 29, 19, 0, '', 0, 256, 0, '', 0, '2019-02-26 06:08:19', '2019-02-26 06:08:19'),
(126, 'title_en', 'Title en', 29, 19, 0, '', 0, 256, 0, '', 0, '2019-02-26 06:08:33', '2019-02-26 06:08:33'),
(127, 'title_ru', 'Title ru', 29, 19, 0, '', 0, 256, 0, '', 0, '2019-02-26 06:08:50', '2019-02-26 06:08:50'),
(128, 'text_ka', 'Text', 29, 21, 0, '', 0, 0, 0, '', 0, '2019-02-26 06:09:10', '2019-02-26 06:09:10'),
(129, 'text_en', 'text en', 29, 21, 0, '', 0, 0, 0, '', 0, '2019-02-26 06:09:23', '2019-02-26 06:09:23'),
(130, 'text_ru', 'Text ru', 29, 21, 0, '', 0, 0, 0, '', 0, '2019-02-26 06:09:39', '2019-02-26 06:09:39'),
(131, 'image', 'Image', 29, 12, 0, '', 0, 0, 0, '', 0, '2019-02-26 06:09:50', '2019-02-26 06:09:50'),
(132, 'active', 'Active', 29, 2, 0, 'true', 0, 0, 0, '', 0, '2019-02-26 06:10:08', '2019-02-26 06:10:08'),
(133, 'tag_id', 'Tag', 29, 7, 0, '', 0, 256, 0, '@tags', 0, '2019-02-26 06:10:48', '2019-02-26 06:13:36'),
(142, 'title', 'Title', 30, 19, 0, '', 0, 256, 0, '', 1, '2019-02-27 03:06:07', '2019-02-27 03:06:07'),
(143, 'landing_home', 'Landing_home', 30, 2, 0, 'true', 0, 0, 0, '', 2, '2019-02-27 05:18:23', '2019-03-05 07:13:32'),
(147, 'title_ka', 'Title', 34, 19, 0, '', 0, 256, 0, '', 1, '2019-03-05 06:55:45', '2019-03-05 06:55:45'),
(148, 'text_ka', 'Text', 34, 21, 0, '', 0, 0, 0, '', 2, '2019-03-05 06:55:58', '2019-03-05 06:55:58'),
(149, 'landing_id', 'Landing', 34, 7, 0, '', 0, 0, 0, '@landings', 4, '2019-03-05 06:56:30', '2019-03-05 06:56:30'),
(150, 'title_ka', 'Title', 35, 19, 0, '', 0, 256, 0, '', 1, '2019-03-05 07:49:56', '2019-03-05 07:49:56'),
(151, 'text_ka', 'Text', 35, 21, 0, '', 0, 0, 0, '', 2, '2019-03-05 07:50:08', '2019-03-05 07:50:08'),
(152, 'landing_id', 'Landing', 35, 7, 0, '', 0, 0, 0, '@landings', 4, '2019-03-05 07:50:41', '2019-03-05 07:50:41'),
(153, 'season', 'Season', 30, 2, 0, 'true', 0, 0, 0, '', 3, '2019-03-05 07:52:02', '2019-03-05 08:15:49'),
(154, 'about_project', 'About Project', 30, 2, 0, 'true', 0, 0, 0, '', 4, '2019-03-05 07:52:56', '2019-03-05 07:52:56'),
(155, 'project_info', 'Project Info', 30, 2, 0, 'true', 0, 0, 0, '', 5, '2019-03-05 07:53:17', '2019-03-05 07:53:17'),
(156, 'project_summary', 'Project Summary', 30, 2, 0, 'true', 0, 0, 0, '', 6, '2019-03-05 07:53:50', '2019-03-05 07:53:50'),
(157, 'landing_apartment', 'Landing  Apartment', 30, 2, 0, 'true', 0, 0, 0, '', 7, '2019-03-05 07:54:08', '2019-03-06 08:16:51'),
(158, 'footer', 'Footer', 30, 2, 0, 'true', 0, 0, 0, '', 8, '2019-03-05 07:54:27', '2019-03-05 07:54:27'),
(159, 'title_ka', 'Title', 36, 19, 0, '', 0, 256, 0, '', 1, '2019-03-05 08:08:58', '2019-03-05 08:08:58'),
(160, 'text_ka', 'Text', 36, 21, 0, '', 0, 0, 0, '', 2, '2019-03-05 08:09:09', '2019-03-05 08:09:09'),
(161, 'image', 'Image', 36, 12, 0, '', 0, 0, 0, '', 3, '2019-03-05 08:09:21', '2019-03-05 08:09:21'),
(162, 'landing_id', 'Landing', 36, 7, 0, '', 0, 0, 0, '@landings', 5, '2019-03-05 08:09:39', '2019-03-05 08:09:39'),
(163, 'facebook', 'Facebook', 37, 19, 0, '', 0, 256, 0, '', 0, '2019-03-05 08:34:05', '2019-03-05 08:34:05'),
(164, 'twitter', 'Twitter', 37, 19, 0, '', 0, 256, 0, '', 0, '2019-03-05 08:34:19', '2019-03-05 08:44:22'),
(165, 'instagram', 'Instagram', 37, 19, 0, '', 0, 256, 0, '', 0, '2019-03-05 08:34:39', '2019-03-05 08:34:39'),
(166, 'youtube', 'Youtube', 37, 19, 0, '', 0, 256, 0, '', 0, '2019-03-05 08:35:02', '2019-03-05 08:35:02'),
(167, 'email', 'Email', 37, 19, 0, '', 0, 256, 0, '', 0, '2019-03-05 08:35:19', '2019-03-05 08:35:19'),
(168, 'landing_id', 'Landing', 37, 7, 0, '', 0, 0, 0, '@landings', 0, '2019-03-05 08:37:14', '2019-03-05 08:37:14'),
(169, 'image', 'Image', 34, 12, 0, '', 0, 256, 0, '', 3, '2019-03-06 04:21:46', '2019-03-06 04:21:56'),
(170, 'image', 'Image', 35, 12, 0, '', 0, 0, 0, '', 3, '2019-03-06 04:23:54', '2019-03-06 04:23:54'),
(171, 'link', 'Link', 36, 19, 0, '', 0, 256, 1, '', 4, '2019-03-06 04:32:20', '2019-03-06 04:32:42'),
(176, 'email', 'Email', 39, 8, 0, '', 0, 256, 1, '', 0, '2019-03-06 04:41:02', '2019-03-06 04:41:02'),
(177, 'phone', 'Phone', 39, 19, 0, '', 0, 256, 1, '', 0, '2019-03-06 04:41:16', '2019-03-06 04:41:16'),
(178, 'address', 'Address', 39, 19, 0, '', 0, 256, 1, '', 0, '2019-03-06 04:41:30', '2019-03-06 04:41:30'),
(179, 'landing_id', 'Landing', 39, 7, 0, '', 0, 0, 0, '@landings', 0, '2019-03-06 04:42:18', '2019-03-06 04:42:18'),
(180, 'title_ka', 'Title', 40, 19, 0, '', 0, 256, 0, '', 0, '2019-03-06 05:08:00', '2019-03-06 05:08:00'),
(181, 'text_ka', 'Text', 40, 21, 0, '', 0, 0, 0, '', 0, '2019-03-06 05:08:15', '2019-03-06 05:08:15'),
(182, 'icon', 'Icon', 40, 22, 0, '', 0, 256, 0, '', 0, '2019-03-06 05:08:34', '2019-03-06 05:08:34'),
(184, 'landing_id', 'Landing', 40, 7, 0, '', 0, 0, 0, '@landings', 0, '2019-03-06 05:09:36', '2019-03-06 05:09:36'),
(185, 'title_ka', 'Title', 41, 19, 0, '', 0, 256, 0, '', 0, '2019-03-06 07:07:13', '2019-03-06 07:16:53'),
(186, 'text_ka', 'Text', 41, 21, 0, '', 0, 0, 0, '', 0, '2019-03-06 07:07:27', '2019-03-06 07:07:27'),
(187, 'sub_text', 'Sub Text', 41, 19, 0, '', 0, 256, 0, '', 0, '2019-03-06 07:08:21', '2019-03-06 07:14:50'),
(188, 'prefix', 'Prefix', 41, 19, 0, '', 0, 3, 0, '', 0, '2019-03-06 07:08:44', '2019-03-06 07:08:44'),
(189, 'number', 'Number', 41, 19, 0, '', 0, 256, 0, '', 0, '2019-03-06 07:09:32', '2019-03-06 07:14:40'),
(190, 'sufix', 'Sufix', 41, 19, 0, '', 0, 3, 0, '', 0, '2019-03-06 07:09:46', '2019-03-06 07:09:46'),
(191, 'landing_id', 'Landing', 41, 7, 0, '', 0, 0, 0, '@landings', 0, '2019-03-06 07:13:13', '2019-03-06 07:13:13'),
(192, 'is_title', 'Is Title', 41, 2, 0, '0', 0, 0, 1, '', 0, '2019-03-06 07:13:54', '2019-03-06 07:16:25'),
(193, 'title_ka', 'Title', 42, 19, 0, '', 0, 256, 0, '', 0, '2019-03-06 08:20:55', '2019-03-06 08:20:55'),
(194, 'text_ka', 'Text', 42, 22, 0, '', 0, 256, 0, '', 0, '2019-03-06 08:22:07', '2019-03-06 08:22:07'),
(195, 'image', 'Image', 42, 12, 0, '', 0, 0, 0, '', 0, '2019-03-06 08:23:40', '2019-03-06 08:23:40'),
(196, 'landing_id', 'Landing', 42, 7, 0, '', 0, 0, 0, '@landings', 0, '2019-03-06 08:24:05', '2019-03-06 08:24:05'),
(197, 'firstname', 'Name', 43, 19, 0, '', 0, 256, 0, '', 1, '2019-03-11 05:52:21', '2019-03-11 05:52:21'),
(198, 'phone', 'Phone', 43, 19, 0, '', 0, 256, 0, '', 2, '2019-03-11 05:52:48', '2019-03-11 05:52:48'),
(199, 'project', 'Project', 43, 19, 0, '', 0, 256, 0, '', 3, '2019-03-11 05:53:07', '2019-03-11 05:53:07'),
(200, 'active', 'Contacted Back', 43, 2, 0, 'false', 0, 0, 0, '', 5, '2019-03-11 05:53:33', '2019-03-12 03:03:20'),
(201, 'email', 'Email', 43, 8, 0, '', 0, 256, 0, '', 4, '2019-03-12 03:02:55', '2019-03-12 03:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `module_field_types`
--

DROP TABLE IF EXISTS `module_field_types`;
CREATE TABLE IF NOT EXISTS `module_field_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(2, 'Checkbox', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(3, 'Currency', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(4, 'Date', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(5, 'Datetime', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(6, 'Decimal', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(7, 'Dropdown', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(8, 'Email', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(9, 'File', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(10, 'Float', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(11, 'HTML', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(12, 'Image', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(13, 'Integer', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(14, 'Mobile', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(15, 'Multiselect', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(16, 'Name', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(17, 'Password', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(18, 'Radio', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(19, 'String', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(20, 'Taginput', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(21, 'Textarea', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(22, 'TextField', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(23, 'URL', '2019-02-22 06:24:03', '2019-02-22 06:24:03'),
(24, 'Files', '2019-02-22 06:24:03', '2019-02-22 06:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

DROP TABLE IF EXISTS `navigations`;
CREATE TABLE IF NOT EXISTS `navigations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `menu_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  `menu_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_ru` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `menu_location` varchar(256) COLLATE utf8_unicode_ci DEFAULT '[]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `deleted_at`, `created_at`, `updated_at`, `menu_ka`, `menu_en`, `menu_ru`, `active`, `menu_location`) VALUES
(1, NULL, '2019-02-22 07:00:22', '2019-02-22 07:00:30', 'მთავარი', 'Home', NULL, 1, '[\"Menu\"]'),
(2, NULL, '2019-02-22 07:02:10', '2019-02-22 07:03:17', 'ჩვენს შესახებ', 'About', NULL, 1, '[\"Menu\"]'),
(3, NULL, '2019-02-22 07:02:23', '2019-02-25 04:01:10', 'ბურგერ', 'BUrger', NULL, 1, '[\"Burger\"]'),
(4, NULL, '2019-02-22 07:02:37', '2019-02-25 04:01:22', 'ბურგერ მენუ', 'BUrger 3', NULL, 1, '[\"Menu\",\"Burger\"]');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Admin Panel', 'Admin Panel Permission', NULL, '2019-02-22 06:24:06', '2019-02-22 06:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_ka` text COLLATE utf8_unicode_ci,
  `text_en` text COLLATE utf8_unicode_ci,
  `text_ru` text COLLATE utf8_unicode_ci,
  `image` int(11) DEFAULT NULL,
  `slug` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `deleted_at`, `created_at`, `updated_at`, `title_ka`, `title_en`, `title_ru`, `text_ka`, `text_en`, `text_ru`, `image`, `slug`) VALUES
(1, NULL, '2019-02-22 08:26:14', '2019-02-25 08:58:29', 'lisi greens', 'lisi greens english', NULL, NULL, NULL, NULL, 4, 'lisi-greens'),
(2, NULL, '2019-02-22 09:00:39', '2019-02-25 08:58:36', 'lisi kokhta', NULL, NULL, NULL, NULL, NULL, 0, 'lisi-kokhta');

-- --------------------------------------------------------

--
-- Table structure for table `project_infos`
--

DROP TABLE IF EXISTS `project_infos`;
CREATE TABLE IF NOT EXISTS `project_infos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_ka` text COLLATE utf8_unicode_ci,
  `icon` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `landing_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `project_infos_landing_id_foreign` (`landing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_infos`
--

INSERT INTO `project_infos` (`id`, `deleted_at`, `created_at`, `updated_at`, `title_ka`, `text_ka`, `icon`, `landing_id`) VALUES
(1, NULL, '2019-03-06 05:10:43', '2019-03-06 05:10:43', 'About Project', 'text herere', '<i class=\"fas fa-air-freshener\"></i>', 1),
(2, NULL, '2019-03-06 05:11:00', '2019-03-06 05:11:00', 'About 2', 'lorme text', '<i class=\"fas fa-air-freshener\"></i>', 1),
(3, NULL, '2019-03-06 05:11:23', '2019-03-06 05:11:23', 'about 3', 'lorem dolares ipsum', '<i class=\"fas fa-air-freshener\"></i>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_summaries`
--

DROP TABLE IF EXISTS `project_summaries`;
CREATE TABLE IF NOT EXISTS `project_summaries` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  `text_ka` text COLLATE utf8_unicode_ci,
  `sub_text` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  `prefix` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  `sufix` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `landing_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `is_title` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `project_summaries_landing_id_foreign` (`landing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_summaries`
--

INSERT INTO `project_summaries` (`id`, `deleted_at`, `created_at`, `updated_at`, `title_ka`, `text_ka`, `sub_text`, `prefix`, `number`, `sufix`, `landing_id`, `is_title`) VALUES
(1, NULL, '2019-03-06 07:11:19', '2019-03-06 07:15:18', 'Summary', 'long text for title', 'small text with numbers', '$', '1', NULL, 1, 1),
(2, NULL, '2019-03-06 07:17:23', '2019-03-07 05:34:00', '', NULL, 'Грузии был оформлен', '$', '1', NULL, 1, 0),
(3, NULL, '2019-03-06 07:17:42', '2019-03-06 07:17:42', '', NULL, 'again small 2', NULL, '150', 'k', 1, 0),
(4, NULL, '2019-03-06 07:17:57', '2019-03-06 07:17:57', '', NULL, 'sub text of three', NULL, '500', NULL, 1, 0),
(5, NULL, '2019-03-06 07:18:12', '2019-03-06 07:18:12', '', NULL, 'three more and', NULL, '166', 'k', 1, 0),
(6, NULL, '2019-03-06 07:18:30', '2019-03-06 07:18:30', '', NULL, 'two more and', '$', '500', NULL, 1, 0),
(7, '2019-03-07 04:45:13', '2019-03-06 07:18:49', '2019-03-07 04:45:13', '', NULL, 'last one i think', NULL, '80', NULL, 1, 0),
(8, NULL, '2019-03-07 04:45:29', '2019-03-07 04:45:29', '', NULL, 'sub text', '$', '150', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`),
  KEY `roles_parent_foreign` (`parent`),
  KEY `roles_dept_foreign` (`dept`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `parent`, `dept`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, 1, NULL, '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(2, 'ADMIN', 'admin', NULL, 1, 1, NULL, '2019-02-22 06:28:33', '2019-02-22 06:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `role_module`
--

DROP TABLE IF EXISTS `role_module`;
CREATE TABLE IF NOT EXISTS `role_module` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_module_role_id_foreign` (`role_id`),
  KEY `role_module_module_id_foreign` (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(2, 1, 2, 1, 1, 1, 1, '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(3, 1, 3, 1, 1, 1, 1, '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(4, 1, 4, 1, 1, 1, 1, '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(5, 1, 5, 1, 1, 1, 1, '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(6, 1, 6, 1, 1, 1, 1, '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(7, 1, 7, 1, 1, 1, 1, '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(8, 2, 1, 1, 0, 0, 0, '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(9, 2, 2, 1, 0, 0, 0, '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(10, 2, 3, 1, 0, 0, 0, '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(11, 2, 4, 1, 0, 0, 0, '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(12, 2, 5, 1, 0, 0, 0, '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(13, 2, 6, 1, 0, 0, 0, '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(14, 2, 7, 1, 0, 0, 0, '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(15, 1, 9, 1, 1, 1, 1, '2019-02-22 06:29:20', '2019-02-22 06:29:20'),
(18, 1, 16, 1, 1, 1, 1, '2019-02-22 06:59:00', '2019-02-22 06:59:00'),
(19, 1, 17, 1, 1, 1, 1, '2019-02-22 07:08:10', '2019-02-22 07:08:10'),
(21, 1, 19, 1, 1, 1, 1, '2019-02-22 07:14:32', '2019-02-22 07:14:32'),
(22, 1, 20, 1, 1, 1, 1, '2019-02-22 07:27:14', '2019-02-22 07:27:14'),
(23, 1, 21, 1, 1, 1, 1, '2019-02-22 07:34:47', '2019-02-22 07:34:47'),
(25, 1, 23, 1, 1, 1, 1, '2019-02-22 08:10:03', '2019-02-22 08:10:03'),
(26, 1, 24, 1, 1, 1, 1, '2019-02-22 08:13:18', '2019-02-22 08:13:18'),
(27, 1, 25, 1, 1, 1, 1, '2019-02-22 08:25:32', '2019-02-22 08:25:32'),
(28, 1, 26, 1, 1, 1, 1, '2019-02-22 08:53:06', '2019-02-22 08:53:06'),
(29, 1, 27, 1, 1, 1, 1, '2019-02-22 08:57:16', '2019-02-22 08:57:16'),
(30, 1, 28, 1, 1, 1, 1, '2019-02-26 05:23:10', '2019-02-26 05:23:10'),
(31, 1, 29, 1, 1, 1, 1, '2019-02-26 06:10:59', '2019-02-26 06:10:59'),
(32, 1, 30, 1, 1, 1, 1, '2019-02-27 03:00:37', '2019-02-27 03:00:37'),
(36, 1, 34, 1, 1, 1, 1, '2019-03-05 06:56:38', '2019-03-05 06:56:38'),
(37, 1, 35, 1, 1, 1, 1, '2019-03-05 07:50:57', '2019-03-05 07:50:57'),
(38, 1, 36, 1, 1, 1, 1, '2019-03-05 08:09:49', '2019-03-05 08:09:49'),
(39, 1, 37, 1, 1, 1, 1, '2019-03-05 08:35:27', '2019-03-05 08:35:27'),
(41, 1, 39, 1, 1, 1, 1, '2019-03-06 04:42:28', '2019-03-06 04:42:28'),
(42, 1, 40, 1, 1, 1, 1, '2019-03-06 05:09:50', '2019-03-06 05:09:50'),
(43, 1, 41, 1, 1, 1, 1, '2019-03-06 07:10:31', '2019-03-06 07:10:31'),
(44, 1, 42, 1, 1, 1, 1, '2019-03-06 08:24:21', '2019-03-06 08:24:21'),
(45, 1, 43, 1, 1, 1, 1, '2019-03-11 05:53:42', '2019-03-11 05:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_module_fields`
--

DROP TABLE IF EXISTS `role_module_fields`;
CREATE TABLE IF NOT EXISTS `role_module_fields` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_module_fields_role_id_foreign` (`role_id`),
  KEY `role_module_fields_field_id_foreign` (`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(2, 1, 2, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(3, 1, 3, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(4, 1, 4, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(5, 1, 5, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(6, 1, 6, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(7, 1, 7, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(8, 1, 8, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(9, 1, 9, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(10, 1, 10, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(11, 1, 11, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(12, 1, 12, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(13, 1, 13, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(14, 1, 14, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(15, 1, 15, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(16, 1, 16, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(17, 1, 17, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(18, 1, 18, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(19, 1, 19, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(20, 1, 20, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(21, 1, 21, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(22, 1, 22, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(23, 1, 23, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(24, 1, 24, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(25, 1, 25, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(26, 1, 26, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(27, 1, 27, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(28, 1, 28, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(29, 1, 29, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(30, 1, 30, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(31, 1, 31, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(32, 1, 32, 'write', '2019-02-22 06:24:06', '2019-02-22 06:24:06'),
(35, 2, 1, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(36, 2, 2, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(37, 2, 3, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(38, 2, 4, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(39, 2, 5, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(40, 2, 6, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(41, 2, 7, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(42, 2, 8, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(43, 2, 9, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(44, 2, 10, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(45, 2, 11, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(46, 2, 12, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(47, 2, 13, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(48, 2, 14, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(49, 2, 15, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(50, 2, 16, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(51, 2, 17, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(52, 2, 18, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(53, 2, 19, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(54, 2, 20, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(55, 2, 21, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(56, 2, 22, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(57, 2, 23, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(58, 2, 24, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(59, 2, 25, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(60, 2, 26, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(61, 2, 27, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(62, 2, 28, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(63, 2, 29, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(64, 2, 30, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(65, 2, 31, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(66, 2, 32, 'readonly', '2019-02-22 06:28:33', '2019-02-22 06:28:33'),
(67, 1, 35, 'write', '2019-02-22 06:29:05', '2019-02-22 06:29:05'),
(68, 1, 36, 'write', '2019-02-22 06:30:24', '2019-02-22 06:30:24'),
(81, 1, 49, 'write', '2019-02-22 06:46:11', '2019-02-22 06:46:11'),
(82, 1, 50, 'write', '2019-02-22 06:57:19', '2019-02-22 06:57:19'),
(83, 1, 51, 'write', '2019-02-22 06:57:36', '2019-02-22 06:57:36'),
(84, 1, 52, 'write', '2019-02-22 06:57:51', '2019-02-22 06:57:51'),
(85, 1, 53, 'write', '2019-02-22 06:58:12', '2019-02-22 06:58:12'),
(86, 1, 54, 'write', '2019-02-22 06:59:49', '2019-02-22 06:59:49'),
(87, 1, 55, 'write', '2019-02-22 07:05:30', '2019-02-22 07:05:30'),
(88, 1, 56, 'write', '2019-02-22 07:06:09', '2019-02-22 07:06:09'),
(89, 1, 57, 'write', '2019-02-22 07:06:27', '2019-02-22 07:06:27'),
(90, 1, 58, 'write', '2019-02-22 07:07:52', '2019-02-22 07:07:52'),
(95, 1, 63, 'write', '2019-02-22 07:13:25', '2019-02-22 07:13:25'),
(96, 1, 64, 'write', '2019-02-22 07:13:38', '2019-02-22 07:13:38'),
(97, 1, 65, 'write', '2019-02-22 07:13:55', '2019-02-22 07:13:55'),
(98, 1, 66, 'write', '2019-02-22 07:14:09', '2019-02-22 07:14:09'),
(99, 1, 67, 'write', '2019-02-22 07:14:22', '2019-02-22 07:14:22'),
(100, 1, 68, 'write', '2019-02-22 07:15:59', '2019-02-22 07:15:59'),
(101, 1, 69, 'write', '2019-02-22 07:24:54', '2019-02-22 07:24:54'),
(102, 1, 70, 'write', '2019-02-22 07:26:05', '2019-02-22 07:26:05'),
(103, 1, 71, 'write', '2019-02-22 07:26:25', '2019-02-22 07:26:25'),
(104, 1, 72, 'write', '2019-02-22 07:26:43', '2019-02-22 07:26:43'),
(105, 1, 73, 'write', '2019-02-22 07:27:04', '2019-02-22 07:27:04'),
(106, 1, 74, 'write', '2019-02-22 07:33:07', '2019-02-22 07:33:07'),
(107, 1, 75, 'write', '2019-02-22 07:33:28', '2019-02-22 07:33:28'),
(108, 1, 76, 'write', '2019-02-22 07:33:49', '2019-02-22 07:33:49'),
(109, 1, 77, 'write', '2019-02-22 07:34:08', '2019-02-22 07:34:08'),
(110, 1, 78, 'write', '2019-02-22 07:34:30', '2019-02-22 07:34:30'),
(116, 1, 84, 'write', '2019-02-22 07:50:59', '2019-02-22 07:50:59'),
(117, 1, 85, 'write', '2019-02-22 07:53:15', '2019-02-22 07:53:15'),
(118, 1, 86, 'write', '2019-02-22 07:53:27', '2019-02-22 07:53:27'),
(119, 1, 87, 'write', '2019-02-22 08:08:41', '2019-02-22 08:08:41'),
(120, 1, 88, 'write', '2019-02-22 08:09:00', '2019-02-22 08:09:00'),
(121, 1, 89, 'write', '2019-02-22 08:09:16', '2019-02-22 08:09:16'),
(122, 1, 90, 'write', '2019-02-22 08:09:37', '2019-02-22 08:09:37'),
(123, 1, 91, 'write', '2019-02-22 08:09:54', '2019-02-22 08:09:54'),
(124, 1, 92, 'write', '2019-02-22 08:11:18', '2019-02-22 08:11:18'),
(125, 1, 93, 'write', '2019-02-22 08:11:28', '2019-02-22 08:11:28'),
(126, 1, 94, 'write', '2019-02-22 08:11:44', '2019-02-22 08:11:44'),
(127, 1, 95, 'write', '2019-02-22 08:12:12', '2019-02-22 08:12:12'),
(128, 1, 96, 'write', '2019-02-22 08:12:28', '2019-02-22 08:12:28'),
(129, 1, 97, 'write', '2019-02-22 08:12:51', '2019-02-22 08:12:51'),
(130, 1, 98, 'write', '2019-02-22 08:13:10', '2019-02-22 08:13:10'),
(131, 1, 99, 'write', '2019-02-22 08:19:24', '2019-02-22 08:19:24'),
(132, 1, 100, 'write', '2019-02-22 08:19:45', '2019-02-22 08:19:45'),
(133, 1, 101, 'write', '2019-02-22 08:19:54', '2019-02-22 08:19:54'),
(134, 1, 102, 'write', '2019-02-22 08:24:29', '2019-02-22 08:24:29'),
(135, 1, 103, 'write', '2019-02-22 08:25:05', '2019-02-22 08:25:05'),
(136, 1, 104, 'write', '2019-02-22 08:25:24', '2019-02-22 08:25:24'),
(137, 1, 105, 'write', '2019-02-22 08:28:49', '2019-02-22 08:28:49'),
(138, 1, 106, 'write', '2019-02-22 08:50:33', '2019-02-22 08:50:33'),
(139, 1, 107, 'write', '2019-02-22 08:50:48', '2019-02-22 08:50:48'),
(140, 1, 108, 'write', '2019-02-22 08:51:00', '2019-02-22 08:51:00'),
(143, 1, 111, 'write', '2019-02-22 08:54:33', '2019-02-22 08:54:33'),
(144, 1, 112, 'write', '2019-02-22 08:55:15', '2019-02-22 08:55:15'),
(145, 1, 113, 'write', '2019-02-22 08:55:28', '2019-02-22 08:55:28'),
(146, 1, 114, 'write', '2019-02-22 08:56:10', '2019-02-22 08:56:10'),
(148, 1, 116, 'write', '2019-02-22 08:57:04', '2019-02-22 08:57:04'),
(149, 1, 117, 'write', '2019-02-22 08:59:43', '2019-02-22 08:59:43'),
(152, 1, 120, 'write', '2019-02-25 05:18:31', '2019-02-25 05:18:31'),
(154, 1, 122, 'write', '2019-02-25 08:52:13', '2019-02-25 08:52:13'),
(155, 1, 123, 'write', '2019-02-26 05:22:56', '2019-02-26 05:22:56'),
(156, 1, 124, 'write', '2019-02-26 05:26:04', '2019-02-26 05:26:04'),
(157, 1, 125, 'write', '2019-02-26 06:08:19', '2019-02-26 06:08:19'),
(158, 1, 126, 'write', '2019-02-26 06:08:33', '2019-02-26 06:08:33'),
(159, 1, 127, 'write', '2019-02-26 06:08:51', '2019-02-26 06:08:51'),
(160, 1, 128, 'write', '2019-02-26 06:09:10', '2019-02-26 06:09:10'),
(161, 1, 129, 'write', '2019-02-26 06:09:23', '2019-02-26 06:09:23'),
(162, 1, 130, 'write', '2019-02-26 06:09:39', '2019-02-26 06:09:39'),
(163, 1, 131, 'write', '2019-02-26 06:09:50', '2019-02-26 06:09:50'),
(164, 1, 132, 'write', '2019-02-26 06:10:25', '2019-02-26 06:10:25'),
(165, 1, 133, 'write', '2019-02-26 06:10:48', '2019-02-26 06:10:48'),
(174, 1, 142, 'write', '2019-02-27 03:06:07', '2019-02-27 03:06:07'),
(175, 1, 143, 'write', '2019-02-27 05:18:41', '2019-02-27 05:18:41'),
(179, 1, 147, 'write', '2019-03-05 06:55:45', '2019-03-05 06:55:45'),
(180, 1, 148, 'write', '2019-03-05 06:55:58', '2019-03-05 06:55:58'),
(181, 1, 149, 'write', '2019-03-05 06:56:30', '2019-03-05 06:56:30'),
(182, 1, 150, 'write', '2019-03-05 07:49:56', '2019-03-05 07:49:56'),
(183, 1, 151, 'write', '2019-03-05 07:50:08', '2019-03-05 07:50:08'),
(184, 1, 152, 'write', '2019-03-05 07:50:41', '2019-03-05 07:50:41'),
(185, 1, 153, 'write', '2019-03-05 07:52:02', '2019-03-05 07:52:02'),
(186, 1, 154, 'write', '2019-03-05 07:52:56', '2019-03-05 07:52:56'),
(187, 1, 155, 'write', '2019-03-05 07:53:17', '2019-03-05 07:53:17'),
(188, 1, 156, 'write', '2019-03-05 07:53:50', '2019-03-05 07:53:50'),
(189, 1, 157, 'write', '2019-03-05 07:54:08', '2019-03-05 07:54:08'),
(190, 1, 158, 'write', '2019-03-05 07:54:27', '2019-03-05 07:54:27'),
(191, 1, 159, 'write', '2019-03-05 08:08:58', '2019-03-05 08:08:58'),
(192, 1, 160, 'write', '2019-03-05 08:09:09', '2019-03-05 08:09:09'),
(193, 1, 161, 'write', '2019-03-05 08:09:21', '2019-03-05 08:09:21'),
(194, 1, 162, 'write', '2019-03-05 08:09:39', '2019-03-05 08:09:39'),
(195, 1, 163, 'write', '2019-03-05 08:34:05', '2019-03-05 08:34:05'),
(196, 1, 164, 'write', '2019-03-05 08:34:19', '2019-03-05 08:34:19'),
(197, 1, 165, 'write', '2019-03-05 08:34:39', '2019-03-05 08:34:39'),
(198, 1, 166, 'write', '2019-03-05 08:35:03', '2019-03-05 08:35:03'),
(199, 1, 167, 'write', '2019-03-05 08:35:20', '2019-03-05 08:35:20'),
(200, 1, 168, 'write', '2019-03-05 08:37:14', '2019-03-05 08:37:14'),
(201, 1, 169, 'write', '2019-03-06 04:21:47', '2019-03-06 04:21:47'),
(202, 1, 170, 'write', '2019-03-06 04:23:54', '2019-03-06 04:23:54'),
(203, 1, 171, 'write', '2019-03-06 04:32:20', '2019-03-06 04:32:20'),
(208, 1, 176, 'write', '2019-03-06 04:41:02', '2019-03-06 04:41:02'),
(209, 1, 177, 'write', '2019-03-06 04:41:16', '2019-03-06 04:41:16'),
(210, 1, 178, 'write', '2019-03-06 04:41:46', '2019-03-06 04:41:46'),
(211, 1, 179, 'write', '2019-03-06 04:42:18', '2019-03-06 04:42:18'),
(212, 1, 180, 'write', '2019-03-06 05:08:00', '2019-03-06 05:08:00'),
(213, 1, 181, 'write', '2019-03-06 05:08:15', '2019-03-06 05:08:15'),
(214, 1, 182, 'write', '2019-03-06 05:08:34', '2019-03-06 05:08:34'),
(216, 1, 184, 'write', '2019-03-06 05:09:36', '2019-03-06 05:09:36'),
(217, 1, 185, 'write', '2019-03-06 07:07:13', '2019-03-06 07:07:13'),
(218, 1, 186, 'write', '2019-03-06 07:07:27', '2019-03-06 07:07:27'),
(219, 1, 187, 'write', '2019-03-06 07:08:21', '2019-03-06 07:08:21'),
(220, 1, 188, 'write', '2019-03-06 07:08:44', '2019-03-06 07:08:44'),
(221, 1, 189, 'write', '2019-03-06 07:09:32', '2019-03-06 07:09:32'),
(222, 1, 190, 'write', '2019-03-06 07:09:46', '2019-03-06 07:09:46'),
(223, 1, 191, 'write', '2019-03-06 07:13:13', '2019-03-06 07:13:13'),
(224, 1, 192, 'write', '2019-03-06 07:13:54', '2019-03-06 07:13:54'),
(225, 1, 193, 'write', '2019-03-06 08:20:56', '2019-03-06 08:20:56'),
(226, 1, 194, 'write', '2019-03-06 08:22:07', '2019-03-06 08:22:07'),
(227, 1, 195, 'write', '2019-03-06 08:23:40', '2019-03-06 08:23:40'),
(228, 1, 196, 'write', '2019-03-06 08:24:05', '2019-03-06 08:24:05'),
(229, 1, 197, 'write', '2019-03-11 05:52:21', '2019-03-11 05:52:21'),
(230, 1, 198, 'write', '2019-03-11 05:52:48', '2019-03-11 05:52:48'),
(231, 1, 199, 'write', '2019-03-11 05:53:07', '2019-03-11 05:53:07'),
(232, 1, 200, 'write', '2019-03-11 05:53:33', '2019-03-11 05:53:33'),
(233, 1, 201, 'write', '2019-03-12 03:02:55', '2019-03-12 03:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `role_user_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

DROP TABLE IF EXISTS `seasons`;
CREATE TABLE IF NOT EXISTS `seasons` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_ka` text COLLATE utf8_unicode_ci,
  `landing_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `image` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seasons_landing_id_foreign` (`landing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`id`, `deleted_at`, `created_at`, `updated_at`, `title_ka`, `text_ka`, `landing_id`, `image`) VALUES
(1, NULL, '2019-03-05 07:56:29', '2019-03-06 04:26:27', 'აქტიური 4 სეზონის მაძილზე', 'აქტიური 4 სეზონის მაძილზე აქტიური 4 სეზონის მაძილზე', 1, 1),
(2, NULL, '2019-03-07 04:43:45', '2019-03-07 04:43:45', 'kokhta', 'asdasd asd asd ad', 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `deleted_at`, `created_at`, `updated_at`, `title`) VALUES
(1, NULL, '2019-02-26 05:23:31', '2019-02-26 05:23:31', 'greenzone'),
(2, NULL, '2019-02-26 05:24:48', '2019-02-26 05:24:48', 'views'),
(3, NULL, '2019-02-26 05:24:58', '2019-02-26 05:24:58', 'mission');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fullname_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_name en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Full name ru` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `position_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position_ru` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `deleted_at`, `created_at`, `updated_at`, `fullname_ka`, `full_name en`, `Full name ru`, `image`, `position_ka`, `position_en`, `position_ru`, `active`) VALUES
(1, NULL, '2019-02-25 08:04:20', '2019-02-25 08:04:20', 'Full name ka :', NULL, NULL, 1, 'Position ka :', 'Position ka :', 'Position ka :', 1),
(2, NULL, NULL, NULL, 'giorgi rekchi', 'george', NULL, NULL, NULL, NULL, NULL, 0),
(3, NULL, NULL, NULL, 'vaxo', 'vakho', NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
CREATE TABLE IF NOT EXISTS `tests` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_field` text COLLATE utf8_unicode_ci,
  `menu` varchar(256) COLLATE utf8_unicode_ci DEFAULT '[]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `deleted_at`, `created_at`, `updated_at`, `title`, `new_field`, `menu`) VALUES
(1, '2019-02-22 06:44:05', '2019-02-22 06:32:13', '2019-02-22 06:44:05', 'safsdf', 'dsfsd', NULL),
(2, NULL, '2019-02-22 06:50:09', '2019-02-22 06:50:09', 'ტურები', 'uuu', '[\"header\",\"burger\"]');

-- --------------------------------------------------------

--
-- Table structure for table `text_images`
--

DROP TABLE IF EXISTS `text_images`;
CREATE TABLE IF NOT EXISTS `text_images` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ka` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_ka` text COLLATE utf8_unicode_ci,
  `text_en` text COLLATE utf8_unicode_ci,
  `text_ru` text COLLATE utf8_unicode_ci,
  `image` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `tag_id` int(10) UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `text_images`
--

INSERT INTO `text_images` (`id`, `deleted_at`, `created_at`, `updated_at`, `title_ka`, `title_en`, `title_ru`, `text_ka`, `text_en`, `text_ru`, `image`, `active`, `tag_id`) VALUES
(1, NULL, '2019-02-26 06:12:02', '2019-02-26 06:14:13', 'სათაური', NULL, NULL, 'ტექსტი ქართულად', NULL, NULL, 5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
CREATE TABLE IF NOT EXISTS `uploads` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `path` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `public` tinyint(1) DEFAULT '0',
  `type` int(10) UNSIGNED DEFAULT NULL,
  `size` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uploads_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `path`, `extension`, `user_id`, `public`, `type`, `size`, `url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '12de8d4e66b0643ac998aa928c8abda4--campfire-tumblr-tumblr-camping.jpg', 'C:\\wamp64\\www\\code_online\\lisi.digitalmate.io\\public\\files\\image\\2019-02-22\\1.jpg', 'jpg', 1, 0, 3, '62029', 'image/2019-02-22/1.jpg', NULL, '2019-02-22 06:38:04', '2019-02-22 06:38:04'),
(2, 'DMDIKcyWsAEsKDj.jpg', 'C:\\wamp64\\www\\code_online\\lisi.digitalmate.io\\public\\files\\image\\2019-02-22\\2.jpg', 'jpg', 1, 0, 3, '354449', 'image/2019-02-22/2.jpg', NULL, '2019-02-22 07:22:29', '2019-02-22 07:22:30'),
(3, 'wallpaper2you_404548.jpg', 'C:\\wamp64\\www\\code_online\\lisi.digitalmate.io\\public\\files\\image\\2019-02-22\\3.jpg', 'jpg', 1, 0, 3, '527134', 'image/2019-02-22/3.jpg', NULL, '2019-02-22 07:22:59', '2019-02-22 07:23:00'),
(4, 'batumi3.jpg', 'C:\\wamp64\\www\\code_online\\lisi.digitalmate.io\\public\\files\\image\\2019-02-22\\4.jpg', 'jpg', 1, 0, 3, '189194', 'image/2019-02-22/4.jpg', NULL, '2019-02-22 08:26:10', '2019-02-22 08:26:10'),
(5, 'Random_Wallpaper_NexusandMe-102.jpg', 'C:\\wamp64\\www\\code_online\\lisi.digitalmate.io\\public\\files\\image\\2019-02-26\\5.jpg', 'jpg', 1, 0, 3, '946098', 'image/2019-02-26/5.jpg', NULL, '2019-02-26 06:11:53', '2019-02-26 06:11:53'),
(6, 'about_project.png', 'C:\\wamp64\\www\\code_online\\lisi.digitalmate.io\\public\\files\\image\\2019-03-05\\6.png', 'png', 1, 0, 3, '791022', 'image/2019-03-05/6.png', NULL, '2019-03-05 08:12:57', '2019-03-05 08:12:58'),
(7, 'bg1.png', 'C:\\wamp64\\www\\code_online\\lisi.digitalmate.io\\public\\files\\image\\2019-03-05\\7.png', 'png', 1, 0, 3, '1183560', 'image/2019-03-05/7.png', NULL, '2019-03-05 08:13:02', '2019-03-05 08:13:03'),
(8, 'flat.png', 'C:\\wamp64\\www\\code_online\\lisi.digitalmate.io\\public\\files\\image\\2019-03-05\\8.png', 'png', 1, 0, 3, '683801', 'image/2019-03-05/8.png', NULL, '2019-03-05 08:13:03', '2019-03-05 08:13:04'),
(9, 'summary.png', 'C:\\wamp64\\www\\code_online\\lisi.digitalmate.io\\public\\files\\image\\2019-03-05\\9.png', 'png', 1, 0, 3, '982552', 'image/2019-03-05/9.png', NULL, '2019-03-05 08:13:04', '2019-03-05 08:13:04'),
(10, '268A2809 copy copy copy.png', 'C:\\wamp64\\www\\code_online\\lisi.digitalmate.io\\public\\files\\image\\2019-03-06\\10.png', 'png', 1, 0, 3, '939499', 'image/2019-03-06/10.png', NULL, '2019-03-06 04:25:17', '2019-03-06 04:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `context_id` int(10) UNSIGNED DEFAULT '0',
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `type` varchar(191) COLLATE utf8_unicode_ci DEFAULT 'Employee',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `email`, `password`, `type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, 'vaska@digitalmate.io', '$2y$10$fffxDiiuSga38RvNAAN8xOCH.4f.rMreF5UaBScTgxEajMU0m5MCi', 'Employee', NULL, NULL, '2019-02-22 06:24:25', '2019-02-22 06:24:25');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about_projects`
--
ALTER TABLE `about_projects`
  ADD CONSTRAINT `about_projects_landing_id_foreign` FOREIGN KEY (`landing_id`) REFERENCES `landings` (`id`);

--
-- Constraints for table `aparatmnets`
--
ALTER TABLE `aparatmnets`
  ADD CONSTRAINT `aparatmnets_floor_foreign` FOREIGN KEY (`floor`) REFERENCES `floors` (`id`);

--
-- Constraints for table `blocks`
--
ALTER TABLE `blocks`
  ADD CONSTRAINT `blocks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`);

--
-- Constraints for table `green_zones`
--
ALTER TABLE `green_zones`
  ADD CONSTRAINT `green_zones_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Constraints for table `landing_apartments`
--
ALTER TABLE `landing_apartments`
  ADD CONSTRAINT `landing_apartments_landing_id_foreign` FOREIGN KEY (`landing_id`) REFERENCES `landings` (`id`);

--
-- Constraints for table `landing_footers`
--
ALTER TABLE `landing_footers`
  ADD CONSTRAINT `landing_footers_landing_id_foreign` FOREIGN KEY (`landing_id`) REFERENCES `landings` (`id`);

--
-- Constraints for table `landing_homes`
--
ALTER TABLE `landing_homes`
  ADD CONSTRAINT `landing_homes_landing_id_foreign` FOREIGN KEY (`landing_id`) REFERENCES `landings` (`id`);

--
-- Constraints for table `landing_socials`
--
ALTER TABLE `landing_socials`
  ADD CONSTRAINT `landing_socials_landing_id_foreign` FOREIGN KEY (`landing_id`) REFERENCES `landings` (`id`);

--
-- Constraints for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project_infos`
--
ALTER TABLE `project_infos`
  ADD CONSTRAINT `project_infos_landing_id_foreign` FOREIGN KEY (`landing_id`) REFERENCES `landings` (`id`);

--
-- Constraints for table `project_summaries`
--
ALTER TABLE `project_summaries`
  ADD CONSTRAINT `project_summaries_landing_id_foreign` FOREIGN KEY (`landing_id`) REFERENCES `landings` (`id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`);

--
-- Constraints for table `role_module`
--
ALTER TABLE `role_module`
  ADD CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_fields_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seasons`
--
ALTER TABLE `seasons`
  ADD CONSTRAINT `seasons_landing_id_foreign` FOREIGN KEY (`landing_id`) REFERENCES `landings` (`id`);

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
