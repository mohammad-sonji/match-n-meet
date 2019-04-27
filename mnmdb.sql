-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 27, 2019 at 09:56 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mnmdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminaccounts`
--

DROP TABLE IF EXISTS `adminaccounts`;
CREATE TABLE IF NOT EXISTS `adminaccounts` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `adminfname` varchar(30) NOT NULL,
  `adminlname` varchar(30) NOT NULL,
  `adminname` varchar(30) NOT NULL,
  `adminemail` varchar(30) NOT NULL,
  `adminpassword` varchar(30) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brandvoting`
--

DROP TABLE IF EXISTS `brandvoting`;
CREATE TABLE IF NOT EXISTS `brandvoting` (
  `userid` int(11) NOT NULL,
  `votes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brandvoting`
--

INSERT INTO `brandvoting` (`userid`, `votes`) VALUES
(2, 'national geographic'),
(2, 'nbc'),
(2, 'facebook'),
(2, 'apple'),
(2, 'microsoft'),
(2, 'google'),
(2, 'warner bros'),
(2, 'bbc');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

DROP TABLE IF EXISTS `useraccounts`;
CREATE TABLE IF NOT EXISTS `useraccounts` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `userfname` varchar(30) NOT NULL,
  `userlname` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `useremail` varchar(30) NOT NULL,
  `userpassword` varchar(30) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`userid`, `userfname`, `userlname`, `username`, `useremail`, `userpassword`) VALUES
(1, 'chadi', 'honeini', 'xyeragon', 'Chadihoneine@hotmail.com', 'database1'),
(2, 'mohammad', 'sonji', 'emperor', 'msonji5@gmail.com', 'database2'),
(3, 'hosam', 'abedallatif', 'hosam', 'hosamalaa348@gmail.com', 'database3'),
(4, 'ahmad', 'safar', 'ahmad', 'ahmad.safar@live.com', 'database4'),
(5, 'some', 'one', 'some', 'someone@gmail.com', '121'),
(6, 'some', 'one', 'some', 'someone@gmail.com', '121'),
(7, 'some', 'one', 'some', 'someone@gmail.com', '121');

-- --------------------------------------------------------

--
-- Table structure for table `yornquestions`
--

DROP TABLE IF EXISTS `yornquestions`;
CREATE TABLE IF NOT EXISTS `yornquestions` (
  `userid` int(11) NOT NULL,
  `sports` text NOT NULL,
  `social` text NOT NULL,
  `gaming` text NOT NULL,
  `reading` text NOT NULL,
  `terms` text NOT NULL,
  `computer` text NOT NULL,
  `travel` text NOT NULL,
  `sing` text NOT NULL,
  `arabic` text NOT NULL,
  `family` text NOT NULL,
  `animals` text NOT NULL,
  `life` text NOT NULL,
  `married` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yornquestions`
--

INSERT INTO `yornquestions` (`userid`, `sports`, `social`, `gaming`, `reading`, `terms`, `computer`, `travel`, `sing`, `arabic`, `family`, `animals`, `life`, `married`) VALUES
(2, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
