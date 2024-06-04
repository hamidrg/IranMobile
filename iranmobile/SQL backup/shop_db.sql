-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 04, 2024 at 12:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `username` varchar(30) NOT NULL,
  `detail` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`username`, `detail`) VALUES
('maghsoudi', 'ghhhjgjh'),
('mohammadi', 'خیلی عالی بود');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `orderdate` date NOT NULL,
  `pro_code` int(10) NOT NULL,
  `pro_qty` int(10) NOT NULL,
  `pro_price` float NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `address` varchar(400) NOT NULL,
  `trackcode` varchar(24) NOT NULL,
  `state` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `username`, `orderdate`, `pro_code`, `pro_qty`, `pro_price`, `mobile`, `address`, `trackcode`, `state`) VALUES
(1, 'maghsoudi', '2024-06-03', 256, 2, 182500000, '09399042007', 'تهران زعفرانیه، پلاک 12', '000000000000000000000000', 1),
(2, 'mohammadi', '2024-06-04', 750, 1, 430000000, '09396527596', 'این یک متن تست است. این یک متن تست است. این یک متن تست است', '000000000000000000000000', 0),
(3, 'maghsoudi', '2024-06-04', 1, 1, 62500000, '09399042007', 'این یک متن تست است\r\nاین یک متن تست است\r\nاین یک متن تست است', '000000000000000000000000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pro_code` int(10) NOT NULL,
  `pro_name` varchar(200) NOT NULL,
  `pro_qty` int(10) NOT NULL,
  `pro_price` float NOT NULL,
  `pro_image` varchar(80) NOT NULL,
  `pro_detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_code`, `pro_name`, `pro_qty`, `pro_price`, `pro_image`, `pro_detail`) VALUES
(1, 'گوشی موبایل سامسونگ مدل Galaxy A15 4G ظرفیت 128 گیگابایت رم 4 گیگابایت', 11, 62500000, 'product-1.jpg', ' گوشی سامسونگ گلکسی A15\r\nگوشی a15 یکی از جدیدترین و پرطرفدارترین گوشی‌های اقتصادی سامسونگ است که در اواخر سال ۲۰۲۳ عرضه شد و به خاطر قیمت مناسب، طراحی خوب و مشخصات جذاب، خیلی از افرادی که دنبال قیمت گوشی سامسونگ پایین هستند را جذب کرد.'),
(256, 'گوشی موبايل سامسونگ گلکسی A54 5G ظرفیت 256 گیگابایت رم 8 گیگابایت', 13, 182500000, 'product-2.jpg', 'نوع پردازنده - CPU :\r\n\r\nExynos 1380 (5 نانومتری)\r\n\r\nحافظه داخلی :\r\n\r\n256 گیگابایت\r\n\r\nحافظه RAM :\r\n\r\n8 گیگابایت\r\n\r\nسایز صفحه نمایش :\r\n\r\n6.4 اینچ\r\n\r\nدوربین پشت :\r\n\r\nسه گانه 50 مگاپیکسل + 12 مگاپیکسل + 5 مگاپیکسل\r\n\r\nظرفیت باتری :\r\n\r\n5000 میلی آمپر ساعت'),
(451, 'گوشی موبايل پوکو مدل X6 Pro 5G ظرفیت 512 گیگابایت رم 12 گیگابایت', 8, 179500000, 'product-3.jpg', 'نوع پردازنده - CPU :\r\n\r\nMediatek Dimensity 8300 Ultra (4 نانومتری)\r\n\r\nحافظه داخلی :\r\n\r\n512 گیگابایت\r\n\r\nحافظه RAM :\r\n\r\n12 گیگابایت\r\n\r\nسایز صفحه نمایش :\r\n\r\n6.67 اینچ\r\n\r\nدوربین پشت :\r\n\r\nسه گانه 64 مگاپیکسل + 8 مگاپیکسل + 2 مگاپیکسل\r\n\r\nظرفیت باتری :\r\n\r\n5000 میلی‌ آمپر ساعت'),
(632, 'گوشی موبایل شیائومی مدل Redmi Note 13 Pro 4G ظرفیت 256 گیگابایت رم 8 گیگابایت', 6, 125990000, 'product-5.jpg', 'نوع پردازنده - CPU :\r\n\r\nMediatek Helio G99 Ultra\r\n\r\nحافظه داخلی :\r\n\r\n256 گیگابایت\r\n\r\nحافظه RAM :\r\n\r\n8 گیگابایت\r\n\r\nسایز صفحه نمایش :\r\n\r\n6.67 اینچ\r\n\r\nدوربین پشت :\r\n\r\nسه گانه 200 مگاپیکسل + 8 مگاپیکسل + 2 مگاپیکسل\r\n\r\nظرفیت باتری :\r\n\r\n5000 میلی آمپر ساعت\r\n\r\n\r\nبررسی کامل گوشی ردمی نوت 13 پرو 256\r\nگوشی جدیدی که چین راهی بازار کرده، یعنی ردمی نوت ۱۳ پرو، یک گزینه عالی و کاملا مناسب، برای گیمرها است. قیمت گوشی نیز بسیار مناسب است و به‌راحتی می‌توانید آن را تهیه کنید. همچنین قیمت موبایل امروز را به‌راحتی در سایت تکنولایف مشاهده کنید.\r\n\r\nمزایا و معایب گوشی ردمی 13 پرو 256\r\nمزایا\r\n•    قیمت مناسب\r\n•    پردازنده قوی برای کارهای سنگین\r\n•    روشنایی بالای صفحه نمایش\r\n•    دوربین اصلی با کیفیت بالا\r\nنقاط ضعف\r\n•    ندارد'),
(750, 'گوشی موبایل اپل مدل iPhone 13 CH/A Not Active ظرفیت 128 گیگابایت - رم 4 گیگابایت', 2, 430000000, 'product-4.jpg', 'نوع پردازنده - CPU :\r\n\r\nApple A15 Bionic (5 نانومتر)\r\n\r\nحافظه داخلی :\r\n\r\n128 گیگابایت\r\n\r\nحافظه RAM :\r\n\r\n4 گیگابایت\r\n\r\nسایز صفحه نمایش :\r\n\r\n6.1 اینچ\r\n\r\nدوربین پشت :\r\n\r\nدوگانه 12 مگاپیکسل + 12 مگاپیکسل\r\n\r\nظرفیت باتری :\r\n\r\n3240 میلی‌ آمپر ساعت');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `realname` varchar(80) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`realname`, `username`, `password`, `email`, `type`) VALUES
('حمیدرضا قربانی', 'ghorbani', '1234', 'xitabay653@rc3s.com', 1),
('مهدی مقصودی', 'maghsoudi', '1234', 'marim25678@touchend.com', 0),
('علی محمدی', 'mohammadi', '1234', 'marim25678@touchend.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
