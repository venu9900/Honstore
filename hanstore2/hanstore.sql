-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2018 at 09:24 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hanstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(4) NOT NULL,
  `cat_nm` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_nm`) VALUES
(1, 'Greetings'),
(2, 'Wall painting'),
(3, 'Gifts');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `con_id` int(4) NOT NULL,
  `con_nm` varchar(25) NOT NULL,
  `con_email` varchar(35) NOT NULL,
  `con_query` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`con_id`, `con_nm`, `con_email`, `con_query`) VALUES
(1, 'Hiren', 'hiru@gmail.com', 'English Novels...'),
(2, 'Shital', 'shital@yahoo.com', 'Are you send me medical books?'),
(3, 'Manali', 'manali@yahoo.com', 'Java Complete Reference is available?'),
(4, 'Rina', 'rina@gmail.com', 'Artificial Intelligence');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `b_id` int(4) NOT NULL,
  `b_nm` varchar(60) NOT NULL,
  `b_subcat` varchar(25) NOT NULL,
  `b_price` int(5) NOT NULL,
  `b_img` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`b_id`, `b_nm`, `b_subcat`, `b_price`, `b_img`) VALUES
(1, 'Wall painting ', '2', 500, 'upload_image/wall/wall1.jpg'),
(2, 'christmas tree', '3', 100, 'upload_image/gift/gift1.jpg'),
(3, 'Gift box', '3', 100, 'upload_image/gift/gift2.jpg'),
(4, 'Pen stand', '3', 100, 'upload_image/gift/gift3.jpg'),
(5, 'Jeens dairy', '3', 100, 'upload_image/gift/gift4.jpg'),
(6, 'Tree hangers', '3', 200, 'upload_image/gift/gift5.jpg'),
(7, 'Personal wallets', '3', 150, 'upload_image/gift/gift6.jpg'),
(8, 'chameleon crafts', '3', 50, 'upload_image/gift/gift7.jpg'),
(9, 'Key holder', '3', 300, 'upload_image/gift/gift10.jpg'),
(10, 'Water Painting', '2', 500, 'upload_image/wall/wall2.jpg'),
(11, 'Radha Krishna painting', '2', 500, 'upload_image/wall/wall3.jpg'),
(12, 'Flower painting', '2', 350, 'upload_image/wall/wall4.jpg'),
(13, 'Horse painting', '2', 350, 'upload_image/wall/wall5.jpg'),
(14, 'Efil tower painting', '2', 300, 'upload_image/wall/wall6.jpg'),
(15, 'wall paint', '2', 400, 'upload_image/wall/wall7.jpg'),
(16, 'oil paint', '2', 400, 'upload_image/wall/wall8.jpg'),
(17, 'nature paint', '2', 400, 'upload_image/wall/wall9.jpg'),
(18, 'mountain paint', '2', 350, 'upload_image/wall/wall10.jpg'),
(19, 'Valentinesday greetings', '1', 100, 'upload_image/greeting/gree1.jpg'),
(20, 'Valentinesday wishes greetings', '1', 100, 'upload_image/greeting/gree2.jpg'),
(21, 'Kids greetings', '1', 100, 'upload_image/greeting/gree3.jpg'),
(22, 'Birthday greetings', '1', 100, 'upload_image/greeting/gree4.jpg'),
(23, 'Leaf greetings', '1', 100, 'upload_image/greeting/gree5.jpg'),
(24, 'Stylish greetings', '1', 100, 'upload_image/greeting/gree6.jpg'),
(25, 'Marbel greetings', '1', 100, 'upload_image/greeting/gree7.jpg'),
(26, 'Button greetings', '1', 100, 'upload_image/greeting/gree8.jpg'),
(27, 'Design greetings', '1', 100, 'upload_image/greeting/gree9.jpg'),
(28, 'New year greetings', '1', 100, 'upload_image/greeting/gree10.jpg'),
(29, 'Button greetings', '1', 100, 'upload_image/greeting/gree8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_details`
--

CREATE TABLE `shipping_details` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `address` text NOT NULL,
  `postal_code` bigint(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `f_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_details`
--

INSERT INTO `shipping_details` (`id`, `name`, `address`, `postal_code`, `city`, `state`, `phone`, `f_id`) VALUES
(1, 'sanjeev kumar', ' 141 delhi', 110009, 'delhi', 'delhi', 9015501897, 'sanjeev'),
(2, 'sanjeev kumar', ' 141 delhi', 110009, 'delhi', 'delhi', 9015501897, 'sanjeev'),
(3, 'Shwetha', ' kundapura', 576201, 'kundapura', 'karnataka', 8971704355, '123'),
(4, 'Seema', 'Kundapura', 576201, 'kundapura', 'karnataka', 7654321098, '345'),
(5, 'aaaa', ' kundapura', 576201, 'kundapura', 'karnataka', 7654321098, '345'),
(6, 'aaaa', ' kundapura', 576201, 'kundapura', 'karnataka', 6543210987, '12345'),
(7, 'rama', ' udupi', 6785, 'udupi', 'karnataka', 87655432219, '23456'),
(8, 'Shwetha', ' kudapura', 576201, 'kundapura', 'karnataka', 9876543210, '123');

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE `subcat` (
  `subcat_id` int(4) NOT NULL,
  `parent_id` int(4) NOT NULL,
  `subcat_nm` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`subcat_id`, `parent_id`, `subcat_nm`) VALUES
(1, 1, 'Greetings'),
(2, 2, 'wall paintings'),
(3, 3, 'Gifts');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(4) NOT NULL,
  `u_fnm` varchar(35) NOT NULL,
  `u_unm` varchar(25) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_gender` varchar(7) NOT NULL,
  `u_email` varchar(35) NOT NULL,
  `u_contact` varchar(12) NOT NULL,
  `u_city` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_fnm`, `u_unm`, `u_pwd`, `u_gender`, `u_email`, `u_contact`, `u_city`) VALUES
(15, 'Rama', 'rama', '23456', 'Male', 'rama@gmail.com', '8765432109', 'Udupi'),
(14, 'aaa', 'abcde', '12345', 'Male', 'aaa@gmail.com', '6543210987', 'Dheli'),
(13, 'preethi kulal', 'preethi', '12345', 'Female', 'preethikulal@gmail.com', '7654321098', 'Manipal'),
(12, 'admin', 'admin', 'admin123', 'Male', 'admin@gmail.com', '6543210987', 'Bangalore'),
(7, 'Shwetha', 'shwetha', '123', 'Female', 'gcbyndoor@gmail.com', '9538423604', 'Ahmedabad'),
(11, 'seema', 'seema', '345', 'Female', 'seema@gmail.com', '7654321098', 'Madikeri'),
(9, 'preethi', 'preethi', '789', 'Female', 'preethi@gmail.com', '9876543213', 'Udupi'),
(10, 'Ashwitha', 'ashwi', '234', 'Female', 'ashwi@gmail.com', '8765432109', 'Ahmedabad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `shipping_details`
--
ALTER TABLE `shipping_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcat`
--
ALTER TABLE `subcat`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `con_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `b_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `shipping_details`
--
ALTER TABLE `shipping_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subcat`
--
ALTER TABLE `subcat`
  MODIFY `subcat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
