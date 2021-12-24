-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2021 at 10:49 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubigdb`
--

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
(1, '2019_05_02_125358_tables', 1),
(9, '2021_02_05_184958_add_paid_table', 2),
(10, '2021_02_13_225904_add_offline_table', 2),
(11, '2021_02_14_000408_add_activetoggle_table', 2),
(12, '2021_02_14_054013_add_note_to_order', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `refNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `orders` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paid` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `refNo`, `customer_id`, `branch_id`, `driver_id`, `orders`, `orderStatus`, `status`, `created_at`, `updated_at`, `paid`, `note`) VALUES
(4, 'ZNBBC', 14, 9, 15, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"3\",\"total\":195}]', 'delivered', 1, '2019-05-30 15:35:01', '2019-05-30 17:52:20', 0, NULL),
(5, 'AKGSL', 14, 9, 15, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"3\",\"total\":195}]', 'delivered', 1, '2020-06-23 15:35:01', '2020-06-24 15:35:01', 0, NULL),
(6, 'PASOF', 14, 9, 15, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"3\",\"total\":195}]', 'delivered', 1, '2020-06-24 15:35:01', '2020-06-24 15:35:01', 0, NULL),
(9, '2PZQA', 14, 9, 15, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"2\",\"total\":130},{\"id\":6,\"name\":\"5 gallons - Round\",\"price\":\"45\",\"qty\":\"2\",\"total\":90}]', 'collection', 1, '2020-06-25 15:35:01', '2020-06-25 15:35:01', 0, NULL),
(10, 'HGPTP', 20, 10, 18, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"101110\",\"total\":6572150}]', 'pending', 0, '2019-10-08 17:38:58', '2019-10-08 17:39:05', 0, NULL),
(11, '2LFDD', 21, 10, 18, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"01\",\"total\":65}]', 'redeliver', 1, '2019-10-08 17:39:18', '2019-10-15 17:58:27', 0, NULL),
(12, 'HKVFG', 20, 10, 23, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"2\",\"total\":130},{\"id\":6,\"name\":\"5 gallons - Round\",\"price\":\"45\",\"qty\":\"1\",\"total\":45}]', 'delivered', 1, '2019-10-09 08:52:59', '2019-10-09 08:54:14', 0, NULL),
(13, '5KWMO', 21, 10, 23, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"3\",\"total\":195},{\"id\":6,\"name\":\"5 gallons - Round\",\"price\":\"45\",\"qty\":\"1\",\"total\":45}]', 'delivered', 1, '2019-10-09 08:55:29', '2019-10-09 08:58:41', 0, NULL),
(14, 'SL8UE', 22, 10, 23, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"1\",\"total\":65}]', 'delivered', 1, '2019-10-09 08:55:53', '2019-10-09 08:59:28', 0, NULL),
(15, '69A3O', 17, 10, 23, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"4\",\"total\":260}]', 'delivered', 1, '2019-10-09 08:56:10', '2019-10-09 08:58:44', 0, NULL),
(16, 'GEMUS', 22, 10, 23, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"3\",\"total\":195},{\"id\":6,\"name\":\"5 gallons - Round\",\"price\":\"45\",\"qty\":\"1\",\"total\":45}]', 'delivered', 1, '2019-10-09 08:56:34', '2019-10-09 08:58:52', 0, NULL),
(17, 'XKBGR', 20, 10, 23, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"2\",\"total\":130},{\"id\":6,\"name\":\"5 gallons - Round\",\"price\":\"45\",\"qty\":\"1\",\"total\":45}]', 'delivered', 1, '2019-10-09 08:57:11', '2019-10-09 08:58:56', 0, NULL),
(18, '8GB64', 20, 10, 23, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"2\",\"total\":130},{\"id\":6,\"name\":\"5 gallons - Round\",\"price\":\"45\",\"qty\":\"1\",\"total\":45}]', 'delivered', 1, '2019-10-15 17:52:27', '2019-10-15 17:57:36', 0, NULL),
(19, '3IQ1Q', 21, 10, 23, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"1\",\"total\":65},{\"id\":6,\"name\":\"5 gallons - Round\",\"price\":\"45\",\"qty\":\"1\",\"total\":45}]', 'delivered', 1, '2019-10-15 17:53:14', '2019-10-17 17:35:08', 0, NULL),
(20, 'OUFJ3', 24, 10, 23, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"1\",\"total\":65},{\"id\":6,\"name\":\"5 gallons - Round\",\"price\":\"45\",\"qty\":\"2\",\"total\":90}]', 'delivered', 1, '2019-10-17 17:21:17', '2019-10-17 17:35:52', 0, NULL),
(21, 'ORVWC', 20, 10, 23, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"3\",\"total\":195},{\"id\":6,\"name\":\"5 gallons - Round\",\"price\":\"45\",\"qty\":\"2\",\"total\":90}]', 'delivered', 1, '2019-10-17 17:22:16', '2019-10-17 17:43:06', 0, NULL),
(22, 'VPXZQ', 22, 10, 23, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"1\",\"total\":65},{\"id\":6,\"name\":\"5 gallons - Round\",\"price\":\"45\",\"qty\":\"1\",\"total\":45}]', 'delivered', 1, '2019-10-17 17:23:21', '2019-10-17 17:35:59', 0, NULL),
(23, 'AOPL5', 21, 10, 23, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"1\",\"total\":65},{\"id\":6,\"name\":\"5 gallons - Round\",\"price\":\"45\",\"qty\":\"3\",\"total\":135}]', 'delivered', 1, '2019-10-17 17:23:43', '2019-10-17 17:36:11', 0, NULL),
(24, 'PZCWN', 16, 10, 25, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"1\",\"total\":65},{\"id\":6,\"name\":\"5 gallons - Round\",\"price\":\"45\",\"qty\":\"1\",\"total\":45}]', 'redeliver', 1, '2021-06-06 08:47:10', '2021-06-06 08:48:19', 1, 'testing'),
(25, '6O5AP', 16, 10, 25, '[{\"id\":5,\"name\":\"5 gallons - Slim\",\"price\":\"65\",\"qty\":\"1\",\"total\":65},{\"id\":6,\"name\":\"5 gallons - Round\",\"price\":\"45\",\"qty\":\"1\",\"total\":45}]', 'collection', 1, '2021-06-06 08:47:15', '2021-06-06 08:48:04', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `img`, `status`, `created_at`, `updated_at`) VALUES
(5, '5 gallons - Slim', '65', '26baf068480a9de2d8d51b258f1b0789.jpeg', 1, '2019-05-30 12:32:08', '2019-05-30 12:32:08'),
(6, '5 gallons - Round', '45', '00eca24f-b0e5-4e70-b4e4-6958eeee70ab_1.461f602c7723e5e4604f5c3733975ea5.jpeg', 1, '2019-05-30 12:32:52', '2019-05-30 12:44:03'),
(7, 'asd', '123', '26baf068480a9de2d8d51b258f1b0789.jpeg', 0, '2019-05-30 12:33:32', '2019-05-30 12:33:36'),
(8, '5 gallons - Slim', '65', NULL, 0, '2019-05-30 12:38:11', '2019-05-30 12:38:56'),
(9, '5 gallons - Slim', '65', NULL, 0, '2019-05-30 12:38:24', '2019-05-30 12:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plateNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `online` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `offline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activetoggle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `contact`, `address`, `plateNumber`, `accountType`, `branch_id`, `online`, `status`, `created_at`, `updated_at`, `offline`, `activetoggle`) VALUES
(1, 'Rhomeo Hildawa', 'admin', '$2y$10$tUu7G7kvhjRWfqFamnYtzedFU/p7Puq4DwcfNssrux4co6vAICAWG', NULL, NULL, NULL, 'admin', NULL, '2020-02-28 09:48:18', 1, '2019-05-02 09:35:06', '2020-02-28 08:48:18', NULL, 0),
(9, 'Manila', 'manila', '$2y$10$vpTmm5FHjQ4MIV9mwSd5Ne3QJ4AGado9wlZRwKKv0nfrNit6Ja5Nu', '09993439934', 'Manila, Philippines', NULL, 'branch', NULL, '2019-10-08 16:08:32', 1, '2020-06-25 00:08:32', '2020-06-25 00:08:32', NULL, 0),
(10, 'Makati', 'makati', '$2y$10$SEwxQC6.GRl3.J8Z2VSZY.E6f.TlpcPqS8GefB1T3E6dhgO2zvej2', '09342924920', 'Makati, Philippines', NULL, 'branch', NULL, '2021-06-06 16:49:09', 1, '2019-05-30 11:44:45', '2021-06-06 08:49:09', NULL, 0),
(11, 'Pasig', 'pasig', '$2y$10$v1gpq54PHirMZFmxShyQ6OMugpID1v0QR4ZdQMOdmicmpc/EGJouO', '09535399531', 'Pasig, Philippines', NULL, 'branch', NULL, NULL, 1, '2019-05-30 11:45:09', '2019-05-30 11:45:09', NULL, 0),
(14, 'Kenneth', NULL, NULL, '0913123', 'Manila', NULL, 'customer', 9, NULL, 1, '2019-05-30 14:30:51', '2019-05-30 14:30:51', NULL, 0),
(15, 'Rhomeo Hildawa', 'rhomeo', '$2y$10$ohTtdSeIhqj4pbXS2H4Hi.IV6//72ima24yjNcmVrdS99pW6YD9BG', '0999999999', 'Manil', 'GSW 666', 'driver', 9, '2019-10-08 15:46:10', 1, '2019-05-30 14:38:41', '2019-10-07 23:46:10', NULL, 0),
(16, NULL, NULL, NULL, NULL, 'Marikina', NULL, 'customer', 10, NULL, 1, '2019-08-03 19:45:34', '2019-08-03 19:45:34', NULL, 0),
(17, 'Ken', NULL, NULL, NULL, 'Makati', NULL, 'customer', 10, NULL, 1, '2019-08-03 19:48:38', '2019-08-03 19:48:38', NULL, 0),
(18, 'Kenneth Abenojar', 'ken', '$2y$10$FwIzUERS6EwiHp0hOVBUw.Z3MOJxgTwTO5thiMr3B4LznFvrSJJyC', '123', 'Unit B Cornerstone residences, katipunan st. marikina between J.C.T Minimart and Hair Salon spa', 'GSW 666', 'driver', 10, NULL, 1, '2019-08-03 19:50:12', '2019-08-03 19:50:12', NULL, 0),
(19, 'Neth', 'neth', '$2y$10$c0EXKlJ.xJe1R.WYjRcy5ep1/T8cwr48polJeLQQ7LzL5K8Wv3Kyy', '09561839341', 'asdasd', 'asdasdasdas', 'driver', 9, '2021-06-06 16:46:18', 1, '2019-10-07 23:40:21', '2021-06-06 08:46:18', NULL, 1),
(20, 'JR Abustan', NULL, NULL, '09175018346', 'Excel1 23K', NULL, 'customer', 10, NULL, 1, '2019-10-08 17:36:21', '2019-10-08 17:36:21', NULL, 0),
(21, 'Mayann', NULL, NULL, '09062788369', 'Laf1 11A', NULL, 'customer', 10, NULL, 1, '2019-10-08 17:37:50', '2019-10-08 17:37:50', NULL, 0),
(22, 'Manapsal', NULL, NULL, '09778111958', '1EW2-9C', NULL, 'customer', 10, NULL, 1, '2019-10-09 08:49:37', '2019-10-09 08:49:37', NULL, 0),
(23, 'Marvin', 'Marvin', '$2y$10$KXYjINroO4dujG91tZW3zucp14QUwIW68rvVNSJH0YpIquXY2e.hi', '09123838064', 'Greenpark', 'NDJ 2298', 'driver', 10, '2019-10-17 18:50:05', 1, '2019-10-09 08:51:20', '2019-10-17 17:50:05', NULL, 0),
(24, 'David', NULL, NULL, '111111', '23A-Ex1', NULL, 'customer', 10, NULL, 1, '2019-10-17 17:20:11', '2019-10-17 17:20:11', NULL, 0),
(25, 'Testing', 'Testing', '$2y$10$msnryNDWi2kkbPpnqKM9JuTdYAT1UCCIqPAnJPYLKmbwB3Izbjzdy', '123456789', 'n/a', '123 ABC', 'driver', 10, '2021-06-06 16:48:32', 1, '2021-06-06 08:46:07', '2021-06-06 08:48:32', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
