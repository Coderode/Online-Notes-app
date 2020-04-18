-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2020 at 01:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinenotes`
--

-- --------------------------------------------------------

--
-- Table structure for table `forgotpassword`
--

CREATE TABLE `forgotpassword` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rkey` char(32) NOT NULL,
  `time` int(11) NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forgotpassword`
--

INSERT INTO `forgotpassword` (`id`, `user_id`, `rkey`, `time`, `status`) VALUES
(1, 7, '87180399432e2bf9d2327a284f7efcc4', 1580278701, 'used');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `user_id` int(4) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `time` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `user_id`, `note`, `time`) VALUES
(1, 7, 'hi this is sandee', '1580276386'),
(2, 7, 'hi hello kjklds', '1580276422'),
(8, 7, 'hi there i am waiting for you.\n', '1580372319');

-- --------------------------------------------------------

--
-- Table structure for table `rememberme`
--

CREATE TABLE `rememberme` (
  `id` int(11) NOT NULL,
  `authentificator1` char(20) DEFAULT NULL,
  `f2authentificator2` char(64) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expires` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rememberme`
--

INSERT INTO `rememberme` (`id`, `authentificator1`, `f2authentificator2`, `user_id`, `expires`) VALUES
(11, '06bd1afe83f5604529bd', 'b06cdf1de2c6ac04df91a32f55dd437962c9dc4cc11c2974fa0376cb4a769044', 7, '2020-02-13 07:38:33'),
(12, '1fc4f53b582142e4d329', 'e02376b4a0ba280ed98317ffa7b268e465d5822dd6813c9ab858d48cf494e6b7', 7, '2020-02-13 07:40:08'),
(13, '4cb4a1e9725017b7cfcd', 'd0da350004698851b227f76cfd994f662132d4ec44a2164e2f2c61f10f3de78a', 7, '2020-02-13 07:40:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `activation` char(32) DEFAULT NULL,
  `activation2` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `activation`, `activation2`) VALUES
(7, 'Sandeep', 'sk9958814616@gmail.com', 'f0986177efb9e99506b9dbd296daf6b48a44d28c7367aaab7e03ebe09ac77c9e', 'activated', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forgotpassword`
--
ALTER TABLE `forgotpassword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rememberme`
--
ALTER TABLE `rememberme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forgotpassword`
--
ALTER TABLE `forgotpassword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `rememberme`
--
ALTER TABLE `rememberme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
