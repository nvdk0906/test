-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 18, 2017 at 03:12 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DbCustomer`
--

-- --------------------------------------------------------

--
-- Table structure for table `Customers`
--

CREATE TABLE IF NOT EXISTS `Customers` (
  `id` int(11) NOT NULL,
  `fname` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `lname` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Customers`
--

INSERT INTO `Customers` (`id`, `fname`, `lname`, `gender`, `email`, `address`, `city`, `state`, `zip`) VALUES
(1, 'Há»“ng', 'LÃª', 'Female', 'hong@itc.edu', 'Há»“ ChÃ­ Minh', 'Há»“ ChÃ­ Minh', 'TÃ¢n BÃ¬nh', '12345'),
(2, 'HÆ°Æ¡ng', 'Nguyen Mai', 'Female', 'hong@itc.edu', 'H? chï¿½ Minh', 'Ho Chi Minh', 'Tan Phu', '12345'),
(3, 'Mua', 'Tran Cong', 'Male', 'hong@itc.edu', 'Hồ chí Minh', 'Ho Chi Minh', 'Quan 9', '12345'),
(4, 'Hung', 'Nguyen', 'Male', 'hong@itc.edu', 'Hồ chí Minh', 'Ho Chi Minh', 'Thu Duc', '12345'),
(5, 'Minh', 'Ho Thi', 'female', 'minhht@itc.edu', 'Hồ chí Minh', 'Binh Duong', 'Thu Dau Mot', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `product` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderdate` date NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `id_customer`, `product`, `orderdate`, `quantity`, `price`) VALUES
(1, 1, 'Basket', '2017-04-10', 1, 99),
(2, 1, 'Basket', '2017-05-10', 2, 99),
(3, 1, 'controller', '2017-03-12', 3, 49.99);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`hoten`, `email`, `password`) VALUES
('Tran cong mua', 'muatc@itc.edu.vn', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Customers`
--
ALTER TABLE `Customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
