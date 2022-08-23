-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2022 at 06:19 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `pwd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `pwd`) VALUES
('abc@gmail.com', 'password'),
('rakshith@gmail.com', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `auction`
--

CREATE TABLE `auction` (
  `pno` int(11) DEFAULT NULL,
  `bidprice` int(11) DEFAULT NULL,
  `soldfor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auction`
--

INSERT INTO `auction` (`pno`, `bidprice`, `soldfor`) VALUES
(18, 140000000, 1),
(17, 100000000, 1),
(333, 100000000, 1),
(3, 10000000, 1),
(1, 40000000, 1),
(31, 90000000, 3),
(25, 70000000, 3),
(34, 5000000, 3),
(15, 30000000, 3),
(12, 40000000, 3),
(33, 40000000, 2),
(45, 60000000, 2),
(43, 5000000, 2),
(63, 5000000, 2),
(93, 20000000, 2),
(41, 5000000, 4),
(777, 5000000, 4),
(21, 20000000, 4),
(11, 10000000, 4),
(78, 20000000, 4),
(7, 140000000, 5),
(27, 70000000, 5),
(55, 70000000, 5),
(99, 50000000, 5),
(2, 5000000, 5),
(16, 20000000, 6),
(8, 70000000, 6),
(46, 70000000, 6),
(42, 70000000, 6),
(56, 10000000, 6),
(23, 70000000, 7),
(50, 10000000, 7),
(74, 10000000, 7),
(24, 10000000, 7),
(9, 40000000, 7),
(32, 14000000, 8),
(10, 10000000, 8),
(26, 10000000, 8),
(20, 10000000, 8),
(19, 40000000, 8),
(67, 12345, 7);

-- --------------------------------------------------------

--
-- Table structure for table `carrierstatistics`
--

CREATE TABLE `carrierstatistics` (
  `pno` int(11) DEFAULT NULL,
  `matches` int(11) DEFAULT NULL,
  `runsscored` int(11) DEFAULT NULL,
  `battingavg` float DEFAULT NULL,
  `strikerate` float DEFAULT NULL,
  `bestscore` int(11) DEFAULT NULL,
  `bowlingavg` float DEFAULT NULL,
  `wicketstaken` int(11) DEFAULT NULL,
  `economy` float DEFAULT NULL,
  `bestbowling` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carrierstatistics`
--

