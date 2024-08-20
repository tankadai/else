-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2024 at 01:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc`
--

-- --------------------------------------------------------

--
-- Table structure for table `boats`
--

CREATE TABLE `boats` (
  `Bid` int(11) NOT NULL,
  `Bname` varchar(50) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boats`
--

INSERT INTO `boats` (`Bid`, `Bname`, `Color`) VALUES
(24, 'Titanic', 'Red'),
(33, 'Edu', 'Blue'),
(41, 'Clipper', 'Black');

-- --------------------------------------------------------

--
-- Table structure for table `reserves`
--

CREATE TABLE `reserves` (
  `Sid` int(11) DEFAULT NULL,
  `Bid` int(11) DEFAULT NULL,
  `Day` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reserves`
--

INSERT INTO `reserves` (`Sid`, `Bid`, `Day`) VALUES
(1, 22, '2019-12-15'),
(11, 41, '2019-12-18'),
(9, 24, '2019-12-23');

-- --------------------------------------------------------

--
-- Table structure for table `sailors`
--

CREATE TABLE `sailors` (
  `Sid` int(11) NOT NULL,
  `Sname` varchar(50) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sailors`
--

INSERT INTO `sailors` (`Sid`, `Sname`, `Rating`, `Age`) VALUES
(1, 'Harry', 10, 23),
(2, 'Matt', 9, 25),
(3, 'David', 8, 27),
(9, 'Eric', 10, 29),
(11, 'Sam', 9, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boats`
--
ALTER TABLE `boats`
  ADD PRIMARY KEY (`Bid`);

--
-- Indexes for table `sailors`
--
ALTER TABLE `sailors`
  ADD PRIMARY KEY (`Sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
