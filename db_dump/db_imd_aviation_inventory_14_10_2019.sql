-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2019 at 09:46 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

CREATE TABLE `tb_inwards` (
  `fd_inward_id` int(11) NOT NULL,
  `fd_date` date NOT NULL,
  `fd_station_id` int(11) NOT NULL,
  `fd_item_id` int(11) NOT NULL,
  `fd_item_type_id` int(11) DEFAULT NULL,
  `fd_item_manufacturer_id` int(11) DEFAULT NULL,
  `fd_quantity` int(11) NOT NULL,
  `fd_rate` decimal(10,0) NOT NULL,
  `fd_mode_of_receiving` varchar(128) NOT NULL,
  `fd_remarks` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_inwards`
--

INSERT INTO `tb_inwards` (`fd_inward_id`, `fd_date`, `fd_station_id`, `fd_item_id`, `fd_item_type_id`, `fd_item_manufacturer_id`, `fd_quantity`, `fd_rate`, `fd_mode_of_receiving`, `fd_remarks`) VALUES
(1, '2017-01-01', 2, 2, 8, 0, 2, '235', '', 'Mr. X'),
(2, '2017-01-04', 4, 2, 8, 0, 4, '230', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_items`
--

CREATE TABLE `tb_items` (
  `fd_item_id` int(11) NOT NULL,
  `fd_name` varchar(128) NOT NULL,
  `fd_specification` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_items`
--

INSERT INTO `tb_items` (`fd_item_id`, `fd_name`, `fd_specification`) VALUES
(1, 'Core Cable', '100 Mtr'),
(2, 'Windvane', ''),
(3, 'Wind Sensor', 'Hand Held'),
(4, 'Power Supply box & Accessories', 'Digital Barometer'),
(5, 'Barrel Housing Assembly', ''),
(6, 'Base Plate ', '3 Nuts + Bolts Junction Box'),
(7, 'Cable Modem', ''),
(8, 'Cat 6 Cable', ''),
(9, 'Complete set of 18 feet Wind Mast', ''),
(10, 'Connectors', 'For OPT. Anemometer'),
(11, 'Data Logger', ''),
(12, 'Data Digitizer', ''),
(13, 'HP Toner', ''),
(14, 'Engenious Modem', ''),
(15, 'Field Enclosure ', 'for CWIS'),
(16, 'GPRS Module ', 'with Antena'),
(17, 'Araldite', '180 Gms'),
(18, 'Power Cord', '230 V, 5 Amp Indian Plug Mains'),
(19, 'Junction Box', ''),
(20, 'Luggs', '6 Way Connector Steev 100 Mtr'),
(22, 'Slave Display', ''),
(23, 'Self Recording Rainguage', ''),
(24, 'Opt. Anemometer', ''),
(25, 'Patch Cord ', ''),
(26, 'Servo Pot', ''),
(27, 'Pressure Sensor', ''),
(28, 'Radio modem', ''),
(29, 'RS 232 cable', ''),
(30, 'RS 422 cable', ''),
(31, 'Sleevs', ''),
(32, 'SMPS', 'for drishtri mode'),
(33, 'SRRG', ''),
(34, 'Stevensons Screen', ''),
(35, 'Tool Kit/Box', ''),
(36, 'Accel ESR', ''),
(37, 'Travelling Standard Calibration Kit', ''),
(38, 'TT/RH Sensor', ''),
(39, 'Psychrometer', ''),
(40, 'Shielded Cable ', 'For Opt. Anemometer(100 Mtr)'),
(41, 'Cartridge ', '(printer)'),
(42, 'Gill Sensor ', '(Wind Sonic) with AC Adapter'),
(43, '10.1 Graphical Display DCWIS System', ''),
(44, 'Teamlink DL', ''),
(45, 'Converter', 'Serial to Ethernet, with adapter'),
(46, 'Register', 'Full scape Rulled'),
(47, 'Paper Reans', 'Xerox'),
(48, 'Ceilometer', 'CBME 8.0'),
(49, 'USB', 'for comport'),
(50, 'Tape', ''),
(51, 'Wind Indicating Panel', ''),
(52, 'Data Core Line Driver', ''),
(53, 'Lan Extender', ''),
(54, 'Teamlink Modem', ''),
(55, 'Notepad', ''),
(56, 'Ball Pen', ''),
(57, 'Digital Multimeter', ''),
(58, 'Ceilometer Stand', ''),
(59, 'Pipe Assembly Set', ''),
(60, 'Thin Computer', 'CPU'),
(61, 'Micro SD Card', ''),
(62, 'Solder Gun Stand Wire Flux', ''),
(63, 'Wire Stripper', ''),
(64, 'Spike Guard', '4 Ways'),
(65, 'Switch', 'Dlink 8 Port'),
(66, 'Wind Mast', 'with Accessories'),
(67, 'Copper pipe 3/4 + 3/8 with insulator', ''),
(68, 'Mounting Stand', 'for Outer Unit AC'),
(69, 'HP Computer', 'with Monitor'),
(70, 'Computer RAM', ''),
(71, 'Computer Hard Disk', 'Seagate'),
(72, 'Revolving Chair', 'Model No. HT 767 B+ HR'),
(73, 'Pen Drive', ''),
(74, 'AT/RH Sensor', ''),
(75, 'Hall Effect', 'Magnetic W.D Sensor'),
(76, 'VPS', ''),
(77, 'Mast Boom Clamps', ''),
(78, 'Monitor', ''),
(79, 'Keyboard', ''),
(80, 'CPU', ''),
(81, 'New CWIS System', ''),
(82, 'Signal Cable', ''),
(83, 'Circuit Breaker', ''),
(84, 'DC Adapter', ''),
(85, 'Lightning Arrester', ''),
(86, 'Water Cooler', ''),
(87, 'BSNL SIM', ''),
(88, 'Jumper Wire', ''),
(89, 'Boom Strip Pika Clamp', ''),
(21, 'Potentiometer', ''),
(95, 'Test Item 2', 'Spec'),
(94, 'Test Item 1', 'Spec'),
(96, 'Test Item 2', 'Spec'),
(97, 'Test Item 3', 'Spec'),
(98, 'Test Item 3', 'Spec'),
(99, 'Test Item 4i', 'Spec'),
(100, 'Item 5', ''),
(101, 'I6', ''),
(102, 'i7', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_item_manufacturers`
--

CREATE TABLE `tb_item_manufacturers` (
  `fd_item_manufacturer_id` int(11) NOT NULL,
  `fd_item_id` int(11) NOT NULL,
  `fd_manufacturer` varchar(128) NOT NULL,
  `fd_dirty_bit` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_item_manufacturers`
--

INSERT INTO `tb_item_manufacturers` (`fd_item_manufacturer_id`, `fd_item_id`, `fd_manufacturer`, `fd_dirty_bit`) VALUES
(12, 101, 'kkk', 1),
(9, 95, 'aa', 1),
(8, 94, 'aa', 1),
(7, 94, 'bb', 1),
(11, 95, 'cc', 1),
(14, 101, 'nnn', 1),
(15, 101, 'lll', 1),
(16, 102, 'ikkk', 1),
(17, 102, 'immm', 1),
(20, 101, 'ppp', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_item_types`
--

CREATE TABLE `tb_item_types` (
  `fd_item_type_id` int(11) NOT NULL,
  `fd_item_id` int(11) NOT NULL,
  `fd_type` varchar(128) NOT NULL,
  `fd_dirty_bit` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_item_types`
--

INSERT INTO `tb_item_types` (`fd_item_type_id`, `fd_item_id`, `fd_type`, `fd_dirty_bit`) VALUES
(1, 11, 'Metlog 03', 0),
(2, 11, 'Metlog 02', 0),
(3, 11, 'HWSR', 0),
(4, 11, 'CWIS', 0),
(5, 11, 'DIWE', 0),
(6, 24, 'Mini', 0),
(7, 24, 'New Type', 0),
(8, 2, 'Pot', 0),
(9, 2, 'Hall Effect', 0),
(10, 22, 'Mini', 0),
(11, 22, 'Mega', 0),
(12, 38, 'Kamoline', 0),
(13, 38, 'Microstep', 0),
(14, 40, '2', 0),
(15, 40, '4', 0),
(16, 40, '6', 0),
(17, 40, '8', 0),
(18, 41, '12A', 0),
(19, 41, '88A', 0),
(20, 34, 'Mini', 0),
(21, 26, '10K', 0),
(22, 14, 'Wi-Fi', 0),
(23, 14, 'Tenda', 0),
(24, 39, 'Whirling', 0),
(25, 50, 'Packing', 0),
(26, 51, 'Main', 0),
(27, 51, 'Slave', 0),
(28, 82, 'Teflon', 0),
(29, 50, 'Insulation', 0),
(30, 80, 'i3', 0),
(31, 80, 'i7', 0),
(32, 7, 'Data Core System', 0),
(33, 24, 'Hand Held', 0),
(34, 28, 'Enh 202', 0),
(35, 12, 'CWIS', 0),
(36, 12, 'Metlog 02', 0),
(37, 2, 'New Type', 0),
(38, 38, 'Rotronics', 0),
(39, 27, 'Microstep', 0),
(40, 32, '12V', 0),
(41, 53, 'Techroutes', 0),
(42, 65, '8 Port', 0),
(43, 1, '6 Core', 0),
(44, 1, '12 Core', 0),
(45, 27, 'Barometric Transfer', 0),
(46, 3, 'Gill', 0),
(47, 25, '1 Mtr', 0),
(48, 25, '5 Mtr', 0),
(49, 15, 'CWIS', 0),
(50, 48, 'Laser', 0),
(51, 84, '12V', 0),
(62, 95, 'b', 1),
(67, 101, 'bb', 1),
(60, 94, 'a', 1),
(59, 94, 'b', 1),
(58, 94, 'c', 1),
(70, 102, 'ibb', 1),
(64, 95, 'c', 1),
(65, 95, 'd', 1),
(69, 101, 'dd', 1),
(71, 102, 'icc', 1),
(72, 102, 'idd', 1),
(73, 101, 'ee', 1),
(74, 101, 'ff', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_outwards`
--

CREATE TABLE `tb_outwards` (
  `fd_outward_id` int(11) NOT NULL,
  `fd_date` date NOT NULL,
  `fd_station_id` int(11) NOT NULL,
  `fd_item_id` int(11) NOT NULL,
  `fd_item_type_id` int(11) NOT NULL,
  `fd_item_manufacturer_id` int(11) NOT NULL,
  `fd_quantity` int(11) NOT NULL,
  `fd_mode_of_dispatch` varchar(128) NOT NULL,
  `fd_remarks` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_serial_numbers`
--

CREATE TABLE `tb_serial_numbers` (
  `fd_serial_number_id` int(11) NOT NULL,
  `fd_transaction_id` int(11) NOT NULL,
  `fd_transaction_type` char(1) NOT NULL,
  `fd_serial_number` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_serial_numbers`
--

INSERT INTO `tb_serial_numbers` (`fd_serial_number_id`, `fd_transaction_id`, `fd_transaction_type`, `fd_serial_number`) VALUES
(1, 1, 'I', 'AS/DD/01'),
(2, 1, 'I', 'AS/DD/02'),
(4, 2, 'I', 'AS/01'),
(5, 2, 'I', 'AS/02'),
(6, 2, 'I', 'AS/03'),
(7, 2, 'I', 'AS/04');

-- --------------------------------------------------------

--
-- Table structure for table `tb_stations`
--

CREATE TABLE `tb_stations` (
  `fd_station_id` int(11) NOT NULL,
  `fd_rmc` varchar(128) NOT NULL,
  `fd_state` varchar(128) NOT NULL,
  `fd_type` varchar(128) NOT NULL,
  `fd_icao` varchar(128) NOT NULL,
  `fd_name` varchar(128) NOT NULL,
  `fd_email` varchar(128) NOT NULL,
  `fd_phone` varchar(10) NOT NULL,
  `fd_address` varchar(256) NOT NULL,
  `fd_incharge_name` varchar(128) NOT NULL,
  `fd_incharge_mobile` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='To store details of stations';

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
(77, 'Nagpur', 'Chattisgarh', 'AMS', 'VERP', 'Raipur', '', '', 'THE METEOROLOGIST IN CHARGE METEOROLOGICAL CENTRE BEHIND MMI HOSPITAL VILLAGE – LALPUR POST : DEVPURI DIST. : RAIPUR PIN : 492 001', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `fd_user_id` int(11) NOT NULL,
  `fd_first_name` varchar(128) NOT NULL,
  `fd_last_name` varchar(128) NOT NULL,
  `fd_username` varchar(128) NOT NULL,
  `fd_password` char(60) NOT NULL,
  `fd_role` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`fd_user_id`, `fd_first_name`, `fd_last_name`, `fd_username`, `fd_password`, `fd_role`) VALUES
(1, 'Admin', 'Admin', 'admin', '$2y$10$YhFDxAv/cZHNrtYHoi2vvuCzmV/1WUmloRIc.H0bG7EKeD2QvnJ.K', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_inwards`
--
ALTER TABLE `tb_inwards`
  ADD PRIMARY KEY (`fd_inward_id`);

--
-- Indexes for table `tb_items`
--
ALTER TABLE `tb_items`
  ADD PRIMARY KEY (`fd_item_id`);

--
-- Indexes for table `tb_item_manufacturers`
--
ALTER TABLE `tb_item_manufacturers`
  ADD PRIMARY KEY (`fd_item_manufacturer_id`);

--
-- Indexes for table `tb_item_types`
--
ALTER TABLE `tb_item_types`
  ADD PRIMARY KEY (`fd_item_type_id`);

--
-- Indexes for table `tb_outwards`
--
ALTER TABLE `tb_outwards`
  ADD PRIMARY KEY (`fd_outward_id`);

--
-- Indexes for table `tb_serial_numbers`
--
ALTER TABLE `tb_serial_numbers`
  ADD PRIMARY KEY (`fd_serial_number_id`);

--
-- Indexes for table `tb_stations`
--
ALTER TABLE `tb_stations`
  ADD PRIMARY KEY (`fd_station_id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`fd_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_inwards`
--
ALTER TABLE `tb_inwards`
  MODIFY `fd_inward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_items`
--
ALTER TABLE `tb_items`
  MODIFY `fd_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `tb_item_manufacturers`
--
ALTER TABLE `tb_item_manufacturers`
  MODIFY `fd_item_manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tb_item_types`
--
ALTER TABLE `tb_item_types`
  MODIFY `fd_item_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `tb_outwards`
--
ALTER TABLE `tb_outwards`
  MODIFY `fd_outward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_serial_numbers`
--
ALTER TABLE `tb_serial_numbers`
  MODIFY `fd_serial_number_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_stations`
--
ALTER TABLE `tb_stations`
  MODIFY `fd_station_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `fd_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
