-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2019 at 01:44 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `protrades`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `username`) VALUES
(2, 'opurum', 'a79cf4a748a22e3c0a4fcd4c2c1c926b', 'emma'),
(3, 'opurumemmanuelworld@gmail.com', '24191d98c6062ad6bffe4316c18908a9', 'oneopurumemmanuel'),
(4, 'support@probtctrades.com', '24191d98c6062ad6bffe4316c18908a9', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `current_market`
--

CREATE TABLE `current_market` (
  `id` int(250) NOT NULL,
  `total_deposits` varchar(10000) DEFAULT NULL,
  `total_withdrawals` varchar(10000) DEFAULT NULL,
  `members` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `current_market`
--

INSERT INTO `current_market` (`id`, `total_deposits`, `total_withdrawals`, `members`) VALUES
(1, '65790', '99890', '150');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(250) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `amount_deposited` varchar(100) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `plan` varchar(20) DEFAULT NULL,
  `bundle` varchar(200) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `deposit_method` varchar(100) DEFAULT NULL,
  `commission` varchar(100) DEFAULT NULL,
  `earnings` varchar(100) DEFAULT NULL,
  `amount_withdrawable` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `username`, `amount_deposited`, `time`, `date`, `status`, `image`, `plan`, `bundle`, `transaction_id`, `deposit_method`, `commission`, `earnings`, `amount_withdrawable`) VALUES
(45, 'oneopurumemmanuel', '2000', '11:00:07', '2019-04-13', '', NULL, 'bitcoin', 'BEGINNER', '979335849', NULL, '200', '300', '2300'),
(46, 'oneopurumemmanuel', '2000', '11:05:00', '2019-04-13', '', NULL, 'bitcoin', 'BEGINNER', '146689499', NULL, '200', '300', '2300'),
(47, 'ernest', '10000', '11:32:56', '2019-04-13', '', NULL, 'cannabis', 'SAPHIRE CRYSTAL', '117861703', NULL, '1000', '2000', '12000'),
(48, 'ernest', '10000', '11:32:57', '2019-04-13', '', NULL, 'cannabis', 'SAPHIRE CRYSTAL', '468796587', NULL, '1000', '2000', '12000'),
(49, 'oduduwa', '1000', '11:47:42', '2019-04-13', '', NULL, 'cannabis', 'BEGINNER', '202000855', NULL, '100', '150', '1150'),
(50, 'oneopurumemmanuel', '1000', '12:35:07', '2019-04-13', '', NULL, 'cannabis', 'BEGINNER', '732399250', NULL, '100', '150', '1150'),
(51, 'oneopurumemmanuel', '2000', '12:52:28', '2019-04-13', '', NULL, 'bitcoin', 'BEGINNER', '609284735', NULL, '200', '300', '2300'),
(52, 'ernest', '17000', '13:16:05', '2019-04-13', '', NULL, 'cannabis', 'QUARTZ CRYSTAL', '746905650', NULL, '1700', '3740', '20740'),
(53, 'oneopurumemmanuel', '2000', '13:23:53', '2019-04-13', '', NULL, 'bitcoin', 'BEGINNER', '953743642', NULL, '200', '300', '2300'),
(54, 'test', '5000', '14:06:13', '2019-04-13', '', NULL, 'cannabis', 'SAPHIRE CRYSTAL', '339782443', NULL, '500', '1000', '6000'),
(55, '', '4000', '14:09:31', '2019-04-13', '', NULL, 'bitcoin', 'BEGINNER', '567225492', NULL, '400', '600', '4600'),
(56, 'ernest', '17000', '21:45:54', '2019-04-13', '', NULL, 'cannabis', 'QUARTZ CRYSTAL', '369223809', NULL, '1700', '3740', '20740'),
(57, 'ernest', '7000', '07:27:11', '2019-04-14', '', NULL, 'cannabis', 'SAPHIRE CRYSTAL', '799985762', NULL, '700', '1400', '8400'),
(58, 'oneopurumemmanuel', '2500', '07:55:32', '2019-04-14', '', NULL, 'bitcoin', 'BEGINNER', '481470773', NULL, '250', '375', '2875'),
(59, 'ernest', '7000', '20:55:54', '2019-04-16', '', NULL, 'cannabis', 'SAPHIRE CRYSTAL', '234092519', NULL, '700', '1400', '8400'),
(60, 'ernest', '7000', '21:16:00', '2019-04-16', '', NULL, 'cannabis', 'SAPHIRE CRYSTAL', '507456719', NULL, '700', '1400', '8400'),
(61, 'peter', '5000', '06:52:53', '2019-04-01', 'active', 'uploads/large_basket_2wines.jpg', 'cannabis', 'SAPHIRE CRYSTAL', '344794311', NULL, '500', '1000', '6000'),
(62, 'peter', '5000', '06:58:20', '2019-04-20', '', NULL, 'cannabis', 'SAPHIRE CRYSTAL', '525487320', NULL, '500', '1000', '6000'),
(63, 'oneopurumemmanuel', '2000', '07:04:04', '2019-04-20', '', NULL, 'bitcoin', 'BEGINNER', '266005373', NULL, '200', '300', '2300'),
(64, 'oneopurumemmanuel', '2000', '07:07:55', '2019-04-20', '', NULL, 'bitcoin', 'BEGINNER', '515305683', NULL, '200', '300', '2300'),
(65, 'daniel', '3000', '07:25:38', '2019-04-20', 'active', 'uploads/apple-touch-icon.png', 'cannabis', 'BEGINNER', '720048329', NULL, '300', '450', '3450'),
(66, 'peter', '5000', '18:51:07', '2019-04-20', '', NULL, 'bitcoin', 'SAPHIRE CRYSTAL', '922543954', NULL, '500', '100', '6000'),
(68, 'peter', '4000', '19:14:07', '2019-04-20', '', NULL, 'bitcoin', 'BEGINNER', '149732544', NULL, '400', '600', '4600'),
(69, 'oneopurumemmanuel', '2000', '12:14:47', '2019-04-24', '', NULL, 'bitcoin', 'BEGINNER', '704762314', NULL, '200', '300', '2300'),
(70, 'rodney8197', '5000', '18:18:31', '2019-05-05', '', NULL, 'cannabis', 'SAPHIRE CRYSTAL', '116795406', NULL, '500', '1000', '6000'),
(71, 'sailing2960', '1000', '22:14:45', '2019-05-08', '', NULL, 'cannabis', 'BEGINNER', '537886214', NULL, '100', '150', '1150'),
(72, 'sailing2960', '1000', '16:47:05', '2019-05-09', '', NULL, 'cannabis', 'BEGINNER', '263008529', NULL, '100', '150', '1150'),
(73, 'sailing2960', '1500', '20:27:52', '2019-05-10', '', NULL, 'cannabis', 'BEGINNER', '118895452', NULL, '150', '225', '1725'),
(74, 'john$', '2000', '13:45:19', '2019-05-12', '', NULL, 'cannabis', 'BEGINNER', '711210422', NULL, '200', '300', '2300'),
(75, 'oneopurumemmanuel', '3000', '17:10:30', '2019-05-14', 'active', 'uploads/bank-transfer.png', 'bitcoin', 'BEGINNER', '676250005', NULL, '300', '450', '3450'),
(76, 'clive', '1500', '02:57:15', '2019-05-15', 'active', 'uploads/Screenshot_20190511-140238.png', 'bitcoin', 'BEGINNER', '681879920', NULL, '150', '225', '1725'),
(77, 'sailing2960', '5000', '04:02:03', '2019-05-15', '', NULL, 'cannabis', 'SAPHIRE CRYSTAL', '458044723', NULL, '500', '1000', '6000'),
(78, 'clive', '1000', '07:29:25', '2019-05-15', 'active', 'uploads/Screenshot_20190508-084533.png', 'cannabis', 'BEGINNER', '230388748', NULL, '100', '150', '1150'),
(79, 'sailing2960', '5000', '12:33:01', '2019-05-15', 'active', 'uploads/Screenshot_20190508-084533.png', 'cannabis', 'SAPHIRE CRYSTAL', '193261515', NULL, '500', '1000', '6000'),
(80, 'oneopurumemmanuel', '5000', '20:11:15', '2019-05-18', '', NULL, 'bitcoin', 'SAPHIRE CRYSTAL', '457110595', NULL, '500', '1000', '6000'),
(81, 'adam', '3000', '11:17:58', '2019-05-19', '', NULL, 'bitcoin', 'BEGINNER', '724999288', NULL, '0', '750', '3750'),
(82, 'peacek', '1500', '08:53:28', '2019-05-24', '', NULL, 'cannabis', 'BEGINNER', '851801420', NULL, '0', '375', '1875'),
(83, 'nana', '8500', '15:22:43', '2019-05-26', '', NULL, 'cannabis', 'SAPHIRE CRYSTAL', '677748185', NULL, '0', '2550', '11050'),
(84, 'peacek', '150000', '20:47:11', '2019-05-27', '', NULL, 'bitcoin', 'CITRINE CRYSTAL', '447468681', NULL, '0', '55500', '205500'),
(85, 'z1ststrand', '1000.00', '19:29:34', '2019-05-31', '', NULL, 'bitcoin', 'BEGINNER', '872483462', NULL, '0', '250', '1250'),
(86, 'z1ststrand', '1000.00', '19:35:42', '2019-05-31', '', NULL, 'bitcoin', 'BEGINNER', '852722240', NULL, '0', '250', '1250'),
(87, 'moores', '60,000', '14:38:31', '2019-06-05', 'active', 'uploads/Screenshot_20180413-035316.png', 'cannabis', 'JADE CRYSTAL', '183696978', NULL, '0', '21', '81'),
(88, 'moores', '50000', '14:44:14', '2019-06-05', '', NULL, 'bitcoin', 'JADE CRYSTAL', '248592717', NULL, '0', '17500', '67500'),
(89, 'oneopurumemmanuel', '1000', '17:16:38', '2019-06-05', '', NULL, 'bitcoin', 'BEGINNER', '754057664', NULL, '0', '250', '1250'),
(90, 'moores', '30000', '17:48:04', '2019-06-05', '', NULL, 'cannabis', 'QUARTZ CRYSTAL', '172350189', NULL, '0', '9600', '39600'),
(91, 'ratburat', '1\'', '10:06:31', '2019-06-07', '', NULL, 'cannabis', 'BEGINNER', '559866510', NULL, '0', '0.25', '1.25'),
(92, 'moores', '16000', '06:46:54', '2019-06-11', 'active', 'approved transaction', 'cannabis', 'QUARTZ CRYSTAL', '892766642', 'WFS Wallet', '0', '5120', '21120'),
(93, 'moores', '16000', '06:47:17', '2019-06-11', 'active', 'approved transaction', 'cannabis', 'QUARTZ CRYSTAL', '592680353', 'WFS Wallet', '0', '5120', '21120'),
(94, 'moores', '10000', '06:49:27', '2019-06-11', 'active', 'approved transaction', 'bitcoin', 'SAPHIRE CRYSTAL', '297950151', 'WFS Wallet', '0', '3000', '13000'),
(95, 'ug', '10000', '06:58:53', '2019-06-11', 'active', 'uploads/IMG-20190610-WA0001.jpg', 'cannabis', 'SAPHIRE CRYSTAL', '106148790', NULL, '0', '3000', '13000'),
(96, 'ug', '6000', '07:06:22', '2019-06-11', '', NULL, 'bitcoin', 'SAPHIRE CRYSTAL', '802445080', NULL, '0', '1800', '7800'),
(97, 'param12', '1000', '19:00:28', '2019-06-11', 'active', 'uploads/0F7EEAEB-A182-4576-94F6-78584CADCC7D.jpeg', 'bitcoin', 'BEGINNER', '649550384', NULL, '0', '250', '1250'),
(98, 'ug', '3000', '17:35:13', '2019-06-18', '', NULL, 'bitcoin', 'BEGINNER', '696375557', NULL, '0', '750', '3750'),
(99, 'coin2233', '1000', '20:46:03', '2019-06-25', '', NULL, 'bitcoin', 'BEGINNER', '520528969', NULL, '0', '250', '1250'),
(100, 'vhjjjkkjn', '4000', '22:46:59', '2019-06-26', '', NULL, 'bitcoin', 'BEGINNER', '769934851', NULL, '0', '1000', '5000'),
(101, 'vhjjjkkjn', '4000', '22:47:23', '2019-06-26', '', NULL, 'bitcoin', 'BEGINNER', '741608424', NULL, '0', '1000', '5000'),
(102, 'tombilly001', '700000', '19:11:33', '2019-06-28', '', NULL, 'bitcoin', 'PERIDOT CRYSTAL', '845898242', NULL, '0', '280000', '980000'),
(103, 'oneopurumemmanuel', '1000', '10:46:36', '2019-07-18', 'active', 'approved transaction', 'bitcoin', 'BEGINNER', '754935160', 'WFS Wallet', '0', '250', '1250'),
(104, 'oneopurumemmanuel', '1000', '10:59:55', '2019-07-18', 'active', 'approved transaction', 'bitcoin', 'BEGINNER', '756941960', 'WFS Wallet', '0', '250', '1250'),
(105, 'oneopurumemmanuel', '1000', '18:34:02', '2019-07-18', '', NULL, 'bitcoin', 'BEGINNER', '627622729', NULL, '0', '250', '1250'),
(106, 'mronyewu', '1000', '22:55:22', '2019-07-18', 'active', 'uploads/wholesale-smartphones-ottawa.jpg', 'bitcoin', 'BEGINNER', '629742598', NULL, '0', '300', '1300'),
(107, 'mronyewu', '10000', '23:46:44', '2019-07-18', 'active', 'uploads/screen480x480.jpeg', 'bitcoin', 'SAPHIRE CRYSTAL', '200416186', NULL, '0', '5000', '15000'),
(108, 'mronyewu', '500', '00:46:58', '2019-07-19', '', '', 'bitcoin', 'BEGINNER', '553555368', NULL, '0', '150', '650'),
(109, 'mronyewu', '500', '09:16:53', '2019-07-19', '', NULL, 'bitcoin', 'BEGINNER', '309214470', NULL, '0', '150', '650'),
(110, 'engremma', '10000', '19:31:47', '2019-07-19', 'active', 'uploads/how-gas-is-made.png', 'bitcoin', 'SAPHIRE CRYSTAL', '521922001', NULL, '0', '5000', '15000'),
(111, 'scott', '500', '19:14:17', '2019-07-20', '', NULL, 'bitcoin', 'BEGINNER', '904574885', NULL, '0', '150', '650'),
(112, 'scott', '500', '06:04:22', '2019-07-21', '', NULL, 'bitcoin', 'BEGINNER', '608874763', NULL, '0', '150', '650'),
(113, 'goretzka', '5000', '14:49:24', '2019-07-27', 'active', 'uploads/8B1CE481-43D7-4C73-B10B-8C28BC319653.jpeg', 'bitcoin', 'SAPHIRE CRYSTAL', '242531819', NULL, '0', '2500', '7500'),
(114, 'mronyewu', '500', '13:10:22', '2019-07-31', '', NULL, 'bitcoin', 'BEGINNER', '547872083', NULL, '0', '125', '625'),
(115, 'valentinefelix20', '100', '15:53:17', '2019-08-01', '', NULL, 'bitcoin', 'BEGINNER', '641595480', NULL, '0', '25', '125'),
(116, 'valentinefelix20', '100', '15:53:22', '2019-08-01', '', NULL, 'bitcoin', 'BEGINNER', '369242269', NULL, '0', '25', '125'),
(117, 'fayoma', '500', '04:07:40', '2019-08-02', 'active', 'approved transaction', 'bitcoin', 'BEGINNER', '360089579', 'WFS Wallet', '0', '125', '625'),
(118, 'johnpedro', '100', '04:47:46', '2019-08-02', '', NULL, 'bitcoin', 'BEGINNER', '920929498', NULL, '0', '25', '125'),
(119, 'johnpedro', '100', '04:49:44', '2019-08-02', '', NULL, 'bitcoin', 'BEGINNER', '330271374', NULL, '0', '25', '125'),
(120, 'kiraa', '100', '06:55:28', '2019-08-02', '', NULL, 'bitcoin', 'BEGINNER', '334398986', NULL, '0', '25', '125'),
(121, 'uuuuu', '12000', '08:54:30', '2019-08-02', '', NULL, 'bitcoin', 'SAPHIRE CRYSTAL', '465429885', NULL, '0', '6000', '18000'),
(122, 'eminent', '1000', '20:41:23', '2019-08-03', '', NULL, 'bitcoin', 'BASIC', '866495223', NULL, '0', '300', '1300'),
(123, 'akashgowda', '100', '03:51:54', '2019-08-04', '', NULL, 'bitcoin', 'BEGINNER', '983115343', NULL, '0', '25', '125'),
(124, 'eminent', '4000000', '12:24:56', '2019-08-04', '', NULL, 'bitcoin', 'ULTIMATE', '935268099', NULL, '0', '8000000', '12000000'),
(125, 'username', '23000', '21:49:37', '2019-08-05', '', NULL, 'bitcoin', 'ULTIMATE', '418268097', NULL, '0', '69000', '92000'),
(126, 'solery', '300.00', '04:40:32', '2019-08-06', '', NULL, 'bitcoin', 'BASIC', '893839156', NULL, '0', '450', '750'),
(127, 'juniex', '10', '13:11:37', '2019-08-06', '', NULL, 'bitcoin', 'BEGINNER', '438063807', NULL, '0', '12.5', '22.5'),
(128, 'juniex', '10', '14:05:35', '2019-08-06', 'active', 'uploads/a93d2fdd-6fc2-4973-ae56-31c4c4a4e76c.jpg', 'bitcoin', 'BEGINNER', '132594015', NULL, '0', '12.5', '22.5'),
(129, 'juniex', '10', '14:05:40', '2019-08-06', '', '', 'bitcoin', 'BEGINNER', '135304607', NULL, '0', '12.5', '22.5'),
(130, 'phuongtram168', '90', '15:32:36', '2019-08-06', 'active', 'uploads/photo_2019-08-06_23-22-34.jpg', 'bitcoin', 'BEGINNER', '415788586', NULL, '0', '112.5', '202.5'),
(131, 'phuongtram168', '90', '15:35:32', '2019-08-06', '', '', 'bitcoin', 'BEGINNER', '826980970', NULL, '0', '112.5', '202.5'),
(132, 'ella', '99', '16:25:32', '2019-08-06', 'active', 'approved transaction', 'bitcoin', 'BEGINNER', '626807162', 'WFS Wallet', '0', '123.75', '222.75'),
(133, 'ella', '78', '16:25:41', '2019-08-06', 'active', 'approved transaction', 'bitcoin', 'BEGINNER', '807290532', 'WFS Wallet', '0', '97.5', '175.5'),
(134, 'ella', '12', '16:26:02', '2019-08-06', 'active', 'approved transaction', 'bitcoin', 'BEGINNER', '897123157', 'WFS Wallet', '0', '15', '27'),
(135, 'ella', '100', '16:29:25', '2019-08-06', 'active', 'approved transaction', 'bitcoin', 'BEGINNER', '175194348', 'WFS Wallet', '0', '125', '225'),
(136, 'ella', '200000', '16:34:17', '2019-08-06', '', NULL, 'bitcoin', 'ULTIMATE', '122589047', NULL, '0', '600000', '800000'),
(137, 'phuongtram168', '100', '19:34:17', '2019-08-07', '', NULL, 'bitcoin', 'BEGINNER', '797613425', NULL, '0', '125', '225'),
(138, 'phuongtram168', '100', '19:34:23', '2019-08-07', '', NULL, 'bitcoin', 'BEGINNER', '834778069', NULL, '0', '125', '225'),
(139, 'phuongtram168', '100', '19:34:28', '2019-08-07', '', NULL, 'bitcoin', 'BEGINNER', '211967335', NULL, '0', '125', '225'),
(140, 'linhlam', '10', '22:11:13', '2019-08-07', '', NULL, 'bitcoin', 'BEGINNER', '767834834', NULL, '0', '12.5', '22.5'),
(141, 'juniex', '10', '05:21:04', '2019-08-08', 'active', 'uploads/a60ce9b7-4d6a-4cf4-b281-f22b26d0c919 (1).jpg', 'bitcoin', 'BEGINNER', '838444812', NULL, '0', '12.5', '22.5'),
(142, 'juniex', '10', '07:23:13', '2019-08-08', '', NULL, 'bitcoin', 'BEGINNER', '239285375', NULL, '0', '12.5', '22.5'),
(143, 'juniex', '10', '07:42:18', '2019-08-08', '', NULL, 'bitcoin', 'BEGINNER', '761132895', NULL, '0', '12.5', '22.5'),
(144, 'juniex', '10', '11:48:44', '2019-08-08', 'active', 'uploads/95d40e48-709c-46cf-893c-d53fedab161c.jpg', 'bitcoin', 'BEGINNER', '294736573', NULL, '0', '12.5', '22.5'),
(145, 'juniex', '10', '11:48:49', '2019-08-08', '', NULL, 'bitcoin', 'BEGINNER', '703838427', NULL, '0', '12.5', '22.5'),
(146, 'juniex', '10', '11:48:54', '2019-08-08', '', NULL, 'bitcoin', 'BEGINNER', '686488595', NULL, '0', '12.5', '22.5'),
(147, 'juniex', '10', '11:48:59', '2019-08-08', '', NULL, 'bitcoin', 'BEGINNER', '973227929', NULL, '0', '12.5', '22.5'),
(148, 'juniex', '10', '15:11:53', '2019-08-08', '', NULL, 'bitcoin', 'BEGINNER', '954190665', NULL, '0', '12.5', '22.5'),
(149, 'juniex', '10', '16:38:15', '2019-08-08', '', NULL, 'bitcoin', 'BEGINNER', '236015640', NULL, '0', '12.5', '22.5'),
(150, 'juniex', '10', '16:53:04', '2019-08-08', '', NULL, 'bitcoin', 'BEGINNER', '861817083', NULL, '0', '12.5', '22.5'),
(151, 'juniex', '10', '16:59:06', '2019-08-08', '', NULL, 'bitcoin', 'BEGINNER', '474366547', NULL, '0', '12.5', '22.5'),
(152, 'juniex', '10', '00:09:14', '2019-08-09', '', NULL, 'bitcoin', 'BEGINNER', '323848018', NULL, '0', '12.5', '22.5'),
(153, 'juniex', '10', '02:17:00', '2019-08-09', '', NULL, 'bitcoin', 'BEGINNER', '208625813', NULL, '0', '12.5', '22.5'),
(154, 'juniex', '10', '04:39:47', '2019-08-09', '', NULL, 'bitcoin', 'BEGINNER', '823765129', NULL, '0', '12.5', '22.5'),
(155, 'juniex', '30', '22:39:06', '2019-08-09', '', '', 'bitcoin', 'BEGINNER', '169153759', NULL, '0', '37.5', '67.5'),
(156, 'juniex', '30', '00:33:44', '2019-08-10', '', NULL, 'bitcoin', 'BEGINNER', '412402665', NULL, '0', '37.5', '67.5'),
(157, 'juniex', '30', '00:34:07', '2019-08-10', '', NULL, 'bitcoin', 'BEGINNER', '597540704', NULL, '0', '37.5', '67.5'),
(158, 'juniex', '10', '02:12:26', '2019-08-10', '', NULL, 'bitcoin', 'BEGINNER', '373833566', NULL, '0', '12.5', '22.5'),
(159, 'juniex', '10', '02:12:31', '2019-08-10', '', NULL, 'bitcoin', 'BEGINNER', '417342823', NULL, '0', '12.5', '22.5'),
(160, 'juniex', '10', '02:29:04', '2019-08-10', '', NULL, 'bitcoin', 'BEGINNER', '260370642', NULL, '0', '12.5', '22.5'),
(161, 'juniex', '22', '12:44:07', '2019-08-11', '', NULL, 'bitcoin', 'BEGINNER', '447362408', NULL, '0', '27.5', '49.5'),
(162, 'juniex', '70', '14:10:24', '2019-08-12', '', NULL, 'bitcoin', 'BEGINNER', '972500696', NULL, '0', '87.5', '157.5'),
(163, 'juniex', '67', '17:17:42', '2019-08-12', '', NULL, 'bitcoin', 'BEGINNER', '468500092', NULL, '0', '83.75', '150.75'),
(164, 'juniex', '67', '17:20:03', '2019-08-12', '', NULL, 'bitcoin', 'BEGINNER', '953197042', NULL, '0', '83.75', '150.75'),
(165, 'juniex', '67', '17:28:58', '2019-08-12', '', NULL, 'bitcoin', 'BEGINNER', '888874201', NULL, '0', '83.75', '150.75'),
(166, 'juniex', '67', '00:36:35', '2019-08-13', 'active', 'uploads/51644370-2271-429d-812d-a8dbfc127b49.jpg', 'bitcoin', 'BEGINNER', '116481364', NULL, '0', '83.75', '150.75'),
(167, 'juniex', '67', '00:36:40', '2019-08-13', '', NULL, 'bitcoin', 'BEGINNER', '870268362', NULL, '0', '83.75', '150.75'),
(168, 'juniex', '67', '00:36:46', '2019-08-13', '', NULL, 'bitcoin', 'BEGINNER', '492258937', NULL, '0', '83.75', '150.75'),
(169, 'juniex', '67', '00:58:15', '2019-08-13', '', NULL, 'bitcoin', 'BEGINNER', '967795707', NULL, '0', '83.75', '150.75'),
(170, 'juniex', '67', '03:03:28', '2019-08-13', '', NULL, 'bitcoin', 'BEGINNER', '822173912', NULL, '0', '83.75', '150.75'),
(171, 'juniex', '67', '03:04:59', '2019-08-13', '', NULL, 'bitcoin', 'BEGINNER', '822710226', NULL, '0', '83.75', '150.75'),
(172, 'juniex', '67', '07:16:24', '2019-08-13', '', NULL, 'bitcoin', 'BEGINNER', '672115020', NULL, '0', '83.75', '150.75'),
(173, 'juniex', '67', '07:16:29', '2019-08-13', '', NULL, 'bitcoin', 'BEGINNER', '550998255', NULL, '0', '83.75', '150.75'),
(174, 'juniex', '67', '07:16:34', '2019-08-13', '', NULL, 'bitcoin', 'BEGINNER', '577692702', NULL, '0', '83.75', '150.75'),
(175, 'juniex', '67', '07:16:39', '2019-08-13', '', NULL, 'bitcoin', 'BEGINNER', '951423677', NULL, '0', '83.75', '150.75'),
(176, 'juniex', '67', '07:16:44', '2019-08-13', '', NULL, 'bitcoin', 'BEGINNER', '786587594', NULL, '0', '83.75', '150.75'),
(177, 'juniex', '67', '10:55:48', '2019-08-13', '', NULL, 'bitcoin', 'BEGINNER', '651635334', NULL, '0', '83.75', '150.75'),
(178, 'james11mahal1128', '30.00', '14:59:09', '2019-08-13', '', NULL, 'bitcoin', 'BEGINNER', '913997704', NULL, '0', '37.5', '67.5'),
(179, 'james11mahal1128', '30.00', '15:05:27', '2019-08-13', '', NULL, 'bitcoin', 'BEGINNER', '969935367', NULL, '0', '37.5', '67.5'),
(180, 'james11mahal1128', '20.00', '07:37:55', '2019-08-14', '', NULL, 'bitcoin', 'BEGINNER', '364557151', NULL, '0', '25', '45'),
(181, 'juniex', '81', '23:23:38', '2019-08-14', '', NULL, 'bitcoin', 'BEGINNER', '794742264', NULL, '0', '101.25', '182.25'),
(182, 'juniex', '100', '03:38:55', '2019-08-15', 'active', 'uploads/6749bbbe-dc4b-43a2-9e7b-171a7a0acb58.jpg', 'bitcoin', 'BEGINNER', '114241606', NULL, '0', '125', '225'),
(183, 'juniex', '10', '04:30:33', '2019-08-15', '', NULL, 'bitcoin', 'BEGINNER', '834731681', NULL, '0', '12.5', '22.5'),
(184, 'juniex', '10', '04:36:13', '2019-08-15', 'active', 'uploads/fd7d56ed-178e-4ba5-acca-39799c037da7.jpg', 'bitcoin', 'BEGINNER', '957989566', NULL, '0', '12.5', '22.5'),
(185, 'james11mahal1128', '15', '10:45:12', '2019-08-15', '', NULL, 'bitcoin', 'BEGINNER', '462152153', NULL, '0', '18.75', '33.75'),
(186, 'collynslyz', '10', '13:02:09', '2019-08-15', '', NULL, 'bitcoin', 'BEGINNER', '364720313', NULL, '0', '12.5', '22.5'),
(187, 'collynslyz', '10', '13:33:25', '2019-08-15', '', NULL, 'bitcoin', 'BEGINNER', '414524600', NULL, '0', '12.5', '22.5'),
(188, 'hyipnl', '25', '14:25:16', '2019-08-15', '', NULL, 'bitcoin', 'BEGINNER', '169009597', NULL, '0', '31.25', '56.25'),
(189, 'collynslyz', '10', '14:56:32', '2019-08-15', '', NULL, 'bitcoin', 'BEGINNER', '872527174', NULL, '0', '12.5', '22.5'),
(190, 'collynslyz', '10', '14:56:37', '2019-08-15', '', NULL, 'bitcoin', 'BEGINNER', '196639724', NULL, '0', '12.5', '22.5'),
(191, 'collynslyz', '10', '21:18:57', '2019-08-15', '', NULL, 'bitcoin', 'BEGINNER', '664861762', NULL, '0', '12.5', '22.5'),
(192, 'uugan', '10', '01:49:17', '2019-08-16', '', NULL, 'bitcoin', 'BEGINNER', '837969467', NULL, '0', '12.5', '22.5'),
(193, 'mohab7410', '10', '11:53:15', '2019-08-16', '', NULL, 'bitcoin', 'BEGINNER', '384818593', NULL, '0', '12.5', '22.5'),
(194, 'frankenstein84', '20000', '13:42:41', '2019-08-16', '', NULL, 'bitcoin', 'ULTIMATE', '162449243', NULL, '0', '60000', '80000'),
(195, 'juniex', '100', '15:42:42', '2019-08-16', '', '', 'bitcoin', 'BEGINNER', '714843351', NULL, '0', '125', '225'),
(196, 'juniex', '100', '15:54:21', '2019-08-16', '', NULL, 'bitcoin', 'BEGINNER', '996567208', NULL, '0', '125', '225'),
(197, 'juniex', '100', '16:06:06', '2019-08-16', '', NULL, 'bitcoin', 'BEGINNER', '761589224', NULL, '0', '125', '225'),
(198, 'juniex', '100', '16:08:16', '2019-08-16', '', '', 'bitcoin', 'BEGINNER', '158759464', NULL, '0', '125', '225'),
(199, 'juniex', '100', '16:13:02', '2019-08-16', '', NULL, 'bitcoin', 'BEGINNER', '543655067', NULL, '0', '125', '225'),
(200, 'juniex', '100', '16:17:36', '2019-08-16', '', NULL, 'bitcoin', 'BEGINNER', '296217860', NULL, '0', '125', '225'),
(201, 'juniex', '100', '16:24:21', '2019-08-16', '', NULL, 'bitcoin', 'BEGINNER', '938738533', NULL, '0', '125', '225'),
(202, 'juniex', '100', '16:37:31', '2019-08-16', '', NULL, 'bitcoin', 'BEGINNER', '713365849', NULL, '0', '125', '225'),
(203, 'juniex', '100', '23:06:03', '2019-08-16', 'active', 'uploads/99bfd987-420c-4b33-b9d5-1da0edd48cd5.jpg', 'bitcoin', 'BEGINNER', '301484300', NULL, '0', '125', '225'),
(204, 'juniex', '100', '23:19:30', '2019-08-16', '', NULL, 'bitcoin', 'BEGINNER', '663108050', NULL, '0', '125', '225'),
(205, 'smishra92', '100', '05:41:37', '2019-08-18', '', NULL, 'bitcoin', 'BEGINNER', '722127175', NULL, '0', '125', '225'),
(206, 'smishra92', '100', '05:44:43', '2019-08-18', '', NULL, 'bitcoin', 'BEGINNER', '784255269', NULL, '0', '125', '225'),
(207, 'smishra92', '100', '06:21:09', '2019-08-18', 'active', 'uploads/output-onlinejpgtools.jpg', 'bitcoin', 'BEGINNER', '428712433', NULL, '0', '125', '225'),
(208, 'saumya19', '50', '10:06:30', '2019-08-18', 'active', 'uploads/output-onlinejpgtools (1).jpg', 'bitcoin', 'BEGINNER', '958981416', NULL, '0', '62.5', '112.5'),
(209, 'juniex', '200', '11:24:47', '2019-08-20', '', NULL, 'bitcoin', 'BASIC', '959839458', NULL, '0', '300', '500'),
(210, 'juniex', '201', '11:49:12', '2019-08-20', '', NULL, 'bitcoin', 'BASIC', '201431149', NULL, '0', '301.5', '502.5'),
(211, 'juniex', '200', '12:12:08', '2019-08-20', '', NULL, 'bitcoin', 'BASIC', '312440542', NULL, '0', '300', '500'),
(212, 'juniex', '200', '12:55:35', '2019-08-20', 'active', 'uploads/88752ac5-9321-4196-b9a9-6554fb79e036.jpg', 'bitcoin', 'BASIC', '170169317', NULL, '0', '300', '500'),
(213, 'juniex', '200', '12:55:40', '2019-08-20', '', NULL, 'bitcoin', 'BASIC', '694772122', NULL, '0', '300', '500'),
(214, 'juniex', '200', '12:58:17', '2019-08-20', '', NULL, 'bitcoin', 'BASIC', '860194736', NULL, '0', '300', '500'),
(215, 'juniex', '200', '13:37:22', '2019-08-20', '', NULL, 'bitcoin', 'BASIC', '848765530', NULL, '0', '300', '500'),
(216, 'juniex', '200', '15:16:39', '2019-08-20', '', NULL, 'bitcoin', 'BASIC', '518027037', NULL, '0', '300', '500'),
(217, 'juniex', '200', '15:33:10', '2019-08-20', '', NULL, 'bitcoin', 'BASIC', '529684188', NULL, '0', '300', '500'),
(218, 'juniex', '201', '15:37:54', '2019-08-20', '', NULL, 'bitcoin', 'BASIC', '401643984', NULL, '0', '301.5', '502.5'),
(219, 'chini', '80', '23:47:02', '2019-08-21', 'active', 'uploads/IMG-20190821-WA0054.jpg', 'bitcoin', 'BEGINNER', '762088121', NULL, '0', '100', '180'),
(220, 'chini', '200', '00:01:25', '2019-08-22', 'active', 'uploads/IMG-20190821-WA0054.jpg', 'bitcoin', 'BASIC', '499354209', NULL, '0', '300', '500'),
(221, 'frankenstein84', '10', '23:19:41', '2019-08-22', '', NULL, 'bitcoin', 'BEGINNER', '287621759', NULL, '0', '12.5', '22.5'),
(222, 'juniex', '1000', '04:14:54', '2019-08-25', 'active', 'uploads/865afb85-d5cb-4199-b830-f22454648d37 (1).jpg', 'bitcoin', 'BASIC', '224253556', NULL, '0', '1500', '2500'),
(223, 'juniex', '1000', '04:43:18', '2019-08-25', '', 'uploads/WIN_20190826_13_32_20_Pro.jpg', 'bitcoin', 'BASIC', '958047678', NULL, '0', '1500', '2500'),
(224, 'juniex', '1000', '19:53:07', '2019-08-25', '', NULL, 'bitcoin', 'BASIC', '445551266', NULL, '0', '1500', '2500'),
(225, 'juniex', '10', '20:03:47', '2019-08-25', '', NULL, 'bitcoin', 'BEGINNER', '306586725', NULL, '0', '12.5', '22.5'),
(226, 'juniex', '10', '20:05:08', '2019-08-25', '', NULL, 'bitcoin', 'BEGINNER', '340792593', NULL, '0', '12.5', '22.5'),
(227, 'juniex', '10', '20:05:13', '2019-08-25', '', NULL, 'bitcoin', 'BEGINNER', '414470810', NULL, '0', '12.5', '22.5'),
(228, 'juniex', '10', '20:05:18', '2019-08-25', '', NULL, 'bitcoin', 'BEGINNER', '373620363', NULL, '0', '12.5', '22.5'),
(229, 'juniex', '10', '20:05:24', '2019-08-25', '', NULL, 'bitcoin', 'BEGINNER', '235303859', NULL, '0', '12.5', '22.5'),
(230, 'juniex', '1000', '22:24:12', '2019-08-25', '', NULL, 'bitcoin', 'BASIC', '777670620', NULL, '0', '1500', '2500'),
(231, 'juniex', '1000', '22:24:17', '2019-08-25', '', 'uploads/85228261-148f-45ea-87ca-1f36518b1343.jpg', 'bitcoin', 'BASIC', '660028874', NULL, '0', '1500', '2500'),
(232, 'juniex', '12', '22:53:09', '2019-08-25', '', 'uploads/ca1eb617-6d86-40ea-9d11-d5ca572a4598.jpg', 'bitcoin', 'BEGINNER', '775955401', NULL, '0', '15', '27'),
(233, 'frankenstein84', '12', '20:34:01', '2019-08-26', '', NULL, 'bitcoin', 'BEGINNER', '238736129', NULL, '0', '15', '27'),
(234, 'mronyewu', '100', '13:52:27', '2019-08-30', '', NULL, 'bitcoin', 'BEGINNER', '962371058', NULL, '0', '125', '225'),
(235, 'mronyewu', '100', '01:02:16', '2019-09-04', '', NULL, 'bitcoin', 'BEGINNER', '453546748', NULL, '0', '125', '225'),
(236, 'mronyewu', '40', '17:02:16', '2019-11-06', '', NULL, 'bitcoin', 'BEGINNER', '469965152', NULL, '0', '50', '90');

-- --------------------------------------------------------

--
-- Table structure for table `earning`
--

CREATE TABLE `earning` (
  `id` int(250) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `wallet_address` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `latest_deposits`
--

CREATE TABLE `latest_deposits` (
  `id` int(250) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `latest_deposits`
--

INSERT INTO `latest_deposits` (`id`, `username`, `amount`, `status`) VALUES
(1, 'Bruce', '9000', 'Active'),
(2, 'Jake5', '5000', 'Active'),
(3, 'Zues', '55000', 'Active'),
(4, 'Mark56', '7800', 'Active'),
(5, 'Mira', '11200', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `latest_withdrawals`
--

CREATE TABLE `latest_withdrawals` (
  `id` int(250) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `latest_withdrawals`
--

INSERT INTO `latest_withdrawals` (`id`, `username`, `amount`, `status`) VALUES
(1, 'Lucas5', '4800', 'completed'),
(2, 'Tuzi', '4500', 'completed'),
(3, 'Mike67', '4500', 'completed'),
(4, 'Jay', '3300', 'completed'),
(5, 'Ken', '4050', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `id` int(250) NOT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `date_of_birth` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `national_id` varchar(100) DEFAULT NULL,
  `tax_no` varchar(100) DEFAULT NULL,
  `wallet` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `balance` varchar(20) DEFAULT NULL,
  `image2` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nfp_date`
--

CREATE TABLE `nfp_date` (
  `id` int(20) NOT NULL,
  `date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `investor` varchar(200) NOT NULL,
  `country` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `wallet_address` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `investor`, `country`, `amount`, `wallet_address`, `status`, `created_at`) VALUES
(1, 'Ed Thompson', 'USA', '3000', '1qDGvsbsggBCQh54ggxrrEWdd', 'Complete', '2019-02-22 21:11:50'),
(2, 'Arpan Singh', 'India', '1000', '2qGHrczcEERffx1fxxc3gxDD1cw', 'Complete', '2019-02-22 21:11:50'),
(3, 'Shunsuike Groomes', 'Japan', '7000', '1g4gfscRDXrrsXVVccccfccszvs', 'Complete', '2019-02-22 21:11:50'),
(4, 'Andressa Lewis', 'Canada', '7000', '1qGDHfd44vGGGDdssdffhgggne', 'Complete', '2019-02-22 21:11:50'),
(5, 'Albertina Scottson', 'Canada', '1000', '2FFGhgfEQE43FVjggfdfHGFDg', 'Complete', '2019-02-22 21:11:50'),
(6, 'Rashaq Ismaili', 'Iran', '500', '2qGFddsdsssfDDsTDTdscsc1dxxgfDF', 'Complete', '2019-07-19 03:15:51'),
(7, 'Singn Joseph', 'Russia', '4500', 'Afgey1136ggdfghsjs', 'Complete', '2019-07-19 12:18:53'),
(8, 'Mike daron', 'Uk', '10000', 'Adfghgjfkfitioupphd4ggj', 'Complete', '2019-07-19 23:24:20'),
(9, 'Martin leo', 'Poland', '6800', 'Fafgdjfopqueiriikttghxbvbanddbnm', 'Complete', '2019-07-26 11:29:14'),
(10, 'Grace daron', 'Uk', '12300', 'Asdfgjloetyiipanzgjsgjflopdgvznknxb', 'Complete', '2019-07-26 11:30:05'),
(11, 'Goretzka Brandt', 'Germany', '3500', 'Mnbvczddgjkoytaqoptrdcsblfhioez', 'Complete', '2019-07-26 11:30:52'),
(12, 'Mary klopp', 'Uk', '2500', 'Fagdjfkgoroeyzyzgxbvlgof', 'Complete', '2019-07-26 19:12:06'),
(13, 'Goretzka Brandt', 'Germany', '3500', 'Mnbvczddgjkoytaqoptrdcsblfhioez', 'Complete', '2019-07-31 02:05:57'),
(14, 'Smith Johnson', 'New Jersey', '40000', 'GshdhjddueutofjxbvFsmvzbfaqwrtipldhbx', 'Complete', '2019-08-01 01:18:32'),
(15, 'Maria hernandez', 'Ohio', '15000', 'Zasqwryiplmnvzdghetaio', 'Complete', '2019-08-01 01:21:10'),
(16, 'Dave Robbert', 'Uk', '16000', 'Dagshjfkowgxnklooqshfkfk', 'Complete', '2019-08-01 01:22:46'),
(17, 'Bram dan', 'Uk', '4000', 'FaghdjxkrahqirpdknVgfagsgdbx', 'Complete', '2019-08-01 01:31:56'),
(18, 'Flavio luca', 'Italy', '9000', 'GsdjfkgowurufuxhvBclvjsnshdjjf', 'Complete', '2019-08-01 01:33:34'),
(19, 'Angelo sarah', 'Spain', '16000', 'Xzcbnlajddwiprkbxbdhskhbddaqw', 'Complete', '2019-08-01 01:34:30'),
(20, 'Anna luuk', 'Norway', '2000', 'AgsjdkfkgoehxvMdlodh', 'Complete', '2019-08-01 01:36:08'),
(21, 'Jane mark', 'Usa', '7600', 'Ljkxfhkkuc', 'Complete', '2019-08-14 01:50:37'),
(22, 'Paul lee', 'China', '5200', 'Sfhj', 'Complete', '2019-08-14 01:51:13');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(20) NOT NULL,
  `plan` varchar(100) DEFAULT NULL,
  `bundle` varchar(20) DEFAULT NULL,
  `minimium` varchar(20) DEFAULT NULL,
  `maximium` varchar(20) DEFAULT NULL,
  `percentage` varchar(20) DEFAULT NULL,
  `referal_bonus` varchar(20) DEFAULT NULL,
  `commission` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `payout` varchar(20) DEFAULT NULL,
  `no_of_times` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `plan`, `bundle`, `minimium`, `maximium`, `percentage`, `referal_bonus`, `commission`, `duration`, `payout`, `no_of_times`) VALUES
(2, 'cannabis', 'BEGINNER', '500', '4000', '30', '10', '0', '7 days', '1 day', '7'),
(3, 'cannabis', 'SAPHIRE CRYSTAL', '5000', '15000', '50', '10', '0', '7 days', '1 day', '7'),
(5, 'cannabis', 'QUARTZ CRYSTAL', '16000', '40000', '75', '10', '0', '7 days', '1 day', '7'),
(6, 'cannabis', 'JADE CRYSTAL', '50000', '90000', '100', '10', '0', '7 days', '1 day', '7'),
(7, 'cannabis', 'CITRINE CRYSTAL', '100000', '500000', '125', '10', '0', '7 days', '1 day', '7'),
(8, 'cannabis', 'PERIDOT CRYSTAL', '600000', '3000000', '150', '10', '0', '7 days', '1 day', '7'),
(9, 'bitcoin', 'BASIC', '200', '1000', '150', '10', '0', '48 Hours', '1 day', '2'),
(10, 'bitcoin', 'SAPHIRE CRYSTAL', '5000', '15000', '50', '10', '0', '7 days', '1 day', '7'),
(11, 'bitcoin', 'QUARTZ CRYSTAL', '16000', '40000', '75', '10', '0', '7 days', '1 day', '7'),
(12, 'bitcoin', 'JADE CRYSTAL', '50000', '90000', '100', '10', '0', '7 days', '1 day', '7'),
(13, 'bitcoin', 'CITRINE CRYSTAL', '100000', '500000', '125', '10', '0', '7 days', '1 day', '7'),
(14, 'bitcoin', 'PERIDOT CRYSTAL', '2000', '10000', '200', '15', '0', '72 Hours', '1 day', '3'),
(15, 'bitcoin', 'BEGINNER', '10', '100', '125', '5', '0', '24 Hours', '1 day', '1'),
(16, 'bitcoin', 'ULTIMATE', '20000', '100000000', '300', '20', '0', '72 Hours', '1 day', '3');

-- --------------------------------------------------------

--
-- Table structure for table `referal_withdrawal`
--

CREATE TABLE `referal_withdrawal` (
  `id` int(250) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `wallet_address` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `triger` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referal_withdrawal`
--

INSERT INTO `referal_withdrawal` (`id`, `username`, `amount`, `status`, `wallet_address`, `transaction_id`, `triger`) VALUES
(93, 'None', '350', 'active', 'None', '236010742', NULL),
(94, 'None', '600', 'active', 'None', '344967651', NULL),
(95, 'None', '340', 'active', 'None', '437500000', NULL),
(96, 'None', '900', 'active', 'None', '418191528', NULL),
(97, 'None', '200', '', 'None', '979335849', NULL),
(98, 'None', '200', '', 'None', '146689499', NULL),
(99, 'None', '1000', '', 'None', '117861703', NULL),
(100, 'None', '1000', '', 'None', '468796587', NULL),
(101, 'None', '100', '', 'None', '202000855', NULL),
(102, 'None', '100', '', 'None', '732399250', NULL),
(103, 'None', '200', '', 'None', '609284735', NULL),
(104, 'None', '1700', '', 'None', '746905650', NULL),
(105, 'None', '200', '', 'None', '953743642', NULL),
(106, 'None', '500', '', 'None', '339782443', NULL),
(107, 'None', '400', '', 'None', '567225492', NULL),
(108, 'None', '1700', '', 'None', '369223809', NULL),
(109, 'None', '700', '', 'None', '799985762', NULL),
(110, 'None', '250', '', 'None', '481470773', NULL),
(111, 'None', '700', '', 'None', '234092519', NULL),
(112, 'None', '700', '', 'None', '507456719', NULL),
(113, 'None', '500', 'active', 'None', '344794311', NULL),
(114, 'None', '500', '', 'None', '525487320', NULL),
(115, 'None', '200', '', 'None', '266005373', NULL),
(116, 'None', '200', '', 'None', '515305683', NULL),
(117, 'None', '300', 'active', 'None', '720048329', NULL),
(118, 'None', '500', '', 'None', '922543954', NULL),
(119, 'None', '300', 'active', 'None', '293241679', NULL),
(120, 'None', '400', '', 'None', '149732544', NULL),
(121, 'None', '200', '', 'None', '704762314', NULL),
(122, 'None', '500', '', 'None', '116795406', NULL),
(123, 'None', '100', '', 'None', '537886214', NULL),
(124, 'None', '100', '', 'None', '263008529', NULL),
(125, 'None', '150', '', 'None', '118895452', NULL),
(126, 'None', '200', '', 'None', '711210422', NULL),
(127, 'None', '300', 'active', 'None', '676250005', NULL),
(128, 'None', '150', 'active', 'None', '681879920', NULL),
(129, 'None', '500', '', 'None', '458044723', NULL),
(130, 'None', '100', 'active', 'None', '230388748', NULL),
(131, 'None', '500', '', 'None', '193261515', NULL),
(132, 'None', '500', '', 'None', '457110595', NULL),
(133, 'None', '300', '', 'None', '724999288', NULL),
(134, 'None', '150', '', 'None', '851801420', NULL),
(135, 'None', '850', '', 'None', '677748185', NULL),
(136, 'None', '15000', '', 'None', '447468681', NULL),
(137, 'None', '100', '', 'None', '872483462', NULL),
(138, 'None', '100', '', 'None', '852722240', NULL),
(139, 'None', '6', 'active', 'None', '183696978', NULL),
(140, 'None', '5000', '', 'None', '248592717', NULL),
(141, 'None', '100', '', 'None', '754057664', NULL),
(142, 'None', '3000', '', 'None', '172350189', NULL),
(143, 'None', '0.1', '', 'None', '559866510', NULL),
(144, 'None', '1600', 'active', 'None', '892766642', NULL),
(145, 'None', '1600', 'active', 'None', '592680353', NULL),
(146, 'None', '1000', 'active', 'None', '297950151', NULL),
(147, 'None', '1000', 'active', 'None', '106148790', NULL),
(148, 'None', '600', '', 'None', '802445080', NULL),
(149, 'None', '100', 'active', 'None', '649550384', NULL),
(150, 'None', '300', '', 'None', '696375557', NULL),
(151, 'None', '100', '', 'None', '520528969', NULL),
(152, 'None', '400', '', 'None', '769934851', NULL),
(153, 'None', '400', '', 'None', '741608424', NULL),
(154, 'None', '70000', '', 'None', '845898242', NULL),
(155, 'None', '100', 'active', 'None', '754935160', NULL),
(156, 'None', '100', 'active', 'None', '756941960', NULL),
(157, 'None', '100', '', 'None', '627622729', NULL),
(158, 'None', '100', 'active', 'None', '629742598', NULL),
(159, 'None', '1000', 'active', 'None', '200416186', NULL),
(160, 'None', '50', '', 'None', '553555368', NULL),
(161, 'None', '50', '', 'None', '309214470', NULL),
(162, 'None', '1000', 'active', 'None', '521922001', NULL),
(163, 'None', '50', '', 'None', '904574885', NULL),
(164, 'None', '50', '', 'None', '608874763', NULL),
(165, 'None', '500', 'active', 'None', '242531819', NULL),
(166, 'None', '50', '', 'None', '547872083', NULL),
(167, 'None', '10', '', 'None', '641595480', NULL),
(168, 'None', '10', '', 'None', '369242269', NULL),
(169, 'None', '50', 'active', 'None', '360089579', NULL),
(170, 'None', '10', '', 'None', '920929498', NULL),
(171, 'None', '10', '', 'None', '330271374', NULL),
(172, 'None', '10', '', 'None', '334398986', NULL),
(173, 'None', '1200', '', 'None', '465429885', NULL),
(174, 'None', '100', '', 'None', '866495223', NULL),
(175, 'None', '10', '', 'None', '983115343', NULL),
(176, 'None', '400000', '', 'None', '935268099', NULL),
(177, 'None', '4600', '', 'None', '418268097', NULL),
(178, 'None', '30', '', 'None', '893839156', NULL),
(179, 'None', '0.5', '', 'None', '438063807', NULL),
(180, 'None', '0.5', 'active', 'None', '132594015', NULL),
(181, 'None', '0.5', '', 'None', '135304607', NULL),
(182, 'None', '4.5', 'active', 'None', '415788586', NULL),
(183, 'None', '4.5', '', 'None', '826980970', NULL),
(184, 'None', '4.95', 'active', 'None', '626807162', NULL),
(185, 'None', '3.9', 'active', 'None', '807290532', NULL),
(186, 'None', '0.6', 'active', 'None', '897123157', NULL),
(187, 'None', '5', 'active', 'None', '175194348', NULL),
(188, 'None', '40000', '', 'None', '122589047', NULL),
(189, 'None', '5', '', 'None', '797613425', NULL),
(190, 'None', '5', '', 'None', '834778069', NULL),
(191, 'None', '5', '', 'None', '211967335', NULL),
(192, 'None', '0.5', '', 'None', '767834834', NULL),
(193, 'None', '0.5', 'active', 'None', '838444812', NULL),
(194, 'None', '0.5', '', 'None', '239285375', NULL),
(195, 'None', '0.5', '', 'None', '761132895', NULL),
(196, 'None', '0.5', 'active', 'None', '294736573', NULL),
(197, 'None', '0.5', '', 'None', '703838427', NULL),
(198, 'None', '0.5', '', 'None', '686488595', NULL),
(199, 'None', '0.5', '', 'None', '973227929', NULL),
(200, 'None', '0.5', '', 'None', '954190665', NULL),
(201, 'None', '0.5', '', 'None', '236015640', NULL),
(202, 'None', '0.5', '', 'None', '861817083', NULL),
(203, 'None', '0.5', '', 'None', '474366547', NULL),
(204, 'None', '0.5', '', 'None', '323848018', NULL),
(205, 'None', '0.5', '', 'None', '208625813', NULL),
(206, 'None', '0.5', '', 'None', '823765129', NULL),
(207, 'None', '1.5', '', 'None', '169153759', NULL),
(208, 'None', '1.5', '', 'None', '412402665', NULL),
(209, 'None', '1.5', '', 'None', '597540704', NULL),
(210, 'None', '0.5', '', 'None', '373833566', NULL),
(211, 'None', '0.5', '', 'None', '417342823', NULL),
(212, 'None', '0.5', '', 'None', '260370642', NULL),
(213, 'None', '1.1', '', 'None', '447362408', NULL),
(214, 'None', '3.5', '', 'None', '972500696', NULL),
(215, 'None', '3.35', '', 'None', '468500092', NULL),
(216, 'None', '3.35', '', 'None', '953197042', NULL),
(217, 'None', '3.35', '', 'None', '888874201', NULL),
(218, 'None', '3.35', 'active', 'None', '116481364', NULL),
(219, 'None', '3.35', '', 'None', '870268362', NULL),
(220, 'None', '3.35', '', 'None', '492258937', NULL),
(221, 'None', '3.35', '', 'None', '967795707', NULL),
(222, 'None', '3.35', '', 'None', '822173912', NULL),
(223, 'None', '3.35', '', 'None', '822710226', NULL),
(224, 'None', '3.35', '', 'None', '672115020', NULL),
(225, 'None', '3.35', '', 'None', '550998255', NULL),
(226, 'None', '3.35', '', 'None', '577692702', NULL),
(227, 'None', '3.35', '', 'None', '951423677', NULL),
(228, 'None', '3.35', '', 'None', '786587594', NULL),
(229, 'None', '3.35', '', 'None', '651635334', NULL),
(230, 'None', '1.5', '', 'None', '913997704', NULL),
(231, 'None', '1.5', '', 'None', '969935367', NULL),
(232, 'None', '1', '', 'None', '364557151', NULL),
(233, 'None', '4.05', '', 'None', '794742264', NULL),
(234, 'None', '5', 'active', 'None', '114241606', NULL),
(235, 'None', '0.5', '', 'None', '834731681', NULL),
(236, 'None', '0.5', 'active', 'None', '957989566', NULL),
(237, 'None', '0.75', '', 'None', '462152153', NULL),
(238, 'None', '0.5', '', 'None', '364720313', NULL),
(239, 'None', '0.5', '', 'None', '414524600', NULL),
(240, 'None', '1.25', '', 'None', '169009597', NULL),
(241, 'None', '0.5', '', 'None', '872527174', NULL),
(242, 'None', '0.5', '', 'None', '196639724', NULL),
(243, 'None', '0.5', '', 'None', '664861762', NULL),
(244, 'None', '0.5', '', 'None', '837969467', NULL),
(245, 'None', '0.5', '', 'None', '384818593', NULL),
(246, 'None', '4000', '', 'None', '162449243', NULL),
(247, 'None', '5', '', 'None', '714843351', NULL),
(248, 'None', '5', '', 'None', '996567208', NULL),
(249, 'None', '5', '', 'None', '761589224', NULL),
(250, 'None', '5', '', 'None', '158759464', NULL),
(251, 'None', '5', '', 'None', '543655067', NULL),
(252, 'None', '5', '', 'None', '296217860', NULL),
(253, 'None', '5', '', 'None', '938738533', NULL),
(254, 'None', '5', '', 'None', '713365849', NULL),
(255, 'None', '5', 'active', 'None', '301484300', NULL),
(256, 'None', '5', '', 'None', '663108050', NULL),
(257, 'None', '5', '', 'None', '722127175', NULL),
(258, 'None', '5', '', 'None', '784255269', NULL),
(259, 'None', '5', 'active', 'None', '428712433', NULL),
(260, 'smishra92', '2.5', 'active', '5d45e967b48a3b3b529', '958981416', NULL),
(261, 'None', '20', '', 'None', '959839458', NULL),
(262, 'None', '20.1', '', 'None', '201431149', NULL),
(263, 'None', '20', '', 'None', '312440542', NULL),
(264, 'None', '20', 'active', 'None', '170169317', NULL),
(265, 'None', '20', '', 'None', '694772122', NULL),
(266, 'None', '20', '', 'None', '860194736', NULL),
(267, 'None', '20', '', 'None', '848765530', NULL),
(268, 'None', '20', '', 'None', '518027037', NULL),
(269, 'None', '20', '', 'None', '529684188', NULL),
(270, 'None', '20.1', '', 'None', '401643984', NULL),
(271, 'None', '4', 'active', 'None', '762088121', NULL),
(272, 'None', '20', 'active', 'None', '499354209', NULL),
(273, 'None', '0.5', '', 'None', '287621759', NULL),
(274, 'None', '100', 'active', 'None', '224253556', NULL),
(275, 'None', '100', '', 'None', '958047678', NULL),
(276, 'None', '100', '', 'None', '445551266', NULL),
(277, 'None', '0.5', '', 'None', '306586725', NULL),
(278, 'None', '0.5', '', 'None', '340792593', NULL),
(279, 'None', '0.5', '', 'None', '414470810', NULL),
(280, 'None', '0.5', '', 'None', '373620363', NULL),
(281, 'None', '0.5', '', 'None', '235303859', NULL),
(282, 'None', '100', '', 'None', '777670620', NULL),
(283, 'None', '100', 'active', 'None', '660028874', NULL),
(284, 'None', '0.6', 'active', 'None', '775955401', NULL),
(285, 'None', '0.6', '', 'None', '238736129', NULL),
(286, 'None', '5', '', 'None', '962371058', NULL),
(287, 'None', '5', '', 'None', '453546748', NULL),
(288, 'None', '2', '', 'None', '469965152', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(250) NOT NULL,
  `first_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `user_pass` varchar(1000) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `question` varchar(2500) DEFAULT NULL,
  `answer` varchar(2500) DEFAULT NULL,
  `referal` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `who_refered` varchar(100) DEFAULT NULL,
  `wallet` varchar(100) DEFAULT NULL,
  `reg_date` varchar(20) DEFAULT NULL,
  `reg_time` varchar(20) DEFAULT NULL,
  `block` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `bitcoin_wallet` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `first_name`, `last_name`, `email`, `password`, `user_pass`, `phone`, `question`, `answer`, `referal`, `username`, `who_refered`, `wallet`, `reg_date`, `reg_time`, `block`, `status`, `bitcoin_wallet`) VALUES
(61, 'EMMA', 'ONYEWU', 'opurumemmanuelworld@gmail.com', 'bba3e9f7a1694a8fe374227eb81871b1', 'mYpass', '08128228053', NULL, NULL, '4bdb685d30f896101e5', 'mronyewu', 'none', '5d30f896101e54bdb68', '18-Jul-2019', '22:54:14', 'not blocked', 'online', ''),
(62, 'RANDOM', 'USER', 'random@gmail.com', '7a198aaa512ce4cf157a17b45b55dd6d', '222222222', '08128228053', NULL, NULL, '32ac745d321a3577e02', 'engremma', 'none', '5d321a3577e0232ac74', '19-Jul-2019', '19:29:57', 'not blocked', 'online', '');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(250) NOT NULL,
  `wallet_address` varchar(200) DEFAULT NULL,
  `amount` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `check_enable` varchar(250) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `identity` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `wallet_address`, `amount`, `status`, `transaction_id`, `date`, `time`, `check_enable`, `description`, `identity`) VALUES
(1, '5cb1c878ca1312ae253', '7000', 'credit', '775173365', '2019-04-16', '21:32:32', NULL, NULL, NULL),
(18, '5ccfd711b0a3fa58cf9', '32200', 'credit', '840219251', '2019-06-15', '23:36:01', NULL, NULL, NULL),
(21, '5d321a3577e0232ac74', '5000', 'credit', '8402192765', '2019-06-15', '23:36:01', NULL, NULL, NULL),
(22, '5d321a3577e0232ac74', '3010', 'debit', '47677664', '2019-07-19', '20:01:50', NULL, NULL, NULL),
(24, '5d30f896101e54bdb68', '6000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(25, '5d321a3577e0232ac74', '6000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(26, '5d3c644abb3d67a2b70', '15000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(27, '5d3c644abb3d67a2b70', '8010', 'debit', '57693885', '2019-07-27', '15:01:43', NULL, NULL, NULL),
(28, '5d30f896101e54bdb68', '2010', 'debit', '99259818', '2019-07-30', '00:04:04', NULL, NULL, NULL),
(29, '5d3c644abb3d67a2b70', '10', 'debit', '43263227', '2019-07-30', '06:18:30', NULL, NULL, NULL),
(30, '5d3c644abb3d67a2b70', '2010', 'debit', '24451850', '2019-07-30', '06:18:46', NULL, NULL, NULL),
(31, '5d3c644abb3d67a2b70', '110', 'debit', '74354013', '2019-07-30', '06:24:25', NULL, NULL, NULL),
(32, '5d30f896101e54bdb68', '32', 'debit', '84683561', '2019-07-31', '10:03:59', NULL, NULL, NULL),
(33, '5d30f896101e54bdb68', '20', 'debit', '87718949', '2019-07-31', '10:05:41', NULL, NULL, NULL),
(34, '5d3c644abb3d67a2b70', '10', 'debit', '65709349', '2019-07-31', '10:07:34', NULL, NULL, NULL),
(35, '5d30f896101e54bdb68', '20', 'debit', '33570214', '2019-07-31', '10:07:47', NULL, NULL, NULL),
(36, '5d30f896101e54bdb68', '210', 'debit', '20543449', '2019-07-31', '10:47:38', NULL, NULL, NULL),
(37, '5d30f896101e54bdb68', '20', 'debit', '95153451', '2019-07-31', '10:47:52', NULL, NULL, NULL),
(38, '5d30f896101e54bdb68', '20', 'debit', '48868975', '2019-07-31', '10:48:03', NULL, NULL, NULL),
(39, '5d30f896101e54bdb68', '32', 'debit', '31397641', '2019-07-31', '10:58:21', NULL, NULL, NULL),
(40, '5d30f896101e54bdb68', '45', 'debit', '53631988', '2019-07-31', '10:58:27', NULL, NULL, NULL),
(41, '5d30f896101e54bdb68', '39', 'debit', '28104516', '2019-07-31', '10:58:32', NULL, NULL, NULL),
(42, '5d30f896101e54bdb68', '40', 'debit', '23232171', '2019-07-31', '11:18:43', NULL, NULL, NULL),
(43, '5d30f896101e54bdb68', '20', 'debit', '53775208', '2019-07-31', '11:25:07', NULL, NULL, NULL),
(44, '5d30f896101e54bdb68', '32', 'debit', '41273330', '2019-07-31', '11:35:35', NULL, NULL, NULL),
(45, '5d30f896101e54bdb68', '12', 'debit', '12458539', '2019-07-31', '11:38:12', NULL, NULL, NULL),
(46, '5d30f896101e54bdb68', '3610', 'debit', '94753244', '2019-07-31', '11:38:44', NULL, NULL, NULL),
(47, '5d3c644abb3d67a2b70', '3810', 'debit', '43042544', '2019-08-01', '11:52:57', NULL, NULL, NULL),
(48, '5d40ae476b799ea0222', '10000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(49, '5d40b3291135d2d2da6', '8000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(50, '5d40b543160f09d3a09', '8000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(51, '5d40ae476b799ea0222', '60', 'debit', '47154435', '2019-08-01', '19:49:19', NULL, NULL, NULL),
(52, '5d432cf84c38796918d', '2000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(53, '5d43349e1fd42674d8f', '2000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(54, '5d42e61a6b37c4186ad', '2000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(55, '5d43353473d2c1da58f', '2000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(56, '5d42d22377fe4b50b34', '1000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(57, '5d432cf84c38796918d', '500', 'debit', '360089579', '2019-08-02', '04:07:40', NULL, NULL, NULL),
(58, '5d3c644abb3d67a2b70', '30000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(59, '5d3c644abb3d67a2b70', '4210', 'debit', '54721044', '2019-08-02', '05:36:10', NULL, NULL, NULL),
(60, '5d42e61a6b37c4186ad', '67', 'debit', '74955046', '2019-08-02', '06:02:11', NULL, NULL, NULL),
(61, '5d40ae476b799ea0222', '90', 'debit', '60577509', '2019-08-02', '11:30:51', NULL, NULL, NULL),
(62, '5d42d22377fe4b50b34', '67', 'debit', '76469520', '2019-08-02', '13:19:56', NULL, NULL, NULL),
(63, '5d43353473d2c1da58f', '10', 'debit', '57541192', '2019-08-02', '13:22:41', NULL, NULL, NULL),
(64, '5d43353473d2c1da58f', '10', 'debit', '57541192', '2019-08-02', '13:22:46', NULL, NULL, NULL),
(65, '5d43353473d2c1da58f', '10', 'debit', '57541192', '2019-08-02', '13:22:51', NULL, NULL, NULL),
(66, '5d43353473d2c1da58f', '10', 'debit', '69047561', '2019-08-02', '14:11:26', NULL, NULL, NULL),
(67, '5d43353473d2c1da58f', '10', 'debit', '69047561', '2019-08-02', '14:11:31', NULL, NULL, NULL),
(68, '5d435be75a6313fa29d', '1000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(69, '5d374451cea86d6d74e', '2000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(70, '5d374451cea86d6d74e', '2000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(71, '5d44729460effe8f98d', '2000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(72, '5d43353473d2c1da58f', '10', 'debit', '46646253', '2019-08-02', '18:12:33', NULL, NULL, NULL),
(73, '5d44729460effe8f98d', '10', 'debit', '45682827', '2019-08-02', '18:20:43', NULL, NULL, NULL),
(74, '5d44729460effe8f98d', '10', 'debit', '42680015', '2019-08-02', '18:21:11', NULL, NULL, NULL),
(75, '5d44729460effe8f98d', '10', 'debit', '83233168', '2019-08-02', '18:21:22', NULL, NULL, NULL),
(76, '5cb1bfd97fdc0f64df8', '2510', 'debit', '26403614', '2019-08-02', '18:21:52', NULL, NULL, NULL),
(77, '5cb1bfd97fdc0f64df8', '2510', 'debit', '26403614', '2019-08-02', '18:21:56', NULL, NULL, NULL),
(78, '5d42e61a6b37c4186ad', '100', 'debit', '93137387', '2019-08-02', '20:53:25', NULL, NULL, NULL),
(79, '5d42e61a6b37c4186ad', '100', 'debit', '93137387', '2019-08-02', '20:53:30', NULL, NULL, NULL),
(80, '5d3c644abb3d67a2b70', '1260', 'debit', '68552220', '2019-08-03', '12:20:41', NULL, NULL, NULL),
(81, '5d30f896101e54bdb68', '97000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(82, '5d30f896101e54bdb68', '2370', 'debit', '81041967', '2019-08-03', '14:49:57', NULL, NULL, NULL),
(83, '5d435be75a6313fa29d', '80', 'debit', '75823201', '2019-08-03', '16:11:11', NULL, NULL, NULL),
(84, '5d45a4a75ffa0ec403e', '2000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(85, '5d44729460effe8f98d', '10', 'debit', '94047995', '2019-08-03', '17:06:29', NULL, NULL, NULL),
(86, '5d42e61a6b37c4186ad', '110', 'debit', '28647225', '2019-08-03', '17:48:07', NULL, NULL, NULL),
(87, '5d43349e1fd42674d8f', '2000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(88, '5d40ae476b799ea0222', '97', 'debit', '90690611', '2019-08-03', '18:27:07', NULL, NULL, NULL),
(89, '5d43349e1fd42674d8f', '2000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(90, '5d40ae476b799ea0222', '210', 'debit', '28264869', '2019-08-04', '06:40:36', NULL, NULL, NULL),
(91, '5d435be75a6313fa29d', '90', 'debit', '16440279', '2019-08-04', '08:39:03', NULL, NULL, NULL),
(92, '5d3c644abb3d67a2b70', '20', 'debit', '28410666', '2019-08-04', '09:14:34', NULL, NULL, NULL),
(93, '5d435be75a6313fa29d', '10', 'debit', '64134631', '2019-08-04', '09:46:11', NULL, NULL, NULL),
(94, '5d46a932b25c86c416a', '10000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(95, '5d46a932b25c86c416a', '860', 'debit', '56330841', '2019-08-04', '09:56:03', NULL, NULL, NULL),
(96, '5d46a932b25c86c416a', '860', 'debit', '56330841', '2019-08-04', '09:56:08', NULL, NULL, NULL),
(97, '5d43353473d2c1da58f', '10', 'debit', '52746030', '2019-08-04', '09:56:19', NULL, NULL, NULL),
(98, '5d3c644abb3d67a2b70', '760', 'debit', '75578351', '2019-08-04', '09:56:31', NULL, NULL, NULL),
(99, '5d43349e1fd42674d8f', '2000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(100, '5d470966e64a3590abb', '2000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(101, '5d43349e1fd42674d8f', '2000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(102, '5d4335ae7c115db197e', '5000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(103, '5d470966e64a3590abb', '10', 'debit', '40632095', '2019-08-04', '17:20:37', NULL, NULL, NULL),
(104, '5d42e61a6b37c4186ad', '120', 'debit', '42021818', '2019-08-04', '17:20:48', NULL, NULL, NULL),
(105, '5d44729460effe8f98d', '10', 'debit', '33796955', '2019-08-04', '17:39:58', NULL, NULL, NULL),
(106, '5d4335ae7c115db197e', '67', 'debit', '79067953', '2019-08-04', '17:58:52', NULL, NULL, NULL),
(107, '5d44729460effe8f98d', '10', 'debit', '49541630', '2019-08-05', '17:45:27', NULL, NULL, NULL),
(108, '5d42e61a6b37c4186ad', '1010', 'debit', '12470721', '2019-08-05', '22:15:03', NULL, NULL, NULL),
(109, '5d43349e1fd42674d8f', '1510', 'debit', '68052407', '2019-08-05', '22:15:08', NULL, NULL, NULL),
(110, '5d43349e1fd42674d8f', '1510', 'debit', '41702235', '2019-08-05', '22:15:20', NULL, NULL, NULL),
(111, '5d470966e64a3590abb', '510', 'debit', '37763967', '2019-08-05', '22:57:51', NULL, NULL, NULL),
(112, '5d3c644abb3d67a2b70', '6210', 'debit', '77149344', '2019-08-06', '09:58:58', NULL, NULL, NULL),
(113, '5d46a932b25c86c416a', '99', 'debit', '626807162', '2019-08-06', '16:25:32', NULL, NULL, NULL),
(114, '5d46a932b25c86c416a', '78', 'debit', '807290532', '2019-08-06', '16:25:41', NULL, NULL, NULL),
(115, '5d46a932b25c86c416a', '12', 'debit', '897123157', '2019-08-06', '16:26:02', NULL, NULL, NULL),
(116, '5d46a932b25c86c416a', '100', 'debit', '175194348', '2019-08-06', '16:29:25', NULL, NULL, NULL),
(117, '5d44729460effe8f98d', '1010', 'debit', '54049797', '2019-08-06', '20:35:08', NULL, NULL, NULL),
(118, '5d40ae476b799ea0222', '1210', 'debit', '67916361', '2019-08-06', '20:35:21', NULL, NULL, NULL),
(119, '5d30f896101e54bdb68', '20', 'debit', '97906679', '2019-08-06', '20:35:35', NULL, NULL, NULL),
(120, '5d4862b1059090fbdb7', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(121, '5d435be75a6313fa29d', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(122, '5d43353473d2c1da58f', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(123, '5d4862b1059090fbdb7', '1010', 'debit', '71316624', '2019-08-06', '20:50:40', NULL, NULL, NULL),
(124, '5d491c11315461249ad', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(125, '5d43354209fa83d1b3f', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(126, '5d43354209fa83d1b3f', '1010', 'debit', '78907775', '2019-08-06', '20:56:39', NULL, NULL, NULL),
(127, '5d43354209fa83d1b3f', '1010', 'debit', '78907775', '2019-08-06', '20:56:44', NULL, NULL, NULL),
(128, '5d43354209fa83d1b3f', '1010', 'debit', '78907775', '2019-08-06', '20:56:49', NULL, NULL, NULL),
(129, '5d43354209fa83d1b3f', '1010', 'debit', '26996580', '2019-08-06', '21:06:28', NULL, NULL, NULL),
(130, '5d43354209fa83d1b3f', '1010', 'debit', '26996580', '2019-08-06', '21:06:34', NULL, NULL, NULL),
(131, '5d4335ae7c115db197e', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(132, '5d435be75a6313fa29d', '1510', 'debit', '16475317', '2019-08-06', '21:19:43', NULL, NULL, NULL),
(133, '5d4335ae7c115db197e', '1510', 'debit', '11449922', '2019-08-06', '21:30:49', NULL, NULL, NULL),
(134, '5d3c644abb3d67a2b70', '3510', 'debit', '81403478', '2019-08-07', '08:30:25', NULL, NULL, NULL),
(135, '5d44729460effe8f98d', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(136, '5d491c11315461249ad', '1010', 'debit', '83928298', '2019-08-07', '15:17:39', NULL, NULL, NULL),
(137, '5d42e61a6b37c4186ad', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(138, '5d497c5cabe83c4724b', '12.5', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(139, '5d48ed428bd376a523a', '112.5', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(140, '5d30f896101e54bdb68', '94458', 'debit', '44184352', '2019-08-07', '20:11:14', NULL, NULL, NULL),
(141, '5d48ed428bd376a523a', '122.5', 'debit', '52951441', '2019-08-07', '20:17:11', NULL, NULL, NULL),
(142, '5d42e61a6b37c4186ad', '1060', 'debit', '65315162', '2019-08-07', '23:56:20', NULL, NULL, NULL),
(143, '5d30f896101e54bdb68', '20', 'debit', '93738228', '2019-08-07', '23:56:33', NULL, NULL, NULL),
(144, '5d497c5cabe83c4724b', '22.5', 'debit', '14716150', '2019-08-08', '00:00:06', NULL, NULL, NULL),
(145, '5d491c11315461249ad', '1010', 'debit', '28955669', '2019-08-08', '13:09:59', NULL, NULL, NULL),
(146, '5d3c644abb3d67a2b70', '519', 'debit', '34938746', '2019-08-08', '13:29:06', NULL, NULL, NULL),
(147, '5d3c644abb3d67a2b70', '519', 'debit', '20706450', '2019-08-08', '13:29:22', NULL, NULL, NULL),
(148, '5d42e61a6b37c4186ad', '1969', 'debit', '84406029', '2019-08-09', '19:46:30', NULL, NULL, NULL),
(149, '5d497c5cabe83c4724b', '27', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(150, '5d497c5cabe83c4724b', '10', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(151, '5d491c11315461249ad', '1010', 'debit', '67612264', '2019-08-10', '12:08:39', NULL, NULL, NULL),
(152, '5d44729460effe8f98d', '1510', 'debit', '28988821', '2019-08-10', '12:08:52', NULL, NULL, NULL),
(153, '5d497c5cabe83c4724b', '37', 'debit', '91137220', '2019-08-10', '16:00:04', NULL, NULL, NULL),
(154, '5d42d22377fe4b50b34', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(155, '5d42d22377fe4b50b34', '1010', 'debit', '30631513', '2019-08-10', '22:44:56', NULL, NULL, NULL),
(156, '5d3c644abb3d67a2b70', '5810', 'debit', '75861860', '2019-08-12', '13:36:00', NULL, NULL, NULL),
(157, '5d3c644abb3d67a2b70', '4690', 'debit', '53932670', '2019-08-12', '13:39:27', NULL, NULL, NULL),
(158, '5d491c11315461249ad', '633', 'debit', '23847931', '2019-08-13', '09:47:04', NULL, NULL, NULL),
(159, '5d44729460effe8f98d', '1210', 'debit', '33995639', '2019-08-13', '09:47:16', NULL, NULL, NULL),
(160, '5d43353473d2c1da58f', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(161, '5d43353473d2c1da58f', '1810', 'debit', '56124294', '2019-08-13', '10:15:09', NULL, NULL, NULL),
(162, '5d4335ae7c115db197e', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(163, '5d4862b1059090fbdb7', '1610', 'debit', '65951741', '2019-08-13', '13:37:55', NULL, NULL, NULL),
(164, '5d435be75a6313fa29d', '1410', 'debit', '66165072', '2019-08-13', '13:38:07', NULL, NULL, NULL),
(165, '5d4335ae7c115db197e', '1010', 'debit', '14665910', '2019-08-13', '13:38:18', NULL, NULL, NULL),
(166, '5d4335ae7c115db197e', '1010', 'debit', '14665910', '2019-08-13', '13:38:23', NULL, NULL, NULL),
(167, '5d45a4a75ffa0ec403e', '1210', 'debit', '19732863', '2019-08-13', '14:11:43', NULL, NULL, NULL),
(168, '5d42e61a6b37c4186ad', '2055', 'debit', '43992819', '2019-08-14', '11:46:38', NULL, NULL, NULL),
(169, '', '22', 'debit', '97064078', '2019-08-14', '11:46:48', NULL, NULL, NULL),
(170, '', '22', 'debit', '21283126', '2019-08-14', '11:46:53', NULL, NULL, NULL),
(171, '', '22', 'debit', '21283126', '2019-08-14', '11:46:58', NULL, NULL, NULL),
(172, '5d40ae476b799ea0222', '2099', 'debit', '17737018', '2019-08-14', '18:12:36', NULL, NULL, NULL),
(173, '5d44729460effe8f98d', '1510', 'debit', '24344972', '2019-08-14', '18:43:36', NULL, NULL, NULL),
(174, '5d491c11315461249ad', '1710', 'debit', '16312179', '2019-08-14', '21:08:48', NULL, NULL, NULL),
(175, '5d497c5cabe83c4724b', '81.25', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(176, '5d497c5cabe83c4724b', '10', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(177, '5d497c5cabe83c4724b', '91', 'debit', '33447191', '2019-08-15', '00:13:49', NULL, NULL, NULL),
(178, '5d40ae476b799ea0222', '2702', 'debit', '59676050', '2019-08-15', '08:38:26', NULL, NULL, NULL),
(179, '5d44729460effe8f98d', '1310', 'debit', '59386542', '2019-08-15', '12:28:29', NULL, NULL, NULL),
(180, '5d491c11315461249ad', '1510', 'debit', '37338630', '2019-08-15', '12:28:34', NULL, NULL, NULL),
(181, '5d4335ae7c115db197e', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(182, '5d4335ae7c115db197e', '1010', 'debit', '20863130', '2019-08-15', '12:41:11', NULL, NULL, NULL),
(183, '5d43353473d2c1da58f', '710', 'debit', '10379194', '2019-08-15', '12:47:39', NULL, NULL, NULL),
(184, '5d42d22377fe4b50b34', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(185, '5d4862b1059090fbdb7', '1910', 'debit', '11065741', '2019-08-15', '13:05:57', NULL, NULL, NULL),
(186, '5d52c1ad3ec653cd6a0', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(187, '5d42d22377fe4b50b34', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(188, '5d42d22377fe4b50b34', '1010', 'debit', '47676057', '2019-08-15', '14:11:30', NULL, NULL, NULL),
(189, '5d43353473d2c1da58f', '2560', 'debit', '10363415', '2019-08-15', '14:11:35', NULL, NULL, NULL),
(190, '5d4862b1059090fbdb7', '2210', 'debit', '50907908', '2019-08-15', '14:11:40', NULL, NULL, NULL),
(191, '5d42e61a6b37c4186ad', '3500', 'debit', '52884280', '2019-08-16', '08:53:35', NULL, NULL, NULL),
(192, '5d497c5cabe83c4724b', '130', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(193, '5d497c5cabe83c4724b', '9', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(194, '5d491c11315461249ad', '1510', 'debit', '22908489', '2019-08-16', '11:28:37', NULL, NULL, NULL),
(195, '5d44729460effe8f98d', '1010', 'debit', '36772037', '2019-08-16', '11:28:42', NULL, NULL, NULL),
(196, '5d44729460effe8f98d', '1010', 'debit', '35319458', '2019-08-16', '11:28:47', NULL, NULL, NULL),
(197, '5d497c5cabe83c4724b', '139.5', 'debit', '83410872', '2019-08-16', '12:41:48', NULL, NULL, NULL),
(198, '5d44729460effe8f98d', '1010', 'debit', '82400679', '2019-08-17', '17:23:05', NULL, NULL, NULL),
(199, '5d44729460effe8f98d', '1010', 'debit', '82400679', '2019-08-17', '17:23:10', NULL, NULL, NULL),
(200, '5d491c11315461249ad', '1510', 'debit', '65272356', '2019-08-17', '17:23:15', NULL, NULL, NULL),
(201, '5d40b543160f09d3a09', '30000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(202, '5d491c11315461249ad', '1510', 'debit', '38108445', '2019-08-18', '19:07:37', NULL, NULL, NULL),
(203, '5d44729460effe8f98d', '1010', 'debit', '24771754', '2019-08-18', '19:07:42', NULL, NULL, NULL),
(204, '5d42d22377fe4b50b34', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(205, '5d592311cb9ab204327', '62', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(206, '5d43349e1fd42674d8f', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(207, '5d592311cb9ab204327', '72', 'debit', '73164006', '2019-08-19', '15:21:15', NULL, NULL, NULL),
(208, '5d42d22377fe4b50b34', '1510', 'debit', '66025556', '2019-08-19', '15:43:08', NULL, NULL, NULL),
(209, '5d40ae476b799ea0222', '2000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(210, '5d40b543160f09d3a09', '50000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(211, '5d40ae476b799ea0222', '3622', 'debit', '44508782', '2019-08-19', '17:46:58', NULL, NULL, NULL),
(212, '5d40ae476b799ea0222', '3622', 'debit', '44508782', '2019-08-19', '17:47:05', NULL, NULL, NULL),
(213, '5d43353473d2c1da58f', '3510', 'debit', '45881857', '2019-08-19', '21:52:48', NULL, NULL, NULL),
(214, '5d4862b1059090fbdb7', '2310', 'debit', '37619527', '2019-08-20', '02:53:42', NULL, NULL, NULL),
(215, '5d497c5cabe83c4724b', '125', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(216, '5d42d22377fe4b50b34', '1010', 'debit', '77129706', '2019-08-21', '20:45:14', NULL, NULL, NULL),
(217, '5d42d22377fe4b50b34', '1010', 'debit', '77129706', '2019-08-21', '20:45:19', NULL, NULL, NULL),
(218, '5d42d22377fe4b50b34', '1010', 'debit', '77129706', '2019-08-21', '20:45:24', NULL, NULL, NULL),
(219, '5d42d22377fe4b50b34', '1010', 'debit', '23193592', '2019-08-21', '21:25:44', NULL, NULL, NULL),
(220, '5d5dd76335e0e854115', '14.285714285714', 'credit', '370723243', '2019-08-22', '00:00:37', NULL, NULL, NULL),
(221, '5d45e967b48a3b3b529', '17.857142857143', 'credit', '954794910', '2019-08-22', '02:16:01', NULL, NULL, NULL),
(222, '5d46a932b25c86c416a', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(223, '5d40ae476b799ea0222', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(224, '5d5dd76335e0e854115', '85.714285714286', 'credit', '304292829', '2019-08-23', '00:04:01', NULL, NULL, NULL),
(225, '5d46a932b25c86c416a', '5410', 'debit', '30150465', '2019-08-23', '00:46:35', NULL, NULL, NULL),
(226, '5d497c5cabe83c4724b', '85.714285714286', 'credit', '332255153', '2019-08-23', '02:16:01', NULL, NULL, NULL),
(227, '5d497c5cabe83c4724b', '159.54', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(228, '5d497c5cabe83c4724b', '370', 'debit', '96971796', '2019-08-23', '18:05:37', NULL, NULL, NULL),
(229, '5d40ae476b799ea0222', '3705', 'debit', '39072219', '2019-08-23', '18:05:57', NULL, NULL, NULL),
(230, '5d4335ae7c115db197e', '20000', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(231, '5d42e61a6b37c4186ad', '3100', 'debit', '24104770', '2019-08-24', '20:05:50', NULL, NULL, NULL),
(232, '5d497c5cabe83c4724b', '2.1428571428571', 'credit', '162508771', '2019-08-27', '08:50:01', NULL, NULL, NULL),
(233, '5d46a932b25c86c416a', '4010', 'debit', '35275168', '2019-08-27', '09:03:55', NULL, NULL, NULL),
(234, '5d40ae476b799ea0222', '3992', 'debit', '48895638', '2019-08-27', '09:04:01', NULL, NULL, NULL),
(235, '5d497c5cabe83c4724b', '428.57142857142', 'credit', '212562519', '2019-08-27', '21:27:01', NULL, NULL, NULL),
(236, '5d497c5cabe83c4724b', '428.57142857142', 'credit', '845039733', '2019-08-28', '08:51:01', NULL, NULL, NULL),
(237, '5d497c5cabe83c4724b', '5500', 'credit', NULL, NULL, NULL, NULL, NULL, NULL),
(238, '5d46a932b25c86c416a', '4210', 'debit', '30455250', '2019-08-29', '15:50:45', NULL, NULL, NULL),
(239, '5d3c644abb3d67a2b70', '30', 'debit', '72871463', '2019-08-29', '15:50:50', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `walletedits`
--

CREATE TABLE `walletedits` (
  `id` int(255) NOT NULL,
  `wallet_address` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `walletedits`
--

INSERT INTO `walletedits` (`id`, `wallet_address`) VALUES
(1, '1B6XVTnUMkWi5MnqmH1uoudkUgh39g1Zo8');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_deposit`
--

CREATE TABLE `wallet_deposit` (
  `id` int(250) NOT NULL,
  `amount` mediumtext,
  `status` varchar(20) DEFAULT NULL,
  `wallet_address` varchar(1000) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(20) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_deposit`
--

INSERT INTO `wallet_deposit` (`id`, `amount`, `status`, `wallet_address`, `date`, `time`, `transaction_id`, `image`, `username`) VALUES
(3, '2200', 'active', '5cafec97d90510719dd', '2019-04-12', '10:59:24', '526736450', 'uploads/soft code.png', 'protocol'),
(15, '5000', 'active', '5cd0fc4b1ed2d7e55e1', '2019-05-15', '12:40:30', '878570723', 'uploads/Screenshot_20190513-222101.png', 'sailing2960');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal`
--

CREATE TABLE `withdrawal` (
  `id` int(250) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `wallet_address` varchar(100) DEFAULT NULL,
  `plan` varchar(200) DEFAULT NULL,
  `bundle` varchar(150) DEFAULT NULL,
  `no_of_times` varchar(5) DEFAULT NULL,
  `amount_per_time` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `amount_remaining` varchar(100) DEFAULT NULL,
  `main_money` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `times_done` varchar(20) DEFAULT NULL,
  `earnings` varchar(100) DEFAULT NULL,
  `payout` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `triger` varchar(20) DEFAULT NULL,
  `commission` varchar(100) DEFAULT NULL,
  `triger2` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdrawal`
--

INSERT INTO `withdrawal` (`id`, `username`, `wallet_address`, `plan`, `bundle`, `no_of_times`, `amount_per_time`, `transaction_id`, `amount_remaining`, `main_money`, `status`, `duration`, `date`, `time`, `times_done`, `earnings`, `payout`, `email`, `triger`, `commission`, `triger2`) VALUES
(43, 'oneopurumemmanuel', '5cb1bfd97fdc0f64df8', 'bitcoin', 'BEGINNER', '28', '2300', '979335849', NULL, '2000', '', '4 weeks', '2019-05-18 20:00', NULL, '0', '0', '1 day', 'opurumemmanuelworld@gmail.com', 'no', '200', 'no'),
(105, 'mronyewu', '5d30f896101e54bdb68', 'bitcoin', 'SAPHIRE CRYSTAL', '7', '714.28571428571', '200416186', NULL, '10000', 'pending', '7 days', '2019-07-18 23:49:06', NULL, '0', '2300', '1 day', 'opurumemmanuelworld@gmail.com', 'start', '0', 'no'),
(232, 'mronyewu', '5d30f896101e54bdb68', 'bitcoin', 'BEGINNER', '1', '17.857142857143', '962371058', NULL, '100', '', '24 Hours', '2019-08-30 13:52', NULL, '0', '0', '1 day', 'opurumemmanuelworld@gmail.com', 'no', '0', 'no'),
(233, 'mronyewu', '5d30f896101e54bdb68', 'bitcoin', 'BEGINNER', '1', '17.857142857143', '453546748', NULL, '100', '', '24 Hours', '2019-09-04 01:02', NULL, '0', '0', '1 day', 'opurumemmanuelworld@gmail.com', 'no', '0', 'no'),
(234, 'mronyewu', '5d30f896101e54bdb68', 'bitcoin', 'BEGINNER', '1', '7.1428571428571', '469965152', NULL, '40', '', '24 Hours', '2019-11-06 17:02', NULL, '0', '0', '1 day', 'opurumemmanuelworld@gmail.com', 'no', '0', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_from_wallet`
--

CREATE TABLE `withdraw_from_wallet` (
  `id` int(250) NOT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `wallet_address` mediumtext,
  `wallet_id` varchar(1000) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `mb_wallet` varchar(1000) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraw_from_wallet`
--

INSERT INTO `withdraw_from_wallet` (`id`, `amount`, `wallet_address`, `wallet_id`, `status`, `mb_wallet`, `username`, `transaction_id`, `date`, `time`) VALUES
(4, '100.00', '3Gtg3wQY6jC8RCJrJaDbs9m17HWnhMUQKG', NULL, 'active', '5cbac1a3c49d8c85190', 'peter', '66751911', '2019-04-21', '19:46:12'),
(5, '300', '22', NULL, 'active', '5ccfd711b0a3fa58cf9', 'clive', '69604766', '2019-05-15', '03:03:48'),
(6, '66800', '5cf7d391cc0074ff879', NULL, 'active', '5cf7d391cc0074ff879', 'moores', '69604766', '2019-05-15', '03:03:48'),
(7, '2500', '1KTWNE7YfAYZWNbC7UxRExXMAZFHAXV8wS', NULL, 'active', '5cb1bfd97fdc0f64df8', 'oneopurumemmanuel', '26403614', '2019-07-18', '10:47:06'),
(8, '3000', '12ddffgcrrvf444hnhgfSSPLKH', NULL, 'active', '5d321a3577e0232ac74', 'engremma', '47677664', '2019-07-19', '20:01:05'),
(9, '97000', NULL, NULL, 'active', '5d30f896101e54bdb68', 'mronyewu', NULL, NULL, NULL),
(10, '7400', NULL, NULL, 'active', '5d321a3577e0232ac74', 'engremma', NULL, NULL, NULL),
(11, '8000', 'Gahgdhdjjdagsjdiehrpahvcmkag', NULL, 'active', '5d3c644abb3d67a2b70', 'goretzka', '57693885', '2019-07-27', '15:01:04'),
(13, '2000', '1qqgbsbuue7377hNNCNCBJCNNCncncchhh4h4hbc', NULL, 'active', '5d30f896101e54bdb68', 'mronyewu', '99259818', '2019-07-30', '00:03:25'),
(19, '2000', 'Dytdfgsulojbvsdtuiiivcdcsthjvcs', NULL, 'active', '5d3c644abb3d67a2b70', 'goretzka', '24451850', '2019-07-30', '00:39:58'),
(20, '3600', 'fdjjeww', NULL, 'active', '5d30f896101e54bdb68', 'mronyewu', '94753244', '2019-07-30', '01:09:18'),
(21, '5000', '150', NULL, 'active', '5d3c644abb3d67a2b70', 'goretzka', '43263227', '2019-07-30', '06:16:43'),
(22, '100', 'Dfdfdffdfdddfddfdfxfdddd', NULL, 'active', '5d3c644abb3d67a2b70', 'goretzka', '74354013', '2019-07-30', '06:23:47'),
(23, '2100', '50', NULL, 'active', '5d3c644abb3d67a2b70', 'goretzka', '65709349', '2019-07-31', '09:08:20'),
(40, '10', 'jjjdd', NULL, 'active', '5d30f896101e54bdb68', 'mronyewu', '48868975', '2019-07-31', '10:40:16'),
(41, '10', 'HHHJSJ', NULL, 'active', '5d30f896101e54bdb68', 'mronyewu', '95153451', '2019-07-31', '10:42:49'),
(42, '35', 'SHGDD', NULL, 'active', '5d30f896101e54bdb68', 'mronyewu', '53631988', '2019-07-31', '10:44:10'),
(43, '200', 'DSFSSFSFRWW5', NULL, 'active', '5d30f896101e54bdb68', 'mronyewu', '20543449', '2019-07-31', '10:46:05'),
(44, '22', 'hgg', NULL, 'active', '5d30f896101e54bdb68', 'mronyewu', '31397641', '2019-07-31', '10:54:12'),
(45, '29', 'vss', NULL, 'active', '5d30f896101e54bdb68', 'mronyewu', '28104516', '2019-07-31', '10:58:02'),
(46, '30', 'kcc', NULL, 'active', '5d30f896101e54bdb68', 'mronyewu', '23232171', '2019-07-31', '11:18:24'),
(47, '10', 'hdhdh', NULL, 'active', '5d30f896101e54bdb68', 'mronyewu', '53775208', '2019-07-31', '11:24:58'),
(48, '2', 'jfjfjfjfjjfjfjff', NULL, 'active', '5d30f896101e54bdb68', 'mronyewu', '12458539', '2019-07-31', '11:33:36'),
(49, '22', 'jrjjdd', NULL, 'active', '5d30f896101e54bdb68', 'mronyewu', '41273330', '2019-07-31', '11:35:08'),
(50, '3800', 'Gsjdoepbxmciwhtypyknagdjdjdkdvafhlpute', NULL, 'active', '5d3c644abb3d67a2b70', 'goretzka', '43042544', '2019-08-01', '11:51:53'),
(51, '50.00', 'Fhzh', NULL, 'active', '5d40ae476b799ea0222', 'classic', '47154435', '2019-08-01', '18:05:08'),
(52, '4200', 'Gshdjudkfkpaksbxnmsjsydyzhsbkslxmbgsg', NULL, 'active', '5d3c644abb3d67a2b70', 'goretzka', '54721044', '2019-08-02', '05:33:57'),
(53, '57.00', '1nYmgcTqkxSoBHVmyjUWu8s9uoEdap5CY', NULL, 'active', '5d42e61a6b37c4186ad', 'bella', '74955046', '2019-08-02', '06:00:45'),
(54, '80.00', 'adc2c1c5-0777-4fef-89b5-cac0b02058e8', NULL, 'active', '5d40ae476b799ea0222', 'classic', '60577509', '2019-08-02', '11:28:46'),
(55, '57.00', '79hjsbdndjwisiwnsnjesjalopsjsjshshehsh778jb', NULL, 'active', '5d42d22377fe4b50b34', 'starkey', '76469520', '2019-08-02', '13:18:10'),
(56, '$60', 'Bbads56882ghgksjkjbsghk', NULL, 'active', '5d43353473d2c1da58f', 'black', '57541192', '2019-08-02', '13:20:39'),
(57, '50', 'Dsohf57488258ckikgs', NULL, 'active', '5d43353473d2c1da58f', 'black', '69047561', '2019-08-02', '13:28:27'),
(58, '50', 'djutddhji5867giv587hcibhkvahif', NULL, 'active', '5d43353473d2c1da58f', 'black', '46646253', '2019-08-02', '18:10:52'),
(59, '70', 'Gfjdfsgff46635776fjfjjfsxhbjhssgjj', NULL, 'active', '5d44729460effe8f98d', 'kvngslee', '83233168', '2019-08-02', '18:16:03'),
(60, '70', 'Gfjdfsgff46635776fjfjjfsxhbjhssgjj', NULL, 'active', '5d44729460effe8f98d', 'kvngslee', '42680015', '2019-08-02', '18:17:09'),
(61, '70', 'Gfjdfsgff46635776fjfjjfsxhbjhssgjj', NULL, 'active', '5d44729460effe8f98d', 'kvngslee', '45682827', '2019-08-02', '18:17:57'),
(62, '90.00', 'adc2c1c5-0777-4fef-89b5-cac0b02058e8', NULL, 'active', '5d42e61a6b37c4186ad', 'bella', '93137387', '2019-08-02', '19:52:23'),
(63, '1250', 'Gsjd2shfjfjfuorofnshwtyookhvds', NULL, 'active', '5d3c644abb3d67a2b70', 'goretzka', '68552220', '2019-08-03', '12:19:27'),
(64, '2360', 'jcjdj', NULL, 'active', '5d30f896101e54bdb68', 'mronyewu', '81041967', '2019-08-03', '14:49:35'),
(65, '70', 'giftudofuff477528fjfhhh6857fufkfh', NULL, 'active', '5d435be75a6313fa29d', 'jane', '75823201', '2019-08-03', '15:05:59'),
(66, '80', 'Gfjdfsgff46635776fjfjjfsxhbjhssgjj', NULL, 'active', '5d44729460effe8f98d', 'kvngslee', '94047995', '2019-08-03', '16:58:19'),
(67, '100', '856629aa-c454-4fb0-99c4-486322fcd7b4', NULL, 'active', '5d42e61a6b37c4186ad', 'bella', '28647225', '2019-08-03', '17:45:00'),
(68, '87.00', '856629aa-c454-4fb0-99c4-486322fcd7b4adc2c1c5-0777-4fef-89b5-cac0b02058e8', NULL, 'active', '5d40ae476b799ea0222', 'classic', '90690611', '2019-08-03', '18:21:04'),
(69, '200.00', '856629aa-c454-4fb0-99c4-486322fcd7b4adc2c1c5-0777-4fef-89b5-cac0b02058e8', NULL, 'active', '5d40ae476b799ea0222', 'classic', '28264869', '2019-08-04', '06:39:15'),
(70, '80', 'hogit686hfsdkj865jddkkvjcjsjncd', NULL, 'active', '5d435be75a6313fa29d', 'jane', '16440279', '2019-08-04', '08:30:33'),
(71, '10', 'Gahfjfkgkirfshdkgogoehhxbcjcizvzhdoxgx22', NULL, 'active', '5d3c644abb3d67a2b70', 'goretzka', '28410666', '2019-08-04', '09:14:08'),
(72, '70', 'gkdgdkdt47643hjdjfhd4875hhgjg', NULL, 'active', '5d435be75a6313fa29d', 'jane', '64134631', '2019-08-04', '09:42:43'),
(73, '100', 'jfjfjufjcxgj584475vvdgf7746vgxhjnncxbxhbcxx b', NULL, 'active', '5d43353473d2c1da58f', 'black', '52746030', '2019-08-04', '09:52:46'),
(74, '750', 'Ajsdkoeyeufkfvzbdnfmfkxbxb23djfjf', NULL, 'active', '5d3c644abb3d67a2b70', 'goretzka', '75578351', '2019-08-04', '09:53:28'),
(75, '850', 'Qaxbnkoevdpttdbdjbsbbvxjdidotkb', NULL, 'active', '5d46a932b25c86c416a', 'ella', '56330841', '2019-08-04', '09:54:47'),
(76, '110', '856629aa-c454-4fb0-99c4-486322fcd7b4adc2c1c5-0777-4fef-89b5-cac0b02058e8', NULL, 'active', '5d42e61a6b37c4186ad', 'bella', '42021818', '2019-08-04', '17:12:18'),
(77, '250', 'Sdfghjhgfderydddddaaaattttvbhrupladtyh', NULL, 'active', '5d470966e64a3590abb', 'bellamichelle', '40632095', '2019-08-04', '17:19:59'),
(78, '100', 'Gfjdfsgff46635776fjfjjfsxhbjhssgjj', NULL, 'active', '5d44729460effe8f98d', 'kvngslee', '33796955', '2019-08-04', '17:38:19'),
(79, '57.00', '79hjsbdndjwisiwnsnjesjalopsjsjshshehsh778jb', NULL, 'active', '5d4335ae7c115db197e', 'olivia', '79067953', '2019-08-04', '17:51:36'),
(80, '2000', NULL, NULL, 'active', '5d4862b1059090fbdb7', 'calista', NULL, NULL, NULL),
(81, '100', 'Gfjdfsgff46635776fjfjjfsxhbjhssgjj', NULL, 'active', '5d44729460effe8f98d', 'kvngslee', '49541630', '2019-08-05', '17:23:30'),
(83, '1500', 'Wreuop256789zxcbnmmkfhjepasl987655', NULL, 'active', '5d43349e1fd42674d8f', 'starkey77', '68052407', '2019-08-05', '21:48:06'),
(84, '1500', 'Wertyuiopasd23456zxcvbnmlhfdspa8769072', NULL, 'active', '5d43349e1fd42674d8f', 'starkey77', '41702235', '2019-08-05', '21:52:16'),
(85, '5000', NULL, NULL, 'active', '5d43354209fa83d1b3f', 'melatijasmine', NULL, NULL, NULL),
(86, '1000', '856629aa-c454-4fb0-99c4-486322fcd7b4adc2c1c5-0777-4fef-89b5-cac0b02058e8', NULL, 'active', '5d42e61a6b37c4186ad', 'bella', '12470721', '2019-08-05', '22:13:56'),
(88, '500', 'Fhkkhffdyutyuiohjklpoigfyugdyddgjkbff', NULL, 'active', '5d470966e64a3590abb', 'bellamichelle', '37763967', '2019-08-05', '22:54:40'),
(89, '6200', 'Agdjfkforuhzv4789jdjgkgkhzgdhhduhdjfoodncclwutg', NULL, 'active', '5d3c644abb3d67a2b70', 'goretzka', '77149344', '2019-08-06', '09:57:53'),
(90, '5000', NULL, NULL, 'active', '5d43354209fa83d1b3f', 'melatijasmine', NULL, NULL, NULL),
(91, '1000', 'Gfjdfsgff46635776fjfjjfsxhbjhssgjj', NULL, 'active', '5d44729460effe8f98d', 'kvngslee', '54049797', '2019-08-06', '17:06:00'),
(92, '10', 'rryrurr', 'kfkf-464ggc-ijvv', 'active', '5d30f896101e54bdb68', 'mronyewu', '97906679', '2019-08-06', '19:12:13'),
(93, '1200', '1nYmgcTqkxSoBHVmyjUWu8s9uoEdap5CY', 'adc2c1c5-0777-4fef-89b5-cac0b02058e8', 'active', '5d40ae476b799ea0222', 'classic', '67916361', '2019-08-06', '19:58:00'),
(94, '1000', 'hjhgdhd76543hhvfdd6544ggjjhvddd', 'jjhgffds6553ffdghjuu76654ggfddd5543', 'active', '5d4862b1059090fbdb7', 'calista', '71316624', '2019-08-06', '20:49:00'),
(95, '1000', 'Qweasdzxc34679xcvbnmlpoiuytevgh98769', 'Asdfghjklp6789136bvcxmzyiopasddf34567', 'active', '5d43354209fa83d1b3f', 'melatijasmine', '78907775', '2019-08-06', '20:55:22'),
(96, '1000', 'Qweasdzxc34679xcvbnmlpoiuytevgh98769', 'Asdfghjklp6789136bvcxmzyiopasddf34567', 'active', '5d43354209fa83d1b3f', 'melatijasmine', '26996580', '2019-08-06', '21:05:40'),
(97, '1500', 'hjfdhhfdff875433hgddghf574357885jghxhh', 'jgfhxddh7843k6khsgd6884jjfjjhds', 'active', '5d435be75a6313fa29d', 'jane', '16475317', '2019-08-06', '21:19:34'),
(98, '1500', 'Qweasdzxc34679xcvbnmlpoiuytevgh98769', 'Asdfghjklp6789136bvcxmzyiopasddf34567', 'active', '5d4335ae7c115db197e', 'olivia', '11449922', '2019-08-06', '21:21:20'),
(99, '3500', '1dadghjklmbcx6734dfghjkkbbcxdgoyttrsaqwfg', 'Arteiirotopgddhjdjdfahdarsudpfncha', 'active', '5d3c644abb3d67a2b70', 'goretzka', '81403478', '2019-08-07', '08:29:27'),
(100, '1000', 'Ghdshfhdfgd46536hgdgdhjkfsd66324789', 'Gdgudhfsdhh553467544fhuhjkgddshidfyh', 'active', '5d491c11315461249ad', 'ghulam', '83928298', '2019-08-07', '15:17:04'),
(101, '1050', '856629aa-c454-4fb0-99c4-486322fcd7b4', 'adc2c1c5-0777-4fef-89b5-cac0b02058e8', 'active', '5d42e61a6b37c4186ad', 'bella', '65315162', '2019-08-07', '19:29:49'),
(103, '94448', 'kvkkvvk', 'kkk', 'active', '5d30f896101e54bdb68', 'mronyewu', '44184352', '2019-08-07', '20:09:52'),
(104, '112.5', '1KNA8df3oeoYYSPHqRMF3dUnv9PsLDNXG6', 'f3c12f40-801a-44bb-97cf-bfef7803564c', 'active', '5d48ed428bd376a523a', 'phuongtram168', '52951441', '2019-08-07', '20:13:11'),
(105, '10', 'ffjf', NULL, 'active', '5d30f896101e54bdb68', 'mronyewu', '93738228', '2019-08-07', '20:13:35'),
(106, '12.50', '1G4DssXWiBL78XGRmz5BoGebGGi359mAJX', NULL, 'active', '5d497c5cabe83c4724b', 'juniex', '14716150', '2019-08-07', '23:36:40'),
(107, '1000', 'Ghdshfhdfgd46536hgdgdhjkfsd66324789', NULL, 'active', '5d491c11315461249ad', 'ghulam', '28955669', '2019-08-08', '13:00:17'),
(108, '509', 'Sfjkopuytrddx23dhfkfoltpgmxbhdhsg', NULL, 'active', '5d3c644abb3d67a2b70', 'goretzka', '20706450', '2019-08-08', '13:28:24'),
(109, '509', 'Sfjkopuytrddx23dhfkfoltpgmxbhdhsg', NULL, 'active', '5d3c644abb3d67a2b70', 'goretzka', '34938746', '2019-08-08', '13:28:30'),
(110, '12', '1DppboG5dbH49Jy8du5ShPmpA8o8etf499', NULL, 'active', '', '', '97064078', '2019-08-09', '04:00:18'),
(111, '12', '1DppboG5dbH49Jy8du5ShPmpA8o8etf499', NULL, 'active', '', '', '21283126', '2019-08-09', '04:00:24'),
(112, '1959', 'adc2c1c5-0777-4fef-89b5-cac0b02058e8', NULL, 'active', '5d42e61a6b37c4186ad', 'bella', '84406029', '2019-08-09', '18:18:16'),
(114, '1000', 'Ghdshfhdfgd46536hgdgdhjkfsd66324789', NULL, 'active', '5d491c11315461249ad', 'ghulam', '67612264', '2019-08-10', '11:57:13'),
(115, '1500', 'Ghdshfhdfgd46536hgdgdhjkfsd66324789', NULL, 'active', '5d44729460effe8f98d', 'kvngslee', '28988821', '2019-08-10', '12:03:45'),
(116, '27', '1DppboG5dbH49Jy8du5ShPmpA8o8etf499', NULL, 'active', '5d497c5cabe83c4724b', 'juniex', '91137220', '2019-08-10', '14:42:05'),
(117, '1000', '79hjsbdndjwisiwnsnjesjalopsjsjshshehsh778jb', NULL, 'active', '5d42d22377fe4b50b34', 'starkey', '30631513', '2019-08-10', '22:39:54'),
(120, '5800', 'Fsgdhdjj457sjffoeokxbzjgfkeyutpypxnxvsjflgirydtxwvxjxkxfshdj', NULL, 'active', '5d3c644abb3d67a2b70', 'goretzka', '75861860', '2019-08-12', '13:35:13'),
(121, '4680', 'Sfhjkoouuhvxbkmvxsswtioplmvcsdsholmb', NULL, 'active', '5d3c644abb3d67a2b70', 'goretzka', '53932670', '2019-08-12', '13:39:03'),
(122, '623', 'Ghdshfhdfgd46536hgdgdhjkfsd66324789', NULL, 'active', '5d491c11315461249ad', 'ghulam', '23847931', '2019-08-13', '09:43:54'),
(123, '1200', 'Ghdshfhdfgd46536hgdgdhjkfsd66324789', NULL, 'active', '5d44729460effe8f98d', 'kvngslee', '33995639', '2019-08-13', '09:45:53'),
(124, '1800', 'gjsgkgaj7568nfjhakgiyu765544jgf', NULL, 'active', '5d43353473d2c1da58f', 'black', '56124294', '2019-08-13', '10:14:16'),
(125, '1600', '95a6b2af-6c2e-4b91-8a7c-fd37f39cc07f', NULL, 'active', '5d4862b1059090fbdb7', 'calista', '65951741', '2019-08-13', '13:25:53'),
(126, '1400', '95a6b2af-6c2e-4b91-8a7c-fd37f39cc07f', NULL, 'active', '5d435be75a6313fa29d', 'jane', '66165072', '2019-08-13', '13:29:02'),
(127, '1000', 'Qweasdzxc34679xcvbnmlpoiuytevgh98769', NULL, 'active', '5d4335ae7c115db197e', 'olivia', '14665910', '2019-08-13', '13:35:32'),
(128, '1200', '95a6b2af-6c2e-4b91-8a7c-fd37f39cc07f', NULL, 'active', '5d45a4a75ffa0ec403e', 'kelly', '19732863', '2019-08-13', '14:06:51'),
(129, '2045', '1nYmgcTqkxSoBHVmyjUWu8s9uoEdap5CY', NULL, 'active', '5d42e61a6b37c4186ad', 'bella', '43992819', '2019-08-14', '11:27:07'),
(130, '2089', '856629aa-c454-4fb0-99c4-486322fcd7b4adc2c1c5-0777-4fef-89b5-cac0b02058e8', NULL, 'active', '5d40ae476b799ea0222', 'classic', '17737018', '2019-08-14', '18:03:35'),
(131, '1500', 'Ghdshfhdfgd46536hgdgdhjkfsd66324789', NULL, 'active', '5d44729460effe8f98d', 'kvngslee', '24344972', '2019-08-14', '18:30:58'),
(132, '1700', 'Gfjdfsgff46635776fjfjjfsxhbjhssgjj', NULL, 'active', '5d491c11315461249ad', 'ghulam', '16312179', '2019-08-14', '18:32:22'),
(133, '81', '1Md3GPQRhdeCCkFJ6NzAcUMPCdwWiSHJyX', NULL, 'active', '5d497c5cabe83c4724b', 'juniex', '33447191', '2019-08-14', '23:26:03'),
(134, '2692', '856629aa-c454-4fb0-99c4-486322fcd7b4adc2c1c5-0777-4fef-89b5-cac0b02058e8', NULL, 'active', '5d40ae476b799ea0222', 'classic', '59676050', '2019-08-15', '07:06:49'),
(135, '1500', 'Ghdshfhdfgd46536hgdgdhjkfsd66324789', NULL, 'active', '5d491c11315461249ad', 'ghulam', '37338630', '2019-08-15', '12:16:04'),
(136, '1300', 'Gfjdfsgff46635776fjfjjfsxhbjhssgjj', NULL, 'active', '5d44729460effe8f98d', 'kvngslee', '59386542', '2019-08-15', '12:17:24'),
(137, '1000', 'Wertyuiopasd23456zxcvbnmlhfdspa8769072', NULL, 'active', '5d4335ae7c115db197e', 'olivia', '20863130', '2019-08-15', '12:40:01'),
(138, '700', 'hfjgaohjagh57554hghjahjsjjs', NULL, 'active', '5d43353473d2c1da58f', 'black', '10379194', '2019-08-15', '12:43:55'),
(139, '1900', 'kgajagaj8643jvdjqkag76533jgajh', NULL, 'active', '5d4862b1059090fbdb7', 'calista', '11065741', '2019-08-15', '13:05:07'),
(140, '1000', 'Wreuop256789zxcbnmmkfhjepasl987655', NULL, 'active', '5d42d22377fe4b50b34', 'starkey', '47676057', '2019-08-15', '13:13:54'),
(141, '2200', 'ojgaiafsusf767285kgjasjsshgsk', NULL, 'active', '5d4862b1059090fbdb7', 'calista', '50907908', '2019-08-15', '14:00:01'),
(142, '2550', 'jkgsojgsofu87422nvwkf87534ivsn', NULL, 'active', '5d43353473d2c1da58f', 'black', '10363415', '2019-08-15', '14:04:45'),
(143, '3490', 'adc2c1c5-0777-4fef-89b5-cac0b02058e8', NULL, 'active', '5d42e61a6b37c4186ad', 'bella', '52884280', '2019-08-15', '17:10:48'),
(144, '129.5', '1PnCFNV5VZn5wCAgoMLoM1YbF2LShWXp3H', NULL, 'active', '5d497c5cabe83c4724b', 'juniex', '83410872', '2019-08-16', '09:51:51'),
(145, '1000', 'Ghdshfhdfgd46536hgdgdhjkfsd66324789', NULL, 'active', '5d44729460effe8f98d', 'kvngslee', '36772037', '2019-08-16', '11:08:18'),
(146, '1000', 'Ghdshfhdfgd46536hgdgdhjkfsd66324789', NULL, 'active', '5d44729460effe8f98d', 'kvngslee', '35319458', '2019-08-16', '11:09:09'),
(147, '1500', 'Gfjdfsgff46635776fjfjjfsxhbjhssgjj', NULL, 'active', '5d491c11315461249ad', 'ghulam', '22908489', '2019-08-16', '11:10:34'),
(148, '1500', 'Gfjdfsgff46635776fjfjjfsxhbjhssgjj', NULL, 'active', '5d491c11315461249ad', 'ghulam', '65272356', '2019-08-17', '17:00:21'),
(149, '1000', 'Ghdshfhdfgd46536hgdgdhjkfsd66324789', NULL, 'active', '5d44729460effe8f98d', 'kvngslee', '82400679', '2019-08-17', '17:02:59'),
(150, '1000', 'Gfjdfsgff46635776fjfjjfsxhbjhssgjj', NULL, 'active', '5d44729460effe8f98d', 'kvngslee', '24771754', '2019-08-18', '18:10:41'),
(151, '1500', 'Ghdshfhdfgd46536hgdgdhjkfsd66324789', NULL, 'active', '5d491c11315461249ad', 'ghulam', '38108445', '2019-08-18', '18:18:10'),
(152, '62', '3JD31ocCggQM1triikZEttmYuNFTUf2sSQ', NULL, 'active', '5d592311cb9ab204327', 'saumya19', '73164006', '2019-08-19', '13:34:59'),
(153, '1500', 'Wreuop256789zxcbnmmkfhjepasl987655', NULL, 'active', '5d42d22377fe4b50b34', 'starkey', '66025556', '2019-08-19', '15:36:30'),
(154, '3612', 'adc2c1c5-0777-4fef-89b5-cac0b02058e8', NULL, 'active', '5d40ae476b799ea0222', 'classic', '44508782', '2019-08-19', '17:38:32'),
(155, '3500', 'khsogsiga95437tcjskksbjs9733!', NULL, 'active', '5d43353473d2c1da58f', 'black', '45881857', '2019-08-19', '21:50:03'),
(156, '2300', 'ohsfajafaj866292jgjsfazbaj97723kgsjs', NULL, 'active', '5d4862b1059090fbdb7', 'calista', '37619527', '2019-08-19', '21:53:42'),
(157, '1000', 'Qweasdzxc34679xcvbnmlpoiuytevgh98769', NULL, 'active', '5d42d22377fe4b50b34', 'starkey', '77129706', '2019-08-21', '20:43:40'),
(158, '1000', 'Qweasdzxc34679xcvbnmlpoiuytevgh98769', NULL, 'active', '5d42d22377fe4b50b34', 'starkey', '23193592', '2019-08-21', '21:25:23'),
(160, '5400', 'Fshdhsjfidkuehfh1fdhdj4hfjdk3dhfjjdjhsvzhsh', NULL, 'active', '5d46a932b25c86c416a', 'ella', '30150465', '2019-08-22', '07:26:57'),
(161, '360', '19WLtc4hmAQkoQHSAAbqo7VsTmjnx5ghGn', NULL, 'active', '5d497c5cabe83c4724b', 'juniex', '96971796', '2019-08-23', '15:54:03'),
(162, '3695', 'adc2c1c5-0777-4fef-89b5-cac0b02058e8', NULL, 'active', '5d40ae476b799ea0222', 'classic', '39072219', '2019-08-23', '17:55:27'),
(163, '3090', 'adc2c1c5-0777-4fef-89b5-cac0b02058e8', NULL, 'active', '5d42e61a6b37c4186ad', 'bella', '24104770', '2019-08-24', '19:54:24'),
(164, '3982', 'adc2c1c5-0777-4fef-89b5-cac0b02058e8', NULL, 'active', '5d40ae476b799ea0222', 'classic', '48895638', '2019-08-27', '06:08:49'),
(165, '4000', 'Shfjgorotpgomxmbzshurufofodoksnbsvvsjsk2fhskfl4vxndkdyro8', NULL, 'active', '5d46a932b25c86c416a', 'ella', '35275168', '2019-08-27', '06:25:59'),
(166, '420.72', '1ADamnSDxjcaaonY6JRH4ZhtX1GL8pqPsb', NULL, 'active', '5d497c5cabe83c4724b', 'juniex', '64728028', '2019-08-28', '06:27:49'),
(167, '849.29', '1ADamnSDxjcaaonY6JRH4ZhtX1GL8pqPsb', NULL, 'active', '5d497c5cabe83c4724b', 'juniex', '28831017', '2019-08-28', '12:38:20'),
(169, '4200', 'Sgjkiuuhvxzstuiopplkbxzagjkprfgjufxac', NULL, 'active', '5d46a932b25c86c416a', 'ella', '30455250', '2019-08-29', '15:45:06'),
(170, '20,000', 'Dhjkoopjjbvxayiionccbndkfkoskepfkcmzvagroypyambdrji', NULL, 'active', '5d3c644abb3d67a2b70', 'goretzka', '72871463', '2019-08-29', '15:46:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_market`
--
ALTER TABLE `current_market`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earning`
--
ALTER TABLE `earning`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `latest_deposits`
--
ALTER TABLE `latest_deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `latest_withdrawals`
--
ALTER TABLE `latest_withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nfp_date`
--
ALTER TABLE `nfp_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referal_withdrawal`
--
ALTER TABLE `referal_withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `walletedits`
--
ALTER TABLE `walletedits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_deposit`
--
ALTER TABLE `wallet_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal`
--
ALTER TABLE `withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_from_wallet`
--
ALTER TABLE `withdraw_from_wallet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `current_market`
--
ALTER TABLE `current_market`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `earning`
--
ALTER TABLE `earning`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `latest_deposits`
--
ALTER TABLE `latest_deposits`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `latest_withdrawals`
--
ALTER TABLE `latest_withdrawals`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nfp_date`
--
ALTER TABLE `nfp_date`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `referal_withdrawal`
--
ALTER TABLE `referal_withdrawal`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `wallet_deposit`
--
ALTER TABLE `wallet_deposit`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `withdrawal`
--
ALTER TABLE `withdrawal`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `withdraw_from_wallet`
--
ALTER TABLE `withdraw_from_wallet`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
