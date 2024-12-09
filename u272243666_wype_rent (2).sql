-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 10, 2024 at 11:25 AM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u272243666_wype_rent`
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
(2, 'admin', 'admin@gmail.com', '$2y$10$s7UjHtFtLhxlHnZ1lBz/iOxXzo9/RBZcl74Z7mjXnGAJ0AYWobyhe');

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
(0, '2BHK for Sell'),
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
(1, 'booking_66bef69b66d274.17614131', 'Aditya', 'ravi@rpinfocare.com', '6361793287', 'SOmpura gate', 'cash', '2024-08-18', '2024-08-16', '1BHK', 'pending'),
(8, 'booking_66b0c6cde02a29.51885704', 'Soni nishad', 'nishadsoni104@gmail.com', '8005089374', 'Ruskam bihar colony nadarganj, lko', 'cash', '2024-08-21', '2024-08-05', 'Electrician', 'pending'),
(9, 'booking_66b0c75ed8ca17.65985298', 'Soni ', 'soni104@gmail.com', '8005089374', 'Ruskam bihar colony nadarganj, lko', 'cash', '2024-08-21', '2024-08-05', 'Water Purifier', 'Cancel'),
(10, 'booking_66b0c7d05239a2.09091392', 'sumit', 'soni@gmail.com', '9632587410', 'Ruskam bihar colony nadarganj, lko', 'cash', '2024-08-06', '2024-08-05', 'Exterior', 'Complete'),
(11, 'booking_66b5a72845b452.26310403', 'Soni Nishad', 'soni@genxwebhosting.us', '8005089374', 'Rustam Vihar Colony Near Cipet College', 'cash', '2024-08-30', '2024-08-09', 'Electrician', 'pending'),
(12, 'booking_66bf96c0935d77.52761742', 'abc', 'abc@gmail.com', '9856321470', 'lko', 'cash', '2024-08-23', '2024-08-16', '3BHK', 'pending');

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
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_name` varchar(50) DEFAULT NULL,
  `country_code` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `country_code`, `city`) VALUES
