-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_23
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `city_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `city_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`city_id`),
  KEY `country` (`country`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`country`) REFERENCES `country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=901 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (800,'West Vickie',1),(802,'Benedictview',2),(803,'Port Yasmine',3),(804,'New Johnniebury',4),(805,'Jasminside',5),(806,'West Dena',6),(807,'Mannmouth',7),(808,'West Stanford',8),(809,'West Michalemouth',9),(810,'New Jaylanmouth',10),(811,'West Tyriquebury',11),(812,'Kassulketown',12),(813,'Estellmouth',13),(814,'East Justice',14),(815,'New Agustinview',15),(816,'South Codymouth',16),(817,'North Westonbury',17),(818,'North Winifred',18),(819,'Kathryneland',19),(820,'Geoport',20),(821,'New Theodore',21),(822,'South Javierstad',22),(823,'Lake Marquishaven',23),(824,'Jeniferton',24),(825,'Port Wava',25),(826,'North Dejon',26),(827,'Humbertomouth',27),(828,'South Keeleystad',28),(829,'Koreybury',29),(830,'Aidachester',30),(831,'Port Alessiachester',31),(832,'Lake Ashleighville',32),(833,'Johnstonshire',33),(834,'Jaysonborough',34),(835,'West Golda',35),(836,'East Mabelle',36),(837,'Port Darian',37),(838,'Lake Devanfurt',38),(839,'Lorihaven',39),(840,'Alexandraport',40),(841,'East Kristianview',41),(842,'Port Tiffany',42),(843,'Victoriaburgh',43),(844,'East Jaeden',44),(845,'West Ludie',45),(846,'Port Tinamouth',46),(847,'Okunevaburgh',47),(848,'Citlallimouth',48),(849,'West Ludwig',49),(850,'New Violette',50),(851,'North Stephanyside',51),(852,'Pansyfort',52),(853,'North Gardnerhaven',53),(854,'Hermannfort',54),(855,'Lake Randymouth',55),(856,'North Ludie',56),(857,'New Libbie',57),(858,'Maudieberg',58),(859,'Hilllchester',59),(860,'South Frida',60),(861,'Lake Ramonview',61),(862,'Dejachester',62),(863,'New Natashaberg',63),(864,'New Princessland',64),(865,'McKenzieville',65),(866,'Dickinsonchester',66),(867,'South Daphne',67),(868,'West Lafayetteburgh',68),(869,'New Rory',69),(870,'New Angeline',70),(871,'Roxaneshire',71),(872,'East Uniqueshire',72),(873,'Lake Elsa',73),(874,'Marjoryville',74),(875,'Hershelmouth',75),(876,'Mantefurt',76),(877,'North Janelle',77),(878,'Leonardstad',78),(879,'Cortneymouth',79),(880,'Vandervortchester',80),(881,'Ruthieshire',81),(882,'Ullrichville',82),(883,'Dangelotown',83),(884,'Larsonbury',84),(885,'Serenabury',85),(886,'East Randy',86),(887,'West Rollin',87),(888,'Vestaport',88),(889,'East Odellmouth',89),(890,'Amaramouth',90),(891,'South Lilliana',91),(892,'VonRuedenport',92),(893,'Balistreristad',93),(894,'West Larue',94),(895,'South Layneville',95),(896,'Kubberg',96),(897,'Lake Danafurt',97),(898,'North Justus',98),(899,'East Brendan',99),(900,'Douglasbury',100);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `country_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Pakistan'),(2,'Cambodia'),(3,'Philippines'),(4,'Aruba'),(5,'Pakistan'),(6,'Greece'),(7,'Falkland Islands (Ma'),(8,'Solomon Islands'),(9,'Morocco'),(10,'Djibouti'),(11,'Brunei Darussalam'),(12,'Zambia'),(13,'Mexico'),(14,'Anguilla'),(15,'Equatorial Guinea'),(16,'Faroe Islands'),(17,'San Marino'),(18,'Bouvet Island (Bouve'),(19,'Brazil'),(20,'Turkmenistan'),(21,'Zimbabwe'),(22,'Micronesia'),(23,'Malaysia'),(24,'Nauru'),(25,'Anguilla'),(26,'Niger'),(27,'British Indian Ocean'),(28,'Saint Martin'),(29,'Cyprus'),(30,'Greenland'),(31,'Grenada'),(32,'Yemen'),(33,'Madagascar'),(34,'Mauritania'),(35,'Saint Vincent and th'),(36,'Uganda'),(37,'Finland'),(38,'Paraguay'),(39,'Indonesia'),(40,'Morocco'),(41,'Ecuador'),(42,'United States of Ame'),(43,'Turkey'),(44,'Zimbabwe'),(45,'Switzerland'),(46,'Myanmar'),(47,'Czech Republic'),(48,'Lithuania'),(49,'Cocos (Keeling) Isla'),(50,'Sudan'),(51,'Pakistan'),(52,'Malaysia'),(53,'Saudi Arabia'),(54,'Tokelau'),(55,'Vanuatu'),(56,'Dominica'),(57,'Kenya'),(58,'France'),(59,'Egypt'),(60,'Guyana'),(61,'Monaco'),(62,'Georgia'),(63,'United States Virgin'),(64,'Seychelles'),(65,'Aruba'),(66,'Germany'),(67,'Bosnia and Herzegovi'),(68,'Benin'),(69,'Turks and Caicos Isl'),(70,'Gibraltar'),(71,'Anguilla'),(72,'Botswana'),(73,'Micronesia'),(74,'Kazakhstan'),(75,'United States Minor '),(76,'Palau'),(77,'South Africa'),(78,'Indonesia'),(79,'Hungary'),(80,'Libyan Arab Jamahiri'),(81,'Qatar'),(82,'Isle of Man'),(83,'Greece'),(84,'Ukraine'),(85,'Mali'),(86,'Belgium'),(87,'Iceland'),(88,'Faroe Islands'),(89,'Burundi'),(90,'Heard Island and McD'),(91,'Tokelau'),(92,'Korea'),(93,'Zimbabwe'),(94,'Grenada'),(95,'Iceland'),(96,'Mauritania'),(97,'American Samoa'),(98,'Jersey'),(99,'Antigua and Barbuda'),(100,'San Marino');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_offers`
--

DROP TABLE IF EXISTS `hotel_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_offers` (
  `h_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `h_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_city` bigint(20) unsigned NOT NULL,
  `h_price` bigint(20) DEFAULT NULL,
  `h_roomtype` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_photo` bigint(20) unsigned DEFAULT NULL,
  `h_service` varchar(100),
  PRIMARY KEY (`h_id`),
  KEY `h_city` (`h_city`),
  CONSTRAINT `hotel_offers_ibfk_1` FOREIGN KEY (`h_city`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=901 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_offers`
--

LOCK TABLES `hotel_offers` WRITE;
/*!40000 ALTER TABLE `hotel_offers` DISABLE KEYS */;
INSERT INTO `hotel_offers` VALUES (801,'temporibus',801,35000,9,NULL,'allinclusive'),
(802,'nesciunt',802,23000,2,NULL,NULL),
(803,'eos',803,34000,6,NULL,'allinclusive'),
(804,'voluptatem',804,50000,4,NULL,'allinclusive'),
(805,'neque',805,35000,3,NULL,'allinclusive'),
(806,'corrupti',806,80000,7,NULL,'allinclusive'),
(807,'alias',807,30000,8,NULL,'allinclusive'),
(808,'id',808,56000,5,NULL,'allinclusive'),
(809,'molestiae',809,90000,1,NULL,'allinclusive'),
(810,'et',810,66000,3,NULL,'allinclusive'),
(811,'quae',811,25000,4,NULL,'allinclusive'),
(812,'eos',812,65000,4,NULL,'allinclusive'),
(813,'eum',813,90000,NULL,NULL,NULL),
(814,'dolor',814,6,NULL,NULL,NULL),
(815,'officiis',815,7,NULL,NULL,NULL),
(816,'omnis',816,2,NULL,NULL,NULL),
(817,'nihil',817,7,NULL,NULL,NULL),
(818,'eos',818,5,NULL,NULL,NULL),
(819,'facilis',819,6,NULL,NULL,NULL),(820,'suscipit',820,3,NULL,NULL,NULL),(821,'vitae',821,7,NULL,NULL,NULL),
(822,'et',822,30900,3,NULL,'allinclusive'),(823,'officiis',823,45000,6,NULL,'allinclusive'),
(824,'omnis',824,1,NULL,NULL,NULL),(825,'sit',825,7,NULL,NULL,NULL),(826,'sunt',826,2,NULL,NULL,NULL),
(827,'culpa',827,9,NULL,NULL,NULL),(828,'perferendis',828,9,NULL,NULL,NULL),(829,'est',829,8,NULL,NULL,NULL),
(830,'inventore',830,8,NULL,NULL,NULL),(831,'delectus',831,1,NULL,NULL,NULL),(832,'nihil',832,9,NULL,NULL,NULL),
(833,'consequatur',833,7,NULL,NULL,NULL),(834,'quo',834,8,NULL,NULL,NULL),(835,'ex',835,1,NULL,NULL,NULL),
(836,'nihil',836,9,NULL,NULL,NULL),(837,'eaque',837,4,NULL,NULL,NULL),(838,'et',838,3,NULL,NULL,NULL),
(839,'quaerat',839,8,NULL,NULL,NULL),(840,'consequatur',840,7,NULL,NULL,NULL),(841,'eos',841,8,2347000,NULL,NULL),
(842,'non',842,2,64440,NULL,NULL),(843,'unde',843,3,2765000,NULL,'allinclusive'),(844,'laudantium',844,1,NULL,NULL,NULL),
(845,'sint',845,4,NULL,NULL,NULL),(846,'quidem',846,4,NULL,NULL,NULL),(847,'sit',847,8,NULL,NULL,NULL),
(848,'quis',848,4,NULL,NULL,NULL),(849,'minima',849,6,NULL,NULL,NULL),(850,'amet',850,4,NULL,NULL,NULL),
(851,'incidunt',851,2,NULL,NULL,NULL),(852,'voluptatem',852,1,NULL,NULL,NULL),(853,'nesciunt',853,2,NULL,NULL,NULL),
(854,'ex',854,9,NULL,NULL,NULL),(855,'facere',855,3,NULL,NULL,NULL),(856,'cupiditate',856,2,NULL,NULL,NULL),
(857,'doloremque',857,6,NULL,NULL,NULL),(858,'vitae',858,5,NULL,NULL,NULL),(859,'in',859,7,NULL,NULL,NULL),
(860,'reiciendis',860,1,NULL,NULL,NULL),(861,'quis',861,8,NULL,NULL,NULL),(862,'repudiandae',862,7,NULL,NULL,NULL),
(863,'optio',863,3,NULL,NULL,NULL),(864,'veniam',864,3,NULL,NULL,NULL),(865,'iure',865,8,NULL,NULL,NULL),
(866,'voluptatum',866,6,345000,NULL,'allinclusive'),(867,'voluptates',867,3,NULL,NULL,NULL),
(868,'ipsam',868,2,NULL,NULL,NULL),(869,'impedit',869,6,NULL,NULL,NULL),(870,'totam',870,4,NULL,NULL,NULL),
(871,'ea',871,7,NULL,NULL,NULL),(872,'laborum',872,4,NULL,NULL,NULL),(873,'voluptatem',873,2,NULL,NULL,NULL),
(874,'quia',874,5,NULL,NULL,NULL),(875,'illo',875,2,NULL,NULL,NULL),(876,'qui',876,6,NULL,NULL,NULL),
(877,'omnis',877,9,NULL,NULL,NULL),(878,'nemo',878,6,NULL,NULL,NULL),(879,'quasi',879,1,NULL,NULL,NULL),
(880,'veritatis',880,4,NULL,NULL,NULL),(881,'molestias',881,7,NULL,NULL,NULL),(882,'qui',882,6,NULL,NULL,NULL),
(883,'consequatur',883,4,NULL,NULL,NULL),(884,'totam',884,7,NULL,NULL,NULL),(885,'dolores',885,6,NULL,NULL,NULL),
(886,'voluptate',886,8,NULL,NULL,NULL),(887,'repudiandae',887,2,NULL,NULL,NULL),(888,'quae',888,5,NULL,NULL,NULL),
(889,'magnam',889,8,NULL,NULL,NULL),(890,'sapiente',890,4,NULL,NULL,NULL),(891,'perspiciatis',891,1,NULL,NULL,NULL),
(892,'voluptatibus',892,9,NULL,NULL,NULL),(893,'suscipit',893,9,NULL,NULL,NULL),(894,'aspernatur',894,3,NULL,NULL,NULL),
(895,'soluta',895,3,NULL,NULL,NULL),(896,'est',896,2,NULL,NULL,NULL),(897,'error',897,2,NULL,NULL,NULL),
(898,'amet',898,7,NULL,NULL,NULL),(899,'fugit',899,8,NULL,NULL,NULL),(900,'id',900,2,NULL,NULL,NULL);
/*!40000 ALTER TABLE `hotel_offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selected_tour`
--

DROP TABLE IF EXISTS `selected_tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `selected_tour` (
  `selected_tour_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) unsigned NOT NULL,
  `tour_id` bigint(20) unsigned NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`selected_tour_id`),
  KEY `users_id` (`users_id`),
  KEY `tour_id` (`tour_id`),
  CONSTRAINT `selected_tour_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `selected_tour_ibfk_2` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`tour_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selected_tour`
--

LOCK TABLES `selected_tour` WRITE;
/*!40000 ALTER TABLE `selected_tour` DISABLE KEYS */;
INSERT INTO `selected_tour` VALUES (1,101,1,0),(2,102,2,0),(3,103,3,0),(4,105,4,0),(5,106,5,0),(6,107,6,0),(7,108,7,0),(8,109,8,0),(9,111,9,0),(10,112,10,0),(11,114,11,0),(12,116,12,0),(13,119,13,0),(14,120,14,0),(15,121,15,0),(16,124,16,0),(17,125,17,0),(18,130,18,0),(19,132,19,0),(20,134,20,0),(21,136,21,0),(22,137,22,0),(23,140,23,0),(24,141,24,0),(25,144,25,0),(26,146,26,0),(27,147,27,0),(28,148,28,0),(29,149,29,0),(30,150,30,0),(31,151,31,0),(32,152,32,0),(33,153,33,0),(34,155,34,0),(35,156,35,0),(36,157,36,0),(37,158,37,0),(38,159,38,0),(39,160,39,0),(40,163,40,0),(41,164,41,0),(42,165,42,0),(43,166,43,0),(44,167,44,0),(45,172,45,0),(46,173,46,0),(47,175,47,0),(48,176,48,0),(49,178,49,0),(50,181,50,0),(51,183,51,0),(52,184,52,0),(53,185,53,0),(54,187,54,0),(55,188,55,0),(56,195,56,0),(57,196,57,0),(58,198,58,0),(59,200,59,0),(60,101,60,0),(61,102,61,0),(62,103,62,0),(63,105,63,0),(64,106,64,0),(65,107,65,0),(66,108,66,0),(67,109,67,0),(68,111,68,0),(69,112,69,0),(70,114,70,0),(71,116,71,0),(72,119,72,0),(73,120,73,0),(74,121,74,0),(75,124,75,0),(76,125,76,0),(77,130,77,0),(78,132,78,0),(79,134,79,0),(80,136,80,0),(81,137,81,0),(82,140,82,0),(83,141,83,0),(84,144,84,0),(85,146,85,0),(86,147,86,0),(87,148,87,0),(88,149,88,0),(89,150,89,0),(90,151,90,0),(91,152,91,0),(92,153,92,0),(93,155,93,0),(94,156,94,0),(95,157,95,0),(96,158,96,0),(97,159,97,0),(98,160,98,0),(99,163,99,0),(100,164,100,0);
/*!40000 ALTER TABLE `selected_tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours`
--

DROP TABLE IF EXISTS `tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tours` (
  `tour_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hotel_id` bigint(20) unsigned NOT NULL,
  `transpotr_id` bigint(20) unsigned NOT NULL,
  `tour_city_from` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_city_to` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_when` date DEFAULT NULL,
  `tour_return` date DEFAULT NULL,
  `tour_travelers_nubmer` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`tour_id`),
  KEY `hotel_id` (`hotel_id`),
  KEY `transpotr_id` (`transpotr_id`),
  CONSTRAINT `tours_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_offers` (`h_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tours_ibfk_2` FOREIGN KEY (`transpotr_id`) REFERENCES `transport_offers` (`t_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours`
--

LOCK TABLES `tours` WRITE;
/*!40000 ALTER TABLE `tours` DISABLE KEYS */;
INSERT INTO `tours` VALUES (1,801,1,'West Justus','Simonistown','2020-06-29','2020-07-09',2),
(2,802,2,'Tierrafort','Port Nicoletteport','2020-04-27','2020-05-16',2),
(3,803,3,'Lake Marie','Nicholefort','2021-12-02','2021-12-22',1),
(4,804,4,'New Alvah','New Daishaton','2001-11-20','2001-12-04',3),
(5,805,5,'West Marian','Ceciliachester','2019-04-07','2019-06-03',2),
(6,806,6,'North Ryan','Port Olemouth','2020-07-15','20202-07-29',3),
(7,807,7,'Darianshire','Melodytown','2020-09-25','2020-10-09',1),
(8,808,8,'West Noblestad','Breitenbergport','2020-01-05','2020-02-23',2),
(9,809,9,'Spencerfurt','Port Juliusburgh','2021-03-05','2021-06-11',2),
(10,810,10,'East Nobleburgh','Maxview','2020-10-27','2020-11-14',2),
(11,811,11,'Lake Brooketown','Danialmouth','2020-05-21','2020-06-25',1),
(12,812,12,'West Leslie','East Rowenaburgh','2021-05-05','2021-06-13',2),(13,813,13,'Gaylordview','North Walterton','1997-10-22','1980-01-08',NULL),(14,814,14,'Lexushaven','Jaydonhaven','1989-09-30','2017-01-30',NULL),(15,815,15,'North Laronbury','Millerburgh','1991-07-26','1996-11-22',NULL),(16,816,16,'Port Olaf','South Valentineton','1983-05-27','1998-02-19',NULL),(17,817,17,'Hegmanntown','South Ocie','2017-07-02','2015-02-06',NULL),(18,818,18,'North Reyna','Roobland','1977-12-03','2013-02-09',NULL),(19,819,19,'East Alfonso','New Korey','2004-08-26','2001-05-03',NULL),(20,820,20,'Kelvinchester','Zemlakfort','2004-09-04','1983-03-06',NULL),(21,821,21,'Port Derek','South Zackary','2006-08-24','1985-06-15',NULL),(22,822,22,'New Molly','Veumbury','1993-12-23','1977-10-21',NULL),(23,823,23,'West Kurtisfurt','East Ike','2006-10-15','2014-05-03',NULL),(24,824,24,'South Cecelia','West Stanborough','2022-02-16','2013-03-18',NULL),(25,825,25,'Lake Yolanda','Lake Birdiestad','1991-02-19','1981-12-23',NULL),(26,826,26,'Sipesview','Bruenchester','2018-09-09','2020-07-30',NULL),(27,827,27,'South Milton','Port Traceport','1972-04-28','1976-11-03',NULL),(28,828,28,'New Sanford','Jammieside','1977-11-12','2002-06-24',NULL),(29,829,29,'Gerlachtown','South Mohammadmouth','1972-06-10','1999-06-06',NULL),(30,830,30,'Arnulfofort','Lake Wyatt','1997-01-07','2017-12-15',NULL),(31,831,31,'North Annamarie','Mattton','1994-09-14','2008-01-31',NULL),(32,832,32,'North Eveview','Port Adityafurt','1973-07-17','1990-05-19',NULL),(33,833,33,'Gaylordberg','East Alexie','1987-01-29','2007-02-22',NULL),(34,834,34,'South Tavares','Lindaland','1997-09-23','2019-11-15',NULL),(35,835,35,'Port Jerelfort','Skylarshire','2000-03-21','2020-04-10',NULL),(36,836,36,'Roweton','Davisbury','1998-07-18','1973-10-06',NULL),(37,837,37,'Russelburgh','New Larue','2006-01-20','1974-06-26',NULL),(38,838,38,'West Lealand','Darrylmouth','1996-11-07','1996-02-17',NULL),(39,839,39,'O\'Keefeton','Lake Portermouth','2006-04-23','1998-05-26',NULL),(40,840,40,'Watsicaport','North Duncanmouth','2019-10-13','1989-05-05',NULL),(41,841,41,'Port Sallymouth','Port Gene','1985-04-23','1974-08-10',NULL),(42,842,42,'Konopelskifurt','Lake Oran','2001-10-22','2003-03-01',NULL),(43,843,43,'New Giovanna','East Kolbyshire','2009-12-11','2011-08-25',NULL),(44,844,44,'Port Sim','Jaedenport','1975-03-23','1972-08-13',NULL),(45,845,45,'Port Edmouth','Kiehnmouth','2006-12-21','2010-04-16',NULL),(46,846,46,'Linneahaven','East Jovani','1989-06-09','2001-02-11',NULL),(47,847,47,'Ricestad','Aishaville','1986-08-21','1990-09-18',NULL),(48,848,48,'Porterview','South Jadeborough','1982-09-11','1981-06-11',NULL),(49,849,49,'Willisside','Elmoburgh','2010-12-07','1992-11-01',NULL),(50,850,50,'Kristopherhaven','Mohrmouth','1987-11-01','1987-09-11',NULL),(51,851,51,'North Kiaraburgh','West Taurean','1977-02-21','1975-12-30',NULL),(52,852,52,'Port Stewart','Port Darwin','1997-11-25','2019-11-10',NULL),(53,853,53,'Lake Drewchester','South Efrain','2013-07-15','2005-05-01',NULL),(54,854,54,'Bednarfort','Amiyaside','2018-01-30','1984-12-03',NULL),(55,855,55,'Lake Jakobshire','New Deshaunton','1990-09-30','2014-11-05',NULL),(56,856,56,'Port Thaliafurt','South Annalisechester','1997-04-30','2017-01-20',NULL),(57,857,57,'North Eileen','Hermannstad','2002-03-08','1992-10-21',NULL),(58,858,58,'Gibsonfurt','Stoneburgh','2011-06-30','2018-01-18',NULL),(59,859,59,'South Kennedy','South Lori','1995-05-26','2012-10-23',NULL),(60,860,60,'Augustaberg','Mitcheltown','1992-04-02','1983-05-31',NULL),(61,861,61,'West Websterfort','Otiliafurt','2006-02-18','1994-10-29',NULL),(62,862,62,'West Kane','Coletown','1972-12-12','1991-01-09',NULL),(63,863,63,'West Keatonchester','Janechester','1974-01-24','2017-11-04',NULL),(64,864,64,'South Haskellshire','West Oraland','1991-07-03','2006-12-24',NULL),(65,865,65,'Treutelshire','Hamillstad','2014-12-23','1977-10-13',NULL),(66,866,66,'Parismouth','Alizehaven','1979-10-05','1972-06-17',NULL),(67,867,67,'Fayfort','Welchtown','1970-10-11','1986-03-13',NULL),(68,868,68,'North Hannahborough','Jaskolskimouth','1982-02-09','2002-01-28',NULL),(69,869,69,'Fredericberg','Nikkiborough','1995-02-20','1994-08-07',NULL),(70,870,70,'North Bettyehaven','North Cassandre','2000-12-19','2002-05-13',NULL),(71,871,71,'Parkerberg','Earnestinestad','1977-06-06','2011-04-21',NULL),(72,872,72,'Jonesfort','Veumside','1994-03-23','1996-07-28',NULL),(73,873,73,'Croninfurt','Thielbury','1979-12-20','1979-06-20',NULL),(74,874,74,'Seanborough','Rhettburgh','1997-05-30','1977-04-17',NULL),(75,875,75,'New Marie','Stehrfurt','1970-02-25','1970-06-03',NULL),(76,876,76,'North Dashawn','Emelyberg','1988-07-07','1977-10-24',NULL),(77,877,77,'Linniehaven','West Sherwood','2016-07-01','2014-06-05',NULL),(78,878,78,'New Giuseppe','West Kayleigh','1979-03-25','1991-08-07',NULL),(79,879,79,'South Noemieport','Lake Luis','1992-12-15','2001-09-15',NULL),(80,880,80,'Jaycefort','New Cornellmouth','2021-04-13','1983-02-16',NULL),(81,881,81,'North Jazmin','South Trycia','1983-12-27','1984-07-01',NULL),(82,882,82,'New Noble','Fridafort','1972-04-03','2016-01-12',NULL),(83,883,83,'Lake Owenfort','West Kayli','2021-02-06','2012-03-16',NULL),(84,884,84,'Sunnyberg','East Asia','1977-12-02','1978-08-07',NULL),(85,885,85,'Rettaland','East Irvingshire','2007-12-15','2011-07-30',NULL),(86,886,86,'Geovannibury','Port Mackenzie','2007-06-18','1989-08-31',NULL),(87,887,87,'Anyamouth','East Cassandra','1993-11-27','1976-11-21',NULL),(88,888,88,'Eldaville','Wilburnport','1976-06-13','1981-05-07',NULL),(89,889,89,'Wisokybury','North Muhammadville','2002-02-14','1984-06-21',NULL),(90,890,90,'West Loyburgh','Port Adrienneburgh','1973-02-17','2000-08-23',NULL),(91,891,91,'Walkerside','Lake Obie','2013-02-27','1995-02-26',NULL),(92,892,92,'South Rossie','North Baron','2015-11-09','1976-07-17',NULL),(93,893,93,'East Shanelleton','Zionmouth','1970-10-03','2014-03-03',NULL),(94,894,94,'Stoltenberghaven','Lake Daltonchester','2013-12-30','1999-05-28',NULL),(95,895,95,'Santinoshire','West Parisbury','1993-11-03','1995-08-11',NULL),(96,896,96,'Misaelstad','Goodwinmouth','2021-01-27','2020-11-18',NULL),(97,897,97,'Eloyfurt','Jenkinsborough','2010-01-27','2002-10-22',NULL),(98,898,98,'East Simonetown','Purdytown','2017-03-28','1976-08-10',NULL),(99,899,99,'Hermannmouth','Gusikowskimouth','1975-01-29','2005-07-24',NULL),(100,900,100,'Lake Larissaborough','Rodrickmouth','1994-03-30','2020-07-29',NULL);
/*!40000 ALTER TABLE `tours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_offers`
--

DROP TABLE IF EXISTS `transport_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transport_offers` (
  `t_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `t_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_city_from` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_city_to` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_dep_date` date DEFAULT NULL,
  `t_arr_date` date DEFAULT NULL,
  `t_dep_time` int(11) DEFAULT NULL,
  `t_arr_time` int(11) DEFAULT NULL,
  `t_price` bigint(20) DEFAULT NULL,
  `t_service` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_offers`
--

LOCK TABLES `transport_offers` WRITE;
/*!40000 ALTER TABLE `transport_offers` DISABLE KEYS */;
INSERT INTO `transport_offers` VALUES (1,'velit','New Jack','Felipemouth','2006-03-11','2014-09-14',11,0,355,NULL),
(2,'adipisci','East Justicemouth','Ubaldoview','2000-10-18','2018-07-22',0,16,15,NULL),
(3,'animi','Hilllview','Theronton','2004-10-03','2014-05-08',20,12,0,NULL),
(4,'iste','Elainatown','Lake Sarinaport','2019-02-14','2022-06-13',11,18,27376,NULL),
(5,'nesciunt','Reingershire','South Courtney','1987-01-22','1975-10-16',15,19,2450,NULL),
(6,'sit','Lake Ena','Wunschport','1981-07-26','1991-12-22',6,21,37919765,NULL),
(7,'porro','Gutmanntown','South Theresa','1970-06-14','1998-08-09',15,10,1312,NULL),
(8,'asperiores','Adeliamouth','Kiarraburgh','2012-05-05','1970-11-02',17,22,344,NULL),
(9,'nisi','Giabury','South Audreanne','1984-11-03','1973-11-24',10,16,366739249,NULL),
(10,'eligendi','New Brandi','North Dixie','1990-05-28','1997-05-02',2,5,48338981,NULL),(11,'in','Emmetmouth','North Amya','1990-01-08','1980-04-03',2,20,374964,NULL),(12,'sed','Zemlakside','South Kyrastad','1990-02-10','1976-12-18',14,5,2384274,NULL),(13,'nobis','Bruenstad','Port Grace','1996-01-11','1977-04-22',9,1,18,NULL),(14,'quas','East Dedrickmouth','Adeliamouth','2006-06-28','2003-12-03',11,4,96,NULL),(15,'sequi','Bergetown','East Bethanyland','2004-01-16','1977-11-07',23,17,3060295,NULL),(16,'provident','New Eloyside','Harberside','2011-07-31','2019-10-02',6,14,80,NULL),(17,'ex','Ritchieborough','North Lenore','1989-01-27','1984-03-06',5,23,160,NULL),(18,'quae','Montyborough','Eusebiomouth','1991-09-23','2004-11-11',12,17,2,NULL),(19,'voluptatem','East Gillian','Stefanland','1984-03-21','2020-07-23',2,23,5970,NULL),(20,'vel','Port Hiram','West Kim','2022-02-06','1994-04-15',4,1,309,NULL),(21,'id','Lake Gianni','Emmettview','1971-07-01','1992-01-21',3,8,159561,NULL),(22,'eos','East Connerfurt','East Carley','1989-01-09','2013-03-22',16,4,84,NULL),(23,'aut','Erdmanchester','Jacobsshire','1977-11-23','1979-03-09',13,23,0,NULL),(24,'quo','West Sterling','Matteotown','2006-09-27','2010-02-03',13,9,38222046,NULL),(25,'blanditiis','Greenfort','Lilabury','2012-03-09','1996-03-20',22,13,47456,NULL),(26,'accusamus','Lorainemouth','North Alexieburgh','1976-10-05','1972-01-13',20,4,673,NULL),(27,'corrupti','New Ramon','West Darbyton','2018-02-05','2012-12-02',5,23,53,NULL),(28,'rerum','Tonymouth','Forrestview','1972-11-05','1973-10-02',17,20,4,NULL),(29,'laboriosam','South Thelma','South Amos','2011-11-08','1973-03-06',0,10,3,NULL),(30,'neque','South Rafaelastad','New Jennyfer','1995-04-05','1977-04-17',11,8,301932720,NULL),(31,'iusto','Hegmannville','Georgianabury','1992-03-01','2008-06-15',17,10,64902,NULL),(32,'nesciunt','Turnerborough','East Sydnee','2020-10-21','1990-09-16',7,6,184,NULL),(33,'cumque','Lake Cierra','West Erwinstad','1976-08-28','1982-01-27',14,10,133915,NULL),(34,'et','New Albertofurt','Sigridmouth','1973-12-20','1980-08-03',1,10,176750,NULL),(35,'asperiores','Ondrickabury','New Eda','1974-07-11','1984-05-14',11,23,6037313,NULL),(36,'enim','North Eleanoramouth','North Lottie','1998-08-22','1975-03-29',8,18,2523862,NULL),(37,'voluptas','East Roslynberg','New Kylieberg','2000-12-03','2015-12-24',11,6,37497,NULL),(38,'placeat','Kihnmouth','Hickleberg','2021-03-10','2004-05-11',13,17,133986,NULL),(39,'dolor','North Petraside','North Virgil','2020-05-29','1998-02-19',5,18,570092,NULL),(40,'qui','Julianaland','Lake Gilesport','1984-03-27','2002-01-19',18,16,43544679,NULL),(41,'qui','Martinview','West Vivian','1979-07-13','2002-07-06',9,17,0,NULL),(42,'aliquam','Feilport','Micaelaburgh','2003-01-29','1989-03-10',3,20,5387796,NULL),(43,'sit','Nicolasberg','South Vedafort','1985-02-07','1970-03-02',8,6,252945,NULL),(44,'quibusdam','Angelatown','Alethahaven','1999-05-01','1975-12-01',19,5,45097219,NULL),(45,'consectetur','Johnsborough','Leschmouth','2014-07-25','2004-07-30',14,23,985765,NULL),(46,'dolores','Gutkowskitown','New Dominique','2011-05-27','2012-12-09',7,7,447795,NULL),(47,'odio','Soniafort','Lake Lyda','2003-03-28','1974-12-08',23,4,2,NULL),(48,'qui','Nobleburgh','Kohlerberg','1973-11-20','2008-06-15',15,22,3746399,NULL),(49,'magni','Arvidland','North Lucile','1990-12-25','1987-07-26',22,20,15,NULL),(50,'quidem','East Chanel','New Frederique','1975-06-15','2002-06-15',12,17,0,NULL),(51,'doloremque','New Kariane','Windlermouth','2008-04-26','1973-04-04',20,21,0,NULL),(52,'perspiciatis','South Diego','New Webster','2007-12-26','1976-12-03',16,4,84315646,NULL),(53,'sed','Darrelmouth','South Merleside','1995-09-06','2016-03-08',19,10,1,NULL),(54,'dolorem','Kovacekbury','Fritschland','1979-03-13','2016-12-19',9,17,203,NULL),(55,'quae','North Keatonburgh','Lake Elwynberg','1994-12-30','2001-09-16',9,5,2591,NULL),(56,'repellat','South Lambert','Doyletown','1985-12-10','2002-03-09',12,11,57833,NULL),(57,'temporibus','Lake Gennaromouth','Lake Ednaland','2010-01-06','2014-04-29',20,2,9,NULL),(58,'sit','Lake Halliemouth','Watersburgh','1992-02-26','2011-11-11',4,1,4,NULL),(59,'debitis','Davisfort','Swiftview','1992-03-24','2002-09-30',3,7,146858,NULL),(60,'pariatur','North Jorge','Port Allyport','2015-04-28','1983-11-28',13,22,24825,NULL),(61,'delectus','West Gerardo','South Favian','2019-09-25','1979-05-17',16,14,3173647,NULL),(62,'quisquam','Kubstad','Port Dorcas','1984-01-08','1997-03-10',17,13,146887,NULL),(63,'molestiae','East Danielaton','East Lisettechester','1991-02-02','2010-09-29',17,5,19577820,NULL),(64,'molestias','North Janie','Terrybury','2005-09-23','1992-05-11',15,9,0,NULL),(65,'velit','Lake Destini','New Ledaton','1997-03-29','1986-07-29',12,5,191,NULL),(66,'id','North Leorastad','North Vella','1996-02-21','1994-12-28',5,1,20484,NULL),(67,'labore','Zacheryfort','Alannaport','2012-03-03','2013-09-04',21,13,0,NULL),(68,'optio','Ferminport','South Elvie','2021-04-17','1981-06-29',4,1,216849417,NULL),(69,'facilis','South Vernie','East Laylamouth','2022-06-16','2006-01-13',0,5,266638473,NULL),(70,'recusandae','Lake Janicechester','Feeneyfurt','2005-12-06','1997-11-04',10,1,0,NULL),(71,'provident','North Axelmouth','Lake Gilesborough','1993-04-01','1991-10-31',6,9,571,NULL),(72,'dolores','Jerdefort','New Stanford','2017-10-12','1981-07-02',15,4,3795488,NULL),(73,'optio','Marcelluschester','North Erich','1978-01-10','1979-09-28',22,5,169743,NULL),(74,'aut','Port Florenceshire','Grimesborough','1980-09-04','2018-01-12',14,18,40891,NULL),(75,'aperiam','New Otha','East Felicity','1980-03-17','1989-09-21',6,16,97266274,NULL),(76,'nemo','Lake Malikaville','Douglasshire','2013-10-20','1982-04-28',22,5,238,NULL),(77,'aut','Sandyport','Auerhaven','1995-06-20','1972-11-23',10,19,5,NULL),(78,'repellat','Lake Breannahaven','Port Orville','1991-12-03','2011-09-30',11,7,167,NULL),(79,'voluptas','West Kayceeside','Eleanorefort','2007-12-15','1989-07-16',15,23,12548847,NULL),(80,'laudantium','New Caesarville','New Marcelohaven','2020-10-31','2002-10-17',12,14,79,NULL),(81,'minima','North Gunnerbury','Marlenbury','2015-12-16','2019-12-25',4,10,18775500,NULL),(82,'id','Ivyberg','South Oranchester','1991-12-10','2001-09-29',22,20,2,NULL),(83,'consectetur','West Shane','North Noemifort','1988-04-16','1973-08-06',0,19,18,NULL),(84,'autem','New Frankie','Jackiehaven','1981-10-28','2001-02-09',8,22,71149318,NULL),(85,'nihil','Doyleborough','Port Giuseppechester','1999-10-22','1987-05-06',8,12,74395,NULL),(86,'numquam','East Theresa','Oswaldstad','1984-10-24','1983-09-30',20,6,792190026,NULL),(87,'eum','South Noelia','Willachester','1977-10-21','2021-05-29',6,23,3877,NULL),(88,'ut','South Monserrat','East Sheamouth','1971-12-21','1975-11-25',12,20,375,NULL),(89,'earum','East Randallfort','Oberbrunnerbury','1970-09-02','2017-01-18',4,18,1507859,NULL),(90,'eaque','Nealfort','Heidenreichview','2001-05-01','1985-01-19',18,19,219079813,NULL),(91,'veniam','West Theaside','Kennethmouth','1984-12-15','1993-10-31',18,20,7546193,NULL),(92,'voluptatem','North Rainaland','Jacintheview','2007-03-17','1989-09-13',10,7,5,NULL),(93,'enim','Rodrigueztown','Rosenbaumside','2004-12-23','2010-05-10',16,15,2,NULL),(94,'est','East Zeldatown','Port Estefania','1988-08-09','1996-07-14',1,4,3370,NULL),(95,'hic','Eraburgh','East Cieloberg','2003-06-21','2006-09-17',15,18,1930309,NULL),(96,'earum','South Euna','Starkburgh','1988-09-13','1987-07-22',15,7,305678,NULL),(97,'iste','East Serenity','Ernsermouth','2018-01-15','1990-02-25',16,17,29,NULL),(98,'voluptatum','Lake Charlieland','West Larissa','1984-11-21','2016-06-06',10,16,223337935,NULL),(99,'odit','Ricoville','North Gerda','1978-02-19','2016-02-13',18,21,7523,NULL),(100,'rem','East Clifford','Lake Garthbury','2017-04-18','1970-06-28',6,20,0,NULL);
/*!40000 ALTER TABLE `transport_offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `users_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `birthday` date NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`users_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `users_lastname_phone_idx` (`lastname`,`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`


--LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (101,'Haley','Rodriguez','macejkovic.ezequiel@example.net',1,'2020-06-09',NULL,NULL),(102,'Jacklyn','Price','rebekah.sauer@example.net',0,'1970-04-16',NULL,NULL),(103,'Cornell','Koelpin','o\'conner.tobin@example.net',539326,'1994-10-09',NULL,NULL),(105,'Edward','Johns','keaton41@example.net',77,'1992-04-03',NULL,NULL),(106,'Nya','Lowe','austen.hintz@example.org',897,'2013-02-10',NULL,NULL),(107,'Jayde','Fahey','whitney.reichert@example.org',37,'2020-04-25',NULL,NULL),(108,'Elyse','Fritsch','von.filomena@example.org',69,'1994-10-21',NULL,NULL),(109,'Everette','Hand','genevieve.denesik@example.net',657258,'1985-12-17',NULL,NULL),(111,'Dedrick','Johnston','qgulgowski@example.net',509,'1999-02-24',NULL,NULL),(112,'Lucius','Witting','sauer.hoyt@example.net',452222,'2016-03-25',NULL,NULL),(114,'Elliot','Klein','murray.ellsworth@example.com',7504468784,'1974-02-07',NULL,NULL),(116,'Laury','Fadel','bogan.denis@example.org',19,'2019-09-01',NULL,NULL),(119,'Abdul','Eichmann','delphia36@example.org',720135,'2009-12-24',NULL,NULL),(120,'Zelda','Gulgowski','eva.johns@example.org',220,'2017-11-19',NULL,NULL),(121,'Loren','Cartwright','connelly.carey@example.com',44,'2001-02-06',NULL,NULL),(124,'Barney','Witting','estel.fadel@example.org',766383,'1985-08-18',NULL,NULL),(125,'Mackenzie','Wisoky','dietrich.blaise@example.org',6650547043,'2016-10-04',NULL,NULL),(130,'Alfonso','Corkery','gsauer@example.com',437,'1994-10-29',NULL,NULL),(132,'Nikko','Stark','gkunze@example.com',53,'2015-10-28',NULL,NULL),(134,'Michaela','Waelchi','ziemann.tyrese@example.net',96,'2008-08-29',NULL,NULL),(136,'Erica','Cronin','demario14@example.org',635737,'1990-11-29',NULL,NULL),(137,'Monserrate','Daugherty','burnice.hessel@example.com',7,'1992-04-21',NULL,NULL),(140,'Nicole','Schaden','maxie54@example.com',303474,'1970-07-25',NULL,NULL),(141,'Triston','Parisian','damien31@example.org',42,'2016-07-31',NULL,NULL),(144,'Jailyn','Senger','danial68@example.net',560701,'1989-09-13',NULL,NULL),(146,'Sterling','Labadie','vada54@example.org',47,'2010-01-30',NULL,NULL),(147,'Sofia','Medhurst','weimann.tia@example.org',21,'1998-12-30',NULL,NULL),(148,'Ethyl','Nader','marvin.gaylord@example.com',908,'2010-09-09',NULL,NULL),(149,'Mavis','Farrell','ritchie.paige@example.org',6718356400,'1984-08-29',NULL,NULL),(150,'Laila','Klein','lmuller@example.net',133693,'2011-12-20',NULL,NULL),(151,'Santino','Lang','johan.rath@example.net',7537170885,'1979-11-20',NULL,NULL),(152,'Lavon','Klein','maegan.murazik@example.org',79,'1981-03-05',NULL,NULL),(153,'Cristal','Gusikowski','rowan.reilly@example.com',439,'1983-12-24',NULL,NULL),(155,'Selina','Lindgren','benny.marvin@example.com',582,'2002-07-31',NULL,NULL),(156,'Vivianne','Goyette','jsipes@example.net',414239,'2002-11-04',NULL,NULL),(157,'Itzel','Baumbach','do\'conner@example.net',347,'2014-09-08',NULL,NULL),(158,'Kiana','Kshlerin','hazel91@example.org',284,'2020-11-08',NULL,NULL),(159,'Vidal','Marvin','qharris@example.net',758696,'2001-01-29',NULL,NULL),(160,'Roma','Trantow','mschimmel@example.com',723,'2002-05-05',NULL,NULL),(163,'Jamir','Pacocha','lawson.moore@example.net',650,'1991-09-10',NULL,NULL),(164,'Clemens','Willms','marion54@example.com',124360,'2003-01-07',NULL,NULL),(165,'Nasir','Turner','ena76@example.com',688277,'2019-05-13',NULL,NULL),(166,'Taya','Crona','cmonahan@example.net',3053593850,'1993-11-05',NULL,NULL),(167,'Daren','Schamberger','sbogan@example.com',20,'1986-12-15',NULL,NULL),(172,'Erica','Nicolas','arlie64@example.net',2684622974,'1979-05-27',NULL,NULL),(173,'Marilyne','Rempel','uhudson@example.com',182,'2019-11-26',NULL,NULL),(175,'Aliyah','Wintheiser','logan29@example.org',501714,'2002-08-20',NULL,NULL),(176,'Ben','Ruecker','myrtie.heller@example.net',2457763901,'1971-12-06',NULL,NULL),(178,'Travis','Gleason','clementine.bashirian@example.net',933385,'2015-12-02',NULL,NULL),(181,'Dahlia','Stehr','rhea.koch@example.net',362760,'1994-11-05',NULL,NULL),(183,'Caitlyn','Abernathy','faye67@example.net',8629290410,'2008-03-02',NULL,NULL),(184,'Retha','Lindgren','claud65@example.com',9,'1978-02-19',NULL,NULL),(185,'Jay','Hudson','rolfson.corene@example.org',45,'2007-04-28',NULL,NULL),(187,'Lemuel','Rath','pcasper@example.net',3794515963,'2000-07-11',NULL,NULL),(188,'Dagmar','Bogan','camryn14@example.org',613001,'1985-04-02',NULL,NULL),(195,'Jessie','Pouros','jeffry45@example.com',117,'1988-12-02',NULL,NULL),(196,'Gayle','Kutch','freida.leannon@example.com',974,'1986-07-27',NULL,NULL),(198,'Brock','Moen','mgrady@example.org',419937,'2002-08-23',NULL,NULL),(200,'Keanu','Carter','neva92@example.com',120313,'1976-05-29',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

DROP TABLE IF EXISTS profile;
CREATE TABLE profile (
	user_id SERIAL PRIMARY KEY,
	login VARCHAR (100),
	user_password varchar (100),
    created_at date DEFAULT NULL,
    
    FOREIGN KEY (user_id) REFERENCES users(users_id) ON UPDATE CASCADE ON DELETE CASCADE
);

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES 
(100, 'login1','********','2020-06-09'),(102, 'login2','********','2022-07-30'), (103, 'login3','********','2020-07-09'), (104, 'login4','********','2021-08-09'),
(105, 'login5','********','2020-06-09'), (106, 'login6','********','2021-01-09'), (107, 'login7','********','2020-10-09'), (108, 'login8','********','2020-11-26'),
(109, 'login9','********','2020-06-09'), (124, 'login10','********','2021-02-08'), (139, 'login11','********','2020-11-11'), (154, 'login12','********','2020-12-27'),
(110, 'login13','********','2020-06-09'), (125, 'login14','********','2021-03-07'), (140, 'login15','********','2020-12-13'), (155, 'login16','********','2020-11-28'),
(111, 'login17','********','2020-06-09'), (126, 'login18','********','2021-04-06'), (141, 'login19','********','2020-13-12'), (156, 'login120','********','2020-10-29'),
(112, 'login121','********','2020-06-09'),(127, 'login122','********','2021-05-05'), (142, 'login123','********','2020-14-14'), (157, 'login124','********','2020-09-30'),
(113, 'login125','********','2020-06-09'), (128, 'login126','********','2021-06-04'), (143, 'login127','********','2020-15-15'), (158, 'login128','********','2020-08-29'),
(114, 'login129','********','2020-06-09'), (129, 'login130','********','2021-07-03'), (144, 'login131','********','2020-16-14'), (159, 'login132','********','2020-07-28'),
(115, 'login133','********','2020-06-09'), (130, 'login134','********','2021-08-02'),(145, 'login135','********','2020-17-13'), (160, 'login136','********','2020-06-27'),
(116, 'login137','********','2020-06-09'), (131, 'login138','********','2021-09-01'), (146, 'login139','********','2020-18-12'), (161, 'login140','********','2020-05-26'),
(117, 'login141','********','2020-06-09'), (132, 'login142','********','2021-10-02'), (147, 'login143','********','2020-19-11'), (162, 'login144','********','2020-04-25'),
(118, 'login145','********','2020-06-09'), (133, 'login146','********','2021-11-03'), (148, 'login147','********','2020-20-09'), (163, 'login148','********','2020-03-24'),
(119, 'login149','********','2020-06-09'), (134, 'login150','********','2021-12-04'), (149, 'login151','********','2020-21-07'), (164, 'login152','********','2020-02-23'),
(120, 'login153','********','2020-06-09'), (135, 'login154','********','2021-11-05'), (150, 'login155','********','2020-22-06'), (165, 'login156','********','2020-01-22'),
(121, 'login157','********','2020-06-09'), (136, 'login158','********','2021-10-06'), (151, 'login159','********','2020-23-05'), (166, 'login160','********','2020-02-21'),
(122, 'login161','********','2020-06-09'), (137, 'login162','********','2021-09-07'), (152, 'login163','********','2020-24-04'), (167, 'login164','********','2020-03-19'),
(123, 'login165','********','2020-06-09'), (138, 'login166','********','2021-08-08'), (153, 'login167','********','2020-25-03'),(168, 'login168','********','2020-04-29');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

LOCK TABLES `transport_offers` WRITE;
/*!40000 ALTER TABLE `transport_offers` DISABLE KEYS */;
INSERT INTO `transport_offers` VALUES (1,'velit','New Jack','Felipemouth','2006-03-11','2014-09-14',11,0,355,NULL),
(2,'adipisci','East Justicemouth','Ubaldoview','2000-10-18','2018-07-22',0,16,15,NULL),
(3,'animi','Hilllview','Theronton','2004-10-03','2014-05-08',20,12,0,NULL),
(4,'iste','Elainatown','Lake Sarinaport','2019-02-14','2022-06-13',11,18,27376,NULL),
(5,'nesciunt','Reingershire','South Courtney','1987-01-22','1975-10-16',15,19,2450,NULL),
(6,'sit','Lake Ena','Wunschport','1981-07-26','1991-12-22',6,21,37919765,NULL),
(7,'porro','Gutmanntown','South Theresa','1970-06-14','1998-08-09',15,10,1312,NULL),
(8,'asperiores','Adeliamouth','Kiarraburgh','2012-05-05','1970-11-02',17,22,344,NULL),
(9,'nisi','Giabury','South Audreanne','1984-11-03','1973-11-24',10,16,366739249,NULL),
(10,'eligendi','New Brandi','North Dixie','1990-05-28','1997-05-02',2,5,48338981,NULL),(11,'in','Emmetmouth','North Amya','1990-01-08','1980-04-03',2,20,374964,NULL),(12,'sed','Zemlakside','South Kyrastad','1990-02-10','1976-12-18',14,5,2384274,NULL),(13,'nobis','Bruenstad','Port Grace','1996-01-11','1977-04-22',9,1,18,NULL),(14,'quas','East Dedrickmouth','Adeliamouth','2006-06-28','2003-12-03',11,4,96,NULL),(15,'sequi','Bergetown','East Bethanyland','2004-01-16','1977-11-07',23,17,3060295,NULL),(16,'provident','New Eloyside','Harberside','2011-07-31','2019-10-02',6,14,80,NULL),(17,'ex','Ritchieborough','North Lenore','1989-01-27','1984-03-06',5,23,160,NULL),(18,'quae','Montyborough','Eusebiomouth','1991-09-23','2004-11-11',12,17,2,NULL),(19,'voluptatem','East Gillian','Stefanland','1984-03-21','2020-07-23',2,23,5970,NULL),(20,'vel','Port Hiram','West Kim','2022-02-06','1994-04-15',4,1,309,NULL),(21,'id','Lake Gianni','Emmettview','1971-07-01','1992-01-21',3,8,159561,NULL),(22,'eos','East Connerfurt','East Carley','1989-01-09','2013-03-22',16,4,84,NULL),(23,'aut','Erdmanchester','Jacobsshire','1977-11-23','1979-03-09',13,23,0,NULL),(24,'quo','West Sterling','Matteotown','2006-09-27','2010-02-03',13,9,38222046,NULL),(25,'blanditiis','Greenfort','Lilabury','2012-03-09','1996-03-20',22,13,47456,NULL),(26,'accusamus','Lorainemouth','North Alexieburgh','1976-10-05','1972-01-13',20,4,673,NULL),(27,'corrupti','New Ramon','West Darbyton','2018-02-05','2012-12-02',5,23,53,NULL),(28,'rerum','Tonymouth','Forrestview','1972-11-05','1973-10-02',17,20,4,NULL),(29,'laboriosam','South Thelma','South Amos','2011-11-08','1973-03-06',0,10,3,NULL),(30,'neque','South Rafaelastad','New Jennyfer','1995-04-05','1977-04-17',11,8,301932720,NULL),(31,'iusto','Hegmannville','Georgianabury','1992-03-01','2008-06-15',17,10,64902,NULL),(32,'nesciunt','Turnerborough','East Sydnee','2020-10-21','1990-09-16',7,6,184,NULL),(33,'cumque','Lake Cierra','West Erwinstad','1976-08-28','1982-01-27',14,10,133915,NULL),(34,'et','New Albertofurt','Sigridmouth','1973-12-20','1980-08-03',1,10,176750,NULL),(35,'asperiores','Ondrickabury','New Eda','1974-07-11','1984-05-14',11,23,6037313,NULL),(36,'enim','North Eleanoramouth','North Lottie','1998-08-22','1975-03-29',8,18,2523862,NULL),(37,'voluptas','East Roslynberg','New Kylieberg','2000-12-03','2015-12-24',11,6,37497,NULL),(38,'placeat','Kihnmouth','Hickleberg','2021-03-10','2004-05-11',13,17,133986,NULL),(39,'dolor','North Petraside','North Virgil','2020-05-29','1998-02-19',5,18,570092,NULL),(40,'qui','Julianaland','Lake Gilesport','1984-03-27','2002-01-19',18,16,43544679,NULL),(41,'qui','Martinview','West Vivian','1979-07-13','2002-07-06',9,17,0,NULL),(42,'aliquam','Feilport','Micaelaburgh','2003-01-29','1989-03-10',3,20,5387796,NULL),(43,'sit','Nicolasberg','South Vedafort','1985-02-07','1970-03-02',8,6,252945,NULL),(44,'quibusdam','Angelatown','Alethahaven','1999-05-01','1975-12-01',19,5,45097219,NULL),(45,'consectetur','Johnsborough','Leschmouth','2014-07-25','2004-07-30',14,23,985765,NULL),(46,'dolores','Gutkowskitown','New Dominique','2011-05-27','2012-12-09',7,7,447795,NULL),(47,'odio','Soniafort','Lake Lyda','2003-03-28','1974-12-08',23,4,2,NULL),(48,'qui','Nobleburgh','Kohlerberg','1973-11-20','2008-06-15',15,22,3746399,NULL),(49,'magni','Arvidland','North Lucile','1990-12-25','1987-07-26',22,20,15,NULL),(50,'quidem','East Chanel','New Frederique','1975-06-15','2002-06-15',12,17,0,NULL),(51,'doloremque','New Kariane','Windlermouth','2008-04-26','1973-04-04',20,21,0,NULL),(52,'perspiciatis','South Diego','New Webster','2007-12-26','1976-12-03',16,4,84315646,NULL),(53,'sed','Darrelmouth','South Merleside','1995-09-06','2016-03-08',19,10,1,NULL),(54,'dolorem','Kovacekbury','Fritschland','1979-03-13','2016-12-19',9,17,203,NULL),(55,'quae','North Keatonburgh','Lake Elwynberg','1994-12-30','2001-09-16',9,5,2591,NULL),(56,'repellat','South Lambert','Doyletown','1985-12-10','2002-03-09',12,11,57833,NULL),(57,'temporibus','Lake Gennaromouth','Lake Ednaland','2010-01-06','2014-04-29',20,2,9,NULL),(58,'sit','Lake Halliemouth','Watersburgh','1992-02-26','2011-11-11',4,1,4,NULL),(59,'debitis','Davisfort','Swiftview','1992-03-24','2002-09-30',3,7,146858,NULL),(60,'pariatur','North Jorge','Port Allyport','2015-04-28','1983-11-28',13,22,24825,NULL),(61,'delectus','West Gerardo','South Favian','2019-09-25','1979-05-17',16,14,3173647,NULL),(62,'quisquam','Kubstad','Port Dorcas','1984-01-08','1997-03-10',17,13,146887,NULL),(63,'molestiae','East Danielaton','East Lisettechester','1991-02-02','2010-09-29',17,5,19577820,NULL),(64,'molestias','North Janie','Terrybury','2005-09-23','1992-05-11',15,9,0,NULL),(65,'velit','Lake Destini','New Ledaton','1997-03-29','1986-07-29',12,5,191,NULL),(66,'id','North Leorastad','North Vella','1996-02-21','1994-12-28',5,1,20484,NULL),(67,'labore','Zacheryfort','Alannaport','2012-03-03','2013-09-04',21,13,0,NULL),(68,'optio','Ferminport','South Elvie','2021-04-17','1981-06-29',4,1,216849417,NULL),(69,'facilis','South Vernie','East Laylamouth','2022-06-16','2006-01-13',0,5,266638473,NULL),(70,'recusandae','Lake Janicechester','Feeneyfurt','2005-12-06','1997-11-04',10,1,0,NULL),(71,'provident','North Axelmouth','Lake Gilesborough','1993-04-01','1991-10-31',6,9,571,NULL),(72,'dolores','Jerdefort','New Stanford','2017-10-12','1981-07-02',15,4,3795488,NULL),(73,'optio','Marcelluschester','North Erich','1978-01-10','1979-09-28',22,5,169743,NULL),(74,'aut','Port Florenceshire','Grimesborough','1980-09-04','2018-01-12',14,18,40891,NULL),(75,'aperiam','New Otha','East Felicity','1980-03-17','1989-09-21',6,16,97266274,NULL),(76,'nemo','Lake Malikaville','Douglasshire','2013-10-20','1982-04-28',22,5,238,NULL),(77,'aut','Sandyport','Auerhaven','1995-06-20','1972-11-23',10,19,5,NULL),(78,'repellat','Lake Breannahaven','Port Orville','1991-12-03','2011-09-30',11,7,167,NULL),(79,'voluptas','West Kayceeside','Eleanorefort','2007-12-15','1989-07-16',15,23,12548847,NULL),(80,'laudantium','New Caesarville','New Marcelohaven','2020-10-31','2002-10-17',12,14,79,NULL),(81,'minima','North Gunnerbury','Marlenbury','2015-12-16','2019-12-25',4,10,18775500,NULL),(82,'id','Ivyberg','South Oranchester','1991-12-10','2001-09-29',22,20,2,NULL),(83,'consectetur','West Shane','North Noemifort','1988-04-16','1973-08-06',0,19,18,NULL),(84,'autem','New Frankie','Jackiehaven','1981-10-28','2001-02-09',8,22,71149318,NULL),(85,'nihil','Doyleborough','Port Giuseppechester','1999-10-22','1987-05-06',8,12,74395,NULL),(86,'numquam','East Theresa','Oswaldstad','1984-10-24','1983-09-30',20,6,792190026,NULL),(87,'eum','South Noelia','Willachester','1977-10-21','2021-05-29',6,23,3877,NULL),(88,'ut','South Monserrat','East Sheamouth','1971-12-21','1975-11-25',12,20,375,NULL),(89,'earum','East Randallfort','Oberbrunnerbury','1970-09-02','2017-01-18',4,18,1507859,NULL),(90,'eaque','Nealfort','Heidenreichview','2001-05-01','1985-01-19',18,19,219079813,NULL),(91,'veniam','West Theaside','Kennethmouth','1984-12-15','1993-10-31',18,20,7546193,NULL),(92,'voluptatem','North Rainaland','Jacintheview','2007-03-17','1989-09-13',10,7,5,NULL),(93,'enim','Rodrigueztown','Rosenbaumside','2004-12-23','2010-05-10',16,15,2,NULL),(94,'est','East Zeldatown','Port Estefania','1988-08-09','1996-07-14',1,4,3370,NULL),(95,'hic','Eraburgh','East Cieloberg','2003-06-21','2006-09-17',15,18,1930309,NULL),(96,'earum','South Euna','Starkburgh','1988-09-13','1987-07-22',15,7,305678,NULL),(97,'iste','East Serenity','Ernsermouth','2018-01-15','1990-02-25',16,17,29,NULL),(98,'voluptatum','Lake Charlieland','West Larissa','1984-11-21','2016-06-06',10,16,223337935,NULL),(99,'odit','Ricoville','North Gerda','1978-02-19','2016-02-13',18,21,7523,NULL),(100,'rem','East Clifford','Lake Garthbury','2017-04-18','1970-06-28',6,20,0,NULL);
/*!40000 ALTER TABLE `transport_offers` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-21 23:12:20
