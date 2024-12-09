-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 11, 2024 at 07:47 AM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trustpro_rentrightbangalore`
--

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
  `date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `bhk_type`, `property_type`, `build_up_area`, `property_age`, `floor`, `total_floor`, `city`, `available_for`, `expected_rent`, `expected_deposit`, `maintenance`, `available_from`, `preferred_tenants`, `furnishing`, `parking`, `description`, `bathrooms`, `balcony`, `water_supply`, `amenities`, `file_upload`, `availability`, `start_time`, `end_time`, `available_all`, `created_at`, `user_id`, `property_status`, `date`) VALUES
(1, '2BHK', 'Flat', 2000, '5', 2, 5, 'India', 'Rent', 200.00, 200.00, 'Maintenance Included', '2024-09-12', 'Bachelor Female', 'Unfurnished', 'car', '', 1, 1, 'Municipal', 'Gym,  Visitor Parking', '../uploads/house-isolated-field.jpg,../uploads/luxury-pool-villa-spectacular-contemporary-design-digital-art-real-estate-home-house-property-ge.jpg', 'Weekday (Mon-Fri)', '00:00:00', '00:00:00', 1, '2024-09-03 11:20:43', 2, 'Focus', '2024-09-03'),
(2, '1BHK', 'Site', 2000, '2 years', 2, 4, 'Kanpur, Uttar Pradesh, India', 'Only Lease', 5000.00, 1000.00, 'Maintenance Included', '2024-07-04', 'Bachelor Female', 'Semi-Furnished', 'car', 'hgfghfjhg', 2, 2, 'Municipal', 'Gym, Power Backup ,  House Keeping , Club House', '../uploads/luxury-pool-villa-spectacular-contemporary-design-digital-art-real-estate-home-house-property-ge.jpg,../uploads/house-isolated-field.jpg', 'Weekday (Mon-Fri)', '11:48:00', '00:00:00', 0, '2024-07-30 11:44:35', 1, 'Pending', '2024-07-31'),
(3, '2BHK', 'Site', 5000, '5 years', 3, 8, 'Lucknow, Uttar Pradesh, India', 'Rent', 150000.00, 5000.00, 'Maintenance Extra', '2024-08-08', 'Family,Bachelor Male', 'Semi-Furnished', 'both', 'hghvhj', 1, 1, 'Both(Municipal+borwell)', 'Gym,Lift', '../uploads/1 (1).jpg', 'Weekday (Mon-Fri)', '00:00:00', '00:00:00', 1, '2024-07-15 11:55:34', 2, 'Spotlight', '2024-07-31'),
(4, '3BHK', 'Building', 2000, '10', 5, 10, 'Delhi, India\r\n', 'Sale', 500000.00, 10000.00, 'Maintenance Included', '2024-07-10', 'Family', 'Unfurnished', 'all', 'hgfjygju', 2, 3, 'Municipal', 'Gym,Servent Room,Play Area , Club House,  Internet Service', '../uploads/1 (10).jpg', 'Weekend (Sat-Sun)', '00:00:00', '00:00:00', 0, '2024-07-31 12:03:42', 3, 'Trending', '2024-07-31'),
(5, 'kjkbk', 'Commercial', 0, '65', 0, 5, 'Mumbai, Maharashtra, India', 'for rent', 50.00, 4.00, '', '2024-09-01', '', 'kjbk', '', 'jbkbuk', 1, 1, 'borewell', 'Gym', '../uploads/modern-residential-district-with-green-roof-balcony-generated-by-ai.jpg,../uploads/1 (10).jpg', '', '00:00:00', '00:00:00', 0, '2024-08-01 15:07:29', 4, 'Pending', '2024-08-01'),
(6, '2 bhk', 'Villa', 500, '5', 0, 0, 'Kanpur, Uttar Pradesh, India', 'Rent', 20000.00, 0.00, '', '2024-08-09', '', 'Fully-Furnished', '', 'hjb', 1, 1, 'all', 'Gym', '../uploads/house-isolated-field.jpg,../uploads/modern-residential-district-with-green-roof-balcony-generated-by-ai.jpg', '', '00:00:00', '00:00:00', 0, '2024-08-01 15:09:03', 4, 'Pending', '2024-08-01'),
(7, '1BHK', 'Flat', 915, '1', 4, 4, 'Sompura, Karnataka, India', 'Rent', 250000.00, 200000.00, 'Maintenance Extra', '2024-09-01', 'Family,Company', 'Semi-Furnished', 'car', '', 2, 1, 'Borewell', 'Gym,Play Area ,Lift,  Visitor Parking , Power Backup , Club House', '../uploads/1 (1).jpg', 'Everyday (Mon-Sun)', '00:00:00', '00:00:00', 0, '2024-08-16 06:48:43', 10, 'Featured', '2024-08-16'),
(8, '4BHK', '', 0, '', 0, 0, '', '', 0.00, 0.00, '', '0000-00-00', '', '', '', '', 1, 1, '', 'Gym', '../uploads/1 (1).jpg', '', '00:00:00', '00:00:00', 0, '2024-09-03 11:32:53', 2, 'Featured', '2024-09-03'),
(9, '4BHK', '', 0, '', 0, 0, '', '', 0.00, 0.00, '', '0000-00-00', '', '', '', '', 1, 1, '', 'Gym', '../uploads/1 (1).jpg', '', '00:00:00', '00:00:00', 0, '2024-09-03 11:32:53', 2, 'Focus', '2024-09-03'),
(10, '2BHK', 'Flat', 900, '2', 3, 4, 'HSR Layout Police Station, 27th Main Road, 1st Sector, HSR Layout, Bengaluru, Karnataka, India', 'Rent', 20000.00, 100000.00, 'Maintenance Extra', '2024-10-01', 'Company', 'Semi-Furnished', 'Two-Wheeler', '', 1, 1, '', 'Gym,Play Area ,Lift,  Visitor Parking ,  House Keeping ,   Air Conditioner', '../uploads/WhatsApp Image 2024-08-22 at 09.04.19.jpeg,../uploads/WhatsApp Image 2024-08-22 at 09.03.50 (1).jpeg,../uploads/WhatsApp Image 2024-08-22 at 09.03.50.jpeg', 'Everyday (Mon-Sun)', '00:00:00', '00:00:00', 0, '2024-09-17 05:43:03', 10, 'Spotlight', '2024-09-17'),
(11, '2BHK', 'Flat', 1400, '1', 4, 5, 'Bangalore, Karnataka, India', 'Rent', 45000.00, 300000.00, 'Maintenance Included', '0000-00-00', 'Family', 'Semi-Furnished', 'Two-Wheeler', '', 2, 1, 'Both(Municipal+borwell)', '', '../uploads/IMG_20240923_182828_265.jpg,../uploads/IMG_20240923_182825_740.jpg,../uploads/IMG_20240923_182824_252.jpg,../uploads/IMG_20240923_182822_516.jpg,../uploads/IMG_20240923_182819_597.jpg,../uploads/IMG_20240923_182818_375.jpg,../uploads/IMG_202409', 'Weekend (Sat-Sun)', '21:00:00', '19:00:00', 1, '2024-09-23 12:59:30', 13, 'Cancel', '2024-09-23'),
(12, '1BHK', 'Building', 2000, '5', 2, 3, 'India', 'Rent', 5000.00, 0.00, '', '2024-10-16', 'Anyone', 'Semi-Furnished', '', 'ab', 1, 1, 'Municipal', 'Gym,Lift', '../uploads/WhatsApp Image 2024-10-01 at 15.26.28_67704c35.jpg,../uploads/WhatsApp Image 2024-10-01 at 15.26.25_89bd692b.jpg', 'Weekday (Mon-Fri)', '16:25:00', '00:00:00', 0, '2024-10-01 09:56:01', 17, 'Spotlight', '2024-10-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
