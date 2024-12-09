-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2023 at 05:59 PM
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
('root', '[{\"db\":\"nurseray_plant\",\"table\":\"about\"},{\"db\":\"nurseray_plant\",\"table\":\"testimonial\"},{\"db\":\"nurseray_plant\",\"table\":\"slider\"},{\"db\":\"nurseray_plant\",\"table\":\"header\"},{\"db\":\"nurseray_plant\",\"table\":\"admin_login\"},{\"db\":\"dynamicp1\",\"table\":\"admin_login\"}]');

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
('root', '2023-05-15 06:35:10', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"en_GB\"}');

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
-- Database: `practicedemo`
--
CREATE DATABASE IF NOT EXISTS `practicedemo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `practicedemo`;

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `roll` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `address` varchar(100) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `year` varchar(10) NOT NULL,
  `contactno` varchar(13) NOT NULL,
  `emailaddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`roll`);
--
-- Database: `restorant`
--
CREATE DATABASE IF NOT EXISTS `restorant` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restorant`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `image`, `account_name`, `username`, `password`) VALUES
(1, '1 (17).jpg', 'Administrator', 'admin', 'admin12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `session`
--
CREATE DATABASE IF NOT EXISTS `session` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `session`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE `tbl_register` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `password` varchar(50) NOT NULL,
  `conpassword` varchar(50) NOT NULL,
  `photo_name` varchar(50) NOT NULL,
  `photo_type` varchar(50) NOT NULL,
  `photo_tmp` varchar(50) NOT NULL,
  `occupation` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_register`
--

INSERT INTO `tbl_register` (`id`, `name`, `gender`, `email`, `mobile`, `password`, `conpassword`, `photo_name`, `photo_type`, `photo_tmp`, `occupation`) VALUES
(1, 'soni', 'female', 'soni@gmail.com', '7894561230', '', '', 'profile.jpg', 'image/jpeg', 'C:wamp64	mpphp4721.tmp', 'user'),
(2, 'soni', 'female', 'soni@gmail.com', '8957376152', '1234', '1234', 'profile.jpg', 'image/jpeg', 'C:wamp64	mpphpEEEA.tmp', 'Doctor');

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
-- Database: `webathon`
--
CREATE DATABASE IF NOT EXISTS `webathon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `webathon`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `emailaddress`, `password`) VALUES
(1, 'soni@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `emailaddress`, `password`, `contactno`, `address`) VALUES
(2, 'soni', 'soni@gmail.com', '1234', '123456789', 'lko'),
(3, 'Soni Nishad', 'soninishad7860@gmail.com', '12345678', '7894561230', 'Rustam Vihar Colony Near  \r\n Madina guest house ,Cipet College , Nadarganj  Lucknow'),
(4, 'soumya', 'soumya@gmail.com', '7894', '7894561230', 'lko'),
(5, '', 'son@gamil.com', '7894', '123654987', 'lko'),
(6, 'shakil', 'shakil@gamil.com', '123456', '7894561230', 'bihar'),
(7, 'som', 'som@gmail.com', '1234', '1234569870', 'lko'),
(8, 'Soni Nishad', 'soninishad7860@gmail.com', '1234', '1236549870', 'Rustam Vihar Colony Near  \r\n Madina guest house ,Cipet College , Nadarganj  Lucknow'),
(9, 'Soni Nishad', 'soninishad7860@gmail.com', 'son@gmail.com', '789456123', 'Rustam Vihar Colony Near  \r\n Madina guest house ,Cipet College , Nadarganj  Lucknow'),
(10, 'Soni Nishad', 'soni@gmail.com', '7894', '789654123', 'Rustam Vihar Colony Near  \r\n Madina guest house ,Cipet College , Nadarganj  Lucknow'),
(11, 'Soni Nishad', 'soni@gmail.com', '7894', '789654123', 'Rustam Vihar Colony Near  \r\n Madina guest house ,Cipet College , Nadarganj  Lucknow');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wordpress`;
--
-- Database: `zaneshwar`
--
CREATE DATABASE IF NOT EXISTS `zaneshwar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `zaneshwar`;

-- --------------------------------------------------------

--
-- Table structure for table `learnreg`
--

CREATE TABLE `learnreg` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `conpassword` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `learnreg`
--

INSERT INTO `learnreg` (`id`, `name`, `gender`, `email`, `password`, `conpassword`, `address`) VALUES
(7, 'sonu', 'male', 'sonu@gmail.com', '789', '789', 'klm,'),
(11, 'sonu', 'male', 'sonu@gmail.com', '789', '789', 'klm,'),
(12, 'abhinash', 'male', 'abhinash@gmail.com', '7410', '7410', 'delhi\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `psw` varchar(50) NOT NULL,
  `conpsw` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`id`, `name`, `number`, `email`, `psw`, `conpsw`) VALUES
(1, 'bittu', '963149545', 'bittu@gmail.com', '1234', '1234'),
(3, 'mahek', '3216549870', 'mahek@gmail.com', '8520', '8520'),
(4, 'shakil', '9631495425', 'shakil@gmail.com', '7894', '7894'),
(6, 'soumya', '7894651320', 'soumya@gmail.com', '4321', '4321'),
(8, 'nikki', '897465123', 'nikki@gmail.com', '8520', '8520'),
(9, 'amit', '789654122', 'amit@gmail.com', '101010', '101010');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `learnreg`
--
ALTER TABLE `learnreg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `learnreg`
--
ALTER TABLE `learnreg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reg`
--
ALTER TABLE `reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
