-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 15, 2019 at 10:37 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_imd_aviation_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_inwards`
--

DROP TABLE IF EXISTS `tb_inwards`;
CREATE TABLE IF NOT EXISTS `tb_inwards` (
  `fd_inward_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_date` date NOT NULL,
  `fd_station_id` int(11) NOT NULL,
  `fd_item_id` int(11) NOT NULL,
  `fd_item_type_id` int(11) DEFAULT NULL,
  `fd_item_manufacturer_id` int(11) DEFAULT NULL,
  `fd_quantity` int(11) NOT NULL,
  `fd_rate` decimal(10,0) NOT NULL,
  `fd_mode_of_receiving` varchar(128) NOT NULL,
  `fd_remarks` varchar(256) NOT NULL,
  PRIMARY KEY (`fd_inward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_inwards`
--

INSERT INTO `tb_inwards` (`fd_inward_id`, `fd_date`, `fd_station_id`, `fd_item_id`, `fd_item_type_id`, `fd_item_manufacturer_id`, `fd_quantity`, `fd_rate`, `fd_mode_of_receiving`, `fd_remarks`) VALUES
(1, '2017-07-12', 79, 10, 7, 0, 10, '0', 'By Hand', 'From Arjit Anjan'),
(2, '2017-07-24', 56, 3, 0, 0, 1, '0', 'By Post', ''),
(3, '2017-07-24', 56, 4, 0, 0, 1, '0', 'By Post', ''),
(4, '2017-07-27', 78, 4, 0, 0, 6, '0', 'By Hand', 'IMD Make from Store'),
(5, '2017-07-31', 8, 4, 0, 0, 1, '0', 'By Hand', 'From Hubli'),
(6, '2017-08-03', 80, 5, 0, 0, 1, '0', 'By Hand', 'Mr. Gajare'),
(7, '2017-08-03', 80, 2, 0, 0, 1, '0', 'By Hand', 'Mr. Gajare'),
(8, '2017-08-03', 78, 6, 2, 0, 2, '0', 'By Hand', 'From Workshop'),
(9, '2017-08-08', 40, 4, 0, 0, 1, '0', 'By Post', ''),
(10, '2017-08-08', 40, 3, 0, 0, 1, '0', 'By Post', ''),
(11, '2017-08-17', 78, 4, 0, 0, 6, '0', '', 'From Store (IMD Make)'),
(12, '2017-08-22', 81, 4, 0, 0, 1, '0', 'By Post', ''),
(13, '2017-09-06', 79, 7, 0, 0, 6, '0', '', ''),
(14, '2017-09-07', 80, 2, 0, 0, 1, '0', 'By Hand', 'Mr. Gajare'),
(15, '2017-09-07', 80, 5, 0, 0, 1, '0', 'By Hand', 'Mr. Gajare'),
(16, '2017-09-07', 78, 4, 3, 0, 5, '0', '', 'For Repair'),
(17, '2017-09-11', 82, 4, 0, 0, 1, '0', 'By Hand', 'For Repair'),
(18, '2017-09-11', 82, 3, 0, 0, 1, '0', 'By Hand', 'For Repair'),
(19, '2017-09-11', 82, 6, 0, 0, 1, '0', 'By Hand', 'For Repair'),
(20, '2017-10-10', 78, 8, 4, 0, 1, '0', '', '100 Mtr For Optical Anemometer'),
(21, '2017-11-16', 80, 3, 0, 0, 1, '0', 'By Hand', 'For changing RTC Cell, Front Flex Cover, On/Off Switch repair'),
(22, '2017-11-14', 78, 4, 0, 0, 1, '0', '', 'For Calicut'),
(23, '2017-11-16', 78, 4, 0, 0, 1, '0', '', 'For Port Blair'),
(24, '2017-11-15', 78, 9, 5, 0, 1, '0', '', 'For Shri Rakesh Kumar'),
(25, '2017-11-21', 80, 3, 0, 0, 1, '0', '', 'For Repair'),
(26, '2017-11-21', 80, 3, 0, 0, 5, '0', '', 'From Gajare'),
(27, '2017-11-24', 83, 3, 0, 0, 1, '0', '', 'Received by Sri SM Pawar Tech.Officer'),
(28, '2017-11-24', 83, 1, 1, 0, 1, '0', '', 'Received by Sri SM Pawar Tech.Officer'),
(29, '2017-11-24', 83, 10, 6, 1, 1, '0', '', 'Received by Sri SM Pawar Tech. Officer'),
(30, '2017-11-24', 19, 4, 0, 0, 2, '0', 'By Post', 'Defective Instrument'),
(31, '2017-11-24', 19, 1, 1, 0, 1, '0', 'By Post', 'Defective Instrument'),
(32, '2017-11-24', 19, 3, 0, 2, 1, '0', 'By Post', 'Defective Instrument'),
(33, '2017-12-12', 13, 3, 0, 2, 1, '0', 'By Post', 'Defective Instrument'),
(34, '2017-12-12', 13, 5, 0, 0, 1, '0', 'By Post', 'Defective Instrument'),
(35, '2017-12-12', 13, 1, 1, 0, 1, '0', 'By Post', 'Defective (with Adapter)'),
(36, '2017-12-12', 13, 1, 1, 0, 2, '0', 'By Post', 'Defective'),
(37, '2018-01-05', 78, 6, 2, 0, 2, '0', '', 'From Workshop'),
(38, '2018-01-09', 62, 4, 0, 0, 1, '0', '', 'Given to Workshop for Repair'),
(39, '2018-01-09', 12, 5, 0, 0, 2, '0', '', 'Defective'),
(40, '2018-01-09', 12, 1, 1, 0, 1, '0', '', 'Defective'),
(41, '2018-01-09', 12, 11, 0, 3, 2, '0', '', 'Defective'),
(42, '2018-01-09', 5, 4, 0, 0, 3, '0', '', 'Store to Workshop for Repair'),
(43, '2018-01-09', 5, 6, 2, 0, 4, '0', '', 'Store to Workshop for Repair'),
(44, '2018-01-09', 5, 11, 0, 3, 2, '0', '', ''),
(45, '2018-01-09', 5, 12, 0, 0, 1, '0', '', ''),
(46, '2018-01-09', 5, 13, 0, 0, 3, '0', '', ''),
(47, '2018-01-09', 62, 4, 0, 0, 1, '0', '', 'Store for Repair in Workshop'),
(48, '2018-01-09', 62, 3, 0, 0, 1, '0', '', ''),
(49, '2018-01-18', 5, 1, 0, 0, 1, '0', 'By Post', ''),
(50, '2018-01-18', 5, 14, 0, 0, 1, '0', '', ''),
(51, '2018-01-18', 5, 15, 0, 0, 1, '0', '', ''),
(52, '2018-01-18', 5, 16, 0, 0, 2, '0', '', ''),
(54, '2018-01-15', 78, 17, 0, 0, 2, '0', '', 'From Store'),
(55, '2018-01-18', 44, 3, 0, 0, 2, '0', 'By Speed Post', ''),
(56, '2018-01-18', 5, 4, 8, 0, 2, '0', 'By Speed Post', 'defective'),
(57, '2018-02-01', 80, 5, 0, 0, 1, '0', 'By Hand', 'by Mr. Gajare'),
(58, '2018-02-01', 80, 3, 0, 0, 2, '0', '', ''),
(59, '2018-02-01', 80, 3, 11, 0, 15, '0', 'By Hand', 'BY Mr. Gajare'),
(60, '2018-02-08', 78, 4, 8, 0, 2, '0', 'By Hand', ''),
(61, '2018-02-08', 63, 12, 0, 0, 2, '0', '', 'receive from Diu airport'),
(62, '2018-02-09', 78, 19, 0, 9, 3, '0', '', ''),
(63, '2018-02-14', 78, 6, 12, 0, 3, '0', '', 'From workshop'),
(64, '2018-02-15', 78, 6, 12, 0, 2, '0', '', 'From workshop'),
(65, '2018-02-15', 84, 1, 1, 0, 1, '0', '', 'From ICGAS daman'),
(66, '2018-02-19', 78, 20, 0, 0, 1, '0', '', 'For kolkata'),
(67, '2018-02-19', 78, 4, 0, 0, 5, '0', '', 'For Agathi port blair'),
(68, '2018-02-21', 5, 21, 0, 0, 1, '0', '', ''),
(69, '2018-02-20', 78, 22, 0, 0, 1, '0', '', 'Defective'),
(70, '2018-02-20', 78, 4, 8, 0, 1, '0', '', 'Defective'),
(71, '2018-02-27', 78, 23, 0, 0, 11, '0', '', 'CC388 AD'),
(72, '2018-02-27', 78, 23, 0, 0, 5, '0', '', 'Q 2612 AF'),
(73, '2018-02-27', 78, 23, 0, 0, 1, '0', '', 'CE360A'),
(74, '2018-02-27', 78, 23, 0, 0, 1, '0', '', 'CE361A'),
(75, '2018-02-27', 78, 23, 0, 0, 1, '0', '', 'CE362A'),
(76, '2018-02-27', 78, 23, 0, 0, 1, '0', '', 'CE363A'),
(77, '2018-02-27', 78, 23, 0, 0, 2, '0', '', 'CE252A'),
(78, '2018-02-27', 78, 23, 0, 0, 2, '0', '', 'CE253A'),
(79, '2018-02-27', 78, 23, 0, 0, 2, '0', '', 'CE250A'),
(80, '2018-02-27', 78, 23, 0, 0, 2, '0', '', 'CE251A'),
(81, '2018-02-27', 78, 23, 0, 0, 2, '0', '', 'Q 5949A'),
(82, '2018-02-27', 78, 23, 0, 0, 1, '0', '', 'CE320A'),
(83, '2018-02-27', 78, 23, 0, 0, 1, '0', '', 'CE321A'),
(84, '2018-02-27', 78, 23, 0, 0, 1, '0', '', 'CE322A'),
(85, '2018-02-27', 78, 23, 0, 0, 1, '0', '', 'CE323A'),
(86, '2018-02-27', 78, 23, 0, 0, 2, '0', '', 'CE412AC'),
(87, '2018-02-27', 78, 23, 0, 0, 2, '0', '', 'CE413AC'),
(88, '2018-02-27', 78, 23, 0, 0, 2, '0', '', 'CE411AC'),
(89, '2018-02-27', 78, 23, 0, 0, 2, '0', '', 'CE410XC'),
(90, '2018-02-27', 78, 24, 0, 0, 20, '0', '', 'For ELAB'),
(91, '2018-02-27', 78, 25, 0, 0, 6, '0', '', ''),
(92, '2018-03-05', 78, 4, 0, 0, 5, '0', '', 'From Joshi Engineer'),
(93, '2018-03-12', 78, 26, 13, 0, 1, '0', '', 'Receive from Amit electronics CS & CO'),
(94, '2018-03-12', 78, 29, 14, 0, 1, '0', '', 'From shilpa electronics'),
(95, '2018-03-13', 80, 31, 0, 0, 4, '0', '', 'Mr. Gajare'),
(96, '2018-03-19', 78, 30, 15, 0, 2, '0', '', ''),
(97, '2018-03-19', 78, 30, 16, 0, 4, '0', '', ''),
(98, '2018-03-21', 76, 5, 0, 0, 1, '0', 'By Post', ''),
(99, '2018-03-21', 76, 13, 0, 0, 2, '0', 'By Hand', ''),
(100, '2018-04-17', 78, 4, 8, 0, 1, '0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_items`
--

