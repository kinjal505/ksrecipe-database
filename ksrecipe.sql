-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20221125.2e001c186a
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2022 at 07:19 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ksrecipe`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseid` int(11) NOT NULL,
  `coursename` varchar(20) DEFAULT NULL,
  `courseperiod` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseid`, `coursename`, `courseperiod`) VALUES
(111, 'dessert', 1.5),
(112, 'snacks_breakfast', 2),
(113, 'maincourse', 1),
(115, 'baking', 1),
(117, 'beverages', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `coursereview`
-- (See below for the actual view)
--
CREATE TABLE `coursereview` (
`coursename` varchar(20)
,`courseperiod` float
,`recipename` varchar(25)
);

-- --------------------------------------------------------

--
-- Table structure for table `ingridients`
--

CREATE TABLE `ingridients` (
  `ingridientid` int(11) NOT NULL,
  `ingridientsname` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ingridients`
--

INSERT INTO `ingridients` (`ingridientid`, `ingridientsname`) VALUES
(201, 'jaggery_water_dryfruits'),
(202, 'butter_wheatflour_salt_oil_water_choopedgreenchillies'),
(203, 'milk_oreobuscuits_sugar'),
(205, 'milk_cofeepowder_water_sugar'),
(207, 'oil_curd_wheatflour_milkpowder_salt_powdersugar'),
(208, 'rowbanana_wheatflour_mixmasala_oil'),
(209, 'dudhicrushed__mixmasala_water_oil_tomatopuree'),
(300, 'capsicum_tomato_water_oil_mixmasala'),
(301, 'mixmasala_paneer_milk_oil_tomatopuree'),
(302, 'sugar_crushedchocolatecrambuscuits_milk_bakingsoda'),
(303, 'pasta_choppedtomato_water_oil_mixmasala'),
(305, 'boiledpasta_choppedtomato_wheatflour_butter_mixmasala_milk_blackpaper'),
(307, 'chocolateslabes'),
(308, 'whitechocolateslabes_condesedmilk'),
(309, 'karelaskin_wheatflour_oil_salt_mixmasala'),
(500, 'rawbanana_oil_salt_chatmasala'),
(501, 'jaggery_wheatflour_udaddalboiled'),
(502, 'chocolatesyrup_milk_sugar'),
(503, 'chopedchiku_milk_sugar');

-- --------------------------------------------------------

--
-- Table structure for table `quantity`
--

