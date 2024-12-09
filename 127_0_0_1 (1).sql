-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2024 at 08:46 AM
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
-- Database: `admin_feedback`
--
CREATE DATABASE IF NOT EXISTS `admin_feedback` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `admin_feedback`;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feebback`
--

CREATE TABLE `feebback` (
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobilenumber` bigint(12) NOT NULL,
  `profileimg` varchar(200) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `mobilenumber`, `profileimg`, `email`) VALUES
(1, 'admin', 'admin@', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `country` varchar(250) NOT NULL,
  `state` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `star` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`id`, `name`, `email`, `country`, `state`, `city`, `phone`, `star`, `date`) VALUES
(68, '', '', 'Azerbaijan', '', 'ballia', '2147483647', 2, '2024-01-17'),
(69, '', '', 'Bangladesh', 'Rangamati', 'ballia', '2147483647', 3, '2024-01-17'),
(70, '', '', 'Australia', 'Australian Capital Territory', 'ballia', '2147483647', 3, '2024-01-17'),
(71, '', '', 'Australia', '', 'ballia', '2147483647', 3, '2024-01-17'),
(72, '', '', 'Bangladesh', 'Faridpur', 'ballia', '2147483647', 3, '2024-01-17'),
(73, '', '', 'Bangladesh', 'Dhaka', 'ballia', '2147483647', 3, '2024-01-17'),
(74, '', '', 'India', 'Uttar Pradesh', 'Test', '2147483647', 5, '2024-01-17'),
(75, '', '', 'India', 'Uttar Pradesh', 'ballia', '7317613076', 4, '2024-01-17'),
(76, '', '', 'India', 'Delhi', 'lucknow', '8878788989', 4, '2024-01-17'),
(77, '', '', 'Gaza Strip', 'Gaza Strip', 'Test', '6767677687', 0, '2024-01-17'),
(78, '', '', 'Bahrain', 'Sitrah', 'lucknow', '8798787989', 3, '2024-01-17'),
(79, '', '', 'Bangladesh', 'Gazipur', 'ballia', '7889909876', 3, '2024-01-17'),
(80, '', '', 'Northern Mariana Islands', 'Rota', 'Test', '6679897867', 3, '2024-01-17'),
(81, '', '', 'Bangladesh', 'Gazipur', 'ballia', '6778890989', 5, '2024-01-17'),
(82, '', '', 'Russia', 'Evenkiyskiy (Tura)', 'Test', '4556677889', 4, '2024-01-17'),
(83, '', '', 'India', 'Uttar Pradesh', 'LKZo', '8899458545', 3, '2024-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback1`
--

CREATE TABLE `tbl_feedback1` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phonecode` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `overall_experience` varchar(80) NOT NULL,
  `hosting_services` varchar(100) NOT NULL,
  `performance` varchar(100) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `uptime` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `scale` varchar(15) NOT NULL,
  `specific_features` varchar(1000) NOT NULL,
  `regarding_our_services` varchar(1000) NOT NULL,
  `improve_our_services` varchar(1000) NOT NULL,
  `favorite_feature` varchar(1000) NOT NULL,
  `communication` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_feedback1`
--

INSERT INTO `tbl_feedback1` (`id`, `firstname`, `lastname`, `email`, `phonecode`, `phone`, `country`, `state`, `city`, `rate`, `overall_experience`, `hosting_services`, `performance`, `customer`, `uptime`, `price`, `scale`, `specific_features`, `regarding_our_services`, `improve_our_services`, `favorite_feature`, `communication`, `date`) VALUES
(1, 'Shubham ', 'Singh', 'ershubham2017@gmail.com', '+91', '8840065330', 'India', 'Uttar Pradesh', 'Lucknow ', '5', 'Very satisfied', ' Very easy', 'Extremely satisfied', 'Excellent', 'Very reliable', 'Good value', '8', 'Nothing ', 'Nothing ', 'Nothing ', 'Easy to use ', 'Satisfied', '2024-02-09'),
(2, 'Soni', 'Nishad', 'soni@genxwebhosting.us', '+91', '132325456665', 'India', 'Uttar Pradesh', 'l', '2', 'Very dissatisfied', 'Neutral', 'Dissatisfied', 'Poor', 'Very Unreliable', 'Neutral', '10', 'ikhygfaapapappapapappaa', 'abc', 'abc', 'abc', 'Satisfied', '2024-05-23'),
(10, 'anisha', 'verma', 'anisha@gmail.com', '', '347870849', 'object:100', 'object:190', 'lucknow', '2', 'Very satisfied', 'Neutral', 'Dissatisfied', 'Poor', 'Very Reliable', '  Neutral', '', 'fegtrrthyyumk', 'ghcnmjy', 'htjyny', 'nhjmhj', ' Satisfied', '2024-01-22'),
(11, 'rtg', 'tyh', 'gh@gmail.com', '', '5356', 'object:11', '?', 'erf', '4', 'Neutral', 'Very easy', ' Satisfied', 'Poor', 'Very Reliable', 'Poor value', '3', 'rgfrth', 'tgybnh', 'hn hg', 'hnhj', ' Satisfied', '2024-01-22'),
(12, 'Soni', 'Nishad', 'soni@genxwebhosting.us', '+299', '8957376152', 'object:85', 'object:285', 'jjj', ' 5', 'Satisfied', 'Neutral', 'Satisfied', 'Average', 'Neutral', 'Neutral', '9', 'hh', 'gggg', 'ggg', 'ggg', 'Neutral', '2024-01-25'),
(13, 'rr', 'rr', 'rr@com.us', '+93', '08957376152', 'object:3', 'string:Helmand', 'hh', '2', 'Very dissatisfied', 'Easy', 'Neutral', 'Poor', 'Neutral', 'Poor value', '4', 'hhh', 'hh', 'hh', 'hh', 'Neutral', '2024-01-27'),
(14, 'Soni', 'Nishad', 'soni@genxwebhosting.us', '+30', '08957376152', 'object:84', 'string:Drama Regional Unit', 'gg', '3', 'Dissatisfied', 'Neutral', 'Dissatisfied', 'Poor', 'Neutral', 'Very Poor value', '6', 'g', 'g', 'g', 'g', 'Neutral', '2024-01-27'),
(15, 'Soni', 'Nishad', 'soni@genxwebhosting.us', '+49', '08957376152', 'object:81', 'string:Saarland', '08957376152', '4', 'Dissatisfied', 'Neutral', 'Dissatisfied', 'Poor', 'Unreliable', 'Very Poor value', '9', 'd', 'd', 'd', 'd', 'Dissatisfied', '2024-01-27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Mobile Number` (`id`,`username`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_feedback1`
--
ALTER TABLE `tbl_feedback1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tbl_feedback1`
--
ALTER TABLE `tbl_feedback1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `ajax`
--
CREATE DATABASE IF NOT EXISTS `ajax` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ajax`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `city` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `city`, `email`) VALUES
(1, 'Akritiki', 'Delhi', 'akritiki@gmail.com'),
(2, 'arushi', 'mumbai', 'arushi@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `attendance`
--
CREATE DATABASE IF NOT EXISTS `attendance` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `attendance`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_user_name` varchar(100) NOT NULL,
  `admin_password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_user_name`, `admin_password`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `attendance_status` enum('Present','Absent') NOT NULL,
  `attendance_date` date NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attendance_id`, `student_id`, `attendance_status`, `attendance_date`, `teacher_id`) VALUES
(1, 7, 'Present', '2019-05-01', 3),
(2, 8, 'Present', '2019-05-01', 3),
(3, 9, 'Absent', '2019-05-01', 3),
(4, 10, 'Present', '2019-05-01', 3),
(5, 11, 'Present', '2019-05-01', 3),
(6, 7, 'Absent', '2019-05-02', 3),
(7, 8, 'Present', '2019-05-02', 3),
(8, 9, 'Present', '2019-05-02', 3),
(9, 10, 'Present', '2019-05-02', 3),
(10, 11, 'Absent', '2019-05-02', 3),
(11, 1, 'Present', '2019-05-01', 2),
(12, 3, 'Present', '2019-05-01', 2),
(13, 4, 'Present', '2019-05-01', 2),
(14, 5, 'Present', '2019-05-01', 2),
(15, 6, 'Present', '2019-05-01', 2),
(16, 1, 'Present', '2019-05-02', 2),
(17, 3, 'Absent', '2019-05-02', 2),
(18, 4, 'Present', '2019-05-02', 2),
(19, 5, 'Absent', '2019-05-02', 2),
(20, 6, 'Present', '2019-05-02', 2),
(21, 1, 'Present', '2019-05-03', 2),
(22, 3, 'Present', '2019-05-03', 2),
(23, 4, 'Absent', '2019-05-03', 2),
(24, 5, 'Present', '2019-05-03', 2),
(25, 6, 'Present', '2019-05-03', 2),
(26, 1, 'Absent', '2019-05-04', 2),
(27, 3, 'Present', '2019-05-04', 2),
(28, 4, 'Present', '2019-05-04', 2),
(29, 5, 'Present', '2019-05-04', 2),
(30, 6, 'Present', '2019-05-04', 2),
(31, 1, 'Present', '2019-05-06', 2),
(32, 3, 'Present', '2019-05-06', 2),
(33, 4, 'Present', '2019-05-06', 2),
(34, 5, 'Present', '2019-05-06', 2),
(35, 6, 'Present', '2019-05-06', 2),
(36, 1, 'Present', '2019-05-07', 2),
(37, 3, 'Present', '2019-05-07', 2),
(38, 4, 'Present', '2019-05-07', 2),
(39, 5, 'Present', '2019-05-07', 2),
(40, 6, 'Absent', '2019-05-07', 2),
(41, 1, 'Present', '2019-05-08', 2),
(42, 3, 'Present', '2019-05-08', 2),
(43, 4, 'Present', '2019-05-08', 2),
(44, 5, 'Absent', '2019-05-08', 2),
(45, 6, 'Present', '2019-05-08', 2),
(46, 1, 'Present', '2019-05-09', 2),
(47, 3, 'Present', '2019-05-09', 2),
(48, 4, 'Present', '2019-05-09', 2),
(49, 5, 'Present', '2019-05-09', 2),
(50, 6, 'Present', '2019-05-09', 2),
(51, 1, 'Present', '2019-05-10', 2),
(52, 3, 'Absent', '2019-05-10', 2),
(53, 4, 'Absent', '2019-05-10', 2),
(54, 5, 'Present', '2019-05-10', 2),
(55, 6, 'Absent', '2019-05-10', 2),
(56, 1, 'Present', '2019-05-11', 2),
(57, 3, 'Present', '2019-05-11', 2),
(58, 4, 'Absent', '2019-05-11', 2),
(59, 5, 'Present', '2019-05-11', 2),
(60, 6, 'Absent', '2019-05-11', 2),
(61, 7, 'Present', '2019-05-03', 3),
(62, 8, 'Present', '2019-05-03', 3),
(63, 9, 'Present', '2019-05-03', 3),
(64, 10, 'Present', '2019-05-03', 3),
(65, 11, 'Present', '2019-05-03', 3),
(66, 7, 'Absent', '2019-05-04', 3),
(67, 8, 'Present', '2019-05-04', 3),
(68, 9, 'Absent', '2019-05-04', 3),
(69, 10, 'Present', '2019-05-04', 3),
(70, 11, 'Absent', '2019-05-04', 3),
(71, 7, 'Present', '2019-05-06', 3),
(72, 8, 'Present', '2019-05-06', 3),
(73, 9, 'Absent', '2019-05-06', 3),
(74, 10, 'Present', '2019-05-06', 3),
(75, 11, 'Present', '2019-05-06', 3),
(76, 7, 'Present', '2019-05-07', 3),
(77, 8, 'Present', '2019-05-07', 3),
(78, 9, 'Present', '2019-05-07', 3),
(79, 10, 'Present', '2019-05-07', 3),
(80, 11, 'Present', '2019-05-07', 3),
(81, 7, 'Present', '2019-05-08', 3),
(82, 8, 'Present', '2019-05-08', 3),
(83, 9, 'Present', '2019-05-08', 3),
(84, 10, 'Absent', '2019-05-08', 3),
(85, 11, 'Absent', '2019-05-08', 3),
(86, 7, 'Present', '2019-05-09', 3),
(87, 8, 'Present', '2019-05-09', 3),
(88, 9, 'Absent', '2019-05-09', 3),
(89, 10, 'Present', '2019-05-09', 3),
(90, 11, 'Present', '2019-05-09', 3),
(91, 7, 'Absent', '2019-05-10', 3),
(92, 8, 'Present', '2019-05-10', 3),
(93, 9, 'Present', '2019-05-10', 3),
(94, 10, 'Present', '2019-05-10', 3),
(95, 11, 'Absent', '2019-05-10', 3),
(96, 7, 'Present', '2019-05-11', 3),
(97, 8, 'Present', '2019-05-11', 3),
(98, 9, 'Present', '2019-05-11', 3),
(99, 10, 'Absent', '2019-05-11', 3),
(100, 11, 'Present', '2019-05-11', 3),
(101, 12, 'Present', '2019-05-01', 4),
(102, 13, 'Present', '2019-05-01', 4),
(103, 14, 'Present', '2019-05-01', 4),
(104, 15, 'Present', '2019-05-01', 4),
(105, 16, 'Present', '2019-05-01', 4),
(106, 12, 'Present', '2019-05-02', 4),
(107, 13, 'Absent', '2019-05-02', 4),
(108, 14, 'Present', '2019-05-02', 4),
(109, 15, 'Absent', '2019-05-02', 4),
(110, 16, 'Present', '2019-05-02', 4),
(111, 12, 'Present', '2019-05-03', 4),
(112, 13, 'Present', '2019-05-03', 4),
(113, 14, 'Present', '2019-05-03', 4),
(114, 15, 'Absent', '2019-05-03', 4),
(115, 16, 'Present', '2019-05-03', 4),
(116, 12, 'Present', '2019-05-04', 4),
(117, 13, 'Present', '2019-05-04', 4),
(118, 14, 'Present', '2019-05-04', 4),
(119, 15, 'Present', '2019-05-04', 4),
(120, 16, 'Present', '2019-05-04', 4),
(121, 12, 'Present', '2019-05-06', 4),
(122, 13, 'Absent', '2019-05-06', 4),
(123, 14, 'Absent', '2019-05-06', 4),
(124, 15, 'Present', '2019-05-06', 4),
(125, 16, 'Present', '2019-05-06', 4),
(126, 12, 'Absent', '2019-05-07', 4),
(127, 13, 'Present', '2019-05-07', 4),
(128, 14, 'Present', '2019-05-07', 4),
(129, 15, 'Present', '2019-05-07', 4),
(130, 16, 'Absent', '2019-05-07', 4),
(131, 12, 'Present', '2019-05-08', 4),
(132, 13, 'Absent', '2019-05-08', 4),
(133, 14, 'Present', '2019-05-08', 4),
(134, 15, 'Present', '2019-05-08', 4),
(135, 16, 'Present', '2019-05-08', 4),
(136, 12, 'Present', '2019-05-09', 4),
(137, 13, 'Present', '2019-05-09', 4),
(138, 14, 'Present', '2019-05-09', 4),
(139, 15, 'Present', '2019-05-09', 4),
(140, 16, 'Absent', '2019-05-09', 4),
(141, 12, 'Present', '2019-05-10', 4),
(142, 13, 'Absent', '2019-05-10', 4),
(143, 14, 'Present', '2019-05-10', 4),
(144, 15, 'Present', '2019-05-10', 4),
(145, 16, 'Absent', '2019-05-10', 4),
(146, 12, 'Present', '2019-05-11', 4),
(147, 13, 'Present', '2019-05-11', 4),
(148, 14, 'Present', '2019-05-11', 4),
(149, 15, 'Present', '2019-05-11', 4),
(150, 16, 'Present', '2019-05-11', 4),
(151, 17, 'Present', '2019-05-01', 5),
(152, 18, 'Present', '2019-05-01', 5),
(153, 19, 'Present', '2019-05-01', 5),
(154, 20, 'Absent', '2019-05-01', 5),
(155, 21, 'Absent', '2019-05-01', 5),
(156, 17, 'Present', '2019-05-02', 5),
(157, 18, 'Present', '2019-05-02', 5),
(158, 19, 'Present', '2019-05-02', 5),
(159, 20, 'Present', '2019-05-02', 5),
(160, 21, 'Present', '2019-05-02', 5),
(161, 17, 'Present', '2019-05-03', 5),
(162, 18, 'Present', '2019-05-03', 5),
(163, 19, 'Present', '2019-05-03', 5),
(164, 20, 'Present', '2019-05-03', 5),
(165, 21, 'Absent', '2019-05-03', 5),
(166, 17, 'Present', '2019-05-04', 5),
(167, 18, 'Present', '2019-05-04', 5),
(168, 19, 'Absent', '2019-05-04', 5),
(169, 20, 'Present', '2019-05-04', 5),
(170, 21, 'Present', '2019-05-04', 5),
(171, 17, 'Present', '2019-05-06', 5),
(172, 18, 'Present', '2019-05-06', 5),
(173, 19, 'Present', '2019-05-06', 5),
(174, 20, 'Present', '2019-05-06', 5),
(175, 21, 'Present', '2019-05-06', 5),
(176, 17, 'Present', '2019-05-07', 5),
(177, 18, 'Present', '2019-05-07', 5),
(178, 19, 'Present', '2019-05-07', 5),
(179, 20, 'Present', '2019-05-07', 5),
(180, 21, 'Absent', '2019-05-07', 5),
(181, 17, 'Present', '2019-05-08', 5),
(182, 18, 'Present', '2019-05-08', 5),
(183, 19, 'Present', '2019-05-08', 5),
(184, 20, 'Absent', '2019-05-08', 5),
(185, 21, 'Present', '2019-05-08', 5),
(186, 17, 'Present', '2019-05-09', 5),
(187, 18, 'Present', '2019-05-09', 5),
(188, 19, 'Absent', '2019-05-09', 5),
(189, 20, 'Absent', '2019-05-09', 5),
(190, 21, 'Present', '2019-05-09', 5),
(191, 17, 'Absent', '2019-05-10', 5),
(192, 18, 'Present', '2019-05-10', 5),
(193, 19, 'Present', '2019-05-10', 5),
(194, 20, 'Present', '2019-05-10', 5),
(195, 21, 'Present', '2019-05-10', 5),
(196, 17, 'Present', '2019-05-11', 5),
(197, 18, 'Present', '2019-05-11', 5),
(198, 19, 'Present', '2019-05-11', 5),
(199, 20, 'Absent', '2019-05-11', 5),
(200, 21, 'Present', '2019-05-11', 5),
(201, 7, 'Present', '2019-05-13', 3),
(202, 8, 'Present', '2019-05-13', 3),
(203, 9, 'Present', '2019-05-13', 3),
(204, 10, 'Absent', '2019-05-13', 3),
(205, 11, 'Present', '2019-05-13', 3),
(206, 7, 'Present', '2019-05-14', 3),
(207, 8, 'Present', '2019-05-14', 3),
(208, 9, 'Absent', '2019-05-14', 3),
(209, 10, 'Present', '2019-05-14', 3),
(210, 11, 'Present', '2019-05-14', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grade`
--

CREATE TABLE `tbl_grade` (
  `grade_id` int(11) NOT NULL,
  `grade_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_grade`
--

INSERT INTO `tbl_grade` (`grade_id`, `grade_name`) VALUES
(1, '11 - A'),
(2, '11 - B'),
(3, '12 - A'),
(4, '12 - B'),
(5, '11 - C');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(150) NOT NULL,
  `student_roll_number` int(11) NOT NULL,
  `student_dob` date NOT NULL,
  `student_grade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_name`, `student_roll_number`, `student_dob`, `student_grade_id`) VALUES
(1, 'Edward Hedberg', 1, '2003-03-04', 1),
(3, 'William Crawford', 2, '2003-04-19', 1),
(4, 'Renee Crowe', 3, '2004-01-15', 1),
(5, 'Lillian Williams', 4, '2003-12-14', 1),
(6, 'Betty Mayer', 5, '2003-07-12', 1),
(7, 'Sally Luna', 1, '2003-12-19', 2),
(8, 'Richard Smith', 2, '2002-12-19', 2),
(9, 'Phyllis Shoop', 3, '2003-04-01', 2),
(10, 'Earl Perry', 4, '2003-08-15', 2),
(11, 'Minnie Morris', 5, '2003-06-18', 2),
(12, 'Lisa Ochoa', 1, '2002-05-01', 3),
(13, 'Marcus Holmes', 2, '2002-04-12', 3),
(14, 'Ernesto Arnold', 3, '2002-10-12', 3),
(15, 'Lillian Harris', 4, '2002-02-27', 3),
(16, 'Charles Reed', 5, '2002-06-12', 3),
(17, 'Lois Gonzales', 1, '2002-08-17', 4),
(18, 'Mary Floyd', 2, '2002-09-18', 4),
(19, 'Maria Biggs', 3, '2002-07-15', 4),
(20, 'Cleo Phillips', 4, '2002-01-14', 4),
(21, 'Rafael Royal', 5, '2002-12-05', 4),
(22, 'Jeremy Breawer', 1, '2002-04-11', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(150) NOT NULL,
  `teacher_address` text NOT NULL,
  `teacher_emailid` varchar(100) NOT NULL,
  `teacher_password` varchar(100) NOT NULL,
  `teacher_qualification` varchar(100) NOT NULL,
  `teacher_doj` date NOT NULL,
  `teacher_image` varchar(100) NOT NULL,
  `teacher_grade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`teacher_id`, `teacher_name`, `teacher_address`, `teacher_emailid`, `teacher_password`, `teacher_qualification`, `teacher_doj`, `teacher_image`, `teacher_grade_id`) VALUES
(2, 'Jonathan Gonzalez', '1810 Kuhl Avenue Gainesville, GA 30501', 'jonathan12@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'B.Sc, B.Ed', '2019-05-01', '5cdd2ed638edc.jpg', 1),
(3, 'Peter Parker', '620 Jody Road, Philadelphia, PA 19108', 'peter_parker@gmail.com', '$2y$10$jmgJN1xvteg6XqBnHvT7UerviGNJOSnF8KFzBHnCky0FJWa74Nvmu', 'M.Sc, B. Ed', '2017-12-31', '5ce53488d50ec.jpg', 2),
(4, 'John Smith', '780 University Drive, Chicago, IL 60606', 'john.smith@gmail.com', '$2y$10$Vb9t4CvkJwm41KXgPehuLOFcM7o5Qdm1RFxSBxzh9cvBcc21AUAiW', 'B.Sc', '2019-05-01', '5cdd2f35be8fa.jpg', 3),
(5, 'Donna Hubber', '3354 Round Table Drive, Cincinnati, OH 45240', 'donna.huber@gmail.com', '$2y$10$SVxX4/7lf3pDs1vrpuJexOG7Ue1e1jqIntGmXip3JzxkB753uxBiO', 'M.Sc', '2019-05-01', '5cdd2f767568c.jpg', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `tbl_grade`
--
ALTER TABLE `tbl_grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `tbl_grade`
--
ALTER TABLE `tbl_grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `brijesh`
--
CREATE DATABASE IF NOT EXISTS `brijesh` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `brijesh`;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(35) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `fname`, `gender`, `email`, `password`, `dob`, `mobile`, `city`, `pic`) VALUES
(1, 'soni', 'papa', 'Female', 's@gmail.com', '1234', '2023-03-08', '147996523', 'Lucknow', ''),
(2, 'soni', 'papa', 'Female', 'soni@gmail.com', '1234', '2023-03-09', '123654987', 'Lucknow', 'PIC.jpg'),
(3, 'soni', 'papa', 'Female', 'soni@gmail.com', '1234', '2023-03-03', '1236549870', 'Varanasi', 'PIC.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `crmdb`
--
CREATE DATABASE IF NOT EXISTS `crmdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crmdb`;

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contactno` varchar(13) NOT NULL,
  `emailaddress` varchar(60) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `complaintext` varchar(2000) NOT NULL,
  `posteddate` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`id`, `name`, `contactno`, `emailaddress`, `subject`, `complaintext`, `posteddate`) VALUES
(1, 'soni', '123654987', 'soni@gmail.com', 'hlo', 'BAD Qualities', '05-04-23'),
(2, 'soni', '123654987', 'soni@gmail.com', 'hlo', 'usererror', '08-04-23');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `regdate` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`name`, `gender`, `address`, `contactno`, `emailaddress`, `regdate`) VALUES
('Soni Nishad', 'female', 'lucknow', '1236549870', 'soni@gmail.com', '08-04-23'),
('komal', 'female', 'lucknow', '789654123', 'komal@gmail.comm', '08-04-23'),
('shakil', 'male', 'bihar', '1598745622', 'shakil@gmail.com', '08-04-23'),
('seema', 'female', 'barabanki', '8745120798', 'seema@gmail.com', '08-04-23'),
('rekha', 'female', 'gonda', '7984132654', 'rekha@gmail.com', '08-04-23');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactno` varchar(20) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `enquirytext` varchar(1000) NOT NULL,
  `enquirydate` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `name`, `gender`, `address`, `contactno`, `emailaddress`, `enquirytext`, `enquirydate`) VALUES
(1, 'soni', 'female', 'lko', '123654987', 'soni@gmail.com', 'hlo', '27-03-23'),
(5, 'Soni Nishad', 'female', 'Rustam Vihar Colony Near  \r\n Madina guest house ,Cipet College , Nadarganj  Lucknow', '123654987', 'soninishad7860@gmail.com', 'hlo', '08-04-23'),
(4, 'shakil', 'male', 'bihar', '54563213587', 'shakil@gmail.com', 'hmm', '08-04-23');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contactno` varchar(13) NOT NULL,
  `emailaddress` varchar(60) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedbacktext` varchar(2000) NOT NULL,
  `posteddate` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `contactno`, `emailaddress`, `subject`, `feedbacktext`, `posteddate`) VALUES
(1, 'soni', '123654987', 'soni@gmail.com', 'Hlo', 'All is good', '06-04-23'),
(3, 'soni', '123654987', 'soni@gmail.com', 'fee', 'hii', '08-04-23');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `usertype` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `password`, `usertype`) VALUES
('soni@gmail.com', 'abc123', 'customer'),
('anaya@gmail.com', '1212', 'customer'),
('monika@gmail.com', '1234', 'customer'),
('mahi@gmail.com', '5454', 'customer'),
('shakil@gmail.com', '9898', 'customer'),
('admin@gmail.com', 'admin@123', 'admin'),
('komal@gmail.comm', 'komal123', 'customer'),
('seema@gmail.com', 'seema123', 'customer'),
('rekha@gmail.com', 'rekha123', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `notificationtext` varchar(2000) NOT NULL,
  `posteddate` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `notificationtext`, `posteddate`) VALUES