INSERT INTO `carrierstatistics` (`pno`, `matches`, `runsscored`, `battingavg`, `strikerate`, `bestscore`, `bowlingavg`, `wicketstaken`, `economy`, `bestbowling`) VALUES
(18, 149, 4418, 37.44, 129.83, 113, 92, 4, 8.8, '25-2'),
(17, 129, 3473, 38.16, 148.17, 133, NULL, NULL, NULL, NULL),
(333, 101, 3626, 41.2, 151.21, 175, 40.2, 18, 7.89, '21-3'),
(3, 15, 50, 5.25, 53.57, 4, 22.41, 70, 7.9, '25-4'),
(1, 39, 725, 30.21, 125.65, 68, NULL, NULL, NULL, NULL),
(25, 126, 3561, 32.16, 121.17, 95, NULL, NULL, NULL, NULL),
(31, 114, 4014, 40.55, 142.14, 126, NULL, NULL, NULL, NULL),
(34, 10, 3, 1.2, 60, 3, 22.25, 12, 9.21, '11-4'),
(15, 90, 158, 8.32, 100.64, 22, 21.07, 111, 7.08, '19-5'),
(12, 120, 2587, 25.61, 131.19, 83, 29.07, 36, 7.38, '29-4'),
(33, 37, 406, 21.37, 125.2, 61, 54.2, 10, 9.88, '22-2'),
(63, 24, 527, 25.1, 148.17, 77, NULL, NULL, NULL, NULL),
(45, 159, 4207, 32.61, 130.9, 109, 29.33, 15, 7.59, '6-4'),
(93, 47, 120, 12.5, 96.15, 16, 30.48, 46, 8.1, '7-3'),
(43, 119, 2322, 21.7, 117.25, 81, NULL, NULL, NULL, NULL),
(41, 32, 807, 27.83, 128.17, 96, NULL, NULL, NULL, NULL),
(777, 24, 564, 25.55, 151.14, 97, NULL, NULL, NULL, NULL),
(21, 77, 1993, 39.86, 124.87, 78, 34.7, 23, 7.21, '17-4'),
(11, 31, 46, 6.57, 102.24, 21, 51.87, 18, 8.89, '34-2'),
(78, 27, 521, 27.45, 129.59, 95, 50.38, 8, 9.87, '18-2'),
(7, 159, 3561, 37.66, 136.75, 70, NULL, NULL, NULL, NULL),
(27, 111, 3057, 35.99, 120.59, 103, NULL, NULL, NULL, NULL),
(55, 12, 316, 31.2, 142.99, 103, 26.25, 12, 7.21, '18-3'),
(99, 111, 231, 10.5, 96.5, 29, 24.97, 100, 6.55, '34-4'),
(2, 78, 26, 2.6, 54.17, 7, 30.04, 69, 8.2, '18-4'),
(16, 65, 1603, 27.37, 130.42, 88, 67, 1, 9.35, '11-1'),
(8, 138, 1732, 24.06, 122.92, 48, 30.88, 82, 7.81, '16-5'),
(46, 157, 1482, 34.14, 139.05, 100, 44.48, 25, 7.4, '5-2'),
(42, 103, 2753, 28.07, 131.89, 158, NULL, NULL, NULL, NULL),
(56, 56, 565, 32.6, 120.17, 65, 34.04, 80, 7.52, '17-2'),
(23, 148, 4133, 31.55, 124.27, 93, NULL, NULL, NULL, NULL),
(50, 12, 384, 38.4, 158.04, 93, NULL, NULL, NULL, NULL),
(74, 82, 271, 13.55, 147.57, 54, 6.33, 95, 6.33, '6-4'),
(24, 105, 1260, 30.57, 129.24, 28, 51.56, 12, 8.56, '38-2'),
(9, 80, 2454, 32.52, 105.25, 105, NULL, NULL, NULL, NULL),
(10, 66, 1536, 35.52, 141.45, 101, NULL, NULL, NULL, NULL),
(19, 80, 1384, 35.4, 133.04, 105, NULL, NULL, NULL, NULL),
(32, 57, 1228, 25.06, 164.57, 95, 46.33, 11, 8.83, '15-2'),
(20, 50, 1250, 32.57, 130.24, 97, 36.56, 14, 8.78, '24-2'),
(26, 50, 1554, 34.52, 120.86, 84, NULL, NULL, NULL, NULL),
(67, 12, 23, 34, 23, 23, 23, 44, 44, '45');

-- --------------------------------------------------------

--
-- Table structure for table `franchise`
--

