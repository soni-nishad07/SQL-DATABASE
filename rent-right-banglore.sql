-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2024 at 02:03 PM
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
-- Database: `rent-right-banglore`
--

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
(10, 'booking_66b0c7d05239a2.09091392', 'sumit', 'soni@gmail.com', '9632587410', 'Ruskam bihar colony nadarganj, lko', 'cash', '2024-08-06', '2024-08-05', 'Exterior', 'Complete'),
(11, 'booking_66b5a72845b452.26310403', 'Soni Nishad', 'soni@genxwebhosting.us', '8005089374', 'Rustam Vihar Colony Near Cipet College', 'cash', '2024-08-30', '2024-08-09', 'Electrician', 'pending'),
(12, 'booking_66bca2a200ffd7.57618383', 'montu', 'montu@gmail.com', '8520741963', 'Ruskam bihar colony nadarganj, lko', 'cash', '2024-08-16', '2024-08-14', 'kjkbk', 'pending'),
(13, 'booking_66bca37da92fd2.64188136', 'minu', 'minu@gmail.com', '8965741230', 'Ruskam bihar colony nadarganj, lko', 'cash', '2024-08-31', '2024-08-14', '3BHK', 'pending'),
(14, 'booking_66d19666251da8.96372734', 'ee', 'ss@gmail.com', '2365987410', 'jh', 'cash', '2024-08-15', '2024-08-30', 'service2', 'pending');

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
(4, 'newuser', 'newuser@gmail.com', '4454546565', '$2y$10$UBXDAa6301EIOCdBR4nqiO7aA1kRef6GgHaVtyJjCCrp1SXaplhGK', '2024-08-01 10:12:41', 'active', 'user_66ab43799fd7d6.75380354'),
(7, 'Soni ', 'soni2@gmmail.com', '8520963147', '$2y$10$tpG8EEH6IdyPrB4Sd.ZwnuuydebDnD982CHVZeujkPsKUGBv.oMQ2', '2024-08-09 11:38:05', 'active', 'user_66b5e37d6fa6e5.60555237'),
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
(1, 4, 1, 'jkhkjhkjhkjh kjhkjhkhkj kjh jkhkjhk', '2024-08-07 14:15:22'),
(2, 4, 2, 'test test hjhjhhhj hhggjhjhkjbvn', '2024-08-07 18:18:10'),
(4, 1, 16, 'hyy new userrrr', '2024-08-07 18:23:24'),
(5, 1, 2, 'hyyy test test hhyyy hhyy tset tset', '2024-08-07 18:24:42'),
(8, 3, 3, 'hgvcgcg   hgvgvy   hggggu  hgghggh uygyg ', '2024-09-02 19:03:32'),
(9, 3, 1, 'hjfhggh  jhghjg  jhgjhgj gygug jhggj ggfhggffgh ', '2024-09-13 23:27:05'),
(10, 3, 9, 'hlo hyy hyyy hyyy ', '2024-10-04 14:02:14');

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
(16, 1, 4, 'mhbjhbjhb kbkb', '2024-08-03 11:35:26'),
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
(1, '1BHK', 'Building', 2000, '2 years', 2, 4, 'kanpur,  Uttar Pradesh, India', 'Only Lease', 5000.00, 1000.00, 'Maintenance Included', '2024-07-04', 'Bachelor Female', 'Semi-Furnished', 'car', 'hgfghfjhg', 2, 2, 'Municipal', 'Power Backup,House Keeping,Club House', '../uploads/modern-residential-district-with-green-roof-balcony-generated-by-ai (1).jpg,../uploads/house-isolated-field (1).jpg,../uploads/modern-residential-district-with-green-roof-balcony-generated-by-ai.jpg', 'Weekday (Mon-Fri)', '11:48:00', '00:00:00', 0, '2024-07-30 11:44:35', 1, 'Spotlight', '2024-07-31', 'Approved'),
(2, '4BHK', 'Building', 2000, '5', 2, 5, 'Hong Kong', 'Sale,Only Lease', 800.00, 78.00, NULL, '2024-09-18', NULL, 'Fully-Furnished', NULL, 'sonini', 1, 1, 'Municipal', 'House Keeping', '../uploads/hiring.png', '', '00:00:00', '00:00:00', 1, '2024-07-15 11:55:34', 2, 'Pending', '2024-07-31', 'Pending'),
(3, '3BHK', 'Site', 2000, '10', 5, 10, 'Delhi, India', 'Rent', 500000.00, 10000.00, 'Maintenance Included', '2024-07-10', 'Family', 'Unfurnished', 'all', 'hgfjygju', 2, 3, 'Municipal', 'Play Area,Club House,Internet Service', '../uploads/1 (10).jpg', 'Weekend (Sat-Sun)', '00:00:00', '00:00:00', 0, '2024-07-31 12:03:42', 3, 'Focus', '2024-07-31', 'Rejected'),
(8, 'kjkbk', 'Commercial', 0, '65', 0, 5, 'Lucknow, Uttar Pradesh, India', 'for rent', 50.00, 4.00, '', '2024-09-01', 'company', 'kjbk', '', 'jbkbuk', 1, 1, 'borewell', 'Gym', '../uploads/modern-residential-district-with-green-roof-balcony-generated-by-ai.jpg,../uploads/1 (10).jpg', '', '00:00:00', '00:00:00', 0, '2024-08-01 15:07:29', 4, 'Spotlight', '2024-08-01', 'Pending'),
(9, '2 bhk', 'Villa', 500, '5', 0, 0, 'Kanpur, Uttar Pradesh, India', 'Rent', 20000.00, 0.00, '', '2024-08-09', '', 'Fully-Furnished', '', 'hjb', 1, 1, 'all', 'Gym', '../uploads/house-isolated-field.jpg,../uploads/modern-residential-district-with-green-roof-balcony-generated-by-ai.jpg', '', '00:00:00', '00:00:00', 0, '2024-08-01 15:09:03', 4, 'Focus', '2024-08-01', 'Pending'),
(15, '2BHK', 'Site', 5000, '5', 4, 10, 'Mumbai, Maharashtra, India', '', 0.00, 0.00, '', '0000-00-00', '', '', '', '', 1, 1, '', '', '', '', '00:00:00', '00:00:00', 0, '2024-08-06 17:33:33', 4, 'Featured', '2024-08-06', 'Pending'),
(16, '3BHK', 'Building', 200, '5', 4, 4, 'Karnataka', 'Sale', 0.00, 0.00, '', '0000-00-00', '', '', '', '', 1, 1, '', 'Gym, Power Backup', '../uploads/modern-residential-district-with-green-roof-balcony-generated-by-ai.jpg', 'Weekday (Mon-Fri)', '19:56:00', '21:57:00', 0, '2024-08-06 17:57:09', 4, 'Featured', '2024-08-06', 'Pending'),
(32, '2BHK', 'Building', 200, '3', 10, 2, 'India', 'Sale', 0.00, 0.00, '', '0000-00-00', 'Family', '', '', '', 1, 1, '', 'Gym,  Visitor Parking', '../uploads/house-isolated-field.jpg', 'Weekday (Mon-Fri)', '00:00:00', '16:55:00', 0, '2024-09-03 16:52:30', 3, 'Trending', '2024-09-03', 'Pending'),
(33, 'IndependentHouse', 'Villa', 2000, '2', 4, 5, 'HSR Layout, Bengaluru, Karnataka, India', 'Rent', 0.00, 0.00, '', '2024-10-10', '', 'Semi-Furnished', '', 'k', 1, 1, 'Borewell', 'Gym,Power Backup', '../uploads/IMG_20240923_182822_516.jpg,../uploads/IMG_20240923_182819_597.jpg,../uploads/IMG_20240923_182818_375.jpg,../uploads/IMG_20240923_182804_738.jpg,../uploads/IMG_20240923_182824_252.jpg,../uploads/IMG_20240923_182807_959.jpg', '', '00:00:00', '00:00:00', 0, '2024-09-06 11:20:52', 3, 'Trending', '2024-09-06', 'Pending');

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
(76, 3, 3, '2024-08-01 07:44:37'),
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
(13, 4, 2),
(15, 2, 1);

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
(11, '66d2c9ede0c9a.png', 'Lift Service');

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
  ADD KEY `property_id` (`property_id`),
  ADD KEY `user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  ADD CONSTRAINT `enquiry_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`),
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
