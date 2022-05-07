-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2022 at 04:32 PM
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
-- Database: `blog_kita`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_trip` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `avatar`, `title`, `content`, `content_detail`, `place`, `start_trip`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'img/place/namdu.jpg', 'Nam Du - Hòn Sơn Islands, thả hồn với thiên nhiên.', 'Ngày anh về với Nam Du. Hòn Dầu xanh mát vi vu bóng dừa.', NULL, 'Kiên Giang', '2022-04-30', NULL, NULL, NULL),
(2, 'img/place/binhthuan.jpg', 'Bình Thuận - vùng đất đầy nắng gió.', 'Bình Thuận ơi, Bình Thuận hỡi! Anh về viết vội trăm lời ý thơ.', NULL, 'Bình Thuận', '2021-04-30', NULL, NULL, NULL),
(3, 'img/place/angiang.jpg', 'An Giang - man mác hữu tình, thật thà chất phác.', 'Đất An Giang phù sa màu mỡ. Người An Giang muôn thuở hiền lành.', NULL, 'An Giang', '2020-04-29', NULL, NULL, NULL),
(4, 'img/place/vungtau.jpg', 'Vũng Tàu - say đắm một tình yêu.', 'Biển xanh cát trắng Vũng Tàu. Dập dềnh bãi Trước, bãi Sau sóng đùa.', NULL, 'Vũng Tàu', '2018-04-14', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
