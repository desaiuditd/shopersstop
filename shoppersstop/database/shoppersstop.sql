-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 30, 2012 at 06:28 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shoppersstop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(64) NOT NULL,
  `password` varchar(256) NOT NULL,
  `name` varchar(64) NOT NULL,
  `contact_no` int(20) NOT NULL,
  `shipping_charges` double NOT NULL,
  `verified` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `name`, `contact_no`, `shipping_charges`, `verified`) VALUES
('shoppersstop89@gmail.com', 'EFBFBDyEFBFBDEFBFBD19EFBFBDa-C885JEFBFBD1CCF9C.CnpEFBFBDeEFBFBDEFBFBDbEFBFBD0AEFBFBDS7CEFBFBD1DEFBFBD22QEFBFBDEFBFBDEFBFBDEI0DEFBFBDEFBFBD240BEFBFBDREFBFBDEFBFBD213AEEFBFBDa*EFBFBD0AEFBFBD24HEFBFBDEFBFBDEFBFBDrEFBFBD', 'Swapnil Sharma', 2147483647, 100, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cname` varchar(64) NOT NULL,
  `cdesc` varchar(256) NOT NULL,
  PRIMARY KEY (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cname`, `cdesc`) VALUES
('Fiction', 'contains books that are fiction.'),
('Health care', 'contains books on health care and fitness'),
('Non-fiction', 'contains books on real life characters, articles');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `oid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `pqty` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  PRIMARY KEY (`oid`,`pid`,`username`),
  KEY `pid` (`pid`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`oid`, `pid`, `pqty`, `username`) VALUES
(1, 1, 2, 'jessicagbhatt@gmail.com'),
(2, 1, 2, 'desaiuditd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(64) NOT NULL,
  `pdesc` varchar(256) NOT NULL,
  `pqty` int(11) NOT NULL,
  `pprice` double NOT NULL,
  `pavailability` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `pdesc`, `pqty`, `pprice`, `pavailability`) VALUES
(1, 'Harry Potter Part 1', 'abc', 100, 300, 0),
(2, 'Da Vinci code', 'def', 550, 50, 0),
(3, 'Yoga for Beginners', 'gef', 60, 350, 0),
(4, 'Wings of Fire', 'written by Dr. A.P.J. Abdul Kalam', 15, 400, 0),
(5, 'Bloodline', 'Sydney Sheldon', 0, 250, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE IF NOT EXISTS `product_category` (
  `pid` int(11) NOT NULL,
  `cname` varchar(64) NOT NULL,
  PRIMARY KEY (`pid`,`cname`),
  KEY `cname` (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`pid`, `cname`) VALUES
(1, 'Fiction'),
(2, 'Fiction'),
(5, 'Fiction'),
(3, 'Health care'),
(4, 'Non-fiction');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(64) NOT NULL,
  `password` varchar(256) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `bill_address_line_1` varchar(256) NOT NULL,
  `bill_address_line_2` varchar(256) NOT NULL,
  `bill_city` varchar(32) NOT NULL,
  `bill_state` varchar(32) NOT NULL,
  `bill_country` varchar(32) NOT NULL,
  `bill_postal_code` int(10) NOT NULL,
  `bill_contact_no` int(20) NOT NULL,
  `ship_address_line_1` varchar(256) NOT NULL,
  `ship_address_line_2` varchar(256) NOT NULL,
  `ship_city` varchar(32) NOT NULL,
  `ship_state` varchar(32) NOT NULL,
  `ship_country` varchar(32) NOT NULL,
  `ship_postal_code` int(10) NOT NULL,
  `ship_contact_no` int(20) NOT NULL,
  `verified` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `first_name`, `last_name`, `bill_address_line_1`, `bill_address_line_2`, `bill_city`, `bill_state`, `bill_country`, `bill_postal_code`, `bill_contact_no`, `ship_address_line_1`, `ship_address_line_2`, `ship_city`, `ship_state`, `ship_country`, `ship_postal_code`, `ship_contact_no`, `verified`) VALUES
('desaiuditd@gmail.com', 'EFBFBDm3AEFBFBD0AEFBFBDeEFBFBDEFBFBDEFBFBDEFBFBD5BNEFBFBDEFBFBDhUEFBFBDEFBFBDm-EFBFBD13EFBFBDEFBFBDEFBFBD3BEFBFBD118EFBFBDEFBFBD7D23EFBFBD28_EFBFBDEFBFBDEFBFBDEFBFBDEFBFBDEFBFBDEFBFBD5EFBFBDGEFBFBD1DEFBFBDEFBFBDCBA43FEFBFBD010EFBFBDEFBFBDEFBFBDD0B2EFBFBD', 'Udit', 'Desai', 'pqr', 'stu', 'Gandhinagar', 'Gujarat', 'India', 382007, 2147483647, 'pqr', 'stu', 'Gandhinagar', 'Gujarat', 'India', 3382007, 2147483647, 'Y'),
('jessicagbhatt@gmail.com', 'B283BD6A7EFBFBDEFBFBDEFBFBDL19Co_EFBFBD074006EFBFBDEFBFBDEFBFBDgEFBFBDEFBFBD1903EFBFBDEFBFBDEFBFBDEFBFBDEFBFBDEFBFBD131vEFBFBD1F0EFBFBDEFBFBDTTk-qEFBFBDEFBFBD102EFBFBD05EFBFBDMvEFBFBDcGEFBFBDToEFBFBD01', 'Jessica', 'Bhatt', 'abc', 'def', 'Ahmedabad', 'Gujarat', 'India', 380015, 2147483647, 'abc', 'def', 'Ahmedabad', 'Gujarat', 'India', 380015, 2147483647, 'Y'),
('mahi_drr@gmail.com', '3C*nEFBFBDLEFBFBD29EFBFBDvEFBFBD190EFBFBD0EFBFBD3BEFBFBDcEFBFBDtEFBFBDEFBFBD26EFBFBDEFBFBDxAEFBFBDEFBFBD3A2F_3DEFBFBDEFBFBDGEFBFBDEFBFBDE5868BEFBFBDEFBFBDEFBFBD3BR1D14zuB292BhEFBFBDEFBFBDEFBFBD0122EFBFBD7EEFBFBDR3F', 'Dimple', 'Rudakia', 'a-34, abc, gh road', 'santa cruz', 'Bombay', 'Maharashtra', 'IIndia', 400012, 2147483647, '45-shalimar', 'shyamal road', 'Pune', 'Maharshtra', 'India', 440015, 2147483647, 'N');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `product_category_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_category_ibfk_2` FOREIGN KEY (`cname`) REFERENCES `category` (`cname`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
