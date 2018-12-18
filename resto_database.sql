-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2018 at 07:08 AM
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

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `adminUsername`, `adminPassword`, `adminFname`, `adminLname`, `adminMname`) VALUES
(1, 'username', 'password', 'test1', 'test2', 'test3');

-- --------------------------------------------------------

--
-- Table structure for table `bookhistory`
--

CREATE TABLE `bookhistory` (
  `blID` int(32) NOT NULL,
  `rslistID` int(32) NOT NULL,
  `adminID` int(32) NOT NULL,
  `tblID` int(32) NOT NULL,
  `cusID` int(32) NOT NULL,
  `cusFname` varchar(32) NOT NULL,
  `startTime` int(32) NOT NULL,
  `endTime` int(32) NOT NULL,
  `rslDate` date NOT NULL,
  `resSeats` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booklist`
--

CREATE TABLE `booklist` (
  `blID` int(32) NOT NULL,
  `rslistID` int(32) NOT NULL,
  `adminID` int(32) NOT NULL,
  `tblID` int(32) NOT NULL,
  `cusID` int(32) NOT NULL,
  `cusFname` varchar(32) NOT NULL,
  `startTime` int(32) NOT NULL,
  `endTime` int(32) NOT NULL,
  `rslDate` date NOT NULL,
  `resSeats` int(32) NOT NULL
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

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cusID`, `cusFname`, `cusLname`, `cusMname`, `cusSex`, `cusUsername`, `cusPassword`) VALUES
(1, 'test1', 'test2', 'test3', 'Male', 'customer1', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `loginhistory`
--

CREATE TABLE `loginhistory` (
  `loginHistID` int(32) NOT NULL,
  `loginHistType` varchar(32) NOT NULL,
  `loginHistAccountID` int(32) NOT NULL,
  `loginHistAccountName` varchar(32) NOT NULL,
  `loginHistDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginhistory`
--

INSERT INTO `loginhistory` (`loginHistID`, `loginHistType`, `loginHistAccountID`, `loginHistAccountName`, `loginHistDate`) VALUES
(1, 'admin', 1, 'test1', '2018-10-07'),
(2, 'admin', 1, 'test1', '2018-10-07'),
(3, 'admin', 1, 'test1', '2018-10-22'),
(4, 'admin', 1, 'test1', '2018-10-22'),
(5, 'admin', 1, 'test1', '2018-10-22'),
(6, 'admin', 1, 'test1', '2018-10-22'),
(7, 'customer', 1, 'test1', '2018-11-17'),
(8, 'customer', 1, 'test1', '2018-11-17'),
(9, 'customer', 1, 'test1', '2018-11-17'),
(10, 'customer', 1, 'test1', '2018-11-17'),
(11, 'customer', 1, 'test1', '2018-11-17'),
(12, 'customer', 1, 'test1', '2018-11-17'),
(13, 'customer', 1, 'test1', '2018-11-17'),
(14, 'customer', 1, 'test1', '2018-11-17'),
(15, 'customer', 1, 'test1', '2018-11-17'),
(16, 'customer', 1, 'test1', '2018-11-17'),
(17, 'admin', 1, 'test1', '2018-11-17'),
(18, 'admin', 1, 'test1', '2018-11-17'),
(19, 'customer', 1, 'test1', '2018-11-18');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menuID` int(32) NOT NULL,
  `menuName` varchar(32) NOT NULL,
  `menuCourse` varchar(32) NOT NULL,
  `menuPrice` int(32) NOT NULL,
  `menuStock` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menuID`, `menuName`, `menuCourse`, `menuPrice`, `menuStock`) VALUES
(1, 'Water', 'Drinks', 15, 100),
(2, 'Soda', 'Drinks', 50, 100),
(3, 'Juice', 'Drinks', 50, 100),
(4, 'Tea', 'Drinks', 45, 100),
(5, 'Beer', 'Drinks', 75, 100),
(6, 'Cafe Americano', 'Coffee', 115, 50),
(7, 'Cappucino', 'Coffee', 125, 50),
(8, 'Cafe Latte', 'Coffee', 135, 50),
(9, 'Caramel Latte', 'Coffee', 150, 50),
(10, 'Cafe Mocha', 'Coffee', 140, 50),
(11, 'White Mocha', 'Coffee', 145, 50),
(12, 'Beef Tapa', 'Meals', 235, 20),
(13, 'Garlic Longganisa', 'Meals', 190, 20),
(14, 'Boneless Bangus', 'Meals', 210, 20),
(15, 'Classic Corned Beef', 'Meals', 295, 20),
(16, 'Mushroom Omelet', 'Meals', 180, 20),
(17, 'Salad', 'Dessert', 20, 100),
(18, 'Ice Cream', 'Dessert', 30, 100),
(19, 'Fruits', 'Dessert', 45, 100),
(20, 'Halo-Halo', 'Dessert', 45, 100);

-- --------------------------------------------------------

--
-- Table structure for table `orderbfr`
--

CREATE TABLE `orderbfr` (
  `ofID` int(32) NOT NULL,
  `cusID` int(32) NOT NULL,
  `cusFname` varchar(32) NOT NULL,
  `menuID` int(32) NOT NULL,
  `menuCourse` varchar(32) NOT NULL,
  `menuName` varchar(32) NOT NULL,
  `menuAmount` int(32) NOT NULL,
  `totalPrice` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderdump`
--

CREATE TABLE `orderdump` (
  `ordumpID` int(32) NOT NULL,
  `cusID` int(32) NOT NULL,
  `cusFname` varchar(32) NOT NULL,
  `ordStat` varchar(32) NOT NULL,
  `ordDate` date NOT NULL,
  `tblID` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderform`
--

CREATE TABLE `orderform` (
  `ofID` int(32) NOT NULL,
  `cusID` int(32) NOT NULL,
  `cusFname` varchar(32) NOT NULL,
  `menuID` int(32) NOT NULL,
  `menuCourse` varchar(32) NOT NULL,
  `menuName` varchar(32) NOT NULL,
  `menuAmount` int(32) NOT NULL,
  `totalPrice` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderhistory`
--

CREATE TABLE `orderhistory` (
  `ordID` int(32) NOT NULL,
  `cusID` int(32) NOT NULL,
  `cusFname` varchar(32) NOT NULL,
  `adminID` int(32) NOT NULL,
  `mnID` int(32) NOT NULL,
  `mnCourse` varchar(32) NOT NULL,
  `mnName` varchar(32) NOT NULL,
  `mnAmount` int(32) NOT NULL,
  `mnPrice` int(32) NOT NULL,
  `ttlPrice` int(32) NOT NULL,
  `ordDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reserveform`
--

CREATE TABLE `reserveform` (
  `reserveID` int(32) NOT NULL,
  `cusID` int(32) NOT NULL,
  `cusFname` varchar(32) NOT NULL,
  `tblID` int(32) NOT NULL,
  `reserveDate` date NOT NULL,
  `reserveTime` varchar(32) NOT NULL,
  `reserveSeats` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reservelist`
--

CREATE TABLE `reservelist` (
  `rslistID` int(32) NOT NULL,
  `tblID` int(32) DEFAULT NULL,
  `cusID` int(32) DEFAULT NULL,
  `cusFname` varchar(32) DEFAULT NULL,
  `startTime` int(32) DEFAULT NULL,
  `endTime` int(32) DEFAULT NULL,
  `rslDate` date DEFAULT NULL,
  `resSeats` int(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservelist`
--

INSERT INTO `reservelist` (`rslistID`, `tblID`, `cusID`, `cusFname`, `startTime`, `endTime`, `rslDate`, `resSeats`) VALUES
(1, 4, 1, 'test1', 10, 11, '2018-12-18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `tblID` int(32) NOT NULL,
  `tblInUse` tinyint(1) NOT NULL,
  `tblSeats` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`tblID`, `tblInUse`, `tblSeats`) VALUES
(1, 0, 4),
(2, 0, 4),
(3, 0, 2),
(4, 0, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `bookhistory`
--
ALTER TABLE `bookhistory`
  ADD PRIMARY KEY (`blID`);

--
-- Indexes for table `booklist`
--
ALTER TABLE `booklist`
  ADD PRIMARY KEY (`blID`);

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
-- Indexes for table `orderbfr`
--
ALTER TABLE `orderbfr`
  ADD PRIMARY KEY (`ofID`);

--
-- Indexes for table `orderdump`
--
ALTER TABLE `orderdump`
  ADD PRIMARY KEY (`ordumpID`);

--
-- Indexes for table `orderform`
--
ALTER TABLE `orderform`
  ADD PRIMARY KEY (`ofID`);

--
-- Indexes for table `orderhistory`
--
ALTER TABLE `orderhistory`
  ADD PRIMARY KEY (`ordID`);

--
-- Indexes for table `reserveform`
--
ALTER TABLE `reserveform`
  ADD PRIMARY KEY (`reserveID`);

--
-- Indexes for table `reservelist`
--
ALTER TABLE `reservelist`
  ADD PRIMARY KEY (`rslistID`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`tblID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookhistory`
--
ALTER TABLE `bookhistory`
  MODIFY `blID` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booklist`
--
ALTER TABLE `booklist`
  MODIFY `blID` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cusID` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `loginhistory`
--
ALTER TABLE `loginhistory`
  MODIFY `loginHistID` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menuID` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orderbfr`
--
ALTER TABLE `orderbfr`
  MODIFY `ofID` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderdump`
--
ALTER TABLE `orderdump`
  MODIFY `ordumpID` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderform`
--
ALTER TABLE `orderform`
  MODIFY `ofID` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderhistory`
--
ALTER TABLE `orderhistory`
  MODIFY `ordID` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reserveform`
--
ALTER TABLE `reserveform`
  MODIFY `reserveID` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservelist`
--
ALTER TABLE `reservelist`
  MODIFY `rslistID` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `tblID` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
