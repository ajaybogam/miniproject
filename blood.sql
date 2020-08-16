-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2019 at 02:55 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'ajay', 'ajay', '2019-08-16 15:17:58'),
(2, 'a', 'a', '2019-08-16 15:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `Id` varchar(100) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Department` varchar(100) DEFAULT NULL,
  `Section` varchar(100) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`Id`, `FullName`, `MobileNumber`, `Department`, `Section`, `Age`, `Gender`, `BloodGroup`, `Address`, `PostingDate`, `status`) VALUES
('16e11a0553', 'rahul', '8585896969', 'cse', 'b', 20, 'Male', 'A-', 'uppal', '2019-08-16 18:20:34', 1),
('16e11a0566', 'ajay', '8125544938', 'cse', 'b', 20, 'Male', 'A-', 'chintal', '2019-08-15 13:53:45', 1),
('16e11a0567', 'harish', '8125544938', 'cse', 'b', 20, 'Male', 'O-', 'ibp', '2019-08-15 14:46:51', 1),
('16e11a0571', 'maruthi', '7702642070', 'cse', 'b', 21, 'male', 'A+', 'uppal,hyderabad,500039', '2019-08-16 15:41:22', 1),
('16e11a0572', 'rahul', '8686799357', 'cse', 'b', 20, 'Male', 'A-', 'uppal', '2019-08-16 18:23:44', 1),
('16E11A0591', 'swaroop', '9553391881', 'CSE', 'B', 20, 'Male', 'O+', 'KOTHAPET', '2019-09-21 08:22:02', 1),
('16e11a0592', 'sai', '7897897897', 'cse', 'b', 20, 'Male', 'A-', 'bn reddy', '2019-08-16 18:47:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(1, 'none', '2019-08-17 05:22:21'),
(2, 'AB+', '2019-08-17 05:22:37'),
(3, 'A+', '2019-08-17 05:25:25'),
(4, 'B+', '2019-08-17 05:25:25'),
(5, 'O+', '2019-08-17 05:25:25'),
(6, 'A-', '2019-08-17 05:25:25'),
(7, 'B-', '2019-08-17 05:25:25'),
(8, 'AB-', '2019-08-17 05:25:25'),
(9, 'O-', '2019-08-17 05:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, '', ' info@biet.ac.in', '8414 252313');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font<br><br>size: 14px; text-align: justify;\">Along with helping save lives, there are a number of reasons why donating blood is important.<br><br><br>1. A single donation can save three lives. One blood donation provides different blood components that can help up to three different people.<br>2. Blood cannot be manufactured. Despite medical and technological advances, blood cannot be made, so donations are the only way we can give blood to those who need it.<br>3. Blood is needed every two seconds. Nearly 21 million blood components are transfused in the INDIA every year.<br>4. Only 37 percent of the country’s population is able to donate blood.\r\nYour friends or family may need your blood someday.</span>\r\n										'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">We are the students of BHART INSTITUTE OF ENGINEERING AND TECHNOLOGY and the page is all about student blood donation and management system  </span>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