(0, 'India', 'IN', 'New Delhi'),
(1, 'Philippines', 'PH', 'San Nicolas'),
(2, 'China', 'CN', 'Lainqu'),
(3, 'Ireland', 'IE', 'Raheny'),
(4, 'Colombia', 'CO', 'Paicol'),
(5, 'Jamaica', 'JM', 'Lluidas Vale'),
(6, 'Tanzania', 'TZ', 'Mtwango'),
(7, 'France', 'FR', 'Arles'),
(8, 'Indonesia', 'ID', 'Sawangan'),
(9, 'Spain', 'ES', 'Murcia'),
(10, 'Brazil', 'BR', 'Ribeira do Pombal'),
(11, 'Moldova', 'MD', 'Ciorescu'),
(12, 'France', 'FR', 'Le Mans'),
(13, 'Russia', 'RU', 'Novyy Nekouz'),
(14, 'Indonesia', 'ID', 'Sarimukti Kaler'),
(15, 'Indonesia', 'ID', 'Suwalan'),
(16, 'Cuba', 'CU', 'Maisí'),
(17, 'Indonesia', 'ID', 'Pulosari'),
(18, 'Indonesia', 'ID', 'Banjarejo'),
(19, 'Japan', 'JP', 'Obama'),
(20, 'Indonesia', 'ID', 'Tekikbanyuurip'),
(21, 'Czech Republic', 'CZ', 'Veselí nad Lužnicí'),
(22, 'China', 'CN', 'Kanbula'),
(23, 'Portugal', 'PT', 'Paços de Ferreira'),
(24, 'Japan', 'JP', 'Kukichūō'),
(25, 'Egypt', 'EG', 'Qalyūb'),
(26, 'Netherlands', 'NL', 'Almelo'),
(27, 'Portugal', 'PT', 'Venda do Alcaide'),
(28, 'Iran', 'IR', 'Bastak'),
(29, 'Peru', 'PE', 'Aquia'),
(30, 'Brazil', 'BR', 'Ribeirão Preto'),
(31, 'China', 'CN', 'Taihu'),
(32, 'Armenia', 'AM', 'Spitak'),
(33, 'Nigeria', 'NG', 'Gakem'),
(34, 'Ecuador', 'EC', 'Piñas'),
(35, 'China', 'CN', 'Macun'),
(36, 'Philippines', 'PH', 'Parabcan'),
(37, 'Japan', 'JP', 'Naka'),
(38, 'China', 'CN', 'Huarong Chengguanzhen'),
(39, 'United States', 'US', 'Rockford'),
(40, 'China', 'CN', 'Jiaozuo'),
(41, 'Vietnam', 'VN', 'Thị Trấn Phú Mỹ'),
(42, 'China', 'CN', 'Haizhouwobao'),
(43, 'China', 'CN', 'Dongchuan'),
(44, 'China', 'CN', 'Xiayunling'),
(45, 'South Korea', 'KR', 'Heung-hai'),
(46, 'Sweden', 'SE', 'Åmål'),
(47, 'Albania', 'AL', 'Mamurras'),
(48, 'Ecuador', 'EC', 'Loja'),
(49, 'Czech Republic', 'CZ', 'Raškovice'),
(50, 'Brazil', 'BR', 'São Leopoldo'),
(51, 'Indonesia', 'ID', 'Kliwon Cibingbin'),
(52, 'Uzbekistan', 'UZ', 'To’rtko’l Shahri'),
(53, 'Indonesia', 'ID', 'Kotabaru'),
(54, 'Jordan', 'JO', 'Aţ Ţafīlah'),
(55, 'Thailand', 'TH', 'Lom Sak'),
(56, 'Bolivia', 'BO', 'Azurduy'),
(57, 'North Korea', 'KP', 'Hyesan-dong'),
(58, 'Mongolia', 'MN', 'Bayanhoshuu'),
(59, 'Indonesia', 'ID', 'Kalisabuk'),
(60, 'New Zealand', 'NZ', 'Whakatane'),
(61, 'Netherlands', 'NL', 'Eindhoven'),
(62, 'Sweden', 'SE', 'Borås'),
(63, 'China', 'CN', 'Guantouzui'),
(64, 'Poland', 'PL', 'Tarnowskie Góry'),
(65, 'Brazil', 'BR', 'Boituva'),
(66, 'Dominica', 'DM', 'Calibishie'),
(67, 'Albania', 'AL', 'Lis'),
(68, 'Bulgaria', 'BG', 'Boychinovtsi'),
(69, 'China', 'CN', 'Haishan'),
(70, 'Slovenia', 'SI', 'Razvanje'),
(71, 'Uzbekistan', 'UZ', 'Qo‘qon'),
(72, 'Greece', 'GR', 'Álimos'),
(73, 'Indonesia', 'ID', 'Kaca'),
(74, 'Indonesia', 'ID', 'Dodu Dua'),
(75, 'Portugal', 'PT', 'Quintela'),
(76, 'China', 'CN', 'Tianyu'),
(77, 'Sweden', 'SE', 'Kristianstad'),
(78, 'Philippines', 'PH', 'Maayong Tubig'),
(79, 'China', 'CN', 'Shanjie'),
(80, 'Philippines', 'PH', 'Montaneza'),
(81, 'Yemen', 'YE', 'Al Madīd'),
(82, 'Philippines', 'PH', 'Calauag'),
(83, 'Colombia', 'CO', 'Heliconia'),
(84, 'Indonesia', 'ID', 'Pandanwangi'),
(85, 'China', 'CN', 'Shuangpu'),
(86, 'Russia', 'RU', 'Vinsady'),
(87, 'France', 'FR', 'Montpellier'),
(88, 'Russia', 'RU', 'Kashin'),
(89, 'Russia', 'RU', 'Yukhnov'),
(90, 'China', 'CN', 'Jiaobei'),
(91, 'China', 'CN', 'Xiaohe'),
(92, 'Canada', 'CA', 'Taber'),
(93, 'Argentina', 'AR', 'Aristóbulo del Valle'),
(94, 'China', 'CN', 'Hengqu'),
(95, 'Burkina Faso', 'BF', 'Dédougou'),
(96, 'Mayotte', 'YT', 'Dembeni'),
(97, 'China', 'CN', 'Dengfeng'),
(98, 'Canada', 'CA', 'Whitehorse'),
(99, 'Reunion', 'RE', 'Saint-Denis'),
(100, 'Brazil', 'BR', 'Tubarão'),
(101, 'China', 'CN', 'Daping'),
(102, 'China', 'CN', 'Wangcun'),
(103, 'Russia', 'RU', 'Isheyevka'),
(104, 'China', 'CN', 'Mashizhai'),
(105, 'Philippines', 'PH', 'Ramon Magsaysay'),
(106, 'Nigeria', 'NG', 'Katagum'),
(107, 'China', 'CN', 'Maying'),
(108, 'Philippines', 'PH', 'Burgos'),
(109, 'Philippines', 'PH', 'Marsada'),
(110, 'Indonesia', 'ID', 'Blawi'),
(111, 'China', 'CN', 'Songyuan'),
(112, 'China', 'CN', 'Qiaotou'),
(113, 'United States', 'US', 'Pasadena'),
(114, 'Ecuador', 'EC', 'Celica'),
(115, 'China', 'CN', 'Jiangqiao'),
(116, 'Brazil', 'BR', 'Três Lagoas'),
(117, 'Panama', 'PA', 'El Coco'),
(118, 'Finland', 'FI', 'Hankasalmi'),
(119, 'United States', 'US', 'Nashville'),
(120, 'Russia', 'RU', 'Yalkhoy-Mokhk'),
(121, 'China', 'CN', 'Nanjing'),
(122, 'Sweden', 'SE', 'Trosa'),
(123, 'Germany', 'DE', 'Cottbus'),
(124, 'Brazil', 'BR', 'Cândido Mota'),
(125, 'China', 'CN', 'Heping'),
(126, 'Thailand', 'TH', 'Kosamphi Nakhon'),
(127, 'Russia', 'RU', 'Blagoveshchenka'),
(128, 'Nepal', 'NP', 'Nawal'),
(129, 'Philippines', 'PH', 'Caramay'),
(130, 'Indonesia', 'ID', 'Cikole'),
(131, 'Canada', 'CA', 'Nanton'),
(132, 'Indonesia', 'ID', 'Panyuran'),
(133, 'Indonesia', 'ID', 'Ceper'),
(134, 'Philippines', 'PH', 'Doong'),
(135, 'China', 'CN', 'Dalai'),
(136, 'China', 'CN', 'Daduchuan'),
(137, 'Chad', 'TD', 'Bitkine'),
(138, 'Indonesia', 'ID', 'Kampungbajo'),
(139, 'Philippines', 'PH', 'Biga'),
(140, 'Indonesia', 'ID', 'Paloh'),
(141, 'Indonesia', 'ID', 'Harjamukti'),
(142, 'Serbia', 'RS', 'Tršić'),
(143, 'Russia', 'RU', 'Volgodonsk'),
(144, 'Czech Republic', 'CZ', 'Horní Stropnice'),
(145, 'Poland', 'PL', 'Szczawno-Zdrój'),
(146, 'United States', 'US', 'San Diego'),
(147, 'Portugal', 'PT', 'Ribaldeira'),
(148, 'South Korea', 'KR', 'Icheon-si'),
(149, 'Czech Republic', 'CZ', 'Stochov'),
(150, 'Azerbaijan', 'AZ', 'Barda'),
(151, 'Philippines', 'PH', 'Latung'),
(152, 'United States', 'US', 'Lansing'),
(153, 'Iran', 'IR', 'Nūr'),
(154, 'Russia', 'RU', 'Gusev'),
(155, 'Bosnia and Herzegovina', 'BA', 'Ilići'),
(156, 'China', 'CN', 'Longmenfan'),
(157, 'Bosnia and Herzegovina', 'BA', 'Obudovac'),
(158, 'China', 'CN', 'Xinqiao'),
(159, 'China', 'CN', 'Yong’an'),
(160, 'China', 'CN', 'Songjiang'),
(161, 'Indonesia', 'ID', 'Cibangban Girang'),
(162, 'Brazil', 'BR', 'Pedra Branca'),
(163, 'Philippines', 'PH', 'Balingasag'),
(164, 'Thailand', 'TH', 'Nong Yai'),
(165, 'Philippines', 'PH', 'Sultan Kudarat'),
(166, 'Russia', 'RU', 'Vol’nyy Aul'),
(167, 'China', 'CN', 'Yangdenghu'),
(168, 'Brazil', 'BR', 'Boquira'),
(169, 'China', 'CN', 'Wuguishan'),
(170, 'Maldives', 'MV', 'Viligili'),
(171, 'China', 'CN', 'Lianjiangkou'),
(172, 'Botswana', 'BW', 'Mahalapye'),
(173, 'Brazil', 'BR', 'Piquete'),
(174, 'Portugal', 'PT', 'Pedreira'),
(175, 'Bosnia and Herzegovina', 'BA', 'Potoci'),
(176, 'Spain', 'ES', 'Pamplona/Iruña'),
(177, 'Syria', 'SY', '‘Afrīn'),
(178, 'Philippines', 'PH', 'Balingasag'),
(179, 'Mexico', 'MX', 'La Guadalupe'),
(180, 'Greece', 'GR', 'Examília'),
(181, 'China', 'CN', 'Taihu'),
(182, 'Brazil', 'BR', 'Iporã'),
(183, 'Norway', 'NO', 'Bergen'),
(184, 'Ukraine', 'UA', 'Tsibulev'),
(185, 'China', 'CN', 'Huanghuai'),
(186, 'China', 'CN', 'Pinghu'),
(187, 'Mexico', 'MX', 'Magisterial'),
(188, 'Brazil', 'BR', 'Jatobá'),
(189, 'Portugal', 'PT', 'Figueiras'),
(190, 'China', 'CN', 'Qingduizi'),
(191, 'Greece', 'GR', 'Néa Karyá'),
(192, 'Russia', 'RU', 'Novogornyy'),
(193, 'Greece', 'GR', 'Mégara'),
(194, 'Brazil', 'BR', 'Propriá'),
(195, 'Israel', 'IL', 'Giv\'on HaHadasha'),
(196, 'Afghanistan', 'AF', 'Farah'),
(197, 'Serbia', 'RS', 'Adorjan'),
(198, 'Netherlands', 'NL', 'Amsterdam Nieuw West'),
(199, 'Croatia', 'HR', 'Garešnica'),
(200, 'Colombia', 'CO', 'Túquerres'),
(201, 'China', 'CN', 'Luci'),
(202, 'China', 'CN', 'Taohua'),
(203, 'Poland', 'PL', 'Suwałki'),
(204, 'Brazil', 'BR', 'Limoeiro'),
(205, 'China', 'CN', 'Nu’erbage'),
(206, 'Greece', 'GR', 'Vlycháda'),
(207, 'Afghanistan', 'AF', 'Qarchī Gak'),
(208, 'Japan', 'JP', 'Izumi'),
(209, 'France', 'FR', 'Paris 15'),
(210, 'Portugal', 'PT', 'São Bartolomeu'),
(211, 'Azerbaijan', 'AZ', 'Shamkhor'),
(212, 'Ukraine', 'UA', 'Truskavets'),
(213, 'France', 'FR', 'Alençon'),
(214, 'Palestinian Territory', 'PS', 'Ḩuwwārah'),
(215, 'Tunisia', 'TN', 'Al ‘Āliyah'),
(216, 'France', 'FR', 'Suresnes'),
(217, 'Honduras', 'HN', 'San Luis'),
(218, 'Ukraine', 'UA', 'Lazeshchyna'),
(219, 'Zimbabwe', 'ZW', 'Mazowe'),
(220, 'Sweden', 'SE', 'Jönköping'),
(221, 'Russia', 'RU', 'Vinsady'),
(222, 'Portugal', 'PT', 'Gondifelos'),
(223, 'China', 'CN', 'Zhujiaqiao'),
(224, 'Nigeria', 'NG', 'Abakaliki'),
(225, 'Japan', 'JP', 'Nakatsugawa'),
(226, 'Brazil', 'BR', 'Crato'),
(227, 'Russia', 'RU', 'Dugulubgey'),
(228, 'China', 'CN', 'Yangjiaqiao'),
(229, 'Colombia', 'CO', 'Nariño'),
(230, 'China', 'CN', 'Jiudu'),
(231, 'Portugal', 'PT', 'Souto de Cima'),
(232, 'China', 'CN', 'Taihe'),
(233, 'United States', 'US', 'Pasadena'),
(234, 'Russia', 'RU', 'Kabakovo'),
(235, 'China', 'CN', 'Quchi'),
(236, 'Sweden', 'SE', 'Åkersberga'),
(237, 'Colombia', 'CO', 'Campo de la Cruz'),
(238, 'Netherlands', 'NL', 'Maastricht'),
(239, 'Greece', 'GR', 'Rízoma'),
(240, 'Peru', 'PE', 'Mollebamba'),
(241, 'Mexico', 'MX', 'San Lorenzo'),
(242, 'Peru', 'PE', 'Andahuaylas'),
(243, 'Canada', 'CA', 'Crossfield'),
(244, 'United States', 'US', 'Louisville'),
(245, 'France', 'FR', 'Le Mans'),
(246, 'France', 'FR', 'Saint-Maur-des-Fossés'),
(247, 'Uzbekistan', 'UZ', 'Toshbuloq'),
(248, 'United States', 'US', 'Denver'),
(249, 'China', 'CN', 'Jiekeng'),
(250, 'Cameroon', 'CM', 'Somié'),
(251, 'Norway', 'NO', 'Oslo'),
(252, 'Indonesia', 'ID', 'Suwaduk'),
(253, 'Philippines', 'PH', 'Sitangkai'),
(254, 'Brazil', 'BR', 'Ibaté'),
(255, 'Poland', 'PL', 'Przystajń'),
(256, 'Japan', 'JP', 'Ikedachō'),
(257, 'Portugal', 'PT', 'Várzea da Serra'),
(258, 'Indonesia', 'ID', 'Kombapari'),
(259, 'Philippines', 'PH', 'Santa Paz'),
(260, 'China', 'CN', 'Haicheng'),
(261, 'Philippines', 'PH', 'Sambuluan'),
(262, 'Indonesia', 'ID', 'Kadukandel'),
(263, 'Sweden', 'SE', 'Kalix'),
(264, 'Uzbekistan', 'UZ', 'Bektemir'),
(265, 'Russia', 'RU', 'Tomsk'),
(266, 'China', 'CN', 'Qiaozhuang'),
(267, 'Russia', 'RU', 'Verkhniy Baskunchak'),
(268, 'China', 'CN', 'Guangping'),
(269, 'Greece', 'GR', 'Évlalo'),
(270, 'Malaysia', 'MY', 'Putrajaya'),
(271, 'Germany', 'DE', 'Bielefeld'),
(272, 'Russia', 'RU', 'Nezlobnaya'),
(273, 'China', 'CN', 'Xin Bulag'),
(274, 'China', 'CN', 'Shifan'),
(275, 'Sweden', 'SE', 'Kalmar'),
(276, 'Portugal', 'PT', 'Cabeças Verdes'),
(277, 'China', 'CN', 'Gaohe'),
(278, 'Russia', 'RU', 'Egvekinot'),
(279, 'Maldives', 'MV', 'Fonadhoo'),
(280, 'Mexico', 'MX', 'El Refugio'),
(281, 'China', 'CN', 'Lianhe'),
(282, 'Philippines', 'PH', 'Salvacion'),
(283, 'Palestinian Territory', 'PS', 'Jifnā'),
(284, 'Ethiopia', 'ET', 'Turmi'),
(285, 'Indonesia', 'ID', 'Poli'),
(286, 'French Polynesia', 'PF', 'Otutara'),
(287, 'Kazakhstan', 'KZ', 'Ekibastuz'),
(288, 'Indonesia', 'ID', 'Banjar Dauhmargi'),
(289, 'China', 'CN', 'Zhangpu'),
(290, 'Portugal', 'PT', 'Vila Chã'),
(291, 'Poland', 'PL', 'Bardo'),
(292, 'China', 'CN', 'Dajin'),
(293, 'Indonesia', 'ID', 'Wuluhan'),
(294, 'Peru', 'PE', 'Tantamayo'),
(295, 'Belarus', 'BY', 'Lyozna'),
(296, 'China', 'CN', 'Jiamachi'),
(297, 'Bolivia', 'BO', 'Eucaliptus'),
(298, 'Japan', 'JP', 'Kitaibaraki'),
(299, 'Mexico', 'MX', 'Luis Donaldo Colosio'),
(300, 'Tunisia', 'TN', 'La Mohammedia'),
(301, 'Brazil', 'BR', 'Cordeirópolis'),
(302, 'Brazil', 'BR', 'Sarzedo'),
(303, 'China', 'CN', 'Jianggezhuang'),
(304, 'Uruguay', 'UY', 'Florencio Sánchez'),
(305, 'Japan', 'JP', 'Shimabara'),
(306, 'Suriname', 'SR', 'Albina'),
(307, 'Japan', 'JP', 'Hashimoto'),
(308, 'China', 'CN', 'Weiting'),
(309, 'China', 'CN', 'Jincheng'),
(310, 'China', 'CN', 'Shangyuan'),
(311, 'Brazil', 'BR', 'Águas Formosas'),
(312, 'Indonesia', 'ID', 'Jawa'),
(313, 'China', 'CN', 'Yeshan'),
(314, 'China', 'CN', 'Dengfang'),
(315, 'United States', 'US', 'Sioux Falls'),
(316, 'Afghanistan', 'AF', 'Qarqīn'),
(317, 'Thailand', 'TH', 'Pa Mok'),
(318, 'France', 'FR', 'Chaumont'),
(319, 'Brazil', 'BR', 'Pirassununga'),
(320, 'Czech Republic', 'CZ', 'Stráž nad Nisou'),
(321, 'Poland', 'PL', 'Stanisław Dolny'),
(322, 'Ireland', 'IE', 'Blarney'),
(323, 'China', 'CN', 'Taoyuan'),
(324, 'China', 'CN', 'Daliuhao'),
(325, 'Indonesia', 'ID', 'Jagabaya Dua'),
(326, 'Brazil', 'BR', 'Paraíso'),
(327, 'France', 'FR', 'Niort'),
(328, 'Portugal', 'PT', 'Lameira'),
(329, 'Peru', 'PE', 'Mendoza'),
(330, 'Japan', 'JP', 'Kokubunji'),
(331, 'China', 'CN', 'Xiangba'),
(332, 'United States', 'US', 'Marietta'),
(333, 'Albania', 'AL', 'Bulqizë'),
(334, 'Philippines', 'PH', 'Tranca'),
(335, 'Czech Republic', 'CZ', 'Luhačovice'),
(336, 'South Korea', 'KR', 'Seongnam-si'),
(337, 'China', 'CN', 'Zhongshan'),
(338, 'Sweden', 'SE', 'Alingsås'),
(339, 'China', 'CN', 'Jiazhuang'),
(340, 'Cambodia', 'KH', 'Lumphăt'),
(341, 'Indonesia', 'ID', 'Soko'),
(342, 'Portugal', 'PT', 'Choca do Mar'),
(343, 'Portugal', 'PT', 'Vila Velha de Ródão'),
(344, 'Russia', 'RU', 'Uvarovo'),
(345, 'Serbia', 'RS', 'Debeljača'),
(346, 'Dominican Republic', 'DO', 'Oviedo'),
(347, 'Thailand', 'TH', 'Rasi Salai'),
(348, 'Colombia', 'CO', 'La Unión'),
(349, 'Indonesia', 'ID', 'Glondong'),
(350, 'Bangladesh', 'BD', 'Mehendiganj'),
(351, 'Slovenia', 'SI', 'Vrtojba'),
(352, 'Iran', 'IR', 'Arāk'),
(353, 'Philippines', 'PH', 'Naili'),
(354, 'China', 'CN', 'Machikou'),
(355, 'Cameroon', 'CM', 'Ngou'),
(356, 'Albania', 'AL', 'Vlorë'),
(357, 'Poland', 'PL', 'Pępowo'),
(358, 'China', 'CN', 'Jincheng'),
(359, 'Portugal', 'PT', 'Cruzeiro'),
(360, 'Russia', 'RU', 'Znamenskoye'),
(361, 'Indonesia', 'ID', 'Sitularang Landeuh'),
(362, 'Thailand', 'TH', 'Nong Bua Daeng'),
(363, 'Canada', 'CA', 'Armstrong'),
(364, 'Japan', 'JP', 'Shimonoseki'),
(365, 'United States', 'US', 'Shawnee Mission'),
(366, 'Russia', 'RU', 'Nizhniy Kurkuzhin'),
(367, 'France', 'FR', 'Locminé'),
(368, 'Iran', 'IR', 'Gālīkesh'),
(369, 'Philippines', 'PH', 'Pulong Sampalok'),
(370, 'Uzbekistan', 'UZ', 'Bulung’ur'),
(371, 'Croatia', 'HR', 'Hodošan'),
(372, 'Indonesia', 'ID', 'Matumadua'),
(373, 'Brazil', 'BR', 'Conselheiro Lafaiete'),
(374, 'Argentina', 'AR', 'Caseros'),
(375, 'Portugal', 'PT', 'Mosteiros'),
(376, 'China', 'CN', 'Jianping'),
(377, 'Indonesia', 'ID', 'Krajan Satu'),
(378, 'China', 'CN', 'Dalubian'),
(379, 'China', 'CN', 'Hualong'),
(380, 'Czech Republic', 'CZ', 'Žihle'),
(381, 'Indonesia', 'ID', 'Sinabang'),
(382, 'Moldova', 'MD', 'Chişinău'),
(383, 'Japan', 'JP', 'Toyota'),
(384, 'China', 'CN', 'Checun'),
(385, 'Brazil', 'BR', 'Tatuí'),
(386, 'Brazil', 'BR', 'Barra do Bugres'),
(387, 'Canada', 'CA', 'Lamont'),
(388, 'Sweden', 'SE', 'Umeå'),
(389, 'Portugal', 'PT', 'Pereiro'),
(390, 'Poland', 'PL', 'Piła'),
(391, 'Palestinian Territory', 'PS', 'Far‘ūn'),
(392, 'Philippines', 'PH', 'Mabayo'),
(393, 'Venezuela', 'VE', 'El Dividive'),
(394, 'United States', 'US', 'Greensboro'),
(395, 'Albania', 'AL', 'Lunik'),
(396, 'China', 'CN', 'Bajiazi'),
(397, 'Japan', 'JP', 'Oyabe'),
(398, 'China', 'CN', 'Shanxiahu'),
(399, 'Poland', 'PL', 'Sosnowiec'),
(400, 'Portugal', 'PT', 'Santa Maria do Souto'),
(401, 'Indonesia', 'ID', 'Palumbungan'),
(402, 'Philippines', 'PH', 'President Roxas'),
(403, 'China', 'CN', 'Bor Ondor'),
(404, 'Greece', 'GR', 'Vágia'),
(405, 'Serbia', 'RS', 'Pančevo'),
(406, 'Indonesia', 'ID', 'Tasikona'),
(407, 'Nigeria', 'NG', 'Kwatarkwashi'),
(408, 'Mexico', 'MX', 'Adolfo Ruiz Cortines'),
(409, 'Russia', 'RU', 'Sysert’'),
(410, 'Canada', 'CA', 'St. Thomas'),
(411, 'Ukraine', 'UA', 'Polonne'),
(412, 'Mexico', 'MX', 'San Isidro'),
(413, 'Finland', 'FI', 'Orivesi'),
(414, 'Japan', 'JP', 'Ginowan'),
(415, 'Yemen', 'YE', 'Al Khawkhah'),
(416, 'Burkina Faso', 'BF', 'Réo'),
(417, 'China', 'CN', 'Changting'),
(418, 'Poland', 'PL', 'Stalowa Wola'),
(419, 'Colombia', 'CO', 'Funes'),
(420, 'Venezuela', 'VE', 'Umuquena'),
(421, 'Poland', 'PL', 'Obsza'),
(422, 'Cambodia', 'KH', 'Kampong Chhnang'),
(423, 'France', 'FR', 'Golbey'),
(424, 'China', 'CN', 'Xuancheng'),
(425, 'Philippines', 'PH', 'Concepcion'),
(426, 'Israel', 'IL', 'Kefar Tavor'),
(427, 'Indonesia', 'ID', 'Buket Teukuh'),
(428, 'China', 'CN', 'Huixian Chengguanzhen'),
(429, 'China', 'CN', 'Qingshui'),
(430, 'Philippines', 'PH', 'San Agustin'),
(431, 'United States', 'US', 'Fairbanks'),
(432, 'Panama', 'PA', 'Potrero Grande'),
(433, 'China', 'CN', 'Huixing'),
(434, 'Greece', 'GR', 'Filótion'),
(435, 'China', 'CN', 'Shanhe'),
(436, 'Thailand', 'TH', 'Pho Thong'),
(437, 'Indonesia', 'ID', 'Growong Kidul'),
(438, 'Philippines', 'PH', 'Alcoy'),
(439, 'China', 'CN', 'Jingouhe'),
(440, 'Indonesia', 'ID', 'Mnelalete'),
(441, 'China', 'CN', 'Guankou'),
(442, 'Thailand', 'TH', 'Cho-airong'),
(443, 'China', 'CN', 'Xiangzikou'),
(444, 'Japan', 'JP', 'Kukichūō'),
(445, 'Argentina', 'AR', 'Inriville'),
(446, 'New Zealand', 'NZ', 'Pakuranga'),
(447, 'Thailand', 'TH', 'Bueng Khong Long'),
(448, 'Portugal', 'PT', 'Torreira'),
(449, 'Indonesia', 'ID', 'Cibeureum'),
(450, 'France', 'FR', 'Paris 06'),
(451, 'Armenia', 'AM', 'Spitak'),
(452, 'Argentina', 'AR', 'La Tigra'),
(453, 'Sweden', 'SE', 'Tierp'),
(454, 'Philippines', 'PH', 'Lipa City'),
(455, 'Thailand', 'TH', 'Dong Charoen'),
(456, 'Indonesia', 'ID', 'Lokorae'),
(457, 'France', 'FR', 'Tours'),
(458, 'Canada', 'CA', 'Princeton'),
(459, 'Dominican Republic', 'DO', 'Sabaneta'),
(460, 'Colombia', 'CO', 'San José del Guaviare'),
(461, 'Tanzania', 'TZ', 'Mlalo'),
(462, 'Brazil', 'BR', 'Ouricuri'),
(463, 'Japan', 'JP', 'Bungo-Takada-shi'),
(464, 'Indonesia', 'ID', 'Batanamang'),
(465, 'Sweden', 'SE', 'Pajala'),
(466, 'Mali', 'ML', 'Gao'),
(467, 'United States', 'US', 'Garland'),
(468, 'Indonesia', 'ID', 'Pakemitan Dua'),
(469, 'Greece', 'GR', 'Messíni'),
(470, 'Canada', 'CA', 'Bells Corners'),
(471, 'Albania', 'AL', 'Fushëkuqe'),
(472, 'Botswana', 'BW', 'Mathakola'),
(473, 'Czech Republic', 'CZ', 'Konice'),
(474, 'China', 'CN', 'Nanguzhuang'),
(475, 'Colombia', 'CO', 'Cáchira'),
(476, 'China', 'CN', 'Gaoyu'),
(477, 'Peru', 'PE', 'San Clemente'),
(478, 'Kazakhstan', 'KZ', 'Zyryanovsk'),
(479, 'Portugal', 'PT', 'Galamares'),
(480, 'Peru', 'PE', 'Sibayo'),
(481, 'China', 'CN', 'Guojia'),
(482, 'Indonesia', 'ID', 'Kebonagung'),
(483, 'France', 'FR', 'Paris 15'),
(484, 'Russia', 'RU', 'Krasnotur’insk'),
(485, 'Haiti', 'HT', 'Torbeck'),
(486, 'United States', 'US', 'Minneapolis'),
(487, 'Thailand', 'TH', 'Samut Songkhram'),
(488, 'Venezuela', 'VE', 'Tacarigua'),
(489, 'Brazil', 'BR', 'Itapipoca'),
(490, 'Syria', 'SY', 'Aş Şūrah aş Şaghīrah'),
(491, 'Portugal', 'PT', 'Lourido'),
(492, 'Russia', 'RU', 'Starokucherganovka'),
(493, 'Indonesia', 'ID', 'Jambean'),
(494, 'Peru', 'PE', 'Urpay'),
(495, 'Philippines', 'PH', 'San Martin'),
(496, 'China', 'CN', 'Huazhaizi'),
(497, 'Greece', 'GR', 'Galatás'),
(498, 'Russia', 'RU', 'Belgorod'),
(499, 'China', 'CN', 'Xiguantun Muguzu Manzuxiang'),
(500, 'China', 'CN', 'Jiangna');

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
(2, 'Test', 'Test@gmail.com', '2147483647', '$2y$10$mnEQe93vPqHg.BHdHW2QOuetSiH09GsiXY1ZPii4SawbtQbzCbc2e', '2024-07-31 08:16:43', 'active', 'user_66a9d6cb3dd965.62538091'),
(3, 'user', 'user@gmail.com', '8520741350', '$2y$10$WVgx7jVJucH.jnFVvEevm.Lr.hVwDNbo2Pw5BbghhZrZsxOqiMBWm', '2024-07-31 08:31:44', 'active', 'user_66a9da5093a2e2.66230031'),
(10, 'Aditya', 'aditya.k@designerstreet.in', '6361793287', '$2y$10$bPP0CQb1fITDc30AfvwrROFp9qNZE8J/cvnqhTr6TWXHwHGq567Ji', '2024-08-16 06:45:24', 'active', 'user_66bef584958351.77677943'),
(11, 'mahek', 'mahek@gmail.com', '8965231470', '$2y$10$ft1Q3MzQ5ECj2DazpxcoEOYFMcxLDZlvPgdA9OxVHSp0nOfqzv.3e', '2024-09-10 11:02:15', 'active', 'user_66e02737eec609.38794746');

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
(3, 2, 1, 'hyyy soumya hyy soumya ', '2024-08-07 18:19:40'),
(4, 1, 16, 'hyy new userrrr', '2024-08-07 18:23:24'),
(5, 1, 2, 'hyyy test test hhyyy hhyy tset tset', '2024-08-07 18:24:42');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `user_id`, `property_id`, `message`, `created_at`) VALUES
(1, 3, 3, 'User ID: 3 has sent an enquiry for Property ID: 3.', '2024-08-01 06:06:42'),
(2, 3, 3, 'User ID: 3 has sent an enquiry for Property ID: 3.', '2024-08-01 06:32:12'),
(3, 3, 3, 'User ID: 3 has sent an enquiry for Property ID: 3.', '2024-08-01 06:59:54'),
(4, 3, 1, 'User ID: 3 has sent an enquiry for Property ID: 1.', '2024-08-01 07:06:46'),
(5, 3, 1, 'User ID: 3 has sent an enquiry for Property ID: 1.', '2024-08-01 08:11:23'),
(8, 4, 9, 'User ID: 4 has sent an enquiry for Property ID: 9.', '2024-08-01 10:33:14'),
(9, 4, 1, 'User ID: 4 has sent an enquiry for Property ID: 1.', '2024-08-01 11:58:13'),
(11, 0, 0, 'hyyy', '2024-08-01 17:44:40'),
(16, 4, 1, 'mhbjhbjhb kbkb', '2024-08-03 11:35:26'),
(20, 1, 8, 'hghgghgfchg fhftcyy vhg', '2024-08-03 12:38:18'),
(21, 4, 2, 'User ID: 4 has sent an enquiry for Property ID: 2.', '2024-08-07 11:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
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

INSERT INTO `invoices` (`id`, `customer_name`, `address`, `bill_no`, `amount`, `tax`, `total_amount`, `invoice_date`, `due_date`, `status`, `created_at`) VALUES
(3, 'soni', 'soni@gmail.com', 1, '5000.00', '20.00', '5020.00', '2024-08-16', '2024-08-15', 'Paid', '2024-08-05 03:39:39'),
(4, 'soni', 'soni@gmail.com', 2, '5000.00', '20.00', '5020.00', '2024-08-16', '2024-08-15', 'Overdue', '2024-08-05 03:41:44'),
(5, 'soni', 'soni@gmail.com', 3, '5000.00', '20.00', '5020.00', '2024-08-16', '2024-08-15', 'Overdue', '2024-08-05 04:12:55'),
(6, 'soni', 'soni@gmail.com', 4, '5000.00', '20.00', '5020.00', '2024-08-16', '2024-08-15', 'Overdue', '2024-08-05 04:15:50');

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
  `date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `bhk_type`, `property_type`, `build_up_area`, `property_age`, `floor`, `total_floor`, `city`, `available_for`, `expected_rent`, `expected_deposit`, `maintenance`, `available_from`, `preferred_tenants`, `furnishing`, `parking`, `description`, `bathrooms`, `balcony`, `water_supply`, `amenities`, `file_upload`, `availability`, `start_time`, `end_time`, `available_all`, `created_at`, `user_id`, `property_status`, `date`) VALUES
(1, '2BHK', 'Flat', 2000, '5', 2, 5, 'India', 'Rent', '200.00', '200.00', 'Maintenance Included', '2024-09-12', 'Bachelor Female', 'Unfurnished', 'car', '', 1, 1, 'Municipal', 'Gym,  Visitor Parking', '../uploads/house-isolated-field.jpg,../uploads/luxury-pool-villa-spectacular-contemporary-design-digital-art-real-estate-home-house-property-ge.jpg', 'Weekday (Mon-Fri)', '00:00:00', '00:00:00', 1, '2024-09-03 11:20:43', 2, 'Spotlight', '2024-09-03'),
(2, '1BHK', 'Site', 2000, '2 years', 2, 4, 'Kanpur, Uttar Pradesh, India', 'Only Lease', '5000.00', '1000.00', 'Maintenance Included', '2024-07-04', 'Bachelor Female', 'Semi-Furnished', 'car', 'hgfghfjhg', 2, 2, 'Municipal', 'Gym, Power Backup ,  House Keeping , Club House', '../uploads/luxury-pool-villa-spectacular-contemporary-design-digital-art-real-estate-home-house-property-ge.jpg,../uploads/house-isolated-field.jpg', 'Weekday (Mon-Fri)', '11:48:00', '00:00:00', 0, '2024-07-30 11:44:35', 1, 'Pending', '2024-07-31'),
(3, '2BHK', 'Site', 5000, '5 years', 3, 8, 'Lucknow, Uttar Pradesh, India', 'Rent', '150000.00', '5000.00', 'Maintenance Extra', '2024-08-08', 'Family,Bachelor Male', 'Semi-Furnished', 'both', 'hghvhj', 1, 1, 'Both(Municipal+borwell)', 'Gym,Lift', '../uploads/1 (1).jpg', 'Weekday (Mon-Fri)', '00:00:00', '00:00:00', 1, '2024-07-15 11:55:34', 2, 'Featured', '2024-07-31'),
(4, '3BHK', 'Building', 2000, '10', 5, 10, 'Delhi, India\r\n', 'Sale', '500000.00', '10000.00', 'Maintenance Included', '2024-07-10', 'Family', 'Unfurnished', 'all', 'hgfjygju', 2, 3, 'Municipal', 'Gym,Servent Room,Play Area , Club House,  Internet Service', '../uploads/1 (10).jpg', 'Weekend (Sat-Sun)', '00:00:00', '00:00:00', 0, '2024-07-31 12:03:42', 3, 'Featured', '2024-07-31'),
(5, 'kjkbk', 'Commercial', 0, '65', 0, 5, 'Mumbai, Maharashtra, India', 'for rent', '50.00', '4.00', '', '2024-09-01', '', 'kjbk', '', 'jbkbuk', 1, 1, 'borewell', 'Gym', '../uploads/modern-residential-district-with-green-roof-balcony-generated-by-ai.jpg,../uploads/1 (10).jpg', '', '00:00:00', '00:00:00', 0, '2024-08-01 15:07:29', 4, 'Pending', '2024-08-01'),
(6, '2 bhk', 'Villa', 500, '5', 0, 0, 'Kanpur, Uttar Pradesh, India', 'Rent', '20000.00', '0.00', '', '2024-08-09', '', 'Fully-Furnished', '', 'hjb', 1, 1, 'all', 'Gym', '../uploads/house-isolated-field.jpg,../uploads/modern-residential-district-with-green-roof-balcony-generated-by-ai.jpg', '', '00:00:00', '00:00:00', 0, '2024-08-01 15:09:03', 4, 'Pending', '2024-08-01'),
(7, '1BHK', 'Flat', 915, '1', 4, 4, 'Sompura, Karnataka, India', 'Rent', '250000.00', '200000.00', 'Maintenance Extra', '2024-09-01', 'Family,Company', 'Semi-Furnished', 'car', '', 2, 1, 'Borewell', 'Gym,Play Area ,Lift,  Visitor Parking , Power Backup , Club House', '../uploads/1.jfif', 'Everyday (Mon-Sun)', '00:00:00', '00:00:00', 0, '2024-08-16 06:48:43', 10, 'Cancel', '2024-08-16'),
(8, '4BHK', '', 0, '', 0, 0, '', '', '0.00', '0.00', '', '0000-00-00', '', '', '', '', 1, 1, '', 'Gym', '', '', '00:00:00', '00:00:00', 0, '2024-09-03 11:32:53', 2, 'Cancel', '2024-09-03'),
(9, '4BHK', '', 0, '', 0, 0, '', '', '0.00', '0.00', '', '0000-00-00', '', '', '', '', 1, 1, '', 'Gym', '../uploads/house-isolated-field.jpg', '', '00:00:00', '00:00:00', 0, '2024-09-03 11:32:53', 2, 'Trending', '2024-09-03');

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
(0, 2, 1, '2024-09-03 11:58:42'),
(75, 3, 1, '2024-08-01 07:38:19'),
(76, 3, 3, '2024-08-01 07:44:37'),
(77, 4, 1, '2024-08-01 09:06:41'),
(78, 1, 9, '2024-08-01 17:23:41'),
(80, 4, 8, '2024-08-03 12:51:13');

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
(0, 2, 1),
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

--
-- Dumping data for table `scheduled_visits`
--

INSERT INTO `scheduled_visits` (`id`, `user_id`, `property_id`, `visit_date`, `created_at`) VALUES
(1, 2, 1, '2024-09-13 18:33:00', '2024-09-03 11:03:24');

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
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer_register`
--
ALTER TABLE `customer_register`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dropdown_values`
--
ALTER TABLE `dropdown_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `scheduled_visits`
--
ALTER TABLE `scheduled_visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
