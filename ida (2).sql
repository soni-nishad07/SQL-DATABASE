-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2024 at 08:44 AM
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
-- Database: `ida`
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
