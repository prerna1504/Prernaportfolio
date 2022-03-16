-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2022 at 06:00 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vdis`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin@a.a', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `checker_info`
--

CREATE TABLE `checker_info` (
  `c_id` bigint(255) NOT NULL,
  `c_fname` varchar(255) DEFAULT NULL,
  `c_lname` varchar(255) DEFAULT NULL,
  `c_gender` varchar(255) DEFAULT NULL,
  `c_dob` varchar(255) DEFAULT NULL,
  `c_type` varchar(255) DEFAULT NULL,
  `c_address` varchar(255) DEFAULT NULL,
  `c_email` varchar(255) DEFAULT NULL,
  `c_password` varchar(255) DEFAULT NULL,
  `c_doj` varchar(255) DEFAULT NULL,
  `c_desg` varchar(255) DEFAULT NULL,
  `c_cap` varchar(255) DEFAULT NULL,
  `c_current` varchar(255) DEFAULT NULL,
  `c_city` varchar(255) DEFAULT NULL,
  `c_created_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checker_info`
--

INSERT INTO `checker_info` (`c_id`, `c_fname`, `c_lname`, `c_gender`, `c_dob`, `c_type`, `c_address`, `c_email`, `c_password`, `c_doj`, `c_desg`, `c_cap`, `c_current`, `c_city`, `c_created_time`) VALUES
(1, 'Gaurav', 'Sonar', 'Male', '12-02-2002', 'RTO', 'Nashik', 'g@g.com', 'Gaurav@12', '23-02-2016', 'API', 'HS 565', 'Pachavati', 'Nashik', '2021-07-11 16:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` bigint(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `username`, `email`, `subject`, `message`, `time`) VALUES
(1, 'g@g.com', 'gayatri9213@gmail.com', 'Website ', 'qwefg', '2021-07-23 08:33:50'),
(2, 'Gaurav', 'g@g.com', 'websites', 'Msg....', '2021-07-23 08:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_table`
--

CREATE TABLE `feedback_table` (
  `f_id` bigint(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `feedback_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback_table`
--

INSERT INTO `feedback_table` (`f_id`, `user_name`, `subject`, `message`, `feedback_time`) VALUES
(1, 'Gaurav Sonar ', 'Website ', 'YoU are developing Very Well ', '2021-07-23 08:12:47'),
(2, 'Snehal ', 'Related to Rc ', 'Your work is appreciatable', '2021-07-23 08:19:09'),
(3, 'admin', 'AAA', 'iyutydtjgmcb ', '2022-02-16 11:00:11'),
(4, 'MASOOD', 'kUCH bHI NAHI ', 'gOOD', '2022-02-26 18:15:38'),
(5, 'Shekhar ', 'Kahi NAHi ', 'tiutdiuhhoiuh', '2022-02-26 19:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `fine_user`
--

CREATE TABLE `fine_user` (
  `fine_id` int(11) NOT NULL,
  `fine_name` varchar(55) NOT NULL,
  `fine_charge` int(11) NOT NULL,
  `fine_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine_user`
--

INSERT INTO `fine_user` (`fine_id`, `fine_name`, `fine_charge`, `fine_qty`) VALUES
(1, 'Not wearing seatbelts', 500, 1),
(2, 'without wearing helmets', 500, 1),
(3, 'Rc Not Active', 1000, 1),
(4, 'PUC Not Active', 50, 1),
(5, 'Licence Not Active', 1000, 1),
(6, 'In 2 Wheeler 3 Seats', 1500, 1),
(7, 'Insurance Not Active', 500, 1),
(8, 'Insurance Not Active 4 Wheeler', 1500, 1),
(9, 'Drunk and Drive', 5000, 1),
(10, 'Heavy Vehicle Find in City', 10000, 1),
(0, 'Helmet not wear At petrol pump', 500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_user`
--

CREATE TABLE `invoice_user` (
  `invoice_id` bigint(255) NOT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `user_id` bigint(255) DEFAULT NULL,
  `c_id` bigint(255) DEFAULT NULL,
  `fine_types` varchar(255) DEFAULT NULL,
  `fine_qty` varchar(255) DEFAULT NULL,
  `fine_charges` varchar(255) DEFAULT NULL,
  `fine_totalamount` varchar(255) DEFAULT NULL,
  `fine_taxamount` varchar(255) DEFAULT NULL,
  `fine_grossamount` varchar(255) DEFAULT NULL,
  `invoice_status` varchar(255) DEFAULT NULL,
  `invoice_date` datetime NOT NULL DEFAULT current_timestamp(),
  `generated_when` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_user`
--

INSERT INTO `invoice_user` (`invoice_id`, `invoice_no`, `user_id`, `c_id`, `fine_types`, `fine_qty`, `fine_charges`, `fine_totalamount`, `fine_taxamount`, `fine_grossamount`, `invoice_status`, `invoice_date`, `generated_when`) VALUES
(1, NULL, 0, 0, 'Chicken Rice', '', '', '', '', '', NULL, '2021-07-23 10:47:44', '2021-07-20 11:05:02'),
(2, NULL, 0, 0, 'Chicken Cury', '', '', '', '', '', NULL, '2021-07-23 10:47:44', '2021-07-20 11:05:33'),
(3, NULL, 9, 0, NULL, NULL, NULL, '', '', '', 'Paid', '2021-07-23 10:47:44', '2021-07-20 11:29:38'),
(4, NULL, 9, 0, NULL, NULL, NULL, '', '', '', NULL, '2021-07-23 10:47:44', '2021-07-20 11:31:05'),
(5, NULL, 9, 0, NULL, NULL, NULL, '', '', '', 'Paid', '2021-07-23 10:47:44', '2021-07-20 11:32:27'),
(6, NULL, 9, 0, NULL, NULL, NULL, '\"<strong><span name=\"subtotal\" id=\"subTotal\"></span></strong>\"', '', '', 'Paid', '2021-07-23 10:47:44', '2021-07-20 11:41:36'),
(7, NULL, 9, 0, NULL, NULL, NULL, 'id=\"subTotal\"', '', '', NULL, '2021-07-23 10:47:44', '2021-07-20 11:42:59'),
(8, NULL, 9, 0, NULL, NULL, NULL, '', '', '', NULL, '2021-07-23 10:47:44', '2021-07-20 11:50:05'),
(9, NULL, 9, 0, NULL, NULL, NULL, '', '', '6500.00', NULL, '2021-07-23 10:47:44', '2021-07-21 17:29:00'),
(10, NULL, 9, 1, NULL, NULL, NULL, '', '', '1500.00', NULL, '2021-07-23 10:47:44', '2021-07-22 10:25:33'),
(11, NULL, 9, 1, NULL, NULL, NULL, '', '', '6000.00', 'Paid', '2022-02-06 13:54:03', '2022-02-06 13:54:03'),
(12, NULL, 9, 1, NULL, NULL, NULL, '', '', '2000.00', 'Paid', '2022-02-06 14:40:51', '2022-02-06 14:40:51'),
(13, NULL, 1, 1, NULL, NULL, NULL, '', '', '', 'Pending', '2022-02-26 18:23:19', '2022-02-26 18:23:19'),
(14, NULL, 9, 0, NULL, NULL, NULL, '', '', '500.00', 'Pending', '2022-02-26 18:28:35', '2022-02-26 18:28:35'),
(15, NULL, 12, 1, NULL, NULL, NULL, '', '', '6000.00', 'Paid', '2022-02-26 19:19:07', '2022-02-26 19:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `proudct_id` varchar(55) NOT NULL,
  `product_name` varchar(55) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `proudct_id`, `product_name`, `product_price`, `product_qty`) VALUES
(1, 'ml01', 'Malai Kadhaai', 250, 2),
(2, 'pn01', 'Paneer Mutter', 150, 3),
(3, 'pn02', 'Paneer Aloo', 120, 4),
(4, 'rm1', 'Tandoori Roti', 25, 2),
(5, 'rm1', 'Butter Roti', 35, 2),
(6, 'jr01', 'Jeera Rice', 110, 2),
(7, 'kf1', 'Veg Kofta', 230, 2),
(8, 'mt01', 'Mutton Curry', 425, 1),
(9, 'ck01', 'Chicken Cury', 210, 1),
(10, 'ck02', 'Chicken Masala', 110, 1),
(11, 'ck03', 'Chicken Rice', 150, 1),
(12, 'rt01', 'Onion Rayata', 45, 1),
(13, 'rt02', 'Onine Curd Rayata', 90, 1),
(0, 'Hm', 'Helmet', 250, 1),
(1, 'Hm', 'Helmet', 250, 1);

-- --------------------------------------------------------

--
-- Table structure for table `puc_plan_master`
--

CREATE TABLE `puc_plan_master` (
  `puc_plan_id` bigint(255) NOT NULL,
  `puc_plan_period` varchar(255) DEFAULT NULL,
  `puc_plan_amount` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `puc_plan_master`
--

INSERT INTO `puc_plan_master` (`puc_plan_id`, `puc_plan_period`, `puc_plan_amount`) VALUES
(1, '6 Months', '40'),
(2, '1 Year', '60'),
(3, '2 year', '80'),
(4, '3 year', '150'),
(5, '5 year', '250');

-- --------------------------------------------------------

--
-- Table structure for table `puc_user`
--

CREATE TABLE `puc_user` (
  `p_id` bigint(255) NOT NULL,
  `user_id` bigint(255) DEFAULT NULL,
  `puc_vehicle_no` varchar(255) DEFAULT NULL,
  `puc_fuel_type` varchar(255) DEFAULT NULL,
  `puc_vehicle_type` varchar(255) DEFAULT NULL,
  `puc_vehicle_class` varchar(255) DEFAULT NULL,
  `p_plan_period` varchar(255) DEFAULT NULL,
  `p_plan_amount` varchar(255) DEFAULT NULL,
  `puc_status` varchar(255) DEFAULT NULL,
  `puc_issue_date` varchar(255) DEFAULT NULL,
  `puc_valid_upto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `puc_user`
--

INSERT INTO `puc_user` (`p_id`, `user_id`, `puc_vehicle_no`, `puc_fuel_type`, `puc_vehicle_type`, `puc_vehicle_class`, `p_plan_period`, `p_plan_amount`, `puc_status`, `puc_issue_date`, `puc_valid_upto`) VALUES
(19, 1, '1', 'petrol', 'a', 'vc', '3', '80', 'Paid', NULL, NULL),
(20, 9, '5', 'disel', 'u', 'vcm', '1', '40', 'Rejected', NULL, NULL),
(21, 10, '40', 'petrol', 'a', 'vcm', '2', '60', 'Accepted', NULL, NULL),
(22, 1, 'MH 15 GB 3059', '2 Wheeler', 'Petrol', 'Suzuki', '1', '40', 'Paid', '2021-07-19', '2022-01-15'),
(23, 1, 'MH 15 GB 3059', '3 Wheelar', 'Gas', 'Bajaj Auto', '3', '80', 'Paid', '2022-02-26', '2024-02-26'),
(24, 1, 'MH 12 GB 2525', 'Diesel', '4 Wheelar', 'Swift Desire', '3', '80', 'Rejected', NULL, NULL),
(25, 1, 'QW 15 QW 1412', 'Petrol', '4+ Wheelar', 'Swift Desire', '5', '250', 'Pending', NULL, NULL),
(26, 12, 'MH 15 GB 2057', 'Petrol', '2 Wheelar', 'FFFFFF', '4', '150', 'Paid', '2022-02-26', '2025-02-25');

-- --------------------------------------------------------

--
-- Table structure for table `rc_user`
--

CREATE TABLE `rc_user` (
  `r_id` bigint(255) NOT NULL,
  `user_id` bigint(255) DEFAULT NULL,
  `rc_vehicle_no` varchar(255) DEFAULT NULL,
  `rc_own_name` varchar(255) DEFAULT NULL,
  `rc_engine_no` varchar(255) DEFAULT NULL,
  `rc_chasis_no` varchar(255) DEFAULT NULL,
  `rc_vehicle_class` varchar(255) DEFAULT NULL,
  `rc_vehicle_type` varchar(255) DEFAULT NULL,
  `rc_myon` varchar(255) DEFAULT NULL,
  `rc_fuel` varchar(255) DEFAULT NULL,
  `rc_body_color` varchar(255) DEFAULT NULL,
  `rc_seat_cap` varchar(255) DEFAULT NULL,
  `rc_status` varchar(255) DEFAULT NULL,
  `rc_issue_date` varchar(255) DEFAULT NULL,
  `rc_valid_upto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rc_user`
--

INSERT INTO `rc_user` (`r_id`, `user_id`, `rc_vehicle_no`, `rc_own_name`, `rc_engine_no`, `rc_chasis_no`, `rc_vehicle_class`, `rc_vehicle_type`, `rc_myon`, `rc_fuel`, `rc_body_color`, `rc_seat_cap`, `rc_status`, `rc_issue_date`, `rc_valid_upto`) VALUES
(1, 1, 'MH15GB3055', 'sn', 'add', 'add', 'l', 'p', '45', 'p', 'r', '2', 'Accepted', '12-02-2024', '23-02-2025'),
(2, 9, 'MH15GR6305', 'fg', 'yuo', 'cv', 'cv', 'cv', 'as', 'rty', 'yu', 'cv', 'Rejected', NULL, NULL),
(3, 10, 'MH15GB3059', 'Kiran', 'Meri Link road', 'Meri Link road', 'B', 'A', '2015', 'Petrol', 'Maroon', 'Nashik', 'Pending', NULL, NULL),
(4, 1, 'MH 12 GG 3456', NULL, 'th567898765', '456789', 'Activa', '4+ Wheelar', NULL, 'Diesel', 'Black', '2', 'Accepted', '2021-07-19', '2036-07-15'),
(5, 1, 'MH 15 DR 6882', NULL, 'GNHJ786567888', '647779774979HN', 'Activa ', '2 Wheelar', NULL, 'Petrol', 'White', '2', 'Accepted', '2022-02-26', '2037-02-22'),
(6, 12, 'MH 15 GB 2057', NULL, 'ur98ewtregvefrdg', '43562fess', 'Pulsar', '2 Wheelar', NULL, 'Petrol', 'black', '2', 'Accepted', '2022-02-26', '2037-02-22');

-- --------------------------------------------------------

--
-- Table structure for table `user_licence`
--

CREATE TABLE `user_licence` (
  `l_id` bigint(255) NOT NULL,
  `l_no` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `l_rto_location` varchar(255) DEFAULT NULL,
  `l_issue_date` varchar(255) DEFAULT NULL,
  `l_expiry_date` varchar(255) DEFAULT NULL,
  `l_address` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_licence`
--

INSERT INTO `user_licence` (`l_id`, `l_no`, `user_id`, `l_rto_location`, `l_issue_date`, `l_expiry_date`, `l_address`, `date_added`) VALUES
(1, 'MH 121215544', '1', 'Nashik', '12-12-1212', '12-12-1221', NULL, '2021-07-21 15:11:37'),
(53, 'MH 1212121212', '1', 'Nashik', '2022-02-12', '2020-01-15', NULL, '2021-07-21 15:12:14'),
(54, 'MH 1514121452', '1', 'Nashik', '2002-02-12', '1212-12-12', NULL, '2021-07-21 15:13:41'),
(55, 'MH 1211515115', '1', 'Nashik', '2002-02-12', '1212-12-12', NULL, '2021-07-21 15:21:50'),
(56, 'MH 1541412541241', '1', 'Nashik', '0202-02-12', '2002-02-12', NULL, '2021-07-21 15:22:48'),
(57, 'MH 15141215454545', '1', 'nashik', '1121-12-12', '12151-12-12', NULL, '2021-07-21 15:23:11'),
(58, '', '1', '', '', '', NULL, '2021-07-21 15:23:53'),
(59, '', '1', '', '', '', NULL, '2021-07-21 15:24:46'),
(60, '', '1', '', '', '', NULL, '2021-07-21 15:24:57'),
(61, 'WE 6123456787', '1', 'Nashik', '', '', NULL, '2021-07-21 15:25:34'),
(62, 'ER 43256734564356', '1', 'Nashik', '', '', NULL, '2021-07-21 15:28:21'),
(63, 'ER 43256734564356', '1', 'Nashik', '', '', NULL, '2021-07-21 15:29:39'),
(64, 'MH 121212221', '1', 'Nashik', '1212-12-12', '0012-12-12', NULL, '2021-07-21 15:30:06'),
(65, 'MH 121212221', '1', 'Nashik', '1212-12-12', '0012-12-12', NULL, '2021-07-21 15:31:32'),
(66, 'ER 43256734564356', '1', 'Nashik', '2002-02-12', '2002-02-12', NULL, '2021-07-21 15:31:56'),
(67, 'MH 15121512151215', '1', 'Nashik', '0012-12-12', '0012-12-12', NULL, '2021-07-21 15:35:25'),
(68, 'MH 12345', '1', 'Nashik', '', '', NULL, '2021-07-21 15:36:30'),
(69, '', '1', '', '', '', NULL, '2021-07-21 15:39:47'),
(70, 'MH 15141251', '1', 'Nashik', '1212-12-12', '0211-12-12', NULL, '2021-07-21 15:41:37'),
(71, 'MH 141214515', '1', 'Nashik', '212221-12-12', '11212-02-21', NULL, '2021-07-21 15:42:51'),
(72, 'MH 1515151511', '1', '1', '0001-01-01', '0001-01-01', NULL, '2021-07-21 16:04:56'),
(73, 'MH 1515151511', '1', '1', '0001-01-01', '0001-01-01', NULL, '2021-07-21 16:06:04'),
(74, '', '1', '', '', '', NULL, '2021-07-21 16:06:36'),
(75, 'JU 7887668890', '1', 'Nashik', '', '', NULL, '2021-07-21 16:07:50'),
(76, 'JU 7887668890', '1', 'Nashik', '', '', NULL, '2021-07-21 16:09:26'),
(77, '', '1', '', '', '', NULL, '2021-07-21 16:09:37');

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `user_id` bigint(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_mobile` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_license_no` varchar(255) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`user_id`, `user_name`, `user_mobile`, `user_email`, `user_password`, `user_license_no`, `user_address`, `created_time`) VALUES
(1, 'Gaurav', '9960141250', 'g@g.com', 'Gaurav@12', NULL, 'Nashik', '2021-07-15 20:06:57'),
(9, 'snehalk', '3456789876', 's@s.com', '1234', '123456756985', 'gs1 Pritish Society', '2021-07-17 08:15:37'),
(11, 'Gaurav Sonar ', '9989898989', 'Gaurav@12.com', 'Gaurav@12', 'MH12245958958858', 'Nashik', '2022-02-21 16:17:18'),
(12, 'Shekhar ', '789968478', 'Shekhar@gmail.com', 'Shekhar@12', 'MH15151515151', 'Akluj', '2022-02-26 19:09:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checker_info`
--
ALTER TABLE `checker_info`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `feedback_table`
--
ALTER TABLE `feedback_table`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `invoice_user`
--
ALTER TABLE `invoice_user`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `puc_plan_master`
--
ALTER TABLE `puc_plan_master`
  ADD PRIMARY KEY (`puc_plan_id`);

--
-- Indexes for table `puc_user`
--
ALTER TABLE `puc_user`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `rc_user`
--
ALTER TABLE `rc_user`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `user_licence`
--
ALTER TABLE `user_licence`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `checker_info`
--
ALTER TABLE `checker_info`
  MODIFY `c_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback_table`
--
ALTER TABLE `feedback_table`
  MODIFY `f_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice_user`
--
ALTER TABLE `invoice_user`
  MODIFY `invoice_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `puc_plan_master`
--
ALTER TABLE `puc_plan_master`
  MODIFY `puc_plan_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `puc_user`
--
ALTER TABLE `puc_user`
  MODIFY `p_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `rc_user`
--
ALTER TABLE `rc_user`
  MODIFY `r_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_licence`
--
ALTER TABLE `user_licence`
  MODIFY `l_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `user_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
