-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2019 at 07:10 AM
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
-- Database: `genservweb2019`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `body`, `image`) VALUES
(1, 'Our Mission', 'GENSERV INTERNATIOINAL, INC. is aiming to be the best in the in our place by giving them the best service and work force. We are willing to be committed and to do our very best for our clients.', 'mission.png'),
(2, 'Our Vision', 'GENSERV INTERNATIOINAL, INC. we will continue to raise, READY TO BE YOUR BRIDGE TO SUCESS! In a very short time our goal is to help people conserve and save our mother earth through these best products such as LED Lights, Solar Energy, CCTV Camera, Satellite TV, Elevator, Flood Gate,iGSAT Satellite Broadband. Our Long term goal is staying with the company who believed in us.', 'vision.png'),
(3, 'Our Corporate Core Values', 'A commitment to sustainability and to acting in an environmentally friendly way,commitment to innovation and excellence, commitment to doing good for the whole, commitment to building strong communities.', 'core_values.png'),
(4, 'Services', 'Our services to our client\'s lies at the heart of what we do, we regularly seek our client\'s views on the service we offer and value the feedback we get. By providing the facility for feedback to be given can tell us what they think about the service we are providing at any stage, and not just when we ask for it. Where there scope of improvement we genuinely want to know that, so we can take an action.', 'services.png'),
(5, 'Quality Policy', 'Genserv International is committed to meeting customer requirements and enhancing customer satisfaction through continual improvement of its products, services and the quality management system. We recognized that the quality of the service we offer to our clients can only be achieved by having highly motivated, committed and train staff.', 'quality.png'),
(6, 'Our Products', '<ul><li>LED Lighting Systems</li>\r\n<li>CCTV Security Systems</li>\r\n<li>Satellite TV Programs</li>\r\n<li>Elevator Services</li>\r\n<li>Watertight Gate (Flood Control)</li>\r\n<li>iGSAT Satellite Broadband</li>\r\n</ul>', 'products.png');

-- --------------------------------------------------------

--
-- Table structure for table `brochure`
--

