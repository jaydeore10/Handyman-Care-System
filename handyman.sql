-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 27, 2018 at 12:24 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `handyman`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE IF NOT EXISTS `bookings` (
  `bcode` int(11) NOT NULL AUTO_INCREMENT,
  `service_type` varchar(20) NOT NULL,
  `service_name` varchar(20) NOT NULL,
  `type1` varchar(20) NOT NULL,
  `type2` varchar(20) NOT NULL,
  `cust_name` varchar(40) NOT NULL,
  `booking_add` varchar(60) NOT NULL,
  `pincode` bigint(20) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `booking_date` date NOT NULL,
  `booking_time` time NOT NULL,
  `id` int(11) NOT NULL,
  `tcode` int(11) NOT NULL,
  PRIMARY KEY (`bcode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`bcode`, `service_type`, `service_name`, `type1`, `type2`, `cust_name`, `booking_add`, `pincode`, `contact`, `booking_date`, `booking_time`, `id`, `tcode`) VALUES
(1, 'Major', 'Carpentry', 'Framing Walls,Shapin', '', 'suyasha', '5 A laxmi appt at upanagar nashik', 422101, 8989095432, '0000-00-00', '00:00:02', 1, 0),
(2, 'Major', 'Painting', 'Office Painting', '', 'suyasha', '5 A laxmi appt at upanagar nashik', 422101, 8989095432, '0000-00-00', '00:00:09', 1, 0),
(3, 'Major', 'Electrician', 'Lamp Repair,Fan Inst', '', 'snehal', 'nashik', 422006, 1234456764, '0000-00-00', '00:00:05', 2, 0),
(4, 'Minor', 'General Services', 'Loundry,Car Washing', '', 'snehal', 'upnagar,nashik', 422006, 9876564565, '0000-00-00', '00:00:08', 2, 0),
(5, 'Minor', 'General Service', '', 'tiles fitting', 'vaibhav', 'genesh nagar', 420033, 9867456765, '0000-00-00', '00:00:07', 5, 0),
(6, 'Minor', 'General Service', '', 'watch repairing', 'pranjal', 'saraswati nagar,pune', 420034, 9867432512, '0000-00-00', '00:00:04', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(40) NOT NULL,
  `address` varchar(80) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phoneno` bigint(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `feedback` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fullname`, `address`, `gender`, `city`, `state`, `email`, `phoneno`, `username`, `password`, `feedback`) VALUES
(1, 'suyasha pujari', '5 A laxmi appt at upnagar,nashikroad', 'female', 'nashik', 'Maharashra', 'pujarisuyasha@gmail.com', 9856342597, 'suyasha', '16091996', 'good service'),
(2, 'Snehal Jamkar', 'takli road upanagar nashik', 'female', 'pune', 'Maharashra', 'jamkarsnehal7273@gmail.com', 7598076543, 'snehal', 'snehal', ''),
(3, 'Snehal Jamkar', 'kkw college saraswati nagar,nashik', 'female', 'kolhapur', 'Maharashra', 'jamkarsnehal7273@gmail.com', 7875333217, 'snehal ', 'snehaljammy', ''),
(4, 'pranjal chaudhri', 'swami narayan nagar,pune', 'female', 'pune', 'Maharashra', 'pranjalchaudhri@gmail.com', 8767543217, 'pranjal', 'pranjal', ''),
(5, 'vaibhav boob', 'geeta apartment,ganesh nagar', 'male', 'aurangabad', 'Maharashra', 'vaibhav@gmail.com', 5645765434, 'vaibhav', 'vaibhav', ''),
(6, 'anil jamkar', 'shree hari apartment.nagpur', 'male', 'nagpur', 'Maharashra', 'jamkar@gmail.com', 9876543456, 'jamkar', 'jamkar', '');

-- --------------------------------------------------------

--
-- Table structure for table `tradeperson`
--

CREATE TABLE IF NOT EXISTS `tradeperson` (
  `tcode` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(40) NOT NULL,
  `taddress` varchar(80) NOT NULL,
  `tpincode` bigint(20) NOT NULL,
  `tcity` varchar(15) NOT NULL,
  `tstate` varchar(20) NOT NULL,
  `temail` varchar(60) NOT NULL,
  `tphoneno` bigint(20) NOT NULL,
  `occupation` varchar(40) NOT NULL,
  PRIMARY KEY (`tcode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tradeperson`
--

INSERT INTO `tradeperson` (`tcode`, `tname`, `taddress`, `tpincode`, `tcity`, `tstate`, `temail`, `tphoneno`, `occupation`) VALUES
(1, 'abc', 'kkw college saraswati nagar', 422101, 'ahmednagar', 'Maharashtra', 'ramucarpentary@gmail.com', 7883452190, 'Carpenter'),
(2, 'Damu Thete', '6  A ,shinde mala, behind khandoba mandir at ahmadnagar', 422106, 'ahmednagar', 'Maharashtra', 'damupainter@gmail.com', 9843223451, 'Painter'),
(3, 'sham sundar', 'hari sadan,kalpesh nagar,devala', 422001, 'ahmednagar', 'Maharashtra', 'sham12@gmail.com', 8765987324, 'Fabricator'),
(4, 'ghanasham ', 'muktidham,saraswati nagar', 423001, 'mumbai', 'Maharashtra', 'ghanasham@gmail.com', 9874563787, 'Pest'),
(5, 'umesh jadhav', 'shree hari nagar,pune', 420044, 'pune', 'Maharashtra', 'jadhav@gmail.com', 9834512754, 'Electrician');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
