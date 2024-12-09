-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2023 at 03:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infotech_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mobile` int(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `qualification` varchar(30) NOT NULL,
  `collegename` varchar(250) NOT NULL,
  `skill` varchar(250) NOT NULL,
  `experience` int(100) NOT NULL,
  `pic` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `mobile`, `address`, `qualification`, `collegename`, `skill`, `experience`, `pic`) VALUES
(1, 'skljlk', 'sklk@gmail.com', 789456128, ',kj', '', 'hgh', 'dfsfjkl', 0, 'Screenshot (120).png'),
(4, 'pihu', 'pihu@gmail.com', 2147483647, 'noida', 'CA', 'GCC', 'java', 9, 'IMG20230429184754.jpg'),
(5, 'pihu', 'pihu@gmail.com', 2147483647, 'noida', 'CA', 'GCC', 'java', 9, 'IMG20230429184754.jpg'),
(6, 'kinkii', 'kinki@gmail.com', 2147483647, 'jhj', 'CA', 'GCC', 'java', 9, 'IMG20230429185838.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
