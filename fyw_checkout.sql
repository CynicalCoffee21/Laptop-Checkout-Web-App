-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2018 at 02:41 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyw_checkout`
--

-- --------------------------------------------------------

--
-- Table structure for table `laptop_checkout`
--

CREATE TABLE `laptop_checkout` (
  `Status` text NOT NULL,
  `Laptop_ID` varchar(8) NOT NULL,
  `Instructor_ID` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Assistant_ID` varchar(10) NOT NULL,
  `Time_Out` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Time_In` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laptop_checkout`
--

INSERT INTO `laptop_checkout` (`Status`, `Laptop_ID`, `Instructor_ID`, `Email`, `Assistant_ID`, `Time_Out`, `Time_In`) VALUES
('IN', 'Laptop 2', 'Testing', 'ryanbuchanan21@gmail.com', 'assistant1', '2018-09-05 00:34:16', '2018-09-05 06:34:16'),
('IN', 'Laptop 2', 'Testing', 'ryanbuchanan21@gmail.com', 'assistant1', '2018-09-05 00:34:16', '2018-09-05 06:34:16'),
('OUT', 'Laptop 7', 'Test', 'ryanbuchanan21@gmail.com', 'assistant1', '2018-09-05 06:35:25', '0000-00-00 00:00:00'),
('OUT', 'Laptop 2', 'Test', 'ryanbuchanan21@gmail.com', 'assistant1', '2018-09-05 06:35:48', '0000-00-00 00:00:00'),
('OUT', 'Laptop 5', 'Testing', 'ryanbuchanan21@gmail.com', 'assistant1', '2018-09-05 06:36:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `laptop_status`
--

CREATE TABLE `laptop_status` (
  `ID` varchar(8) NOT NULL,
  `Status` text NOT NULL,
  `Unique_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laptop_status`
--

INSERT INTO `laptop_status` (`ID`, `Status`, `Unique_Id`) VALUES
('Laptop 1', 'IN', 1),
('Laptop 2', 'OUT', 2),
('Laptop 3', 'IN', 3),
('Laptop 4', 'IN', 4),
('Laptop 5', 'OUT', 5),
('Laptop 6', 'IN', 6),
('Laptop 7', 'OUT', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laptop_status`
--
ALTER TABLE `laptop_status`
  ADD PRIMARY KEY (`Unique_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laptop_status`
--
ALTER TABLE `laptop_status`
  MODIFY `Unique_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
