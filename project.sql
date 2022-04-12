-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 12, 2022 at 10:51 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `productID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `categoryName`) VALUES
(1, 'featured'),
(2, 'marketplace');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `productCode` varchar(10) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `author` varchar(100) NOT NULL,
  `ISBN` int(13) NOT NULL,
  `listPrice` decimal(10,2) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `isBestSeller` int(11) NOT NULL,
  `imagePath` varchar(100) NOT NULL,
  `inCart` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `categoryID`, `productCode`, `productName`, `author`, `ISBN`, `listPrice`, `stock`, `genre`, `isBestSeller`, `imagePath`, `inCart`) VALUES
(1, 2, 'ebook', 'Life Flight', '', 0, '12.75', 2000, 'romantic', 0, 'images/lifeflightebook.jpeg', 0),
(2, 2, 'ebook', 'How To Stop Time', '', 0, '10.99', 2000, 'romantic', 0, 'images/howtostoptimeebook.jpeg', 0),
(3, 2, 'book', 'Freezing Order', '', 0, '22.99', 43, 'nonfiction', 0, 'images/freezingorderbook.jpeg', 0),
(4, 2, 'ebook', 'Hello Molly', '', 0, '27.99', 20, 'nonfiction', 0, 'images/hellomollybook.jpeg', 0),
(5, 2, 'book', 'Against All Odds', '', 0, '14.99', 10, 'nonfiction', 0, 'images/againstalloddsbook.jpeg', 0),
(6, 2, 'PH', 'Portrait Of A Thief', '', 0, '19.99', 2000, 'nonfiction', 0, 'images/portraitofathiefbook.jpeg', 0),
(7, 2, 'book', 'Black Ops', '', 0, '100.00', 600, 'nonfiction', 0, 'images/blackopsbook.jpeg', 0),
(8, 2, 'PH', 'PLACEHOLDER2', '', 0, '100.00', 1, 'PH', 0, 'images/placeholder.png', 0),
(9, 2, 'PH', 'PLACEHOLDER3', '', 0, '100.00', 1, 'PH', 0, 'images/placeholder.png', 0),
(10, 2, 'PH', 'PLACEHOLDER4', '', 0, '100.00', 1, 'PH', 0, 'images/placeholder.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `user_name`, `password`, `date`, `user_type`) VALUES
(1, 62607, 'testing1234', 'testing', '2022-02-08 16:17:39', 0),
(2, 716324, 'test', '1234', '2021-12-07 02:59:13', 0),
(3, 868857, 'admin', '1234', '2022-03-24 23:44:50', 1),
(4, 93033303477282698, 'nwadike1234', '1234', '2022-03-25 17:55:13', 0),
(5, 61939839636, 'user1234', '1234', '2022-03-25 14:31:10', 0),
(6, 244633750118402467, 'testing123456', '12345', '2022-03-25 18:00:41', 0),
(7, 78385, 'test1234', '1234', '2022-03-25 18:01:25', 0),
(8, 19424, 'testing12345', '12345', '2022-04-12 19:05:43', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