DROP TABLE IF EXISTS `tb_items`;
CREATE TABLE IF NOT EXISTS `tb_items` (
  `fd_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_name` varchar(128) NOT NULL,
  `fd_specification` varchar(255) NOT NULL,
  PRIMARY KEY (`fd_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_items`
--

INSERT INTO `tb_items` (`fd_item_id`, `fd_name`, `fd_specification`) VALUES
(1, 'Slave Display', ''),
(2, 'CWIS Data Logger', ''),
(3, 'DIWE Data Logger', ''),
(4, 'Opt. Anemometer', ''),
(5, 'CWIS Digitizer', ''),
(6, 'Windwane', ''),
(7, 'Travelling Standard Calibration Kit', ''),
(8, 'Shielded Cable', '100 Mtr'),
(9, 'Cartridge', ''),
(10, 'Sensor', ''),
(11, 'Modem', ''),
(12, 'Cable Modem', ''),
(13, 'Ethernet Converter', ''),
(14, 'Team Link DL', ''),
(15, 'Accel ESR', ''),
(16, 'Metlog', ''),
(17, 'Whirling Psychrometer', ''),
(18, 'Wind Speed Sensor', ''),
(19, 'Stevenson Screen', ''),
(20, 'CGA', ''),
(21, 'Self Recording Rainguage', ''),
(22, 'HP Toner', ''),
(23, 'Power Cord', '230 V, 5 AMP Indian Plug Mains'),
(24, 'Araldite', '180 Gms'),
(25, 'Connector', ''),
(26, 'Sleeves', '100 Mtrs'),
(27, 'Luggs', ''),
(28, 'Servo Pot', ''),
(29, 'Core Cable', ''),
(30, 'HWSR Data Logger', ''),
(31, 'CPU', ''),
(32, 'Monitor', ''),
(33, 'Wifi Modem', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_item_manufacturers`
--

DROP TABLE IF EXISTS `tb_item_manufacturers`;
CREATE TABLE IF NOT EXISTS `tb_item_manufacturers` (
  `fd_item_manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_item_id` int(11) NOT NULL,
  `fd_manufacturer` varchar(128) NOT NULL,
  `fd_dirty_bit` tinyint(4) NOT NULL,
  PRIMARY KEY (`fd_item_manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_item_manufacturers`
--

INSERT INTO `tb_item_manufacturers` (`fd_item_manufacturer_id`, `fd_item_id`, `fd_manufacturer`, `fd_dirty_bit`) VALUES
(1, 10, 'Gill', 1),
(2, 3, 'ARKS', 1),
(3, 11, 'Engenious', 1),
(4, 12, '', 1),
(5, 13, '', 1),
(6, 14, '', 1),
(7, 15, '', 1),
(8, 16, '', 1),
(9, 19, 'Vaisala', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_item_types`
--

DROP TABLE IF EXISTS `tb_item_types`;
CREATE TABLE IF NOT EXISTS `tb_item_types` (
  `fd_item_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_item_id` int(11) NOT NULL,
  `fd_type` varchar(128) NOT NULL,
  `fd_dirty_bit` tinyint(4) NOT NULL,
  PRIMARY KEY (`fd_item_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_item_types`
--

INSERT INTO `tb_item_types` (`fd_item_type_id`, `fd_item_id`, `fd_type`, `fd_dirty_bit`) VALUES
(1, 1, 'Mini', 1),
(2, 6, 'Pot', 1),
(3, 4, 'Mini', 1),
(4, 8, '6 Core', 1),
(5, 9, '12 A', 1),
(6, 10, 'Windsonic', 1),
(7, 10, 'TT/RH', 1),
(8, 4, 'New Type', 1),
(11, 3, 'New', 1),
(12, 6, 'Hall Effect', 1),
(13, 25, '6 way', 1),
(14, 28, '10K', 1),
(15, 29, '2', 1),
(16, 29, '4', 1),
(17, 29, '6', 1),
(18, 31, 'I-3', 1),
(19, 31, 'I-7', 1),
(20, 10, 'AT/RH', 1),
(21, 33, 'ENH202', 1);

-- ---------------------------------------------------

--
-- Table structure for table `tb_outwards`
--

DROP TABLE IF EXISTS `tb_outwards`;
CREATE TABLE IF NOT EXISTS `tb_outwards` (
  `fd_outward_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_date` date NOT NULL,
  `fd_station_id` int(11) NOT NULL,
  `fd_item_id` int(11) NOT NULL,
  `fd_item_type_id` int(11) NOT NULL,
  `fd_item_manufacturer_id` int(11) NOT NULL,
  `fd_quantity` int(11) NOT NULL,
  `fd_mode_of_dispatch` varchar(128) NOT NULL,
  `fd_remarks` varchar(256) NOT NULL,
  PRIMARY KEY (`fd_outward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_outwards`
--

INSERT INTO `tb_outwards` (`fd_outward_id`, `fd_date`, `fd_station_id`, `fd_item_id`, `fd_item_type_id`, `fd_item_manufacturer_id`, `fd_quantity`, `fd_mode_of_dispatch`, `fd_remarks`) VALUES
(1, '2017-06-09', 55, 32, 18, 0, 1, 'By Speed Post', ''),
(2, '2017-06-09', 55, 32, 19, 0, 1, 'By Speed Post', ''),
(3, '2017-06-09', 55, 33, 0, 0, 2, '', ''),
(4, '2017-06-09', 85, 10, 20, 0, 1, '', 'On tour by sri.PR Mehetre SA'),
(5, '2017-06-09', 85, 1, 1, 0, 1, '', 'On tour by sri.PR Mehetre SA'),
(6, '2017-06-09', 85, 29, 14, 0, 1, '', 'On tour by sri.PR Mehetre SA'),
(7, '2017-06-09', 63, 12, 0, 0, 2, 'By Speed Post', ''),
(8, '2017-06-12', 68, 4, 0, 0, 1, 'By Speed Post', ''),
(9, '2017-06-13', 8, 4, 0, 0, 1, 'By Speed Post', ''),
(10, '2017-06-13', 86, 4, 0, 0, 1, 'By Speed Post', ''),
(11, '2017-06-13', 23, 4, 0, 0, 1, 'By Speed Post', ''),
(12, '2017-06-13', 87, 34, 21, 0, 2, 'By Hand', ''),
(13, '2017-06-13', 87, 12, 0, 0, 2, 'By Hand', ''),
(14, '2017-06-16', 88, 4, 0, 0, 1, 'By Speed Post', ''),
(15, '2017-06-15', 85, 5, 0, 0, 1, 'By Hand', ''),
(16, '2017-06-21', 89, 6, 12, 0, 1, '', 'For testing with  RK Gaikwad'),
(17, '2017-06-23', 40, 4, 0, 0, 1, 'By Speed Post', ''),
(18, '2017-06-22', 89, 29, 14, 0, 5, 'By Hand', 'Handed over to Yatin Bhosale'),
(19, '2017-06-27', 51, 2, 0, 0, 1, 'By Speed Post', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_serial_numbers`
--

DROP TABLE IF EXISTS `tb_serial_numbers`;
CREATE TABLE IF NOT EXISTS `tb_serial_numbers` (
  `fd_serial_number_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_transaction_id` int(11) NOT NULL,
  `fd_transaction_type` char(1) NOT NULL,
  `fd_serial_number` varchar(128) NOT NULL,
  PRIMARY KEY (`fd_serial_number_id`)
) ENGINE=MyISAM AUTO_INCREMENT=264 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_serial_numbers`
--

INSERT INTO `tb_inward_serial_numbers` (`fd_inward_serial_number_id`, `fd_inward_id`, `fd_serial_number`) VALUES
(1, 1, '02-002489'),
(2, 1, '02-002298'),
(3, 1, '02-002229'),
(4, 1, '02-002301'),
(5, 1, '02-002497'),
(6, 1, '02-002490'),
(7, 1, '02-002483'),
(8, 1, '02-002299'),
(9, 1, '02-002488'),
(10, 1, '02-002302'),
(11, 2, 'AS/UWL/0310/67'),
(12, 3, '142/03'),
(13, 4, '400/16'),
(14, 4, '399/16'),
(15, 4, '396/16'),
(16, 4, '387/16'),
(17, 4, '391/16'),
(18, 4, '393/16'),
(19, 5, '364/16'),
(20, 6, 'AS/DD/37'),
(21, 7, 'AS/DAS/37'),
(22, 8, '208/13'),
(23, 8, '185/09'),
(24, 9, '014/17'),
(25, 10, 'AS/UWL/23'),
(26, 11, '408/16'),
(27, 11, '403/16'),
(28, 11, '409/16'),
(29, 11, '392/16'),
(30, 11, '394/16'),
(31, 11, '401/16'),
(32, 12, '371/16'),
(33, 13, 'PDB016RHT992'),
(34, 13, 'PDB026RHT962'),
(35, 13, 'PDB023RHT971'),
(36, 13, 'PDB018RHT1010'),
(37, 13, 'PDB005RHT972'),
(38, 13, 'PDB042RHT996'),
(39, 14, 'AS/DAS/38'),
(40, 15, 'AS/DD/38'),
(41, 16, 'Nil'),
(42, 16, 'Nil'),
(43, 16, 'Nil'),
(44, 16, 'Nil'),
(45, 16, 'Nil'),
(46, 17, '334/13'),
(47, 18, 'AS/0712/16'),
(48, 19, 'Nil'),
(49, 20, 'Nil'),
(50, 21, 'AS/UWL/30'),
(51, 22, '407/16'),
(52, 23, '398/16'),
(53, 24, '7616A016/017'),
(54, 25, 'AS/UWL/30'),
(55, 26, 'AS/UWL/25'),
(56, 26, 'AS/UWL/26'),
(57, 26, 'AS/UWL/27'),
(58, 26, 'AS/UWL/28'),
(59, 26, 'AS/UWL/29'),
(60, 27, 'AS/0712/83'),
(61, 28, 'AS/MS-03/270'),
(62, 29, '15070089'),
(63, 30, '214/06'),
(64, 30, '322/13'),
(65, 31, 'AS/0110/114'),
(66, 32, '050114016'),
(67, 33, 'AS/1014/153'),
(68, 34, 'AS/DD/10'),
(69, 35, 'AS/MS-03/220'),
(70, 36, 'AS/MS/1012/02'),
(71, 36, 'AS/MS/06'),
(72, 37, '320/17'),
(73, 37, '321/17'),
(74, 38, '335/13'),
(75, 39, '0501140009'),
(76, 39, 'AS/VW/22'),
(77, 40, 'AS/MS/127'),
(78, 41, '14B260986'),
(79, 41, '14B261074'),
(80, 42, 'Nil'),
(81, 42, 'Nil'),
(82, 42, 'Nil'),
(83, 43, 'Nil'),
(84, 43, 'Nil'),
(85, 43, 'Nil'),
(86, 43, 'Nil'),
(87, 44, '116237058'),
(88, 44, '116237055'),
(89, 45, 'DL002/DDL-0025742/2/DD/12'),
(90, 46, 'UPG/SE-1000'),
(91, 46, 'AS/DD/09'),
(92, 46, 'AS/1E/DD/0813/53'),
(93, 47, '335/13'),
(94, 48, '05D114002'),
(95, 49, 'AS/PCD/01/2015'),
(96, 50, '04002525'),
(97, 51, 'ESR0303'),
(98, 52, 'AS/DAS0813/52'),
(99, 52, 'AS/DAS0813/53'),
(103, 54, '743/09'),
(102, 54, '729/09'),
(104, 55, 'AS/UWL/04'),
(105, 55, 'AS/0712/92'),
(106, 56, '010/17'),
(107, 56, 'Nil'),
(108, 57, 'AS/DD/10'),
(109, 58, 'AS/0112/89'),
(110, 58, 'AS/0712/81'),
(111, 59, 'AS/51'),
(112, 59, 'AS/52'),
(113, 59, 'AS/53'),
(114, 59, 'AS/54'),
(115, 59, 'AS/55'),
(116, 59, 'AS/56'),
(117, 59, 'AS/57'),
(118, 59, 'AS/58'),
(119, 59, 'AS/59'),
(120, 59, 'AS/60'),
(121, 59, 'AS/61'),
(122, 59, 'AS/62'),
(123, 59, 'AS/63'),
(124, 59, 'AS/64'),
(125, 59, 'AS/65'),
(126, 60, '26/17'),
(127, 60, '34/17'),
(128, 61, ''),
(129, 61, ''),
(130, 62, 'N4734009'),
(131, 62, 'N4734017'),
(132, 62, 'N4734010'),
(133, 63, '322/17'),
(134, 63, '323/17'),
(135, 63, '324/17'),
(136, 64, '325/17'),
(137, 64, '326/17'),
(138, 65, 'AS/MS3/200'),
(139, 66, 'Nil'),
(140, 67, '330/13'),
(141, 67, '318/13'),
(142, 67, '350/13'),
(143, 67, '107/03'),
(144, 67, '17/93'),
(145, 68, '66-01'),
(146, 69, '66-01'),
(147, 70, '06/16'),
(148, 71, 'Nil'),
(149, 71, 'Nil'),
(150, 71, 'Nil'),
(151, 71, 'Nil'),
(152, 71, 'Nil'),
(153, 71, 'Nil'),
(154, 71, 'Nil'),
(155, 71, 'Nil'),
(156, 71, 'Nil'),
(157, 71, 'Nil'),
(158, 71, 'Nil'),
(159, 72, 'Nil'),
(160, 72, 'Nil'),
(161, 72, 'Nil'),
(162, 72, 'Nil'),
(163, 72, 'Nil'),
(164, 73, 'Nil'),
(165, 74, 'Nil'),
(166, 75, 'Nil'),
(167, 76, 'Nil'),
(168, 77, 'Nil'),
(169, 77, 'Nil'),
(170, 78, 'Nil'),
(171, 78, 'Nil'),
(172, 79, 'Nil'),
(173, 79, 'Nil'),
(174, 80, 'Nil'),
(175, 80, 'Nil'),
(176, 81, 'Nil'),
(177, 81, 'Nil'),
(178, 82, 'Nil'),
(179, 83, 'Nil'),
(180, 84, 'Nil'),
(181, 85, 'Nil'),
(182, 86, 'Nil'),
(183, 86, 'Nil'),
(184, 87, 'Nil'),
(185, 87, 'Nil'),
(186, 88, 'Nil'),
(187, 88, 'Nil'),
(188, 89, 'Nil'),
(189, 89, 'Nil'),
(190, 90, 'Nil'),
(191, 90, 'Nil'),
(192, 90, 'Nil'),
(193, 90, 'Nil'),
(194, 90, 'Nil'),
(195, 90, 'Nil'),
(196, 90, 'Nil'),
(197, 90, 'Nil'),
(198, 90, 'Nil'),
(199, 90, 'Nil'),
(200, 90, 'Nil'),
(201, 90, 'Nil'),
(202, 90, 'Nil'),
(203, 90, 'Nil'),
(204, 90, 'Nil'),
(205, 90, 'Nil'),
(206, 90, 'Nil'),
(207, 90, 'Nil'),
(208, 90, 'Nil'),
(209, 90, 'Nil'),
(210, 91, 'Nil'),
(211, 91, 'Nil'),
(212, 91, 'Nil'),
(213, 91, 'Nil'),
(214, 91, 'Nil'),
(215, 91, 'Nil'),
(216, 92, '024/17'),
(217, 92, '032/17'),
(218, 92, '033/17'),
(219, 92, '036/17'),
(220, 92, '043/17'),
(221, 93, ''),
(222, 94, ''),
(223, 95, 'AS/HWSR/01'),
(224, 95, 'AS/HWSR/02'),
(225, 95, 'AS/HWSR/03'),
(226, 95, 'AS/HWSR/04'),
(227, 96, ''),
(228, 96, ''),
(229, 97, ''),
(230, 97, ''),
(231, 97, ''),
(232, 97, ''),
(233, 98, 'AS/DD/08'),
(234, 99, 'AS/DD/10'),
(235, 99, 'AS/DAS/10'),
(236, 100, '04517');

-- --------------------------------------------------------

--
-- Table structure for table `tb_stations`
--

DROP TABLE IF EXISTS `tb_stations`;
CREATE TABLE IF NOT EXISTS `tb_stations` (
  `fd_station_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_rmc` varchar(128) NOT NULL,
  `fd_state` varchar(128) NOT NULL,
  `fd_type` varchar(128) NOT NULL,
  `fd_icao` varchar(128) NOT NULL,
  `fd_name` varchar(128) NOT NULL,
  `fd_email` varchar(128) NOT NULL,
  `fd_phone` varchar(10) NOT NULL,
  `fd_address` varchar(256) NOT NULL,
  `fd_incharge_name` varchar(128) NOT NULL,
  `fd_incharge_mobile` varchar(10) NOT NULL,
  PRIMARY KEY (`fd_station_id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=latin1 COMMENT='To store details of stations';

--
-- Dumping data for table `tb_stations`
--

INSERT INTO `tb_stations` (`fd_station_id`, `fd_rmc`, `fd_state`, `fd_type`, `fd_icao`, `fd_name`, `fd_email`, `fd_phone`, `fd_address`, `fd_incharge_name`, `fd_incharge_mobile`) VALUES
(1, 'Chennai', 'Lakshadweep Islands', 'AMS', 'VOAT', 'Agathi', '', '', '', '', ''),
(2, 'Chennai', 'Karnataka', 'AMS', 'VODM', 'Belgaum', '', '', 'THE OFFICER IN CHARGE AIRPORT METEOROLOGICAL OFFICE BELGAUM AIRPORT, SAMBRE BELGAUM PIN: 591 124 KARNATAKA', '', ''),
(3, 'Chennai', 'Karnataka', 'AMO', 'VOBL', 'Bengaluru (Devanahalli)', '', '', 'SCIENTIST D MET. OBSERVATORY (IMD), KEMPE GOWDA INTERNATIONAL AIRPORT LTD., DEVANAHALI, BENGALURU KARNATAKA PIN: 562 110', '', ''),
(4, 'Chennai', 'Karnataka', 'AMS', 'VOBG', 'Bengaluru (HAL)', '', '', 'SCIENTIST D MET. OBSERVATORY (IMD), KEMPE GOWDA INTERNATIONAL AIRPORT LTD., DEVANAHALI, BENGALURU KARNATAKA PIN : 562 110', '', ''),
(5, 'Chennai', 'Tamil Nadu', 'AMO/MWO', 'VONN', 'Chennai', '', '', 'THE DIRECTOR METEOROLOGICAL OFFICE MEENAMBAKKA P.O. : CHENNAI AIRPORT PIN : 600 027', '', ''),
(6, 'Chennai', 'Tamil Nadu', 'AMS', 'VOCB', 'Coimbatore', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE CIVIL AERODROME PEELAMEDU COIMBATORE DIST. : COIMBATORE PIN : 641 014 TAMIL NADU', '', ''),
(7, 'Chennai', 'Andhra Pradesh', 'AMS', 'VOBZ', 'Ganavaram', '', '', 'THE DIRECTOR METEOROLOGICAL OFFICE MEENAMBAKKA P.O. CHENNAI AIRPORT PIN : 600 027', '', ''),
(8, 'Chennai', 'Karnataka', 'AMS', 'VOHB', 'Hubli', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE AIRPORT GOKUL ROAD HUBLI PIN : 580 030 KARNATAKA', '', ''),
(9, 'Chennai', 'Telangana', 'AMS', 'VOHY', 'Hyderabad (Begumpet)', '', '', 'THE DIRECTOR METEOROLOGICAL CENTRE AIRPORT COLONY, BEGUMPET P.O. HYDERABAD PIN : 500 016 ANDHRA PRADESH', '', ''),
(10, 'Chennai', 'Telangana', 'AMO', 'VOHS', 'Hyderabad (Shamshabad)', '', '', 'THE DIRECTOR METEOROLOGICAL CENTRE AIRPORT COLONY, BEGUMPET P.O. HYDERABAD PIN : 500 016 ANDHRA PRADESH', '', ''),
(11, 'Chennai', 'Andhra Pradesh', 'AMS', 'VOCP', 'Cuddapah Airport', '', '', ' THE PROF. DEPT. OF PHYSICS & HONORARY SUPERINTENDENT METEOROLOGICAL OBSERVATORY YOGI VEMANA UNIVERSITY CUDDAPAH DIST. : CUDDAPA', '', ''),
(12, 'Chennai', 'Kerala', 'AMS', 'VOCI', 'Kochi', '', '', 'THE SENIOR METEOROLOGICAL OFFICER METEOROLOGICAL OFFICE, I.N.S. GARUDA, NAVAL BASE, KOCHI PIN : 682 004 KERALA', '', ''),
(13, 'Chennai', 'Kerala', 'AMS', 'VOCL', 'Kozhikode', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OBSERVATORY KOZHIKODE AIRPORT P.O. : KARIPUR DIST. : MALAPPURAM PIN : 673 647 KERALA', '', ''),
(14, 'Chennai', 'Tamil Nadu', 'AMS', 'VOMD', 'Madhurai', '', '', 'THE OFFICER IN-CHARGE AERODROME METEOROLOGICAL STATION(AMS) MADURAI AIRPORT PERUGUDI MADURAI-625022 TAMIL NADU', '', ''),
(15, 'Chennai', 'Karnataka', 'AMS', 'VOML', 'Mangalore', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE CIVIL AIRPORT BAJPE P.O. MANGALORE DAKSHINA KANNADA PIN- 574 142 KARNATAKA', '', ''),
(16, 'Chennai', 'Karnataka', 'AMS', 'VOMY', 'Mysore', '', '', 'THE OFFICER INCHARGE AERODROME MET STATION MANDAKALLI AIRPORT MYSORE PIN: 571313 KARNATAKA ', '', ''),
(17, 'Chennai', 'Puducherry', 'AMS', 'VOPC', 'Pondicherry', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OBSERVATORY AIRPORT ROAD LAWSPET PONDICHERRY-605008 TAMIL NADU', '', ''),
(18, 'Chennai', 'Andhra Pradesh', 'AMS', 'VORY', 'Rajahmundry', '', '', 'ON INDIA GOVERNMENT SERVICE', '', ''),
(19, 'Chennai', 'Tamil Nadu', 'AMS', 'VOSM', 'Salem', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OBSERVATORY COLLECTOR OFFICE COMPOUND SALEM-636001 TAMIL NADU', '', ''),
(20, 'Chennai', 'Kerala', 'AMO', 'VOTV', 'Thiruvananthapuram', '', '', 'TO THE DIRECTOR IN CHARGE METEOROLOGICAL CENTRE OBSERVATORY HILL VIKAS BHAVAN PIN : 695 033', '', ''),
(21, 'Chennai', 'Tamil Nadu', 'AMS', 'VOTK', 'Tooticorin', '', '', 'THE MARINE SURVEYOUR & HONORARY SUPERINTENDENT METEOROLOGICAL OBSERVATORY MARINE SURVEY DEPARTMENT TUTICORIN NEW PORT (V O CHIDA', '', ''),
(22, 'Chennai', 'Tamil Nadu', 'AMS', 'VOTR', 'Tiruchirapalli', '', '', 'THE OFFICER IN CHARGE AERODROME METEOROLOGICAL STATION CIVIL AERODROME TIRUCHIRAPALLI-620007 TAMIL NADU', '', ''),
(23, 'Chennai', 'Andhra Pradesh', 'AMS', 'VOTP', 'Tirupathi', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE TIRUPATHI AERODROME P.O. : RENIGUNTA TIRUPATHI DIST. : CHITTOOR PIN : 517 520 ANDHRA', '', ''),
(24, 'Chennai', 'Andhra Pradesh', 'AMS', 'VOVZ', 'Visakhapatnam', '', '', 'THE COMMANDING OFFICER INS DEGA NAD POST VISAKHAPATNAM-09 ANDHRA PRADESH', '', ''),
(25, 'Delhi', 'Punjab', 'AMS', 'VIAR', 'Amritsar', '', '', 'THE OFFICER IN CHARGE AIRPORT METEOROLOGICAL OFFICE SHRI GURU RAMDASJI INTERNATIONAL AIRPORT RAJASANSI AERODROME P.O. AMRITSAR P', '', ''),
(26, 'Delhi', 'Himachal Pradesh', 'AMS', 'VIBR', 'Bhuntar', '', '', '', '', ''),
(27, 'Delhi', 'Uttarakhand', 'AMS', 'VIDN', 'Dehradun', '', '', 'DIRECTOR METEOROLOGICAL CENTRE DEHRADUN SURVEY OF INDIA COMPOUND  17, E.C. ROAD - KARANPURA DEHRADUN – 248 001 UTTARAKHAND', '', ''),
(28, 'Delhi', 'Delhi', 'AMO/MWO', 'VIDD', 'New Delhi (Palam)', '', '', 'THE DIRECTOR METEOROLOGICAL OFFICE NEW TECHNICAL AIR TRAFFIC INFORMATIONS SERVICES COMPLEX, NEAR TERMINAL II INDIRA GANDHI INTER', '', ''),
(29, 'Delhi', 'Uttar Pradesh', 'AMS', 'VIRB', 'Furstaganj', '', '', '', '', ''),
(30, 'Delhi', 'Rajasthan', 'AMO', 'VIJP', 'Jaipur', '', '', 'THE DIRECTOR METEOROLOGICAL CENTRE MAUSAM BHAWAN BUDHSINGHPURA SANGANER AIRPORT JAIPUR – 302 011 RAJASTHAN', '', ''),
(31, 'Delhi', 'Himachal Pradesh', 'AMS', 'VIGG', 'Kangra', '', '', 'THE OFFICER IN CHARGE AERONAUTICAL METEOROLOGICAL STATION KANGRA AIRPORT (GAGGAL AIRPORT) DIST.: KANGRA PIN: 178 209 HIMACHAL PR', '', ''),
(32, 'Delhi', 'Rajasthan', 'AMS', 'VIKO', 'Kota', '', '', 'THE DIRECTOR METEOROLOGICAL OFFICE SAFDARJUNG AIRPORT P.O. NEW DELHI PIN : 110 003 NEW DELHI', '', ''),
(33, 'Delhi', 'Uttar Pradesh', 'AMO', 'VILK', 'Lucknow', '', '', 'THE DIRECTOR METEOROLOGICAL CENTRE PILOT BALLOON OBSERVATORY AMAUSIE AIRPORT - LUCKNOW LUCKNOW – 226 009 UTTAR PRADESH', '', ''),
(34, 'Delhi', ' Punjab', 'AMS', 'VILD', 'Ludhiyana', '', '', '', '', ''),
(35, 'Delhi', 'Delhi', 'MWO', 'VIDP', 'New Delhi (Safdarjung)', '', '', 'THE DIRECTOR METEOROLOGICAL OFFICE SAFDARJUNG AIRPORT P.O. NEW DELHI PIN : 110 003 NEW DELHI', '', ''),
(36, 'Delhi', 'Uttarakhand', 'AMS', 'VIPT', 'Pantnagar', '', '', 'THE OFFICER IN CHARGE, AERODROME METEOROLOGICAL STATION, CIVIL AERODROME PANTNAGAR, DIST: UDHAM SINGH NAGAR, UTTARAKHAND, PIN: 2', '', ''),
(37, 'Delhi', 'Himachal Pradesh', 'AMS', 'VISN', 'Shimla', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL CENTRE INDIA METEOROLOGICAL DEPARTMENT BIBRA HOUSE CLIFFEND ESTATE P.O. SHIMLA PIN : 171 00', '', ''),
(38, 'Delhi', 'Rajasthan', 'AMS', 'VAUD', 'Udaipur', '', '', '', '', ''),
(39, 'Delhi', 'Uttar Pradesh', 'AMS', 'VIBN', 'Varanasi', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE BABATPUR AERODROME PIN : 221 006 VARANASI UTTAR PRADESH', '', ''),
(40, 'Guwahati', 'Tripura', 'AMO', 'VEAT', 'Agartala', '', '', 'THE METEOROLOGIST IN CHARGE, METEOROLOGICAL OFFICE, AGARTALA AERODROME, P.O. AGARTALA, PIN - 799 009, TRIPURA', '', ''),
(41, 'Guwahati', 'Mizoram', 'AMS', 'VEAZ', 'Aizwal (Lengpui)', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, LENGPUI AIRPORT, P.O. LENGPUI VIA AIZAWL, DIST – AIZAWL, MIZORAM', '', ''),
(42, 'Guwahati', 'Nagaland', 'AMS', 'VEMR', 'Dimapur', '', '', '', '', ''),
(43, 'Guwahati', 'Assam', 'AMO', 'VEGT', 'Guwahati', '', '', 'REGIONAL METEOROLOGICAL CENTRE, CIVIL AIRPORT – GUWAHATI, P.O. GUWAHATI AIRPORT, PIN – 781015, ASSAM', '', ''),
(44, 'Guwahati', 'Manipur', 'AMS', 'VEIM', 'Imphal', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, CIVIL AERODROME IMPHAL, P.O. IMPHAL (TULIHAL), PIN  795140, MANIPUR ', '', ''),
(45, 'Guwahati', 'Assam', 'AMO', 'VEMN', 'Mohanbari', '', '', 'THE METEOROLOGIST IN CHARGE, METEOROLOGICAL OFFICE, MOHANBARI AIRPORT, P.O. MOHANBARI, PIN : 786012, UPPER ASSAM', '', ''),
(46, 'Guwahati', 'Assam', 'AMS', 'VELR', 'North Lakhimpur', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, CIVIL AERODROME – LILABARI, P.O. NORTH LAKHIMPUR, DIST – LAKHIMPUR, ASSAM', '', ''),
(47, 'Guwahati', 'Meghalaya', 'AMS', 'VEBI', 'Shillong (Barapan)', '', '', 'THE METEOROLOGIST IN CHARGE, CENRAL SEISMOLOGICAL OBSERVATORY, MEATH HOME SHILLONG, P.O. SHILLONG, PIN – 793001, MEGHALAYA', '', ''),
(48, 'Guwahati', 'Tripura', 'AMS', 'VEKR', 'Kailashar', '', '', '', '', ''),
(49, 'Guwahati', 'Assam', 'AMS', 'VERE', 'Rupsi (Dubri)', '', '', '', '', ''),
(50, 'Kolkata', 'West Bengal', 'AMS', 'VEBD', 'Bagdongara', '', '', '', '', ''),
(51, 'Kolkata', 'Odisha', 'AMO', 'VEBS', 'Bhubaneshwar', '', '', 'THE DIRECTOR METEOROLOGICAL CENTRE CIVIL AERODROME P.O. BHUBANESWAR PIN : 751020 ODISHA', '', ''),
(52, 'Kolkata', 'West Bengal', 'AMS', 'VECO', 'Cooch Behar', '', '', '', '', ''),
(53, 'Kolkata', 'Bihar', 'AMS', 'VEGY', 'Gaya', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE CIVIL AERODROME - GAYA P.O. & DIST. - GAYA PIN : 823 004 BIHAR.', '', ''),
(54, 'Kolkata', 'Jharkhand', 'AMS', 'VEJS', 'Jamshedpur', '', '', 'THE OFFICER IN CHARGE PILOT BALLOON OBSERVATORY JAMSHEDPUR AIRPORT(SONARI) JAMSHEDPUR – 831 011 JHARKHAND', '', ''),
(55, 'Kolkata', 'West Bengal', 'MWO', 'VECC', 'Kolkata', '', '', 'REGIONAL TRAINING CENTRE REGIONAL METEOROLOGICAL CENTRE KOLKATA, AQ-8, MAHISH BATHAN, SECTOR-V, SALT LAKE, KOLKATA- 700091', '', ''),
(56, 'Kolkata', 'Bihar', 'AMO', 'VEPT', 'Patna', '', '', 'THE DIRECTOR,METEOROLOGICAL CENTRE CIVIL AERODROME PATNA – 800 014 BIHAR.', '', ''),
(57, 'Kolkata', 'Jharkhand', 'AMS', 'VERC', 'Ranchi', '', '', 'THE METEOROLOGIST IN CHARGE METEOROLOGICAL OFFICE B.M. AIRPORT RANCHI – 834 002 JHARKHAND', '', ''),
(58, 'Kolkata', 'Odisha', 'AMS', 'VEJH', 'Jharsuguda', '', '', '', '', ''),
(59, 'Mumbai', 'Gujarat', 'AMO', 'VAAH', 'Ahmedabad', '', '', 'THE DIRECTOR I/C, PILOT BALLOON OBSERVATORY, RS/RW BUILDING, METEOROLOGICAL OFFICE, CIVIL AERODROME, AHMEDABAD - 380 012, GUJARA', '', ''),
(60, 'Mumbai', 'Maharashtra', 'AMS', 'VAAU', 'Aurangabad (Chikalthana)', '', '', 'THE OFFICER-IN-CHARGE, PILOT BALLOON OBSERVATORY, CIVIL AERODROME, CHIKALTHANA-431 007, AURANGABAD, MAHARASHTRA', '', ''),
(61, 'Mumbai', 'Gujarat', 'AMS', 'VOBO', 'Vadodra', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, CIVIL AERODROME, VADODARA - 390 022, GUJARAT', '', ''),
(62, 'Mumbai', 'Gujarat', 'AMS', 'VABV', 'Bhavnagar', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, CIVIL AERODROME, BHAVNAGAR – 364 001, DIST. – BHAVNAGAR, GUJARAT', '', ''),
(63, 'Mumbai', 'Diu and Daman', 'AMS', 'VADU', 'Diu', '', '', 'THE HEALTH OFFICER, HEALTH CENTRE & HONORARY SUPERINTENDENT, METEOROLOGICAL OBSERVATORY, P.O.DIU - 362 520, DIST. : JUNAGADH, GU', '', ''),
(64, 'Mumbai', 'Maharashtra', 'MWO', 'VABB', 'Mumbai', '', '', 'THE REGIONAL METEOROLOGICAL CENTRE, NEAR R.C. CHURCH, COLABA, MUMBAI- 400 005, MAHARASHTRA', '', ''),
(65, 'Mumbai', 'Maharashtra', 'AMS', 'VAJJ', 'Mumbai (Juhu)', '', '', '', '', ''),
(66, 'Mumbai', 'Maharashtra', 'AMS', 'VAND', 'Nanded', '', '', '', '', ''),
(67, 'Mumbai', 'Gujarat', 'AMS', 'VAPR', 'Porbandar', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, CIVIL AERODROME, PORBANDAR – 360 575, DIST. – PORBANDAR, GUJARAT', '', ''),
(68, 'Mumbai', 'Gujarat', 'AMS', 'VARK', 'Rajkot', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, CIVIL AERODROME, RAJKOT -360 001, DIST – RAJKOT, GUJARAT', '', ''),
(69, 'Mumbai', 'Gujarat', 'AMS', 'VASU', 'Surat', '', '', 'THE OFFICER IN CHARGE, PILOT BALLOON OBSERVATORY, P.W.D. STORES CAMPUS, NEW MAGADALLA, SURAT-– 395 007, GUJARAT', '', ''),
(70, 'Mumbai', 'Gujarat', 'AMS', 'VAKE', 'Kandla', '', '', 'THE OFFICER IN CHARGE, AIRPORT METEOROLOGICAL STATION, KANDLA AIRPORT, VIA GOPALPURI, P.O.: GALPADAR, GANDHIDHAM, DIST.: KUTCH, ', '', ''),
(71, 'Nagpur', 'Maharashtra', 'AMS', 'VAGD', 'Gondia', '', '', '', '', ''),
(72, 'Nagpur', 'Madhya Pradesh', 'AMO', 'VABP', 'Bhopal (Bairagarh)', '', '', 'THE OFFICER  IN CHARGE METEOROLOGICAL OFFICE CIVIL AERODROME - BAIRAGARH DIST. BHOPAL PIN : 462 030 MADHYA PRADESH', '', ''),
(73, 'Nagpur', 'Madhya Pradesh', 'AMS', 'VAID', 'Indore', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE DEVI AHILYABAI HOLKAR AIRPORT, INDORE, CIVIL AERODROME INDORE PIN : 452 005 MADHYA PRADESH', '', ''),
(74, 'Nagpur', 'Madhya Pradesh', 'AMS', 'VAJV', 'Jabalpur', '', '', 'THE OFFICER IN CHARGE PILOT BALLOON OBSERVATORY ANAND NAGAR, ADHARTAL, KATNI ROAD, JABALPUR PIN : 482 004 MADHYA PRADESH', '', ''),
(75, 'Nagpur', 'Madhya Pradesh', 'AMS', 'VAKJ', 'Khajuraho', '', '', '', '', ''),
(76, 'Nagpur', 'Maharashtra', 'AMO', 'VANP', 'Nagpur', '', '', 'THE D.D.G.M. REGIONAL METEOROLOGICAL CENTRE SONEGAON AIRPORT NAGPUR PIN : 440 005 MAHARASHTRA', '', ''),
(77, 'Nagpur', 'Chattisgarh', 'AMS', 'VERP', 'Raipur', '', '', 'THE METEOROLOGIST IN CHARGE METEOROLOGICAL CENTRE BEHIND MMI HOSPITAL VILLAGE – LALPUR POST : DEVPURI DIST. : RAIPUR PIN : 492 001', '', ''),
(78, '', '', '', '', 'Store', '', '', '', '', ''),
(79, '', '', '', '', 'AWS', '', '', '', '', ''),
(80, '', '', '', '', 'Accel Systems', '', '', '', '', ''),
(81, '', '', '', '', 'Tuticorin', '', '', '', '', ''),
(82, '', '', '', '', 'INS HANSA C TO A', '', '', '', '', ''),
(83, '', '', '', '', 'R & D E (E) Kalas', '', '', 'Pune - 15', '', ''),
(84, 'Mumbai', 'Diu and Daman', '', '', 'Daman', '', '', '', '', ''),
(85, 'New Delhi', '', '', '', 'New Delhi', '', '', '', '', ''),
(86, '', '', '', '', 'Trichi', '', '', '', '', ''),
(87, '', '', '', '', 'Ahemdabad', '', '', '', '', ''),
(88, '', '', '', '', 'Port blair', '', '', '', '', ''),
(89, '', '', '', '', 'Workshop', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE IF NOT EXISTS `tb_users` (
  `fd_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_first_name` varchar(128) NOT NULL,
  `fd_last_name` varchar(128) NOT NULL,
  `fd_username` varchar(128) NOT NULL,
  `fd_password` char(60) NOT NULL,
  `fd_role` varchar(128) NOT NULL,
  PRIMARY KEY (`fd_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`fd_user_id`, `fd_first_name`, `fd_last_name`, `fd_username`, `fd_password`, `fd_role`) VALUES
(1, 'Admin', 'Admin', 'admin', '$2y$10$YhFDxAv/cZHNrtYHoi2vvuCzmV/1WUmloRIc.H0bG7EKeD2QvnJ.K', 'Administrator');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