(1, 'All is well.', '05-04-23'),
(2, 'Hlo', '08-04-23'),
(3, 'HYY', '08-04-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`emailaddress`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `crudpratice`
--
CREATE DATABASE IF NOT EXISTS `crudpratice` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crudpratice`;

-- --------------------------------------------------------

--
-- Table structure for table `jobregistration`
--

CREATE TABLE `jobregistration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `refer` varchar(255) NOT NULL,
  `jobpost` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobregistration`
--

INSERT INTO `jobregistration` (`id`, `name`, `degree`, `mobile`, `email`, `refer`, `jobpost`) VALUES
(7, 'rohit', 'BA', '123644987', 'rohit@gmail.com', 'yes', 'webdevelopment');

-- --------------------------------------------------------

--
-- Table structure for table `reg_images`
--

CREATE TABLE `reg_images` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(6) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `profilepic` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reg_images`
--

INSERT INTO `reg_images` (`id`, `name`, `email`, `password`, `gender`, `profilepic`, `address`) VALUES
(2, '[value-2]', '[value', '[value-4]', '[value', '[value-6]', '[value-7]');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE `tbl_register` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_register`
--

INSERT INTO `tbl_register` (`id`, `name`, `email`, `password`, `address`) VALUES
(5, 'mahi', 'mahi@gmail.com', '1212', 'lko'),
(4, 'sonali', 'sonali@gmail.com', '0000', 'lko'),
(40, 'sonam', 'sonam@gmail.com', '1212@12', 'lko'),
(43, '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobregistration`
--
ALTER TABLE `jobregistration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_images`
--
ALTER TABLE `reg_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobregistration`
--
ALTER TABLE `jobregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `reg_images`
--
ALTER TABLE `reg_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_register`
--
ALTER TABLE `tbl_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- Database: `custdb`
--
CREATE DATABASE IF NOT EXISTS `custdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `custdb`;

-- --------------------------------------------------------

--
-- Table structure for table `custinfo`
--

CREATE TABLE `custinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `connectdate` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `custinfo`
--
ALTER TABLE `custinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `custinfo`
--
ALTER TABLE `custinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `demolaravel`
--
CREATE DATABASE IF NOT EXISTS `demolaravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `demolaravel`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` enum('M','F','O') NOT NULL,
  `address` text NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `points` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `gender`, `address`, `country`, `date`, `password`, `status`, `points`, `created_at`, `updated_at`, `state`) VALUES