CREATE TABLE `brochure` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brochure`
--

INSERT INTO `brochure` (`id`, `title`, `image`) VALUES
(1, 'Elevator Brochure', 'elevator.png'),
(2, 'Satellite TV Brochure', 'satellite_tv.png'),
(3, 'Internet Satellite Brochure', 'internet_satellite.png'),
(4, 'Floodgate Brochure', 'flood_gate.png'),
(5, 'Ceiling Circulation Fan Brochure', 'ceiling_fan.png'),
(6, 'CCTV Brochure', 'cctv.png'),
(7, 'Led Lights Brochure', 'led.png');

-- --------------------------------------------------------

--
-- Table structure for table `business_partners`
--

CREATE TABLE `business_partners` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `website` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `animation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_partners`
--

INSERT INTO `business_partners` (`id`, `company_name`, `about`, `website`, `logo`, `category`, `category_id`, `animation`) VALUES
(1, 'Foremost Cagayan Development Leisure Corporation', 'A self-sustaining wholly developed Cagayan Special Economic Zone and Free Port actively engaging in diverse, dynamic and sustainable industries within the Asia Pacific region benefiting the grassroots and the entire Philippines.', 'fcdlc.ph', 'fcdlc.png', 'economic zone leisure partner', 5, 'wow animated slow fadeInUpBig'),
(2, 'Global Satellite', 'GLOBAL SATELLITE (G SAT) is the best alternative source of international entertainment and information in areas beyond the reach of cable television. It was born out of response to the growing demand for a better direct-to-home satellite TV provider across the Philippines.', 'www.gsat.asia', 'gsat.png', 'satellite partners', 3, 'wow animated slow bounceInDown'),
(3, 'Dai-Chen Watergate Technology', 'Dai Chen was founded in 1980. Originally it was an aluminum window company. As the company grew stronger, it expanded its product line to include flood gate systems in 1998. After a few years of research and development, Dai Chen has developed the highest quality and most trusted flood gate system in Taiwan.', 'www.dc-floodgate.com', 'daichen.png', 'floodgate partner', 2, 'wow animated slow fadeInRight'),
(4, 'Koder Elevator(Taiwan)', 'The KODER elevator compassed many of the common attributes expected by today’s modern society, safety, reliability, performance, comfort and a design based on human needs.', '#', 'koder.png', 'elevator partner', 1, 'wow animated slow fadeInLeft'),
(5, 'Koangyow Integration Machine', 'Guangyou Technology was founded on May 1, 1988. It started from the satellite receiving system project and will be transformed in response to changes in the environmental market. It will gradually transform from TV engineering to monitoring related projects, providing more different products and services. ', 'http://www.kims.com.tw/zh-tw/', 'kim.png', 'security and industrial partners', 4, 'wow animated slow flipInX'),
(6, 'Gentech LED Lights', 'This company is confidential!', '#', 'gentech.png', 'security and industrial partners', 4, 'wow animated slow rotateIn'),
(7, 'Pacific Satellite TV', 'Pacific Satellite is a leader in the dynamic and rapidly growing fields of Digital Video Technology and Broadband Communications in the Asia-Pacific region. It is the mission of Pacific Satellite to provide the optimum technological solutions and services for our customers.', 'http://www.pacificsatellite.com/', 'pacific.png', 'satellite partners', 3, 'wow animated slow zoomIn'),
(8, 'Sogatek(Taiwan)', 'A central system integration vendor committed to becoming a complete weak power solution.  At present, most of the manufacturers are weak in the integration of various weak current systems. They can only rely on software companies to assist in research and development.', 'http://www.soga.tw/', 'sogatek.png', 'security and industrial partners', 4, 'wow animated slow bounceInRight'),
(9, 'Amity Satellite, Inc.', 'This company is confidential!', 'http://amitysatellite.com/', 'amity.png', 'satellite partners', 3, 'wow animated slow bounceInLeft'),
(10, 'CBN', 'This company is confidential!', '#', 'cbn.png', 'satelite partners', 3, 'wow animated slow fadeInUp'),
(11, 'Atitech Enterprise', 'This company is confidential!', '#', 'ati.png', 'security and industrial partners', 4, 'wow animated slow fadeInDown'),
(12, 'Haw Gua(Taiwan)', 'This company is confidential!', '#', 'haw_gua.png', 'security and idustrial partners', 4, 'wow animated slow tada'),
(13, 'Lilin CCTV Camera', 'LILIN, established in 1980,  is a leading developer of IP Video solutions for Home Automation and Custom Integration with an exceptional portfolio of innovative and award-winning products. Over the years, we have developed every type of CCTV product for every type of application.', 'http://www.lilin.tv/tag/cctv', 'lilin.png', 'security and industrial partners', 4, 'wow animated slow rotateInDownRight'),
(14, 'Ricklee Enterprises', 'Founded in 1992, Ricklee Enterprises, Inc. (REI) is a leading supplier of products for building and maintaining your hybrid fiber and coaxial (HFC) broadband network. It stocks an extensive selection products from reputed manufacturers worldwide in the cable TV industry and offers a wide array of value-added services to meet the changing requirements of today’s cable networks.', 'https://ricklee.com.ph/', 'ricklee.png', 'satellite partners', 3, 'wow animated slow rotateInUpRight');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`id`, `title`, `body`, `image`) VALUES
(1, 'Our Mission', 'GENSERV INTERNATIOINAL, INC. is aiming to be the best in the in our place by giving them the best service and work force. We are willing to be committed and to do our very best for our clients.', 'mission.png'),
(2, 'Our Vision', 'GENSERV INTERNATIOINAL, INC. we will continue to raise, READY TO BE YOUR BRIDGE TO SUCESS! In a very short time our goal is to help people conserve and save our mother earth through these best products such as LED Lights, Solar Energy, CCTV Camera, Satellite TV, Elevator, Flood Gate,iGSAT Satellite Broadband. Our Long term goal is staying with the company who believed in us.', 'vision.png'),
(3, 'Our Corporate Core Values', 'A commitment to sustainability and to acting in an environmentally friendly way,commitment to innovation and excellence, commitment to doing good for the whole, commitment to building strong communities.', 'values.png'),
(4, 'Services', 'Our services to our client\'s lies at the heart of what we do, we regularly seek our client\'s views on the service we offer and value the feedback we get. By providing the facility for feedback to be given can tell us what they think about the service we are providing at any stage, and not just when we ask for it. Where there scope of improvement we genuinely want to know that, so we can take an action.', 'services.png'),
(5, 'Quality Policy', 'Genserv International is committed to meeting customer requirements and enhancing customer satisfaction through continual improvement of its products, services and the quality management system. We recognized that the quality of the service we offer to our clients can only be achieved by having highly motivated, committed and train staff.', 'quality.png'),
(6, 'Our Products', 'LED Lighting Systems\r\nCCTV Security Systems\r\nSatellite TV Programs\r\nElevator Services\r\nWatertight Gate (Flood Control)\r\niGSAT Satellite Broadband', 'products.png');

-- --------------------------------------------------------

--
-- Table structure for table `elevator_products`
--

CREATE TABLE `elevator_products` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `category` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `product_info` mediumtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `elevator_products`
--

INSERT INTO `elevator_products` (`id`, `title`, `category`, `category_id`, `description`, `product_info`, `image`) VALUES
(1, 'Passenger Elevator', 'elevator types', 1, 'The use of a variety of materials and color combinations, very particular about the interior decoration materials, in the lines and shapes on doing all it can, focus on every detail, embodies the distinguished quiet, luxurious style, dignified and elegant, ride safe and comfortable space, gives pleasing visual experience. And differences in the use of different color temperature and different light source, you can warm yellow to bright light, reflecting the different elevator decorating style, suitable for a variety of environmental requirements to create the best atmosphere.', '<ul>\r\n<h4>PRODUCT SPECIFICATIONS</h4>\r\n<li><b>Car Wall: </b>Formica / Hairline Stainless</li>\r\n<li><b>Ceiling: </b>Multiple paint coating steel sheet</li>\r\n<li><b>Door Jamb: </b>S/S etched</li>\r\n<li><b>Doorsill: </b>Hard Aluminum alloy extruded</li>\r\n<li><b>Floor: </b>Vinyl Tile / Ceramic Tile</li>\r\n<li><b>Front Door Jamb: </b>Hairline S/S</li>\r\n<li><b>Handrail: </b>Round / Flat Handrail (Hairline Stainless)</li>\r\n<li><b>Kick Plate: </b>Hairline S/S</li>\r\n<li><b>Ventilation System: </b>Built-in silent fan</li>\r\n</ul>', 'passenger_elev.png'),
(2, 'Freight Elevator', 'elevator types', 1, 'The use of a variety of materials and color combinations, very particular about the interior decoration materials, in the lines and shapes on doing all it can, focus on every detail, embodies the distinguished quiet, luxurious style, dignified and elegant, ride safe and comfortable space, gives pleasing visual experience. And differences in the use of different color temperature and different light source, you can warm yellow to bright light, reflecting the different elevator decorating style, suitable for a variety of environmental requirements to create the best atmosphere.', '', 'freight_elevator_1.png'),
(3, 'Observation Elevator', 'elevator types', 1, 'The use of a variety of materials and color combinations, very particular about the interior decoration materials, in the lines and shapes on doing all it can, focus on every detail, embodies the distinguished quiet, luxurious style, dignified and elegant, ride safe and comfortable space, gives pleasing visual experience. And differences in the use of different color temperature and different light source, you can warm yellow to bright light, reflecting the different elevator decorating style, suitable for a variety of environmental requirements to create the best atmosphere.', '', 'observation_elevator_1.png'),
(4, 'Home Elevator', 'elevator types', 1, 'The use of a variety of materials and color combinations, very particular about the interior decoration materials, in the lines and shapes on doing all it can, focus on every detail, embodies the distinguished quiet, luxurious style, dignified and elegant, ride safe and comfortable space, gives pleasing visual experience. And differences in the use of different color temperature and different light source, you can warm yellow to bright light, reflecting the different elevator decorating style, suitable for a variety of environmental requirements to create the best atmosphere.', '', 'home_elevator_1.png'),
(5, 'Hospital Elevator', 'elevator types', 1, 'The use of a variety of materials and color combinations, very particular about the interior decoration materials, in the lines and shapes on doing all it can, focus on every detail, embodies the distinguished quiet, luxurious style, dignified and elegant, ride safe and comfortable space, gives pleasing visual experience. And differences in the use of different color temperature and different light source, you can warm yellow to bright light, reflecting the different elevator decorating style, suitable for a variety of environmental requirements to create the best atmosphere.', '', 'hospital_elevator_1.png'),
(6, 'Car Ceiling Patern', 'elevator components', 2, 'According to the features of different elevator car decoration, we have designed stainless steel circle,ti-plating tube,stainless sheet,perspex stick handrails with beautiful shaped..Customers may choose different models as they like. ', '', 'ceiling1.png'),
(7, 'Elevator Door Entrance', 'elevator components', 2, 'Koder Elevator company and design professionals enjoy a super-selection of elevator cabs to address any situation. Elevator doors are the perfect way to carry a design theme across a property, from cab interior to cab exterior and beyond. Included within this group are door skins for elevator car doors and hoistway doors in a variety of materials, finishes and patterns. ', '', 'py_301.png'),
(8, 'Elevator Flooring', 'elevator components', 2, 'Vinyl Tile is easy to design and install not breakable you can feel the nature inside the elevator car . Customize your car interior by replacing or recovering your car flooring with wood and nature design. Choose from a variety of high-quality, easy to install, luxury textures, and trendy patterns. Create personalized looks for flooring by using a good quality Vinyl tile. Designs limited only by your imagination.', '', 'flooring.png'),
(9, 'Elevator Handrail', 'elevator components', 2, 'According to the features of different elevator car decoration, we have designed stainless steel circle,ti-plating tube,stainless sheet,perspex stick handrails with beautiful shaped..Customers may choose different models as they like. ', '', 'handrail.png');

-- --------------------------------------------------------

--
-- Table structure for table `elevator_products_images`
--

CREATE TABLE `elevator_products_images` (
  `id` int(11) NOT NULL,
  `elevator_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `elevator_products_images`
--