CREATE TABLE `quantity` (
  `quantityid` int(11) NOT NULL,
  `ingridientquantity` varchar(200) DEFAULT NULL,
  `ingridientid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quantity`
--

INSERT INTO `quantity` (`quantityid`, `ingridientquantity`, `ingridientid`) VALUES
(101, '1cup_1cup_1cup', 201),
(102, 'halfcup_1cup_2tsp_2tbs_1cup_aspertaste', 202),
(103, '1cup_1pack_aspertaste', 203),
(105, 'halfcup_2tbs_1tsp_2tbs', 205),
(107, '2banana_1halfcup_aspertas', 208),
(108, 'half_aspertaste_1cup_frying_1cup ', 209),
(109, '3_2_halfcup_2tbs_aspertaste', 300),
(221, ' aspertaste_200gm_1cup_2tb_1cup', 301),
(222, 'aspertaste_1cup_1cup_1tsp', 302),
(223, '2tbs_1cup_2cup_3tbs_1tsp_1tbs', 207),
(225, '1cup_halfcup_2cup_2tsp_aspertaste', 303),
(227, '1cup_halfcup_2tbs_2tbs_aspertaste_1cup_aspertaste', 305),
(228, '1_half', 307),
(229, ' 1cup_2cup_2tbs_aspertaste_aspertaste', 309),
(321, '1cup_2cup_1cup', 501),
(322, '2cup_1cup', 308),
(323, '3tbs_1cup_aspertaste', 502),
(325, '3pc_frying_aspertaste_1ts', 500),
(327, '1cup_1halfcup_aspertaste', 503);

-- --------------------------------------------------------

--
-- Stand-in structure for view `quickrecipe`
-- (See below for the actual view)
--
CREATE TABLE `quickrecipe` (
`recipename` varchar(25)
,`cooktime` varchar(25)
,`courseid` int(11)
,`quantityid` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `recipeid` int(11) NOT NULL,
  `recipename` varchar(25) DEFAULT NULL,
  `recipedescription` varchar(50) DEFAULT NULL,
  `foodcategory` varchar(25) DEFAULT NULL,
  `cooktime` varchar(25) DEFAULT NULL,
  `courseid` int(11) DEFAULT NULL,
  `quantityid` int(11) DEFAULT NULL,
  `stepid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipeid`, `recipename`, `recipedescription`, `foodcategory`, `cooktime`, `courseid`, `quantityid`, `stepid`) VALUES
(1, 'dryfruitchikki', 'sweetdish_easytomake', 'snacks', '30', 112, 101, 311),
(2, 'butter_chakri', 'deep_fried_recipe', 'snacks', '30', 112, 102, 312),
(3, 'oreo_icecream', 'onlytwoingridients', 'icecream', '13', 111, 103, 313),
(5, 'dalgona_cofee', 'easy_to_make', 'cold_beverages', '9', 117, 105, 315),
(7, 'chocolate icecream', 'less_ingridientsrecipe', 'icecream', '30', 111, 103, 317),
(8, 'samosa', 'fried_recipe', 'snacks', '30', 112, 107, 318),
(9, 'dhudhi_kofta', 'using_dhudhi_tasty', 'meal', '30', 113, 108, 319),
(11, 'capsicum_tomato', 'tastier_ever', 'meal', '30', 113, 109, 211),
(12, 'paneer_makhni', 'punjabidish', 'meal', '30', 113, 221, 212),
(13, 'cup_cakes', 'chocolate_recipe', 'dessert', '50', 115, 222, 213),
(15, 'pizza_base', 'homemadepizza', 'bake', '30', 115, 223, 215),
(17, 'wheat_bread', 'homemade', 'bake', '30', 115, 223, 215),
(18, 'pasta', 'quick_recipe', 'breakfast', '20', 112, 225, 217),
(19, 'white_sauce_pasta', 'quick_recipe', 'breakfast', '20', 112, 227, 218),
(20, 'chocolate', 'homemade', 'dessert', '15', 111, 228, 219),
(21, 'chocolate_fudge', 'homemade', 'dessert', '15', 111, 322, 219),
(23, 'chocolate_cake', 'homemade', 'dessert', '50', 115, 222, 213),
(25, 'ladipav', 'bake', 'bake', '20', 115, 222, 215),
(27, 'karela_muthiya', 'healthytestgood', 'meal', '30', 113, 229, 231),
(28, 'oreo_shake', 'coldyummyrecipe', 'cold_beverages', '5', 117, 103, 232),
(29, 'poranpoli', 'sweetdish', 'meal', '25', 111, 321, 233),
(30, 'coldcofee', 'easytomake', 'coldbeverages', '8', 117, 105, 235),
(31, 'chocolatemilshake', 'chilledmilkrecipe', 'coldbeverages', '20', 117, 323, 232),
(32, 'frenchfries', 'bananarecipe', 'fries', '20', 113, 325, 237),
(33, 'chikumilkshake', 'easytomake', 'coldbeverages', '8', 117, 327, 232);

-- --------------------------------------------------------

--
-- Table structure for table `recipesteps`
--

CREATE TABLE `recipesteps` (
  `stepid` int(11) NOT NULL,
  `stepdescription` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipesteps`
--

INSERT INTO `recipesteps` (`stepid`, `stepdescription`) VALUES
(211, 'boiloiladdallingridients_cook'),
(212, 'boiloiladdtomatopureeaddmixmasala_cookaddmilkmixitwell_addpaneercook'),
(213, 'addalltheingridientsmixitwell_bakeitfor30min'),
(215, 'addalltheingridientsmakeadough_giveashape_bakeitfor20min_'),
(217, 'boiloiladdalltheingridients_addboiledpasta_cookforsometime'),
(218, 'boilpastaboilbutterroastata_addallingridientsincludingpasta_cookuntillitbecomescramy'),
(219, 'mixallingridientsmeltit_pourintomoulds'),
(231, 'mixallingridientsmakedough_giveshape_fryuntilitbecomescryspy'),
(232, 'mixalltheingridientsintomixturejar_mixitwellservechilled'),
(233, 'makeadough_mixboiledudaddaljaggerycook_addmixtureintochapatifryinpan'),
(235, 'mixallingridients_blenditservechilled'),
(237, 'cutrawbananaintoslices_fryuntllitbecomescryspy_spreadmasala'),
(311, 'dryroastdryfruits_addjaggery_addwater_addroast_dryfruits_mixitwell'),
(312, 'mixallingridients_makeadough_giveshapebychakrimaker_frytillitbecomescrunchy'),
(313, 'crushallbuscuitsinpacket_addmilkinpacket_addstickkeepitinafreezer'),
(315, 'addsugercofeepowderlukewarmwater_mixuntilitbecomescreamy_serveinglassaddmilkslowly'),
(317, 'mixcrushedcreambuscuitsmilksugarwell_pourintocontainer_freezeitinafreezer'),
(318, 'makeadough_boiledrawbanana_addmixmasala_fillmixtureintocornshapefromdough_fry'),
(319, 'mixdudhicrushedoilwatermixmasalamakedough_fry_oiladdtomatopureecoftasncookforwhile');

-- --------------------------------------------------------

--
-- Structure for view `coursereview`
--
DROP TABLE IF EXISTS `coursereview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `coursereview`  AS SELECT `course`.`coursename` AS `coursename`, `course`.`courseperiod` AS `courseperiod`, `recipe`.`recipename` AS `recipename` FROM (`recipe` join `course`) WHERE `recipe`.`courseid` = `course`.`courseid` ;

-- --------------------------------------------------------

--
-- Structure for view `quickrecipe`
--
DROP TABLE IF EXISTS `quickrecipe`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `quickrecipe`  AS SELECT `recipe`.`recipename` AS `recipename`, `recipe`.`cooktime` AS `cooktime`, `recipe`.`courseid` AS `courseid`, `recipe`.`quantityid` AS `quantityid` FROM `recipe` WHERE `recipe`.`cooktime` < 15 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `ingridients`
--
ALTER TABLE `ingridients`
  ADD PRIMARY KEY (`ingridientid`);

--
-- Indexes for table `quantity`
--
ALTER TABLE `quantity`
  ADD PRIMARY KEY (`quantityid`),
  ADD KEY `ingridientid` (`ingridientid`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipeid`),
  ADD KEY `RFK` (`courseid`),
  ADD KEY `quantityid` (`quantityid`),
  ADD KEY `stepid` (`stepid`);

--
-- Indexes for table `recipesteps`
--
ALTER TABLE `recipesteps`
  ADD PRIMARY KEY (`stepid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quantity`
--
ALTER TABLE `quantity`
  ADD CONSTRAINT `quantity_ibfk_1` FOREIGN KEY (`ingridientid`) REFERENCES `ingridients` (`ingridientid`);

--
-- Constraints for table `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `RFK` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseid`),
  ADD CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`quantityid`) REFERENCES `quantity` (`quantityid`),
  ADD CONSTRAINT `recipe_ibfk_2` FOREIGN KEY (`stepid`) REFERENCES `recipesteps` (`stepid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
