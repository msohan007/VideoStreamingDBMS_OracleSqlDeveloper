-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/


-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vsdb`
--
CREATE DATABASE if not exists vsdb;
use vsdb;
-- --------------------------------------------------------

--
-- Table structure for table `accountteam`
--

DROP TABLE IF EXISTS `accountteam`;
CREATE TABLE IF NOT EXISTS `accountteam` (
  `ID` int(10) NOT NULL,
  `password` int(10) NOT NULL,
  `Username` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountteam`
--

INSERT INTO `accountteam` (`ID`, `password`, `Username`) VALUES
(1, 2233222, 'john'),
(2, 233222, 'kevin');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `ID` int(10) NOT NULL,
  `password` int(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `password`, `username`) VALUES
(1, 1121121, 'florence'),
(2, 222111, 'kevin');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `ID` int(10) NOT NULL,
  `password` int(24) NOT NULL,
  `Name` varchar(23) NOT NULL,
  `Address` varchar(25) NOT NULL,
  `Age` int(25) NOT NULL,
  `PaymentOption` varchar(25) NOT NULL,
  `Username` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`ID`, `password`, `Name`, `Address`, `Age`, `PaymentOption`, `Username`) VALUES
(1, 222111, 'john', '342232', 33, 'paypal', 'johna'),
(2, 555222, 'robert', '2311', 23, 'credit card', 'robertson');

-- --------------------------------------------------------

--
-- Table structure for table `costofmovie`
--

DROP TABLE IF EXISTS `costofmovie`;
CREATE TABLE IF NOT EXISTS `costofmovie` (
  `ID` int(10) NOT NULL,
  `Cost` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `costofmovie`
--

INSERT INTO `costofmovie` (`ID`, `Cost`) VALUES
(1, 20),
(2, 22);

-- --------------------------------------------------------

--
-- Table structure for table `costofshow`
--

DROP TABLE IF EXISTS `costofshow`;
CREATE TABLE IF NOT EXISTS `costofshow` (
  `ID` int(10) NOT NULL,
  `Cost` int(24) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `costofshow`
--

INSERT INTO `costofshow` (`ID`, `Cost`) VALUES
(1, 22),
(2, 23);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `ID` int(10) NOT NULL,
  `ClientAccess` int(10) NOT NULL,
  `NumberOfViews` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`ID`, `ClientAccess`, `NumberOfViews`) VALUES
(1, 2, 2),
(2, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `management`
--

DROP TABLE IF EXISTS `management`;
CREATE TABLE IF NOT EXISTS `management` (
  `ID` int(10) NOT NULL,
  `Name` varchar(24) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `management`
--

INSERT INTO `management` (`ID`, `Name`) VALUES
(1, 'keva'),
(2, 'james');

-- --------------------------------------------------------

--
-- Table structure for table `movieactor`
--

DROP TABLE IF EXISTS `movieactor`;
CREATE TABLE IF NOT EXISTS `movieactor` (
  `ID` int(10) NOT NULL,
  `Name` varchar(24) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movieactor`
--

INSERT INTO `movieactor` (`ID`, `Name`) VALUES
(1, 'alex'),
(2, 'denis');

-- --------------------------------------------------------

--
-- Table structure for table `moviedirector`
--

DROP TABLE IF EXISTS `moviedirector`;
CREATE TABLE IF NOT EXISTS `moviedirector` (
  `ID` int(10) NOT NULL,
  `Name` varchar(24) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moviedirector`
--

INSERT INTO `moviedirector` (`ID`, `Name`) VALUES
(1, 'james'),
(2, 'duke');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `ID` int(10) NOT NULL,
  `Rating` varchar(24) NOT NULL,
  `RatingComponent` varchar(23) NOT NULL,
  `Genre` varchar(25) NOT NULL,
  `Score` int(25) NOT NULL,
  `Resolution` varchar(25) NOT NULL,
  `Picture` varchar(25) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `RealeaseYear` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`ID`, `Rating`, `RatingComponent`, `Genre`, `Score`, `Resolution`, `Picture`, `Description`, `RealeaseYear`) VALUES
(1, 'NC', 'Violence', 'music', 5, '1200', 'IMG_20191220_134820.jpg', 'good', '2020-06-15'),
(2, 'PG', 'Language', 'arts', 5, '1300', 'IMG_20191106_140450', 'good', '2020-06-08');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `ID` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`ID`, `Amount`) VALUES
(1, 2000),
(2, 3300);

-- --------------------------------------------------------

--
-- Table structure for table `paymentstatus`
--

DROP TABLE IF EXISTS `paymentstatus`;
CREATE TABLE IF NOT EXISTS `paymentstatus` (
  `ID` int(10) NOT NULL,
  `Status` varchar(24) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentstatus`
--

INSERT INTO `paymentstatus` (`ID`, `Status`) VALUES
(1, 'active'),
(2, 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE IF NOT EXISTS `profile` (
  `ID` int(10) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `IconName` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`ID`, `Name`, `IconName`) VALUES
(1, 'john', 'jonie'),
(2, 'alex', 'aleckie');

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

DROP TABLE IF EXISTS `seasons`;
CREATE TABLE IF NOT EXISTS `seasons` (
  `ID` int(10) NOT NULL,
  `Episode` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`ID`, `Episode`) VALUES
(1, 'three'),
(2, 'five');

-- --------------------------------------------------------

--
-- Table structure for table `showactor`
--

DROP TABLE IF EXISTS `showactor`;
CREATE TABLE IF NOT EXISTS `showactor` (
  `ID` int(10) NOT NULL,
  `Name` varchar(24) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showactor`
--

INSERT INTO `showactor` (`ID`, `Name`) VALUES
(1, 'james'),
(2, 'bond');

-- --------------------------------------------------------

--
-- Table structure for table `showdirector`
--

DROP TABLE IF EXISTS `showdirector`;
CREATE TABLE IF NOT EXISTS `showdirector` (
  `ID` int(10) NOT NULL,
  `Name` varchar(24) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showdirector`
--

INSERT INTO `showdirector` (`ID`, `Name`) VALUES
(1, 'duke'),
(2, 'felix');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

DROP TABLE IF EXISTS `shows`;
CREATE TABLE IF NOT EXISTS `shows` (
  `ID` int(10) NOT NULL,
  `Rating` varchar(24) NOT NULL,
  `RatingComponent` varchar(23) NOT NULL,
  `Genre` varchar(25) NOT NULL,
  `Score` int(25) NOT NULL,
  `Resolution` varchar(25) NOT NULL,
  `Picture` varchar(254) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `RealeaseYear` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`ID`, `Rating`, `RatingComponent`, `Genre`, `Score`, `Resolution`, `Picture`, `Description`, `RealeaseYear`) VALUES
(1, 'Restricted', 'Language', 'music', 5, '1200', 'IMG_20191220_134820.jpg', 'good', '2020-06-15'),
(2, 'R', 'Language', 'arts', 5, '1200', 'IMG_20191106_140450', 'good', '2020-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

DROP TABLE IF EXISTS `testing`;
CREATE TABLE IF NOT EXISTS `testing` (
  `id` int(1) NOT NULL,
  `image` blob DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
