-- MySQL dump 10.13  Distrib 8.0.32, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: onlineRetailStore
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `username`, `pass`) VALUES (1,'cmerrisson','uZBQQdzO');
INSERT INTO `admin` (`adminID`, `username`, `pass`) VALUES (2,'mcasperri1','wL4lGy8PO4dN');
INSERT INTO `admin` (`adminID`, `username`, `pass`) VALUES (3,'apachta2','tbGDOvI');
INSERT INTO `admin` (`adminID`, `username`, `pass`) VALUES (4,'atheunisse','N9fb9Uv');
INSERT INTO `admin` (`adminID`, `username`, `pass`) VALUES (5,'apennetta4','rEubTB');

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `userID` int NOT NULL,
  `total_cost` int DEFAULT '0',
  `productID` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  KEY `cart_product_productID_fk` (`productID`),
  KEY `cart_user_userID_fk` (`userID`),
  CONSTRAINT `cart_product_productID_fk` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`),
  CONSTRAINT `cart_user_userID_fk` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE,
  CONSTRAINT `valid_Cost` CHECK ((`total_cost` >= 0)),
  CONSTRAINT `valid_qty` CHECK ((`quantity` >= 1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (31,7263,139,4);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (110,7474,25,3);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (14,6054,118,3);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (136,8325,93,7);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (24,3267,125,6);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (63,9571,79,8);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (88,7623,129,7);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (5,6816,110,1);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (105,6742,115,3);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (97,4798,144,5);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (18,6149,144,2);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (80,7125,33,7);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (77,3202,117,9);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (96,8992,19,10);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (45,2203,41,4);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (112,5277,9,6);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (146,9672,54,9);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (87,519,40,9);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (47,4126,116,10);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (51,9798,120,6);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (27,4331,85,4);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (77,1315,61,7);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (65,8314,47,8);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (128,9506,145,10);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (21,5972,66,5);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (139,627,121,9);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (131,9795,63,4);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (21,3077,131,2);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (117,4890,78,8);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (40,1378,28,5);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (129,7463,73,8);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (62,8580,24,8);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (125,1604,130,10);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (85,4479,107,3);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (97,3195,8,3);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (119,7596,31,4);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (73,2576,131,8);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (31,2101,24,3);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (98,4260,145,2);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (92,4518,136,4);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (121,9318,40,10);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (132,5849,34,5);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (63,8710,8,9);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (135,4442,87,1);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (3,2427,81,7);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (96,4506,14,5);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (139,8907,80,10);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (66,6397,87,10);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (29,1099,89,6);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (93,4730,66,10);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (129,1473,72,6);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (72,9606,76,2);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (103,5730,26,2);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (95,8162,36,3);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (100,3911,48,5);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (75,6602,99,4);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (72,6167,32,1);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (27,3582,75,3);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (145,1595,91,10);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (60,7508,129,9);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (45,1855,16,6);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (102,8925,66,5);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (80,674,140,2);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (21,6097,105,8);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (32,8730,4,6);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (32,1928,136,3);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (148,4514,17,5);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (2,7067,109,9);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (31,5699,49,6);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (80,557,60,2);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (31,5705,85,10);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (23,4536,27,9);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (149,7472,106,7);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (105,9918,101,4);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (28,1107,107,1);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (65,4589,147,3);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (55,3751,140,10);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (64,8548,135,8);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (147,2895,58,5);
INSERT INTO `cart` (`userID`, `total_cost`, `productID`, `quantity`) VALUES (40,4952,90,1);

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryID` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `info` varchar(50) DEFAULT NULL COMMENT 'general information about category',
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `category_name`, `info`) VALUES (1,'kitchen, food','edibles and ingredients');
INSERT INTO `category` (`categoryID`, `category_name`, `info`) VALUES (2,'healthcare','products related to healthcare');
INSERT INTO `category` (`categoryID`, `category_name`, `info`) VALUES (3,'beauty, skincare','cosmetics');
INSERT INTO `category` (`categoryID`, `category_name`, `info`) VALUES (4,'clothes','fashion and garments');
INSERT INTO `category` (`categoryID`, `category_name`, `info`) VALUES (5,'furniture','furniture');
INSERT INTO `category` (`categoryID`, `category_name`, `info`) VALUES (6,'grocery','milk, bread');
INSERT INTO `category` (`categoryID`, `category_name`, `info`) VALUES (7,'equipments','tv, fridge, washing machine');
INSERT INTO `category` (`categoryID`, `category_name`, `info`) VALUES (8,'book','fiction, non-fiction');
INSERT INTO `category` (`categoryID`, `category_name`, `info`) VALUES (9,'softdrinks, beverages','non-alcoholic');
INSERT INTO `category` (`categoryID`, `category_name`, `info`) VALUES (10,'instant cook','ready to eat');
INSERT INTO `category` (`categoryID`, `category_name`, `info`) VALUES (11,'eletronics','mobile, laptop');
INSERT INTO `category` (`categoryID`, `category_name`, `info`) VALUES (12,'sports, outdoor','cricket, football, trekking, hiking, training');
INSERT INTO `category` (`categoryID`, `category_name`, `info`) VALUES (13,'tools','tools like drill machine');
INSERT INTO `category` (`categoryID`, `category_name`, `info`) VALUES (14,'cleaning supplies','');
INSERT INTO `category` (`categoryID`, `category_name`, `info`) VALUES (15,'stationary','Office Supplies');
INSERT INTO `category` (`categoryID`, `category_name`, `info`) VALUES (16,'medicine','medicine');

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `couponID` char(10) NOT NULL,
  `discount` int NOT NULL DEFAULT '0',
  `expiry` date NOT NULL,
  `is_used` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`couponID`),
  CONSTRAINT `valid_discount` CHECK ((`discount` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('abz881k489',40,'2023-03-15',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('acy790n507',11,'2023-03-20',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('agz497w032',11,'2022-05-03',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('aoe721u574',6,'2022-04-24',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('ata532d551',40,'2023-02-20',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('aud055u562',27,'2022-11-27',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('awe375b559',39,'2022-09-21',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('azi440w839',32,'2022-06-27',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('bif765d675',44,'2023-01-30',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('bni456j821',35,'2022-01-30',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('bnx793o366',49,'2022-07-19',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('btt988e649',47,'2022-05-26',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('byy198x327',23,'2022-02-06',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('cnc913p595',37,'2022-05-11',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('cru764y845',27,'2023-01-27',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('czx540w711',28,'2023-01-01',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('ddg599f439',27,'2023-03-18',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('ddo023u960',6,'2022-10-31',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('dfe319t802',37,'2022-09-24',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('dha227x400',19,'2022-09-15',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('dja597w280',31,'2022-10-02',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('dqc299j501',49,'2023-01-30',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('dsh910o923',42,'2023-01-06',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('duq035v333',3,'2022-03-30',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('ecv437h573',33,'2022-02-13',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('ejg523c962',1,'2022-12-15',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('emd703g602',20,'2023-04-22',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('eqo937b141',42,'2023-01-23',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('euv485k795',33,'2023-03-11',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('ffn368q546',39,'2023-03-17',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('fjn956v480',13,'2022-08-24',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('fju791v178',18,'2022-02-27',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('flw725i964',45,'2022-11-01',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('fmt168l673',37,'2022-09-29',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('fqe795c069',30,'2022-10-31',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('gaw803e683',8,'2022-05-21',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('ghz831q270',38,'2022-11-27',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('hji556w473',37,'2023-02-27',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('hmn738m148',31,'2022-05-01',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('hqi630l195',23,'2023-02-22',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('hxf576p416',37,'2022-04-13',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('iap784s055',39,'2022-12-04',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('ibb900g817',20,'2022-11-17',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('ibs624e086',48,'2022-09-06',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('igp198e527',43,'2022-09-03',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('ile887i852',43,'2022-09-07',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('iue490z467',30,'2023-03-19',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('jif564v586',1,'2022-02-19',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('jjp908x756',42,'2022-02-03',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('jqx152a644',7,'2022-10-02',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('juu514g177',6,'2022-05-19',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('jzb744v067',48,'2022-10-15',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('kem934l508',14,'2022-06-09',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('kju684q339',42,'2022-05-21',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('lrs650s626',2,'2022-10-15',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('luz750a710',21,'2023-03-10',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('lzj891l788',26,'2022-06-12',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('mfx737k797',17,'2022-06-17',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('mhv239h743',22,'2022-10-09',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('mlc219o427',23,'2023-03-04',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('mrw294z938',21,'2022-03-11',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('msd811d417',18,'2022-02-14',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('mzf536v172',46,'2022-08-18',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('ncf443g663',14,'2022-10-12',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('neh837n549',49,'2022-04-02',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('nvk215k844',27,'2023-02-03',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('ofh068i730',14,'2022-12-13',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('oko231u142',35,'2022-11-09',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('oob430t871',38,'2023-02-04',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('oog924f525',22,'2022-02-15',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('oru598s112',48,'2023-01-03',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('oud291n688',1,'2022-10-22',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('owx621o594',33,'2022-12-28',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('pfx258d819',36,'2022-09-28',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('pgv675r667',30,'2022-01-31',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('pki168z493',50,'2022-10-16',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('ppn822h055',9,'2022-09-15',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('ptk435j544',42,'2022-07-14',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('pvp709m091',19,'2023-02-01',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('qcm533t563',39,'2022-03-02',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('qff424q318',48,'2022-12-21',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('qiv300u503',44,'2022-09-06',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('qpz401i033',19,'2023-03-15',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('qvg342m106',31,'2022-12-26',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('qvx359r920',50,'2022-01-14',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('rdc006x040',46,'2022-11-08',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('reo365y026',34,'2022-06-20',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('rlv357y374',5,'2022-04-08',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('rpq110o515',5,'2022-08-16',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('rsb644a877',37,'2023-02-01',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('rtc186g216',19,'2022-03-09',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('rww377w602',27,'2022-01-25',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('sbk405e341',22,'2023-02-14',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('shh550r614',3,'2022-04-06',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('swn828r321',26,'2023-03-18',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('sws266u795',42,'2023-03-20',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('tin821l586',49,'2022-07-28',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('tjl473l153',40,'2022-07-24',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('tru771t069',37,'2022-07-14',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('uip687l767',27,'2023-04-24',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('ukx418r600',13,'2022-04-28',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('umk143o437',48,'2022-03-18',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('uml248g623',38,'2023-01-28',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('usk664y240',46,'2022-02-27',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('usw324d496',18,'2022-09-04',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('vfk032l452',45,'2023-01-02',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('viv911j800',27,'2022-12-22',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('vkr829f696',4,'2022-01-08',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('vlk733m210',43,'2022-10-07',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('vpd127p366',39,'2023-02-07',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('vqp998i729',41,'2022-07-23',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('vre145r658',14,'2022-10-26',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('vya189g153',31,'2022-12-24',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('wba906p597',2,'2022-02-28',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('wwr852c088',23,'2022-09-25',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('xdb764d457',5,'2022-05-11',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('xdj637y222',10,'2022-05-16',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('xov783n964',40,'2022-08-02',1);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('xwu806r047',5,'2023-04-01',0);
INSERT INTO `coupons` (`couponID`, `discount`, `expiry`, `is_used`) VALUES ('yxt786k964',33,'2022-09-20',0);

--
-- Table structure for table `my_orders`
--

DROP TABLE IF EXISTS `my_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_orders` (
  `orderID` int NOT NULL,
  `productID` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `cost` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`orderID`,`productID`),
  CONSTRAINT `my_orders_order_orderID_fk` FOREIGN KEY (`orderID`) REFERENCES `order` (`orderID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_orders`
--

INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (1,135,5,9412);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (2,23,8,3653);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (5,4,3,677);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (5,92,7,5425);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (6,139,9,8758);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (7,80,6,5433);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (9,3,6,8732);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (12,38,1,4707);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (12,93,7,1254);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (12,127,7,1324);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (13,28,1,161);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (14,33,5,4370);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (14,128,9,9746);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (15,27,6,4081);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (15,32,5,6804);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (15,48,10,2134);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (15,50,7,9646);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (16,67,6,2680);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (17,128,3,4508);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (17,149,1,1657);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (18,27,3,5460);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (18,37,7,2767);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (18,43,6,5945);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (18,90,3,5085);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (19,81,10,9537);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (25,34,7,5134);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (25,87,5,179);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (25,101,6,9473);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (27,32,10,8556);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (28,87,1,1020);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (28,145,6,8029);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (29,134,10,1508);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (30,39,6,591);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (31,18,5,8822);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (31,27,9,5910);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (31,124,3,6798);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (32,98,6,1025);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (35,148,7,7643);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (36,1,1,6509);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (36,70,4,9701);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (36,105,1,6141);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (37,150,5,871);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (38,60,9,1653);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (39,34,10,2438);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (40,56,2,2590);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (41,108,8,9260);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (43,41,3,8895);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (43,104,7,1753);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (45,1,4,5404);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (45,48,5,3379);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (45,56,3,9126);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (45,60,3,485);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (46,123,7,2371);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (47,32,5,7897);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (47,122,1,7624);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (47,125,3,2065);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (48,38,4,8168);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (49,133,2,8782);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (50,40,4,3567);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (51,113,3,3562);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (53,40,6,1479);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (54,133,4,7971);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (55,144,1,9371);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (57,31,10,3930);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (61,79,1,2523);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (62,48,2,8874);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (63,112,10,2902);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (63,128,8,2172);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (64,47,1,9070);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (64,80,2,8875);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (65,56,6,6572);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (69,5,6,8559);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (70,134,1,4294);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (71,54,10,8412);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (71,62,10,5427);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (71,77,3,5165);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (71,116,4,5822);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (76,56,6,3948);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (77,108,7,3766);
INSERT INTO `my_orders` (`orderID`, `productID`, `quantity`, `cost`) VALUES (80,102,6,7782);

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `orderID` int NOT NULL AUTO_INCREMENT,
  `delivery_address` varchar(50) NOT NULL,
  `userId` int NOT NULL,
  `order_value` int NOT NULL,
  `delivery_date` date NOT NULL,
  `couponID` char(10) DEFAULT NULL,
  `paymentID` int NOT NULL,
  PRIMARY KEY (`orderID`),
  UNIQUE KEY `order_pk` (`paymentID`),
  KEY `order_coupons_couponID_fk` (`couponID`),
  KEY `order_user_userID_fk` (`userId`),
  CONSTRAINT `order_coupons_couponID_fk` FOREIGN KEY (`couponID`) REFERENCES `coupons` (`couponID`) ON DELETE SET NULL,
  CONSTRAINT `order_payments_paymentID_fk` FOREIGN KEY (`paymentID`) REFERENCES `payments` (`paymentID`) ON DELETE CASCADE,
  CONSTRAINT `order_user_userID_fk` FOREIGN KEY (`userId`) REFERENCES `user` (`userID`),
  CONSTRAINT `value_check` CHECK ((`order_value` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (1,'134 Dennis Lane',139,9714,'2022-03-19','czx540w711',65);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (2,'0937 Manley Alley',18,1243,'2023-03-13','eqo937b141',17);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (3,'178 Erie Center',77,763,'2022-05-24',NULL,77);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (4,'337 Rockefeller Plaza',83,1707,'2022-08-27','xdb764d457',47);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (5,'8534 Fisk Pass',89,1061,'2023-04-07',NULL,76);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (6,'5126 Mendota Drive',42,8830,'2022-11-18','dqc299j501',23);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (7,'87476 Schurz Alley',88,892,'2023-01-10','acy790n507',53);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (8,'643 East Plaza',19,9684,'2022-09-15',NULL,35);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (9,'30 Annamark Circle',63,2436,'2022-03-26','cnc913p595',49);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (10,'8203 Swallow Drive',59,2188,'2022-04-26','rsb644a877',52);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (11,'303 3rd Trail',95,8898,'2022-11-20','jqx152a644',15);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (12,'7 Ronald Regan Place',110,6148,'2023-01-07',NULL,78);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (13,'56068 Coleman Way',35,3510,'2022-05-06',NULL,79);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (14,'7799 Shelley Place',111,4702,'2023-01-15',NULL,40);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (15,'18973 Hazelcrest Pass',32,9916,'2022-04-06','ibb900g817',24);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (16,'7 Cascade Plaza',140,3566,'2023-04-26','sbk405e341',55);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (17,'46 Kingsford Plaza',109,9546,'2023-01-16','pvp709m091',56);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (18,'9463 Atwood Street',112,9200,'2022-09-08','jjp908x756',54);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (19,'60752 Ohio Hill',51,5806,'2022-06-12','ibs624e086',22);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (20,'8 Hoepker Way',76,8481,'2023-03-12',NULL,34);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (21,'37383 Rusk Parkway',21,8139,'2022-10-05','azi440w839',9);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (22,'26 Dawn Crossing',99,1436,'2022-11-18','ppn822h055',61);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (23,'7453 Straubel Park',36,4211,'2023-02-01','usw324d496',62);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (24,'0 School Point',73,8650,'2022-10-28','uml248g623',59);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (25,'550 Northfield Street',128,1777,'2022-03-11','dja597w280',64);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (26,'68539 Pawling Park',121,3736,'2022-04-17','iap784s055',25);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (27,'90 Algoma Circle',15,3581,'2023-03-27','oob430t871',3);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (28,'8 Tennyson Street',122,9755,'2022-08-17','dsh910o923',6);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (29,'8976 Shopko Hill',60,8726,'2022-04-16','abz881k489',21);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (30,'549 Warbler Trail',8,2289,'2022-09-29','msd811d417',51);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (31,'147 Bay Drive',127,768,'2022-05-26','mrw294z938',8);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (32,'050 Mifflin Parkway',19,8865,'2022-11-06','dha227x400',20);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (33,'0 Magdeline Drive',84,8949,'2022-07-20','fju791v178',57);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (34,'550 Nobel Terrace',91,3176,'2022-08-23','lzj891l788',69);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (35,'28 Express Parkway',112,8835,'2022-12-20',NULL,31);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (36,'8 Kensington Road',117,1387,'2022-08-15',NULL,33);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (37,'2006 Manitowish Circle',89,4557,'2022-06-21','rww377w602',67);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (38,'283 Spohn Place',52,2475,'2022-09-28','pki168z493',63);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (39,'71 Westridge Crossing',116,6556,'2022-09-14','xdj637y222',73);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (40,'96 Spenser Alley',79,8306,'2022-12-30','ofh068i730',13);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (41,'87 Spenser Street',9,4065,'2023-04-25',NULL,27);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (42,'7 Lunder Terrace',141,1579,'2022-08-18','ejg523c962',60);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (43,'8920 Park Meadow Avenue',101,6231,'2022-05-14','vre145r658',5);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (44,'0 Jenna Park',6,9899,'2022-09-02','hxf576p416',4);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (45,'999 Myrtle Way',3,9985,'2022-10-17','ata532d551',11);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (46,'96262 Hanson Parkway',131,5640,'2022-03-27',NULL,39);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (47,'8 Goodland Road',106,8997,'2022-02-09',NULL,41);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (48,'1275 Monica Park',28,19,'2022-06-14',NULL,29);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (49,'98 Corben Street',36,2973,'2022-06-14','jzb744v067',43);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (50,'0 Burning Wood Pass',48,4012,'2022-09-27','ghz831q270',18);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (51,'64517 Eliot Lane',77,765,'2022-10-13',NULL,26);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (52,'6 Little Fleur Court',53,3175,'2022-02-10','duq035v333',19);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (53,'6 Rieder Alley',69,6466,'2022-08-13',NULL,37);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (54,'5591 Mallard Pass',10,2773,'2022-04-02',NULL,28);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (55,'3 Ludington Road',145,2164,'2022-05-07','igp198e527',66);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (56,'084 Haas Lane',63,7199,'2023-02-26','rtc186g216',14);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (57,'6306 Sutherland Center',63,4499,'2023-03-24','vqp998i729',46);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (58,'0288 Karstens Lane',9,6752,'2022-04-20',NULL,36);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (59,'1 Montana Avenue',66,8762,'2022-12-03','viv911j800',7);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (60,'6 Arizona Park',10,3501,'2022-07-14','nvk215k844',70);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (61,'1 Commercial Parkway',113,8316,'2022-11-01','rlv357y374',42);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (62,'57 Kennedy Plaza',14,7364,'2022-06-20',NULL,2);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (63,'2664 Eagle Crest Street',50,8579,'2022-07-11','qcm533t563',16);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (64,'2 Center Lane',70,3114,'2022-02-03',NULL,75);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (65,'98798 Hooker Avenue',45,7375,'2023-02-09',NULL,32);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (66,'99476 Orin Way',44,5366,'2022-11-14','uip687l767',74);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (67,'42 Starling Court',143,3903,'2022-10-16','emd703g602',50);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (68,'1 Mcbride Crossing',107,7494,'2022-07-16','fjn956v480',10);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (69,'95562 Hudson Park',113,5305,'2023-01-19','pgv675r667',72);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (70,'8 Laurel Park',81,5014,'2022-04-09','euv485k795',68);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (71,'55 Mallard Trail',7,6860,'2022-01-23','vlk733m210',12);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (72,'43489 Fordem Plaza',115,1608,'2022-04-28','xwu806r047',71);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (73,'3854 Sugar Place',103,161,'2022-12-28','mhv239h743',45);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (74,'2744 Prairieview Alley',78,5513,'2022-06-30','oru598s112',58);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (75,'80 Pankratz Court',115,4148,'2022-10-06',NULL,30);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (76,'56 Saint Paul Crossing',20,6184,'2022-02-27',NULL,80);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (77,'88243 Prentice Terrace',6,6422,'2022-11-23',NULL,1);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (78,'15 Blackbird Center',18,8901,'2022-11-20','iue490z467',48);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (79,'0 Eliot Circle',122,238,'2022-06-11',NULL,38);
INSERT INTO `order` (`orderID`, `delivery_address`, `userId`, `order_value`, `delivery_date`, `couponID`, `paymentID`) VALUES (80,'0 Delaware Court',105,4198,'2022-03-26','tjl473l153',44);

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `paymentID` int NOT NULL AUTO_INCREMENT COMMENT 'should be less than 8 digits',
  `payment_mode` varchar(10) NOT NULL COMMENT 'can be cod,netbanking,upi',
  `payment_address` varchar(20) NOT NULL DEFAULT 'same as shipment',
  PRIMARY KEY (`paymentID`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (1,'cod','7 Northview Plaza');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (2,'upi','64210 Superior Park');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (3,'netbanking','803 Kinsman Lane');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (4,'upi','347 Barnett Street');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (5,'upi','3019 Brentwood Place');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (6,'cod','68422 Vernon Street');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (7,'cod','5 Esch Avenue');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (8,'upi','86751 Evergreen Way');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (9,'upi','92 Village Green Cou');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (10,'cod','4 Melrose Plaza');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (11,'cod','58 Logan Parkway');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (12,'cod','8344 Melvin Street');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (13,'netbanking','0 Monterey Park');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (14,'upi','6 Melody Circle');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (15,'netbanking','58704 Mosinee Way');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (16,'upi','636 Prairie Rose All');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (17,'upi','742 Susan Hill');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (18,'netbanking','237 Hagan Place');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (19,'netbanking','4 4th Road');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (20,'upi','31 Emmet Pass');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (21,'upi','28864 Eagle Crest La');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (22,'cod','2683 Warrior Trail');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (23,'upi','28 Chive Alley');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (24,'netbanking','554 Hermina Trail');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (25,'cod','551 Graedel Pass');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (26,'upi','090 8th Center');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (27,'netbanking','462 Sunbrook Plaza');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (28,'upi','252 Kingsford Alley');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (29,'upi','05876 Forest Dale Ci');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (30,'netbanking','7 Russell Road');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (31,'cod','9 Eastwood Avenue');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (32,'cod','06 Riverside Plaza');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (33,'cod','5205 Lake View Pass');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (34,'netbanking','940 Hallows Avenue');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (35,'cod','9196 Fallview Avenue');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (36,'cod','94107 Clove Park');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (37,'upi','62778 Pleasure Avenu');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (38,'cod','0 Mallard Avenue');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (39,'cod','4455 Pearson Alley');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (40,'netbanking','49361 South Plaza');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (41,'cod','78 Judy Crossing');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (42,'cod','71009 Menomonie Cent');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (43,'cod','11 Browning Road');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (44,'netbanking','25 Cardinal Parkway');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (45,'netbanking','5 Mallory Center');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (46,'cod','30806 Delladonna Hil');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (47,'netbanking','75 Haas Parkway');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (48,'upi','4736 Michigan Terrac');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (49,'cod','8 Meadow Valley Junc');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (50,'cod','4207 Lakewood Hill');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (51,'netbanking','69 Oak Circle');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (52,'cod','94 Dwight Point');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (53,'upi','5770 Morningstar Way');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (54,'cod','7200 Jackson Way');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (55,'upi','3 Sachtjen Lane');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (56,'upi','17 7th Drive');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (57,'netbanking','547 Lotheville Pass');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (58,'upi','4159 Autumn Leaf Cen');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (59,'netbanking','64756 Village Green ');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (60,'upi','84052 Kingsford Hill');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (61,'cod','3220 Bartillon Court');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (62,'upi','77 Kim Crossing');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (63,'upi','13 Buena Vista Plaza');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (64,'upi','080 Scofield Hill');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (65,'cod','9125 Coolidge Terrac');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (66,'cod','72227 School Hill');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (67,'cod','54 Golf Course Park');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (68,'netbanking','5184 Summerview Cour');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (69,'cod','06 Schiller Trail');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (70,'cod','71082 Superior Place');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (71,'upi','155 Beilfuss Park');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (72,'upi','33 Evergreen Alley');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (73,'cod','0175 Del Sol Avenue');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (74,'upi','017 Lake View Street');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (75,'upi','7205 Comanche Avenue');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (76,'upi','0912 Scoville Park');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (77,'upi','6 Forest Run Terrace');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (78,'upi','916 Corry Parkway');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (79,'netbanking','4 Thompson Avenue');
INSERT INTO `payments` (`paymentID`, `payment_mode`, `payment_address`) VALUES (80,'cod','61571 Hanover Hill');

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productID` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(10) NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (1,'Milk',10,883);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (2,'Ghee',20,217);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (3,'Milk',11,427);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (4,'Biscuit',5,105);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (5,'Bread',20,587);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (6,'Maggie',12,645);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (7,'Chocolate',5,345);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (8,'Corn Flake',100,58);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (9,'Chocos',120,676);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (10,'Watch',5000,707);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (11,'Cream',80,381);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (12,'Supplement',500,938);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (13,'Toothpaste',1000,631);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (14,'Shampoo',100,51);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (15,'Shaving Cr',200,956);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (16,'Conditione',80,661);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (17,'Cream',50,311);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (18,'Shaving cr',160,318);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (19,'Shaving Cr',170,124);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (20,'Soap',20,51);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (21,'Shoes',10000,818);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (22,'Football',1200,680);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (23,'Bag',1000,989);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (24,'T-shirt',500,267);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (25,'Shoes',5000,869);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (26,'Shoes',6000,183);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (27,'T-shirt',500,297);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (28,'Shirt',1000,212);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (29,'Coke',50,73);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (30,'Sprite',45,437);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (31,'Honey',50,278);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (32,'Pepsi',100,166);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (33,'TV',120000,42);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (34,'Fridge',10000,44);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (35,'Galaxy S22',80000,687);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (36,'Air Condit',50000,214);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (37,'TV',60000,801);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (38,'Fridge',50000,321);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (39,'Washing Ma',10000,879);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (40,'Sofa',5000,46);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (41,'Iphone',100000,978);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (42,'Airpods',22000,970);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (43,'Earbuds',1000,379);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (44,'Bhujia',100,936);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (45,'Dal Makhni',200,440);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (46,'Dal Tadka',300,839);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (47,'Dal Biji',400,674);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (48,'Galaxy S10',50000,291);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (49,'Galaxy S20',60000,752);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (50,'Galaxy S21',70000,490);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (51,'Macbook Pr',100000,528);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (52,'Macbook Ai',80000,151);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (53,'Earphones',1000,300);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (54,'Jeans',1000,742);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (55,'Innerwear',500,893);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (56,'Boxers',300,166);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (57,'Vest',200,396);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (58,'Trouser',500,297);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (59,'Mask',100,239);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (60,'Deodorant',200,252);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (61,'Hair Oil',300,748);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (62,'Eyeliner',400,309);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (63,'Coviself',500,303);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (64,'Tulsi Drop',600,246);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (65,'Soap',50,562);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (66,'Thumbs Up',100,627);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (67,'Limca',50,345);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (68,'Ice Tea',40,529);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (69,'Soda',40,79);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (70,'Chips',20,101);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (71,'Chips',20,712);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (72,'Headband',100,721);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (73,'Badminton ',600,768);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (74,'Tennis Rac',800,807);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (75,'Tennis Bal',100,561);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (76,'Squash Rac',500,24);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (77,'Kettle',1000,453);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (78,'Sandwich M',500,800);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (79,'Mixer',1500,405);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (80,'Toaster',2000,297);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (81,'Grinder',2500,281);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (82,'Hand Blend',1200,608);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (83,'Hair Strai',2800,629);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (84,'Hair Dryer',3000,939);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (85,'Hair Curle',1375,897);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (86,'Soundproof',175000,323);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (87,'Low Noise ',99000,278);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (88,'Football',790,82);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (89,'Tennis Bal',380,892);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (90,'Basketball',2000,80);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (91,'Inline Ska',2000,315);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (92,'Godihittu ',419,284);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (93,'Aashirvaad',300,277);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (94,'Fortified ',400,790);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (95,'Aashirvaad',350,104);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (96,'Whole Whea',250,889);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (97,'Aashirvaad',299,581);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (98,'Aashirvaad',399,142);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (99,'Chana Dal',200,144);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (100,'Bingo Crea',10,867);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (101,'Bingo Masa',10,776);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (102,'Bingo Chil',10,794);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (103,'Bingo Salt',10,484);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (104,'Bingo Salt',10,488);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (105,'Mad Angles',10,279);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (106,'Mad Angles',10,109);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (107,'Mad Angles',10,673);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (108,'Mad Angles',10,6);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (109,'Mad Angles',10,734);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (110,'Mad Angles',10,945);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (111,'Mad Angles',10,191);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (112,'Mad Angles',10,498);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (113,'Mad Angles',10,58);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (114,'Mad Angles',10,214);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (115,'Tangles Ma',10,806);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (116,'Salted Tan',10,651);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (117,'Savlon Han',80,969);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (118,'Savlon Soa',10,913);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (119,'Savlon Mas',10,430);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (120,'Lizol Liqu',100,902);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (121,'Harpic',100,193);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (122,'Mortein Po',140,356);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (123,'Mortein Po',40,232);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (124,'Mortein Ma',90,412);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (125,'Pen Stand',200,975);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (126,'Acrylic Wr',1500,218);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (127,'Acrylic Pa',150,766);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (128,'Leather Wr',3000,239);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (129,'Hansaplast',200,712);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (130,'Hansaplast',200,126);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (131,'Hansaplast',400,791);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (132,'Hansaplast',200,398);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (133,'Hansaplast',300,348);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (134,'Hansaplast',300,170);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (135,'Hansaplast',200,541);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (136,'Hansaplast',200,44);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (137,'Hansaplast',200,276);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (138,'Hansaplast',50,387);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (139,'Hansaplast',100,375);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (140,'Hansaplast',100,867);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (141,'Hansaplast',100,215);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (142,'Mars Lumog',675,172);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (143,'Noris Club',675,316);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (144,'Textsurfer',675,908);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (145,'Jumbo Penc',675,521);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (146,'Compass',675,502);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (147,'Color Penc',675,257);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (148,'Sharpner',100,278);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (149,'Eraser',90,904);
INSERT INTO `product` (`productID`, `product_name`, `price`, `quantity`) VALUES (150,'Mechanical',100,566);

--
-- Table structure for table `product_category_map`
--

DROP TABLE IF EXISTS `product_category_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category_map` (
  `productID` int NOT NULL,
  `categoryID` int NOT NULL,
  PRIMARY KEY (`productID`,`categoryID`),
  KEY `product_category_map_category_categoryID_fk` (`categoryID`),
  CONSTRAINT `product_category_map_category_categoryID_fk` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`) ON DELETE CASCADE,
  CONSTRAINT `product_category_map_product_productID_fk` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category_map`
--

INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (1,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (2,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (3,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (4,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (5,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (6,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (7,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (8,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (9,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (29,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (30,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (31,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (32,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (44,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (45,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (92,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (93,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (94,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (95,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (96,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (97,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (98,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (99,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (100,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (101,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (102,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (103,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (104,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (105,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (106,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (107,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (108,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (109,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (110,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (111,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (112,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (113,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (114,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (115,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (116,1);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (8,2);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (10,2);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (12,2);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (13,2);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (14,2);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (31,2);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (63,2);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (64,2);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (11,3);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (13,3);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (14,3);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (15,3);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (16,3);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (17,3);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (18,3);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (19,3);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (20,3);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (24,4);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (27,4);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (28,4);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (54,4);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (55,4);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (56,4);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (57,4);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (58,4);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (40,5);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (1,6);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (2,6);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (3,6);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (5,6);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (8,6);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (9,6);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (13,6);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (14,6);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (20,6);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (23,6);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (59,6);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (60,6);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (61,6);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (62,6);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (65,6);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (122,6);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (123,6);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (124,6);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (33,7);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (34,7);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (36,7);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (37,7);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (38,7);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (39,7);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (77,7);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (78,7);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (79,7);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (80,7);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (81,7);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (82,7);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (83,7);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (84,7);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (85,7);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (1,9);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (3,9);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (29,9);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (30,9);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (32,9);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (66,9);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (67,9);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (68,9);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (69,9);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (8,10);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (9,10);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (44,10);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (45,10);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (46,10);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (47,10);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (70,10);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (71,10);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (10,11);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (33,11);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (35,11);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (37,11);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (41,11);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (42,11);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (43,11);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (48,11);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (49,11);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (50,11);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (51,11);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (52,11);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (53,11);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (10,12);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (21,12);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (22,12);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (25,12);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (26,12);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (72,12);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (73,12);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (74,12);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (75,12);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (76,12);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (88,12);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (89,12);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (90,12);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (91,12);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (86,13);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (87,13);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (117,14);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (118,14);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (120,14);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (121,14);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (125,15);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (126,15);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (127,15);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (128,15);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (142,15);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (143,15);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (144,15);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (145,15);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (146,15);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (147,15);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (148,15);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (149,15);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (150,15);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (119,16);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (129,16);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (130,16);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (131,16);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (132,16);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (133,16);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (134,16);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (135,16);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (136,16);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (137,16);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (138,16);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (139,16);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (140,16);
INSERT INTO `product_category_map` (`productID`, `categoryID`) VALUES (141,16);

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `user_address` varchar(50) NOT NULL,
  `email_id` varchar(20) NOT NULL,
  `phone_number` bigint NOT NULL,
  `pass` varchar(20) NOT NULL,
  `privilege_status` varchar(10) NOT NULL DEFAULT 'normal' COMMENT 'can be normal or pro',
  PRIMARY KEY (`userID`),
  UNIQUE KEY `unique_phone` (`phone_number`),
  UNIQUE KEY `unique_value` (`email_id`),
  CONSTRAINT `valid_phone` CHECK (((`phone_number` > 1000000000) and (`phone_number` < 10000000000)))
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (1,'Celeste','Skippon','89251 Harbort Road','cskippon0@yahoo.com',8262147880,'e6hQlf','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (2,'Victoir','Goodlad','9445 Stoughton Lane','vgoodlad1@posterous.',4814861702,'CvGn3HpOK','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (3,'Cindee','Croose','6 Warbler Court','ccroose2@timesonline',3087573865,'5mTDW3Ye03N','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (4,'Dara','Travis','5472 Stephen Drive','dtravis3@posterous.c',1352829297,'CNvDEl','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (5,'madhav',NULL,'delhi','sdfsdf',1234567899,'dfgdfg','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (6,'kunal','sharma','jind','ksdfajdhf',8059519750,'asdfkjasf','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (7,'Min','Royson','668 Corry Junction','mroyson6@mac.com',3924503842,'xSFc6N','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (8,'Jayson','Tetther','29 Arizona Way','jtetther7@oracle.com',6182884105,'59nmqP4WjkL','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (9,'Valentino',NULL,'3 Blaine Drive','vbazelle8@cnn.com',3743345656,'Fqfyydu','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (10,'Bradley',NULL,'578 Grayhawk Road','bdavidy9@virginia.ed',6593671972,'xLI02nnMj1','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (11,'Horacio','Ellgood','67984 Iowa Drive','hellgooda@chronoengi',2786884040,'8gVh7T','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (12,'Jeana','Eby','0281 Barnett Court','jebyb@youtube.com',7569135894,'FGDevZUhSa1','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (13,'Anna-diane','Boeter','92344 Dunning Circle','aboeterc@china.com.c',4226664790,'Lcqqejgyddrp','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (14,'Loydie','Songhurst','8 Forest Run Alley','lsonghurstd@uol.com.',6567593739,'ZA68VroaH2Om','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (15,'Frasco','Bleasdale','3123 American Ash Court','fbleasdalee@4shared.',6002922653,'8AsR6w','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (16,'Rory','Shuxsmith','2822 Southridge Avenue','rshuxsmithf@creative',9867020536,'dsHY3IDXkc','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (17,'Chevalier','MacGillicuddy','4357 Almo Park','cmacgillicuddyg@baid',3482357404,'Jr8O8w','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (18,'Erv','Fidoe','6 Springview Avenue','efidoeh@github.com',8089147759,'sUszShQx7','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (19,'Erminie','Island','35 Superior Circle','eislandi@walmart.com',2068849604,'cV9pJtwcf','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (20,'Jodee','Greensted','44 Vernon Point','jgreenstedj@hatena.n',4963213297,'SvxpEV18d6u','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (21,'Bartlett',NULL,'0 Stang Road','bzouchk@japanpost.jp',9612891680,'Odow3apW40PE','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (22,'Alexia',NULL,'61 Di Loreto Terrace','awildborel@pbs.org',1958731560,'LMiTgmV30','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (23,'Barbette','McClean','80265 Orin Center','bmccleanm@blogspot.c',9566775946,'BILrlAfurUY','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (24,'Abbe','Jillins','276 Tony Place','ajillinsn@patch.com',1334858861,'M2Dc9nTVS','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (25,'Kaitlin','Cholomin','4 Thompson Plaza','kcholomino@dmoz.org',9443211324,'47ewTyz','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (26,'Vidovik','Griffitt','2226 Moulton Drive','vgriffittp@columbia.',2801396043,'JboHrvtTdO','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (27,'Kamilah','Lethbrig','086 Menomonie Terrace','klethbrigq@amazon.co',2998306607,'KTEBd6Xno','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (28,'Corilla','Grenshields','6807 Southridge Avenue','cgrenshieldsr@hc360.',7966537919,'nKMGB5yF2','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (29,'Fredelia','Karpinski','98225 Fuller Drive','fkarpinskis@stumbleu',2858843573,'kFkqUDCd','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (30,'Coreen',NULL,'8824 Pierstorff Alley','cphlipont@tripod.com',6704927709,'ybLHOz','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (31,'Bradly','Coo','9 Vermont Lane','bcoou@so-net.ne.jp',4499228920,'LpVaaHA3T0wz','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (32,'Gilberto','Buckney','8586 Judy Trail','gbuckneyv@alexa.com',7628182670,'bYn4Gq','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (33,'Mack','Hablet','69 Anhalt Way','mhabletw@toplist.cz',9898119780,'fP2uVrLlgu','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (34,'Arin','Damrel','95422 Anniversary Place','adamrelx@a8.net',2867243340,'UB6pNPlzsJ','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (35,'Melinde','Kolak','35099 Oakridge Place','mkolaky@bandcamp.com',9874821390,'mjJQx5WQN3','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (36,'Ashlin','Davidescu','4884 Redwing Center','adavidescuz@google.f',9768570048,'c6UjWsHGvM','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (37,'Hersh','Dablin','1943 Bellgrove Parkway','hdablin10@e-recht24.',3951681112,'oW9b0XFWvAz','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (38,'Tamara','Pessolt','034 Hudson Road','tpessolt11@clickbank',3686422734,'5qxawgv','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (39,'Vita','Danser','474 Miller Center','vdanser12@telegraph.',6471721572,'JOuJSuLn','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (40,'Jamil','Dedon','6550 Manitowish Park','jdedon13@elegantthem',1872799305,'ur9eNx1','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (41,'Kathryne',NULL,'29 Service Alley','klivick14@umn.edu',1646979902,'Mqh5dxQR','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (42,'Cymbre','Samet','6 Nova Avenue','csamet15@google.it',7346008882,'Gw23rU2uV2','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (43,'Ferdy',NULL,'00566 Dottie Circle','fkenright16@un.org',9506758472,'ZqWAGx','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (44,'Hollyanne','Caller','78797 Namekagon Parkway','hcaller17@theglobean',2163457137,'6MrXUKsSn','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (45,'Rolland','Strippling','11 Pleasure Street','rstrippling18@howstu',3021400104,'3KCDldJw','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (46,'Ellissa',NULL,'4702 5th Plaza','ekubat19@unicef.org',6512340220,'LXpozzyTqbV','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (47,'Titus',NULL,'67 Monterey Junction','tdrynan1a@cbsnews.co',6758946186,'B5gJFpPTt','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (48,'Prince','Saenz','722 Lakewood Gardens Plaza','psaenz1b@usnews.com',8439831138,'zaroOzP','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (49,'Trenton','Heath','153 Nova Avenue','theath1c@seesaa.net',6915493913,'IdOYwcNBJrb','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (50,'Bryn','Izatt','2641 Vera Point','bizatt1d@trellian.co',1346671619,'cku8Us1WOG','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (51,'Modestine','Rolfe','99 Sloan Hill','mrolfe1e@squarespace',1892909059,'bqXIuqk7L','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (52,'Yvette',NULL,'6420 Hintze Drive','ymcwilliam1f@weibo.c',4266246329,'IMlnk5Ni','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (53,'Cortie',NULL,'734 Carpenter Pass','ccollett1g@sina.com.',4987072361,'xog7PamOlTI','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (54,'Berkeley','Habberjam','99338 Pankratz Street','bhabberjam1h@1und1.d',8014944342,'eYDQqLDgcw','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (55,'Flemming','Gouda','85753 Sunbrook Way','fgouda1i@sina.com.cn',5614952864,'vRMDV6Z4Jn73','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (56,'Rebecka',NULL,'7940 Drewry Hill','rstegel1j@nymag.com',6192408930,'zoEkusTfsZZ','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (57,'Giorgi','Hartell','42 Pearson Crossing','ghartell1k@mediafire',8785269917,'8TOOTI','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (58,'Denyse','Bruford','70 Raven Pass','dbruford1l@amazon.co',7255295891,'sGtEYotW','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (59,'Jacquelyn','Poulglais','7282 Schiller Hill','jpoulglais1m@network',2643208213,'QNO245w','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (60,'Dorthea',NULL,'50 Sachs Pass','ddibbe1n@typepad.com',5269040936,'TYaTkT9v9t','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (61,'Andrey',NULL,'488 Loftsgordon Court','amccolm1o@tamu.edu',3702675935,'W7MtxGaVlz','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (62,'Jarret','Baudon','2 Esch Way','jbaudon1p@blogspot.c',8048375810,'1Km382hzwDJ','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (63,'Sibley','Forrester','1 Kingsford Park','sforrester1q@indiego',3142251011,'1YGFIdlVYA','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (64,'Tabbitha','Mersey','0 Sunnyside Hill','tmersey1r@thetimes.c',2828376291,'FF7zW3','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (65,'Wendell',NULL,'470 Northview Lane','wbarkhouse1s@cnn.com',4919044488,'aMoSi25fz9','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (66,'Gleda','Casterot','9 Trailsway Point','gcasterot1t@upenn.ed',8565126929,'EN3zUei','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (67,'Lanie','Halcro','4 Nova Parkway','lhalcro1u@homestead.',3872097407,'HCk6w5BLx','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (68,'Ernestus',NULL,'3 Eagle Crest Road','equince1v@squidoo.co',1695424891,'QJCeSNHZonFB','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (69,'Beckie','Eytel','142 Morning Park','beytel1w@earthlink.n',6802867027,'ozo0cwpNuh','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (70,'Stephanus','Dymocke','0197 Schlimgen Point','sdymocke1x@slate.com',6823279937,'d5dqikH9R76','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (71,'Lou','Fransewich','1476 Sunbrook Road','lfransewich1y@t.co',3366311834,'7iK5TKp','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (72,'Fifine','Silverthorn','47357 Talmadge Crossing','fsilverthorn1z@list-',7876782528,'dhelvfG','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (73,'Danice','de Bullion','5890 Darwin Drive','ddebullion20@goo.gl',9376158104,'LwfKPzQuTQ','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (74,'Fallon','Dennick','27103 Pawling Junction','fdennick21@blinklist',9244531355,'wEihDZc','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (75,'Murdoch',NULL,'0 Elmside Alley','mmctavish22@examiner',1293452741,'536AYEoz','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (76,'Gladi','Mullally','34559 Chive Center','gmullally23@japanpos',9013859620,'fU7z6WA0','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (77,'Giacobo','Canceller','3 7th Street','gcanceller24@list-ma',2339029359,'TLPD59','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (78,'Doralia','Glison','86 Truax Center','dglison25@psu.edu',8204353372,'D9pmHKm8lpP','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (79,'Norry',NULL,'1 Farragut Parkway','nmacvey26@stumbleupo',9327922144,'pcLpdglqP6','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (80,'Bernie','Burkill','87 Continental Circle','bburkill27@addtoany.',9246430047,'I9UByIZ8','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (81,'Wileen','Petty','84388 Merry Crossing','wpetty28@mapy.cz',6507401925,'JfZTSwc','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (82,'Westley','Hatton','07532 Quincy Pass','whatton29@opera.com',7738757309,'OKF7BpMGd','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (83,'Carlyle',NULL,'662 Elgar Hill','csecretan2a@deliciou',2267435659,'C4aUIjqio','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (84,'Devora',NULL,'17750 Continental Way','dstamps2b@si.edu',6381561662,'ekAyWwE9ggFO','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (85,'Halimeda','Gleed','272 Mayfield Pass','hgleed2c@xinhuanet.c',8028723456,'aSTsToKuhDH','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (86,'Humberto','Heaven','8888 Derek Point','hheaven2d@ameblo.jp',6243581015,'ZFvC0oWPJBD','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (87,'Pauline','Ackers','1 Sutherland Drive','packers2e@dailymail.',1719176858,'vPG76Uxa1pW','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (88,'Onfroi','Stenton','0 Pepper Wood Center','ostenton2f@mapquest.',4463808261,'Hn6QYJOu','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (89,'Alisa','MacTerlagh','0 Homewood Circle','amacterlagh2g@purevo',8595619926,'0IIwu0','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (90,'Brittne','Muzzillo','7125 Daystar Drive','bmuzzillo2h@flavors.',2104222794,'tN1rvcnS','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (91,'Rosita','Kohtler','04772 Dayton Lane','rkohtler2i@ebay.co.u',8987448072,'cvRstoZ','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (92,'Benedicta','Jackalin','303 Prentice Circle','bjackalin2j@ibm.com',7913854731,'vWk3f7','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (93,'Jarvis',NULL,'21304 Bonner Point','jboreland2k@newsvine',2065020831,'iTVWofJ','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (94,'Baron','Claxson','220 Valley Edge Road','bclaxson2l@ovh.net',2723259616,'ZZ5rbTcqQVD','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (95,'Laurence','Lartice','11 Buhler Street','llartice2m@theglobea',4149253586,'JUZDIj1R5hhp','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (96,'Winonah','Dusting','9136 Kedzie Junction','wdusting2n@intel.com',2212249322,'3qeKWSxMNhV','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (97,'Dode',NULL,'7 Marquette Avenue','dgirardez2o@angelfir',6205513876,'2r2oRDKd31JT','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (98,'Drucill',NULL,'02 Haas Street','dfoster2p@mapy.cz',1547141164,'Lfp2TutvR','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (99,'Jessalyn',NULL,'6 Norway Maple Circle','jsudell2q@jigsy.com',1888683636,'CJ4MUv','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (100,'Tootsie','Stooke','8753 Cambridge Circle','tstooke2r@de.vu',8802509766,'RtMF4b4wue2','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (101,'Danita','Philcox','8 South Avenue','dphilcox2s@angelfire',8492605651,'6FKvLLRO1','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (102,'Robby','Vickerman','11 Rigney Lane','rvickerman2t@arstech',9445308678,'oix8NT5Sb','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (103,'Jarid','Worsnop','50891 Buell Parkway','jworsnop2u@github.co',3047496450,'B9h7dvbbSoc','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (104,'Antons','Tatlowe','12 Atwood Junction','atatlowe2v@illinois.',6688556617,'7NfEp3','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (105,'Antin','Meachan','530 Mariners Cove Terrace','ameachan2w@twitpic.c',6957502231,'w5FGsQzty','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (106,'Sheridan',NULL,'1070 Bowman Street','srafter2x@rakuten.co',9768319961,'Ifzvpg','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (107,'Hersch','Waszkiewicz','06307 Division Center','hwaszkiewicz2y@answe',4438330431,'XBpfAa','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (108,'Orton','Liddall','1 Melrose Place','oliddall2z@tamu.edu',7321846604,'FrMQXRXL','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (109,'Ferdinand','Lamke','504 Linden Circle','flamke30@google.com.',3832651492,'GVei1r','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (110,'Emily',NULL,'564 Farwell Lane','eficken31@businesswe',4619238835,'0Z1s0sSpn7uj','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (111,'Roger','Bleythin','2 Hudson Alley','rbleythin32@mozilla.',3493448550,'FeU221X','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (112,'Steffen','Denne','8621 Crownhardt Drive','sdenne33@upenn.edu',2914100416,'fL7gEnRqn4','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (113,'Yorke',NULL,'88 Ridgeview Hill','ycrinkley34@ox.ac.uk',5638304969,'KLGOsIZp','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (114,'Blondy',NULL,'947 Mccormick Drive','bpignon35@adobe.com',8715490699,'4uJcmfa','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (115,'Steven',NULL,'14 Darwin Pass','scloonan36@shareasal',8086969175,'mUEodnltP','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (116,'Jorrie','Badsworth','38359 Mosinee Trail','jbadsworth37@ed.gov',8373371006,'pL4aoeLu','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (117,'Harriette',NULL,'293 Morningstar Street','hdowthwaite38@a8.net',1857245842,'rInbyE','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (118,'Priscilla',NULL,'79 Redwing Court','pheilds39@sbwire.com',3136618705,'oeztjl','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (119,'Emeline','Duplain','4381 Mendota Crossing','eduplain3a@nifty.com',4002554855,'isIsuGWAeE','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (120,'Gelya','Alltimes','160 Vernon Point','galltimes3b@ovh.net',8544309205,'AMijDLvb3fY','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (121,'Rubia','Duddin','6715 Alpine Terrace','rduddin3c@flavors.me',2831652306,'1uRxjy9Z','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (122,'Shalne','Wear','79277 Ohio Parkway','swear3d@people.com.c',5538598147,'EJ8gfSLJTk','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (123,'Mariann','Whooley','011 Vermont Park','mwhooley3e@ustream.t',1872081963,'Cx6gsEdM','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (124,'Jamey',NULL,'725 Sommers Lane','jhurle3f@so-net.ne.j',2948487090,'GvIS9jaR6O','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (125,'Tatiana','Fann','4983 Anhalt Avenue','tfann3g@tuttocitta.i',9507229861,'mhsnxNfIoIbf','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (126,'Leesa','D\'Oyly','4838 Johnson Alley','ldoyly3h@nytimes.com',2123400437,'epZpmgEXTi','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (127,'Orton','Luebbert','654 Harbort Hill','oluebbert3i@nymag.co',2079866794,'rGnIeU1bRcC9','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (128,'Lita','Kelloch','00544 Grayhawk Terrace','lkelloch3j@freewebs.',6198535329,'zbNkEHJlL','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (129,'Beverlie','Vickar','19 Warbler Park','bvickar3k@uol.com.br',9909593053,'qpBClQKgJC','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (130,'Natalya','Santostefano.','2 Twin Pines Way','nsantostefano3l@live',9409601986,'T0Ku8TWDDpy','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (131,'Scott','Rothera','44 Sage Trail','srothera3m@smh.com.a',1203150993,'i3vJCK','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (132,'Dalli',NULL,'9 Oak Valley Road','dsummerbell3n@blogta',2465677134,'vdvUw4T','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (133,'Pierette','Teasey','490 Rutledge Alley','pteasey3o@sitemeter.',6897844020,'PfXY8nLWb','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (134,'Herman',NULL,'02 Dahle Avenue','hbarnfather3p@wisc.e',8903502063,'v1kqUv0lHY7K','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (135,'Marlie','MacRorie','6 Northview Trail','mmacrorie3q@tuttocit',3457814732,'tZbkXwUWSb4','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (136,'Hayley','Gludor','155 Myrtle Alley','hgludor3r@kickstarte',2769567359,'QNkX6wEKKn','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (137,'Haley','Welbourn','0003 Fulton Junction','hwelbourn3s@163.com',4142705539,'9zpvXah7','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (138,'Magda','Kells','42758 Old Gate Avenue','mkells3t@nih.gov',3821186622,'xJzZuQn','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (139,'Natty',NULL,'85 Forster Terrace','nlozano3u@ow.ly',7071744077,'pbi0gPu0','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (140,'Rosemonde','Goulter','5155 Graedel Way','rgoulter3v@nbcnews.c',1929086152,'bOU4gmcL','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (141,'Murdock','Le Borgne','888 Eggendart Trail','mleborgne3w@edublogs',9822380042,'hN45yrFBRnlV','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (142,'Marietta','MacCarter','039 Swallow Lane','mmaccarter3x@creativ',7832890784,'JreZDOZOa','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (143,'Madelaine','Sherbrooke','2 Canary Parkway','msherbrooke3y@omnitu',7159548304,'4VBRJvtgsV','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (144,'Marshal',NULL,'3 Helena Alley','mwhitten3z@vk.com',8906512963,'HGvxfLxZ','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (145,'Skippie','Devigne','0815 Dawn Plaza','sdevigne40@usgs.gov',3577503541,'HhuqS09uZIL','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (146,'Guillemette','Eglise','970 David Way','geglise41@latimes.co',6614856719,'7Q8VJuyMLV1','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (147,'Annalise',NULL,'65 Sutherland Parkway','amatthius42@google.n',3029800453,'yjcFzregSqK','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (148,'Murvyn','Trice','273 Kennedy Crossing','mtrice43@hostgator.c',7983265149,'bm5yhOafd3F','normal\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (149,'Loella','Ashburner','8 Helena Way','lashburner44@ustream',5908783853,'M6kQfqmx','pro\r');
INSERT INTO `user` (`userID`, `first_name`, `last_name`, `user_address`, `email_id`, `phone_number`, `pass`, `privilege_status`) VALUES (150,'Suzanna','Guiel','510 Westport Road','sguiel45@bluehost.co',5368562809,'vh3ZQL5','normal');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-10  0:54:19
