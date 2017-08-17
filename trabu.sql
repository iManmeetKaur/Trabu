-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2017 at 12:24 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trabu`
--

-- --------------------------------------------------------

--
-- Table structure for table `book ticket`
--

CREATE TABLE `book ticket` (
  `ticket_no` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `bus_no` bigint(20) NOT NULL,
  `username` varchar(5) NOT NULL,
  `seat_no` int(11) NOT NULL,
  `route_no` int(11) NOT NULL,
  `est_distance` int(11) NOT NULL,
  `fare` int(11) NOT NULL,
  `seats_available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `bus_id` int(11) NOT NULL,
  `bus_no` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `total seats` int(11) NOT NULL,
  `insurance` varchar(100) NOT NULL,
  `insurance expiry date` int(11) NOT NULL,
  `bus_service` int(11) NOT NULL,
  `emp id` int(11) NOT NULL,
  `emp name` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`bus_id`, `bus_no`, `name`, `total seats`, `insurance`, `insurance expiry date`, `bus_service`, `emp id`, `emp name`) VALUES
(1, 7, 'R.S.R.T.C', 60, 'Max Life Insurance', 171017, 0, 1, 'Mr. Vimal Jain'),
(2, 8, 'R.S.R.T.C', 70, 'Oriental', 181217, 1, 5, 'Shri Chand');

-- --------------------------------------------------------

--
-- Table structure for table `cancel ticket`
--

CREATE TABLE `cancel ticket` (
  `ticket_no` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `bus_no` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `seat_no` int(11) NOT NULL,
  `route_no` int(11) NOT NULL,
  `est_distance` int(11) NOT NULL,
  `fare` int(11) NOT NULL,
  `canc_charges` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `bus_no` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `payment mode` varchar(100) NOT NULL,
  `trip no` int(11) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `username` varchar(5) NOT NULL,
  `password` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `iot`
--

CREATE TABLE `iot` (
  `id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `temperature_1` float DEFAULT NULL,
  `humidity_1` float NOT NULL,
  `temperature_2` float NOT NULL,
  `humidity_2` float NOT NULL,
  `timestamp` datetime NOT NULL,
  `gyro-x` float NOT NULL,
  `gyro-y` float NOT NULL,
  `gyro-z` float NOT NULL,
  `accelero-x` float NOT NULL,
  `accelero-y` float NOT NULL,
  `accelero-z` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iot`
--

INSERT INTO `iot` (`id`, `bus_id`, `location`, `temperature_1`, `humidity_1`, `temperature_2`, `humidity_2`, `timestamp`, `gyro-x`, `gyro-y`, `gyro-z`, `accelero-x`, `accelero-y`, `accelero-z`) VALUES
(1, 1, 'UIT Auditorium, Kota\r\n', 32, 55, 31, 60, '2017-08-17 18:50:00', 1.09, 0.41, 0.79, 1.08, -0.41, -0.8),
(2, 2, 'Kota Junction, Kota', 32, 56, 30, 55, '2017-08-16 23:29:00', 0.83, -1.47, 1.06, -0.09, -0.01, 1.05);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `ticket_no` int(11) NOT NULL,
  `bus_no` bigint(20) NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_query` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `time table`
--

CREATE TABLE `time table` (
  `route_no` int(11) NOT NULL,
  `bus_no` bigint(20) NOT NULL,
  `arrival_time` int(11) NOT NULL,
  `departure_time` int(11) NOT NULL,
  `est_distance` int(11) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(9) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'root'),
(2, 'dist_head', 'dist');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book ticket`
--
ALTER TABLE `book ticket`
  ADD PRIMARY KEY (`ticket_no`),
  ADD UNIQUE KEY `ticket_no` (`ticket_no`),
  ADD KEY `bus_no` (`bus_no`),
  ADD KEY `username` (`username`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `route_no` (`route_no`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`bus_id`),
  ADD UNIQUE KEY `bus_no` (`bus_no`);

--
-- Indexes for table `cancel ticket`
--
ALTER TABLE `cancel ticket`
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `username` (`username`),
  ADD KEY `bus_no` (`bus_no`),
  ADD KEY `ticket_no` (`ticket_no`),
  ADD KEY `route_no` (`route_no`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `bus_no` (`bus_no`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iot`
--
ALTER TABLE `iot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bus_id` (`bus_id`);
ALTER TABLE `iot` ADD FULLTEXT KEY `location` (`location`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_no` (`ticket_no`),
  ADD KEY `bus_no` (`bus_no`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time table`
--
ALTER TABLE `time table`
  ADD PRIMARY KEY (`route_no`),
  ADD KEY `bus_no` (`bus_no`);
ALTER TABLE `time table` ADD FULLTEXT KEY `location` (`location`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book ticket`
--
ALTER TABLE `book ticket`
  MODIFY `ticket_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iot`
--
ALTER TABLE `iot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `time table`
--
ALTER TABLE `time table`
  MODIFY `route_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `book ticket`
--
ALTER TABLE `book ticket`
  ADD CONSTRAINT `book ticket_ibfk_1` FOREIGN KEY (`bus_no`) REFERENCES `bus` (`bus_no`),
  ADD CONSTRAINT `book ticket_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `book ticket_ibfk_3` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `book ticket_ibfk_4` FOREIGN KEY (`route_no`) REFERENCES `time table` (`route_no`);

--
-- Constraints for table `cancel ticket`
--
ALTER TABLE `cancel ticket`
  ADD CONSTRAINT `cancel ticket_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `cancel ticket_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `cancel ticket_ibfk_3` FOREIGN KEY (`bus_no`) REFERENCES `bus` (`bus_no`),
  ADD CONSTRAINT `cancel ticket_ibfk_4` FOREIGN KEY (`ticket_no`) REFERENCES `book ticket` (`ticket_no`),
  ADD CONSTRAINT `cancel ticket_ibfk_5` FOREIGN KEY (`route_no`) REFERENCES `time table` (`route_no`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`bus_no`) REFERENCES `bus` (`bus_no`);

--
-- Constraints for table `iot`
--
ALTER TABLE `iot`
  ADD CONSTRAINT `iot_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`bus_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`ticket_no`) REFERENCES `book ticket` (`ticket_no`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`bus_no`) REFERENCES `bus` (`bus_no`),
  ADD CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`);

--
-- Constraints for table `time table`
--
ALTER TABLE `time table`
  ADD CONSTRAINT `time table_ibfk_1` FOREIGN KEY (`bus_no`) REFERENCES `bus` (`bus_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
