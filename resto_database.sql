-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2018 at 03:25 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resto_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(32) NOT NULL,
  `adminUsername` varchar(32) NOT NULL,
  `adminPassword` varchar(32) NOT NULL,
  `adminFname` varchar(32) NOT NULL,
  `adminLname` varchar(32) NOT NULL,
  `adminMname` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cusID` int(32) NOT NULL,
  `cusFname` varchar(32) NOT NULL,
  `cusLname` varchar(32) NOT NULL,
  `cusMname` varchar(32) NOT NULL,
  `cusSex` varchar(32) NOT NULL,
  `cusUsername` varchar(32) NOT NULL,
  `cusPassword` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loginhistory`
--

CREATE TABLE `loginhistory` (
  `loginHistID` int(32) NOT NULL,
  `loginHistType` varchar(32) NOT NULL,
  `loginHistAccountID` int(32) NOT NULL,
  `loginHistAccountName` varchar(32) NOT NULL,
  `loginHistDate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menuID` int(32) NOT NULL,
  `menuName` varchar(32) NOT NULL,
  `menuCourse` varchar(32) NOT NULL,
  `menuPrice` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reserveform`
--

CREATE TABLE `reserveform` (
  `reserveID` int(32) NOT NULL,
  `cusID` int(32) NOT NULL,
  `cusFname` varchar(32) NOT NULL,
  `reserveTable` int(32) NOT NULL,
  `reserveDate` date NOT NULL,
  `reserveTime` varchar(32) NOT NULL,
  `reserveSeats` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cusID`);

--
-- Indexes for table `loginhistory`
--
ALTER TABLE `loginhistory`
  ADD PRIMARY KEY (`loginHistID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menuID`);

--
-- Indexes for table `reserveform`
--
ALTER TABLE `reserveform`
  ADD PRIMARY KEY (`reserveID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cusID` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loginhistory`
--
ALTER TABLE `loginhistory`
  MODIFY `loginHistID` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reserveform`
--
ALTER TABLE `reserveform`
  MODIFY `reserveID` int(32) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
