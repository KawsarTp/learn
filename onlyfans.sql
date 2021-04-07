-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 07, 2021 at 07:30 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlyfans`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `image`, `access`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@site.com', 'admin', NULL, '5ff1c3531ed3f1609679699.jpg', NULL, '$2y$10$Z7ifEDvfu5QNI0HpDI1EeuxtokN0BBrQ75jariAYOFGuwKZ2w0iOO', NULL, '2021-01-04 03:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_status` tinyint(4) NOT NULL DEFAULT 0,
  `click_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `user_id`, `title`, `read_status`, `click_url`, `created_at`, `updated_at`) VALUES
(1, 13, 'New member registered', 1, 'https://localhost/admin/laramin_3_8/laramin_3/admin/user/detail/13', '2021-03-15 03:35:45', '2021-03-15 04:03:24'),
(2, 13, 'New withdraw request from testuser123', 1, 'https://localhost/admin/laramin_3_8/laramin_3/admin/withdraw/details/11', '2021-03-15 04:07:14', '2021-03-15 04:15:19'),
(3, 13, 'New withdraw request', 1, 'https://localhost/admin/laramin_3_8/laramin_3/admin/withdraw/details/12', '2021-03-15 04:07:50', '2021-03-15 23:32:24'),
(4, 13, 'Deposit successful via Stripe Hosted - USD', 1, 'https://localhost/admin/laramin_3_8/laramin_3/admin/deposit/successful', '2021-03-15 04:20:41', '2021-03-15 23:35:54'),
(5, 13, 'Deposit request from testuser123', 1, 'https://localhost/admin/laramin_3_8/laramin_3/admin/deposit/details/60', '2021-03-15 04:23:31', '2021-03-15 04:24:46'),
(6, 13, 'New support ticket has opened', 1, 'https://localhost/admin/laramin_3_8/laramin_3/admin/tickets/view/14', '2021-03-15 04:30:17', '2021-03-15 04:30:44'),
(7, 0, 'New support ticket has opened', 1, 'https://localhost/admin/laramin_3_8/laramin_3/admin/tickets/view/17', '2021-03-15 04:32:52', '2021-03-15 23:30:22'),
(8, 8, 'Deposit successful via Stripe Hosted - USD', 0, 'http://localhost/admin/laramin_3_8/laramin_3/admin/deposit/successful', '2021-03-15 23:37:44', '2021-03-15 23:37:44'),
(9, 8, 'Deposit request from username', 1, 'http://localhost/admin/laramin_3_8/laramin_3/admin/deposit/details/62', '2021-03-15 23:39:29', '2021-03-20 01:07:29'),
(10, 8, 'New withdraw request from username', 0, 'http://localhost/admin/laramin_3_8/laramin_3/admin/withdraw/details/13', '2021-03-15 23:39:45', '2021-03-15 23:39:45'),
(11, 8, 'New withdraw request from username', 0, 'http://localhost/admin/laramin_3_8/laramin_3/admin/withdraw/details/14', '2021-03-15 23:39:55', '2021-03-15 23:39:55'),
(12, 14, 'New member registered', 0, 'https://localhost/admin/laramin_3_8/laramin_3/admin/user/detail/14', '2021-03-16 07:18:09', '2021-03-16 07:18:09'),
(13, 15, 'New member registered', 1, 'https://localhost/admin/laramin_3_8/laramin_3/admin/user/detail/15', '2021-03-16 07:19:25', '2021-03-20 01:07:12'),
(14, 16, 'New member registered', 0, 'https://localhost/admin/laramin_3_8/laramin_3/admin/user/detail/16', '2021-03-16 07:20:49', '2021-03-16 07:20:49'),
(15, 1, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/1', '2021-04-03 04:12:57', '2021-04-03 04:12:57'),
(16, 1, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/1', '2021-04-03 04:18:22', '2021-04-03 04:18:22'),
(17, 1, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/1', '2021-04-03 04:19:27', '2021-04-03 04:19:27'),
(18, 2, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/2', '2021-04-03 04:21:17', '2021-04-03 04:21:17'),
(19, 1, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/1', '2021-04-03 04:22:04', '2021-04-03 04:22:04'),
(20, 1, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/1', '2021-04-03 04:25:00', '2021-04-03 04:25:00'),
(21, 1, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/1', '2021-04-03 04:31:07', '2021-04-03 04:31:07'),
(22, 1, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/1', '2021-04-03 04:32:09', '2021-04-03 04:32:09'),
(23, 3, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/3', '2021-04-03 04:33:49', '2021-04-03 04:33:49'),
(24, 1, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/1', '2021-04-03 04:38:21', '2021-04-03 04:38:21'),
(25, 1, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/1', '2021-04-03 04:39:14', '2021-04-03 04:39:14'),
(26, 2, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/2', '2021-04-03 04:42:46', '2021-04-03 04:42:46'),
(27, 3, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/3', '2021-04-03 04:46:14', '2021-04-03 04:46:14'),
(28, 4, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/4', '2021-04-03 04:47:44', '2021-04-03 04:47:44'),
(29, 5, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/5', '2021-04-03 04:50:54', '2021-04-03 04:50:54'),
(30, 1, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/1', '2021-04-03 04:52:00', '2021-04-03 04:52:00'),
(31, 1, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/1', '2021-04-03 04:54:52', '2021-04-03 04:54:52'),
(32, 1, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/1', '2021-04-03 04:55:37', '2021-04-03 04:55:37'),
(33, 5, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/5', '2021-04-03 23:48:01', '2021-04-03 23:48:01'),
(34, 6, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/6', '2021-04-04 00:20:07', '2021-04-04 00:20:07'),
(35, 1, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/1', '2021-04-04 00:21:07', '2021-04-04 00:21:07'),
(36, 2, 'New Creator registered', 0, 'http://localhost/kawsar/onlyfans/admin/creator/details/2', '2021-04-04 00:30:45', '2021-04-04 00:30:45'),
(37, 3, 'New Creator registered', 1, 'http://localhost/kawsar/onlyfans/admin/creator/details/3', '2021-04-04 01:04:27', '2021-04-05 09:39:15'),
(38, 17, 'New member registered', 0, 'http://localhost/envato/admin/user/detail/17', '2021-04-05 12:52:04', '2021-04-05 12:52:04'),
(39, 4, 'New Creator registered', 0, 'http://localhost/envato/admin/creator/details/4', '2021-04-05 14:06:22', '2021-04-05 14:06:22'),
(40, 17, 'Deposit successful via Stripe Hosted - USD', 0, 'http://localhost/envato/admin/deposit/successful', '2021-04-07 11:01:09', '2021-04-07 11:01:09'),
(41, 2, 'Deposit successful via Stripe Hosted - USD', 0, 'http://localhost/envato/admin/deposit/successful', '2021-04-07 11:05:55', '2021-04-07 11:05:55'),
(42, 1, 'Deposit successful via Stripe Hosted - USD', 0, 'http://localhost/envato/admin/deposit/successful', '2021-04-07 13:29:15', '2021-04-07 13:29:15'),
(43, 5, 'New Creator registered', 0, 'http://localhost/envato/admin/creator/details/5', '2021-04-07 16:24:46', '2021-04-07 16:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_password_resets`
--

