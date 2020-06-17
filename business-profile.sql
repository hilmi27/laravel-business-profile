-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 03:01 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `business-profile`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `quote` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `subject`, `desc`, `quote`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'BWX INDO', 'We are the # 1 technology industry in Indonesia', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><ol><li>There are many variations of passages of Lorem Ipsum available</li><li>There are many variations of passages of Lorem Ipsum available</li><li>There are many variations of passages of Lorem Ipsum available</li><li>There are many variations of passages of Lorem Ipsum available</li></ol><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</p>', 'we are always ready to defend the country with the technology that we make.', 'images/logo/xDD9v9NTTR3TtMOKkRsmi4CRWrxqP1eDyhPOf7WR.png', NULL, '2020-06-15 07:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `cover`, `title`, `desc`, `link`, `created_at`, `updated_at`) VALUES
(1, 'images/banner/MAx6RkWKRJzX4pylfXgErMx2uhnS9HO0W4Bidd8U.jpeg', 'BWX INDO', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'https://www.lipsum.com/', '2020-06-14 06:40:31', '2020-06-14 08:13:24'),
(2, 'images/banner/c3zCCoBIOuuRR1wxejpW2CsTDokYh1KbUFHB5ZrU.jpeg', 'BWX INDO - Mediatech #1 Indonesia', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'https://www.lipsum.com/', '2020-06-14 06:43:00', '2020-06-14 08:13:07'),
(3, 'images/banner/ZLnxqvHYzOQqafuiyphcgbz6EJpFHqlLKDAZdohG.jpeg', 'Platform Digital #1 Indonesia', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'https://www.lipsum.com/', '2020-06-14 06:45:06', '2020-06-14 08:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `keyword`, `meta_desc`, `created_at`, `updated_at`) VALUES
(1, 'Business', 'business', 'Business', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, '2020-06-15 16:59:08'),
(2, 'SEO', 'seo', 'seo', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, '2020-06-15 16:58:57'),
(3, 'Event', 'event', 'Event', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, '2020-06-15 16:58:48'),
(4, 'Web App', 'web-app', 'Web App', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, '2020-06-15 16:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_contract` date DEFAULT NULL,
  `finish_contract` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `address`, `email`, `phone`, `link_web`, `logo`, `start_contract`, `finish_contract`, `created_at`, `updated_at`) VALUES
(1, 'PT. Media Bakulan Online', 'Banyuwangi', 'info@bakulan.online', '6282143258744', 'bakulan.online', 'images/client/92LL5T5lK2Ms04KQcbb7LPxtoIfCs777Itl5erBg.png', '2020-06-01', '2020-06-30', '2020-06-14 20:02:12', '2020-06-14 20:02:12'),
(2, 'PT. Banyuwangi Online', 'Banyuwangi', 'cs@banyuwangi.online', '6282323231', 'banyuwangi.online', 'images/client/mezTGOXK2OSEYkQPBq0RcsWiEnvxNjIM0h0Cdvpi.png', '2020-05-01', '2020-06-30', '2020-06-14 20:07:36', '2020-06-14 20:07:36'),
(3, 'PT. Kopindo Grouping', 'Jakarta Pusat', 'joshua@kopindo.com', '628232123123', 'kopindo.com', 'images/client/iKYVRmTmYMdJSv3upq8SJQkLX27FXehEv349xWg3.png', '2020-01-01', '2020-06-30', '2020-06-14 20:09:01', '2020-06-14 20:20:56'),
(4, 'PT. Agemanindo', 'Bandung', 'cs@agemanindo.id', '628232123213', 'agemanindo.id', 'images/client/501o37VjIMtLQ5wqbiuYcdMwKmxh6rnoesFbnFTv.png', '2020-06-01', '2020-08-31', '2020-06-14 20:10:20', '2020-06-14 20:10:20'),
(7, 'PT. BELIMO', 'Kuala Lumpur', NULL, NULL, NULL, 'images/client/koUdG2Rv90VUcT5MQUwtU3WOnCV8IsSgKSUjDoxL.png', NULL, NULL, '2020-06-14 20:26:29', '2020-06-14 20:26:29'),
(8, 'Citrus Intl.', 'Manila', NULL, NULL, NULL, 'images/client/WIcpO21o8Av1K3A1UBqItYxf9UfLcEWjtiWYyzI8.png', NULL, NULL, '2020-06-14 20:27:38', '2020-06-14 20:27:38'),
(9, 'Herbalife', 'Los Angeles', NULL, NULL, NULL, 'images/client/toUglYDWuVjYNR5rRAHA8ENGuSATuoBMXxFrwna9.png', NULL, NULL, '2020-06-14 20:28:04', '2020-06-14 20:28:04');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-06-14 23:14:36', '2020-06-14 23:14:36'),
(2, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2020-06-14 23:16:15', '2020-06-14 23:16:15'),
(3, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '2020-06-14 23:16:43', '2020-06-14 23:16:43'),
(4, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2020-06-14 23:17:03', '2020-06-14 23:17:03');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quote` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `subject`, `title`, `quote`, `image`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'S & M PRO', 'Sales & Marketing Pro', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'images/feature/TaBN11OuUXsQzbDjJ0i0ArLSe2WGev8Vq9FKZohD.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2020-06-15 07:06:45', '2020-06-15 07:06:45'),
(2, 'Mail Bootster', 'Mail Bootster', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'images/feature/FcbIBaRLv9Qgd0OCtSRtusXbYmJjj1eeN0hrbmhA.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2020-06-15 07:07:46', '2020-06-15 07:07:46'),
(3, 'Finance Smart', 'Be Smart to Manage Finances', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'images/feature/HHVaRH7EHyo1irfaptv4hom4caTrJmhR7zBm462r.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2020-06-15 07:09:11', '2020-06-15 07:09:11');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `portofolio_id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `portofolio_id`, `photo`) VALUES
(1, 5, 'images/portofolio/W1gHd5L3JgnUDE9XMzKw6GUQKy7mfGTNKWswee1E.png'),
(2, 5, 'images/portofolio/5oKf8n4I2nBeH0dH7cPqGgM8T2mW2NdsE8lLqUUG.png'),
(3, 5, 'images/portofolio/i64jlqCS1qzgxx4ijXz7cKGIMf27ifRI5tdfKnqO.png'),
(4, 5, 'images/portofolio/08twtHtNLTOysPvJvFTpjZnKrk9FBhsUO85kde0o.png'),
(5, 5, 'images/portofolio/4OHLAmZvdKx5CsZkaxdEvz1CkiQpg4Hj0CQKfgYk.png'),
(6, 6, 'images/portofolio/uuaz5XwhaoOAkdKzvHKvQV3Fq9alAkHZ2ikpu8uh.jpeg'),
(7, 6, 'images/portofolio/cR9rSuXnojRgR047eq8WBRPjKx1PbyjXgFJavEpH.jpeg'),
(8, 6, 'images/portofolio/qBAynymUhSj5LEqmYk8wUBrwbytwvXiyhpq87aaN.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `generals`
--

CREATE TABLE `generals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmaps` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generals`
--

INSERT INTO `generals` (`id`, `title`, `name`, `favicon`, `logo`, `address`, `phone`, `email`, `twitter`, `facebook`, `instagram`, `linkedin`, `footer`, `gmaps`, `keyword`, `meta_desc`, `created_at`, `updated_at`) VALUES
(1, 'BWXINDO.COM', 'BWX INDO', 'images/general/OR3xneR6KobBFCPT6Rj2XcZygEjHim5VEre5Hz4u.png', 'TA', 'Bangorejo, Banyuwangi', '628232323232', 'info@bwxindo.com', 'https://twitter.com/bwxindo', 'https://facebook.com/bwxindo', 'https://instagram.com/bwxindo', 'TA', 'Copyright Media BWX INDO', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126254.68101185003!2d114.09365445712655!3d-8.551804895184771!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd3f83cc1707a29%3A0x4027a76e3530ae0!2sBangorejo%2C%20Kabupaten%20Banyuwangi%2C%20Jawa%20Timur!5e0!3m2!1sid!2sid!4v1592222761046!5m2!1sid!2sid', 'Penyedia Jasa Pembuatan Web', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', '0000-00-00 00:00:00', '2020-06-16 18:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `name`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'http://127.0.0.1:8000/', '2020-06-16 00:55:08', '2020-06-16 00:55:08'),
(2, 'About', 'http://127.0.0.1:8000/about', '2020-06-16 00:58:42', '2020-06-16 00:58:49'),
(4, 'Service', 'http://127.0.0.1:8000/service', '2020-06-16 01:00:03', '2020-06-16 01:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Thomas', 'thom@mail.com', 'testing', 'halo hay hello', '2020-06-15 02:12:41', '2020-06-15 02:12:41'),
(2, 'john', 'john@mail.com', 'test test', 'dsfdsfdsf sfsd f', '2020-06-15 02:15:11', '2020-06-15 02:15:11'),
(3, 'dsfdsf', 'sdfsd@sads.fdsfds', 'dsfsd', 'sdfsdfsdf', '2020-06-15 02:17:59', '2020-06-15 02:17:59'),
(4, 'dfvdfvfdv', 'vdfdv@dsf.dsf', 'sdfdsf', 'dsf sd sdfdsfdsf', '2020-06-15 02:18:51', '2020-06-15 02:18:51'),
(5, 'dfvdfvfdv', 'vdfdv@dsf.dsf', 'sdfdsf', 'dsf sd sdfdsfdsf', '2020-06-15 02:18:57', '2020-06-15 02:18:57'),
(6, 'tukul', 'tukul@mail.com', 'testing coy', 'asdsasadsa', '2020-06-15 02:21:50', '2020-06-15 02:21:50'),
(7, 'xvcxvcxv', 'xcvxcv@sfdsf.dsfdsf', 'fetretvvret', 'retrevrtret re t ret retret', '2020-06-15 02:22:32', '2020-06-15 02:22:32'),
(8, 'vcxvcx', 'cxvcxv@dsfdsf.sdfsdfd', 'dsfdsfdsf', 'fsddsfdsfsdretret', '2020-06-15 02:23:33', '2020-06-15 02:23:33'),
(9, 'fdgfdg', 'dfgfdg@sads.dfsfdsf', 'dsfds', 'dsf gdsg', '2020-06-15 02:24:55', '2020-06-15 02:24:55'),
(10, 'fdgfdg', 'dfgfdg@sads.dfsfdsf', 'dsfds', 'dsf gdsg', '2020-06-15 02:24:57', '2020-06-15 02:24:57'),
(11, 'fdgfdg', 'dfgfdg@sads.dfsfdsf', 'dsfds', 'dsf gdsg', '2020-06-15 02:24:58', '2020-06-15 02:24:58'),
(12, 'fdgfdg', 'dfgfdg@sads.dfsfdsf', 'dsfds', 'dsf gdsg', '2020-06-15 02:24:58', '2020-06-15 02:24:58'),
(13, 'fdgfdg', 'dfgfdg@sads.dfsfdsf', 'dsfds', 'dsf gdsg', '2020-06-15 02:24:58', '2020-06-15 02:24:58'),
(14, 'fdgfdg', 'dfgfdg@sads.dfsfdsf', 'dsfds', 'dsf gdsg', '2020-06-15 02:24:58', '2020-06-15 02:24:58'),
(15, 'fdgfdg', 'dfgfdg@sads.dfsfdsf', 'dsfds', 'dsf gdsg', '2020-06-15 02:24:59', '2020-06-15 02:24:59'),
(16, 'dsfdsfdsf', 'fsfsdf@dsfds.dsfdsf', 'sdfdsfds', 'fdsfdsfdsf', '2020-06-15 02:26:33', '2020-06-15 02:26:33'),
(17, 'dsfdsfdsf', 'fsfsdf@dsfds.dsfdsf', 'sdfdsfds', 'fdsfdsfdsf', '2020-06-15 02:26:34', '2020-06-15 02:26:34'),
(18, 'dsfdsfdsf', 'fsfsdf@dsfds.dsfdsf', 'sdfdsfds', 'fdsfdsfdsf', '2020-06-15 02:26:35', '2020-06-15 02:26:35'),
(19, 'vcbvcb', 'vcbvcb@dfdsf.dsfsdf', 'dsfsdf', 'dsfdsfdsfdsf', '2020-06-15 03:16:20', '2020-06-15 03:16:20'),
(20, 'vcbvcb', 'vcbvcb@dfdsf.dsfsdf', 'dsfsdf', 'dsfdsfdsfdsf', '2020-06-15 03:16:22', '2020-06-15 03:16:22'),
(21, 'vcbvcb', 'vcbvcb@dfdsf.dsfsdf', 'dsfsdf', 'dsfdsfdsfdsf', '2020-06-15 03:16:23', '2020-06-15 03:16:23'),
(22, 'vcbvcb', 'vcbvcb@dfdsf.dsfsdf', 'dsfsdf', 'dsfdsfdsfdsf', '2020-06-15 03:16:23', '2020-06-15 03:16:23'),
(23, 'vcbvcb', 'vcbvcb@dfdsf.dsfsdf', 'dsfsdf', 'dsfdsfdsfdsf', '2020-06-15 03:16:23', '2020-06-15 03:16:23'),
(24, 'vcbvcb', 'vcbvcb@dfdsf.dsfsdf', 'dsfsdf', 'dsfdsfdsfdsf', '2020-06-15 03:16:24', '2020-06-15 03:16:24'),
(25, 'dfgdfg', 'dfgdf@sdfds.fdsfsdf', 'dsfdsfds', 'fdsfdsfds  sdfdsfdsf', '2020-06-15 03:17:31', '2020-06-15 03:17:31'),
(26, 'sdfdsfdsf sdfds', 'fdsfds@fdsfdsf.dsfsdf', 'fsdfdsfddfgfdg', 'fddfg sadsadsadasd asdasd', '2020-06-15 03:20:12', '2020-06-15 03:20:12'),
(27, 'dsfdsfdsf', 'sdfdsf@aasd.sadasdsada', 'sadas', 'sad sadsadsa d sadasd', '2020-06-15 03:20:43', '2020-06-15 03:20:43'),
(28, 'dsfdsfdsf', 'sdfdsf@aasd.sadasdsada', 'sadas', 'sad sadsadsa d sadasd', '2020-06-15 03:20:44', '2020-06-15 03:20:44'),
(29, 'dsfdsf', 'dsfdsf@dsdsf.dsfdsf', 'dsfdsf', 'dsfdsfds', '2020-06-15 03:23:31', '2020-06-15 03:23:31'),
(30, 'fdgfdg', 'fdgfd@sfdsf.dsfdsf', 'dsfdsf', 'dsfdsf', '2020-06-15 03:24:48', '2020-06-15 03:24:48'),
(31, 'fdgfdg', 'fdgfd@sfdsf.dsfdsf', 'dsfdsf', 'dsfdsf', '2020-06-15 03:24:49', '2020-06-15 03:24:49'),
(32, 'fdgfdg', 'fdgfd@sfdsf.dsfdsf', 'dsfdsf', 'dsfdsf', '2020-06-15 03:24:49', '2020-06-15 03:24:49'),
(33, 'fdgfdg', 'fdgfd@sfdsf.dsfdsf', 'dsfdsf', 'dsfdsf', '2020-06-15 03:24:50', '2020-06-15 03:24:50'),
(34, 'fdgfdg', 'fdgfd@sfdsf.dsfdsf', 'dsfdsf', 'dsfdsf', '2020-06-15 03:24:50', '2020-06-15 03:24:50'),
(35, 'fdgfdg', 'fdgfd@sfdsf.dsfdsf', 'dsfdsf', 'dsfdsf', '2020-06-15 03:24:50', '2020-06-15 03:24:50'),
(36, 'fdgdgfdg', 'dfgfd@dsfsd.fdsf', 'dsfdsfdsf', 'sdfdsfdsf', '2020-06-15 03:26:01', '2020-06-15 03:26:01'),
(37, 'fdgdgfdg', 'dfgfd@dsfsd.fdsf', 'dsfdsfdsf', 'sdfdsfdsf', '2020-06-15 03:26:03', '2020-06-15 03:26:03'),
(38, 'fdgdgfdg', 'dfgfd@dsfsd.fdsf', 'dsfdsfdsf', 'sdfdsfdsf', '2020-06-15 03:26:03', '2020-06-15 03:26:03'),
(39, 'fdgdgfdg', 'dfgfd@dsfsd.fdsf', 'dsfdsfdsf', 'sdfdsfdsf', '2020-06-15 03:26:03', '2020-06-15 03:26:03'),
(40, 'fdgdgfdg', 'dfgfd@dsfsd.fdsf', 'dsfdsfdsf', 'sdfdsfdsf', '2020-06-15 03:26:04', '2020-06-15 03:26:04'),
(41, 'fdgfdg', 'dfgfdg@dfsdsf.dsfdsf', 'sdfdsfds', 'fdsfdsf', '2020-06-15 03:26:33', '2020-06-15 03:26:33'),
(42, 'fdgfdg', 'dfgfdg@dfsdsf.dsfdsf', 'sdfdsfds', 'fdsfdsf', '2020-06-15 03:26:33', '2020-06-15 03:26:33'),
(43, 'fdgfdg', 'dfgfd@dsfds.dfsfdsf', 'sdfdsf', 'dsfdsf', '2020-06-15 03:27:08', '2020-06-15 03:27:08'),
(44, 'fdgfdg', 'fdgfd@dsf.dsfdsf', 'dsfdsfds', 'fdsfdsf', '2020-06-15 03:27:47', '2020-06-15 03:27:47'),
(45, 'fdgfdg', 'fdgfd@dsf.dsfdsf', 'dsfdsfds', 'fdsfdsf', '2020-06-15 03:27:47', '2020-06-15 03:27:47'),
(46, 'fdgfdg', 'fdgfd@dsf.dsfdsf', 'dsfdsfds', 'fdsfdsf', '2020-06-15 03:27:48', '2020-06-15 03:27:48'),
(47, 'fdgfdg', 'fdgfd@dsf.dsfdsf', 'dsfdsfds', 'fdsfdsf', '2020-06-15 03:27:48', '2020-06-15 03:27:48'),
(48, 'fdgfdg', 'fdgfd@dsf.dsfdsf', 'dsfdsfds', 'fdsfdsf', '2020-06-15 03:27:49', '2020-06-15 03:27:49'),
(49, 'fdgfdg', 'fdgfd@dsf.dsfdsf', 'dsfdsfds', 'fdsfdsf', '2020-06-15 03:27:49', '2020-06-15 03:27:49'),
(50, 'sdfsdf', 'dsfs@adsa.dsadas', 'sdfdsf', 'dsfdsfdsf', '2020-06-15 03:28:16', '2020-06-15 03:28:16'),
(51, 'sdfsdf', 'dsfs@adsa.dsadas', 'sdfdsf', 'dsfdsfdsf', '2020-06-15 03:28:17', '2020-06-15 03:28:17'),
(52, 'dsfsf', 'sfds@dsad.sadsa', 'sadsad', 'sadsadsadsa', '2020-06-15 04:06:16', '2020-06-15 04:06:16'),
(53, 'fdgfdg', 'fdgfdg@sfds.fsdf', 'fhgfhgfh', 'gfhgfhgfhgf', '2020-06-15 04:07:06', '2020-06-15 04:07:06'),
(54, 'sdfdsfs', 'fdsfs@dsfdsf.dsfdsf', 'ghfghgf', 'hgfhgfhgfhgfh', '2020-06-15 04:08:47', '2020-06-15 04:08:47'),
(55, 'sfsdfsdf', 'sfdsfsdf@dsf.sdfdsf', 'sdfdsfds', 'fdsfdsdsfd', '2020-06-15 04:13:57', '2020-06-15 04:13:57');

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
(3, '2020_06_14_100735_create_banners_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 2),
(5, '2020_06_14_153403_create_services_table', 2),
(11, '2020_06_15_002104_create_features_table', 3),
(12, '2020_06_15_022448_create_clients_table', 3),
(13, '2020_06_15_033849_create_teams_table', 4),
(14, '2020_06_15_060141_create_faqs_table', 5),
(15, '2020_06_15_065428_create_subscribers_table', 6),
(16, '2020_06_15_071152_create_abouts_table', 7),
(17, '2020_06_15_090317_create_messages_table', 8),
(18, '2020_06_15_115310_create_generals_table', 9),
(19, '2020_06_15_142231_create_categories_table', 10),
(20, '2020_06_15_143029_create_tags_table', 11),
(21, '2020_06_15_144220_create_posts_table', 12),
(23, '2020_06_15_145028_post_tag_table', 13),
(24, '2020_06_16_074406_create_links_table', 14),
(26, '2020_06_16_081021_create_portofolios_table', 15),
(28, '2020_06_16_091901_create_galleries_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portofolios`
--

CREATE TABLE `portofolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_date` date NOT NULL,
  `project_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portofolios`
--

INSERT INTO `portofolios` (`id`, `name`, `category`, `cover`, `client`, `desc`, `project_date`, `project_url`, `created_at`, `updated_at`) VALUES
(5, 'Web Profile', 'Web', 'images/portofolio/xDwXTBzkkzV0nozE4vu1etTQuUajVM5Sesqt4R1x.png', 'PT. Aneka Bahtera', '<p><span style=\"color: rgb(49, 59, 63); font-family: Georgia, serif; font-size: 20px; background-color: rgb(255, 255, 255);\">Sesuai dengan nama input di view (formulir), yang pertama dilakukan adalah mengganti nama file menjadi files. Kemudian, menambahkan tanda * setelah tanda titik seperti pada format di bawah.</span><br></p>', '2020-06-10', 'anekabahtera.com', '2020-06-16 03:19:44', '2020-06-16 03:19:44'),
(6, 'Web Geolocation', 'Web App', 'images/portofolio/Tdlk9oFCJme52C6FIMTwCfY5kscapWzNTAfR7T1N.jpeg', 'PT. Mediatera', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><br></p>', '2020-06-01', 'https://mediatera.id', '2020-06-16 06:08:52', '2020-06-16 06:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` enum('PUBLISH','DRAFT') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `author_id`, `title`, `slug`, `cover`, `body`, `keyword`, `meta_desc`, `views`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(63, 1, 1, 'Google Hapus 31 Aplikasi Android Berbahaya, Ini Daftarnya', 'google-hapus-31-aplikasi-android-berbahaya-ini-daftarnya', 'images/blog/PLqm6nB6INIFG7Ks81VaQie9u0V7nIRvkbM3HQvD.png', '<p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(255, 51, 0); font-size: 14px;\">Liputan6.com, Jakarta -</span>&nbsp;Peneliti keamanan mengeluarkan peringatan kepada pengguna&nbsp;<a href=\"https://www.liputan6.com/tekno/read/4171527/berbahaya-segera-hapus-24-aplikasi-jahat-ini-dari-smartphone-android\" title=\"Android \" style=\"color: rgb(255, 51, 0);\">Android&nbsp;</a>untuk menghapus lebih dari 30&nbsp;<a href=\"https://www.liputan6.com/tekno/read/4171527/berbahaya-segera-hapus-24-aplikasi-jahat-ini-dari-smartphone-android\" title=\"aplikasi berbahaya\" style=\"color: rgb(255, 51, 0);\">aplikasi berbahaya</a>&nbsp;di perangkatnya.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Pasalnya, belum lama ini Google menghapus lebih dari 31 aplikasi populer dari toko aplikasi Play Store.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><a href=\"https://www.liputan6.com/tekno/read/4186009/waspada-8-aplikasi-android-ini-terinfeksi-malware\" title=\"Aplikasi\" style=\"color: rgb(255, 51, 0);\">Aplikasi</a>-aplikasi ini dihapus lantaran&nbsp;<em>software</em>-nya memiliki kemampuan membombardir pengguna dengan iklan mengganggu. Cara kerjanya,&nbsp;<em>software</em>&nbsp;membuka&nbsp;<em>browser</em>&nbsp;dan mengarahkan pengguna ke situs&nbsp;<em>web</em>&nbsp;tertentu tanpa harus mengklik tautan.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Mengutip&nbsp;<em>Express.co.uk</em>, Selasa (16/6/2020), aplikasi-aplikasi bermuatan&nbsp;<em>adware</em>&nbsp;ini ditemukan oleh tim di WhiteOps yang meyakini ada aktor kejahatan di balik&nbsp;<em>adware</em>.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Aktor kejahatan tersebut mulanya mengunggah&nbsp;<em>software</em>&nbsp;yang dirancang untuk menargetkan aplikasi&nbsp;<em>beauty selfie</em>&nbsp;ke Google Play Store pada Januari 2019.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Pada periode awal serangan, layanan perlindungan Google telah menghapus sebagian besar aplikasi-aplikasi ini beberapa minggu setelah diunggah, lantaran sifatnya yang berbahaya.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Menurut WhiteOps, sebagian dari aplikasi-aplikasi yang mengandung&nbsp;<em>adware</em>&nbsp;ini bertahan hanya 17 hari sebelum diblokir dan dihapus.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Karena sudah berada di Google Play selama 17 hari, diyakini lebih dari 500 ribu pengguna sudah mengunduhnya dan melakukan serangan ekstrem ke pengguna.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Keadaan pun kian mumburuk pada September 2019, yakni ketika penjahat mengubah taktik serangannya.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">\"The White Ops Satori Threat Intelligence and Research Team baru-baru ini mengidentifikasi dan melacak operasi curang yang mengganggu perangkat pengguna dengan iklan. Aplikasi-aplikasi ini diunduh lebih dari 20 juta kali,\" kata WhiteOps.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Berikut adalah ke-31 aplikasi yang dimaksud:</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">1. Yoroko Camera dipasang 100 ribu kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">2. Solu Camera dipasang 500 ribu kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">3. Lite Beauty Camera dipasang 1 juta kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">4. Beauty Collage Lite dipasang 500 ribu</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">5. Beauty &amp; Filters Camera dipasang 1 juta kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">6. Photo Collage &amp; Beauty Camera dipasang 100 ribu kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">7. Beauty Camera Selfie Filter dipasang 10 ribu kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">8. Gaty Beauty Camera dipasang 500 ribu kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">9. Pand Selife Beauty Camera dipasang 50 ribu kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">10. Catoon Photo Editor &amp; Selfie Beauty Camera dipasang 1 juta kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">11. Benbu Selife Beauty Camera dipasang 1 juta kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">12. Pinut Selife Beauty Camera &amp; Photo Editor dipasang 1 juta kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">13. Mood Photo Editor &amp; Selife Beauty Camera dipasang 500 ribu kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">14. Rose Photo Editor &amp; Selfie Beauty Camera dipasang 1 juta kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">15 Selife Beauty Camera &amp; Photo Editor dipasang 100 ribu kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">16. Fog Selife Beauty Camera dipasang 100 ribu kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">17. First Selife Beauty Camera &amp; Photo Editor dipasang 5 juta kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">18. Vanu Selife Beauty Camera dipasang 100 ribu kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">19. Sun Pro Beauty Camera dipasang 1 juta kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">20. Funny Sweet Beauty Camera - dipasang 500 ribu kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">21. Little Bee Beauty Camera dipasang 1 juta kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">22. Beauty Camera &amp; Photo Editor Pro dipasang 1 juta kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">23. Grass Beauty Camera dipasang 1 juta kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">24. Ele Beauty Camera dipasang 1 juta kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">25. Flower Beauty Camera dipasang 100 ribu kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">26. Best Selfie Beauty Camera dipasang 1 juta kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">27. Orange Camera dipasang 500 ribu kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">28. Sunny Beauty Camera dipasang 1 juta kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">29. Pro Selfie Beauty Camera dipasang 500 ribu kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">30. Selfie Beauty Camera Pro - dipasang 1 juta kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">31. Elegant Beauty Cam-2019 - dipasang 500 ribu kali</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Nah, bagi kamu yang masih memiliki aplikasi tersebut di&nbsp;<em>smartphone</em>, jangan untuk segera menghapusnya ya.</p>', 'Aplikasi Android Berbahaya', 'Peneliti keamanan mengeluarkan peringatan kepada pengguna Android untuk menghapus lebih dari 30 aplikasi berbahaya di perangkatnya.', 0, 'PUBLISH', '2020-06-15 22:44:58', '2020-06-15 22:44:58', NULL),
(64, 3, 1, 'Facebook Bakal Tunda Semua Event Offline hingga 2021', 'facebook-bakal-tunda-semua-event-offline-hingga-2021', 'images/blog/w36S9AAI4qbn92bsW3dMpdT6nIEoM2H7o3n5MrbP.png', '<p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(255, 51, 0); font-size: 14px;\">Liputan6.com, Jakarta -</span>&nbsp;<a href=\"https://www.liputan6.com/tekno/read/4228601/facebook-rilis-aplikasi-chatting-khusus-apple-watch\" title=\"Facebook \" style=\"color: rgb(255, 51, 0);\">Facebook&nbsp;</a>baru memutuskan untuk menunda seluruh acara yang akan digelarnya, terutama yang mengundang banyak orang, hingga tahun depan. Informasi ini diumumkan langsung oleh CEO Facebook, Mark Zuckerberg.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Dikutip dari&nbsp;<em>Engadget</em>, Sabtu (18/4/2020), Mark mengatakan perusahaan sudah memutuskan untuk&nbsp;<em>event offline</em>&nbsp;yang digelar dan dihadiri lebih dari 50 orang tidak akan digelar hingga Juni 2021.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Menurut Mark, beberapa di antaranya akan digelar dalam&nbsp;<em>event</em>&nbsp;virtual. Selain itu, dia mengatakan Facebook akan memperpanjang aturan tidak ada perjalanan bisnis hingga Juni tahun ini, sekaligus meminta sebagian besar karyawan bekerja dari rumah hingga akhir Mei.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Dengan keputusan ini, besar kemungkinan konferensi pengembang F8 2021 juga tidak akan digelar secara&nbsp;<em>offline</em>. Karenanya, acara tahunan terbesar&nbsp;<a href=\"https://www.liputan6.com/tekno/read/4228601/facebook-rilis-aplikasi-chatting-khusus-apple-watch\" title=\"Facebook \" style=\"color: rgb(255, 51, 0);\">Facebook&nbsp;</a>itu besar kemungkinan digelar secara&nbsp;<em>online.</em>&nbsp;</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Sebelumnya, Facebook juga sudah membatalkan gelaran F8 tahun ini yang rencananya diadakan pada 5 dan 6 Mei. Tidak hanya gelaran F8, event lain seperti Oculus Connect yang biasa digelar bulan September, dapat dipastikan tidak digelar.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">\"Ketika akhirnya masyarakat mulai beraktivitas lagi, kami harus melakukannya secara bertahap untuk memastikan orang yang kembali bekerja dapat melakukannya dengan aman dan meminimalkan kemungkinan wabah lain di masa depan,\" tulis Mark di akun Facebook-nya.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><a href=\"https://www.liputan6.com/tekno/read/4228601/facebook-rilis-aplikasi-chatting-khusus-apple-watch\" title=\"Facebook \" style=\"color: rgb(255, 51, 0);\">Facebook&nbsp;</a>sendiri menyusul Microsoft yang juga sudah mengumumkan rencana serupa.&nbsp;Dari pernyataan terbaru, Microsoft mengatakan akan menggelar seluruh acaranya&nbsp;sampai Juni 2021 akan disiarkan secara&nbsp;<em>online</em>.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Mengenai sisa 2020, perusahaan disebut mengambil kesempatan untuk bereksperimen dengan berbagai&nbsp;platform&nbsp;baru untuk memberikan pengalaman digital berkualitas tertinggi.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Berdasarkan informasi dari sumber, Ignite The Tour, MVP Summit 2021 dan Build 2021 juga termasuk dalam rencana baru Microsoft tersebut. Semuanya akan disiarkan secara&nbsp;<em>live streaming</em>.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Microsoft&nbsp;telah membatalkan MVP Summit 2020 yang dijadwalkan berlangsung pada bulan lalu di Seattle. Hal yang sama juga dialami Inspire 2020, yang dijadwalkan digelar di Las Vegas pada Juli 2020.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Sebelumnya,&nbsp;Facebook&nbsp;mengumumkan telah membatalkan pertemuan tahunan untuk para&nbsp;pengembang yang biasanya dilakukan pada pertengahan tahun. Pembatalan ini dilakukan sebagai antisipasi penyebaran virus corona.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Dikutip dari&nbsp;<em>Reuters,</em>&nbsp;Sabtu (29/2/2020), konferensi bertajuk F8 ini dijadwalkan akan digelar pada 5 dan 6 Mei di San Jose, California, Amerika Serikat. Menilik gelaran tahun lalu, ajang ini biasanya dihadiri ribuan orang dari seluruh dunia.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Kendati konferensi tahunan ini batal, Director of Platform Partnerships&nbsp;Facebook&nbsp;Konstatinos Papamiltiadis mengatakan perusahaan masih akan mengadakan sejumlah acara lokal, termasuk video dan konten yang disiarkan secara langsung.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Selain itu, juru bicara Facebook juga mengatakan perusahaan telah membatasi perjalanan bisnis para karyawannya ke Tiongkok, Korea Selatan, dan Italia. Ketiganya merupakan negara dengan jumlah kasus infeksi virus corona yang terbilang tinggi.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Sebagai informasi, F8 merupakan ajang pertemuan para pengembang tersebar yang diselenggarakan oleh Facebook. Tiap tahun, ajang ini menjadi perkenalan sejumlah fitur anyar yang hadir di aplikasi milik Facebook.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Nama F8 sendiri merujuk pada tradisi&nbsp;hackahthon&nbsp;yang digelar&nbsp;Facebook&nbsp;selama delapan jam. Biasanya, konferensi ini akan dibuka dengan&nbsp;keynote speech&nbsp;dari pendiri Facebook Mark Zuckerberg.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">(Dam/Isk)</p>', 'Event Offline', 'Facebook baru memutuskan untuk menunda seluruh acara yang akan digelarnya, terutama yang mengundang banyak orang, hingga tahun depan.', 0, 'PUBLISH', '2020-06-15 22:47:22', '2020-06-15 22:47:22', NULL),
(65, 2, 1, 'Belajar SEO Terbaru untuk Pemula (Update 2020)', 'belajar-seo-terbaru-untuk-pemula-update-2020', 'images/blog/RUZVCSn9pPoz00EQpTucpq7l8nbpGKSW5i7iSqTt.png', '<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; color: rgb(77, 77, 77); font-family: &quot;PT Serif&quot;; font-size: 19.2px; background-color: rgb(255, 255, 255);\">Tidak ada kata berhenti untuk belajar SEO. Mengingat algoritma Google yang selalu berubah, strategi SEO pun harus selalu diperbarui. Jika tidak, sulit untuk bersaing di halaman pencarian.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; color: rgb(77, 77, 77); font-family: &quot;PT Serif&quot;; font-size: 19.2px; background-color: rgb(255, 255, 255);\">Tentu Anda tidak ingin hal itu terjadi pada website Anda, bukan?</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; color: rgb(77, 77, 77); font-family: &quot;PT Serif&quot;; font-size: 19.2px; background-color: rgb(255, 255, 255);\">Nah, di artikel ini, kami mengajak Anda belajar SEO menurut algoritma Google terbaru. Apa saja yang perlu dipelajari?</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; color: rgb(77, 77, 77); font-family: &quot;PT Serif&quot;; font-size: 19.2px; background-color: rgb(255, 255, 255);\">Untuk memudahkan Anda, kami membagi artikel belajar SEO WordPress ini menjadi sembilan bagian utama:</p><ol style=\"box-sizing: inherit; color: rgb(77, 77, 77); font-family: &quot;PT Serif&quot;; font-size: 19.2px; background-color: rgb(255, 255, 255);\"><li style=\"box-sizing: inherit;\">Konsep Dasar SEO</li><li style=\"box-sizing: inherit;\">Optimasi Kecepatan Website</li><li style=\"box-sizing: inherit;\">Optimasi Website Agar Mobile Friendly</li><li style=\"box-sizing: inherit;\">Riset Keyword</li><li style=\"box-sizing: inherit;\">Membuat Konten</li><li style=\"box-sizing: inherit;\">On Page SEO</li><li style=\"box-sizing: inherit;\">Technical SEO</li><li style=\"box-sizing: inherit;\">Off Page SEO</li><li style=\"box-sizing: inherit;\">Link Building</li></ol><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; color: rgb(77, 77, 77); font-family: &quot;PT Serif&quot;; font-size: 19.2px; background-color: rgb(255, 255, 255);\">Kami sudah mengurutkan dari pembahasan termudah. Jadi, meskipun Anda masih pemula, akan dapat memahaminya dengan baik.</p>', 'SEO Google', 'algoritma Google yang selalu berubah, strategi SEO pun harus selalu diperbarui. Jika tidak, sulit untuk bersaing di halaman pencarian.', 0, 'PUBLISH', '2020-06-15 22:48:28', '2020-06-15 22:48:28', NULL),
(66, 4, 1, 'The PHP Framework for Web Artisans', 'the-php-framework-for-web-artisans', 'images/blog/nPAErveIjpeliBtyxolfu8WJxADXwG5Ew7W0IbRM.png', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><img src=\"data:image/jpeg;base64,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\" data-filename=\"comments-6.jpg\" style=\"width: 200px;\"></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; text-align: left; float: right; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"></div></p><div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; text-align: left; float: left; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><h2 style=\"margin: 0px 0px 10px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px; text-align: left;\">Where does it come from?</h2><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div>', 'Laravel', 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', 0, 'PUBLISH', '2020-06-15 22:50:05', '2020-06-15 22:50:05', NULL),
(67, 1, 1, 'Nilai Valuasi Apple Tembus Rp 21.000 Triliun', 'nilai-valuasi-apple-tembus-rp-21000-triliun', 'images/blog/kBQJYZp9R3aKjeV4Dg5iU85Bl9O0vmPhTTSuEGv1.png', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">KOMPAS.com - Raksasa teknologi Apple berhasil mencatat capaian baru. Perusahaan asal Cupertino, AS, itu kini memiliki nilai valuasi pasar sebesar 1,5 triliun dollar AS atau sekitar Rp 21.324 triliun. Angka ini dicapai setelah nilai saham Apple melonjak dari 307 dollar AS (sekitar Rp 4,3 juta) menjadi 357 dollar AS (sekitar Rp 5 juta) dalam waktu satu bulan terakhir. Valuasi pasar sendiri merupakan nilai sebuah perusahaan yang dihitung berdasarkan harga saham per lembar dari perusahaan tersebut. Baca juga: Apple Patenkan Teknologi Group Selfie Jarak Jauh Pencapaian Apple antara lain didongkrak oleh penjualan tinggi di toko aplikasi App Store yang menarik minat investor atas saham Apple. Tingginya animo masyarakat terhadap desas-desus kedatangan iPhone 12 dan hadirnya arsitektur ARM pada laptop Mac juga semakin memperkuat minat para investor. Sebelumnya, pple mengaku sempat terperangkap di situasi sulit. Pada Januari 2020 lalu misalnya, nilai jual saham milik Apple dilaporkan turun secara signifikan, yakni sebesar 35 persen hingga Maret lalu akibat pandemi virus corona. Kini, nilai saham perusahaan tersebut kembali menguat dan dilaporkan akan terus meningkat dalam beberapa hari ke depan. Baca juga: Bos Apple Buka Suara soal Isu Rasisme di Amerika Serikat Dirangkum KompasTekno dari TechSpot, Senin (15/6/2020), Apple menjadi perusahaan pertama di Amerika Serikat yang berhasil mencapai valuasi pasar sebesar 1,5 triliun dollar AS. Menyusul di belakangnya, Microsoft memiliki nilai valuasi pasar 1,4 triliun dollar AS (Rp 19.903 triliun), Amazon 1,32 triliun dollar AS (Rp 18.765 triliun) dan induk Google, Alphabet, sebesar 1 triliun dollar AS (Rp 14.216 triliun).</span><br style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><br style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Artikel ini telah tayang di&nbsp;</span><a href=\"http://kompas.com/\" style=\"color: inherit; vertical-align: baseline; outline: 0px; transition: all 0.2s ease 0s; font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Kompas.com</a><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp;dengan judul \"Nilai Valuasi Apple Tembus Rp 21.000 Triliun \",&nbsp;</span><a href=\"https://tekno.kompas.com/read/2020/06/15/15160067/nilai-valuasi-apple-tembus-rp-21000-triliun\" style=\"color: inherit; vertical-align: baseline; outline: 0px; transition: all 0.2s ease 0s; font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">https://tekno.kompas.com/read/2020/06/15/15160067/nilai-valuasi-apple-tembus-rp-21000-triliun</a><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">.</span><br style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Penulis : Kevin Rizky Pratama</span><br style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Editor : Oik Yusuf</span><br></p>', 'Valuasi Apple', 'Artikel ini telah tayang di Kompas.com dengan judul \"Nilai Valuasi Apple Tembus Rp 21.000 Triliun \", https://tekno.kompas.com/read/2020/06/15/15160067/nilai-valuasi-apple-tembus-rp-21000-triliun. Penulis : Kevin Rizky Pratama Editor : Oik Yusuf', 0, 'PUBLISH', '2020-06-15 22:52:57', '2020-06-15 22:52:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(63, 6),
(64, 6),
(65, 2),
(66, 1),
(67, 6);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `title`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'icofont-web', 'Digital Marketing', 'You may specify different rate limits for guest and authenticated users. For example, you may specify a maximum of 10 requests per minute for guests 60 for authenticated users:', '2020-06-14 09:04:16', '2020-06-14 17:01:28'),
(2, 'icofont-thumbs-up', 'Designer Profesional', 'You may specify different rate limits for guest and authenticated users. For example, you may specify a maximum of 10 requests per minute for guests 60 for authenticated users:', '2020-06-14 09:05:03', '2020-06-14 17:01:07'),
(3, 'icofont-qr-code', 'Reseller Center #1 Indonesia', 'You may specify different rate limits for guest and authenticated users. For example, you may specify a maximum of 10 requests per minute for guests 60 for authenticated users:', '2020-06-14 09:05:39', '2020-06-14 17:00:38'),
(4, 'icofont-network', 'SEO PRO', 'You may specify different rate limits for guest and authenticated users. For example, you may specify a maximum of 10 requests per minute for guests 60 for authenticated users:', '2020-06-14 09:06:14', '2020-06-14 16:57:51'),
(5, 'icofont-brand-burger-king', 'Resto Partner', 'If your HTTP request contains \"nested\" parameters, you may specify them in your validation rules using \"dot\" syntax:', '2020-06-14 17:05:21', '2020-06-14 17:05:21'),
(7, 'icofont-brand-nike', 'Sportware Partner', 'So, what if the incoming request parameters do not pass the given validation rules? As mentioned previously, Laravel will automatically redirect the user back to their previous location.', '2020-06-14 17:09:16', '2020-06-14 17:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'test@mail.com', '2020-06-15 00:09:41', '2020-06-15 00:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `keyword`, `meta_desc`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', 'whats laravel ?', 'Laravel is a web application framework with expressive, elegant syntax. ', NULL, NULL),
(2, 'SEO', 'seo', 'how does seo work?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', NULL, NULL),
(3, 'MySQL', 'mysql', 'MySQL', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, '2020-06-15 17:12:08'),
(4, 'PHP', 'php', 'PHP', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, '2020-06-15 17:11:58'),
(5, 'Andorid', 'andorid', 'android app', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2020-06-15 17:09:46', '2020-06-15 17:09:46'),
(6, 'Bisnis', 'bisnis', 'Bisnis', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2020-06-15 22:22:48', '2020-06-15 22:22:48'),
(7, 'How to', 'how-to', 'How to create', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2020-06-15 22:23:16', '2020-06-15 22:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `position`, `bio`, `photo`, `twitter`, `facebook`, `instagram`, `linkedin`, `created_at`, `updated_at`) VALUES
(2, 'Juan Ponidi Suarez', 'Chief Executive Officer', 'from village to country', 'images/team/WQZgjWhioZPvq2meIOkxj3XbPyxkG47VSnbdJ1CQ.jpeg', 'https://twitter.com/hilmipurdimen', NULL, NULL, NULL, '2020-06-14 21:48:13', '2020-06-14 21:48:13'),
(3, 'Susi Similikiti Juliet', 'Product Manager', 'Product perfection is number one', 'images/team/x2R4fib5XswZRqR6uAK28MsoVk6B3jd8prrUn5bI.jpeg', 'https://twitter.com/hilmipurdimen', 'https://twitter.com/hilmipurdimen', 'https://twitter.com/hilmipurdimen', 'https://twitter.com/hilmipurdimen', '2020-06-14 21:49:37', '2020-06-14 21:49:37'),
(4, 'Andre Ribero Prakoso', 'IT Manager', 'Data security is very important', 'images/team/4EN51UzhfgzblIGmAP8tjYAvmWoa7orA4B9D8Fmm.jpeg', 'https://twitter.com/hilmipurdimen', 'https://twitter.com/hilmipurdimen', 'https://twitter.com/hilmipurdimen', 'https://twitter.com/hilmipurdimen', '2020-06-14 21:50:58', '2020-06-14 21:50:58'),
(5, 'Christy Siti Fatonah Rose', 'S & M Manager', 'the world must use my product', 'images/team/kK8OON10xeEYfOOKe37ckK9oNWlEKjFX1uZNoz7Y.jpeg', 'https://twitter.com/hilmipurdimen', 'https://twitter.com/hilmipurdimen', 'https://twitter.com/hilmipurdimen', 'https://twitter.com/hilmipurdimen', '2020-06-14 21:52:39', '2020-06-14 22:01:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@mail.test', NULL, '$2y$10$ukdalwzYTv4TRun5A2EVjugHu5dJobjIl5iW/3w8ONwZBTMnDdgXa', NULL, '2020-06-14 08:42:09', '2020-06-14 08:42:09', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generals`
--
ALTER TABLE `generals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `portofolios`
--
ALTER TABLE `portofolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`post_id`,`tag_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `generals`
--
ALTER TABLE `generals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `portofolios`
--
ALTER TABLE `portofolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
