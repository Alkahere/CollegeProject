-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2019 at 07:42 AM
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
  `fd_from` varchar(128) NOT NULL,
  `fd_item_type_manufacturer_id` int(11) NOT NULL,
  `fd_quantity` int(11) NOT NULL,
  `fd_rate` decimal(10,0) NOT NULL,
  `fd_mode_of_receiving` varchar(128) NOT NULL,
  `fd_remarks` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_inwards`
--

INSERT INTO `tb_inwards` (`fd_inward_id`, `fd_date`, `fd_from`, `fd_item_type_manufacturer_id`, `fd_quantity`, `fd_rate`, `fd_mode_of_receiving`, `fd_remarks`) VALUES
(1, '2019-10-08', 'Accel Systems', 6, 2, '50', 'By Hand', 'Mr. X');

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
(1, 'Signal Cable', ''),
(2, 'Mega Display ', ''),
(3, 'Pot Windvane', ''),
(4, 'Wind Sensor', ''),
(5, 'Power Supply box & Accessories', 'Digital Barometer'),
(6, 'Barrel Housing Assembly', ''),
(7, 'Base Plate ', '3 Nuts + Bolts Junction Box'),
(8, 'Cable Modem', ''),
(9, 'Cat 6 Cable', ''),
(10, 'Complete set of 18 feet Wind Mast-1no', ''),
(11, 'Connectors', ''),
(12, 'CWIS Data Logger', ''),
(13, 'CWIS Data Digitizer ', ''),
(14, 'DIWE Logger', ''),
(15, 'Engenious Modem ', ''),
(16, 'Field Enclosure ', ''),
(17, 'GPRS Module ', 'With Antena'),
(18, 'Hand Held Anemometer', ''),
(19, 'Data Logger', ''),
(20, 'Junction Box', ''),
(21, 'Luggs', ''),
(22, 'Slave Display', ''),
(23, 'Mini Stevensons Screen', ''),
(24, 'Opt. Anemometer', ''),
(25, 'Patch Cord ', ''),
(26, 'Pot 10 K Servo Pot', ''),
(27, 'Pressure Sensor', ''),
(28, 'Printer Cartridge ', ''),
(29, 'Radio modem', ''),
(30, 'RS 232 cable', ''),
(31, 'RS 422 cable', ''),
(32, 'Serial to Ethernet Convertor', ''),
(33, 'Sleevs', ''),
(34, 'SMPS', ''),
(35, 'SRRG', ''),
(36, 'Stevensons Screen', ''),
(37, 'Tool Kit', ''),
(38, 'Travelling Kit', ''),
(39, 'Travelling Standard Calibration Kit', ''),
(40, 'TT/RH Sensor', ''),
(41, 'Whirling Psychrometer', ''),
(42, 'Anemometer New Type', ''),
(43, '6 Core Shielded Cable 100 Mtr', 'For Opt. Anemometer'),
(44, 'Cartridge 12 A', ''),
(45, 'Gill Sensor (Wind Sonic) with AC Adapter', ''),
(46, '10.1 Graphical Display DCWIS System', ''),
(47, 'Teamlink DL', ''),
(49, 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `tb_item_types`
--

CREATE TABLE `tb_item_types` (
  `fd_item_type_id` int(11) NOT NULL,
  `fd_item_id` int(11) NOT NULL,
  `fd_type` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_item_types`
--

INSERT INTO `tb_item_types` (`fd_item_type_id`, `fd_item_id`, `fd_type`) VALUES
(3, 49, 'a'),
(4, 49, 'b');

-- --------------------------------------------------------

--
-- Table structure for table `tb_item_type_manufacturers`
--

CREATE TABLE `tb_item_type_manufacturers` (
  `fd_item_type_manufacturer_id` int(11) NOT NULL,
  `fd_item_type_id` int(11) NOT NULL,
  `fd_manufacturer` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_item_type_manufacturers`
--

INSERT INTO `tb_item_type_manufacturers` (`fd_item_type_manufacturer_id`, `fd_item_type_id`, `fd_manufacturer`) VALUES
(6, 3, 'a'),
(7, 3, 'b'),
(8, 4, 'a'),
(9, 4, 'c');

-- --------------------------------------------------------

--
-- Table structure for table `tb_outwards`
--

CREATE TABLE `tb_outwards` (
  `fd_outward_id` int(11) NOT NULL,
  `fd_date` date NOT NULL,
  `fd_shipment_mode_id` int(11) NOT NULL,
  `fd_station_id` int(11) NOT NULL,
  `fd_remarks` varchar(128) NOT NULL,
  `fd_outward_number` int(11) NOT NULL,
  `fd_is_active` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_serial_numbers`
--

CREATE TABLE `tb_serial_numbers` (
  `fd_serial_number_id` int(11) NOT NULL,
  `fd_inward_id` int(11) NOT NULL,
  `fd_serial_number` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_serial_numbers`
--

INSERT INTO `tb_serial_numbers` (`fd_serial_number_id`, `fd_inward_id`, `fd_serial_number`) VALUES
(1, 1, 'AS/01'),
(2, 1, 'AS/02');

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
(77, 'Nagpur', 'Chattisgarh', 'AMS', 'VERP', 'Raipur', '', '', 'THE METEOROLOGIST IN CHARGE METEOROLOGICAL CENTRE BEHIND MMI HOSPITAL VILLAGE – LALPUR POST : DEVPURI DIST. : RAIPUR PIN : 492 001', '', ''),
(78, 'Mumbai', 'Diu and Daman', 'MWO', 'asa', 'asasa', 'as@as', '12', 'asas', 'asa', '1212121212');

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
-- Indexes for table `tb_item_types`
--
ALTER TABLE `tb_item_types`
  ADD PRIMARY KEY (`fd_item_type_id`);

--
-- Indexes for table `tb_item_type_manufacturers`
--
ALTER TABLE `tb_item_type_manufacturers`
  ADD PRIMARY KEY (`fd_item_type_manufacturer_id`);

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
  MODIFY `fd_inward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_items`
--
ALTER TABLE `tb_items`
  MODIFY `fd_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `tb_item_types`
--
ALTER TABLE `tb_item_types`
  MODIFY `fd_item_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_item_type_manufacturers`
--
ALTER TABLE `tb_item_type_manufacturers`
  MODIFY `fd_item_type_manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_outwards`
--
ALTER TABLE `tb_outwards`
  MODIFY `fd_outward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_serial_numbers`
--
ALTER TABLE `tb_serial_numbers`
  MODIFY `fd_serial_number_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_stations`
--
ALTER TABLE `tb_stations`
  MODIFY `fd_station_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `fd_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