(1, 'soni', 'email', 'F', 'lko', 'india', '2023-07-24', '1234', 1, 0, NULL, NULL, 'up');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_07_23_132309_create_customer_table', 1),
(11, '2023_07_24_121043_add_columns_to_customer_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `digital_animation_task`
--
CREATE DATABASE IF NOT EXISTS `digital_animation_task` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `digital_animation_task`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catid` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `status` varchar(1) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catid`, `category`, `status`, `date`) VALUES
(3, 'categoery1', 'Y', '2023-07-11 11:44:55'),
(4, 'categoery2', 'Y', '2023-07-11 12:15:02'),
(5, 'categoery3', 'Y', '2023-07-11 12:15:10'),
(6, 'categoery4', 'Y', '2023-07-11 12:15:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `proid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `cp` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`proid`, `catid`, `productname`, `image`, `cp`, `status`, `date`) VALUES
(2, 2, 'abc', 'testimonial-4.jpg', 100, 'Y', '2023-07-11 12:08:52'),
(3, 5, 'product3', 'testimonial-1.jpg', 20, 'Y', '2023-07-11 12:15:45'),
(4, 4, 'product2', 'about.jpg', 10, 'Y', '2023-07-11 12:16:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`proid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `proid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `dynamicp1`
--
CREATE DATABASE IF NOT EXISTS `dynamicp1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dynamicp1`;

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `paragraph` varchar(2000) NOT NULL,
  `sub_paragraph` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `heading`, `paragraph`, `sub_paragraph`) VALUES
(1, 'Gargi PaperKraft', 'Since its inception five years ago, Gargi PaperKraft was laid on foundation of Enterprise, Integrity and Innovation. Gargi PaperKraft is a premier manufacturer & supplier of different kind of Paper Bags. On the strength of its quality, competitiveness and ability to meet the need based delivery, we serve our clients at pan India level and overseas catering several industries such as Pharma, Opticians, Bakers, Jewellers, Corporates, Hotels, Schools and Classes, Sweet and Dry fruit shops, Departmental Stores, Grocery Stores, Footwear or Shoe shops, Event Managements, Builders, Book Shops, Garment Industry, Restaurants, Individual Gifting and much more.', 'Innovativeness and customization is highly in trend these days and we can say that Gargi PaperKraft mastered the art of it. We have been truly active in providing our customers with creative and stylish products that may include bags, and other packaging products as per trending demand. Our entire sales team and manufacturing unit is well facilitated that allows us to reach globally in given time limit. Above all, we have never compromised when it comes to durability and quality and that is one of the features why our clients never leave us.');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `image`, `account_name`, `username`, `password`) VALUES
(1, 'CIRCULARGARGILOGO.png', 'Administrator', 'admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `id` int(11) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`id`, `image`) VALUES
(2, 'gargi-paperkraft-bags-manufaturer-lucknow-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `image`) VALUES
(3, '1.png'),
(4, 'logo2.jpeg'),
(5, 'logo2.jpeg'),
(6, 'BIRLA.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `message`, `date`) VALUES
(3, 'sudhakar', 'sudhakar@whiz-solutions.com', 'sdfas', 'dfgdf', '2022-11-29 14:26:34'),
(4, 'test', 'test@gmail.com', '9454792352', 'fcvgbhnjmk,', '2023-02-02 01:12:58'),
(5, 'Mr. Castilo', 'castilocilo@gmail.com', '83832877798', 'The CEO, \r\nWe are Adventure Finance UK Ltd, we offer business funding such as JV and debt Loans. Borrowers can secure from 10M up to 3B with us. Our platform also offers Banking Instruments such as BG/SBLC, BD, LC and Monetizations from A-rated banks. \r\nLet us know your needs and we will be delighted to serve. \r\nReply-to Email: castilocilo@gmail.com \r\nRegards, \r\nMr. Castilo', '2023-02-02 01:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flat_bottom`
--

CREATE TABLE `flat_bottom` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flat_bottom`
--

INSERT INTO `flat_bottom` (`id`, `name`, `image`) VALUES
(0, 'Laundry Bags', '28958724_187211562055758_529572800491421696_n.jpg'),
(0, 'Laundry Bags', '36576178_246626276114286_80467676874407936_n.jpg'),
(0, 'Medical Bags', '41cQECCNc7L.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `flat_bottom_design`
--

CREATE TABLE `flat_bottom_design` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flat_bottom_design`
--

INSERT INTO `flat_bottom_design` (`id`, `name`, `image`) VALUES
(1, 'Grocerry Bags', 'flatbottombagsforgrocerry.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `flutter`
--

CREATE TABLE `flutter` (
  `id` int(11) NOT NULL,
  `area` varchar(100) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `pincode` int(50) NOT NULL,
  `state` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flutter`
--

INSERT INTO `flutter` (`id`, `area`, `city_name`, `pincode`, `state`) VALUES
(2, 'B-33 Dayal Green Phase-I, Deva Road', 'Near Kunwar Global Public School, Lucknow', 226019, 'Uttar Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id` int(11) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `contact_number` varchar(50) NOT NULL,
  `social_media` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id`, `email_id`, `contact_number`, `social_media`) VALUES
(8, 'info@gargipaperkraft.com', '+91 99182 80347', '');

-- --------------------------------------------------------

--
-- Table structure for table `industrial`
--

CREATE TABLE `industrial` (
  `id` int(11) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `paragraph` varchar(200) NOT NULL,
  `image` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `industrial`
--

INSERT INTO `industrial` (`id`, `heading`, `paragraph`, `image`) VALUES
(12, 'FLAT-BOTTOM BAGS', 'Paperkraft Bags', 'IMG_20230306_163846134.jpg'),
(13, 'V-BOTTOM BAGS', 'PaperKraft Bags', 'Low-Cost-Food-Full-Automatic-V-Bottom-Kraft-Paper-Bag-Production-Manufacturing-Making-Machine-Price.jpg'),
(15, 'SQUARE-BOTTOM BAGS', 'PaperKraft Bags', 'sqauere_bottom_bags.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `image`) VALUES
(3, 'gargipaperkraft.png');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `name`, `image`) VALUES
(1, 'Grocerry Bags', 'grocerrybags.jpeg'),
(2, 'Laundry Bags', 'IMG_20230306_163846134.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `people_say`
--

CREATE TABLE `people_say` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `paragraph` varchar(200) NOT NULL,
  `image` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `people_say`
--

INSERT INTO `people_say` (`id`, `name`, `designation`, `paragraph`, `image`) VALUES
(1, 'sudhakarr', 'developerr', ' hi  this is paragrpahhr', 'bg2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `image` varchar(400) NOT NULL,
  `heading` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `image`, `heading`, `title`) VALUES
(1, '1.jpg', 'poject1', 'this is '),
(2, 'logo.jpg', 'p2', 'jhvjh');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `paragraph` varchar(300) NOT NULL,
  `image` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `heading`, `paragraph`, `image`) VALUES
(19, 'DENIM JEANS & LEGINGS ', 'MEN, WOMEN, BOYS, GIRLS JEANS & LEGINGS', '1-MEN & WOMEN DENIM FIBRE JEANS.jpg'),
(21, 'DEIM FIBRE SHIRTS & T-SHIRTS', 'FOR ALL ', '2-MEN & WOMEN DENIM FIBRE SHIRTS.png'),
(22, 'DENIM FIBRE SHORTS, SKIRTS & UNDER GARMENTS', 'FOR LADIES & GIRLS', '3-GIRLS DENIM FIBRE SHORTS,  SKIRTS & UNDER GARMENTS.jpg'),
(23, 'DENIM MEN & WOMEN FOOT WEAR', 'FOR ALL', '4-DENIM MEN & WOMEN FOOTWEAR.png'),
(24, 'DENIM FIBRE OTHER PRODUCTS', 'FOR ALL ', '5-DENIM FIBRE OTHER PRODUCTS.png'),
(25, 'SPORTSWEAR PRODUCTS', 'SPORT TRACK SHOOTS, JACKET, FOOTWEAR ETC', '52.jpg'),
(26, 'PICKELS', 'ALL TYPE OF PICKELS', '1-PICKELS.png'),
(27, 'CHIPS', 'ALL TYPES CHIPS', '2-CHIPS.png'),
(28, 'BAKERY', 'PACKAGED BAKERY PRODUCTS', '3-BAKERY.png'),
(29, 'SOUCE', 'ALL TYPE OD SOUCE', '4-SOUCE.png'),
(30, 'PAPAD', 'ALL TYPE OF PAPAD', '5-PAPAD.png'),
(31, 'SPORTWEAR', 'FOR ALL', '1-MEN & WOMEN SPORTWEAR.png'),
(32, 'SPORT FOOTWEAR', 'FOR ALL', '2-MEN & WOMEN SPORT FOOTWEAR.png');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `image` varchar(300) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `sub_heading` varchar(50) NOT NULL,
  `paragraph` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image`, `heading`, `sub_heading`, `paragraph`) VALUES
(7, 'inddophouseslider0.jpg', 'INDDOP HOUSE', 'MANUFACTURER & TRADER OF INDUSTRIAL & DOMESTIC PRO', 'THE BEST INDUSTRIAL PRODUCTS FOR ALL '),
(8, 'seen-5.png', 'INDDOP HOUSE', 'MANUFACTURER & TRADER OF INDUSTRIAL & DOMESTIC PRO', 'WE SUPPLY THE BEST DOMESTIC PRODUCTS........'),
(10, 'seen-3.png', 'INDDOP HOUSE', 'MANUFACTURER & TRADER OF INDUSTRIAL & DOMESTIC PRO', '100% PURE, MADE IN INDIA');

-- --------------------------------------------------------

--
-- Table structure for table `slieder`
--

CREATE TABLE `slieder` (
  `id` int(11) NOT NULL,
  `image` varchar(300) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `sub_heading` varchar(50) NOT NULL,
  `paragraph` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `square_bottom`
--

CREATE TABLE `square_bottom` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `square_bottom`
--

INSERT INTO `square_bottom` (`id`, `name`, `image`) VALUES
(1, 'Cloths  & Apparels', 'squarebottombags_gargi_paperkraft_lko.jpg'),
(2, 'Malls & Stores', 'Girls_shopping.jpg'),
(3, 'Groceries', 'square-bottom-paper-bags-732.jpg'),
(4, 'All Purpose Bags', 'theme.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `square_bottom_design`
--

CREATE TABLE `square_bottom_design` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `square_bottom_design`
--

INSERT INTO `square_bottom_design` (`id`, `name`, `image`) VALUES
(1, 'Packaging Bags', 'squarebottompackingbags.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `designation`, `image`) VALUES
(1, '', 'php', 'project-img3.jpg'),
(17, 'Prashant Singh', 'Marketing Head', '8.jpg'),
(23, 'Pratap Narayan Singh', 'Founder and CEO', '20210206_144013.jpg'),
(25, 'MEMBER1', 'php', '01.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `v_bottom`
--

CREATE TABLE `v_bottom` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_bottom`
--

INSERT INTO `v_bottom` (`id`, `name`, `image`) VALUES
(1, 'Grocerry Bags', 'Low-Cost-Food-Full-Automatic-V-Bottom-Kraft-Paper-Bag-Production-Manufacturing-Making-Machine-Price.jpg'),
(2, 'Fast Food Packaging', '77431111_567779477332296_3661582485969436672_n.jpg'),
(3, 'All Purpose Bags', '39920064_297885070988406_2362462317536346112_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `v_bottom_design`
--

CREATE TABLE `v_bottom_design` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_bottom_design`
--

INSERT INTO `v_bottom_design` (`id`, `name`, `image`) VALUES
(1, 'Food Bags', 'vbottomdesignbagsforfoods.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flat_bottom_design`
--
ALTER TABLE `flat_bottom_design`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flutter`
--
ALTER TABLE `flutter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industrial`
--
ALTER TABLE `industrial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_say`
--
ALTER TABLE `people_say`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slieder`
--
ALTER TABLE `slieder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `square_bottom`
--
ALTER TABLE `square_bottom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `square_bottom_design`
--
ALTER TABLE `square_bottom_design`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v_bottom`
--
ALTER TABLE `v_bottom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v_bottom_design`
--
ALTER TABLE `v_bottom_design`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `background`
--
ALTER TABLE `background`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flat_bottom_design`
--
ALTER TABLE `flat_bottom_design`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flutter`
--
ALTER TABLE `flutter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `industrial`
--
ALTER TABLE `industrial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `people_say`
--
ALTER TABLE `people_say`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `slieder`
--
ALTER TABLE `slieder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `square_bottom`
--
ALTER TABLE `square_bottom`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `square_bottom_design`
--
ALTER TABLE `square_bottom_design`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `v_bottom`
--
ALTER TABLE `v_bottom`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `v_bottom_design`
--
ALTER TABLE `v_bottom_design`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecommerce`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE `tbl_register` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactno` varchar(13) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_register`
--

INSERT INTO `tbl_register` (`id`, `name`, `gender`, `address`, `contactno`, `email`, `password`) VALUES
(1, 'shakil', 'Male', 'bihar', '9631495425', 'ahmad@gmail.com', ''),
(2, 'abhishek', 'Female', 'lko', '789654123', 'abhishek@gmail.com', '9874');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_register`
--
ALTER TABLE `tbl_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `employee_data`
--
CREATE DATABASE IF NOT EXISTS `employee_data` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `employee_data`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `company`, `designation`, `address`, `city`, `country`, `zip_code`, `mobile`, `gender`) VALUES
(4, 'Neha', 'neha@gmail.com', 'Anch', 'PHP', 'Amausi', 'Lucknow', 'India', '226021', '9999999999', 'Female'),
(5, 'raj', 'raj@gmail.com', 'Amzsoft Innovexa', 'web developer', 'lko', 'lko', 'india', '226021', '789456321', 'Female'),
(6, 'spumya ', 'soumya@gmail.com', 'Amzsoft Innovexa', 'php', 'Lko', 'lko', 'india', '226021', '7896541230', 'Female'),
(7, 'Bittu', 'bittu@gmail.com', 'Anch', 'Backend developer', 'lko', 'lko', 'usa', '20210', '789654123', 'Female'),
(8, 'mohan', 'mohan@gmail.com', 'Amzsoft Innovexa', 'php', 'Amausi', 'lko', 'india', '226021', '7896541230', 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `gavaiswad`
--
CREATE DATABASE IF NOT EXISTS `gavaiswad` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gavaiswad`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin@1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catid` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `status` varchar(1) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catid`, `category`, `status`, `date`) VALUES
(1, 'pickle', 'Y', '2023-03-18 15:25:41'),
(2, 'jaggery', 'Y', '2023-03-18 15:44:13'),
(3, 'vinegar', 'Y', '2023-03-18 15:51:43'),
(4, 'prodect1', 'Y', '2023-07-11 11:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `proid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `cp` int(11) NOT NULL,
  `sp` int(11) NOT NULL,
  `units` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`proid`, `catid`, `productname`, `image`, `description`, `cp`, `sp`, `units`, `status`, `date`) VALUES
(2, 1, 'lime pickle', 'pickel3.jpeg', 'expire 20 nov 2024', 60, 80, 1, 'Y', '2023-03-18 15:51:05'),
(3, 1, 'chilli pickle', 'pickle5.jpeg', 'expire 30 feb', 50, 80, 2, 'Y', '2023-03-18 16:08:16'),
(4, 2, 'Organic jaggery', 'jaggery.jpg', 'expire on 1 june', 20, 40, 2, 'Y', '2023-03-18 16:09:59'),
(5, 2, 'Dry fruit jaggery', 'jaggery2.jpg', 'expire on 5jan', 100, 150, 3, 'Y', '2023-03-18 16:11:13'),
(6, 2, 'jaggery product', 'jaggery3.jpg', 'expire on 2 july', 40, 60, 4, 'Y', '2023-03-18 16:12:17'),
(8, 3, 'White vinegar', 'vinergar3.webp', 'expire on 1 may', 20, 25, 2, 'Y', '2023-03-18 16:16:35'),
(9, 3, 'Apple vinegar', 'vinegar2.jpg', 'expire on 16 july', 80, 100, 1, 'Y', '2023-03-18 16:17:41'),
(10, 3, 'vinergars', 'team-3.jpg', 'expire 1 oct', 200, 400, 3, 'Y', '2023-03-18 16:23:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`proid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `proid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `home_db`
--
CREATE DATABASE IF NOT EXISTS `home_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `home_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
('BcjKNX58e4x7bIqIvxG7', 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
('2', 'admin', '123456'),
('NuQMS1DzGXR6LiC4Joqc', 'admin12', '7c4a8d09ca3762af61e59520943dc26494f8941b');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `property_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `offer` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `furnished` varchar(50) NOT NULL,
  `bhk` varchar(10) NOT NULL,
  `deposite` varchar(10) NOT NULL,
  `bedroom` varchar(10) NOT NULL,
  `bathroom` varchar(10) NOT NULL,
  `balcony` varchar(10) NOT NULL,
  `carpet` varchar(10) NOT NULL,
  `age` varchar(2) NOT NULL,
  `total_floors` varchar(2) NOT NULL,
  `room_floor` varchar(2) NOT NULL,
  `loan` varchar(50) NOT NULL,
  `lift` varchar(3) NOT NULL DEFAULT 'no',
  `security_guard` varchar(3) NOT NULL DEFAULT 'no',
  `play_ground` varchar(3) NOT NULL DEFAULT 'no',
  `garden` varchar(3) NOT NULL DEFAULT 'no',
  `water_supply` varchar(3) NOT NULL DEFAULT 'no',
  `power_backup` varchar(3) NOT NULL DEFAULT 'no',
  `parking_area` varchar(3) NOT NULL DEFAULT 'no',
  `gym` varchar(3) NOT NULL DEFAULT 'no',
  `shopping_mall` varchar(3) NOT NULL DEFAULT 'no',
  `hospital` varchar(3) NOT NULL DEFAULT 'no',
  `school` varchar(3) NOT NULL DEFAULT 'no',
  `market_area` varchar(3) NOT NULL DEFAULT 'no',
  `image_01` varchar(50) NOT NULL,
  `image_02` varchar(50) NOT NULL,
  `image_03` varchar(50) NOT NULL,
  `image_04` varchar(50) NOT NULL,
  `image_05` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `user_id`, `property_name`, `address`, `price`, `type`, `offer`, `status`, `furnished`, `bhk`, `deposite`, `bedroom`, `bathroom`, `balcony`, `carpet`, `age`, `total_floors`, `room_floor`, `loan`, `lift`, `security_guard`, `play_ground`, `garden`, `water_supply`, `power_backup`, `parking_area`, `gym`, `shopping_mall`, `hospital`, `school`, `market_area`, `image_01`, `image_02`, `image_03`, `image_04`, `image_05`, `description`, `date`) VALUES
('fvqwqHARxGxEOT8EtDIl', 'bbmf7aJjWFZTtZ4Yaak6', 'for sale ', ' lko', '200000', 'flat', 'sale', 'ready to move', 'furnished', '1', '5000', '1', '2', '2', '500', '2', '5', '2', 'available', 'no', 'no', 'no', 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'Jy9i663vfRsD0Z529l1H.png', '', '', '', '', 'm', '2024-07-23'),
('duQUghBNjabIfMYQRp7w', 'jc0N8SjsIhxnAxEBcYhB', 'for sale ', 'gjgj', '8896532', 'flat', 'sale', 'ready to move', 'furnished', '1', '1212', '1', '1', '0', '654', '4', '2', '4', 'available', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'B26lS0FL9eNJjDF50xRm.jpg', '', '', '', '', 'jhvj', '2024-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` varchar(20) NOT NULL,
  `property_id` varchar(20) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `property_id`, `sender`, `receiver`, `date`) VALUES
('NdWAvO9ZySd9eRshmCOQ', 'fvqwqHARxGxEOT8EtDIl', 'bbmf7aJjWFZTtZ4Yaak6', 'bbmf7aJjWFZTtZ4Yaak6', '2024-07-23'),
('rVvgpjv1XQTpvsep41EE', 'fvqwqHARxGxEOT8EtDIl', 'ZBCBBzW8Nqso5Jo4iwbJ', 'bbmf7aJjWFZTtZ4Yaak6', '2024-07-30'),
('icZE0zO5K44JSaK4j6E1', 'fvqwqHARxGxEOT8EtDIl', 'jc0N8SjsIhxnAxEBcYhB', 'bbmf7aJjWFZTtZ4Yaak6', '2024-08-01'),
('J8GtznBPFzDDkzWYPTia', 'duQUghBNjabIfMYQRp7w', 'AvHVEtRsDrfgoICreiZY', 'jc0N8SjsIhxnAxEBcYhB', '2024-08-01'),
('GPGRJvwilli6weMhrsDF', 'duQUghBNjabIfMYQRp7w', 'ZBCBBzW8Nqso5Jo4iwbJ', 'jc0N8SjsIhxnAxEBcYhB', '2024-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `saved`
--

CREATE TABLE `saved` (
  `id` varchar(20) NOT NULL,
  `property_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saved`
--

INSERT INTO `saved` (`id`, `property_id`, `user_id`) VALUES
('ZZV5yWMYlU91iCGCPBUQ', 'fvqwqHARxGxEOT8EtDIl', 'ZBCBBzW8Nqso5Jo4iwbJ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `number`, `email`, `password`) VALUES
('bbmf7aJjWFZTtZ4Yaak6', 'abc', '123654987', 'abc@gamil.com', 'ddac418a1be76098d01107464026f65d2a3192bf'),
('ZBCBBzW8Nqso5Jo4iwbJ', 'abc', '123654970', 'abc@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964'),
('jc0N8SjsIhxnAxEBcYhB', 'new ', '123654', 'new@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('AvHVEtRsDrfgoICreiZY', 'test', '798', 'test@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b');
--
-- Database: `hospital`
--
CREATE DATABASE IF NOT EXISTS `hospital` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hospital`;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `doctor` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `number` varchar(13) NOT NULL,
  `place` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `department`, `doctor`, `name`, `email`, `number`, `place`, `date`, `time`) VALUES
(5, '1', '3', 'soumya', 'soumya@gmail.com', '123456789', 'mumbai', '2023-03-07', '05:30:00'),
(4, '2', '2', 'soni', 'soni@gmail.com', '987654321', 'gonda', '2023-03-05', '03:30:00'),
(13, '2', '1', 'Soni nishad', 'soninishad7860@gmail.com', '8789865', 'klmkl', '2023-03-15', '12:25:00'),
(8, '1', '1', 'shakil', 'shakilahamed@gmail.com', '789456123', 'mumbai', '2023-03-13', '10:20:00'),
(12, '3', '3', 'soumya', 'soninishad7860@gmail.com', '9632145875', 'gonda', '2023-03-28', '14:18:00'),
(10, '1 Department', '1', 'raj', 'raj@gmail.com', '789456123', 'lko', '2023-03-16', '10:31:00'),
(11, '1 Department', '1', 'raj', 'raj@gmail.com', '789456123', 'lko', '2023-03-16', '10:31:00'),
(14, '2', '1', 'soni', 'soni@gmail.com', '789654123', 'lko', '2023-03-22', '16:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `contactno` varchar(13) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `name`, `emailaddress`, `contactno`, `subject`, `message`) VALUES
(8, 'soni', 'soni@gmailcom', '789456321', 'body problem', 'urgent'),
(9, 'soumya', 'soumya@gmail.com', '789456123', 'eye', 'hlo'),
(5, 'soni', 'soninishad7860@gmail.com', '2587410963', 'eye', 'ok'),
(13, 'soni', 'soninishad7860@gmail.com', '789654123', 'body problem', 'hlo'),
(11, 'muskan', 'muskan@gmail.com', '7145069639', 'eye', 'hlo'),
(12, 'Soni Nishad', 'soni@gmail.com', '78965412', 'eye', 'hlo');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `occupation` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `emailaddress`, `password`) VALUES
(1, 'soni@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE `tbl_register` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `conpassword` varchar(50) NOT NULL,
  `contactno` varchar(13) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_register`
--

INSERT INTO `tbl_register` (`id`, `name`, `emailaddress`, `password`, `conpassword`, `contactno`, `address`, `gender`) VALUES
(14, 'soni', 'soni@gmail.com', '1234', '1234', '8957376152', 'lko', 'Female'),
(16, 'spi', 'spi@gmail.com', '78945', '78945  ', '9631495425', 'lucknow', 'Male'),
(15, 'shakil', 'shakilahamed@gmail.com', '1234', '1234', '99631495425', 'Mumbai', 'Male'),
(17, 'Soni Nishad', 'soninishad7860@gmail.com', '1234', '1234', '789654123', 'Rustam Vihar Colony Near  \r\n Madina guest house ,Cipet College , Nadarganj  Lucknow', 'Female'),
(18, 'muskan', 'muskan@gmail.com', '1234', '1234', '789654123', 'lko', 'Female'),
(19, 'ritesh', 'ritest@gmail.com', '1234', '1234', '123644789', 'lko', 'Female'),
(20, 'abhay', 'abhay@gmail.com', '1234', '1234', '321654987', 'lko', 'Male'),
(21, 'ritesh', 'ritesh@gmail.com', '1234', '1234', '789654123', 'lko', 'Male'),
(22, 'Soni Nishad', 'son@gmail.com', '1234', '1234', '1234', 'Rustam Vihar Colony Near  \r\n Madina guest house ,Cipet College , Nadarganj  Lucknow', 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_register`
--
ALTER TABLE `tbl_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Database: `ida`
--
CREATE DATABASE IF NOT EXISTS `ida` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ida`;

-- --------------------------------------------------------

--
-- Table structure for table `driver_info`
--

CREATE TABLE `driver_info` (
  `id` int(11) NOT NULL,
  `driver_mode` varchar(50) NOT NULL,
  `driver_name` varchar(255) NOT NULL,
  `driver_photo` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `dl_number` varchar(50) NOT NULL,
  `area_postal_code` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `license_expiry` date NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `signature_file` varchar(255) DEFAULT NULL,
  `signature_data` text DEFAULT NULL,
  `registration_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver_info`
--

INSERT INTO `driver_info` (`id`, `driver_mode`, `driver_name`, `driver_photo`, `phone`, `dl_number`, `area_postal_code`, `address`, `license_expiry`, `vehicle_type`, `signature_file`, `signature_data`, `registration_date`) VALUES
(1, 'Standard', 's', 'driver_6708cf30bb08d5.67696337.jpg', '5678965412', 'kk1', '85', 'pk', '0000-00-00', 'bus', 'signature_6708cf30bb2a85.98637904.png', NULL, '2024-10-01 12:28:43'),
(2, 'Standard', 'a', 'driver_6708d0e731f3f1.04869116.jpg', '8965741230', 'kk4', '789', 'lko', '0000-00-00', 'bus', 'signature_6708d0e7320af7.89294098.png', NULL, '2024-10-11 12:28:43'),
(4, 'Standard', 'k', 'driver_670cb438154677.34456475.jpg', '54', 'k45', '565', 'bj', '0000-00-00', 'bus', 'signature_670cb4381563e2.37066995.jpeg', NULL, '2024-10-12 12:28:43'),
(5, 'Standard', 'raj', 'driver_670ccbc6e40c35.77621298.jpg', '68', 'hbh5', '2', 'lk', '0000-00-00', 'bus', 'signature_670ccbc6e46911.10696837.jpg', NULL, '2024-10-02 12:28:43'),
(6, 'Standard', 'chunnu', 'driver_670ccc1230d190.52585185.jpg', 'j8', 'jj', '5', 'kjk', '0000-00-00', 'motorcycle', 'signature_670ccc1230e427.17347900.png', NULL, '2024-10-12 12:28:43'),
(7, 'Standard', 'munni', 'driver_670ccd4cb210c4.76726806.jpg', '789', 'k5', 'l78', 'jhj', '0000-00-00', 'car', 'signature_670ccd4cb22c46.06225205.png', NULL, '2024-10-14 12:28:43'),
(8, 'Standard', 'pinnki', 'driver_670ccd79723cb1.82862152.jpeg', '899', '5', 'j', 'kjj', '0000-00-00', 'motorcycle', 'signature_670ccd79725601.96913457.jpg', NULL, '2024-10-14 12:28:43'),
(9, 'Standard', 'demo2', 'driver_670fba58de4b64.20325438.jpeg', 'vf', '55', '85', 'kk', '0000-00-00', 'truck', 'signature_670fba58dea7e4.51461949.png', NULL, '2024-10-14 12:28:43'),
(10, 'Standard', 'ddemonew', 'driver_6710affc2589f9.65080356.jpeg', '87874', 'dff5', '45', 'ljk', '0000-00-00', 'car', 'signature_6710affc25d913.51120068.png', NULL, '2024-10-17 12:28:43'),
(11, 'Standard', 'd', 'driver_6710b0724cfb53.47954049.jpeg', '5', 'd', 'd', 'd', '0000-00-00', 'car', 'signature_6710b0724d1164.33569644.png', NULL, '2024-10-17 12:28:43'),
(12, 'Standard', 'dd', 'driver_6710b0f2e5e326.88721502.jpeg', 'fs', '1', '2', 'x', '0000-00-00', 'car', 'signature_6710b0f2e60ca3.91233414.png', NULL, '2024-10-17 12:28:43'),
(13, 'Standard', 'sssss', 'driver_6710b6d6e109b3.41169197.jpeg', '98945', 'hj5', '78', 'hg', '0000-00-00', 'car', 'signature_6710b6d6e13520.58707958.png', NULL, '2024-10-17 12:33:50');

-- --------------------------------------------------------

--
-- Table structure for table `forms_filled`
--

CREATE TABLE `forms_filled` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(50) NOT NULL,
  `form_name` varchar(255) NOT NULL,
  `submission_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_links`
--

CREATE TABLE `group_links` (
  `id` int(11) NOT NULL,
  `whatsapp_link` varchar(255) NOT NULL,
  `telegram_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `group_links`
--

INSERT INTO `group_links` (`id`, `whatsapp_link`, `telegram_link`) VALUES
(1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_members`
--

CREATE TABLE `staff_members` (
  `id` int(11) UNSIGNED NOT NULL,
  `staff_id` varchar(50) NOT NULL,
  `staff_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_members`
--

INSERT INTO `staff_members` (`id`, `staff_id`, `staff_name`, `email`, `phone`, `password`, `status`, `created_at`) VALUES
(27, 'Staff003', 'news', 'news@gmail.com', '789654', '12345', 'active', '2024-10-11 09:20:49'),
(30, 'Staff005', 'soni', 'soni@gmail.com', '896574123', '1234', 'active', '2024-10-14 08:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(25, 'Admin', 'admin@admin.com', '$2y$10$peh94Z.mZ28kkTxAw/RDPOaIrf69y/voEt5ss5y1frXA6EcvQ4vx.', '2024-09-27 05:57:10'),
(26, 'S', 'nishad104@gmail.com', '$2y$10$gIeqZ.SmEpnjrZIrDWry6Our.z7ng7S9GTAQ4R8fojf0IK9LLN4tu', '2024-10-11 06:15:37'),
(27, 'demo', 'demo@gmail.com', '$2y$10$V6lcJJCX88jR9sejW9U8Qug3y8cW68KEBxllH1ZSg.PMI330H7lPG', '2024-10-11 06:34:38'),
(28, 'somika', 'somika@gmail.com', '$2y$10$GtW5P6u920Vdjo5OUdAbDeCHaMgNQpgD8DPGxIjXoIUiCZkbLqezS', '2024-10-14 08:42:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driver_info`
--
ALTER TABLE `driver_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms_filled`
--
ALTER TABLE `forms_filled`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `group_links`
--
ALTER TABLE `group_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `token` (`token`);

--
-- Indexes for table `staff_members`
--
ALTER TABLE `staff_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_id` (`staff_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `driver_info`
--
ALTER TABLE `driver_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `forms_filled`
--
ALTER TABLE `forms_filled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_links`
--
ALTER TABLE `group_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_members`
--
ALTER TABLE `staff_members`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `forms_filled`
--
ALTER TABLE `forms_filled`
  ADD CONSTRAINT `forms_filled_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff_members` (`staff_id`) ON DELETE CASCADE;
--
-- Database: `ida2`
--
CREATE DATABASE IF NOT EXISTS `ida2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ida2`;

-- --------------------------------------------------------

--
-- Table structure for table `driver_info`
--

CREATE TABLE `driver_info` (
  `id` int(11) NOT NULL,
  `staff_id` int(50) NOT NULL,
  `driver_mode` varchar(50) NOT NULL,
  `driver_name` varchar(255) NOT NULL,
  `driver_photo` varchar(255) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `dl_number` varchar(20) NOT NULL,
  `area_postal_code` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `dob` date NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `license_expiry` date NOT NULL,
  `vehicle_type` enum('car','truck','motorcycle','bus') NOT NULL,
  `password` varchar(255) NOT NULL,
  `signature_image` varchar(255) DEFAULT NULL,
  `signature_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms_filled`
--

CREATE TABLE `forms_filled` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(50) NOT NULL,
  `form_name` varchar(255) NOT NULL,
  `submission_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_links`
--

CREATE TABLE `group_links` (
  `id` int(11) NOT NULL,
  `whatsapp_link` varchar(255) NOT NULL,
  `telegram_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `group_links`
--

INSERT INTO `group_links` (`id`, `whatsapp_link`, `telegram_link`) VALUES
(1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_members`
--

CREATE TABLE `staff_members` (
  `id` int(11) UNSIGNED NOT NULL,
  `staff_id` varchar(50) NOT NULL,
  `staff_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(25, 'Admin', 'admin@admin.com', '$2y$10$peh94Z.mZ28kkTxAw/RDPOaIrf69y/voEt5ss5y1frXA6EcvQ4vx.', '2024-09-27 05:57:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driver_info`
--
ALTER TABLE `driver_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms_filled`
--
ALTER TABLE `forms_filled`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `group_links`
--
ALTER TABLE `group_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `token` (`token`);

--
-- Indexes for table `staff_members`
--
ALTER TABLE `staff_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_id` (`staff_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `driver_info`
--
ALTER TABLE `driver_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `forms_filled`
--
ALTER TABLE `forms_filled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_links`
--
ALTER TABLE `group_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_members`
--
ALTER TABLE `staff_members`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `forms_filled`
--
ALTER TABLE `forms_filled`
  ADD CONSTRAINT `forms_filled_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff_members` (`staff_id`) ON DELETE CASCADE;
--
-- Database: `laravel-learing`
--
CREATE DATABASE IF NOT EXISTS `laravel-learing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel-learing`;

-- --------------------------------------------------------

--
-- Table structure for table `firstproject`
--

CREATE TABLE `firstproject` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `firstproject`
--

INSERT INTO `firstproject` (`id`, `name`, `email`, `password`) VALUES
(1, 'bittu', 'bittu@gmail.com', 1234);
--
-- Database: `laraveldb`
--
CREATE DATABASE IF NOT EXISTS `laraveldb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laraveldb`;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `enquirytext` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
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
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `lifestylestoresql`
--
CREATE DATABASE IF NOT EXISTS `lifestylestoresql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lifestylestoresql`;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'Canon EOS', 36000),
(2, 'Nikon DSLR', 40000),
(3, 'Sony DSLR', 45000),
(4, 'Olympus DSLR', 50000),
(5, 'Titan Model #301', 13000),
(6, 'Titan Model #201', 3000),
(7, 'HMT Milan', 8000),
(8, 'Faber Luba #111', 18000),
(9, 'H&W', 800),
(10, 'Luis Phil', 1000),
(11, 'Jhon Zok', 1500),
(12, 'Jhalsani', 1300);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `contact` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `city` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

CREATE TABLE `users_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirm','','') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_items`
--
ALTER TABLE `users_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_items`
--
ALTER TABLE `users_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `lowyer`
--
CREATE DATABASE IF NOT EXISTS `lowyer` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lowyer`;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `number` varchar(13) NOT NULL,
  `place` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `name`, `email`, `number`, `place`, `date`, `time`) VALUES
(4, 'maheknishad', 'mahek@gmail.com', '9631495425', 'gonda', '2023-04-14', '03:48:00'),
(2, 'bittu', 'bittu@gmail.com', '4652312465', 'mumbai', '2023-03-28', '16:05:00'),
(3, 'soumya', 'soumya@gmail.com', '3216549870', 'gonda', '2023-04-27', '16:06:00'),
(5, 'nikki', 'nikki@gmail.com', '4652312465', 'lko', '2023-04-19', '03:48:00'),
(6, 'ritesh', 'ritesh@gmail.com', '7894651320', 'delhi', '0000-00-00', '08:45:00'),
(8, 'soni ', 'soninishad7860@gmail.com', '784651320', 'gonda ', '2023-07-11', '00:00:00'),
(9, 'munni', 'munni@gmail.com', '3216549870', 'jhb', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'soni', 'soninishad7860@gmail.com', 'hlo', 'dfhgfkj'),
(2, 'Soni Nishad', 'janavi@gmail.com', 'hlo', 'hvhg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `myproject`
--
CREATE DATABASE IF NOT EXISTS `myproject` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `myproject`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form`
--

CREATE TABLE `tbl_form` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_form`
--
ALTER TABLE `tbl_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_form`
--
ALTER TABLE `tbl_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `nurseray_plant`
--
CREATE DATABASE IF NOT EXISTS `nurseray_plant` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nurseray_plant`;

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `paragraph` text NOT NULL,
  `image` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `heading`, `paragraph`, `image`) VALUES
(15, 'We Are On Mission', 'Ssss Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget', 'img_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `about_thought`
--

CREATE TABLE `about_thought` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `paragraph` longtext NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_thought`
--

INSERT INTO `about_thought` (`id`, `heading`, `paragraph`, `image`) VALUES
(1, 'We Are On Mission', 'We Are On Mission\r\nAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget\r\n\r\nAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget', 'about_2.jpg'),
(2, 'We Are On Mission2', 'Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget', 'img_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `image`, `account_name`, `username`, `password`) VALUES
(1, 'logo2.jpeg', 'Administrator', 'admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `id` int(11) NOT NULL,
  `image` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`id`, `image`) VALUES
(6, 'project_6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `choose`
--

CREATE TABLE `choose` (
  `id` int(11) NOT NULL,
  `bg_image` varchar(2000) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `heading` text NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `choose`
--

INSERT INTO `choose` (`id`, `bg_image`, `image`, `heading`, `title`) VALUES
(1, 'banner1.jpg', '22.jpg', 'We Are On Mission', 'Anch'),
(6, '', 'home-left.jpg', 'Lab', 'Cras dapibus Vivamus elementum semper.ss');

-- --------------------------------------------------------

--
-- Table structure for table `choose_bg`
--

CREATE TABLE `choose_bg` (
  `id` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `choose_bg`
--

INSERT INTO `choose_bg` (`id`, `image`) VALUES
(1, 'project_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `address` varchar(1000) NOT NULL,
  `area` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `amount` varchar(5000) NOT NULL,
  `gardner` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `image`, `client_name`, `description`, `address`, `area`, `date`, `amount`, `gardner`) VALUES
(15, '1.jpg', ' Company 2', 'Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget mi act fermentum phasellus.', 'Mumbai', '500,00 m2', '2023-05-22', '4000 $', 'abc'),
(16, 'small-1-1.jpg', ' Garden Company', 'Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt.  Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt.', ' London Donec eleifend', '500,0000 m2', '2023-05-22', '550.000', 'Gary'),
(17, '19.jpg', ' Company 3', 'Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget mi act fermentum phasellus.', 'india', '7000 m', '2023-05-22', '7000 rs', 'XYZ');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `about` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `about`) VALUES
(1, ' Quasi incidunt, autem doloremque ab tempore cum vero id fug  Quasi incidunt, autem doloremque ab tempore cum vero id fug  Quasi incidunt, autem doloremque ab tempore cum vero id fug Quasi incidunt, autem doloremque ab tempor');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id` int(11) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contactno` varchar(13) NOT NULL,
  `contactinfo` varchar(13) NOT NULL,
  `social_media` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id`, `address`, `email`, `contactno`, `contactinfo`, `social_media`) VALUES
(1, 'Mujasa,Malihabad, 226102', 'Info@newmauryanursery.com', '9918887810', '123456789', '');

-- --------------------------------------------------------

--
-- Table structure for table `home_content`
--

CREATE TABLE `home_content` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `paragraph` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_content`
--

INSERT INTO `home_content` (`id`, `heading`, `paragraph`) VALUES
(1, 'Welcome To New Maurya Nursery ', 'Soni Lorem ipsum dolor, sit amet consectetur adipisicing elit. Delectus pariatur eaque alias eveniet doloribus tenetur magnam neque culpa ipsa! Repellendus vel modi doloribus. Id veritatis voluptas iste harum perspiciatis odio molestiae dignissimos quo numquam cum alias, similique, doloribus consequatur cupiditate? Perspiciatis repellat eaque officia. Quasi incidunt, autem doloremque ab tempore cum vero id fugiat! Quas fugiat ut impedit quisquam soluta illo, temporibus magni aperiam, numquam doloremque quos quae delectus consequuntur voluptate iure, porro repellendus eos? Autem recusandae deleniti fuga. Commodi esse nulla harum expedita deleniti itaque sequi, ea consequuntur earum unde aliquam explicabo molestias incidunt ratione voluptatibus ex ipsa debitis.');

-- --------------------------------------------------------

--
-- Table structure for table `login_background`
--

CREATE TABLE `login_background` (
  `id` int(11) NOT NULL,
  `image` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_background`
--

INSERT INTO `login_background` (`id`, `image`) VALUES
(1, 'bground.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `image`) VALUES
(1, 'newmauryanursery.png');

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE `map` (
  `id` int(11) NOT NULL,
  `map` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `map`
--

INSERT INTO `map` (`id`, `map`) VALUES
(5, ' <iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14238.605591357265!2d80.9981468!3d26.8510379!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1684484088471!5m2!1sen!2sin\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `heading` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `image`, `heading`) VALUES
(2, '9.jpg', 'media 1'),
(4, '7.jpg', 'media 3');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `heading` text NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `url` varchar(225) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `image`, `heading`, `title`, `description`, `url`, `created_date`, `updated_date`) VALUES
(2, 'project_1.jpg', 'Anch', 'Aenean suscipit eget mi act fermentum', 'ean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AeAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AeAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AeAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Ae\r\n\r\n', 'https://api.whatsapp.com/send?phone=', '0000-00-00', '2023-05-17'),
(3, 'project-img1.jpg', 'Garden Services', 'Aenean suscipit eget mi act fermentum phasellus vulputate .', '', '', '0000-00-00', '0000-00-00'),
(4, 'project_4.jpg', 'heading', 'Aenean suscipit eget mi act fermentum phase', 'At vero eos et rebumvAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumvAt vero eos et rebumAt vero eos et rebum', '', '0000-00-00', '2023-05-05'),
(5, 'project_6.jpg', 'Garden Services', ' eget mi act fermentum ', 'At vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebum', '', '0000-00-00', '2023-05-05'),
(6, 'project_1.jpg', 'Garden Services', 'Welcome To Our New Maurya Nursery', 'At vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumvvAt vero eos et rebumAt vero eos et rebumAt vero eos et rebum', '', '2023-05-03', '2023-05-05'),
(7, 'project_5.jpg', 'Garden Services', 'At vero eos et rebum', 'At vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebumAt vero eos et rebum', '', '2023-05-05', '0000-00-00'),
(9, '2.png', 'Flower', 'Flowers', '', '', '2023-05-14', '2023-05-14');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `title` text NOT NULL,
  `paragraph` text NOT NULL,
  `description` longtext NOT NULL,
  `url` varchar(225) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `image`, `title`, `paragraph`, `description`, `url`, `created_date`, `updated_date`) VALUES
(2, 'project_2.jpg', 'Tree Planting', 'Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Ae', 'Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AeAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AeAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AeAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AeAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Ae\r\n', 'https://api.whatsapp.com/send?phone=', '0000-00-00', '2023-05-17'),
(3, 'img_3.jpg', 'Watering', 'Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Ae', 'Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AeAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AeAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AeAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Ae', '', '0000-00-00', '2023-05-02'),
(5, '2.jpg', 'Grass', 'Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Ae', 'Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AeAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AevAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AeAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AeAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AeAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Ae', '', '0000-00-00', '2023-05-03'),
(6, 'img_2.jpg', 'Gardening', 'Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Ae', 'Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AeAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AeAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AeAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. AeAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Ae', '', '0000-00-00', '2023-05-02'),
(7, 'img_4.jpg', 'Water', 'Aenean suscipit eget mt. enean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget', 'Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget', '', '0000-00-00', '2023-05-14'),
(9, 'img_2.jpg', 'Flower', 'Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. ', 'Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget Aenean suscipit eget mi act fermentum phasellus vulputate turpis tiAenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget.. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget Aenean suscipit eget mi act fermentum phasellus vulputate turpis ti', '', '0000-00-00', '0000-00-00'),
(11, '4.jpg', 'Gardening', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. LoremLorem Ipsum is simply dummy text of the printing and typesetting industry. LoremLorem Ipsum is simply dummy text of the printing and typesetting industry. LoremLorem Ipsum is simply dummy text of the printing and typesetting industry. LoremLorem Ipsum is simply dummy text of the printing and typesetting industry. LoremLorem Ipsum is simply dummy text of the printing and typesetting industry. LoremLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem', '', '0000-00-00', '2023-05-02'),
(14, 'img_1.jpg', 'Treee', 'Lorem Ipsum is simply dummy text of the printing and type', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. LoremLorem Ipsum is simply dummy text of the printing and typesetting industry. LoremLorem Ipsum is simply dummy text of the printing and typesetting industry. LoremLorem Ipsum is simply dummy text of the printing and typesetting industry. LoremLorem Ipsum is simply dummy text of the printing and typesetting industry. LoremLorem Ipsum is simply dummy text of the printing and typesetting industry. LoremLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem', '', '2023-05-02', '2023-05-02');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `image` varchar(10000) NOT NULL,
  `heading` text NOT NULL,
  `sub_heading` text NOT NULL,
  `paragraph` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image`, `heading`, `sub_heading`, `paragraph`) VALUES
(2, 'banner3.jpg', 'Slider2', 'sub-heading', 'We Provide Best lawn Service'),
(3, 'banner2.jpg', 'slider3', 'We Provide Best lawn Service', 'We Provide Best lawn Service'),
(9, 'banner5.jpg', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `icons` varchar(225) NOT NULL,
  `url` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `icons`, `url`) VALUES
(1, 'fa fa-instagram', 'https://www.youtube.com/'),
(3, 'fa fa-facebook', 'https://www.youtube.com/'),
(4, 'fa fa-youtube', 'https://www.youtube.com/'),
(6, 'fa fa-github', 'https://www.youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `image`, `name`, `designation`) VALUES
(1, '2.jpeg', 'Divi', 'Backend developer'),
(2, '3.jpeg', 'Ameesha', 'PHP'),
(3, 'profile.jpg', 'soni', 'php'),
(7, '1 (1).jpeg', 'Anisha', 'developer'),
(11, 'logo.jpg', 'logo', 'logo'),
(12, 'sn.jpg', 'Soni Nishad', 'Backend developer');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `title` text NOT NULL,
  `heading` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `image`, `title`, `heading`) VALUES
(1, '1.jpg', 'title1', 'We Are On Mission'),
(6, 'small-1-1.jpg', 'titile2', 'testimonial2'),
(7, 'small-4-1.jpg', 'title2', 'heading'),
(8, '3.jpg', 'dev', 'Android Developer '),
(14, 'blog.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_bg`
--

CREATE TABLE `testimonial_bg` (
  `id` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonial_bg`
--

INSERT INTO `testimonial_bg` (`id`, `image`) VALUES
(1, 'project_3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `welcome_content`
--

CREATE TABLE `welcome_content` (
  `id` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `heading` text NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `welcome_content`
--

INSERT INTO `welcome_content` (`id`, `image`, `heading`, `title`) VALUES
(1, '1.png', ' Technology', 'Lorem Ipsum is simply dummy text of the printing and industry.'),
(2, '5.png', 'Design', 'Lorem Ipsum is simply dummy text of the printing and industry.'),
(3, '3.png', 'Music', 'Lorem Ipsum is simply dummy text of the printing and industry.'),
(6, '6.png', 'Lab', 'Lorem Ipsum is simply dummy text of the printing and industry.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_thought`
--
ALTER TABLE `about_thought`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choose`
--
ALTER TABLE `choose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choose_bg`
--
ALTER TABLE `choose_bg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_content`
--
ALTER TABLE `home_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_background`
--
ALTER TABLE `login_background`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial_bg`
--
ALTER TABLE `testimonial_bg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `welcome_content`
--
ALTER TABLE `welcome_content`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `about_thought`
--
ALTER TABLE `about_thought`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `background`
--
ALTER TABLE `background`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `choose`
--
ALTER TABLE `choose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `choose_bg`
--
ALTER TABLE `choose_bg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_content`
--
ALTER TABLE `home_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login_background`
--
ALTER TABLE `login_background`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `map`
--
ALTER TABLE `map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `testimonial_bg`
--
ALTER TABLE `testimonial_bg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `welcome_content`
--
ALTER TABLE `welcome_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `phpdb`
--
CREATE DATABASE IF NOT EXISTS `phpdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `phpdb`;

-- --------------------------------------------------------

--
-- Table structure for table `empinfo`
--

CREATE TABLE `empinfo` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `contactno` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `empinfo`
--

INSERT INTO `empinfo` (`name`, `gender`, `emailaddress`, `password`, `address`, `contactno`) VALUES
('Soni Nishad', 'female', 'soninishad7860@gmail.com', '123456', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `friendinfo`
--

CREATE TABLE `friendinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `profilepic` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `friendinfo`
--

INSERT INTO `friendinfo` (`id`, `name`, `gender`, `address`, `contactno`, `profilepic`) VALUES
(6, 'mahek', 'Female', 'mumbai', '123654987', '1666634174924.jpeg'),
(7, 'nikki', 'Female', 'delhi', '7988451221', '1666634174924.jpeg'),
(9, 'ritesh', 'Male', 'mumbai', '8874512045', '1666634175120.jpg'),
(11, 'soumya', 'Female', 'dubai', '9874565120', 'IMG20221024215311.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `id` int(11) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `fileupload` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id`, `filename`, `fileupload`) VALUES
(1, '', 'Soni .pdf'),
(2, '', 'Soni Cover Letter.pdf'),
(3, '', 'Email-writing.pdf'),
(4, '', 'Email-writing.docx'),
(5, 'Shoiab', 'soumya project.pdf'),
(6, '', 'SONI NISHAD.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `emailaddress` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`id`, `name`, `gender`, `address`, `contactno`, `emailaddress`) VALUES
(6, 'mahek', 'Female', 'lko', '7441228963', 'mahek@gmail.com'),
(7, 'komal', 'Female', 'lalbhag', '78946132', 'komal@gmail.com'),
(8, 'monu', 'Male', 'dubai\r\n', '7984132', 'monu@gmail.com'),
(5, 'soumya', 'Female', 'gonda', '1234567890', 'soumya@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empinfo`
--
ALTER TABLE `empinfo`
  ADD PRIMARY KEY (`emailaddress`);

--
-- Indexes for table `friendinfo`
--
ALTER TABLE `friendinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friendinfo`
--
ALTER TABLE `friendinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"rent-right-banglore\",\"table\":\"customer_register\"},{\"db\":\"rent-right-banglore\",\"table\":\"contact_requests\"},{\"db\":\"rent-right-banglore\",\"table\":\"properties\"},{\"db\":\"rent-right-banglore\",\"table\":\"admin_register\"},{\"db\":\"ida\",\"table\":\"driver_info\"},{\"db\":\"ida2\",\"table\":\"staff_members\"},{\"db\":\"ida2\",\"table\":\"users\"},{\"db\":\"ida\",\"table\":\"staff_members\"},{\"db\":\"ida2\",\"table\":\"driver_info\"},{\"db\":\"ida\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-10-04 11:08:58', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `poorva_projct`
--
CREATE DATABASE IF NOT EXISTS `poorva_projct` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `poorva_projct`;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `submitted_at`) VALUES
(1, 'Soni nishad', 'nishadsoni104@gmail.com', 'jhgjgj', '2024-09-25 06:49:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `rent-right-banglore`
--
CREATE DATABASE IF NOT EXISTS `rent-right-banglore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rent-right-banglore`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_register`
--

CREATE TABLE `admin_register` (
  `id` int(50) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_register`
--

INSERT INTO `admin_register` (`id`, `username`, `email`, `password`) VALUES
(2, 'admin1', 'admin@gmail.com', '$2y$10$SNMUA73JTK4nNYbjC2ThteimF964yOK3uZv8Jottv2D5IerVHMu0q');

-- --------------------------------------------------------

--
-- Table structure for table `bhk_searches`
--

CREATE TABLE `bhk_searches` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bhk_searches`
--

INSERT INTO `bhk_searches` (`id`, `name`) VALUES
(2, '1 BHK Flats in Bangalore'),
(3, '2 BHK Flats in Bangalore'),
(4, '3 BHK Flats in Bangalore'),
(5, '4 BHK Flats in Bangalore ');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(225) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `booking_date` date NOT NULL,
  `submit_date` date NOT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `booking_status` varchar(255) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `booking_id`, `name`, `email`, `mobile`, `address`, `payment_mode`, `booking_date`, `submit_date`, `service_name`, `booking_status`) VALUES
(8, 'booking_66b0c6cde02a29.51885704', 'Soni nishad', 'nishadsoni104@gmail.com', '8005089374', 'Ruskam bihar colony nadarganj, lko', 'cash', '2024-08-21', '2024-08-05', 'Electrician', 'pending'),
(9, 'booking_66b0c75ed8ca17.65985298', 'Soni ', 'soni104@gmail.com', '8005089374', 'Ruskam bihar colony nadarganj, lko', 'cash', '2024-08-21', '2024-08-05', 'Water Purifier', 'Cancel'),
(11, 'booking_66b5a72845b452.26310403', 'Soni Nishad', 'soni@genxwebhosting.us', '8005089374', 'Rustam Vihar Colony Near Cipet College', 'cash', '2024-08-30', '2024-08-09', 'Electrician', 'pending'),
(12, 'booking_66bca2a200ffd7.57618383', 'montu', 'montu@gmail.com', '8520741963', 'Ruskam bihar colony nadarganj, lko', 'cash', '2024-08-16', '2024-08-14', 'kjkbk', 'pending'),
(13, 'booking_66bca37da92fd2.64188136', 'minu', 'minu@gmail.com', '8965741230', 'Ruskam bihar colony nadarganj, lko', 'cash', '2024-08-31', '2024-08-14', '3BHK', 'pending'),
(14, 'booking_66d19666251da8.96372734', 'ee', 'ss@gmail.com', '2365987410', 'jh', 'cash', '2024-08-15', '2024-08-30', 'service2', 'pending'),
(17, 'booking_6707b8f0eb3b86.14292262', 'Soni nishad', 'nishadsoni104@gmail.com', '0800089374', 'Ruskam bihar colony nadarganj, lko', 'cash', '2024-10-24', '2024-10-10', 'Fabrication', 'pending'),
(18, 'booking_6707bd5a4ac623.02053932', 'Soni nishad', 'nishadsoni104@gmail.com', '0855089374', 'Ruskam bihar colony nadarganj, lko', 'cash', '2024-11-01', '2024-10-10', 'Plumbing', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `contact_requests`
--

CREATE TABLE `contact_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `contacted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_register`
--

CREATE TABLE `customer_register` (
  `id` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `emailaddress` varchar(100) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL,
  `date` varchar(60) NOT NULL,
  `status` enum('active','blocked') DEFAULT 'active',
  `user_unique_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_register`
--

INSERT INTO `customer_register` (`id`, `name`, `emailaddress`, `phonenumber`, `password`, `date`, `status`, `user_unique_id`) VALUES
(1, 'soumya', 'soumya@gmail.com', '85962520', '$2y$10$uhRzGcf1.utlvU2GF9gM2.2Qjf2ucAb89XPFzG6omeUR0269RE6Gq', '2024-07-31 08:11:35', 'active', 'user_66a9d597800973.47838801'),
(3, 'user', 'user@gmail.com', '2147483647', '$2y$10$WVgx7jVJucH.jnFVvEevm.Lr.hVwDNbo2Pw5BbghhZrZsxOqiMBWm', '2024-07-31 08:31:44', 'active', 'user_66a9da5093a2e2.66230031'),
(4, 'newuser', 'nuser@gmail.com', '4454546565', '$2y$10$UBXDAa6301EIOCdBR4nqiO7aA1kRef6GgHaVtyJjCCrp1SXaplhGK', '2024-08-01 10:12:41', 'active', 'user_66ab43799fd7d6.75380354'),
(7, 'Soni ', 's@gmmail.com', '8520963147', '$2y$10$tpG8EEH6IdyPrB4Sd.ZwnuuydebDnD982CHVZeujkPsKUGBv.oMQ2', '2024-08-09 11:38:05', 'active', 'user_66b5e37d6fa6e5.60555237'),
(8, 'Soni nishad', 'nishadsoni104@gmail.com', '08005089374', '$2y$10$l5MxHRcp3K8RiNgQWw8B4Ow1eJg85lqEu4c0375w24QwQmTR4hTpS', '2024-08-14 12:57:07', 'active', 'user_66bc8d836c7192.83988861');

-- --------------------------------------------------------

--
-- Table structure for table `dropdown_values`
--

CREATE TABLE `dropdown_values` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dropdown_values`
--

INSERT INTO `dropdown_values` (`id`, `value`) VALUES
(1, 'Rent'),
(2, 'Sale'),
(3, 'Commercial'),
(4, 'Movers & Packers'),
(5, 'Electrician'),
(6, 'Plumbing'),
(7, 'Cleaning services'),
(8, 'Interiors'),
(9, 'Exteriors');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `user_id`, `property_id`, `message`, `created_at`) VALUES
(2, 4, 2, 'test test hjhjhhhj hhggjhjhkjbvn', '2024-08-07 18:18:10'),
(4, 1, 16, 'hyy new userrrr', '2024-08-07 18:23:24'),
(5, 1, 2, 'hyyy test test hhyyy hhyy tset tset', '2024-08-07 18:24:42'),
(8, 3, 3, 'hgvcgcg   hgvgvy   hggggu  hgghggh uygyg ', '2024-09-02 19:03:32'),
(10, 3, 9, 'hlo hyy hyyy hyyy ', '2024-10-04 14:02:14'),
(11, 3, 16, 'jhvjhvgjvgjvghvgvgvhgvgvgvgjvjgvjcgcgcgj', '2024-10-10 17:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `property_id`, `user_id`, `message`, `created_at`) VALUES
(20, 8, 1, 'hghgghgfchg fhftcyy vhg', '2024-08-03 12:38:18'),
(21, 2, 4, 'User ID: 4 has sent an enquiry for Property ID: 2.', '2024-08-07 11:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `email` varchar(225) NOT NULL,
  `address` varchar(255) NOT NULL,
  `bill_no` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date NOT NULL,
  `status` enum('Active','Paid','Overdue') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `customer_name`, `email`, `address`, `bill_no`, `amount`, `tax`, `total_amount`, `invoice_date`, `due_date`, `status`, `created_at`) VALUES
(3, 'soni', '', 'lko', 1, 5000.00, 20.00, 5020.00, '2024-08-16', '2024-08-15', 'Paid', '2024-08-05 03:39:39'),
(4, 'soni', '', 'kanpur', 2, 5000.00, 20.00, 5020.00, '2024-08-16', '2024-08-15', 'Overdue', '2024-08-05 03:41:44'),
(5, 'soni', '', 'noida', 3, 5000.00, 20.00, 5020.00, '2024-08-16', '2024-08-15', 'Overdue', '2024-08-05 04:12:55'),
(6, 'soni', '', 'delhi', 4, 5000.00, 20.00, 5020.00, '2024-08-16', '2024-08-15', 'Overdue', '2024-08-05 04:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `owner_messages`
--

CREATE TABLE `owner_messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner_messages`
--

INSERT INTO `owner_messages` (`id`, `user_id`, `property_id`, `message`, `created_at`) VALUES
(3, 4, 8, 'hyyy me soni', '2024-08-04 09:49:04'),
(8, 4, 8, 'bbhg', '2024-08-07 11:53:48');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `invoice_updated` enum('pending','updated') NOT NULL DEFAULT 'pending',
  `payment_status` enum('pending','paid','failed') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `bhk_type` varchar(50) DEFAULT NULL,
  `property_type` varchar(50) DEFAULT NULL,
  `build_up_area` float DEFAULT NULL,
  `property_age` varchar(50) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `total_floor` int(11) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `available_for` varchar(100) DEFAULT NULL,
  `expected_rent` decimal(10,2) DEFAULT NULL,
  `expected_deposit` decimal(10,2) DEFAULT NULL,
  `maintenance` varchar(50) DEFAULT NULL,
  `available_from` date DEFAULT NULL,
  `preferred_tenants` varchar(100) DEFAULT NULL,
  `furnishing` varchar(50) DEFAULT NULL,
  `parking` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `bathrooms` int(11) DEFAULT NULL,
  `balcony` int(11) DEFAULT NULL,
  `water_supply` varchar(50) DEFAULT NULL,
  `amenities` varchar(255) DEFAULT NULL,
  `file_upload` varchar(255) NOT NULL,
  `availability` varchar(255) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `available_all` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `property_status` varchar(50) DEFAULT 'Pending',
  `date` date NOT NULL DEFAULT curdate(),
  `approval_status` varchar(20) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `bhk_type`, `property_type`, `build_up_area`, `property_age`, `floor`, `total_floor`, `city`, `available_for`, `expected_rent`, `expected_deposit`, `maintenance`, `available_from`, `preferred_tenants`, `furnishing`, `parking`, `description`, `bathrooms`, `balcony`, `water_supply`, `amenities`, `file_upload`, `availability`, `start_time`, `end_time`, `available_all`, `created_at`, `user_id`, `property_status`, `date`, `approval_status`) VALUES
(2, '4BHK', 'Building', 2000, '5', 2, 5, 'Hong Kong', 'Sale,Only Lease', 800.00, 78.00, NULL, '2024-09-18', NULL, 'Fully-Furnished', NULL, 'sonini', 1, 1, 'Municipal', 'House Keeping', '../uploads/hiring.png', '', '00:00:00', '00:00:00', 1, '2024-07-15 11:55:34', 2, 'Pending', '2024-07-31', 'Pending'),
(3, '3BHK', 'Site', 2000, '10', 5, 10, 'Delhi, India', 'Rent', 500000.00, 10000.00, 'Maintenance Included', '2024-07-10', 'Family', 'Unfurnished', 'all', 'hgfjygju', 2, 3, 'Municipal', 'Play Area,Club House,Internet Service', '../uploads/1 (10).jpg', 'Weekend (Sat-Sun)', '00:00:00', '00:00:00', 0, '2024-07-31 12:03:42', 3, 'Focus', '2024-07-31', 'Approved'),
(8, 'kjkbk', 'Commercial', 0, '65', 0, 5, 'Lucknow, Uttar Pradesh, India', 'for rent', 50.00, 4.00, '', '2024-09-01', 'company', 'kjbk', '', 'jbkbuk', 1, 1, 'borewell', 'Gym', '../uploads/modern-residential-district-with-green-roof-balcony-generated-by-ai.jpg,../uploads/1 (10).jpg', '', '00:00:00', '00:00:00', 0, '2024-08-01 15:07:29', 4, 'Spotlight', '2024-08-01', 'Rejected'),
(9, '2 bhk', 'Villa', 500, '5', 0, 0, 'Kanpur, Uttar Pradesh, India', 'Rent', 20000.00, 0.00, '', '2024-08-09', '', 'Fully-Furnished', '', 'hjb', 1, 1, 'all', 'Gym', '../uploads/house-isolated-field.jpg,../uploads/modern-residential-district-with-green-roof-balcony-generated-by-ai.jpg', '', '00:00:00', '00:00:00', 0, '2024-08-01 15:09:03', 4, 'Focus', '2024-08-01', 'Rejected'),
(15, '2BHK', 'Site', 5000, '5', 4, 10, 'Mumbai, Maharashtra, India', '', 0.00, 0.00, '', '0000-00-00', '', '', '', '', 1, 1, '', '', '', '', '00:00:00', '00:00:00', 0, '2024-08-06 17:33:33', 4, 'Featured', '2024-08-06', 'Rejected'),
(16, '3BHK', 'Building', 200, '5', 4, 4, 'Karnataka', 'Sale', 0.00, 0.00, '', '0000-00-00', '', '', '', '', 1, 1, '', 'Gym, Power Backup', '../uploads/modern-residential-district-with-green-roof-balcony-generated-by-ai.jpg', 'Weekday (Mon-Fri)', '19:56:00', '21:57:00', 0, '2024-08-06 17:57:09', 4, 'Featured', '2024-08-06', 'Approved'),
(32, '2BHK', 'Building', 200, '3', 10, 2, 'India', 'Sale', 10.00, 6.00, '', '2024-10-29', 'Family', 'Semi-Furnished', '', 'nbbh', 1, 1, 'Borewell', 'Gym,Visitor Parking', '../uploads/right-to-property-is-a-legal-right.jpg,../uploads/istockphoto-1409298953-612x612.jpg,../uploads/photo-1560518883-ce09059eeffa.jpeg,../uploads/istockphoto-1319269543-612x612.jpg', 'Weekday (Mon-Fri)', '00:00:00', '16:55:00', 0, '2024-09-03 16:52:30', 3, 'Trending', '2024-09-03', 'Rejected'),
(33, 'IndependentHouse', 'Villa', 2000, '2', 4, 5, 'HSR Layout, Bengaluru, Karnataka, India', 'Rent', 23.00, 0.00, '', '2024-10-10', '', 'Semi-Furnished', '', 'k', 1, 1, 'Borewell', 'Gym,Power Backup', '../uploads/IMG_20240923_182822_516.jpg,../uploads/IMG_20240923_182819_597.jpg,../uploads/IMG_20240923_182818_375.jpg,../uploads/IMG_20240923_182804_738.jpg,../uploads/IMG_20240923_182824_252.jpg,../uploads/IMG_20240923_182807_959.jpg', '', '00:00:00', '00:00:00', 0, '2024-09-06 11:20:52', 3, 'Trending', '2024-09-06', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `saved_properties`
--

CREATE TABLE `saved_properties` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saved_properties`
--

INSERT INTO `saved_properties` (`id`, `user_id`, `property_id`, `created_at`) VALUES
(77, 4, 1, '2024-08-01 09:06:41'),
(78, 1, 9, '2024-08-01 17:23:41'),
(80, 4, 8, '2024-08-03 12:51:13'),
(82, 2, 2, '2024-09-02 13:36:02'),
(83, 3, 9, '2024-10-04 08:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `save_items`
--

CREATE TABLE `save_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `save_items`
--

INSERT INTO `save_items` (`id`, `user_id`, `property_id`) VALUES
(11, 4, 8),
(13, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_visits`
--

CREATE TABLE `scheduled_visits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `visit_date` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_img` varchar(255) NOT NULL,
  `service_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_img`, `service_name`) VALUES
(4, '66d190bb11c07.png', 'Painting'),
(5, '66d1910b34131.png', 'Packers & Movers'),
(7, '66d2c96d61caa.png', 'Electrician'),
(8, '66d2c99bc8234.png', 'Plumbing'),
(9, '66d2c9b34cbee.png', 'Fabrication'),
(10, '66d2c9cf97717.png', 'Carpenter'),
(11, '66d2c9ede0c9a.png', 'Lift Service'),
(12, '6707b28155517.jpg', 'demo');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_register`
--
ALTER TABLE `admin_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bhk_searches`
--
ALTER TABLE `bhk_searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_requests`
--
ALTER TABLE `contact_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `customer_register`
--
ALTER TABLE `customer_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dropdown_values`
--
ALTER TABLE `dropdown_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `enquiry_ibfk_1` (`property_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bill_no` (`bill_no`);

--
-- Indexes for table `owner_messages`
--
ALTER TABLE `owner_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saved_properties`
--
ALTER TABLE `saved_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `save_items`
--
ALTER TABLE `save_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `scheduled_visits`
--
ALTER TABLE `scheduled_visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_register`
--
ALTER TABLE `admin_register`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bhk_searches`
--
ALTER TABLE `bhk_searches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contact_requests`
--
ALTER TABLE `contact_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_register`
--
ALTER TABLE `customer_register`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dropdown_values`
--
ALTER TABLE `dropdown_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `owner_messages`
--
ALTER TABLE `owner_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `saved_properties`
--
ALTER TABLE `saved_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `save_items`
--
ALTER TABLE `save_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `scheduled_visits`
--
ALTER TABLE `scheduled_visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact_requests`
--
ALTER TABLE `contact_requests`
  ADD CONSTRAINT `contact_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `contact_requests_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);

--
-- Constraints for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD CONSTRAINT `enquiries_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `customer_register` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enquiries_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD CONSTRAINT `enquiry_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enquiry_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `customer_register` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `save_items`
--
ALTER TABLE `save_items`
  ADD CONSTRAINT `save_items_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE;
--
-- Database: `searchbar`
--
CREATE DATABASE IF NOT EXISTS `searchbar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `searchbar`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`) VALUES
(1, 'car'),
(2, 'bike');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `name`, `price`, `created_at`) VALUES
(1, 1, 'BMW\r\n', '200', '2024-08-29 06:02:59'),
(2, 1, 'Audi', '150', '2024-08-29 06:02:59'),
(3, 2, 'ktm', '5000', '2024-08-29 06:20:16'),
(4, 2, 'raven', '', '2024-08-29 06:20:32'),
(5, 2, 'Raven', '8000', '2024-08-29 06:21:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `sms`
--
CREATE DATABASE IF NOT EXISTS `sms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sms`;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `contact`) VALUES
(1, 'Sohail Akhter', 'sohailktr999@gmail.com', '8981725907'),
(2, 'OTP', 'soni@genxwebhosting.us', '8005089374'),
(3, 'OTP', 'soni@genxwebhosting.us', '8005089374'),
(4, 'OTP', 'soni@genxwebhosting.us', '8005089374'),
(5, 'ss', 'soni@genxwebhosting.us', '8005089374'),
(6, 'ss', 'soni@genxwebhosting.us', '8005089374'),
(7, 'ss', 'soni@genxwebhosting.us', '8005089374');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `student`
--
CREATE DATABASE IF NOT EXISTS `student` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `student`;

-- --------------------------------------------------------

--
-- Table structure for table `studentdata`
--

CREATE TABLE `studentdata` (
  `id` int(13) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentdata`
--

INSERT INTO `studentdata` (`id`, `name`, `age`, `city`) VALUES
(1, '', 0, ''),
(2, '', 0, ''),
(3, '', 0, ''),
(4, 'sN', 12, 'lko'),
(5, 'sN', 12, 'lko');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`) VALUES
(1, 'soni', 'nis'),
(5, 'soumya', 'nishad'),
(6, 'r', 'nishad'),
(7, 'A', 'N'),
(8, 'abc', 'xyz'),
(9, 'abc', 'xyz'),
(10, 'abcd', 'xyz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `studentdata`
--
ALTER TABLE `studentdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `studentdata`
--
ALTER TABLE `studentdata`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
