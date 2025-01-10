-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2025 at 06:59 PM
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
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `addteacher`
--

CREATE TABLE `addteacher` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `spec` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feesubmit`
--

CREATE TABLE `feesubmit` (
  `Feeid` int(20) NOT NULL,
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `monthname` varchar(255) NOT NULL,
  `annual` int(20) NOT NULL,
  `monthly` int(20) NOT NULL,
  `sport` int(20) NOT NULL,
  `library` int(20) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feesubmit`
--

INSERT INTO `feesubmit` (`Feeid`, `id`, `name`, `monthname`, `annual`, `monthly`, `sport`, `library`, `Status`) VALUES
(1, 33, 'Bilal', 'jan', 24000, 2000, 1000, 500, 'paid'),
(2, 74, 'zoya', 'jan', 5000, 5000, 3000, 3000, 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `reportcard`
--

CREATE TABLE `reportcard` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `phy` int(255) NOT NULL,
  `chem` int(255) NOT NULL,
  `math` int(255) NOT NULL,
  `rollnumber` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reportcard`
--

INSERT INTO `reportcard` (`id`, `name`, `class`, `phy`, `chem`, `math`, `rollnumber`, `grade`) VALUES
(33, 'Bilal', '10', 40, 22, 39, '1069', 'Fail'),
(74, 'Zoya', '8', 70, 70, 70, '20658', 'A'),
(259, 'Sam', '9', 99, 98, 99, '1024', 'A+'),
(1056, 'Silver', '5', 66, 22, 55, '88', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `stureg`
--

CREATE TABLE `stureg` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `fatherphone` int(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `roll` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stureg`
--

INSERT INTO `stureg` (`id`, `name`, `fname`, `phone`, `fatherphone`, `class`, `roll`, `address`) VALUES
(1, 'kash', 'pu', 71, 77, 'dse', '140', '20th street');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feesubmit`
--
ALTER TABLE `feesubmit`
  ADD PRIMARY KEY (`Feeid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `reportcard`
--
ALTER TABLE `reportcard`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feesubmit`
--
ALTER TABLE `feesubmit`
  ADD CONSTRAINT `feesubmit_ibfk_1` FOREIGN KEY (`id`) REFERENCES `reportcard` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