INSERT INTO `elevator_products_images` (`id`, `elevator_id`, `name`, `image`, `description`) VALUES
(1, 1, 'PE-01', 'pe1.png', ''),
(2, 1, 'PE-02', 'pe2.png', ''),
(3, 1, 'PE-03', 'pe3.png', ''),
(4, 2, 'Freight Elevator 1', 'freight_elevator_1.png', '<ul>\r\n<li>\r\nOpening Type: 2-door leaf, side opening door(2S)</li>\r\n<li>\r\nDoor Jamb: Standard type (hairline S/S)\r\nSplay type (additional price of option)\r\n</li>\r\n<li>\r\nDoor Leaf: Paint coating steel sheet, hairline S/S (additional price of option)</li>\r\n</ul>'),
(5, 2, 'Freight Elevator 2', 'freight_elevator_2.png', '<ul>\r\n<li>\r\nOpening Type: 3-door leaf (3S)</li>\r\n<li>\r\nDoor Jamb: Standard type (hairline S/S)\r\nSplay type (additional price of option)</li>\r\n<li>\r\nDoor Leaf: Paint coating steel sheet, hairline S/S (additional price of option)</li></ul>'),
(6, 2, 'Freight Elevator 3', 'freight_elevator_3.png', '<ul>\r\n<li>\r\nOpening Type: 4-door leaf, center opening door (2CO)</li>\r\n<li>\r\nDoor Jamb: Standard type (hairline S/S)\r\nSplay type (additional price of option)</li><li>\r\nDoor Leaf: Paint coating steel sheet, hairline S/S (additional price of option)\r\n</li></ul>'),
(7, 2, 'Freight Elevator 4', 'freight_elevator_4.png', '<ul><li>\r\nOpening Type: Manual Folding Gate</li>\r\n<li>\r\nDoor Jamb: Standard type (hairline S/S)\r\nSplay type (additional price of option)</li>\r\n<li>\r\nDoor Leaf: Paint coating steel sheet, hairline S/S (additional price of option)\r\n</li>\r\n<ul>'),
(8, 3, 'Obeservation Elevator 1', 'observation_elevator_1.png', 'Car with equipment'),
(9, 3, 'Observation Elevator 2', 'observation_elevator_2.png', 'Car with equipment'),
(10, 3, 'Observation Elevator 3', 'observation_elevator_3.png', '2-door leaf, one way side opening door with control panel.'),
(11, 3, 'Observation Elevator 4', 'observation_elevator_4.png', '2-door leaf, center opening door with control panel.'),
(12, 4, 'Home Elevator 1', 'home_elevator_1.png', ''),
(13, 4, 'Home Elevator 2', 'home_elevator_2.png', ''),
(14, 4, 'Home Elevator 3', 'home_elevator_3.png', ''),
(15, 4, 'Home Elevator 4', 'home_elevator_4.png', ''),
(16, 5, 'Hospital Elevator 1', 'hospital_elevator_1.png', ''),
(17, 5, 'Hospital Elevator 2', 'hospital_elevator_2.png', ''),
(18, 6, 'PY-403', 'py-403.png', ''),
(19, 6, 'PY-404', 'py-404.png', ''),
(20, 6, 'PY-405', 'py-405.png', ''),
(21, 6, 'PY-406', 'py-406.png', ''),
(22, 6, 'PY-407', 'py-407.png', ''),
(23, 6, 'PY-408', 'py-408.png', ''),
(24, 6, 'PY-409', 'py-409.png', ''),
(25, 6, 'PY-410', 'py-410.png', ''),
(26, 6, 'PY-413', 'py-413.png', ''),
(27, 6, 'PY-7102', 'py-7102.png', ''),
(28, 6, 'PY-7111', 'py-7111.png', ''),
(29, 6, 'PY-7112', 'py-7112.png', ''),
(30, 7, 'PY-301', 'py_301.png', ''),
(31, 7, 'PY-302', 'py_302.png', ''),
(32, 7, 'PY-303', 'py_303.png', ''),
(33, 7, 'PY-304', 'py_304.png', ''),
(34, 7, 'PY-305', 'py_305.png', ''),
(35, 7, 'PY-306', 'py_306.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `floodgate_products`
--

CREATE TABLE `floodgate_products` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `product_info` mediumtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `floodgate_products`
--

INSERT INTO `floodgate_products` (`id`, `title`, `description`, `product_info`, `image`) VALUES
(1, 'Floodgate', '<p>Flood Gate System (Watertight Gate). After years of research and development, Dai Chen has designed the most trusted and top quality flood gate product in Taiwan. The company obtained patents in Taiwan, Japan, and Thailand and now in the Philippines. And by then, we became an exclusive distributor of Dai Chen products from Taiwan. </p>\r\n\r\n<p>The product has passed international testing standards and certificated by FM Approvals.</p>\r\n<ul> \r\n<h4>Wave test for the flood gate:</h4> \r\n<li>The height of wave shall be 10 cm. </li>\r\n<li>No leakage in 30 minutes and certificated by public authority unit.</li> </ul>\r\n<p>Obtained patents from America, China, Japan, Malaysia and Taiwan. The flood gate is easy to operate and can be deployed in 10 minutes by a single individual. The performance to stop flood is at 100% efficiency, and this product has already sold to Australia, China, Japan, Indonesia, Philippine and Thailand</p>', '', 'floodgate.png');

-- --------------------------------------------------------

--
-- Table structure for table `floodgate_products_images`
--

CREATE TABLE `floodgate_products_images` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `product_info` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `floodgate_products_images`
--

INSERT INTO `floodgate_products_images` (`id`, `title`, `description`, `product_info`, `image`) VALUES
(1, 'Base Plate', 'Base Plat / Rel.Material: 2 mm SUS 304 stainless steel. Capable of holding pressure load up to 80 tons. .Through the test results from MIRDC (Metal Industries Research & Development Center) .The surface is flat or level with the floor after plate installation is finished so avoid the danger of tripping.', '', 'base_plate.png'),
(2, 'Main Pill', 'Material: Aluminum Stainless Steel Alloy (With some molded parts) and EPDM Rubber Seal coated . Can be applied with a variety of different situations and mounting ways. .With stainless steel fasteners to press or adhere the plank. . EPDM Rubber (Ethylene Propylene Diene Monomer):', '<ul>\r\n<li>Widely used in car windshield.</li>\r\n<li>Ability to withstand temperatures up to 160 * and anti chemicals.</li>\r\n<li>Stable in all weather and can be used for more than 10 years.</li>\r\n</ul>', 'mainpill.png'),
(3, 'Water Tight Plank', 'Material: Aluminum Alloy EPDM Seal. The surface of each plank is coated anodized. . Each plank has a height of 16cm and 3.5cm thick. . Weight 2.785 per meter. .With 6 bones to help withstand water pressure. .With EPDM rubber strips at the bottom of each plank. .With plastic cover on both sides. . Have passed the tests from MIRDC (Metal Industries Research & Development Center): Each 1600cm2 can withstand loads up to 1300kg.', '', 'water_tight_plank.png'),
(4, 'Lockable Tightening Screw', 'Material: Stainless Steel Description. To assemble on the top of the main mullion or the bilateral mullion, rotate to tighten the planks and compact to the C type ground level.', '', 'lock.png'),
(5, 'Back Support', 'Material: Aluminum Stainless Steel Alloy. Required to withstand water pressure load: Water pressure count based on the width and height of the flood retaining door. . Have passed the load test from MIRDC (Metal Industries Research & Development Center): The width of 1 meter can withstand load 3700Kgf. .There is a base holder behind the rear:', '<ul>\r\n<li>With a base depth of the holder up to 5 cm.</li>\r\n<li>Parallel to the floor after the work is done.</li>\r\n</ul>', 'back_support.png'),
(6, 'Bracket Storage', 'Material: Stainless Steel Type: Horizontal or Vertical The products have passed international test standards and are certified by FM Approvals.test water pressure: With a water level of 70cm and average speed of more than 1 m / s. . Wave test: With wave height should be 10 cm. There is no leak in 30 minutes and is certified by FM Approved. Obtain patents from America, China, Japan, Malaysia and Taiwan. The flood retaining door can be operated easily and installed in 10 minutes with only 1 person. 100% watertight and has been sold to Australia, China, Japan, Indonesia, Philippine and Thailand.', '', 'bracket.png');

-- --------------------------------------------------------

--
-- Table structure for table `floodgate_products_videos`
--

CREATE TABLE `floodgate_products_videos` (
  `id` int(11) NOT NULL,
  `source` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `floodgate_products_videos`
--

INSERT INTO `floodgate_products_videos` (`id`, `source`) VALUES
(1, 'https://www.youtube.com/embed/DvVBcshT4-M?rel=0\" allowfullscreen=\"allowfullscreen'),
(2, 'https://www.youtube.com/embed/0XDl7c9n0Qk?list=UUi7FmxuoffSQMAji1R-fFYA?rel=0\" allowfullscreen=\"allowfullscreen'),
(3, 'http://www.youtube.com/embed/i-l95Gzszds?rel=0\" allowfullscreen=\"allowfullscreen');

-- --------------------------------------------------------

--
-- Table structure for table `genserv_projects`
--

CREATE TABLE `genserv_projects` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_address` varchar(255) NOT NULL,
  `project_details` text NOT NULL,
  `project_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genserv_projects`
--

INSERT INTO `genserv_projects` (`id`, `product_id`, `category`, `project_name`, `project_address`, `project_details`, `project_image`) VALUES
(1, 1, 'elevator projects', 'FIRST GLOBAL BUILDING', 'LEGASPI VILLAGE, MAKATI CITY', '3 UNITS/\r\n6 FLOORS/\r\n700 KG', 'firstglobal9.png'),
(2, 1, 'elevator projects', 'GLOBAL TOWER', 'BANGKAL, MAKATI CITY\r\n', '2 UNITS/\r\n15 FLOORS/\r\n600 KG', 'globaltower9.png'),
(3, 1, 'elevator projects', 'MARBELLA CONDOMINIUM', 'ROXAS BOULEVARD, PASAY CITY\r\n', '2 UNITS/\r\n14 FLOORS/\r\n1000 KG', 'marbella9.png'),
(4, 1, 'elevator projects', 'TIMSTATE BUILDING', 'SOUTH SUPER HIGH-WAY, MAKATI CITY', '1 UNIT/\r\n6 FLOORS/\r\n750 KG', 'timstate9.png'),
(5, 1, 'elevator projects', 'PREMIER VIMA INC.', 'STA CRUZ, MANILA', '1 UNIT/\r\n4 FLOORS/\r\n450 KG', 'premier9.png'),
(6, 1, 'elevator projects', 'THE BLULANE HOTEL', 'STA CRUZ MANILA', '3 UNITS/\r\n17 FLOORS/\r\n800 KG', 'blulane9.png'),
(7, 1, 'elevator projects', 'GLIESE PREMIER PROPERTIES INC.', 'QUIAPO, MANILA', '1 UNIT/\r\n8 FLOORS/\r\n550 KG', 'gliese9.png'),
(8, 1, 'elevator projects', 'GRACE ATLANTA ONE CONDOMINIUM', 'GRACE AVE GRACE VILLAGE QUEZON CITY', '2 UNITS/\r\n7 FLOORS/\r\n1000 KG', 'grace9.png'),
(9, 1, 'elevator projects', 'TECHNO PLAZA ONE', 'EASTWOOD CITY LIBIS, QUEZON CITY', '2 UNITS/\r\n5 FLOORS/\r\n1350 KG', 'techno9.png'),
(10, 2, 'matv satellite projects', 'SUNLIGHT ECO TOURISM ISLAND RESORT', 'CULION, NAGLAYAN ISLAND, PALAWAN', '', 'sunlight1.png\r\n'),
(11, 2, 'matv satellite projects', 'THE BLULANE HOTEL', 'TOMAS MAPUA ST. CORONGPIN ST. BINONDO MANILA\r\n', '', 'matv_blulane1.png'),
(12, 2, 'matv satellite projects', 'KINPO ELECTRONICS INC.', 'SANTO TOMAS, BATANGAS', '', 'kinpo1.png'),
(13, 2, 'matv satellite projects', 'DEVINE GRACE MEDICAL CENTER', 'ANTERO SORIANO HWY, GENERAL TRIAS, CAVITE', '', 'dgmc1.png'),
(14, 2, 'matv satellite projects', 'MR.STEVEN', 'FONTANA CLARK PAMPANGA', '', 'steven1.png'),
(15, 3, 'igsat satellite projects', 'BUSUANGA ISLAND PARADISE', 'BUSUANGA ISLAND PALAWAN', '', 'busuanga1.png'),
(16, 3, 'igsat satellite projects', 'SKYJET BATANES', 'BATANES', '', 'skyjet1.png'),
(17, 3, 'igsat satellite projects', 'MARCO VINCENT DIVE RESORT', 'PUERTO PRINCESA, PALAWAN', '', 'marco1.png'),
(18, 4, 'ceiling fan projects', 'BOSS CRAB HOTPOT', 'MAKATI CITY', '', 'boss1.png'),
(19, 4, 'ceiling fan projects', 'FSBH CORP', 'CALOOCAN CITY', '', 'fsbh1.png'),
(20, 4, 'ceiling fan projects', 'GENSERV INTERNATIONAL INC.', 'MAKATI CITY', '', 'genserv1.png'),
(21, 4, 'ceiling fan projects', 'OSCOPRO OPTICAL', 'MANDALUYONG CITY\r\n', '', 'oscopro1.png'),
(22, 4, 'ceiling fan projects', 'LOURDES HOSPITAL', 'MANDALUYONG CITY', '', 'lourdes1.png'),
(23, 4, 'ceiling fan projects', 'PACIFIC SATELLITE', 'MALATE CITY', '', 'pacific1.png'),
(24, 5, 'floodgate project', 'MR. STEVE SU', 'QUEZON CITY', '', 'steve1.png\r\n'),
(25, 1, 'elevator projects', 'A&S LAMPS CAVITE', 'KALAYAAN CORNER KAWIT, CAVITE', '1 UNIT/\r\n3 FLOORS/\r\n700 KG\r\n', 'a&s4.png');

-- --------------------------------------------------------

--
-- Table structure for table `genserv_project_images`
--

CREATE TABLE `genserv_project_images` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genserv_project_images`
--

INSERT INTO `genserv_project_images` (`id`, `project_id`, `image`) VALUES
(1, 1, 'firstglobal1.png'),
(2, 1, 'firstglobal2.png'),
(3, 1, 'firstglobal3.png'),
(4, 1, 'firstglobal4.png'),
(5, 1, 'firstglobal5.png'),
(6, 1, 'firstglobal6.png'),
(7, 1, 'firstglobal7.png'),
(8, 1, 'firstglobal8.png'),
(9, 2, 'globaltower1.png\r\n'),
(10, 2, 'globaltower2.png\r\n'),
(11, 2, 'globaltower3.png\r\n'),
(12, 2, 'globaltower4.png\r\n'),
(13, 2, 'globaltower5.png\r\n'),
(14, 2, 'globaltower6.png\r\n'),
(15, 2, 'globaltower7.png\r\n'),
(16, 2, 'globaltower8.png\r\n'),
(17, 3, 'marbella1.png'),
(18, 3, 'marbella2.png'),
(19, 3, 'marbella3.png'),
(20, 3, 'marbella4.png'),
(21, 3, 'marbella5.png'),
(22, 3, 'marbella6.png'),
(23, 3, 'marbella7.png'),
(24, 3, 'marbella8.png'),
(25, 4, 'timstate1.png'),
(26, 4, 'timstate2.png'),
(27, 4, 'timstate3.png'),
(28, 4, 'timstate4.png'),
(29, 4, 'timstate5.png'),
(30, 4, 'timstate6.png'),
(31, 4, 'timstate7.png'),
(32, 4, 'timstate8.png'),
(33, 5, 'premier1.png'),
(34, 5, 'premier2.png'),
(35, 5, 'premier3.png'),
(36, 5, 'premier4.png'),
(37, 5, 'premier5.png'),
(38, 5, 'premier6.png'),
(39, 5, 'premier7.png'),
(40, 5, 'premier8.png'),
(41, 6, 'blulane1.png'),
(42, 6, 'blulane2.png'),
(43, 6, 'blulane3.png'),
(44, 6, 'blulane4.png'),
(45, 6, 'blulane5.png'),
(46, 6, 'blulane6.png'),
(47, 6, 'blulane7.png'),
(48, 6, 'blulane8.png'),
(49, 7, 'gliese1.png'),
(50, 7, 'gliese2.png'),
(51, 7, 'gliese3.png'),
(52, 7, 'gliese4.png'),
(53, 7, 'gliese5.png'),
(54, 7, 'gliese6.png'),
(55, 7, 'gliese7.png'),
(56, 7, 'gliese8.png'),
(57, 8, 'grace1.png'),
(58, 8, 'grace2.png'),
(59, 8, 'grace3.png'),
(60, 8, 'grace4.png'),
(61, 8, 'grace5.png'),
(62, 8, 'grace6.png'),
(63, 8, 'grace7.png'),
(64, 8, 'grace8.png'),
(65, 9, 'techno1.png'),
(66, 9, 'techno2.png'),
(67, 9, 'techno3.png'),
(68, 9, 'techno4.png'),
(69, 9, 'techno5.png'),
(70, 9, 'techno6.png'),
(71, 9, 'techno7.png'),
(72, 9, 'techno8.png'),
(73, 10, 'sunlight2.png'),
(74, 10, 'sunlight3.png'),
(75, 11, 'matv_blulane2.png'),
(76, 11, 'matv_blulane3.png'),
(77, 12, 'kinpo2.png'),
(78, 12, 'kinpo3.png'),
(79, 13, 'dgmc2.png'),
(80, 13, 'dgmc3.png'),
(81, 14, 'steven2.png'),
(82, 14, 'steven3.png'),
(83, 15, 'busuanga2.png'),
(84, 15, 'busuanga3.png'),
(85, 16, 'skyjet2.png'),
(86, 16, 'skyjet3.png'),
(87, 17, 'marco2.png'),
(88, 17, 'marco3.png'),
(89, 18, 'boss2.png'),
(90, 19, 'fsbh2.png'),
(91, 20, 'genserv2.png'),
(92, 21, 'oscopro2.png'),
(93, 22, 'lourdes2.png'),
(94, 23, 'pacific2.png'),
(95, 24, 'steve2.png'),
(96, 24, 'steve3.png'),
(97, 25, 'a&s1.png'),
(98, 25, 'a&s2.png'),
(99, 25, 'a&s3.png'),
(100, 25, 'a&s4.png'),
(101, 25, 'a&s5.png'),
(102, 25, 'a&s6.png'),
(103, 25, 'a&s7.png');

-- --------------------------------------------------------

--
-- Table structure for table `genserv_story`
--

CREATE TABLE `genserv_story` (
  `id` int(11) NOT NULL,
  `page` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genserv_story`
--

INSERT INTO `genserv_story` (`id`, `page`, `image`) VALUES
(1, '<b>Established in 1999, <abbr title=\"GLOBAL PACIFIC CONGLOMERATES, Inc. \">GPCI </abbr></b>has provided Metro Manila and surrounding municipalities with communication monitoring systems for cable televisions, closed circuit televisions (CCTV), and MATV. GPCI has maintained its position as a market leader in the Design, Supply, Fabrication and Installation of Program Data and other associated technologies. It has done this by maintaining highly trained and skilled engineers, installation and maintenance technicians strengthened by a competent management team in sales and marketing, client services and accounts. On the same year, this team spearheaded a partnership with GLOBAL CABLE TELEVISION, INC. (GCTV) to provide underground communication services for the Skyway Project.', 'history1.png'),
(2, 'In the year <b>2001</b>, the company conceived of a program using satellite technology to deliver lessons to areas without teachers or classrooms. The objective was to improve teaching and education for English, mathematics and science subjects to these communities. This enabled communities to arrange classes wherever they could set up a receiver and a television monitor. Despite being the smallest company among the bidders, <b><abbr title=\"GLOBAL PACIFIC CONGLOMERATES, Inc. \">GPCI </abbr></b> won the award. Department of Education awarded the contract to <b><abbr title=\"GLOBAL PACIFIC CONGLOMERATES, Inc. \">GPCI </abbr></b> based on having the best offer in terms of technology (due to the partnership with Mabuhay Satellite). And this event was seconded by another discovery and learning project through satellite broadcast duly signed and approved by the Department of Education, but failed to go further due to change in administration in the government. ', 'history2.png'),
(3, 'In <b>2002, <abbr title=\"GLOBAL PACIFIC CONGLOMERATES, Inc. \">GPCI </abbr></b> promotes and introduce Dream Satellite to foreign market and lasted for <b>6 years until 2008.</b>', 'history3.png'),
(4, 'In the year <b>2003</b>, established the Communication Project in TransGlobal Clark, Pampanga, which includes products and services on communication systems, MATV, CATV CCTV and Internet.', 'history4.png'),
(5, 'In <b>2004, <abbr title=\"GLOBAL PACIFIC CONGLOMERATES, Inc. \">GPCI </abbr></b> invites Acer Taiwan Special Team to a feasibility study for China Railway Project, which introduced 3-in-1 solutions that comprises of television (TV), internet and phone.', 'history5.png'),
(6, 'In <b>2007</b>, due to change of stockholders and the company\'s direction to widen its products and services, <b><abbr title=\"GLOBAL PACIFIC CONGLOMERATES, Inc. \">GPCI </abbr></b> was reorganized and its name was changed to <b>Genserv International, Inc.</b> The new company is fully capable of undertaking big projects despite its limitations. <b>Genserv International, Inc.</b> has continued to provide clients with communication services, in addition to providing supplies and services for alternative energy products.', 'history6.png'),
(7, 'In <b>2008</b>, the company introduced the <b><abbr title=\"Global Satellite\">GSAT</abbr></b> to both local and foreign market. <b><abbr title=\"Global Satellite\">GSAT</abbr></b> is the best alternative source of international entertainment and information in areas beyond the reach of cable television. It was born out of response to the growing demand for a better direct-to-home satellite TV provider across the Philippines. With its vast satellite footprint, its signal also reaches Asian countries like Mongolia, China, Japan, North and South Korea, Taiwan, Malaysia and other parts of South Asia.', 'history7.png'),
(8, 'Starting <b>2010</b>, <b>Genserv International Inc.</b> was engaged in providing the Philippines with the best products and technology to minimize the carbon footprint in our country, through renewable solar energy, wind energy. <b>Genserv International Inc.</b> also continue providing LED lighting products and services such as indoor and outdoor lighting design. We provide high quality LED products from Taiwan, which are significantly reliable, much lower in power consumption, cost effective and environmentally friendly.', 'history8.png'),
(9, 'We also provide home and business security through our network-based and Internet-enabled CCTV security systems. With reliable products from Taiwan, our surveillance cameras, digital video recorders (DVRs), and other parts and accessories, keeps your security worries away. Aside from our products, we also provide installation and maintenance services. At the last quarter of <b>2010</b>, we partnered with <b>KODER</b> Elevator Company, former member of a Japan brand distributor company in Taiwan, which was established <i>twenty (20)</i> years ago specializing elevator installation, replacement and maintenance more than <i>200</i> successfully finished projects in Taiwan to date, and expanded its services to the Philippines. In <b>2011</b>, we started Elevator Business providing installation, elevator replacement, and design services.', 'history9.png'),
(10, 'In the year <b>2015 Genserv International Inc.</b> expands its product and services to the Flood Gate System (Watertight Gate). After years of research and development, <b>Dai Chen</b> has designed the most trusted and top quality flood gate product in Taiwan. The company obtained patents in Taiwan, Japan, and Thailand and now in the Philippines. And by then, we became an exclusive distributor of <b>Dai Chen</b> products from Taiwan.', 'history10.png'),
(11, 'At the last quarter of <b>2015, iGSAT Internet Satellite Broadband</b> was launched. <b>iGSAT</b> Broadband provides exceptional performance, with its durability and reliability, that covers even in the most remote areas nationwide, to support maritime industry, medical facilities, government offices, schools, as well as military and police communications.', 'history11.png'),
(12, 'And as of this year <b><?php echo $d = date(\"Y\");?></b>, we are still continuing to grow and making way to new products and technologies, like the Summit Water System and Battery Recovery System.', 'history12.png'),
(13, 'For the past <b><?php echo $d=date(\"Y\") - 1999;?> years</b>, we continued to grow, and widen our wings through better product selections and provide the best and most reliable services to our clients as they are considered our priority our job number one. We pledged to continue to find better ways to provide only the best in terms of products and services.', 'history13.png');

-- --------------------------------------------------------

--
-- Table structure for table `industrial_and_security_products`
--

CREATE TABLE `industrial_and_security_products` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `product_info` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `industrial_and_security_products`
--

INSERT INTO `industrial_and_security_products` (`id`, `title`, `category`, `category_id`, `description`, `product_info`, `image`) VALUES
(1, 'Digital Video Recorder(DVR)', 'cctv products', 1, 'A digital video recorder (DVR) is an electronic device that records video in a digital format to a disk drive, USB flash drive, SD memory card, SSD or other local or networked mass storage device. The term includes set-top boxes with direct to disk recording, portable media players and TV gateways with recording capability, and digital camcorders. Personal computers are often connected to video capture devices and used as DVRs; in such cases the application software used to record video is an integral part of the DVR. Many DVRs are classified as consumer electronic devices; such devices may alternatively be referred to as personal video recorders (PVRs), particularly in Canada.', '<h4>PRODUCT INFORMATION</h4> <h5>KIM-8104HTVI / KIM-8108HTVI / KIM-8116HTVI KIM-8100 Series Full HD 1080p TVI DVR monitor video host</h5><h4 class=\"m-4\">PRODUCT SPECIFICATIONS</h4><ul><li>4/8 / 16CH, 960H / 720P / 1080P TVI video and playback</li><li>Highest compression and better quality with the latest H.264 video compression technology </li><li>Dual streams can be used on both the network and the local side Set different H.264 compression quality and can output at the same time </li><li>Support 3G mobile browsing (iPhone / iPad / Android)</li> <li>Hard disk data retention days / daylight saving time / network time setting</li> <li>Remote control and keyboard control DVR group ID Set</li> <li>Compatible with traditional 960H camera</li> <li>Displacement function can be scheduled to be scheduled to start</li> <li>USB or remote firmware update</li> <li>Smart screen settings: Immediate / Playback screen Digital zoom </li><li>Playback screen digit Zoom / Play back camera Header / Date Time Position Move</li> <li>View the system action and network connection User record function</li> <li>User rights management</li> <li>Video data can be directly AVI transfer backup </li><li>DVR control: panel buttons, remote control, mouse, control keyboard, network</li> <li>Support MAC remote Monitoring</li> <li>Support NVMS-1000 control software</li></ul>', 'dvr.png'),
(2, 'Bullet Camera', 'cctv products', 1, 'This Bullet Camera can use in any place good high quality and very clear ', '<h4>PRODUCT INFORMATION</h4> <h5>KIM-9135T HD-TVI megapixel infrared camera</h5><h4 class=\"m-4\">PRODUCT SPECIFICATIONS</h4><ul><li>Camera components using TVI Hi-Res 1/3 \"Sensor </li><li>Resolution of megapixel 720P</li> <li>High hardness alloy housing, tough and durable</li> <li>Infrared projection distance up to 30 meters </li><li>Medium hole anti-halo lens design</li> <li>High Transmittance optical glass, better illumination</li> <li>Support OSD multi-function control menu</li> <li>Low power consumption, high power and energy saving design</li> <li>With contour correction function, no distortion during infrared start distortion</li> <li>Infrared LED light source automatically when light is low </li><li>Day and night mode Auto Switching function</li> <li>With light suppression function and automatic light source judgment function</li> <li>To prevent radio frequency interference circuit design</li> <li> ATW, backlight compensation function, according to the image automatically adjust the brightness</li></ul>', 'bullet.png'),
(3, 'Dome Camera', 'cctv products', 1, 'This Dome Camera can use in any place good high quality and very clear ', '<h4>PRODUCT INFORMATION</h4> <h5>KIM-9250T HD-TVI hemisphere type megapixel infrared camera</h5><h4 class=\"m-4\">PRODUCT SPECIFICATIONS</h4><ul><li>Camera components are TVI Hi-Res 1/3 \"Sensor </li><li>Resolution up to 720P </li><li>360 omni directional adjustable housing</li> <li>Infrared projection distance of up to 15 meters</li> <li>In-hole separation anti-halo lens design </li><li>High transmittance optical glass with better illumination </li><li>Support OSD multi-function</li></ul>', 'dome.png'),
(4, 'Ceiling Circulation Fan', 'circulation fan', 2, '<p>This Product can be used in House, Office, Store, Classroom of School, Hospital or Clinic. Entertainment Place, Basement and any indoor places where the ventilation is poor.</p> ', '<h4>PRODUCT INFORMATION</h4> <p>Cool and relax, Unique design rotary direction, promoting air convection and the indoor temperature quickly reach all corners of average temperature effect.  This ceiling circulation fan is using high quality ball bearing to make ceiling fan smooth, silent and durable. Applicable: Home, Office Buildings, Commercial space, Remedial classes, Public institutions, Schools are applicable.</p><h4 class=\"m-4\">PRODUCT SPECIFICATIONS</h4><ul><li><b>Model :</b> PB-123</li><li><b>Power :</b> AC 220V 60Hz</li><li><b>Speed :</b> Low, Medium, High</li><li><b>Electrical (W):</b> Low 27W, Medium 37W, High 47W</li><li><b>Air Speed (CMH):</b> Low 800CMH, Medium 1200CMH, High 1500CMH </li><li><b>Noise (dBA) :</b> Low 39dB, Medium 50dB, High 58dB</li><li><b>Weight (Kg) :</b> 4.5</li><li><b>Dimmension (mm) :</b> 600mmx600mmx218mm</li></ul>\r\n<br>\r\n<h4 class=\"text-center\">Ceiling Circulation Fan Video</h4>\r\n<div class=\"row\">\r\n<div class=\"col-sm-12\">\r\n<div class=\"card\">\r\n<iframe align=\'center\' width=\'100%\' height=\'400px\'\r\n src=\"http://www.youtube.com/embed/bb-WjSP6Q5Q?rel=0\" allowfullscreen=\"allowfullscreen\">\r\n</iframe>\r\n</div>\r\n</div></div>', 'ceiling_circulation_fan.png');

-- --------------------------------------------------------

--
-- Table structure for table `industrial_and_security_products_images`
--

CREATE TABLE `industrial_and_security_products_images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `industrial_and_security_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `industrial_and_security_products_images`
--

INSERT INTO `industrial_and_security_products_images` (`id`, `name`, `industrial_and_security_id`, `image`, `description`) VALUES
(1, 'Ceiling Fan Image', 4, 'ceiling_circulation_fan_1.png', ''),
(2, 'Ceiling Fan Image', 4, 'ceiling_circulation_fan_2.png', ''),
(3, 'Ceiling Fan Image', 4, 'ceiling_circulation_fan_3.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `info` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `description`, `info`, `image`) VALUES
(1, 'I.T. Personnel', 'Must have basic understanding in networking, computer hardware trouble shooting. Basic Knowledge in Web design and PHP is a plus.', 'Must be graduate of BSIT, BSCS or other IT Program.', 'job1.png');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `info` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `info`, `image`) VALUES
(1, 'Electric Winch For Hire', 'This item is for hire. Please contact us for more details.', 'COME UP\r\nElectric Winch\r\nModel: CP-500\r\nLoad: 500KG\r\nSpeed: 12~19 M/min\r\nVolts: 220V, 60Hz\r\nMotor: 2.5 HP x 4 P\r\nMade in TAIWAN', 'electric_winch1.png'),
(2, 'Satellite TV', 'Buy our package for 4,500 pesos only with 3 months advanced subscriptions. Available anywhere in the Philippines.', 'Please call us for more info.', 'gsat_satellite.png');

-- --------------------------------------------------------

--
-- Table structure for table `products_services`
--

CREATE TABLE `products_services` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `animation` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_services`
--

INSERT INTO `products_services` (`id`, `title`, `body`, `image`, `animation`, `source`) VALUES
(1, 'Elevator Product and Services', 'The KODER elevator compassed many of the common attributes expected by today’s modern society, safety, reliability, performance, comfort and a design based on human needs. It is the result of the company’s research and development efforts and embraces the latest leading edge technology complied with the proceeding might and the versatility of the humble microprocessor. Versatility is achieved via programmable micro-controllers, the software which can be written to cater to the exact requirements of the client. Our engineers have made every effort to ensure simplicity in the system design while at the same time maintaining system efficiency and versatility.', 'elevator.png', 'wow animated slow fadeInUpBig', 'elevator_products'),
(2, 'Satellite Product and services', 'GLOBAL SATELLITE (G-SAT) is the best alternative source of international entertainment and information in areas beyond the reach of cable television. It was born out of response to the growing demand for a better direct-to-home satellite TV provider across the Philippines. With its vast satellite footprint, its signal also reaches Asian countries like Mongolia, China, Japan, North and South Korea, Taiwan, Malaysia and other parts of South Asia.The superior coverage of its satellite provider is even complemented by the intense security protection of its conditional access provider. This ensures security of the program content, the access system and the very technology that DTH system utilizes. Capitalizing on the latest multi-media technology,GSAT aims to carry communication and entertainment services in an affordable package that would cater to the general public. Its programming is centered on offering wide range of genre to entertain.\r\n\r\n', 'satellite.png', 'wow animated slow swing', 'satellite_products'),
(3, 'Water Gate', 'Genserv International Inc. expands its product and services to the Flood Gate System (Watertight Gate) we are the EXCLUSIVE DISTRIBUTOR of DAI-CHEN PRODUCTS. After years of research and development, Dai Chen has designed the most trusted and top quality flood gate product in Taiwan. The company obtained patents in Taiwan, Japan,Thailand, Australia and Philippines. And by then, we became an exclusive distributor of Dai Chen products from Taiwan. Floodgate Sytem Originally it was an aluminum window company. As the company grew stronger, it expanded its product line to include flood gate systems. After a few years of research and development, Floodgate has developed the highest quality and most trusted flood gate system in Taiwan.', 'floodgate.png', 'wow animated slow slideInLeft', 'floodgate_products'),
(4, 'Ceiling Circulation Fan', 'GENTECH Ceiling Circulation Fan / Energy Saving Fan is a brilliant ceiling fan with unique design and state of the art technology. The unique design concepts breaking the conventional ceiling fans, enhancing the airflow movement and refreshing air throughout indoor environment. It can satisfy all differentkind of condition requirements, and bring you a healthy, comfortable and energy saving life.', 'ceilingfan.png', 'wow animated slow slideInRight', 'industrial_and_security_products/product_info/4'),
(5, 'Security Products', 'CCTV (closed-circuit television) is a TV system in which signals are not publicly distributed but are monitored, primarily for surveillance and security purposes. CCTV relies on strategic placement of cameras, and observation of the camera\'s input on monitors somewhere. Because the cameras communicate with monitors and/or video recorders across private coaxial cable runs or wireless communication links, they gain the designation \"closed-circuit\" to indicate that access to their content is limited by design only to those able to see it. Older CCTV systems used small, low-resolution black and white monitors with no interactive capabilities. Modern CCTV displays can be color, high-resolution displays and can include the ability to zoom in on an image or track something (or someone) among their features. Talk CCTV allows an overseer to speak to people within range of the camera\'s associated speakers. We are an exclusive distributor of KIM security products.', 'cctv.png', 'wow animated slow bounce', 'industrial_and_security_products');

-- --------------------------------------------------------

--
-- Table structure for table `satellite_products`
--

CREATE TABLE `satellite_products` (
  `id` int(11) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `product_info` mediumtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satellite_products`
--

INSERT INTO `satellite_products` (`id`, `category`, `category_id`, `title`, `description`, `product_info`, `image`) VALUES
(1, 'gsat satellite', 1, 'Platinum Package', 'GLOBAL SATELLITE (G-SAT) is the best alternative source of international entertainment and information in areas beyond the reach of cable television. It was born out of response to the growing demand for a better direct-to-home satellite TV provider across the Philippines. With its vast satellite footprint, its signal also reaches Asian countries like Mongolia, China, Japan, North and South Korea, Taiwan, Malaysia and other parts of South Asia. The superior coverage of its satellite provider is even complemented by the intense security protection of its conditional access provider. This ensures security of the program content, the access system and the very technology that DTH system utilizes. Capitalizing on the latest multi-media technology,GSAT aims to carry communication and entertainment services in an affordable package that would cater to the general public. Its programming is centered on offering wide range of genre to entertain, inform and educate the viewers. ', '<h3>PRODUCT INFORMATION</h3>\r\n<ul>\r\n<p>Platinum Package is composed of:</p> \r\n<li>103 TV Programs</li> \r\n<li>10 Radio Stations</li> \r\n<li>500 php Monthly</li></ul>', 'gsat500.png'),
(2, 'gsat satellite', 1, 'Executive Package', 'GLOBAL SATELLITE (G-SAT) is the best alternative source of international entertainment and information in areas beyond the reach of cable television. It was born out of response to the growing demand for a better direct-to-home satellite TV provider across the Philippines. With its vast satellite footprint, its signal also reaches Asian countries like Mongolia, China, Japan, North and South Korea, Taiwan, Malaysia and other parts of South Asia. The superior coverage of its satellite provider is even complemented by the intense security protection of its conditional access provider. This ensures security of the program content, the access system and the very technology that DTH system utilizes. Capitalizing on the latest multi-media technology,GSAT aims to carry communication and entertainment services in an affordable package that would cater to the general public. Its programming is centered on offering wide range of genre to entertain, inform and educate the viewers. ', '<h3>PRODUCT INFORMATION</h3>\r\n<ul>\r\n<p>Executive Package is composed of:</p> \r\n<li>72 TV Programs</li> \r\n<li>10 Radio Stations</li> \r\n<li>300 php Monthly</li></ul>', 'gsat300.png'),
(3, 'gsat satellite', 1, 'Family Package', 'GLOBAL SATELLITE (G-SAT) is the best alternative source of international entertainment and information in areas beyond the reach of cable television. It was born out of response to the growing demand for a better direct-to-home satellite TV provider across the Philippines. With its vast satellite footprint, its signal also reaches Asian countries like Mongolia, China, Japan, North and South Korea, Taiwan, Malaysia and other parts of South Asia. The superior coverage of its satellite provider is even complemented by the intense security protection of its conditional access provider. This ensures security of the program content, the access system and the very technology that DTH system utilizes. Capitalizing on the latest multi-media technology,GSAT aims to carry communication and entertainment services in an affordable package that would cater to the general public. Its programming is centered on offering wide range of genre to entertain, inform and educate the viewers. ', '<h3>PRODUCT INFORMATION</h3>\r\n<ul>\r\n<p>Family Package is composed of:</p> \r\n<li>103 TV Programs</li> \r\n<li>10 Radio Stations</li> \r\n<li>200 php Monthly</li></ul>', 'gsat200.png'),
(4, 'gsat satellite', 1, 'Standard Package', 'GLOBAL SATELLITE (G-SAT) is the best alternative source of international entertainment and information in areas beyond the reach of cable television. It was born out of response to the growing demand for a better direct-to-home satellite TV provider across the Philippines. With its vast satellite footprint, its signal also reaches Asian countries like Mongolia, China, Japan, North and South Korea, Taiwan, Malaysia and other parts of South Asia. The superior coverage of its satellite provider is even complemented by the intense security protection of its conditional access provider. This ensures security of the program content, the access system and the very technology that DTH system utilizes. Capitalizing on the latest multi-media technology,GSAT aims to carry communication and entertainment services in an affordable package that would cater to the general public. Its programming is centered on offering wide range of genre to entertain, inform and educate the viewers. ', '<h3>PRODUCT INFORMATION</h3> <ul> <p>Family Package is composed of:</p>  <li>34 TV Programs</li>  <li>10 Radio Stations</li>  <li>99 php Monthly</li></ul>', 'gpinoy.png'),
(5, 'iptv package', 2, 'IPTV (Internet Protocol Television)', 'The conventional methods to serve the television programs like cables, satellite or broadcasting are getting replaced with the broadband cables used for internet. IPTV (Internet Protocol Television) is a system where digital television services are delivered over the internet by using Internet Protocol. ', '<h3>PRODUCT INFORMATION</h3>\r\n<p>OTT TV Box is an innovative multimedia center with an android based operating sysem that allows you to play and view content without paying for cable or any monthly subscriptions, Just plug it in and discover a whole world of live TV, TV shows, sporting events,photos, music and more! </p>\r\n<ul>\r\n<h4>Hardware</h4>\r\n<li><b>CPU: </b>ARM Cortex Cuad-Core</li>\r\n<li><b>DRAM: </b>2GB DDR3</li>\r\n<li><b>Flash Memory: </b>8GB/16GB</li>\r\n</ul>\r\n<ul>\r\n<h4>Software</h4>\r\n<li><b>Operating System: </b>Android 4.4</li>\r\n<li><b>User Interface: </b>Windows 8 Interface and Android the original.</li>\r\n</ul>\r\n\r\n<ul>\r\n<h4>Audio and Video Formats</h4>\r\n<li><b>Video Resolution: </b>Up to 4kx2k ,3D-HD(1080Px2)</li>\r\n<li><b>Video Formats: </b>MPEG-1 MP/HL,MPEG-2 MP/HL,MPEG-4 Part 2,ASP,WMV/VC-1 SP/MP/AP,H.264 HP@L4.1,H.265,REAMDEO 8/9/10,M-JPEG & JPEG\r\n</li> \r\n<li><b>Video Codecs: </b>MPEG,MPE,MPG,M2V,ISO,TS,VOB,DAT,AVI,MKV,MP4,MOV,3GP,3GPP,FLC,WMV,TS,FLV,RM | Video Subtitles: SRT,SUB,IDX,PGS</li>\r\n<li><b>Audio Codecs: </b>ACC,AC-3,ADPCM,AMR-NB,MIDI,MP2,MP3,MS-ADPCM,PCM,RV40</li></ul>\r\n\r\n<ul>\r\n<h4>What\'s included?</h4>\r\n<li>OTT TV Box</li>\r\n<li>Power Adaptor</li>\r\n<li>Remote Control</li>\r\n<li>HDMI Cable</li>\r\n<li>AV Cable</li>\r\n<li>OTTV Box Manual</li>\r\n</ul>\r\n\r\n<ul>\r\n<h4>Channel</h4>\r\n<li>It has 150 channels(Taiwan, Hongkong and China Programs)</li>\r\n</ul>', 'iptv.png'),
(6, 'igsat satellite', 3, 'iGSAT Satellite Internet', 'iGsat Broadband delivers reliable, high speed, always on internet access to homes without depending on the availability of terrestrial networks. Our network connects entirely via Satellite. Whether you are in the city or the depths of the countryside or hard to reach areas, you will be able to enjoy broadband connection wherever you are \r\n', '<h3>PRODUCT INFORMATION</h3>\r\n<p>iGSAT Broadband gives exceptional performance and durability with nationwide coverage, even in the remotest areas, to support the maritime industry, medical facilities, government offices, schools, as weel as military and police comminication, command and peace and order monitoring.</p>\r\n<ul><h4>iGSAT is very POWERFUL, UNIVERSAL and ACCESSIBLE!</h4>\r\n<li>First in Asia using this technology</li>\r\n<li>High Speed, managed broadband</li>\r\n<li>Complimentary to fiber and backup for cable</li>\r\n<li>Imrove service and business effeciency</li>\r\n<li>Easy acquisition, easy installation.</li></ul>\r\n\r\n<ul>\r\n<h4>Equipment Cost Package Includes:</h4>\r\n<li>Satellite Dish</li>\r\n<li>Internet LNB(iLNB)</li>\r\n<li>Internet Modem</li>\r\n</ul>\r\n<ul>\r\n<h4>IGSAT Equipment Cost<h4>\r\n<h5>P31,999</h5>\r\n<li><b>Dish Size: </b>1m</li>                     <li><b>iLNB: </b>800mW / 2W</li>\r\n<li><b>Modem: </b>18V / 24V</li></br>\r\n<h5>P34,999</h5>\r\n<li><b>Dish Size: </b>1.2m</li>\r\n<li><b>iLNB: </b>2W</li>\r\n<li><b>Modem: </b>24V</li>\r\n</ul>\r\n\r\n<ul>\r\n<h4>Subscription Packages:</h4>\r\n<li>1Mbps/250kbps (8GB) <b>P3,000</b></li>\r\n<li>2Mbps/500kbps (12GB) <b>P5,000</b></li>\r\n<li>5Mbps/500kbps (12GB)  <b>P12,000</b></li>\r\n<li>7Mbps/1Mbps (50GB)  <b>P16,500</b></li></ul>\r\n\r\n<ul><h4>Note</h4>\r\n<li>Installation and Fabrication not yet included in the price</li>\r\n<li>Client will be the one would shoulder the transportation, freight of equipment, meal, accommodation of Technical Team.</li></ul>\r\n\r\n\r\n', 'igsat.png'),
(7, 'igsat satellite', 3, 'Bandwith Controller', 'The BANDWIDTH CONTROL SYSTEM is an original creation of AGN Solutions that enables businesses generate extra income by offering packet-size internet connectivity through a WiFi router that acts as a vending machine in its store or establishment.', '<h3>PRODUCT INFORMATION</h3>\r\n<ul><h4>WG-604 Hotspot Gateway</h4>\r\n<li>Up to 200 concurrent users ever on a HotSpot gateway/router.</li>\r\n<li> 3.5 times faster as bundling core processor with separate WLAN module.</li>\r\n<li> 3 antennas to offer unparalleled performance.</li>\r\n<li> Compatible with IEEE 802.11 b/g/n wireless LAN 2T3R.</li>\r\n<li> Web-based authentication and management.</li></ul>\r\n<ul>\r\n<h4>AG-300E FEATURE</h4>\r\n<li>Multi-function printer for account report printout.</li>\r\n<li>IEEE 802.3af PoE (power over ethernet).</li>\r\n<li>One PS/2 port for connecting to a keypad.</li>\r\n<li>10/100 mbps transfer LED light.</li>\r\n<li>Press combination hotkeys to generate billing and system summary.</li></ul>\r\n\r\n<h4>APPLICABLE FOR:</h4>\r\n<p>Hotel, restaurant, coffee shop and public wifi.</p>\r\n', 'bandwith.png'),
(8, 'matv', 4, 'Satellite Cable System(MATV/CATV)', 'Cable television is a system of delivering television programming to paying subscribers via radio frequency (RF) signals transmitted through coaxial cables, or in more recent systems, light pulses through fiber-optic cables. ... The abbreviation CATV is often used for cable television. \r\n', '<h3>PRODUCT INFORMATION</h3>\r\n<p>The cable network mimics the over-the-air radio frequency broadcast signals that you would receive via a TV antennae, but they are carried on cable. Television signals are transmitted in 6-MHz channels.CATV is a shared cable system that uses a tree-and-branch topology in which multiple households within a neighborhood share the same cable. The topology of the CATV system. </p>\r\n\r\n<ul>\r\n<li><b>Source: </b>6ft diameter Satellite</li>\r\n<li><b>Box Reciever: </b>Gsat Satellite Box Reciever</li>\r\n<li><b>Channels: </b>Local & International</li>\r\n</ul>\r\n\r\n<ul>\r\n<h4>\r\nThis system is application for:</h4>\r\n<li>Condominium</li>\r\n<li>Hotel</li>\r\n<li>Resorts</li>\r\n<li>Factories</li>\r\n</ul>', 'matv.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brochure`
--
ALTER TABLE `brochure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_partners`
--
ALTER TABLE `business_partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elevator_products`
--
ALTER TABLE `elevator_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elevator_products_images`
--
ALTER TABLE `elevator_products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floodgate_products`
--
ALTER TABLE `floodgate_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floodgate_products_images`
--
ALTER TABLE `floodgate_products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floodgate_products_videos`
--
ALTER TABLE `floodgate_products_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genserv_projects`
--
ALTER TABLE `genserv_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genserv_project_images`
--
ALTER TABLE `genserv_project_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genserv_story`
--
ALTER TABLE `genserv_story`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industrial_and_security_products`
--
ALTER TABLE `industrial_and_security_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industrial_and_security_products_images`
--
ALTER TABLE `industrial_and_security_products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_services`
--
ALTER TABLE `products_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `satellite_products`
--
ALTER TABLE `satellite_products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brochure`
--
ALTER TABLE `brochure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `business_partners`
--
ALTER TABLE `business_partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `elevator_products`
--
ALTER TABLE `elevator_products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `elevator_products_images`
--
ALTER TABLE `elevator_products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `floodgate_products`
--
ALTER TABLE `floodgate_products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `floodgate_products_images`
--
ALTER TABLE `floodgate_products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `floodgate_products_videos`
--
ALTER TABLE `floodgate_products_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genserv_projects`
--
ALTER TABLE `genserv_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `genserv_project_images`
--
ALTER TABLE `genserv_project_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `genserv_story`
--
ALTER TABLE `genserv_story`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `industrial_and_security_products`
--
ALTER TABLE `industrial_and_security_products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `industrial_and_security_products_images`
--
ALTER TABLE `industrial_and_security_products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products_services`
--
ALTER TABLE `products_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `satellite_products`
--
ALTER TABLE `satellite_products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
