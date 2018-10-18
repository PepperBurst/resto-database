-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 18, 2018 at 10:44 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `resto_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `adminID` int(32) NOT NULL AUTO_INCREMENT,
  `adminUsername` varchar(32) NOT NULL,
  `adminPassword` varchar(32) NOT NULL,
  `adminFname` varchar(32) NOT NULL,
  `adminLname` varchar(32) NOT NULL,
  `adminMname` varchar(32) NOT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cusID` int(32) NOT NULL AUTO_INCREMENT,
  `cusFname` varchar(32) NOT NULL,
  `cusLname` varchar(32) NOT NULL,
  `cusMname` varchar(32) NOT NULL,
  `cusSex` varchar(32) NOT NULL,
  `cusUsername` varchar(32) NOT NULL,
  `cusPassword` varchar(32) NOT NULL,
  PRIMARY KEY (`cusID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer`
--


-- --------------------------------------------------------

--
-- Table structure for table `loginhistory`
--

CREATE TABLE IF NOT EXISTS `loginhistory` (
  `loginHistID` int(32) NOT NULL AUTO_INCREMENT,
  `loginHistType` varchar(32) NOT NULL,
  `loginHistAccountID` int(32) NOT NULL,
  `loginHistAccountName` varchar(32) NOT NULL,
  `loginHistDate` int(11) NOT NULL,
  PRIMARY KEY (`loginHistID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `loginhistory`
--


-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `menuID` int(32) NOT NULL,
  `menuName` varchar(32) NOT NULL,
  `menuCourse` varchar(32) NOT NULL,
  `menuPrice` int(32) NOT NULL,
  PRIMARY KEY (`menuID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--


-- --------------------------------------------------------

--
-- Table structure for table `reserveform`
--

CREATE TABLE IF NOT EXISTS `reserveform` (
  `reserveID` int(32) NOT NULL AUTO_INCREMENT,
  `cusID` int(32) NOT NULL,
  `cusFname` varchar(32) NOT NULL,
  `reserveTable` int(32) NOT NULL,
  `reserveDate` date NOT NULL,
  `reserveTime` varchar(32) NOT NULL,
  `reserveSeats` int(32) NOT NULL,
  PRIMARY KEY (`reserveID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `reserveform`
--

