-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 20, 2019 lúc 08:30 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `salegaubong`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_customer` bigint(20) UNSIGNED NOT NULL,
  `date_order` date NOT NULL,
  `total` int(11) NOT NULL,
  `payment` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `payment`, `created_at`, `updated_at`) VALUES
(3, 6, '2019-06-01', 3540000, 'COD', '2019-06-01 11:03:31', '2019-06-01 11:03:31'),
(4, 7, '2019-06-01', 550000, 'COD', '2019-06-01 11:15:22', '2019-06-01 11:15:22'),
(5, 8, '2019-06-01', 850000, 'COD', '2019-06-01 11:16:32', '2019-06-01 11:16:32'),
(6, 9, '2019-06-01', 185000, 'COD', '2019-06-01 11:18:48', '2019-06-01 11:18:48'),
(7, 10, '2019-06-02', 700000, 'ATM', '2019-06-01 20:48:05', '2019-06-01 20:48:05'),
(8, 11, '2019-06-05', 850000, 'COD', '2019-06-04 23:55:56', '2019-06-04 23:55:56'),
(9, 12, '2019-06-11', 540000, 'ATM', '2019-06-11 00:49:34', '2019-06-11 00:49:34'),
(10, 13, '2019-06-11', 220000, 'COD', '2019-06-11 00:53:39', '2019-06-11 00:53:39'),
(11, 14, '2019-06-12', 8070000, 'ATM', '2019-06-12 02:21:10', '2019-06-12 02:21:10'),
(12, 15, '2019-06-13', 3430000, 'COD', '2019-06-12 18:47:42', '2019-06-12 18:47:42'),
(13, 16, '2019-06-13', 3430000, 'COD', '2019-06-12 18:48:09', '2019-06-12 18:48:09'),
(14, 17, '2019-06-13', 3430000, 'COD', '2019-06-12 18:48:35', '2019-06-12 18:48:35'),
(15, 19, '2019-06-13', 270000, 'ATM', '2019-06-12 18:52:21', '2019-06-12 18:52:21'),
(16, 20, '2019-06-13', 390000, 'COD', '2019-06-12 18:56:39', '2019-06-12 18:56:39'),
(17, 21, '2019-06-13', 2700000, 'COD', '2019-06-12 18:59:30', '2019-06-12 18:59:30'),
(18, 23, '2019-06-13', 390000, 'COD', '2019-06-12 19:02:27', '2019-06-12 19:02:27'),
(19, 24, '2019-06-13', 390000, 'COD', '2019-06-12 19:05:18', '2019-06-12 19:05:18'),
(20, 25, '2019-06-13', 800000, 'ATM', '2019-06-12 19:50:11', '2019-06-12 19:50:11'),
(21, 26, '2019-06-13', 28390000, 'COD', '2019-06-12 20:34:47', '2019-06-12 20:34:47'),
(22, 27, '2019-06-13', 28390000, 'COD', '2019-06-12 20:43:38', '2019-06-12 20:43:38'),
(23, 28, '2019-06-13', 220000, 'COD', '2019-06-12 21:18:34', '2019-06-12 21:18:34'),
(24, 29, '2019-06-13', 220000, 'COD', '2019-06-12 21:18:58', '2019-06-12 21:18:58'),
(25, 30, '2019-06-13', 220000, 'COD', '2019-06-12 21:30:46', '2019-06-12 21:30:46'),
(26, 31, '2019-06-13', 1070000, 'COD', '2019-06-12 23:36:13', '2019-06-12 23:36:13'),
(27, 32, '2019-06-13', 1070000, 'COD', '2019-06-12 23:37:59', '2019-06-12 23:37:59'),
(28, 33, '2019-06-13', 1070000, 'COD', '2019-06-12 23:42:58', '2019-06-12 23:42:58'),
(29, 34, '2019-06-13', 1070000, 'COD', '2019-06-12 23:43:51', '2019-06-12 23:43:51'),
(30, 35, '2019-06-13', 1070000, 'COD', '2019-06-12 23:44:41', '2019-06-12 23:44:41'),
(31, 36, '2019-06-13', 1070000, 'COD', '2019-06-12 23:48:54', '2019-06-12 23:48:54'),
(32, 37, '2019-06-13', 1070000, 'COD', '2019-06-12 23:49:12', '2019-06-12 23:49:12'),
(33, 38, '2019-06-13', 1070000, 'COD', '2019-06-12 23:50:08', '2019-06-12 23:50:08'),
(34, 39, '2019-06-13', 1070000, 'COD', '2019-06-12 23:52:17', '2019-06-12 23:52:17'),
(35, 40, '2019-06-13', 1070000, 'COD', '2019-06-12 23:54:26', '2019-06-12 23:54:26'),
(36, 41, '2019-06-13', 1070000, 'COD', '2019-06-12 23:55:02', '2019-06-12 23:55:02'),
(37, 42, '2019-06-13', 1070000, 'COD', '2019-06-12 23:59:20', '2019-06-12 23:59:20'),
(38, 43, '2019-06-13', 1070000, 'COD', '2019-06-13 00:04:08', '2019-06-13 00:04:08'),
(39, 44, '2019-06-13', 1070000, 'COD', '2019-06-13 00:14:42', '2019-06-13 00:14:42'),
(40, 45, '2019-06-13', 1070000, 'COD', '2019-06-13 00:15:27', '2019-06-13 00:15:27'),
(41, 46, '2019-06-13', 1070000, 'COD', '2019-06-13 00:20:57', '2019-06-13 00:20:57'),
(42, 47, '2019-06-13', 270000, 'COD', '2019-06-13 00:23:37', '2019-06-13 00:23:37'),
(43, 48, '2019-06-13', 390000, 'COD', '2019-06-13 00:33:09', '2019-06-13 00:33:09'),
(44, 49, '2019-06-13', 270000, 'COD', '2019-06-13 00:51:14', '2019-06-13 00:51:14'),
(45, 51, '2019-06-13', 80000, 'COD', '2019-06-13 00:54:03', '2019-06-13 00:54:03'),
(46, 52, '2019-06-14', 8000000, 'COD', '2019-06-14 01:08:48', '2019-06-14 01:08:48'),
(47, 53, '2019-06-17', 800000, 'COD', '2019-06-16 18:05:41', '2019-06-16 18:05:41'),
(48, 54, '2019-06-19', 270000, 'ATM', '2019-06-18 19:49:39', '2019-06-18 19:49:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_bill` bigint(20) UNSIGNED NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 3, 71, 3, 290000, '2019-06-01 11:03:32', '2019-06-01 11:03:32'),
(2, 3, 91, 2, 650000, '2019-06-01 11:03:32', '2019-06-01 11:03:32'),
(3, 3, 86, 1, 420000, '2019-06-01 11:03:32', '2019-06-01 11:03:32'),
(4, 3, 90, 1, 950000, '2019-06-01 11:03:32', '2019-06-01 11:03:32'),
(5, 4, 100, 1, 130000, '2019-06-01 11:15:22', '2019-06-01 11:15:22'),
(6, 4, 101, 1, 230000, '2019-06-01 11:15:22', '2019-06-01 11:15:22'),
(7, 4, 102, 1, 190000, '2019-06-01 11:15:22', '2019-06-01 11:15:22'),
(8, 5, 72, 1, 850000, '2019-06-01 11:16:32', '2019-06-01 11:16:32'),
(9, 6, 93, 1, 185000, '2019-06-01 11:18:48', '2019-06-01 11:18:48'),
(10, 7, 83, 1, 410000, '2019-06-01 20:48:05', '2019-06-01 20:48:05'),
(11, 7, 71, 1, 290000, '2019-06-01 20:48:05', '2019-06-01 20:48:05'),
(12, 8, 72, 1, 850000, '2019-06-04 23:55:56', '2019-06-04 23:55:56'),
(13, 9, 84, 1, 100000, '2019-06-11 00:49:34', '2019-06-11 00:49:34'),
(14, 9, 71, 1, 290000, '2019-06-11 00:49:35', '2019-06-11 00:49:35'),
(15, 9, 120, 1, 150000, '2019-06-11 00:49:35', '2019-06-11 00:49:35'),
(16, 10, 1, 1, 220000, '2019-06-11 00:53:39', '2019-06-11 00:53:39'),
(17, 11, 71, 21, 270000, '2019-06-12 02:21:10', '2019-06-12 02:21:10'),
(18, 11, 72, 3, 800000, '2019-06-12 02:21:10', '2019-06-12 02:21:10'),
(19, 12, 83, 3, 390000, '2019-06-12 18:47:42', '2019-06-12 18:47:42'),
(20, 12, 1, 3, 220000, '2019-06-12 18:47:42', '2019-06-12 18:47:42'),
(21, 12, 72, 2, 800000, '2019-06-12 18:47:42', '2019-06-12 18:47:42'),
(22, 13, 83, 3, 390000, '2019-06-12 18:48:09', '2019-06-12 18:48:09'),
(23, 13, 1, 3, 220000, '2019-06-12 18:48:09', '2019-06-12 18:48:09'),
(24, 13, 72, 2, 800000, '2019-06-12 18:48:09', '2019-06-12 18:48:09'),
(25, 14, 83, 3, 390000, '2019-06-12 18:48:35', '2019-06-12 18:48:35'),
(26, 14, 1, 3, 220000, '2019-06-12 18:48:35', '2019-06-12 18:48:35'),
(27, 14, 72, 2, 800000, '2019-06-12 18:48:35', '2019-06-12 18:48:35'),
(28, 15, 71, 1, 270000, '2019-06-12 18:52:21', '2019-06-12 18:52:21'),
(29, 16, 83, 1, 390000, '2019-06-12 18:56:39', '2019-06-12 18:56:39'),
(30, 17, 71, 10, 270000, '2019-06-12 18:59:30', '2019-06-12 18:59:30'),
(31, 18, 83, 1, 390000, '2019-06-12 19:02:27', '2019-06-12 19:02:27'),
(32, 19, 83, 1, 390000, '2019-06-12 19:05:18', '2019-06-12 19:05:18'),
(33, 20, 72, 1, 800000, '2019-06-12 19:50:11', '2019-06-12 19:50:11'),
(34, 21, 83, 1, 390000, '2019-06-12 20:34:47', '2019-06-12 20:34:47'),
(35, 21, 72, 35, 800000, '2019-06-12 20:34:47', '2019-06-12 20:34:47'),
(36, 22, 83, 1, 390000, '2019-06-12 20:43:38', '2019-06-12 20:43:38'),
(37, 22, 72, 35, 800000, '2019-06-12 20:43:38', '2019-06-12 20:43:38'),
(38, 23, 1, 1, 220000, '2019-06-12 21:18:34', '2019-06-12 21:18:34'),
(39, 24, 1, 1, 220000, '2019-06-12 21:18:58', '2019-06-12 21:18:58'),
(40, 25, 1, 1, 220000, '2019-06-12 21:30:46', '2019-06-12 21:30:46'),
(41, 26, 72, 1, 800000, '2019-06-12 23:36:13', '2019-06-12 23:36:13'),
(42, 26, 71, 1, 270000, '2019-06-12 23:36:13', '2019-06-12 23:36:13'),
(43, 27, 72, 1, 800000, '2019-06-12 23:37:59', '2019-06-12 23:37:59'),
(44, 27, 71, 1, 270000, '2019-06-12 23:37:59', '2019-06-12 23:37:59'),
(45, 28, 72, 1, 800000, '2019-06-12 23:42:58', '2019-06-12 23:42:58'),
(46, 28, 71, 1, 270000, '2019-06-12 23:42:58', '2019-06-12 23:42:58'),
(47, 29, 72, 1, 800000, '2019-06-12 23:43:51', '2019-06-12 23:43:51'),
(48, 29, 71, 1, 270000, '2019-06-12 23:43:51', '2019-06-12 23:43:51'),
(49, 30, 72, 1, 800000, '2019-06-12 23:44:41', '2019-06-12 23:44:41'),
(50, 30, 71, 1, 270000, '2019-06-12 23:44:41', '2019-06-12 23:44:41'),
(51, 31, 72, 1, 800000, '2019-06-12 23:48:54', '2019-06-12 23:48:54'),
(52, 31, 71, 1, 270000, '2019-06-12 23:48:54', '2019-06-12 23:48:54'),
(53, 32, 72, 1, 800000, '2019-06-12 23:49:12', '2019-06-12 23:49:12'),
(54, 32, 71, 1, 270000, '2019-06-12 23:49:12', '2019-06-12 23:49:12'),
(55, 33, 72, 1, 800000, '2019-06-12 23:50:08', '2019-06-12 23:50:08'),
(56, 33, 71, 1, 270000, '2019-06-12 23:50:08', '2019-06-12 23:50:08'),
(57, 34, 72, 1, 800000, '2019-06-12 23:52:17', '2019-06-12 23:52:17'),
(58, 34, 71, 1, 270000, '2019-06-12 23:52:17', '2019-06-12 23:52:17'),
(59, 35, 72, 1, 800000, '2019-06-12 23:54:26', '2019-06-12 23:54:26'),
(60, 35, 71, 1, 270000, '2019-06-12 23:54:26', '2019-06-12 23:54:26'),
(61, 36, 72, 1, 800000, '2019-06-12 23:55:02', '2019-06-12 23:55:02'),
(62, 36, 71, 1, 270000, '2019-06-12 23:55:02', '2019-06-12 23:55:02'),
(63, 37, 72, 1, 800000, '2019-06-12 23:59:20', '2019-06-12 23:59:20'),
(64, 37, 71, 1, 270000, '2019-06-12 23:59:20', '2019-06-12 23:59:20'),
(65, 38, 72, 1, 800000, '2019-06-13 00:04:08', '2019-06-13 00:04:08'),
(66, 38, 71, 1, 270000, '2019-06-13 00:04:08', '2019-06-13 00:04:08'),
(67, 39, 72, 1, 800000, '2019-06-13 00:14:42', '2019-06-13 00:14:42'),
(68, 39, 71, 1, 270000, '2019-06-13 00:14:42', '2019-06-13 00:14:42'),
(69, 40, 72, 1, 800000, '2019-06-13 00:15:27', '2019-06-13 00:15:27'),
(70, 40, 71, 1, 270000, '2019-06-13 00:15:27', '2019-06-13 00:15:27'),
(71, 41, 72, 1, 800000, '2019-06-13 00:20:57', '2019-06-13 00:20:57'),
(72, 41, 71, 1, 270000, '2019-06-13 00:20:58', '2019-06-13 00:20:58'),
(73, 42, 71, 1, 270000, '2019-06-13 00:23:37', '2019-06-13 00:23:37'),
(74, 43, 83, 1, 390000, '2019-06-13 00:33:09', '2019-06-13 00:33:09'),
(75, 44, 71, 1, 270000, '2019-06-13 00:51:14', '2019-06-13 00:51:14'),
(76, 45, 114, 1, 80000, '2019-06-13 00:54:03', '2019-06-13 00:54:03'),
(77, 46, 72, 10, 800000, '2019-06-14 01:08:48', '2019-06-14 01:08:48'),
(78, 47, 72, 1, 800000, '2019-06-16 18:05:41', '2019-06-16 18:05:41'),
(79, 48, 71, 1, 270000, '2019-06-18 19:49:39', '2019-06-18 19:49:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `email`, `name`, `content`, `id_product`, `created_at`, `updated_at`) VALUES
(1, 'nhatthanh2012@gmail.com', 'Tran Le Nhat Thanh', 'sdsadas', 72, '2019-06-13 02:11:51', '2019-06-13 02:11:51'),
(2, 'nhatthanh2012@gmail.com', 'Tran Le Nhat Thanh', 'hàng còn không', 72, '2019-06-13 02:24:37', '2019-06-13 02:24:37'),
(3, 'khanhvy@gmail.com', 'khanh vy', 'giá bao nhiêu vậy ad', 72, '2019-06-13 02:59:13', '2019-06-13 02:59:13'),
(4, 'khanhu@gmail.com', 'Khả Nhử', 'giá bao nhiêu', 85, '2019-06-13 03:05:49', '2019-06-13 03:05:49'),
(5, 'nhatthanh2012@gmail.com', 'Tran Le Nhat Thanh', 'con hang', 72, '2019-06-14 01:13:34', '2019-06-14 01:13:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notes` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `created_at`, `updated_at`, `notes`) VALUES
(4, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-01 10:54:49', '2019-06-01 10:54:49', NULL),
(5, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-01 10:58:47', '2019-06-01 10:58:47', NULL),
(6, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-01 11:03:31', '2019-06-01 11:03:31', NULL),
(7, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-01 11:15:22', '2019-06-01 11:15:22', NULL),
(8, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-01 11:16:32', '2019-06-01 11:16:32', NULL),
(9, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-01 11:18:48', '2019-06-01 11:18:48', 'ko'),
(10, 'khánh vy', 'nữ', 'khanhvy@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-01 20:48:05', '2019-06-01 20:48:05', NULL),
(11, 'khanh vy', 'nữ', 'khanhvy@gmail.com', '28 nguyen tri phuong', '125675589', '2019-06-04 23:55:55', '2019-06-04 23:55:55', 'khoong co'),
(12, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-11 00:49:34', '2019-06-11 00:49:34', NULL),
(13, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-11 00:53:39', '2019-06-11 00:53:39', NULL),
(14, 'Tran Phan Diệu Ái', 'nữ', 'dieuai@gmail.com', '79 Tịnh Tâm, Thành Phố Hà Nội', '0904788500', '2019-06-12 02:21:10', '2019-06-12 02:21:10', 'không có'),
(15, 'Ngọc mai', 'nữ', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 18:47:42', '2019-06-12 18:47:42', NULL),
(16, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 18:48:09', '2019-06-12 18:48:09', NULL),
(17, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 18:48:35', '2019-06-12 18:48:35', NULL),
(18, 'an vy', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 18:51:48', '2019-06-12 18:51:48', NULL),
(19, 'Hà vy', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 18:52:21', '2019-06-12 18:52:21', NULL),
(20, 'Hà vy', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 18:56:39', '2019-06-12 18:56:39', NULL),
(21, 'Thùy Trang', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 18:59:30', '2019-06-12 18:59:30', NULL),
(22, 'Thùy Trang', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 18:59:30', '2019-06-12 18:59:30', NULL),
(23, 'Anh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 19:02:27', '2019-06-12 19:02:27', NULL),
(24, 'aaaaaaaaaaa', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 19:05:18', '2019-06-12 19:05:18', NULL),
(25, 'Phong Lan', 'nam', 'phonglan@gmail.com', '79 Tịnh Tâm, Thành Phố HCM', '0904788500', '2019-06-12 19:50:11', '2019-06-12 19:50:11', NULL),
(26, 'Hà', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 20:34:47', '2019-06-12 20:34:47', NULL),
(27, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 20:43:38', '2019-06-12 20:43:38', NULL),
(28, 'Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 21:18:33', '2019-06-12 21:18:33', NULL),
(29, 'Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 21:18:58', '2019-06-12 21:18:58', NULL),
(30, 'Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 21:30:46', '2019-06-12 21:30:46', NULL),
(31, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 23:36:13', '2019-06-12 23:36:13', NULL),
(32, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 23:37:59', '2019-06-12 23:37:59', NULL),
(33, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 23:42:57', '2019-06-12 23:42:57', NULL),
(34, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 23:43:51', '2019-06-12 23:43:51', NULL),
(35, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 23:44:41', '2019-06-12 23:44:41', NULL),
(36, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 23:48:54', '2019-06-12 23:48:54', NULL),
(37, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 23:49:12', '2019-06-12 23:49:12', NULL),
(38, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 23:50:08', '2019-06-12 23:50:08', NULL),
(39, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 23:52:17', '2019-06-12 23:52:17', NULL),
(40, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 23:54:26', '2019-06-12 23:54:26', NULL),
(41, 'khanh vy', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 23:55:02', '2019-06-12 23:55:02', NULL),
(42, 'khanh vy', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-12 23:59:20', '2019-06-12 23:59:20', NULL),
(43, 'khanh vy', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-13 00:04:08', '2019-06-13 00:04:08', NULL),
(44, 'khanh vy', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-13 00:14:42', '2019-06-13 00:14:42', NULL),
(45, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-13 00:15:27', '2019-06-13 00:15:27', NULL),
(46, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-13 00:20:57', '2019-06-13 00:20:57', NULL),
(47, 'Bá', 'nam', 'truongquangba1302@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-13 00:23:37', '2019-06-13 00:23:37', NULL),
(48, 'Ngan', 'nữ', 'phanhoaingan2601@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-13 00:33:09', '2019-06-13 00:33:09', NULL),
(49, 'Hà vy', 'nam', 'havy@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-13 00:51:14', '2019-06-13 00:51:14', NULL),
(50, 'Hà My', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-13 00:53:04', '2019-06-13 00:53:04', NULL),
(51, 'Hà My', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-13 00:54:03', '2019-06-13 00:54:03', NULL),
(52, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-14 01:08:48', '2019-06-14 01:08:48', NULL),
(53, 'Tran Le Nhat Thanh', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-16 18:05:41', '2019-06-16 18:05:41', NULL),
(54, 'ha vy', 'nam', 'nhatthanh2012@gmail.com', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '0904788500', '2019-06-18 19:49:39', '2019-06-18 19:49:39', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_31_033541_create_customer_table', 1),
(4, '2019_05_31_033640_create_bills_table', 1),
(5, '2019_05_31_034045_create_type_products_table', 1),
(6, '2019_05_31_034052_create_products_table', 1),
(7, '2019_05_31_034149_create_slide_table', 1),
(8, '2019_05_31_036704_create_bill_detail_table', 1),
(9, '2019_06_13_090631_create_comment_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_type` bigint(20) UNSIGNED NOT NULL,
  `desciption` text COLLATE utf8mb4_unicode_ci,
  `unit_price` int(11) DEFAULT NULL,
  `promotion_price` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'còn hàng',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new` int(20) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `desciption`, `unit_price`, `promotion_price`, `status`, `image`, `new`, `view`, `created_at`, `updated_at`) VALUES
(1, 'Đầu Gấu Áo Len', 1, NULL, 220000, 0, 'còn hàng', '2019-06-16-09-09-06-td01.jpg', 1, 7, NULL, '2019-06-16 02:09:08'),
(71, 'Đầu Gấu Len Sao', 1, NULL, 290000, 270000, 'còn hàng', 'td02.jpg', 1, 12, NULL, '2019-06-16 18:01:21'),
(72, 'Gấu Áo Thêu chân', 1, NULL, 850000, 800000, 'còn hàng', 'td03.jpg', 1, 11, NULL, '2019-06-16 18:05:03'),
(83, 'Gấu Áo Thêu tim\r\n', 1, NULL, 410000, 390000, 'còn hàng', 'td04.jpg', 1, 2, NULL, '2019-06-12 18:27:40'),
(84, 'Gấu nhỏ', 1, NULL, 100000, 0, 'còn hàng', 'td05.jpg', 1, 2, NULL, '2019-06-13 03:13:52'),
(85, 'Gấu Ôm Hoa', 1, NULL, 620000, 550000, 'còn hàng', 'td06.jpg', 1, 1, NULL, '2019-06-13 01:51:49'),
(86, 'Gấu Sinh Nhật', 1, NULL, 420000, 396000, 'còn hàng', 'td07.jpg', 1, 2, NULL, '2019-06-13 02:24:53'),
(87, 'Gấu Váy Cafe\r\n', 1, NULL, 160000, 0, 'còn hàng', 'td08.jpg', 0, 0, NULL, NULL),
(88, 'Gấu Váy Hồng ', 1, NULL, 220000, 0, 'còn hàng', 'td09.jpg', 0, 0, NULL, NULL),
(89, 'Head Tales\r\n', 1, NULL, 140000, 0, 'còn hàng', 'td10.jpg', 0, 0, NULL, NULL),
(90, 'Teddy Thun', 3, NULL, 950000, 900000, 'còn hàng', 'to10.jpg', 1, 4, NULL, '2019-06-11 18:51:47'),
(91, 'Teddy Smile', 3, NULL, 650000, 600000, 'còn hàng', 'to09.jpg', 1, 1, NULL, '2019-06-04 00:26:51'),
(92, 'Teddy Ôm Hoa Mịn', 3, NULL, 650000, 0, 'còn hàng', 'to08.jpg', 1, 1, NULL, '2019-06-11 00:38:32'),
(93, 'Teddy Nơ Tím', 3, NULL, 185000, 140000, 'còn hàng', 'to07.jpg', 1, 2, NULL, '2019-06-12 01:05:01'),
(94, 'Teddy Nơ Tím', 3, NULL, 630000, 600000, 'còn hàng', 'to06.jpg', 0, 0, NULL, NULL),
(95, 'Brown Đại', 3, NULL, 1250000, 0, 'còn hàng', 'to01.jpg', 0, 0, NULL, NULL),
(96, 'Teddy Đắp Tim', 3, NULL, 730000, 0, 'còn hàng', 'to02.jpg', 0, 0, NULL, NULL),
(97, 'Teddy Đắp Sao', 3, NULL, 730000, 0, 'còn hàng', 'to03.jpg', 1, 4, NULL, '2019-06-11 18:48:44'),
(98, 'Teddy Áo len', 3, NULL, 650000, 0, 'còn hàng', 'to04.jpg', 1, 1, NULL, '2019-06-04 01:15:12'),
(99, 'Teddy Áo Len', 3, NULL, 650000, 0, 'còn hàng', 'to05.jpg', 1, 1, NULL, '2019-06-07 21:33:06'),
(100, 'Búp Bê Tóc Bện', 4, NULL, 130000, 0, 'còn hàng', 'hh01.jpg', 0, 0, NULL, NULL),
(101, 'Chó Ký Ức', 4, NULL, 230000, 0, 'còn hàng', 'hh02.jpg', 0, 0, NULL, NULL),
(102, 'Chuột Mickkey Nữ', 4, NULL, 190000, 0, 'còn hàng', 'hh03.jpg', 0, 0, NULL, NULL),
(103, 'Ciu Ciu', 4, NULL, 45000, 0, 'còn hàng', 'hh04.jpg', 0, 0, NULL, NULL),
(104, 'Cô Dâu Chú Rễ Đôi', 4, NULL, 160000, 0, 'còn hàng', 'hh05.jpg', 1, 0, NULL, NULL),
(105, 'Cừu Béo', 4, NULL, 140000, 0, 'còn hàng', 'hh06.jpg', 1, 0, NULL, NULL),
(106, 'Cừu Đen', 4, NULL, 160000, 1, 'còn hàng', 'hh07.jpg', 1, 0, NULL, NULL),
(109, 'Doremon', 4, NULL, 75000, 0, 'còn hàng', 'hh08.jpg', 0, 0, NULL, NULL),
(110, 'Doremon Hải Quân', 4, NULL, 150000, 0, 'còn hàng', 'hh09.jpg', 0, 0, NULL, NULL),
(111, 'Doremon', 4, NULL, 180000, 1, 'còn hàng', 'hh10.jpg', 1, 0, NULL, NULL),
(112, 'Cá heo Bông', 8, NULL, 190000, 170000, 'còn hàng', 'tb01.jpg', 0, 0, NULL, NULL),
(113, 'Cá Mập', 8, NULL, 190000, 0, 'còn hàng', 'tb02.jpg', 1, 0, NULL, NULL),
(114, 'Cá Mập Bông', 8, NULL, 80000, 80000, 'còn hàng', 'tb03.jpg', 1, 0, NULL, NULL),
(115, 'Cá Ngựa', 8, NULL, 240000, 200000, 'còn hàng', 'tb04.jpg', 1, 0, NULL, NULL),
(116, 'Cá Sấu', 8, NULL, 180000, 160000, 'còn hàng', 'tb05.jpg', 0, 0, NULL, NULL),
(117, 'Cá Sấu Hoa', 8, NULL, 115000, 0, 'còn hàng', 'tb06.jpg', 1, 0, NULL, NULL),
(118, 'Cá Sấu Hồng', 8, NULL, 290000, 250000, 'còn hàng', 'tb07.jpg', 1, 0, NULL, NULL),
(119, 'Chim cánh cụt', 8, NULL, 80000, 0, 'còn hàng', 'tb08.jpg', 1, 1, NULL, '2019-06-04 23:59:59'),
(120, 'Chó Chuông', 8, NULL, 150000, 120000, 'còn hàng', 'tb09.jpg', 1, 2, NULL, '2019-06-11 00:46:51'),
(121, 'Chó Husky Mềm', 8, NULL, 190000, 150000, 'còn hàng', 'tb10.jpg', 0, 1, NULL, '2019-06-08 06:56:00'),
(128, 'ha vy', 1, NULL, 150000, 120000, 'còn hàng', '2019-06-03-16-31-06-teddy-om-hoa-7-500x750.jpg', 1, 0, '2019-06-03 09:31:06', '2019-06-03 09:31:06'),
(134, 'khánh vy', 1, NULL, 150000, 120000, 'còn hàng', '2019-06-04-03-06-06-to10.jpg', 1, 0, '2019-06-03 19:45:41', '2019-06-03 20:06:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, NULL, 'banner1.jpg', NULL, NULL),
(2, NULL, 'banner2.jpg', NULL, NULL),
(3, NULL, 'banner3.jpg', NULL, NULL),
(4, NULL, 'banner4.jpg', NULL, NULL),
(5, NULL, '3KgB-banner4d.jpg', '2019-06-07 20:40:03', '2019-06-07 20:40:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Gấu bông teddy', 'Gấu bông teddy gửi tặng cho người yêu, bạn bè nó đều mang trong mình rất nhiều ý nghĩa đấy nhé!\r\n\r\n\r\n', 'td01.jpg', NULL, NULL),
(3, 'Gấu Bông to', 'Gấu bông to luôn là một loại gấu bông rất được yêu thích. ', 'to01.jpg', NULL, NULL),
(4, 'Gấu hoạt hình', 'Dành cho bạn nhỏ', 'hh01.jpg', NULL, NULL),
(8, 'Thú bông', 'dành cho các bạn dưới 3 tuối', 'tb01.jpg', NULL, NULL),
(9, 'Gấu Bắc cực', 'Mùa đông', '2019-06-04-07-55-06-teddy-no-om-hoa-hong-3-500x333.jpg', '2019-06-03 00:37:07', '2019-06-04 00:55:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(2) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone`, `address`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tran Le Nhat Thanh', 'nhatthanh2012@gmail.com', NULL, '0904788500', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '$2y$10$szaeYR73rhAgaPysqMbMTOWh43ma4c6PAP4n./H/fz1Oh78t4t4l.', 0, NULL, '2019-06-01 23:45:41', '2019-06-01 23:45:41'),
(2, 'Quản trị viên', 'admin@gmail.com', NULL, '125675589', '28 nguyen tri phuong', '$2y$10$EQzVlE0zI5QMvzA8b.m1Au2Tq8zLj/DytuKb3Zw0Jlxb4od1qNPwK', 1, NULL, '2019-06-06 21:58:22', '2019-06-06 21:58:22'),
(3, 'User', 'user@gmail.com', NULL, NULL, NULL, '123456', 0, NULL, '2019-06-07 10:40:54', '2019-06-07 10:40:54'),
(4, 'User2', 'user2@gmail.com', NULL, NULL, NULL, '$2y$10$2MZRhGWEb0GGOxuFqqXGxuXrSRVuh9jHqElY5qPetAe6VKbCnwt2u', 0, NULL, '2019-06-07 10:44:17', '2019-06-07 10:44:17'),
(5, 'Tran Le Nhat Thanh', 'nhatthanh@gmail.com', NULL, '0904788500', '79 Tịnh Tâm, Thành Phố Huế, Thừa Thiên Huế', '$2y$10$ZQ1m/vubXe722zJojaYvHeCBB4HaYvHjgKSN4obYA6CkEzhs./jOW', 0, NULL, '2019-06-11 00:42:00', '2019-06-11 00:42:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_id_customer_foreign` (`id_customer`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_detail_id_bill_foreign` (`id_bill`),
  ADD KEY `bill_detail_id_product_foreign` (`id_product`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_type_foreign` (`id_type`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_id_customer_foreign` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`);

--
-- Các ràng buộc cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_id_bill_foreign` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`),
  ADD CONSTRAINT `bill_detail_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
