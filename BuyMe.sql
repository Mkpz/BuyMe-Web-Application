CREATE DATABASE  IF NOT EXISTS `buyme` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `buyme`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: buyme
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alerts` (
  `alert_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `message` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`alert_id`,`username`),
  KEY `alert_username_fk_idx` (`username`),
  CONSTRAINT `alert_username_fk` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auction`
--

DROP TABLE IF EXISTS `auction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auction` (
  `start_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` datetime NOT NULL,
  `auction_id` int NOT NULL AUTO_INCREMENT,
  `current_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `seller_username` varchar(50) DEFAULT NULL,
  `buyer_username` varchar(50) DEFAULT NULL,
  `manufacture_id` int NOT NULL,
  `hidden_minimum_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `minimum_bid_increment` decimal(10,2) NOT NULL DEFAULT '0.01',
  PRIMARY KEY (`auction_id`),
  KEY `buyer_username_fk_idx` (`buyer_username`),
  KEY `seller_username_fk_idx` (`seller_username`),
  KEY `manufacture_id_fk_idx` (`manufacture_id`),
  CONSTRAINT `buyer_username_fk` FOREIGN KEY (`buyer_username`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `manufacture_id_fk` FOREIGN KEY (`manufacture_id`) REFERENCES `clothes` (`manufacture_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `seller_username_fk` FOREIGN KEY (`seller_username`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auction`
--

LOCK TABLES `auction` WRITE;
/*!40000 ALTER TABLE `auction` DISABLE KEYS */;
/*!40000 ALTER TABLE `auction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bid`
--

DROP TABLE IF EXISTS `bid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bid` (
  `bid_id` int NOT NULL,
  `auction_id` int NOT NULL,
  `bidder_username` varchar(50) NOT NULL DEFAULT 'root',
  `amount` decimal(10,2) DEFAULT '0.01',
  PRIMARY KEY (`bid_id`,`auction_id`,`bidder_username`),
  KEY `suction_id_fk_idx` (`auction_id`),
  KEY `bidder_username_fk_idx` (`bidder_username`),
  CONSTRAINT `auction_id_fk` FOREIGN KEY (`auction_id`) REFERENCES `auction` (`auction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bidder_username_fk` FOREIGN KEY (`bidder_username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bid`
--

LOCK TABLES `bid` WRITE;
/*!40000 ALTER TABLE `bid` DISABLE KEYS */;
/*!40000 ALTER TABLE `bid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bidsetting`
--

DROP TABLE IF EXISTS `bidsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bidsetting` (
  `auction_id` int NOT NULL,
  `bidder_username` varchar(50) NOT NULL,
  `anonymousORnot` tinyint NOT NULL DEFAULT '0',
  `autobiddingORnot` tinyint NOT NULL DEFAULT '0',
  `sutobid_upper_limit` decimal(10,2) NOT NULL DEFAULT '0.01',
  PRIMARY KEY (`auction_id`,`bidder_username`),
  KEY `bidder_username_fk2_idx` (`bidder_username`),
  CONSTRAINT `auction_id_fk2` FOREIGN KEY (`auction_id`) REFERENCES `auction` (`auction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bidder_username_fk2` FOREIGN KEY (`bidder_username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bidsetting`
--

LOCK TABLES `bidsetting` WRITE;
/*!40000 ALTER TABLE `bidsetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `bidsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bottoms`
--

DROP TABLE IF EXISTS `bottoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bottoms` (
  `type` enum('Activewear','Sweatpants','Jeans') DEFAULT NULL,
  `waist_length` enum('XS','S','M','L','XL') DEFAULT NULL,
  `rise_type` enum('High','Mid','Low') DEFAULT NULL,
  `manufacture_id` int NOT NULL,
  PRIMARY KEY (`manufacture_id`),
  CONSTRAINT `manufacture_id_bottoms_fk` FOREIGN KEY (`manufacture_id`) REFERENCES `clothes` (`manufacture_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottoms`
--

LOCK TABLES `bottoms` WRITE;
/*!40000 ALTER TABLE `bottoms` DISABLE KEYS */;
/*!40000 ALTER TABLE `bottoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothes`
--

DROP TABLE IF EXISTS `clothes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clothes` (
  `manufacture_id` int NOT NULL AUTO_INCREMENT,
  `brand` enum('Adidas','Calvin Klein','Nike','Levis') DEFAULT NULL,
  `type` enum('Top','Bottom','Footwear') DEFAULT NULL,
  `gender` enum('Women','Men') DEFAULT NULL,
  `age` enum('Infants','Kids','Teenagers','Young Adults','30-50','60+') DEFAULT NULL,
  PRIMARY KEY (`manufacture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothes`
--

LOCK TABLES `clothes` WRITE;
/*!40000 ALTER TABLE `clothes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clothes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `answer` varchar(100) DEFAULT NULL,
  `question` varchar(100) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `qid` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`qid`),
  KEY `username_fk_idx` (`username`),
  CONSTRAINT `username_fk` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES ('Yes','Do you sell this?','test1@rut',1),('No','Can I find this in red?','test5',2);
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footwear`
--

DROP TABLE IF EXISTS `footwear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footwear` (
  `type_of_footwear` enum('Athletic shoes','Boots','Sneakers','Flats') DEFAULT NULL,
  `size` enum('4','5','6','7','8','9','10','11') DEFAULT NULL,
  `lace_color` enum('Black','Blue','Brown','Beige','Green','Red') DEFAULT NULL,
  `manufacture_id` int NOT NULL,
  PRIMARY KEY (`manufacture_id`),
  CONSTRAINT `manufacture_id_footwear_fk` FOREIGN KEY (`manufacture_id`) REFERENCES `clothes` (`manufacture_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footwear`
--

LOCK TABLES `footwear` WRITE;
/*!40000 ALTER TABLE `footwear` DISABLE KEYS */;
/*!40000 ALTER TABLE `footwear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top`
--

DROP TABLE IF EXISTS `top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `top` (
  `Neck_type` enum('High','Boat','Collared') DEFAULT NULL,
  `size` enum('XS','S','M','L','XL') DEFAULT NULL,
  `sleeve_length` enum('none','short','long','3/4') DEFAULT NULL,
  `manufacture_id` int NOT NULL,
  PRIMARY KEY (`manufacture_id`),
  CONSTRAINT `manufacture_id_top_fk` FOREIGN KEY (`manufacture_id`) REFERENCES `clothes` (`manufacture_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top`
--

LOCK TABLES `top` WRITE;
/*!40000 ALTER TABLE `top` DISABLE KEYS */;
/*!40000 ALTER TABLE `top` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_type` enum('END','CR','ADMIN') NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT 'root',
  `password` varchar(50) NOT NULL DEFAULT 'root',
  PRIMARY KEY (`username`,`password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('ADMIN','map616@cs','password123'),('END','test1@rut','password567'),('CR','test2@rut','password000'),('CR','test3@rut','password999'),('END','test5','password333');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-04 12:51:50