INSERT INTO `admin_password_resets` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin@site.com', '197049', 1, '2020-06-17 03:50:15', NULL),
(2, 'admin@site.com', '732367', 1, '2020-06-17 03:52:12', NULL),
(3, 'admin@site.com', '277967', 1, '2020-06-17 03:53:12', NULL),
(4, 'admin@site.com', '983577', 1, '2020-06-17 03:53:21', NULL),
(5, 'admin@site.com', '409354', 1, '2020-06-17 03:53:51', NULL),
(6, 'admin@site.com', '451569', 1, '2020-06-17 03:54:11', NULL),
(7, 'admin@site.com', '773540', 1, '2020-06-17 03:54:24', NULL),
(8, 'admin@site.com', '822875', 1, '2020-06-17 04:05:04', NULL),
(9, 'admin@site.com', '606926', 1, '2020-06-17 04:05:19', NULL),
(10, 'admin@site.com', '811540', 1, '2020-07-08 03:28:19', NULL),
(11, 'admin@site.com', '275965', 0, '2021-01-02 19:36:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `collectives`
--

CREATE TABLE `collectives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content_creator_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collective_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goal` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collectives`
--

INSERT INTO `collectives` (`id`, `content_creator_id`, `name`, `description`, `image`, `collective_type`, `goal`, `approval_status`, `created_at`, `updated_at`) VALUES
(1, 5, 'Vue', 'We are on a mission to help more frontend devs enjoy building apps for the web.', '606dacb02ba261617800368.png', 'open source', '0.00000000', 0, '2021-04-07 16:59:28', '2021-04-07 16:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `collective_sponsors`
--

CREATE TABLE `collective_sponsors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `collective_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(28,8) NOT NULL,
  `duration` int(11) NOT NULL COMMENT '1=>one time, 2=>monthly, 3=> yearly',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collective_sponsors`
--

INSERT INTO `collective_sponsors` (`id`, `collective_id`, `name`, `details`, `price`, `duration`, `created_at`, `updated_at`) VALUES
(1, 1, 'asdasdasd', 'asdasdad', '10.00000000', 2, '2021-04-07 17:58:40', '2021-04-07 17:58:40'),
(2, 1, 'asdasdasd 21', 'asdasdasd', '200.00000000', 3, '2021-04-07 18:01:28', '2021-04-07 18:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `details`, `model`, `created_at`, `updated_at`) VALUES
(1, 6, 17, 'aasasas', 'App\\Models\\User', '2021-04-06 13:53:55', '2021-04-06 13:53:55'),
(2, 7, 2, 'asasasas', 'App\\Models\\ContentCreator', '2021-04-06 14:18:43', '2021-04-06 14:18:43'),
(3, 7, 17, 'adadasdas', 'App\\Models\\User', '2021-04-07 10:13:02', '2021-04-07 10:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `comment_reactions`
--

CREATE TABLE `comment_reactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_reactions`
--

INSERT INTO `comment_reactions` (`id`, `post_id`, `comment_id`, `user_id`, `model`, `created_at`, `updated_at`) VALUES
(13, 7, 2, 2, 'App\\Models\\ContentCreator', '2021-04-07 09:55:35', '2021-04-07 09:55:35'),
(14, 6, 1, 2, 'App\\Models\\ContentCreator', '2021-04-07 09:57:45', '2021-04-07 09:57:45'),
(18, 7, 2, 17, 'App\\Models\\User', '2021-04-07 10:13:52', '2021-04-07 10:13:52');

-- --------------------------------------------------------

--
-- Table structure for table `content_creators`
--

CREATE TABLE `content_creators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` decimal(28,8) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` tinyint(11) NOT NULL,
  `payment_type` tinyint(4) DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0:banned, 1:active',
  `ev` tinyint(1) NOT NULL COMMENT '0:email unverified, 1:email verified',
  `sv` tinyint(1) NOT NULL COMMENT '0:sms unverified, 1:sms verified',
  `ver_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'store verification code',
  `ver_code_send_at` datetime NOT NULL COMMENT 'store verification code',
  `ts` tinyint(1) NOT NULL COMMENT '0:2fa off, 1: 2fa on',
  `tv` tinyint(1) NOT NULL COMMENT '0:2fa off, 1: 2fa on',
  `tsc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_creators`
--

INSERT INTO `content_creators` (`id`, `first_name`, `last_name`, `username`, `email`, `mobile`, `balance`, `password`, `image`, `address`, `user_type`, `payment_type`, `status`, `ev`, `sv`, `ver_code`, `ver_code_send_at`, `ts`, `tv`, `tsc`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jaden', 'Matthew', 'username', 'zinu@mailinator.com', '93+18413259429', '600.00000000', '$2y$10$JX6AMxmYYC8GMfeXG9egqOzKWMF/lT5iwMKguYDd2z8P4vEabdlLW', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Afghanistan\",\"city\":\"\"}', 1, 2, 1, 0, 1, '', '0000-00-00 00:00:00', 0, 1, '', NULL, '2021-04-04 00:21:07', '2021-04-07 13:41:47'),
(2, 'Kaseem', 'Giacomo', 'perry321', 'fetodi@mailinator.com', '9312768316222', '2200.00000000', '$2y$10$Efb1OvM2hIS0ndhEIX6sMu/qnmG/RDvpnFf5BJ/twl1l4f747Qt5K', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Afghanistan\",\"city\":\"\"}', 1, 1, 1, 0, 1, '', '0000-00-00 00:00:00', 0, 1, '', NULL, '2021-04-04 00:30:45', '2021-04-07 13:41:47'),
(3, 'Harlan', 'Brynn', 'Whitney', 'woduxedu@mailinator.com', '1242+34 5291385645', '0.00000000', '$2y$10$gxj39CAvdzshB5gXLlqnbekq2B02vorFeziOeCXfacxEi5jaLoMqq', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Bahamas\",\"city\":\"\"}', 2, NULL, 1, 0, 1, '', '0000-00-00 00:00:00', 0, 1, '', NULL, '2021-04-04 01:04:27', '2021-04-04 01:04:27'),
(4, 'asdasd', 'asdasd', 'admin123', 'student@example.com', '931235787878787', '600.00000000', '$2y$10$RAYE3h5MVJPr5EHguWwLIeFKDzqk3htavIb2YkJ82O4f12K.TwnV2', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Afghanistan\",\"city\":\"\"}', 1, 1, 1, 0, 1, '', '0000-00-00 00:00:00', 0, 1, '', NULL, '2021-04-05 14:06:22', '2021-04-07 13:40:24'),
(5, 'tapost', 'rabeya', 'taposi', 'tapos@test.com', '374123456789q', '0.00000000', '$2y$10$gXIq.bA90yoesnld70jBLegV4AvVwfbpqGOQCua99Qnc27cWJpAla', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Armenia\",\"city\":\"\"}', 2, NULL, 1, 0, 1, '', '0000-00-00 00:00:00', 0, 1, '', NULL, '2021-04-07 16:24:46', '2021-04-07 16:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `creator_logins`
--

CREATE TABLE `creator_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `creator_logins`
--

INSERT INTO `creator_logins` (`id`, `user_id`, `user_ip`, `location`, `browser`, `os`, `longitude`, `latitude`, `country`, `country_code`, `created_at`, `updated_at`) VALUES
(1, 1, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-04 00:21:07', '2021-04-04 00:21:07'),
(2, 2, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-04 00:30:45', '2021-04-04 00:30:45'),
(3, 3, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-04 01:04:27', '2021-04-04 01:04:27'),
(4, 4, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-05 14:06:22', '2021-04-05 14:06:22'),
(5, 5, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-07 16:24:46', '2021-04-07 16:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_code` int(10) UNSIGNED NOT NULL,
  `amount` decimal(18,8) NOT NULL,
  `method_currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` decimal(18,8) NOT NULL,
  `rate` decimal(18,8) NOT NULL,
  `final_amo` decimal(18,8) DEFAULT 0.00000000,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_amo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `try` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel',
  `admin_feedback` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `model`, `method_code`, `amount`, `method_currency`, `charge`, `rate`, `final_amo`, `detail`, `btc_amo`, `btc_wallet`, `trx`, `try`, `status`, `admin_feedback`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, 103, '100.00000000', 'USD', '2.00000000', '1.00000000', '102.00000000', NULL, '0', '', 'R9PF9HFFD3BT', 0, 1, NULL, '2020-10-28 07:07:47', '2020-10-28 07:08:07'),
(2, 8, NULL, 116, '10.00000000', 'PKR', '2.00000000', '10.00000000', '120.00000000', NULL, '0', '', 'CGFO6XOF9YTW', 0, 0, NULL, '2020-10-29 00:17:48', '2020-10-29 00:17:48'),
(3, 8, NULL, 116, '500.00000000', 'PKR', '51.00000000', '10.00000000', '5510.00000000', NULL, '0', '', 'FMG623TRURX7', 0, 0, NULL, '2020-10-29 02:58:48', '2020-10-29 02:58:48'),
(4, 8, NULL, 116, '100.00000000', 'PKR', '11.00000000', '10.00000000', '1110.00000000', NULL, '0', '', '1X37WJCX69UJ', 0, 0, NULL, '2020-10-29 03:31:44', '2020-10-29 03:31:44'),
(5, 8, NULL, 101, '100.00000000', 'USD', '2.00000000', '1.00000000', '102.00000000', NULL, '0', '', 'UD9C6KC3VFPR', 0, 0, NULL, '2020-10-29 03:45:17', '2020-10-29 03:45:17'),
(6, 8, NULL, 1001, '100.00000000', 'USD', '6.00000000', '1.00000000', '106.00000000', '{\"transaction_number_uy7uyui\":{\"field_name\":\"555555\",\"type\":\"text\"},\"screenshot\":{\"field_name\":\"5f9d5fb36f88e1604149171.png\",\"type\":\"file\"}}', '0', '', '3UW9J6MU1XUM', 0, 3, 'fffff', '2020-10-31 06:59:09', '2021-01-03 23:21:32'),
(7, 8, NULL, 1001, '100.00000000', 'USD', '6.00000000', '1.00000000', '106.00000000', '{\"transaction_number_uy7uyui\":{\"field_name\":\"gsdf\",\"type\":\"text\"},\"sss\":{\"field_name\":\"sdfg\",\"type\":\"text\"},\"ffff\":{\"field_name\":\"sdfg\",\"type\":\"text\"}}', '0', '', '82NQZWEPP976', 0, 1, NULL, '2020-10-31 07:02:18', '2021-01-03 23:21:24'),
(8, 8, NULL, 113, '100.00000000', 'AUD', '2.00000000', '1.00000000', '102.00000000', NULL, '0', '', 'T1NP5N3OUZT6', 0, 0, NULL, '2020-10-31 23:20:39', '2020-10-31 23:20:39'),
(9, 8, NULL, 101, '100.00000000', 'USD', '2.00000000', '1.00000000', '102.00000000', NULL, '0', '', 'A65VO2BM1ZDM', 0, 0, NULL, '2020-10-31 23:21:01', '2020-10-31 23:21:01'),
(10, 8, NULL, 113, '100.00000000', 'AUD', '2.00000000', '1.00000000', '102.00000000', NULL, '0', '', '2TTOEUZ23Y3Z', 0, 0, NULL, '2020-10-31 23:30:24', '2020-10-31 23:30:24'),
(11, 8, NULL, 1002, '100.00000000', 'USD', '3.41000000', '1.00000000', '103.41000000', '{\"send_from_number\":{\"field_name\":\"sdfg\",\"type\":\"text\"},\"transaction_number\":{\"field_name\":\"asdfasdf\",\"type\":\"text\"},\"screenshot\":{\"field_name\":\"2020\\/11\\/01\\/5f9e7485e6f621604220037.png\",\"type\":\"file\"}}', '0', '', '8N8HGAKVV8UJ', 0, 1, NULL, '2020-11-01 02:35:38', '2020-12-24 00:03:37'),
(12, 8, NULL, 110, '100.00000000', 'INR', '2.00000000', '1.00000000', '102.00000000', NULL, '0', '', 'A1DWNCQ9AKVW', 0, 0, NULL, '2020-11-09 01:02:06', '2020-11-09 01:02:06'),
(13, 8, NULL, 1002, '100.00000000', 'USD', '3.41000000', '1.00000000', '103.41000000', NULL, '0', '', '9DXVTFUUCDUG', 0, 0, NULL, '2021-01-03 04:39:40', '2021-01-03 04:39:40'),
(14, 8, NULL, 108, '10.00000000', 'USD', '1.00000000', '1.00000000', '11.00000000', NULL, '0', '', 'BTAPNO5UYA5K', 0, 0, NULL, '2021-01-03 07:08:04', '2021-01-03 07:08:04'),
(15, 8, NULL, 103, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'BRW3ER4V2C5E', 0, 0, NULL, '2021-01-03 07:08:45', '2021-01-03 07:08:45'),
(16, 8, NULL, 111, '10.00000000', 'USD', '2.00000000', '10.00000000', '120.00000000', NULL, '0', '', 'NKCC4Z5MOTRJ', 0, 0, NULL, '2021-01-03 07:08:53', '2021-01-03 07:08:53'),
(17, 8, NULL, 103, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'PS7CHDSBWEAE', 0, 0, NULL, '2021-01-03 08:20:46', '2021-01-03 08:20:46'),
(18, 8, NULL, 102, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'AKH7S7JDA6SZ', 0, 0, NULL, '2021-01-03 08:21:10', '2021-01-03 08:21:10'),
(19, 8, NULL, 1002, '100.00000000', 'USD', '3.41000000', '1.00000000', '103.41000000', '{\"send_from_number\":{\"field_name\":\"sdfg\",\"type\":\"text\"},\"transaction_number\":{\"field_name\":\"asdfasdf\",\"type\":\"text\"},\"screenshot\":{\"field_name\":\"2021\\/01\\/04\\/5ff2a86e029351609738350.jpg\",\"type\":\"file\"}}', '0', '', 'WWMAHTRWY3PC', 0, 1, NULL, '2021-01-03 23:32:18', '2021-01-03 23:33:20'),
(20, 8, NULL, 103, '100.00000000', 'USD', '2.00000000', '1.00000000', '102.00000000', NULL, '0', '', 'VH3B11FG13WV', 0, 1, NULL, '2021-01-04 00:20:10', '2021-01-04 00:20:25'),
(21, 8, NULL, 111, '100.00000000', 'USD', '11.00000000', '10.00000000', '1110.00000000', NULL, '0', '', 'VTY9QCM6NAU4', 0, 0, NULL, '2021-01-04 03:28:11', '2021-01-04 03:28:11'),
(22, 8, NULL, 114, '10.00000000', 'USD', '1.00000000', '1.00000000', '11.00000000', NULL, '0', 'cs_test_a1tJbNVd9bMWXaHi5mOsr7psTEzCcLnz9lwWPp62ig13EBtC0djL3iwQDP', '16A9RWBSTUO2', 0, 0, NULL, '2021-01-04 03:28:38', '2021-01-04 03:28:42'),
(23, 8, NULL, 109, '100.00000000', 'USD', '1.00000000', '1.00000000', '101.00000000', NULL, '0', '', 'YVT87A2W2XQF', 0, 0, NULL, '2021-01-04 03:29:01', '2021-01-04 03:29:01'),
(24, 8, NULL, 1002, '100.00000000', 'USD', '3.41000000', '1.00000000', '103.41000000', '{\"send_from_number\":{\"field_name\":\"sdfg\",\"type\":\"text\"},\"transaction_number\":{\"field_name\":\"sdfgsdfg\",\"type\":\"text\"},\"screenshot\":{\"field_name\":\"2021\\/01\\/04\\/5ff2e297050c51609753239.png\",\"type\":\"file\"}}', '0', '', '48FM79V83QRS', 0, 2, NULL, '2021-01-04 03:40:23', '2021-01-04 03:40:39'),
(25, 8, NULL, 101, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', '4YAWFC4CVKCS', 0, 0, NULL, '2021-01-17 03:03:06', '2021-01-17 03:03:06'),
(26, 8, NULL, 101, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', '5KRPXG4OQ4MV', 0, 0, NULL, '2021-01-17 03:04:47', '2021-01-17 03:04:47'),
(27, 8, NULL, 101, '12.00000000', 'USD', '1.12000000', '1.00000000', '13.12000000', NULL, '0', '', 'EC1XDVQHZD5C', 0, 0, NULL, '2021-01-17 03:06:26', '2021-01-17 03:06:26'),
(28, 8, NULL, 501, '10.00000000', 'BTC', '2.00000000', '10.00000000', '120.00000000', NULL, '0', '', '8SNQDJ29GQ38', 0, 0, NULL, '2021-01-31 06:56:19', '2021-01-31 06:56:19'),
(29, 8, NULL, 103, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'S9G5WXWK1MNV', 0, 1, NULL, '2021-02-13 06:23:42', '2021-02-13 06:24:13'),
(30, 8, NULL, 103, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', '3OC82P2M4PQ7', 0, 1, NULL, '2021-02-13 06:39:23', '2021-02-13 06:39:39'),
(31, 8, NULL, 103, '100.00000000', 'USD', '2.00000000', '1.00000000', '102.00000000', NULL, '0', '', 'VC46YKRHGBMT', 0, 1, NULL, '2021-02-13 07:35:13', '2021-02-13 07:52:09'),
(32, 8, NULL, 102, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'JJ2OPOUV5FUB', 0, 0, NULL, '2021-02-13 07:53:16', '2021-02-13 07:53:16'),
(33, 8, NULL, 102, '100.00000000', 'USD', '2.00000000', '1.00000000', '102.00000000', NULL, '0', '', 'U8EZNX78MZAC', 0, 0, NULL, '2021-02-13 07:55:26', '2021-02-13 07:55:26'),
(34, 8, NULL, 102, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'O249KS9RVHMF', 0, 0, NULL, '2021-03-04 01:46:14', '2021-03-04 01:46:14'),
(35, 8, NULL, 110, '10.00000000', 'INR', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'KPN83Q33UDJ4', 0, 0, NULL, '2021-03-06 00:38:30', '2021-03-06 00:38:30'),
(36, 8, NULL, 110, '10.00000000', 'INR', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'HVJPFUBM4Y6Q', 0, 1, NULL, '2021-03-06 23:54:19', '2021-03-06 23:56:05'),
(37, 8, NULL, 102, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'EN6TN3HXSD9F', 0, 0, NULL, '2021-03-06 23:56:48', '2021-03-06 23:56:48'),
(38, 8, NULL, 102, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'QZO6B91QCTMD', 0, 0, NULL, '2021-03-07 00:11:49', '2021-03-07 00:11:49'),
(39, 8, NULL, 103, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', '37S9FTTDPJNZ', 0, 0, NULL, '2021-03-07 00:13:10', '2021-03-07 00:13:10'),
(40, 8, NULL, 102, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'EVYCVER7QJKX', 0, 0, NULL, '2021-03-07 00:13:18', '2021-03-07 00:13:18'),
(41, 8, NULL, 102, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'TMHW64UV3B64', 0, 0, NULL, '2021-03-07 00:13:44', '2021-03-07 00:13:44'),
(42, 8, NULL, 102, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', '897THC98A2ER', 0, 0, NULL, '2021-03-07 00:14:17', '2021-03-07 00:14:17'),
(43, 8, NULL, 102, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'R3Z6Q8GV78W9', 0, 0, NULL, '2021-03-07 00:16:54', '2021-03-07 00:16:54'),
(44, 8, NULL, 102, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'J5FEZQ8HVDCZ', 0, 0, NULL, '2021-03-07 00:17:38', '2021-03-07 00:17:38'),
(45, 8, NULL, 102, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', '8OOMYY7NX1U6', 0, 0, NULL, '2021-03-07 00:18:02', '2021-03-07 00:18:02'),
(46, 8, NULL, 107, '10.25000000', 'USD', '1.10250000', '1.00000000', '11.35250000', NULL, '0', '', 'BSPNUSQ9CB3Y', 0, 0, NULL, '2021-03-09 06:31:50', '2021-03-09 06:31:50'),
(47, 8, NULL, 107, '10.25000000', 'USD', '1.10250000', '1.00000000', '11.35250000', NULL, '0', '', 'P1DD9PBEK49G', 0, 0, NULL, '2021-03-09 06:32:09', '2021-03-09 06:32:09'),
(48, 8, NULL, 107, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', '8ZQP63C9RRCA', 0, 0, NULL, '2021-03-09 06:32:22', '2021-03-09 06:32:22'),
(49, 8, NULL, 107, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'GMFY61UE96J6', 0, 0, NULL, '2021-03-09 06:33:51', '2021-03-09 06:33:51'),
(50, 8, NULL, 107, '10.32000000', 'USD', '1.10320000', '1.00000000', '11.42320000', NULL, '0', '', 'Y1B6FZ6XH5KG', 0, 0, NULL, '2021-03-09 06:34:00', '2021-03-09 06:34:00'),
(51, 8, NULL, 110, '10.25000000', 'INR', '1.10250000', '1.00000000', '11.35250000', NULL, '0', '', 'AVTMNYVCQKZF', 0, 0, NULL, '2021-03-09 06:35:33', '2021-03-09 06:35:33'),
(52, 8, NULL, 110, '10.25000000', 'INR', '1.10250000', '1.00000000', '11.35250000', NULL, '0', '', 'O8MN8OD3D1JQ', 0, 0, NULL, '2021-03-09 06:37:52', '2021-03-09 06:37:52'),
(53, 8, NULL, 113, '10.00000000', 'AUD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'N2POSVTS26FA', 0, 0, NULL, '2021-03-14 05:49:25', '2021-03-14 05:49:25'),
(54, 8, NULL, 113, '10.00000000', 'AUD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'ONGK3CXCUNQU', 0, 0, NULL, '2021-03-14 05:57:19', '2021-03-14 05:57:19'),
(55, 8, NULL, 113, '10.00000000', 'AUD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'KWW72MT3WJKV', 0, 0, NULL, '2021-03-14 07:47:46', '2021-03-14 07:47:46'),
(56, 8, NULL, 102, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'W7QOVBGTM6TP', 0, 0, NULL, '2021-03-15 03:29:59', '2021-03-15 03:29:59'),
(57, 13, NULL, 103, '100.00000000', 'USD', '2.00000000', '1.00000000', '102.00000000', NULL, '0', '', 'K9Z1S1ED9QPD', 0, 1, NULL, '2021-03-15 04:19:58', '2021-03-15 04:20:13'),
(58, 13, NULL, 103, '100.00000000', 'USD', '2.00000000', '1.00000000', '102.00000000', NULL, '0', '', 'CT91YO69NVGZ', 0, 1, NULL, '2021-03-15 04:20:28', '2021-03-15 04:20:41'),
(59, 13, NULL, 1002, '100.00000000', 'USD', '3.41000000', '1.00000000', '103.41000000', '{\"send_from_number\":{\"field_name\":\"asdf\",\"type\":\"text\"},\"transaction_number\":{\"field_name\":\"asdf\",\"type\":\"text\"},\"screenshot\":{\"field_name\":\"2021\\/03\\/15\\/604f3583401051615803779.PNG\",\"type\":\"file\"}}', '0', '', 'SMUZX5PQW79Y', 0, 2, NULL, '2021-03-15 04:22:51', '2021-03-15 04:22:59'),
(60, 13, NULL, 1002, '100.00000000', 'USD', '3.41000000', '1.00000000', '103.41000000', '{\"send_from_number\":{\"field_name\":\"sdfg\",\"type\":\"text\"},\"transaction_number\":{\"field_name\":\"sdfgsdfg\",\"type\":\"text\"},\"screenshot\":{\"field_name\":\"2021\\/03\\/15\\/604f35a36d04d1615803811.PNG\",\"type\":\"file\"}}', '0', '', 'YDXOSGB58UX6', 0, 2, NULL, '2021-03-15 04:23:22', '2021-03-15 04:23:31'),
(61, 8, NULL, 103, '100.00000000', 'USD', '2.00000000', '1.00000000', '102.00000000', NULL, '0', '', 'QC4BFHUN65F4', 0, 1, NULL, '2021-03-15 23:37:29', '2021-03-15 23:37:44'),
(62, 8, NULL, 1002, '100.00000000', 'USD', '3.41000000', '1.00000000', '103.41000000', '{\"send_from_number\":{\"field_name\":\"sdfg\",\"type\":\"text\"},\"transaction_number\":{\"field_name\":\"asdfasdf\",\"type\":\"text\"},\"screenshot\":{\"field_name\":\"2021\\/03\\/16\\/6050449150d7c1615873169.PNG\",\"type\":\"file\"}}', '0', '', 'T8X7H3DP2EMC', 0, 2, NULL, '2021-03-15 23:39:20', '2021-03-15 23:39:29'),
(63, 8, NULL, 506, '10.00000000', 'USD', '2.00000000', '10.00000000', '120.00000000', NULL, '0', '', 'XE3WEJEOC9HK', 0, 0, NULL, '2021-03-18 00:13:48', '2021-03-18 00:13:48'),
(64, 8, NULL, 505, '10.00000000', 'USD', '2.00000000', '10.00000000', '120.00000000', NULL, '0', '', 'RDBJWO9X2FF3', 0, 0, NULL, '2021-03-18 06:07:47', '2021-03-18 06:07:47'),
(65, 8, NULL, 502, '10.00000000', 'BTC', '1.10000000', '10.00000000', '111.00000000', NULL, '0', '', 'FHFV9HKSEMFP', 0, 0, NULL, '2021-03-18 06:08:04', '2021-03-18 06:08:04'),
(66, 8, NULL, 504, '10.00000000', 'USD', '2.00000000', '10.00000000', '120.00000000', NULL, '0', '', 'RCQHRGSYKZSG', 0, 0, NULL, '2021-03-18 06:08:12', '2021-03-18 06:08:12'),
(67, 8, NULL, 501, '10.00000000', 'BTC', '2.00000000', '10.00000000', '120.00000000', NULL, '0', '', 'NM3NM79SYB1W', 0, 0, NULL, '2021-03-18 06:08:32', '2021-03-18 06:08:32'),
(68, 8, NULL, 106, '10.00000000', 'USD', '1.10000000', '1.00000000', '11.10000000', NULL, '0', '', 'AW45SVM3VM9V', 0, 0, NULL, '2021-03-22 09:30:05', '2021-03-22 09:30:05'),
(69, 17, 'App\\Models\\User', 103, '5000.00000000', 'USD', '51.00000000', '1.00000000', '5051.00000000', NULL, '0', '', 'HWYH35UKQM1Z', 0, 0, NULL, '2021-04-07 10:55:57', '2021-04-07 10:55:57'),
(70, 17, 'App\\Models\\User', 103, '5000.00000000', 'USD', '51.00000000', '1.00000000', '5051.00000000', NULL, '0', '', 'M896EY47QXDB', 0, 0, NULL, '2021-04-07 10:57:00', '2021-04-07 10:57:00'),
(71, 17, 'App\\Models\\User', 103, '5000.00000000', 'USD', '51.00000000', '1.00000000', '5051.00000000', NULL, '0', '', 'MUTTGM8SGVUM', 0, 0, NULL, '2021-04-07 10:57:19', '2021-04-07 10:57:19'),
(72, 17, 'App\\Models\\User', 103, '5000.00000000', 'USD', '51.00000000', '1.00000000', '5051.00000000', NULL, '0', '', '6XUSKUSUJAM6', 0, 1, NULL, '2021-04-07 11:00:51', '2021-04-07 11:01:08'),
(73, 2, 'App\\Models\\ContentCreator', 103, '2000.00000000', 'USD', '21.00000000', '1.00000000', '2021.00000000', NULL, '0', '', 'P65S1AUEDXVZ', 0, 1, NULL, '2021-04-07 11:05:23', '2021-04-07 11:05:55'),
(74, 1, 'App\\Models\\ContentCreator', 103, '1000.00000000', 'USD', '11.00000000', '1.00000000', '1011.00000000', NULL, '0', '', 'ZSA2E6JAOARK', 0, 1, NULL, '2021-04-07 13:28:57', '2021-04-07 13:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `email_sms_templates`
--

CREATE TABLE `email_sms_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `act` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subj` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcodes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_status` tinyint(4) NOT NULL DEFAULT 1,
  `sms_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_sms_templates`
--

INSERT INTO `email_sms_templates` (`id`, `act`, `name`, `subj`, `email_body`, `sms_body`, `shortcodes`, `email_status`, `sms_status`, `created_at`, `updated_at`) VALUES
(1, 'PASS_RESET_CODE', 'Password Reset', 'Password Reset', '<div>We have received a request to reset the password for your account on <b>{{time}} .<br></b></div><div>Requested From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>{{code}}</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br>', 'Your account recovery code is: {{code}}', ' {\"code\":\"Password Reset Code\",\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2021-01-06 00:49:06'),
(2, 'PASS_RESET_DONE', 'Password Reset Confirmation', 'You have Reset your password', '<div><p>\r\n    You have successfully reset your password.</p><p>You changed from&nbsp; IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}}&nbsp;</b> on <b>{{time}}</b></p><p><b><br></b></p><p><font color=\"#FF0000\"><b>If you did not changed that, Please contact with us as soon as possible.</b></font><br></p></div>', 'Your password has been changed successfully', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-07 10:23:47'),
(3, 'EVER_CODE', 'Email Verification', 'Please verify your email address', '<div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> {{code}}</b></font></div>', 'Your email verification code is: {{code}}', '{\"code\":\"Verification code\"}', 1, 1, '2019-09-24 23:04:05', '2021-01-03 23:35:10'),
(4, 'SVER_CODE', 'SMS Verification ', 'Please verify your phone', 'Your phone verification code is: {{code}}', 'Your phone verification code is: {{code}}', '{\"code\":\"Verification code\"}', 0, 1, '2019-09-24 23:04:05', '2020-03-08 01:28:52'),
(5, '2FA_ENABLE', 'Google Two Factor - Enable', 'Google Two Factor Authentication is now  Enabled for Your Account', '<div>You just enabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Enabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'Your verification code is: {{code}}', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-08 01:42:59'),
(6, '2FA_DISABLE', 'Google Two Factor Disable', 'Google Two Factor Authentication is now  Disabled for Your Account', '<div>You just Disabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Disabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'Google two factor verification is disabled', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-08 01:43:46'),
(16, 'ADMIN_SUPPORT_REPLY', 'Support Ticket Reply ', 'Reply Support Ticket', '<div><p><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong>A member from our support team has replied to the following ticket:</strong></span></p><p><b><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong><br></strong></span></b></p><p><b>[Ticket#{{ticket_id}}] {{ticket_subject}}<br><br>Click here to reply:&nbsp; {{link}}</b></p><p>----------------------------------------------</p><p>Here is the reply : <br></p><p> {{reply}}<br></p></div><div><br></div>', '{{subject}}\r\n\r\n{{reply}}\r\n\r\n\r\nClick here to reply:  {{link}}', '{\"ticket_id\":\"Support Ticket ID\", \"ticket_subject\":\"Subject Of Support Ticket\", \"reply\":\"Reply from Staff/Admin\",\"link\":\"Ticket URL For relpy\"}', 1, 1, '2020-06-08 18:00:00', '2020-05-04 02:24:40'),
(206, 'DEPOSIT_COMPLETE', 'Automated Deposit - Successful', 'Deposit Completed Successfully', '<div>Your deposit of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>has been completed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#000000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br><br></div>', '{{amount}} {{currrency}} Deposit successfully by {{gateway_name}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2020-06-24 18:00:00', '2020-11-17 03:10:00'),
(207, 'DEPOSIT_REQUEST', 'Manual Deposit - User Requested', 'Deposit Request Submitted Successfully', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Pay via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div>', '{{amount}} Deposit requested by {{method}}. Charge: {{charge}} . Trx: {{trx}}\r\n', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\"}', 1, 1, '2020-05-31 18:00:00', '2020-06-01 18:00:00'),
(208, 'DEPOSIT_APPROVE', 'Manual Deposit - Admin Approved', 'Your Deposit is Approved', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br></div>', 'Admin Approve Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}} transaction : {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2020-06-16 18:00:00', '2020-06-14 18:00:00'),
(209, 'DEPOSIT_REJECT', 'Manual Deposit - Admin Rejected', 'Your Deposit Request is Rejected', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} has been rejected</b>.<b><br></b></div><br><div>Transaction Number was : {{trx}}</div><div><br></div><div>if you have any query, feel free to contact us.<br></div><br><div><br><br></div>\r\n\r\n\r\n\r\n{{rejection_message}}', 'Admin Rejected Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}}\r\n\r\n{{rejection_message}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\",\"rejection_message\":\"Rejection message\"}', 1, 1, '2020-06-09 18:00:00', '2020-06-14 18:00:00'),
(210, 'WITHDRAW_REQUEST', 'Withdraw  - User Requested', 'Withdraw Request Submitted Successfully', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been submitted Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You will get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"4\" color=\"#FF0000\"><b><br></b></font></div><div><font size=\"4\" color=\"#FF0000\"><b>This may take {{delay}} to process the payment.</b></font><br></div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br><br><br></div>', '{{amount}} {{currency}} withdraw requested by {{withdraw_method}}. You will get {{method_amount}} {{method_currency}} in {{duration}}. Trx: {{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\", \"delay\":\"Delay time for processing\"}', 1, 1, '2020-06-07 18:00:00', '2020-06-14 18:00:00'),
(211, 'WITHDRAW_REJECT', 'Withdraw - Admin Rejected', 'Withdraw Request has been Rejected and your money is refunded to your account', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been Rejected.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You should get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div><div>----</div><div><font size=\"3\"><br></font></div><div><font size=\"3\"> {{amount}} {{currency}} has been <b>refunded </b>to your account and your current Balance is <b>{{post_balance}}</b><b> {{currency}}</b></font></div><div><br></div><div>-----</div><div><br></div><div><font size=\"4\">Details of Rejection :</font></div><div><font size=\"4\"><b>{{admin_details}}</b></font></div><div><br></div><div><br><br><br><br><br><br></div>', 'Admin Rejected Your {{amount}} {{currency}} withdraw request. Your Main Balance {{main_balance}}  {{method}} , Transaction {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\", \"admin_details\":\"Details Provided By Admin\"}', 1, 1, '2020-06-09 18:00:00', '2020-06-14 18:00:00'),
(212, 'WITHDRAW_APPROVE', 'Withdraw - Admin  Approved', 'Withdraw Request has been Processed and your money is sent', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been Processed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You will get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div>-----</div><div><br></div><div><font size=\"4\">Details of Processed Payment :</font></div><div><font size=\"4\"><b>{{admin_details}}</b></font></div><div><br></div><div><br><br><br><br><br></div>', 'Admin Approve Your {{amount}} {{currency}} withdraw request by {{method}}. Transaction {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"admin_details\":\"Details Provided By Admin\"}', 1, 1, '2020-06-10 18:00:00', '2020-06-06 18:00:00'),
(215, 'BAL_ADD', 'Balance Add by Admin', 'Your Account has been Credited', '<div>{{amount}} {{currency}} has been added to your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}&nbsp;</b></font>', '{{amount}} {{currency}} credited in your account. Your Current Balance {{remaining_balance}} {{currency}} . Transaction: #{{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2019-09-14 19:14:22', '2021-01-06 00:46:18'),
(216, 'BAL_SUB', 'Balance Subtracted by Admin', 'Your Account has been Debited', '<div>{{amount}} {{currency}} has been subtracted from your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}</b></font>', '{{amount}} {{currency}} debited from your account. Your Current Balance {{remaining_balance}} {{currency}} . Transaction: #{{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(217, 'UNLOCK_POST', 'Unlock Post By Me', 'You Unlock a post', 'You had Unlock a Post by {{username}}<div>{{amount}} {{currency}} has been subtracted from your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}</b></font>', '{{amount}} {{currency}} debited from your account for unlock a post by {{username}}. Your Current Balance {{post_balance}} {{currency}} . Transaction: #{{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Price of Post\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\",\"username\":\"Username of a Owner of post\"}', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(218, 'GET_POST_PRICE', 'Get Paid for a post', 'A Post had been Unlocked', 'You got {{amount}} {{currency}} for  Unlocking a Post by {{username}}<div> </div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}</b></font>', '{{amount}} {{currency}} credited to your account for unlock a post by {{username}}. Your Current Balance {{post_balance}} {{currency}} . Transaction: #{{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Price of Post\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\",\"username\":\"Username of a unlocker of post\"}', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `act` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'object',
  `support` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tawk-chat', 'Tawk.to', 'Key location is shown bellow', 'tawky_big.png', '<script>\r\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n                        (function(){\r\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n                        s1.async=true;\r\n                        s1.src=\"https://embed.tawk.to/{{app_key}}\";\r\n                        s1.charset=\"UTF-8\";\r\n                        s1.setAttribute(\"crossorigin\",\"*\");\r\n                        s0.parentNode.insertBefore(s1,s0);\r\n                        })();\r\n                    </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"58dd135ef7bbaa72709c3470\\/default\"}}', 'twak.png', 1, NULL, '2019-10-18 23:16:05', '2021-01-03 23:39:18'),
(2, 'google-recaptcha2', 'Google Recaptcha 2', 'Key location is shown bellow', 'recaptcha3.png', '\r\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\r\n<div class=\"g-recaptcha\" data-sitekey=\"{{sitekey}}\" data-callback=\"verifyCaptcha\"></div>\r\n<div id=\"g-recaptcha-error\"></div>', '{\"sitekey\":{\"title\":\"Site Key\",\"value\":\"6Lfpm3cUAAAAAGIjbEJKhJNKS4X1Gns9ANjh8MfH\"}}', 'recaptcha.png', 0, NULL, '2019-10-18 23:16:05', '2021-04-05 12:28:45'),
(3, 'custom-captcha', 'Custom Captcha', 'Just Put Any Random String', 'customcaptcha.png', NULL, '{\"random_key\":{\"title\":\"Random String\",\"value\":\"SecureString\"}}', 'na', 1, NULL, '2019-10-18 23:16:05', '2021-04-05 12:27:23'),
(4, 'google-analytics', 'Google Analytics', 'Key location is shown bellow', 'google-analytics.png', '<script async src=\"https://www.googletagmanager.com/gtag/js?id={{app_key}}\"></script>\r\n                <script>\r\n                  window.dataLayer = window.dataLayer || [];\r\n                  function gtag(){dataLayer.push(arguments);}\r\n                  gtag(\"js\", new Date());\r\n                \r\n                  gtag(\"config\", \"{{app_key}}\");\r\n                </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"Demo\"}}', 'ganalytics.png', 1, NULL, NULL, '2020-07-21 01:07:30'),
(5, 'fb-comment', 'Facebook Comment ', 'Key location is shown bellow', 'Facebook.png', '<div id=\"fb-root\"></div><script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId={{app_key}}&autoLogAppEvents=1\"></script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"713047905830100\"}}', 'fb_com.PNG', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `followed_by` bigint(20) UNSIGNED NOT NULL,
  `content_creator_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`followed_by`, `content_creator_id`, `created_at`, `updated_at`) VALUES
(17, 2, '2021-04-06 14:42:25', '2021-04-06 14:42:25'),
(17, 4, '2021-04-06 14:30:09', '2021-04-06 14:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

CREATE TABLE `frontends` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_keys` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(1, 'seo.data', '{\"seo_image\":\"1\",\"keywords\":[\"admin\",\"blog\",\"aaaa\",\"ddd\",\"aaa\"],\"description\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit\",\"social_title\":\"Viserlab Limited\",\"social_description\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit ff\",\"image\":\"5fa397a629bee1604556710.jpg\"}', '2020-07-04 23:42:52', '2021-01-03 07:43:02'),
(24, 'about.content', '{\"has_image\":\"1\",\"heading\":\"Latest News\",\"sub_heading\":\"Register New Account\",\"description\":\"fdg sdfgsdf g ggg\",\"about_icon\":\"<i class=\\\"las la-address-card\\\"><\\/i>\",\"background_image\":\"5f9914e8e46281603867880.jpg\",\"about_image\":\"5f9914e907ace1603867881.jpg\"}', '2020-10-28 00:51:20', '2021-01-03 23:18:10'),
(25, 'blog.content', '{\"heading\":\"Latest News\",\"sub_heading\":\"Hic tenetur nihil ex. Doloremque ipsa velit, ea molestias expedita sed voluptatem ex voluptatibus temporibus sequi. sddd\"}', '2020-10-28 00:51:34', '2020-10-28 00:52:52'),
(26, 'blog.element', '{\"has_image\":[\"1\",\"1\"],\"title\":\"this is a test blog 2\",\"description\":\"aewf asdf\",\"description_nic\":\"asdf asdf\",\"blog_icon\":\"<i class=\\\"lab la-hornbill\\\"><\\/i>\",\"blog_image_1\":\"5f99164f1baec1603868239.jpg\",\"blog_image_2\":\"5ff2e146346d21609752902.jpg\"}', '2020-10-28 00:57:19', '2021-01-04 03:35:02'),
(27, 'contact_us.content', '{\"title\":\"Auctor gravida vestibulu\",\"short_details\":\"55f55\",\"email_address\":\"5555f\",\"contact_details\":\"5555h\",\"contact_number\":\"5555a\",\"latitude\":\"5555h\",\"longitude\":\"5555s\",\"website_footer\":\"5555qqq\"}', '2020-10-28 00:59:19', '2020-11-01 04:51:54'),
(28, 'counter.content', '{\"heading\":\"Latest News\",\"sub_heading\":\"Register New Account\"}', '2020-10-28 01:04:02', '2020-10-28 01:04:02'),
(30, 'blog.element', '{\"has_image\":[\"1\",\"1\"],\"title\":\"This is test blog 1\",\"description\":\"asdfasdf ffffffffff\",\"description_nic\":\"asdfasdf asdd vvvvvvvvvvvvvvvvvv\",\"blog_icon\":\"<i class=\\\"las la-highlighter\\\"><\\/i>\",\"blog_image_1\":\"5f9d0689e022d1604126345.jpg\",\"blog_image_2\":\"5f9d068a341211604126346.jpg\"}', '2020-10-31 00:39:05', '2020-11-12 04:36:39'),
(31, 'social_icon.element', '{\"title\":\"Facebook\",\"social_icon\":\"<i class=\\\"lab la-facebook\\\"><\\/i>\",\"url\":\"https:\\/\\/www.google.com\\/\"}', '2020-11-12 04:07:30', '2020-11-12 04:07:30'),
(33, 'feature.content', '{\"heading\":\"asdf\",\"sub_heading\":\"asdf\"}', '2021-01-03 23:40:54', '2021-01-03 23:40:55'),
(34, 'feature.element', '{\"title\":\"asdf\",\"description\":\"asdf\",\"feature_icon\":\"asdf\"}', '2021-01-03 23:41:02', '2021-01-03 23:41:02'),
(35, 'service.element', '{\"trx_type\":\"withdraw\",\"service_icon\":\"<i class=\\\"las la-highlighter\\\"><\\/i>\",\"title\":\"asdfasdf\",\"description\":\"asdfasdfasdfasdf\"}', '2021-03-06 01:12:10', '2021-03-06 01:12:10'),
(36, 'service.content', '{\"trx_type\":\"withdraw\",\"heading\":\"asdf fffff\",\"sub_heading\":\"asdf asdfasdf\"}', '2021-03-06 01:27:34', '2021-03-06 02:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` int(11) DEFAULT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NULL',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supported_currencies` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crypto` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_form` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `code`, `alias`, `image`, `name`, `status`, `parameters`, `supported_currencies`, `crypto`, `extra`, `description`, `input_form`, `created_at`, `updated_at`) VALUES
(1, 101, 'paypal', '5f6f1bd8678601601117144.jpg', 'Paypal', 1, '{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true,\"value\":\"sb-zlbi7986064@personal.example.com\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-01-17 03:02:44'),
(2, 102, 'perfect_money', '5f6f1d2a742211601117482.jpg', 'Perfect Money', 1, '{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true,\"value\":\"6451561651551\"},\"wallet_id\":{\"title\":\"PM Wallet\",\"global\":false,\"value\":\"\"}}', '{\"USD\":\"$\",\"EUR\":\"\\u20ac\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-12-28 01:26:46'),
(3, 103, 'stripe', '5f6f1d4bc69e71601117515.jpg', 'Stripe Hosted', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51HuxFUHyGzEKoTKAfIosswAQduMOGU4q4elcNr8OE6LoBZcp2MHKalOW835wjRiF6fxVTc7RmBgatKfAt1Qq0heb00rUaCOd2T\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51HuxFUHyGzEKoTKAueAuF9BrMDA5boMcpJLLt0vu4q3QdPX5isaGudKNe6OyVjZP1UugpYd6JA7i7TczRWsbutaP004YmBiSp5\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-12-28 01:26:49'),
(4, 104, 'skrill', '5f6f1d41257181601117505.jpg', 'Skrill', 1, '{\"pay_to_email\":{\"title\":\"Skrill Email\",\"global\":true,\"value\":\"merchant@skrill.com\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"---\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-12-28 01:26:52'),
(5, 105, 'paytm', '5f6f1d1d3ec731601117469.jpg', 'PayTM', 1, '{\"MID\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"DIY12386817555501617\"},\"merchant_key\":{\"title\":\"Merchant Key\",\"global\":true,\"value\":\"bKMfNxPPf_QdZppa\"},\"WEBSITE\":{\"title\":\"Paytm Website\",\"global\":true,\"value\":\"DIYtestingweb\"},\"INDUSTRY_TYPE_ID\":{\"title\":\"Industry Type\",\"global\":true,\"value\":\"Retail\"},\"CHANNEL_ID\":{\"title\":\"CHANNEL ID\",\"global\":true,\"value\":\"WEB\"},\"transaction_url\":{\"title\":\"Transaction URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/oltp-web\\/processTransaction\"},\"transaction_status_url\":{\"title\":\"Transaction STATUS URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/paytmchecksum\\/paytmCallback.jsp\"}}', '{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-12-28 01:26:54'),
(6, 106, 'payeer', '5f6f1bc61518b1601117126.jpg', 'Payeer', 1, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"866989763\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"7575\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}', 0, '{\"status\":{\"title\": \"Status URL\",\"value\":\"ipn.payeer\"}}', NULL, NULL, '2019-09-14 13:14:22', '2020-12-28 01:26:58'),
(7, 107, 'paystack', '5f7096563dfb71601214038.jpg', 'PayStack', 1, '{\"public_key\":{\"title\":\"Public key\",\"global\":true,\"value\":\"pk_test_3c9c87f51b13c15d99eb367ca6ebc52cc9eb1f33\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"sk_test_2a3f97a146ab5694801f993b60fcb81cd7254f12\"}}', '{\"USD\":\"USD\",\"NGN\":\"NGN\"}', 0, '{\"callback\":{\"title\": \"Callback URL\",\"value\":\"ipn.paystack\"},\"webhook\":{\"title\": \"Webhook URL\",\"value\":\"ipn.paystack\"}}\r\n', NULL, NULL, '2019-09-14 13:14:22', '2020-12-28 01:25:38'),
(8, 108, 'voguepay', '5f6f1d5951a111601117529.jpg', 'VoguePay', 1, '{\"merchant_id\":{\"title\":\"MERCHANT ID\",\"global\":true,\"value\":\"demo\"}}', '{\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:52:09'),
(9, 109, 'flutterwave', '5f6f1b9e4bb961601117086.jpg', 'Flutterwave', 1, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"demo_publisher_key\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"demo_secret_key\"},\"encryption_key\":{\"title\":\"Encryption Key\",\"global\":true,\"value\":\"demo_encryption_key\"}}', '{\"BIF\":\"BIF\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CVE\":\"CVE\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"GHS\":\"GHS\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"KES\":\"KES\",\"LRD\":\"LRD\",\"MWK\":\"MWK\",\"MZN\":\"MZN\",\"NGN\":\"NGN\",\"RWF\":\"RWF\",\"SLL\":\"SLL\",\"STD\":\"STD\",\"TZS\":\"TZS\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"XAF\":\"XAF\",\"XOF\":\"XOF\",\"ZMK\":\"ZMK\",\"ZMW\":\"ZMW\",\"ZWD\":\"ZWD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-01-04 03:29:50'),
(10, 110, 'razorpay', '5f6f1d3672dd61601117494.jpg', 'RazorPay', 1, '{\"key_id\":{\"title\":\"Key Id\",\"global\":true,\"value\":\"rzp_test_kiOtejPbRZU90E\"},\"key_secret\":{\"title\":\"Key Secret \",\"global\":true,\"value\":\"osRDebzEqbsE1kbyQJ4y0re7\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:51:34'),
(11, 111, 'stripe_js', '5f7096a31ed9a1601214115.jpg', 'Stripe Storefront', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51HuxFUHyGzEKoTKAfIosswAQduMOGU4q4elcNr8OE6LoBZcp2MHKalOW835wjRiF6fxVTc7RmBgatKfAt1Qq0heb00rUaCOd2T\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51HuxFUHyGzEKoTKAueAuF9BrMDA5boMcpJLLt0vu4q3QdPX5isaGudKNe6OyVjZP1UugpYd6JA7i7TczRWsbutaP004YmBiSp5\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-12-05 03:56:20'),
(12, 112, 'instamojo', '5f6f1babbdbb31601117099.jpg', 'Instamojo', 1, '{\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_2241633c3bc44a3de84a3b33969\"},\"auth_token\":{\"title\":\"Auth Token\",\"global\":true,\"value\":\"test_279f083f7bebefd35217feef22d\"},\"salt\":{\"title\":\"Salt\",\"global\":true,\"value\":\"19d38908eeff4f58b2ddda2c6d86ca25\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:44:59'),
(13, 501, 'blockchain', '5f6f1b2b20c6f1601116971.jpg', 'Blockchain', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"55529946-05ca-48ff-8710-f279d86b1cc5\"},\"xpub_code\":{\"title\":\"XPUB CODE\",\"global\":true,\"value\":\"xpub6CKQ3xxWyBoFAF83izZCSFUorptEU9AF8TezhtWeMU5oefjX3sFSBw62Lr9iHXPkXmDQJJiHZeTRtD9Vzt8grAYRhvbz4nEvBu3QKELVzFK\"}}', '{\"BTC\":\"BTC\"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-01-31 06:55:45'),
(14, 502, 'blockio', '5f6f19432bedf1601116483.jpg', 'Block.io', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":false,\"value\":\"1658-8015-2e5e-9afb\"},\"api_pin\":{\"title\":\"API PIN\",\"global\":true,\"value\":\"covidvai2020\"}}', '{\"BTC\":\"BTC\",\"LTC\":\"LTC\",\"DOGE\":\"DOGE\"}', 1, '{\"cron\":{\"title\": \"Cron URL\",\"value\":\"ipn.blockio\"}}', NULL, NULL, '2019-09-14 13:14:22', '2021-01-03 23:19:59'),
(15, 503, 'coinpayments', '5f6f1b6c02ecd1601117036.jpg', 'CoinPayments', 1, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"7638eebaf4061b7f7cdfceb14046318bbdabf7e2f64944773d6550bd59f70274\"},\"private_key\":{\"title\":\"Private Key\",\"global\":true,\"value\":\"Cb6dee7af8Eb9E0D4123543E690dA3673294147A5Dc8e7a621B5d484a3803207\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}', '{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:43:56'),
(16, 504, 'coinpayments_fiat', '5f6f1b94e9b2b1601117076.jpg', 'CoinPayments Fiat', 1, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-10-22 03:17:29'),
(17, 505, 'coingate', '5f6f1b5fe18ee1601117023.jpg', 'Coingate', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:43:44'),
(18, 506, 'coinbase_commerce', '5f6f1b4c774af1601117004.jpg', 'Coinbase Commerce', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"c47cd7df-d8e8-424b-a20a\"},\"secret\":{\"title\":\"Webhook Shared Secret\",\"global\":true,\"value\":\"55871878-2c32-4f64-ab66\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"JPY\":\"JPY\",\"GBP\":\"GBP\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CNY\":\"CNY\",\"SEK\":\"SEK\",\"NZD\":\"NZD\",\"MXN\":\"MXN\",\"SGD\":\"SGD\",\"HKD\":\"HKD\",\"NOK\":\"NOK\",\"KRW\":\"KRW\",\"TRY\":\"TRY\",\"RUB\":\"RUB\",\"INR\":\"INR\",\"BRL\":\"BRL\",\"ZAR\":\"ZAR\",\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CDF\":\"CDF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NPR\":\"NPR\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}\r\n\r\n', 0, '{\"endpoint\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.coinbase_commerce\"}}', NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:43:24'),
(24, 113, 'paypal_sdk', '5f6f1bec255c61601117164.jpg', 'Paypal Express', 1, '{\"clientId\":{\"title\":\"Paypal Client ID\",\"global\":true,\"value\":\"Ae0-tixtSV7DvLwIh3Bmu7JvHrjh5EfGdXr_cEklKAVjjezRZ747BxKILiBdzlKKyp-W8W_T7CKH1Ken\"},\"clientSecret\":{\"title\":\"Client Secret\",\"global\":true,\"value\":\"EOhbvHZgFNO21soQJT1L9Q00M3rK6PIEsdiTgXRBt2gtGtxwRer5JvKnVUGNU5oE63fFnjnYY7hq3HBA\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-10-31 23:50:27'),
(25, 114, 'stripe_v3', '5f709684736321601214084.jpg', 'Stripe Checkout', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51HuxFUHyGzEKoTKAfIosswAQduMOGU4q4elcNr8OE6LoBZcp2MHKalOW835wjRiF6fxVTc7RmBgatKfAt1Qq0heb00rUaCOd2T\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51HuxFUHyGzEKoTKAueAuF9BrMDA5boMcpJLLt0vu4q3QdPX5isaGudKNe6OyVjZP1UugpYd6JA7i7TczRWsbutaP004YmBiSp5\"},\"end_point\":{\"title\":\"End Point Secret\",\"global\":true,\"value\":\"w5555\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, '{\"webhook\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.stripe_v3\"}}', NULL, NULL, '2019-09-14 13:14:22', '2020-12-05 03:56:14'),
(26, 1000, 'payoneer', '5f7096605cba01601214048.jpg', 'Payoneer', 1, '[]', '[]', 0, '{\"delay\":null}', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif; font-size: 16px; text-align: left;\">Please Send To below&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif; font-size: 16px; text-align: left;\">Payoneer&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif; font-size: 16px; text-align: left;\">Account:</span></p><div><br></div><div>Payoneer Account : adminaccount@payoneer.com</div>', '{\"send_from_email\":{\"field_name\":\"send_from_email\",\"field_level\":\"Send From Email\",\"type\":\"text\",\"validation\":\"required\"},\"screenshot\":{\"field_name\":\"screenshot\",\"field_level\":\"Screenshot\",\"type\":\"file\",\"validation\":\"required\"}}', '2020-07-05 03:46:04', '2020-09-27 07:40:48'),
(27, 115, 'mollie', '5f6f1bb765ab11601117111.jpg', 'Mollie', 1, '{\"mollie_email\":{\"title\":\"Mollie Email \",\"global\":true,\"value\":\"ronniearea@gmail.com\"},\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_cucfwKTWfft9s337qsVfn5CC4vNkrn\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:45:11'),
(28, 1001, 'bank_wire', '5f6f1eb1548d41601117873.jpg', 'Bank Wire', 1, '[]', '[]', 0, '{\"delay\":null}', 'Please Send To below bank Details<div><br></div><div>Bank Name: Demo Test Bank</div><div>Account Name: Demo Account Name</div><div>Account Number: 000-000-000-000-000</div><div>Routing Number: 0123456789</div>', '{\"transaction_number\":{\"field_name\":\"transaction_number\",\"field_level\":\"Transaction Number\",\"type\":\"text\",\"validation\":\"required\"},\"screenshot\":{\"field_name\":\"screenshot\",\"field_level\":\"Screenshot\",\"type\":\"text\",\"validation\":\"required\"}}', '2020-08-20 03:47:33', '2020-11-12 04:12:06'),
(29, 1002, 'mobile_money', '5f6f1ec54303f1601117893.jpg', 'Mobile Money', 1, '[]', '[]', 0, '{\"delay\":null}', '<span style=\"color: rgb(33, 37, 41);\">Please Send To below Mobile Money Number:</span><div><br></div><div><span style=\"color: rgb(33, 37, 41); font-size: 1rem;\">Mobile Money Number</span>: 000-000-000-000-000</div>', '{\"send_from_number\":{\"field_name\":\"send_from_number\",\"field_level\":\"Send From Number\",\"type\":\"text\",\"validation\":\"required\"},\"transaction_number\":{\"field_name\":\"transaction_number\",\"field_level\":\"Transaction Number\",\"type\":\"text\",\"validation\":\"required\"},\"screenshot\":{\"field_name\":\"screenshot\",\"field_level\":\"Screenshot\",\"type\":\"file\",\"validation\":\"required\"}}', '2020-09-24 06:50:30', '2021-02-22 08:17:20'),
(30, 116, 'cashmaal', '5f9a8b62bb4dd1603963746.png', 'Cashmaal', 1, '{\"web_id\":{\"title\":\"Web Id\",\"global\":true,\"value\":\"3748\"},\"ipn_key\":{\"title\":\"IPN Key\",\"global\":true,\"value\":\"546254628759524554647987\"}}', '{\"PKR\":\"PKR\",\"USD\":\"USD\"}', 0, '{\"webhook\":{\"title\": \"IPN URL\",\"value\":\"ipn.cashmaal\"}}', NULL, NULL, NULL, '2020-10-29 03:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_currencies`
--

CREATE TABLE `gateway_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_code` int(11) DEFAULT NULL,
  `gateway_alias` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_amount` decimal(18,8) NOT NULL,
  `max_amount` decimal(18,8) NOT NULL,
  `percent_charge` decimal(5,2) NOT NULL DEFAULT 0.00,
  `fixed_charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_parameter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateway_currencies`
--

INSERT INTO `gateway_currencies` (`id`, `name`, `currency`, `symbol`, `method_code`, `gateway_alias`, `min_amount`, `max_amount`, `percent_charge`, `fixed_charge`, `rate`, `image`, `gateway_parameter`, `created_at`, `updated_at`) VALUES
(22, 'Bank Wire', 'USD', '', 1001, 'bank_wire', '10.00000000', '100000.00000000', '1.00', '5.00000000', '1.00000000', '5f6f1eb1548d41601117873.jpg', '{\"transaction_number\":{\"field_name\":\"transaction_number\",\"field_level\":\"Transaction Number\",\"type\":\"text\",\"validation\":\"required\"},\"screenshot\":{\"field_name\":\"screenshot\",\"field_level\":\"Screenshot\",\"type\":\"text\",\"validation\":\"required\"}}', '2020-08-20 03:47:33', '2020-11-12 04:12:06'),
(23, 'Payoneer', 'USD', '', 1000, 'payoneer', '1.00000000', '1000.00000000', '0.00', '10.00000000', '1.00000000', '5f7096605cba01601214048.jpg', '{\"send_from_email\":{\"field_name\":\"send_from_email\",\"field_level\":\"Send From Email\",\"type\":\"text\",\"validation\":\"required\"},\"screenshot\":{\"field_name\":\"screenshot\",\"field_level\":\"Screenshot\",\"type\":\"file\",\"validation\":\"required\"}}', '2020-07-05 03:46:04', '2020-09-27 07:40:48'),
(24, 'Mobile Money', 'USD', '', 1002, 'mobile_money', '10.00000000', '10000.00000000', '0.85', '2.56000000', '1.00000000', '5f6f1ec54303f1601117893.jpg', '{\"send_from_number\":{\"field_name\":\"send_from_number\",\"field_level\":\"Send From Number\",\"type\":\"text\",\"validation\":\"required\"},\"transaction_number\":{\"field_name\":\"transaction_number\",\"field_level\":\"Transaction Number\",\"type\":\"text\",\"validation\":\"required\"},\"screenshot\":{\"field_name\":\"screenshot\",\"field_level\":\"Screenshot\",\"type\":\"file\",\"validation\":\"required\"}}', '2020-09-24 06:50:30', '2021-02-22 08:17:20'),
(27, 'Coinbase Commerce - USD', 'USD', '$', 506, 'coinbase_commerce', '1.00000000', '10000.00000000', '10.00', '1.00000000', '10.00000000', NULL, '{\"api_key\":\"c47cd7df-d8e8-424b-a20a\",\"secret\":\"55871878-2c32-4f64-ab66\"}', '2020-09-26 04:43:24', '2020-09-26 04:43:24'),
(28, 'Coingate - USD', 'USD', '$', 505, 'coingate', '1.00000000', '10000.00000000', '10.00', '1.00000000', '10.00000000', NULL, '{\"api_key\":\"Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N\"}', '2020-09-26 04:43:44', '2020-09-26 04:43:44'),
(29, 'CoinPayments - BTC', 'BTC', '$', 503, 'coinpayments', '1.00000000', '10000.00000000', '10.00', '1.00000000', '10.00000000', NULL, '{\"public_key\":\"7638eebaf4061b7f7cdfceb14046318bbdabf7e2f64944773d6550bd59f70274\",\"private_key\":\"Cb6dee7af8Eb9E0D4123543E690dA3673294147A5Dc8e7a621B5d484a3803207\",\"merchant_id\":\"93a1e014c4ad60a7980b4a7239673cb4\"}', '2020-09-26 04:43:56', '2020-09-26 04:43:56'),
(30, 'CoinPayments Fiat - USD', 'USD', '$', 504, 'coinpayments_fiat', '1.00000000', '10000.00000000', '10.00', '1.00000000', '10.00000000', NULL, '{\"merchant_id\":\"93a1e014c4ad60a7980b4a7239673cb4\"}', '2020-09-26 04:44:37', '2020-09-26 04:44:37'),
(32, 'Instamojo - INR', 'INR', '$', 112, 'instamojo', '1.00000000', '10000.00000000', '2.00', '1.00000000', '10.00000000', NULL, '{\"api_key\":\"test_2241633c3bc44a3de84a3b33969\",\"auth_token\":\"test_279f083f7bebefd35217feef22d\",\"salt\":\"19d38908eeff4f58b2ddda2c6d86ca25\"}', '2020-09-26 04:44:59', '2020-09-26 04:44:59'),
(33, 'Mollie - EUR', 'EUR', 'EUR', 115, 'mollie', '10.00000000', '1000.00000000', '0.00', '0.00000000', '1.00000000', NULL, '{\"mollie_email\":\"ronniearea@gmail.com\",\"api_key\":\"test_cucfwKTWfft9s337qsVfn5CC4vNkrn\"}', '2020-09-26 04:45:11', '2020-09-26 04:45:11'),
(34, 'Payeer - USD', 'USD', '$', 106, 'payeer', '1.00000000', '10000.00000000', '1.00', '1.00000000', '1.00000000', NULL, '{\"merchant_id\":\"866989763\",\"secret_key\":\"7575\"}', '2020-09-26 04:45:26', '2020-09-26 04:45:26'),
(37, 'PayTM - AUD', 'AUD', '$', 105, 'paytm', '1.00000000', '10000.00000000', '1.00', '1.00000000', '1.00000000', NULL, '{\"MID\":\"DIY12386817555501617\",\"merchant_key\":\"bKMfNxPPf_QdZppa\",\"WEBSITE\":\"DIYtestingweb\",\"INDUSTRY_TYPE_ID\":\"Retail\",\"CHANNEL_ID\":\"WEB\",\"transaction_url\":\"https:\\/\\/pguat.paytm.com\\/oltp-web\\/processTransaction\",\"transaction_status_url\":\"https:\\/\\/pguat.paytm.com\\/paytmchecksum\\/paytmCallback.jsp\"}', '2020-09-26 04:51:09', '2020-09-26 04:51:09'),
(39, 'RazorPay - INR', 'INR', '$', 110, 'razorpay', '1.00000000', '10000.00000000', '1.00', '1.00000000', '1.00000000', NULL, '{\"key_id\":\"rzp_test_kiOtejPbRZU90E\",\"key_secret\":\"osRDebzEqbsE1kbyQJ4y0re7\"}', '2020-09-26 04:51:34', '2020-09-26 04:51:34'),
(42, 'VoguePay - USD', 'USD', '$', 108, 'voguepay', '1.00000000', '1000.00000000', '0.00', '1.00000000', '1.00000000', NULL, '{\"merchant_id\":\"demo\"}', '2020-09-26 04:52:09', '2020-09-26 04:52:09'),
(43, 'PayStack - USD', 'USD', '$', 107, 'paystack', '1.00000000', '10000.00000000', '1.00', '1.00000000', '1.00000000', NULL, '{\"public_key\":\"pk_test_3c9c87f51b13c15d99eb367ca6ebc52cc9eb1f33\",\"secret_key\":\"sk_test_2a3f97a146ab5694801f993b60fcb81cd7254f12\"}', '2020-09-27 07:40:38', '2020-09-27 07:40:38'),
(49, 'Skrill - AED', 'AED', '$', 104, 'skrill', '1.00000000', '10000.00000000', '1.00', '1.00000000', '10.00000000', NULL, '{\"pay_to_email\":\"merchant@skrill.com\",\"secret_key\":\"---\"}', '2020-10-22 03:35:41', '2020-10-22 03:35:41'),
(50, 'Block.io - BTC', 'BTC', 'BTC', 502, 'blockio', '1.00000000', '100.00000000', '1.00', '1.00000000', '10.00000000', NULL, '{\"api_pin\":\"covidvai2020\",\"api_key\":\"demo\"}', '2020-10-29 00:04:12', '2020-10-29 00:04:12'),
(53, 'Cashmaal - PKR', 'PKR', 'pkr', 116, 'cashmaal', '1.00000000', '10000.00000000', '10.00', '1.00000000', '10.00000000', NULL, '{\"web_id\":\"3748\",\"ipn_key\":\"546254628759524554647987\"}', '2020-10-29 03:29:06', '2020-10-29 03:29:06'),
(55, 'Paypal Express - AUD', 'AUD', '$', 113, 'paypal_sdk', '1.00000000', '10000.00000000', '1.00', '1.00000000', '1.00000000', NULL, '{\"clientId\":\"Ae0-tixtSV7DvLwIh3Bmu7JvHrjh5EfGdXr_cEklKAVjjezRZ747BxKILiBdzlKKyp-W8W_T7CKH1Ken\",\"clientSecret\":\"EOhbvHZgFNO21soQJT1L9Q00M3rK6PIEsdiTgXRBt2gtGtxwRer5JvKnVUGNU5oE63fFnjnYY7hq3HBA\"}', '2020-10-31 23:50:27', '2020-10-31 23:50:27'),
(56, 'Stripe Checkout - USD', 'USD', 'USD', 114, 'stripe_v3', '10.00000000', '1000.00000000', '0.00', '1.00000000', '1.00000000', NULL, '{\"secret_key\":\"sk_test_51HuxFUHyGzEKoTKAfIosswAQduMOGU4q4elcNr8OE6LoBZcp2MHKalOW835wjRiF6fxVTc7RmBgatKfAt1Qq0heb00rUaCOd2T\",\"publishable_key\":\"pk_test_51HuxFUHyGzEKoTKAueAuF9BrMDA5boMcpJLLt0vu4q3QdPX5isaGudKNe6OyVjZP1UugpYd6JA7i7TczRWsbutaP004YmBiSp5\",\"end_point\":\"w5555\"}', '2020-12-05 03:56:14', '2020-12-05 03:56:14'),
(57, 'Stripe Hosted - USD', 'USD', '$', 103, 'stripe', '1.00000000', '10000.00000000', '1.00', '1.00000000', '1.00000000', NULL, '{\"secret_key\":\"sk_test_51HuxFUHyGzEKoTKAfIosswAQduMOGU4q4elcNr8OE6LoBZcp2MHKalOW835wjRiF6fxVTc7RmBgatKfAt1Qq0heb00rUaCOd2T\",\"publishable_key\":\"pk_test_51HuxFUHyGzEKoTKAueAuF9BrMDA5boMcpJLLt0vu4q3QdPX5isaGudKNe6OyVjZP1UugpYd6JA7i7TczRWsbutaP004YmBiSp5\"}', '2020-12-05 03:56:18', '2020-12-05 03:56:18'),
(58, 'Stripe Storefront - USD', 'USD', '$', 111, 'stripe_js', '1.00000000', '10000.00000000', '10.00', '1.00000000', '10.00000000', NULL, '{\"secret_key\":\"sk_test_51HuxFUHyGzEKoTKAfIosswAQduMOGU4q4elcNr8OE6LoBZcp2MHKalOW835wjRiF6fxVTc7RmBgatKfAt1Qq0heb00rUaCOd2T\",\"publishable_key\":\"pk_test_51HuxFUHyGzEKoTKAueAuF9BrMDA5boMcpJLLt0vu4q3QdPX5isaGudKNe6OyVjZP1UugpYd6JA7i7TczRWsbutaP004YmBiSp5\"}', '2020-12-05 03:56:20', '2020-12-05 03:56:20'),
(65, 'Flutterwave - USD', 'USD', 'USD', 109, 'flutterwave', '1.00000000', '2000.00000000', '0.00', '1.00000000', '1.00000000', NULL, '{\"public_key\":\"demo_publisher_key\",\"secret_key\":\"demo_secret_key\",\"encryption_key\":\"demo_encryption_key\"}', '2021-01-04 03:29:50', '2021-01-04 03:29:50'),
(68, 'Paypal - USD', 'USD', '$', 101, 'paypal', '1.00000000', '10000.00000000', '1.00', '1.00000000', '1.00000000', NULL, '{\"paypal_email\":\"sb-zlbi7986064@personal.example.com\"}', '2021-01-17 03:06:03', '2021-01-17 03:06:03'),
(69, 'Blockchain - BTC', 'BTC', 'BTC', 501, 'blockchain', '1.00000000', '10000.00000000', '10.00', '1.00000000', '10.00000000', NULL, '{\"api_key\":\"55529946-05ca-48ff-8710-f279d86b1cc5\",\"xpub_code\":\"xpub6CKQ3xxWyBoFAF83izZCSFUorptEU9AF8TezhtWeMU5oefjX3sFSBw62Lr9iHXPkXmDQJJiHZeTRtD9Vzt8grAYRhvbz4nEvBu3QKELVzFK\"}', '2021-01-31 06:55:45', '2021-01-31 06:55:45'),
(71, 'Perfect Money - USD', 'USD', '$', 102, 'perfect_money', '1.00000000', '10000.00000000', '1.00', '1.00000000', '1.00000000', NULL, '{\"passphrase\":\"6451561651551\",\"wallet_id\":\"U27011790\"}', '2021-03-07 00:09:50', '2021-03-07 00:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitename` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur_text` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency symbol',
  `email_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_api` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'email configuration',
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email notification, 0 - dont send, 1 - send',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms verication, 0 - dont check, 1 - check',
  `sn` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms notification, 0 - dont send, 1 - send',
  `force_ssl` tinyint(4) NOT NULL DEFAULT 0,
  `secure_password` tinyint(4) NOT NULL DEFAULT 0,
  `registration` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Off	, 1: On',
  `social_login` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'social login',
  `social_credential` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_template` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_landing` tinyint(4) NOT NULL DEFAULT 1,
  `sys_version` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `sitename`, `cur_text`, `cur_sym`, `email_from`, `email_template`, `sms_api`, `base_color`, `secondary_color`, `mail_config`, `ev`, `en`, `sv`, `sn`, `force_ssl`, `secure_password`, `registration`, `social_login`, `social_credential`, `active_template`, `active_landing`, `sys_version`, `created_at`, `updated_at`) VALUES
(1, 'onlyfans', 'USD', '$', 'test123@xcapital.trade', '<table style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 23, 54); text-decoration-style: initial; text-decoration-color: initial;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" bgcolor=\"#001736\"><tbody><tr><td valign=\"top\" align=\"center\"><table class=\"mobile-shell\" width=\"650\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"td container\" style=\"width: 650px; min-width: 650px; font-size: 0pt; line-height: 0pt; margin: 0px; font-weight: normal; padding: 55px 0px;\"><div style=\"text-align: center;\"><img src=\"https://i.imgur.com/C9IS7Z1.png\" style=\"height: 240 !important;width: 338px;margin-bottom: 20px;\"></div><table style=\"width: 650px; margin: 0px auto;\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td style=\"padding-bottom: 10px;\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"tbrr p30-15\" style=\"padding: 60px 30px; border-radius: 26px 26px 0px 0px;\" bgcolor=\"#000036\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td style=\"color: rgb(255, 255, 255); font-family: Muli, Arial, sans-serif; font-size: 20px; line-height: 46px; padding-bottom: 25px; font-weight: bold;\">Hi {{name}} ,</td></tr><tr><td style=\"color: rgb(193, 205, 220); font-family: Muli, Arial, sans-serif; font-size: 20px; line-height: 30px; padding-bottom: 25px;\">{{message}}</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><table style=\"width: 650px; margin: 0px auto;\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"p30-15 bbrr\" style=\"padding: 50px 30px; border-radius: 0px 0px 26px 26px;\" bgcolor=\"#000036\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"text-footer1 pb10\" style=\"color: rgb(0, 153, 255); font-family: Muli, Arial, sans-serif; font-size: 18px; line-height: 30px; text-align: center; padding-bottom: 10px;\">© 2020 ViserLab. All Rights Reserved.</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table>', 'https://api.infobip.com/api/v3/sendsms/plain?user=viserlab&password=26289099&sender=ViserLab&SMSText={{message}}&GSM={{number}}&type=longSMS', 'cc2e94', '1c1c9d', '{\"name\":\"php\"}', 1, 1, 0, 1, 0, 0, 1, 0, '{\"google_client_id\":\"53929591142-l40gafo7efd9onfe6tj545sf9g7tv15t.apps.googleusercontent.com\",\"google_client_secret\":\"BRdB3np2IgYLiy4-bwMcmOwN\",\"fb_client_id\":\"277229062999748\",\"fb_client_secret\":\"1acfc850f73d1955d14b282938585122\"}', 'basic', 1, NULL, NULL, '2021-04-05 12:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_align` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: left to right text align, 1: right to left text align',
  `is_default` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon`, `text_align`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', '5f15968db08911595250317.png', 0, 1, '2020-07-06 03:47:55', '2021-03-18 06:45:08'),
(5, 'Hindi', 'hn', NULL, 0, 0, '2020-12-29 02:20:07', '2020-12-29 02:20:16'),
(9, 'Bangla', 'bn', NULL, 0, 0, '2021-03-14 04:37:41', '2021-03-14 04:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_14_061757_create_support_tickets_table', 3),
(5, '2020_06_14_061837_create_support_messages_table', 3),
(6, '2020_06_14_061904_create_support_attachments_table', 3),
(7, '2020_06_14_062359_create_admins_table', 3),
(8, '2020_06_14_064604_create_transactions_table', 4),
(9, '2020_06_14_065247_create_general_settings_table', 5),
(12, '2014_10_12_100000_create_password_resets_table', 6),
(13, '2020_06_14_060541_create_user_logins_table', 6),
(14, '2020_06_14_071708_create_admin_password_resets_table', 7),
(15, '2020_09_14_053026_create_countries_table', 8),
(16, '2021_03_15_084721_create_admin_notifications_table', 9),
(17, '2021_04_03_065635_create_content_creators_table', 10),
(18, '2021_04_03_070231_create_plans_table', 10),
(19, '2021_04_03_070232_create_posts_table', 10),
(21, '2021_04_03_072009_create_comments_table', 10),
(22, '2021_04_03_072116_create_comment_reactions_table', 10),
(24, '2021_04_03_072357_create_subscriptions_table', 10),
(25, '2021_04_04_071101_create_collectives_table', 11),
(26, '2021_04_03_072255_create_followers_table', 12),
(27, '2021_04_03_071902_create_reactions_table', 13),
(28, '2021_04_07_084255_create_post_purchages_table', 14),
(29, '2021_04_07_134556_create_collective_sponsors_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'template name',
  `secs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `tempname`, `secs`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'HOME', 'home', 'templates.basic.', '[\"about\",\"blog\",\"counter\",\"faq\",\"feature\",\"service\",\"subscribe\",\"we_accept\"]', 1, '2020-07-11 06:23:58', '2020-11-02 08:07:05'),
(2, 'About', 'about-us', 'templates.basic.', '[\"about\",\"blog\",\"counter\"]', 0, '2020-07-11 06:35:35', '2020-07-11 07:39:10'),
(4, 'Blog', 'blog', 'templates.basic.', NULL, 1, '2020-10-22 01:14:43', '2020-10-22 01:14:43'),
(5, 'Contact', 'contact', 'templates.basic.', NULL, 1, '2020-10-22 01:14:53', '2020-10-22 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ronnie@gmail.com', '100375', '2020-07-07 05:44:47'),
('user@site.com', '910465', '2020-10-29 06:48:36'),
('user@site.comfff', '263335', '2021-03-16 00:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_creator` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(28,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content_creator_id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy` int(11) NOT NULL COMMENT '0:for all, 1:followers, 2:subscribers, 3:premimum',
  `price` decimal(28,8) DEFAULT NULL,
  `approval_status` tinyint(1) NOT NULL,
  `pinned` tinyint(1) NOT NULL,
  `comment_status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `content_creator_id`, `plan_id`, `description`, `image`, `privacy`, `price`, `approval_status`, `pinned`, `comment_status`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 'asasasasasas', NULL, 0, NULL, 1, 0, 1, '2021-04-05 10:04:57', '2021-04-05 10:04:57'),
(2, 2, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 0, NULL, 1, 0, 1, '2021-04-05 10:22:39', '2021-04-05 10:22:39'),
(3, 2, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '606aaccf2de811617603791.png', 0, NULL, 1, 0, 1, '2021-04-05 10:23:11', '2021-04-05 10:23:11'),
(4, 2, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '606aadbf51d9e1617604031.jpg', 3, '200.00000000', 1, 0, 1, '2021-04-05 10:27:11', '2021-04-05 10:27:11'),
(5, 4, NULL, 'xZXZXZXZX', NULL, 3, '200.00000000', 1, 0, 1, '2021-04-05 14:06:32', '2021-04-05 14:06:32'),
(6, 4, NULL, 'passi nah', NULL, 1, NULL, 1, 0, 1, '2021-04-05 14:09:39', '2021-04-05 14:09:39'),
(7, 2, NULL, 'follow', NULL, 1, NULL, 1, 0, 1, '2021-04-05 17:29:54', '2021-04-05 17:29:54');

-- --------------------------------------------------------

--
-- Table structure for table `post_purchages`
--

CREATE TABLE `post_purchages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unlocker_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(28,8) NOT NULL,
  `trx` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_purchages`
--

INSERT INTO `post_purchages` (`id`, `unlocker_id`, `post_id`, `model`, `amount`, `trx`, `details`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 'App\\Models\\ContentCreator', '200.00000000', 'WR49HB6K7XFK', 'Unlock A Post By perry321', '2021-04-07 13:14:30', '2021-04-07 13:14:30'),
(2, 17, 4, 'App\\Models\\User', '200.00000000', 'K3QXRRTA25JZ', 'Unlock A Post By kawsar', '2021-04-07 13:24:13', '2021-04-07 13:24:13'),
(3, 17, 5, 'App\\Models\\User', '200.00000000', 'TXJOZ5OD2VZJ', 'Unlock A Post By kawsar', '2021-04-07 13:24:56', '2021-04-07 13:24:56'),
(4, 1, 5, 'App\\Models\\ContentCreator', '200.00000000', 'B7VGA8SMH15H', 'Unlock A Post By username', '2021-04-07 13:40:24', '2021-04-07 13:40:24'),
(5, 1, 4, 'App\\Models\\ContentCreator', '200.00000000', '6QWKZP9YATNB', 'Unlock A Post By username', '2021-04-07 13:41:47', '2021-04-07 13:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `reactions`
--

CREATE TABLE `reactions` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `reactor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reactions`
--

INSERT INTO `reactions` (`post_id`, `reactor_id`, `created_at`, `updated_at`) VALUES
(5, 17, '2021-04-06 09:51:41', '2021-04-06 09:51:41'),
(6, 2, '2021-04-06 14:16:31', '2021-04-06 14:16:31'),
(6, 17, '2021-04-06 14:26:36', '2021-04-06 14:26:36'),
(7, 2, '2021-04-06 14:18:28', '2021-04-06 14:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(2, 'test@mail.com', '2020-07-18 18:00:00', NULL),
(3, 'best@mail.com', '2020-07-18 18:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content_creator_id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_attachments`
--

CREATE TABLE `support_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_message_id` int(11) NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_attachments`
--

INSERT INTO `support_attachments` (`id`, `support_message_id`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 6, '5ff1cd83c827a1609682307.jpg', '2021-01-03 07:58:27', '2021-01-03 07:58:27'),
(2, 8, '5ff1d3c9a3c591609683913.jpg', '2021-01-03 08:25:13', '2021-01-03 08:25:13'),
(3, 9, '5ff1d3d69ab511609683926.png', '2021-01-03 08:25:26', '2021-01-03 08:25:26'),
(4, 10, '5ff2a60b733881609737739.jpg', '2021-01-03 23:22:19', '2021-01-03 23:22:19'),
(5, 11, '5ff2a61b5e0241609737755.jpg', '2021-01-03 23:22:35', '2021-01-03 23:22:35'),
(6, 12, '5ff2a62da8a951609737773.jpg', '2021-01-03 23:22:53', '2021-01-03 23:22:53'),
(7, 21, '5ff2bbbb6897b1609743291.docx', '2021-01-04 00:54:51', '2021-01-04 00:54:51'),
(8, 35, '5ff2bea23c7991609744034.docx', '2021-01-04 01:07:14', '2021-01-04 01:07:14'),
(9, 35, '5ff2bea23d8fa1609744034.docx', '2021-01-04 01:07:14', '2021-01-04 01:07:14'),
(10, 38, '5ff2bfbf2f9481609744319.docx', '2021-01-04 01:11:59', '2021-01-04 01:11:59'),
(11, 43, '5ff2dac6e521a1609751238.docx', '2021-01-04 03:07:18', '2021-01-04 03:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `supportticket_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_messages`
--

INSERT INTO `support_messages` (`id`, `supportticket_id`, `admin_id`, `message`, `created_at`, `updated_at`) VALUES
(1, '1', 0, 'sdfgsfdsdfg', '2021-01-03 06:14:26', '2021-01-03 06:14:26'),
(2, '1', 1, 'asdfasdf asdfasdf', '2021-01-03 06:16:15', '2021-01-03 06:16:15'),
(3, '1', 0, 'dsfgdfghdfg dgfhdf dgh', '2021-01-03 06:46:03', '2021-01-03 06:46:03'),
(4, '1', 0, 'sdf aesgsdfg', '2021-01-03 06:46:34', '2021-01-03 06:46:34'),
(5, '1', 1, 'asdfasdfattachment', '2021-01-03 07:58:23', '2021-01-03 07:58:23'),
(6, '1', 1, 'asdfasdfattachment', '2021-01-03 07:58:27', '2021-01-03 07:58:27'),
(7, '2', 0, 'sdfg', '2021-01-03 08:24:45', '2021-01-03 08:24:45'),
(8, '2', 0, 'asdfasdf', '2021-01-03 08:25:13', '2021-01-03 08:25:13'),
(9, '3', 0, 'ffddffdff', '2021-01-03 08:25:26', '2021-01-03 08:25:26'),
(10, '2', 1, 'ff', '2021-01-03 23:22:19', '2021-01-03 23:22:19'),
(11, '2', 1, 'fff', '2021-01-03 23:22:35', '2021-01-03 23:22:35'),
(12, '1', 1, 'ffff', '2021-01-03 23:22:53', '2021-01-03 23:22:53'),
(13, '4', 0, 'asdfasdf', '2021-01-04 00:27:08', '2021-01-04 00:27:08'),
(14, '5', 0, 'asdfasdf', '2021-01-04 00:27:51', '2021-01-04 00:27:51'),
(15, '6', 0, 'asdfasdf', '2021-01-04 00:28:04', '2021-01-04 00:28:04'),
(16, '7', 0, 'asdfasdf', '2021-01-04 00:29:37', '2021-01-04 00:29:37'),
(17, '8', 0, 'asdfasdf', '2021-01-04 00:30:23', '2021-01-04 00:30:23'),
(19, '10', 0, 'asdf', '2021-01-04 00:54:35', '2021-01-04 00:54:35'),
(20, '11', 0, 'asdf', '2021-01-04 00:54:41', '2021-01-04 00:54:41'),
(21, '12', 0, 'asdf', '2021-01-04 00:54:51', '2021-01-04 00:54:51'),
(22, '12', 0, 'asdf', '2021-01-04 01:01:07', '2021-01-04 01:01:07'),
(23, '12', 0, 'asdf', '2021-01-04 01:01:31', '2021-01-04 01:01:31'),
(24, '12', 0, 'sdfg', '2021-01-04 01:02:18', '2021-01-04 01:02:18'),
(25, '12', 0, 'asdfasdf', '2021-01-04 01:02:49', '2021-01-04 01:02:49'),
(26, '12', 0, 'asdfasdf', '2021-01-04 01:02:55', '2021-01-04 01:02:55'),
(27, '12', 0, 'asdf', '2021-01-04 01:03:24', '2021-01-04 01:03:24'),
(28, '12', 0, 'asdf', '2021-01-04 01:03:33', '2021-01-04 01:03:33'),
(29, '12', 0, 'asdf', '2021-01-04 01:03:41', '2021-01-04 01:03:41'),
(30, '12', 0, 'asdf', '2021-01-04 01:03:51', '2021-01-04 01:03:51'),
(31, '12', 0, 'asdf', '2021-01-04 01:04:09', '2021-01-04 01:04:09'),
(32, '12', 0, 'asdf', '2021-01-04 01:04:29', '2021-01-04 01:04:29'),
(33, '12', 0, 'asdf', '2021-01-04 01:04:34', '2021-01-04 01:04:34'),
(34, '12', 0, 'ghdgh', '2021-01-04 01:06:45', '2021-01-04 01:06:45'),
(35, '12', 0, 'asdfasd', '2021-01-04 01:07:14', '2021-01-04 01:07:14'),
(36, '11', 1, 'asdfasdf', '2021-01-04 01:09:58', '2021-01-04 01:09:58'),
(37, '11', 1, 'asdfasdf', '2021-01-04 01:10:13', '2021-01-04 01:10:13'),
(38, '12', 0, 'asdfsfg sdfgdsfg hdfghdfghdfghdfghdfghdfghdfgh', '2021-01-04 01:11:59', '2021-01-04 01:11:59'),
(39, '12', 1, 'dfghfgj', '2021-01-04 03:05:42', '2021-01-04 03:05:42'),
(40, '12', 1, 'asdf', '2021-01-04 03:06:01', '2021-01-04 03:06:01'),
(41, '12', 1, 'asdf', '2021-01-04 03:06:15', '2021-01-04 03:06:15'),
(42, '12', 1, 'asdf', '2021-01-04 03:06:24', '2021-01-04 03:06:24'),
(43, '12', 1, 'asdf', '2021-01-04 03:07:18', '2021-01-04 03:07:18'),
(44, '13', 0, 'sdfsadfsdfg', '2021-03-06 01:03:48', '2021-03-06 01:03:48'),
(45, '13', 1, 'dfasdfasdfasdf', '2021-03-06 01:03:59', '2021-03-06 01:03:59'),
(46, '14', 0, 'asdasdfasdf', '2021-03-15 04:30:17', '2021-03-15 04:30:17'),
(47, '17', 0, 'asdf', '2021-03-15 04:32:52', '2021-03-15 04:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `user_id`, `name`, `email`, `ticket`, `subject`, `status`, `last_reply`, `created_at`, `updated_at`) VALUES
(1, 8, 'User Name', 'user@site.comfff', '123545', 'sdfg', 1, '2021-01-04 05:22:53', '2021-01-03 06:14:26', '2021-01-03 23:22:53'),
(2, 8, 'User Name', 'user@site.comfff', '788383', 'sdfg', 1, '2021-01-04 05:22:35', '2021-01-03 08:24:45', '2021-01-03 23:22:35'),
(3, 8, 'User Name', 'user@site.comfff', '198287', 'asdf', 0, '2021-01-03 14:25:26', '2021-01-03 08:25:26', '2021-01-03 08:25:26'),
(4, 8, 'User Name', 'user@site.comfff', '126671', 'Test', 0, '2021-01-04 06:27:08', '2021-01-04 00:27:08', '2021-01-04 00:27:08'),
(5, 8, 'User Name', 'user@site.comfff', '711275', 'Test', 0, '2021-01-04 06:27:51', '2021-01-04 00:27:51', '2021-01-04 00:27:51'),
(6, 8, 'User Name', 'user@site.comfff', '131384', 'Test', 0, '2021-01-04 06:28:04', '2021-01-04 00:28:04', '2021-01-04 00:28:04'),
(7, 8, 'User Name', 'user@site.comfff', '825135', 'Test', 0, '2021-01-04 06:29:37', '2021-01-04 00:29:37', '2021-01-04 00:29:37'),
(8, 8, 'User Name', 'user@site.comfff', '331454', 'Test', 0, '2021-01-04 06:30:23', '2021-01-04 00:30:23', '2021-01-04 00:30:23'),
(9, 8, 'User Name', 'user@site.comfff', '985131', 'Test', 0, '2021-01-04 06:30:54', '2021-01-04 00:30:54', '2021-01-04 00:30:54'),
(10, 8, 'User Name', 'user@site.comfff', '321555', 'asdf', 0, '2021-01-04 06:54:35', '2021-01-04 00:54:35', '2021-01-04 00:54:35'),
(11, 8, 'User Name', 'user@site.comfff', '228258', 'asdf', 1, '2021-01-04 07:10:13', '2021-01-04 00:54:40', '2021-01-04 01:10:13'),
(12, 8, 'User Name', 'user@site.comfff', '623034', 'asdf', 1, '2021-01-04 09:07:18', '2021-01-04 00:54:51', '2021-01-04 03:07:18'),
(13, 12, 'KB Zaman', 'kbzaman320@gmail.com', '03889482', 'Test', 1, '2021-03-06 07:03:59', '2021-03-06 01:03:48', '2021-03-06 01:03:59'),
(14, 13, 'KB Zaman', 'testuser123@testuser123.testuser123', '865742', 'ASD', 0, '2021-03-15 10:30:17', '2021-03-15 04:30:17', '2021-03-15 04:30:17'),
(15, NULL, 'asdf', 'asdf@f.f', '84713842', 'asdf', 0, '2021-03-15 10:31:54', '2021-03-15 04:31:54', '2021-03-15 04:31:54'),
(16, 0, 'asdf', 'asdf@f.f', '10282257', 'asdf', 0, '2021-03-15 10:32:33', '2021-03-15 04:32:33', '2021-03-15 04:32:33'),
(17, NULL, 'asdf', 'asdf@f.f', '87893987', 'asdf', 0, '2021-03-15 10:32:52', '2021-03-15 04:32:52', '2021-03-15 04:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `post_balance` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `trx_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `model`, `amount`, `charge`, `post_balance`, `trx_type`, `trx`, `details`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, '100.00000000', '2.00000000', '100.00000000', '+', 'R9PF9HFFD3BT', 'Deposit Via Stripe Hosted', '2020-10-28 07:08:07', '2020-10-28 07:08:07'),
(2, 8, NULL, '100.00000000', '7.00000000', '0.00000000', '-', 'CNDQQMQM7ZJF', '93 USD Withdraw Via Bank Wire', '2020-10-28 07:20:15', '2020-10-28 07:20:15'),
(3, 8, NULL, '500.00000000', '0.00000000', '500.00000000', '+', 'X224EYH3W67W', 'Added Balance Via Admin', '2020-11-01 02:48:41', '2020-11-01 02:48:41'),
(4, 8, NULL, '100.00000000', '7.00000000', '400.00000000', '-', '9P4RJZFM4JW1', '93 USD Withdraw Via Bank Wire', '2020-11-01 02:48:58', '2020-11-01 02:48:58'),
(5, 8, NULL, '100.00000000', '3.41000000', '500.00000000', '+', '8N8HGAKVV8UJ', 'Deposit Via Mobile Money', '2020-12-24 00:03:37', '2020-12-24 00:03:37'),
(6, 8, NULL, '10.00000000', '5.20000000', '490.00000000', '-', 'J8BTHB9V9MBK', '4.8 USD Withdraw Via Bank Wire', '2021-01-02 23:32:55', '2021-01-02 23:32:55'),
(7, 8, NULL, '10.00000000', '5.20000000', '480.00000000', '-', 'USZD7KKTCSOG', '4.8 USD Withdraw Via Bank Wire', '2021-01-02 23:33:47', '2021-01-02 23:33:47'),
(8, 8, NULL, '10.00000000', '5.20000000', '470.00000000', '-', 'NHESMAV6PPSN', '4.8 USD Withdraw Via Bank Wire', '2021-01-02 23:34:43', '2021-01-02 23:34:43'),
(9, 8, NULL, '10.00000000', '5.20000000', '460.00000000', '-', 'S96W7SG1P896', '4.8 USD Withdraw Via Bank Wire', '2021-01-03 08:26:41', '2021-01-03 08:26:41'),
(10, 8, NULL, '10.00000000', '5.20000000', '450.00000000', '-', 'HSMDBTPX35F6', '4.8 USD Withdraw Via Bank Wire', '2021-01-03 08:28:36', '2021-01-03 08:28:36'),
(11, 8, NULL, '100.00000000', '6.00000000', '550.00000000', '+', '82NQZWEPP976', 'Deposit Via Bank Wire', '2021-01-03 23:21:24', '2021-01-03 23:21:24'),
(12, 8, NULL, '10.00000000', '0.00000000', '560.00000000', '+', 'S96W7SG1P896', '10 USD Refunded from Withdrawal Rejection', '2021-01-03 23:21:58', '2021-01-03 23:21:58'),
(13, 8, NULL, '100.00000000', '3.41000000', '660.00000000', '+', 'WWMAHTRWY3PC', 'Deposit Via Mobile Money', '2021-01-03 23:33:20', '2021-01-03 23:33:20'),
(14, 8, NULL, '100.00000000', '3.00000000', '560.00000000', '-', 'JNXQN8PB5XS4', '97 USD Withdraw Via Bank Wire', '2021-01-04 00:19:59', '2021-01-04 00:19:59'),
(15, 8, NULL, '100.00000000', '2.00000000', '660.00000000', '+', 'VH3B11FG13WV', 'Deposit Via Stripe Hosted', '2021-01-04 00:20:25', '2021-01-04 00:20:25'),
(16, 8, NULL, '10.00000000', '1.10000000', '670.00000000', '+', 'S9G5WXWK1MNV', 'Deposit Via Stripe Hosted', '2021-02-13 06:24:13', '2021-02-13 06:24:13'),
(17, 8, NULL, '10.00000000', '1.10000000', '680.00000000', '+', '3OC82P2M4PQ7', 'Deposit Via Stripe Hosted', '2021-02-13 06:39:39', '2021-02-13 06:39:39'),
(18, 8, NULL, '100.00000000', '2.00000000', '780.00000000', '+', 'VC46YKRHGBMT', 'Deposit Via Stripe Hosted - USD', '2021-02-13 07:52:09', '2021-02-13 07:52:09'),
(19, 8, NULL, '10.00000000', '1.10000000', '790.00000000', '+', 'HVJPFUBM4Y6Q', 'Deposit Via RazorPay - INR', '2021-03-06 23:56:05', '2021-03-06 23:56:05'),
(20, 13, NULL, '1000.00000000', '0.00000000', '1000.00000000', '+', 'R4V11CDFNVEA', 'Added Balance Via Admin', '2021-03-15 04:06:56', '2021-03-15 04:06:56'),
(21, 13, NULL, '10.00000000', '1.20000000', '990.00000000', '-', 'Q12Q7WVHOSGG', '8.8 USD Withdraw Via Bank Wire', '2021-03-15 04:07:14', '2021-03-15 04:07:14'),
(22, 13, NULL, '10.00000000', '1.20000000', '980.00000000', '-', 'W6RJEHWVX9WW', '8.8 USD Withdraw Via Bank Wire', '2021-03-15 04:07:50', '2021-03-15 04:07:50'),
(23, 13, NULL, '100.00000000', '2.00000000', '1080.00000000', '+', 'K9Z1S1ED9QPD', 'Deposit Via Stripe Hosted - USD', '2021-03-15 04:20:13', '2021-03-15 04:20:13'),
(24, 13, NULL, '100.00000000', '2.00000000', '1180.00000000', '+', 'CT91YO69NVGZ', 'Deposit Via Stripe Hosted - USD', '2021-03-15 04:20:41', '2021-03-15 04:20:41'),
(25, 8, NULL, '100.00000000', '2.00000000', '890.00000000', '+', 'QC4BFHUN65F4', 'Deposit Via Stripe Hosted - USD', '2021-03-15 23:37:44', '2021-03-15 23:37:44'),
(26, 8, NULL, '10.00000000', '1.20000000', '880.00000000', '-', '9UPOWTVGBGXU', '8.8 USD Withdraw Via Bank Wire', '2021-03-15 23:39:45', '2021-03-15 23:39:45'),
(27, 8, NULL, '10.00000000', '0.00100000', '870.00000000', '-', 'YT4R95B75URK', '9.999 USD Withdraw Via Mobile Money', '2021-03-15 23:39:55', '2021-03-15 23:39:55'),
(28, 17, NULL, '5000.00000000', '51.00000000', '5000.00000000', '+', '6XUSKUSUJAM6', 'Deposit Via Stripe Hosted - USD', '2021-04-07 11:01:08', '2021-04-07 11:01:08'),
(29, 2, NULL, '2000.00000000', '21.00000000', '2000.00000000', '+', 'P65S1AUEDXVZ', 'Deposit Via Stripe Hosted - USD', '2021-04-07 11:05:55', '2021-04-07 11:05:55'),
(30, 2, 'App\\Models\\ContentCreator', '200.00000000', '0.00000000', '1800.00000000', '-', 'WR49HB6K7XFK', 'Unlock A Post By perry321', '2021-04-07 13:14:30', '2021-04-07 13:14:30'),
(31, 17, 'App\\Models\\User', '200.00000000', '0.00000000', '4800.00000000', '-', 'K3QXRRTA25JZ', 'Unlock A Post By kawsar', '2021-04-07 13:24:13', '2021-04-07 13:24:13'),
(32, 17, 'App\\Models\\User', '200.00000000', '0.00000000', '4600.00000000', '-', 'TXJOZ5OD2VZJ', 'Unlock A Post By kawsar', '2021-04-07 13:24:56', '2021-04-07 13:24:56'),
(33, 1, NULL, '1000.00000000', '11.00000000', '1000.00000000', '+', 'ZSA2E6JAOARK', 'Deposit Via Stripe Hosted - USD', '2021-04-07 13:29:15', '2021-04-07 13:29:15'),
(34, 1, 'App\\Models\\ContentCreator', '200.00000000', '0.00000000', '800.00000000', '-', 'B7VGA8SMH15H', 'Unlock A Post By username', '2021-04-07 13:40:24', '2021-04-07 13:40:24'),
(35, 1, 'App\\Models\\ContentCreator', '200.00000000', '0.00000000', '600.00000000', '-', '6QWKZP9YATNB', 'Unlock A Post By username', '2021-04-07 13:41:47', '2021-04-07 13:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_by` int(11) DEFAULT NULL,
  `balance` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'contains full address',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: banned, 1: active',
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: sms unverified, 1: sms verified',
  `ver_code` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `mobile`, `ref_by`, `balance`, `password`, `image`, `address`, `status`, `ev`, `sv`, `ver_code`, `ver_code_send_at`, `ts`, `tv`, `tsc`, `provider`, `provider_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'User', 'Name', 'username', 'user@site.comfff', '654165454fffff', NULL, '870.00000000', '$2y$10$IBE1RgxvZCWkXHgHwvMk.esrCkvtN8IHyaWCL4CHDi5eTsZqKEIhO', '1609679828_username.jpg', '{\"address\":\"Dhaka\",\"city\":\"Dhakafff\\\"666666666\",\"state\":\"4sssssssss45\",\"zip\":\"66ggggggggg\",\"country\":\"Bangladesh\"}', 1, 1, 1, NULL, NULL, 0, 1, 'RR3G3FADF3T222TF', NULL, NULL, 'D4idEr4ovX6YN8S0zRGhwROA9jUX2bql5EWtGPRO04qXHZOv7ccwMX203ui1', '2020-07-25 00:40:06', '2021-03-16 00:50:46'),
(9, 'User', 'Name', 'username2', 'user2@site.com', '8805646546987', NULL, '0.00000000', '$2y$10$kvu.xRlHv32YheJWV3NWneQR0vPIA5Eev01jUjQeieHQDJSE1XXs.', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Antigua and Barbuda\",\"city\":\"\"}', 1, 1, 1, '217802', '2020-11-19 10:18:39', 0, 1, NULL, NULL, NULL, NULL, '2020-11-19 04:18:38', '2020-11-19 04:19:44'),
(11, 'user44', 'name44', 'username3', 'user457@site.com', '65659854857', NULL, '0.00000000', '$2y$10$UD7lj91bK2SK0CEqtIi/s.XZKh8Wm.ajz1DimEuoDBLiNAE29zY7a', NULL, '{\"address\":\"Address\",\"city\":\"FFF\",\"state\":\"7878\",\"zip\":\"5874\",\"country\":\"Algeria\"}', 1, 1, 1, '112922', '2020-11-23 12:45:44', 0, 1, NULL, NULL, NULL, NULL, '2020-11-23 06:45:43', '2021-01-04 00:03:31'),
(13, 'KB', 'Zaman', 'testuser123', 'testuser123@testuser123.testuser123', '1268654254541', NULL, '1180.00000000', '$2y$10$0TizysQNL9Yw6DYOji5Eh.mrstho4NhuVam7ssaCYS0Y9JegnopZG', '1615803362_testuser123.jpg', '{\"address\":\"Dhaka\",\"state\":\"Dhaka\",\"zip\":\"1230\",\"country\":\"Antigua and Barbuda\",\"city\":\"Dhaka\"}', 1, 1, 1, '950194', '2021-03-15 09:35:45', 0, 1, NULL, NULL, NULL, NULL, '2021-03-15 03:35:45', '2021-03-15 04:20:41'),
(17, 'asdasd', 'asdasd', 'kawsar', 'teacher@example.com', '9312324343434', NULL, '4600.00000000', '$2y$10$tmFSAE/pRWMZblJn.xoq8.JeD.NlXOIJTJFuVUaQq8Mnqg8hHHava', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Afghanistan\",\"city\":\"\"}', 1, 1, 1, '870583', '2021-04-05 08:52:05', 0, 1, NULL, NULL, NULL, NULL, '2021-04-05 12:52:04', '2021-04-07 13:24:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `user_ip`, `location`, `browser`, `os`, `longitude`, `latitude`, `country`, `country_code`, `created_at`, `updated_at`) VALUES
(14, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2020-11-22 00:52:36', '2020-11-22 00:52:36'),
(15, 8, '::1', ' - -  -  ', NULL, NULL, '', '', NULL, '', '2020-11-22 00:52:50', '2020-11-22 00:52:50'),
(16, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2020-11-22 00:58:16', '2020-11-22 00:58:16'),
(17, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2020-11-22 00:58:41', '2020-11-22 00:58:41'),
(18, 8, '::1', ' - -  -  ', 'Firefox', 'Windows 10', '', '', '', '', '2020-11-22 00:59:30', '2020-11-22 00:59:30'),
(19, 11, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2020-11-23 06:45:43', '2020-11-23 06:45:43'),
(20, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2020-12-24 05:10:34', '2020-12-24 05:10:34'),
(21, 8, '127.0.0.1', ' - -  -  ', 'Firefox', 'Windows 10', '', '', '', '', '2020-12-24 05:12:16', '2020-12-24 05:12:16'),
(22, 8, '127.0.0.1', ' - -  -  ', 'Firefox', 'Windows 10', '', '', '', '', '2020-12-24 05:13:40', '2020-12-24 05:13:40'),
(23, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2020-12-28 02:46:17', '2020-12-28 02:46:17'),
(24, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2020-12-29 02:31:30', '2020-12-29 02:31:30'),
(25, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-01-02 23:32:38', '2021-01-02 23:32:38'),
(26, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-01-03 04:39:14', '2021-01-03 04:39:14'),
(27, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-01-03 23:32:07', '2021-01-03 23:32:07'),
(28, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-01-17 03:02:58', '2021-01-17 03:02:58'),
(29, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-01-31 06:56:02', '2021-01-31 06:56:02'),
(30, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-02-13 06:23:32', '2021-02-13 06:23:32'),
(31, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-04 01:46:06', '2021-03-04 01:46:06'),
(32, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-04 02:40:51', '2021-03-04 02:40:51'),
(33, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-04 02:52:25', '2021-03-04 02:52:25'),
(34, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-06 00:38:14', '2021-03-06 00:38:14'),
(36, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-06 23:51:07', '2021-03-06 23:51:07'),
(37, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-07 00:11:05', '2021-03-07 00:11:05'),
(38, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-07 00:13:36', '2021-03-07 00:13:36'),
(39, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-07 00:13:59', '2021-03-07 00:13:59'),
(40, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-07 00:14:12', '2021-03-07 00:14:12'),
(41, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-07 00:14:24', '2021-03-07 00:14:24'),
(42, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-07 00:17:31', '2021-03-07 00:17:31'),
(43, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-07 00:17:56', '2021-03-07 00:17:56'),
(44, 8, '127.0.0.1', ' - -  -  ', 'Firefox', 'Windows 10', '', '', '', '', '2021-03-08 01:04:19', '2021-03-08 01:04:19'),
(45, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-08 01:05:03', '2021-03-08 01:05:03'),
(46, 8, '127.0.0.1', ' - -  -  ', 'Firefox', 'Windows 10', '', '', '', '', '2021-03-08 01:05:45', '2021-03-08 01:05:45'),
(47, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-09 06:31:16', '2021-03-09 06:31:16'),
(48, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-14 05:29:21', '2021-03-14 05:29:21'),
(49, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-14 07:47:37', '2021-03-14 07:47:37'),
(50, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-15 01:04:33', '2021-03-15 01:04:33'),
(51, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-15 03:29:51', '2021-03-15 03:29:51'),
(52, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-15 03:32:22', '2021-03-15 03:32:22'),
(53, 13, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-15 03:35:45', '2021-03-15 03:35:45'),
(54, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-15 23:37:22', '2021-03-15 23:37:22'),
(55, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-16 04:35:36', '2021-03-16 04:35:36'),
(59, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-18 00:13:32', '2021-03-18 00:13:32'),
(60, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-18 06:03:56', '2021-03-18 06:03:56'),
(61, 8, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-03-22 09:28:04', '2021-03-22 09:28:04'),
(62, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-05 12:52:04', '2021-04-05 12:52:04'),
(63, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-05 12:58:51', '2021-04-05 12:58:51'),
(64, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-05 13:05:33', '2021-04-05 13:05:33'),
(65, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-05 13:31:25', '2021-04-05 13:31:25'),
(66, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-05 13:54:42', '2021-04-05 13:54:42'),
(67, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-05 14:03:59', '2021-04-05 14:03:59'),
(68, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-05 14:29:36', '2021-04-05 14:29:36'),
(69, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-05 16:07:56', '2021-04-05 16:07:56'),
(70, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-05 17:56:44', '2021-04-05 17:56:44'),
(71, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-05 18:11:00', '2021-04-05 18:11:00'),
(72, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-06 09:14:51', '2021-04-06 09:14:51'),
(73, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-06 09:42:25', '2021-04-06 09:42:25'),
(74, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-06 10:06:13', '2021-04-06 10:06:13'),
(75, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-06 13:23:20', '2021-04-06 13:23:20'),
(76, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-06 13:27:50', '2021-04-06 13:27:50'),
(77, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-06 13:44:25', '2021-04-06 13:44:25'),
(78, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-06 13:45:34', '2021-04-06 13:45:34'),
(79, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-06 14:23:06', '2021-04-06 14:23:06'),
(80, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-06 14:26:08', '2021-04-06 14:26:08'),
(81, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-06 14:29:55', '2021-04-06 14:29:55'),
(82, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-06 14:42:00', '2021-04-06 14:42:00'),
(83, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-07 09:43:57', '2021-04-07 09:43:57'),
(84, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-07 09:45:29', '2021-04-07 09:45:29'),
(85, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-07 09:58:08', '2021-04-07 09:58:08'),
(86, 17, '::1', ' - -  -  ', 'Chrome', 'Linux', '', '', '', '', '2021-04-07 13:23:58', '2021-04-07 13:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(10) UNSIGNED NOT NULL,
  `method_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(18,8) NOT NULL,
  `currency` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(18,8) NOT NULL,
  `charge` decimal(18,8) NOT NULL,
  `trx` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `final_amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `after_charge` decimal(18,8) NOT NULL,
  `withdraw_information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel,  ',
  `admin_feedback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `method_id`, `user_id`, `amount`, `currency`, `rate`, `charge`, `trx`, `final_amount`, `after_charge`, `withdraw_information`, `status`, `admin_feedback`, `created_at`, `updated_at`) VALUES
(6, 1, 8, '10.00000000', 'USD', '1.00000000', '5.20000000', 'NHESMAV6PPSN', '4.80000000', '4.80000000', '{\"bank_name\":{\"field_name\":\"sdfg\",\"type\":\"text\"},\"account_name\":{\"field_name\":\"asdfasdf\",\"type\":\"text\"},\"account_number\":{\"field_name\":\"654\",\"type\":\"text\"},\"screenshoot\":{\"field_name\":\"2021\\/01\\/03\\/5ff1577369a631609652083.png\",\"type\":\"file\"}}', 2, NULL, '2021-01-02 23:34:32', '2021-01-02 23:34:43'),
(7, 1, 8, '10.00000000', 'USD', '1.00000000', '5.20000000', 'S96W7SG1P896', '4.80000000', '4.80000000', '{\"bank_name\":{\"field_name\":\"sdfg\",\"type\":\"text\"},\"account_name\":{\"field_name\":\"asdfasdf\",\"type\":\"text\"},\"account_number\":{\"field_name\":\"asdf\",\"type\":\"text\"},\"screenshoot\":{\"field_name\":\"2021\\/01\\/03\\/5ff1d421006c81609684001.jpg\",\"type\":\"file\"}}', 3, 'ffffffffff', '2021-01-03 08:26:28', '2021-01-03 23:21:58'),
(8, 1, 8, '10.00000000', 'USD', '1.00000000', '5.20000000', 'DT7CREF4SW4V', '4.80000000', '4.80000000', NULL, 0, NULL, '2021-01-03 08:27:28', '2021-01-03 08:27:28'),
(9, 1, 8, '10.00000000', 'USD', '1.00000000', '5.20000000', 'HSMDBTPX35F6', '4.80000000', '4.80000000', '{\"bank_name\":{\"field_name\":\"sdfg\",\"type\":\"text\"},\"account_name\":{\"field_name\":\"asdfasdf\",\"type\":\"text\"},\"account_number\":{\"field_name\":\"6545485452\",\"type\":\"text\"},\"screenshoot\":{\"field_name\":\"2021\\/01\\/03\\/5ff1d494cd5a11609684116.jpg\",\"type\":\"file\"}}', 1, 'fffffffffff', '2021-01-03 08:28:29', '2021-01-03 23:21:52'),
(10, 1, 8, '500.00000000', 'USD', '1.00000000', '3.00000000', 'JNXQN8PB5XS4', '97.00000000', '97.00000000', '{\"bank_name\":{\"field_name\":\"sdfg\",\"type\":\"text\"},\"account_name\":{\"field_name\":\"asdfasdf\",\"type\":\"text\"},\"account_number\":{\"field_name\":\"6545485452\",\"type\":\"text\"},\"screenshoot\":{\"field_name\":\"2021\\/01\\/04\\/5ff2b38f009a61609741199.jpg\",\"type\":\"file\"}}', 1, NULL, '2021-01-04 00:19:39', '2021-01-04 00:19:59'),
(11, 1, 13, '10.00000000', 'USD', '1.00000000', '1.20000000', 'Q12Q7WVHOSGG', '8.80000000', '8.80000000', '{\"bank_name\":{\"field_name\":\"sdfg\",\"type\":\"text\"},\"account_name\":{\"field_name\":\"asdfasdf\",\"type\":\"text\"},\"account_number\":{\"field_name\":\"6545485452\",\"type\":\"text\"},\"screenshoot\":{\"field_name\":\"2021\\/03\\/15\\/604f31d1d7e671615802833.PNG\",\"type\":\"file\"}}', 2, NULL, '2021-03-15 04:07:04', '2021-03-15 04:07:14'),
(12, 1, 13, '10.00000000', 'USD', '1.00000000', '1.20000000', 'W6RJEHWVX9WW', '8.80000000', '8.80000000', '{\"bank_name\":{\"field_name\":\"asdf\",\"type\":\"text\"},\"account_name\":{\"field_name\":\"asdf\",\"type\":\"text\"},\"account_number\":{\"field_name\":\"6545485452\",\"type\":\"text\"},\"screenshoot\":{\"field_name\":\"2021\\/03\\/15\\/604f31f60138d1615802870.PNG\",\"type\":\"file\"}}', 2, NULL, '2021-03-15 04:07:41', '2021-03-15 04:07:50'),
(13, 1, 8, '10.00000000', 'USD', '1.00000000', '1.20000000', '9UPOWTVGBGXU', '8.80000000', '8.80000000', '{\"bank_name\":{\"field_name\":\"sdfg\",\"type\":\"text\"},\"account_name\":{\"field_name\":\"asdfasdf\",\"type\":\"text\"},\"account_number\":{\"field_name\":\"654\",\"type\":\"text\"},\"screenshoot\":{\"field_name\":\"2021\\/03\\/16\\/605044a19708f1615873185.PNG\",\"type\":\"file\"}}', 2, NULL, '2021-03-15 23:39:37', '2021-03-15 23:39:45'),
(14, 2, 8, '10.00000000', 'USD', '1.00000000', '0.00100000', 'YT4R95B75URK', '9.99900000', '9.99900000', '{\"mobile_number\":{\"field_name\":\"548485\",\"type\":\"text\"}}', 2, NULL, '2021-03-15 23:39:53', '2021-03-15 23:39:55');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_limit` decimal(18,8) DEFAULT NULL,
  `max_limit` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `delay` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` decimal(18,8) DEFAULT NULL,
  `rate` decimal(18,8) DEFAULT NULL,
  `percent_charge` decimal(5,2) DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `name`, `image`, `min_limit`, `max_limit`, `delay`, `fixed_charge`, `rate`, `percent_charge`, `currency`, `user_data`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bank Wire', '5f6f1f98d88b41601118104.jpg', '1.00000000', '10000.00000000', '48 Hours', '1.00000000', '1.00000000', '2.00', 'USD', '{\"bank_name\":{\"field_name\":\"bank_name\",\"field_level\":\"Bank Name\",\"type\":\"text\",\"validation\":\"required\"},\"account_name\":{\"field_name\":\"account_name\",\"field_level\":\"Account Name\",\"type\":\"text\",\"validation\":\"required\"},\"account_number\":{\"field_name\":\"account_number\",\"field_level\":\"Account Number\",\"type\":\"text\",\"validation\":\"required\"},\"screenshoot\":{\"field_name\":\"screenshoot\",\"field_level\":\"Screenshoot\",\"type\":\"file\",\"validation\":\"required\"}}', '<span style=\"color: rgb(33, 37, 41);\">Please Provide The information Below:</span><br>', 1, '2020-06-22 04:59:14', '2021-01-04 00:16:54'),
(2, 'Mobile Money', '5f6f1fa9268c31601118121.jpg', '10.00000000', '1000.00000000', '1-2 Hours', '0.00000000', '1.00000000', '0.01', 'USD', '{\"mobile_number\":{\"field_name\":\"mobile_number\",\"field_level\":\"Mobile Number\",\"type\":\"text\",\"validation\":\"required\"}}', 'Please Provide The Information Below:<br>', 1, '2020-06-22 23:39:15', '2020-11-12 04:16:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collectives`
--
ALTER TABLE `collectives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collective_sponsors`
--
ALTER TABLE `collective_sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_reactions`
--
ALTER TABLE `comment_reactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_creators`
--
ALTER TABLE `content_creators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_creators_username_unique` (`username`),
  ADD UNIQUE KEY `content_creators_email_unique` (`email`),
  ADD UNIQUE KEY `content_creators_mobile_unique` (`mobile`);

--
-- Indexes for table `creator_logins`
--
ALTER TABLE `creator_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`followed_by`,`content_creator_id`);

--
-- Indexes for table `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_name_unique` (`name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_purchages`
--
ALTER TABLE `post_purchages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reactions`
--
ALTER TABLE `reactions`
  ADD PRIMARY KEY (`post_id`,`reactor_id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_attachments`
--
ALTER TABLE `support_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `collectives`
--
ALTER TABLE `collectives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `collective_sponsors`
--
ALTER TABLE `collective_sponsors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment_reactions`
--
ALTER TABLE `comment_reactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `content_creators`
--
ALTER TABLE `content_creators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `creator_logins`
--
ALTER TABLE `creator_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_purchages`
--
ALTER TABLE `post_purchages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_attachments`
--
ALTER TABLE `support_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