CREATE TABLE `franchise` (
  `fname` varchar(30) DEFAULT NULL,
  `fno` int(11) NOT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `franchise`
--

INSERT INTO `franchise` (`fname`, `fno`, `pwd`, `owner`) VALUES
('RCB', 1, 'password', 'vijay mallya'),
('MI', 2, 'password', 'mukesh ambani'),
('SRH', 3, 'password', 'kalanithi maran'),
('DD', 4, 'password', 'gmr group'),
('RPS', 5, 'password', 'sanjiv goenka'),
('GL', 6, 'password', 'keshav bansal'),
('KKR', 7, 'password', 'shah rukh khan'),
('KXIP', 8, 'password', 'preity zita'),
('CSK', 9, 'password', 'Srinivasan');

-- --------------------------------------------------------

--
-- Table structure for table `playerdetails`
--

CREATE TABLE `playerdetails` (
  `pno` int(11) NOT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playerdetails`
--

INSERT INTO `playerdetails` (`pno`, `pname`, `age`, `country`, `category`) VALUES
(1, 'k l rahul', 25, 'india', 'wicket keeper'),
(2, 'ashok dinda', 32, 'india', 'bowler'),
(3, 'yuzvendra chahal', 27, 'india', 'bowler'),
(7, 'm s dhoni', 35, 'india', 'wicket keeper'),
(8, 'ravindra jadeja', 28, 'india', 'all rounder'),
(9, 'manish pandey', 23, 'india', 'batsman'),
(10, 'david miller', 27, 'south africa', 'batsman'),
(11, 'mohammed shami', 30, 'india', 'bowler'),
(12, 'yuvraj singh', 35, 'india', 'all rounder'),
(15, 'bhuvneshwar kumar', 27, 'india', 'bowler'),
(16, 'aaron finch', 30, 'austrila', 'batsman'),
(17, 'ab de villiers', 33, 'south africa', 'batsman'),
(18, 'virat kohli', 29, 'india', 'batsman'),
(19, 'wriddiman saha', 32, 'india', 'wicket keeper'),
(20, 'axar patel', 23, 'india', 'all rounder'),
(21, 'j p duminy', 25, 'south africa', 'all rounder'),
(23, 'gautham gambhir', 35, 'india', 'batsman'),
(24, 'yusuf pathan', 34, 'india', 'all rounder'),
(25, 'shikhar dhawan', 31, 'india', 'batsman'),
(26, 'eoin morgan', 30, 'england', 'batsman'),
(27, 'ajinkya rahane', 28, 'India', 'batsman'),
(31, 'david warner', 30, 'austrlia', 'batsman'),
(32, 'glenn maxwell', 28, 'austrlia', 'all rounder'),
(33, 'hardhik pandya', 24, 'india', 'all rounder'),
(34, 'chirs jordhan', 28, 'england', 'bowler'),
(41, 'shreyas iyer', 22, 'india', 'batsman'),
(42, 'brendon mccullum', 35, 'new zeland', 'batsman'),
(43, 'parthiv patel', 31, 'india', 'batsman'),
(45, 'rohith sharma', 30, 'india', 'batsman'),
(46, 'suresh raina', 30, 'india', 'all rounder'),
(50, 'chirs lynn', 26, 'austrlia', 'batsman'),
(55, 'ben stokes', 25, 'england', 'all rounder'),
(56, 'ifran oathan', 32, 'india', 'bowler'),
(63, 'jos buttler', 27, 'england', 'wicket keeper'),
(67, 'hdbc', 345, 'India', 'ehb'),
(74, 'sunil narine', 28, 'west indies', 'all rounder'),
(78, 'corey anderson', 26, 'new zeland', 'all rounder'),
(93, 'jasprith bumrah', 23, 'india', 'bowler'),
(99, 'ravi ashwin', 30, 'india', 'all rounder'),
(333, 'chirs gayle', 38, 'west indies', 'all rounder'),
(777, 'rishabh pant', 28, 'india', 'batsman');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`,`pwd`);

--
-- Indexes for table `auction`
--
ALTER TABLE `auction`
  ADD KEY `pno` (`pno`),
  ADD KEY `soldfor` (`soldfor`);

--
-- Indexes for table `carrierstatistics`
--
ALTER TABLE `carrierstatistics`
  ADD KEY `pno` (`pno`);

--
-- Indexes for table `franchise`
--
ALTER TABLE `franchise`
  ADD PRIMARY KEY (`fno`);

--
-- Indexes for table `playerdetails`
--
ALTER TABLE `playerdetails`
  ADD PRIMARY KEY (`pno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auction`
--
ALTER TABLE `auction`
  ADD CONSTRAINT `auction_ibfk_1` FOREIGN KEY (`pno`) REFERENCES `playerdetails` (`pno`) ON DELETE CASCADE,
  ADD CONSTRAINT `auction_ibfk_2` FOREIGN KEY (`soldfor`) REFERENCES `franchise` (`fno`);

--
-- Constraints for table `carrierstatistics`
--
ALTER TABLE `carrierstatistics`
  ADD CONSTRAINT `carrierstatistics_ibfk_1` FOREIGN KEY (`pno`) REFERENCES `playerdetails` (`pno`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
