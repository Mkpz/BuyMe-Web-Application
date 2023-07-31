DROP DATABASE IF EXISTS `BuyMe`;
CREATE DATABASE IF NOT EXISTS `BuyMe` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `BuyMe`;

-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
-- 
-- Host: localhost   Database: BuyMe
-- ------------------------------------------------------
-- Server version	8.0.33-ARM64

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_type` varchar(5) DEFAULT NULL,
  `username` varchar(50) DEFAULT 'root',
  `password` varchar(50) DEFAULT 'root',
  PRIMARY KEY (`username`, `password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('ADMIN', 'map616@cs', 'password123');
INSERT INTO `users` VALUES ('END', 'test1@rut', 'password567');
INSERT INTO `users` VALUES ('CR', 'test2@rut', 'password000');
INSERT INTO `users` VALUES ('CR', 'test3@rut', 'password999');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FAQs`
--

DROP TABLE IF EXISTS `FAQs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FAQs` (
  `answer` varchar(100) ,
  `question` varchar(100) ,
  PRIMARY KEY (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FAQs`
--

LOCK TABLES `FAQs` WRITE;
/*!40000 ALTER TABLE `FAQs` DISABLE KEYS */;
INSERT INTO `FAQs` VALUES ('The answer is yes!', 'Do you sell shirts?'); 
INSERT INTO `FAQs` VALUES ('The answer is no!', 'Do you sell hats?'); 
/*!40000 ALTER TABLE `FAQs` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alerts` (
  `alert_id` varchar(3) NOT NULL DEFAULT '000',
  `item_description` varchar(100),
  PRIMARY KEY (`alert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
INSERT INTO `alerts` VALUES ('001', 'Blue Polo Shirt, Size: Medium'); 
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bid`
--

DROP TABLE IF EXISTS `bid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bid` (
  `bid_id` varchar(5) NOT NULL DEFAULT '00000',
  `username` varchar(50) DEFAULT 'root',
  `amount` int,
  PRIMARY KEY (`bid_id`, `username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bid`
--

LOCK TABLES `bid` WRITE;
/*!40000 ALTER TABLE `bid` DISABLE KEYS */;
INSERT INTO `bid` VALUES ('00001', 'test1@rut', 500); 
/*!40000 ALTER TABLE `bid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auction`
--

DROP TABLE IF EXISTS `auction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction` (
  `start_time` datetime,
  `end_time` datetime,
  `auction_id` varchar(5),
  `highest_bid` int,
  `seller_username`  varchar(50) NOT NULL DEFAULT '0000',
  `buyer_username`  varchar(4) NOT NULL DEFAULT '0000',
  PRIMARY KEY (`auction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auction`
--

LOCK TABLES `auction` WRITE;
/*!40000 ALTER TABLE `auction` DISABLE KEYS */;
INSERT INTO `auction` VALUES ('1000-01-01 00:00:00.000000', '9999-12-31 23:59:59.499999', '00000', 100, 'test1@rut', 'test2@rut'); 
/*!40000 ALTER TABLE `auction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothes`
--

DROP TABLE IF EXISTS `clothes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clothes` (
  `manufacture_id`  varchar(4) NOT NULL DEFAULT '0000',
  `brand` varchar(50),
  PRIMARY KEY (`manufacture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothes`
--

LOCK TABLES `clothes` WRITE;
/*!40000 ALTER TABLE `clothes` DISABLE KEYS */;
INSERT INTO `clothes` VALUES ('0001', 'Adidas'); 
/*!40000 ALTER TABLE `clothes` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `top`
--

DROP TABLE IF EXISTS `top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top` (
  `type_of_collar`  varchar(15),
  `size` varchar(15),
  `sleeve_length_inches` int,
  `manufacture_id`  varchar(4) NOT NULL DEFAULT '0000',
  PRIMARY KEY (`manufacture_id`),
  FOREIGN KEY (`manufacture_id`) REFERENCES `clothes` (`manufacture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top`
--

LOCK TABLES `top` WRITE;
/*!40000 ALTER TABLE `top` DISABLE KEYS */;
INSERT INTO `top` VALUES ('None', 'Medium', 41, '0001'); 
/*!40000 ALTER TABLE `top` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bottoms`
--

DROP TABLE IF EXISTS `bottoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bottoms` (
  `type`  varchar(15),
  `waist_length` varchar(15),
  `rise_type` varchar(15),
  `manufacture_id`  varchar(4) NOT NULL DEFAULT '0000',
  PRIMARY KEY (`manufacture_id`),
  FOREIGN KEY (`manufacture_id`) REFERENCES `clothes` (`manufacture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottoms`
--

LOCK TABLES `bottoms` WRITE;
/*!40000 ALTER TABLE `bottoms` DISABLE KEYS */;
INSERT INTO `bottoms` VALUES ('Jean', 32, 'Normal', '0001'); 
/*!40000 ALTER TABLE `bottoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footwear`
--

DROP TABLE IF EXISTS `footwear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `footwear` (
  `type_of_footwear`  varchar(15),
  `size` int,
  `lace_color` varchar(15),
  `manufacture_id`  varchar(4) NOT NULL DEFAULT '0000',
  PRIMARY KEY (`manufacture_id`),
  FOREIGN KEY (`manufacture_id`) REFERENCES `clothes` (`manufacture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footwear`
--

LOCK TABLES `footwear` WRITE;
/*!40000 ALTER TABLE `footwear` DISABLE KEYS */;
INSERT INTO `footwear` VALUES ('Sneaker', 10, 'Blue', '0001'); 
/*!40000 ALTER TABLE `footwear` ENABLE KEYS */;
UNLOCK TABLES;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

