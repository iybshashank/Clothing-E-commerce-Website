-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 06, 2021 at 11:47 AM
-- Server version: 8.0.21
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `carddatabase`
--

CREATE TABLE `carddatabase` (
  `dbcfirst` int NOT NULL,
  `dbcsecond` int NOT NULL,
  `dbcthird` int NOT NULL,
  `dbcfourth` int NOT NULL,
  `dbcname` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `dbcmonth` int NOT NULL,
  `dbcyear` int NOT NULL,
  `dbccsv` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carddatabase`
--

INSERT INTO `carddatabase` (`dbcfirst`, `dbcsecond`, `dbcthird`, `dbcfourth`, `dbcname`, `dbcmonth`, `dbcyear`, `dbccsv`) VALUES
(1233, 2125, 6567, 6765, 'dsfdsfg', 3, 3211, 443),
(9856, 4565, 7786, 8787, 'test', 1, 5011, 112);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `sname` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `semail` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `spassword` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`sname`, `semail`, `spassword`) VALUES
('shashank', 'shashank@gmail.com', 'dshashank'),
('shashanks', 'shashanks@gmail.com', 'shashanks'),
('test', 'test@test.com', 'test'),
('uname', 'uname@emil.com', 'uname');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carddatabase`
--
ALTER TABLE `carddatabase`
  ADD PRIMARY KEY (`dbcfirst`,`dbcsecond`,`dbcthird`,`dbcfourth`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD UNIQUE KEY `semail` (`semail`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
