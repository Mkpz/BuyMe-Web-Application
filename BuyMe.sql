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
  `user_id` varchar(4) NOT NULL DEFAULT '0000',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('0001');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_rep`
--

DROP TABLE IF EXISTS `customer_rep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_rep` (
  `user_id` varchar(4) NOT NULL DEFAULT '0000',
  `cr_id` varchar(4) NOT NULL DEFAULT '0000',
  `name` varchar(15) DEFAULT NULL,
  `modify_info` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`, `cr_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_rep`
--

LOCK TABLES `customer_rep` WRITE;
/*!40000 ALTER TABLE `customer_rep` DISABLE KEYS */;
INSERT INTO `customer_rep` VALUES ('0001', '1111', 'Mr.Customer_Rep', NULL); 
/*!40000 ALTER TABLE `customer_rep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_user`
--

DROP TABLE IF EXISTS `end_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_user` (
  `end_user_id` varchar(4) NOT NULL DEFAULT '0000',
  `user_id` varchar(4) NOT NULL DEFAULT '0000',
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`end_user_id`, `user_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_user`
--

LOCK TABLES `end_user` WRITE;
/*!40000 ALTER TABLE `end_user` DISABLE KEYS */;
INSERT INTO `end_user` VALUES ('1', '0001', 'map616@cs', 'password123');
/*!40000 ALTER TABLE `end_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_staff`
--

DROP TABLE IF EXISTS `admin_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_staff` (
  `admin_id` varchar(4) NOT NULL DEFAULT '0000',
  `user_id` varchar(4) NOT NULL DEFAULT '0000',
  `admin_name` varchar(50),
  PRIMARY KEY (`admin_id`,`user_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_staff`
--

LOCK TABLES `admin_staff` WRITE;
/*!40000 ALTER TABLE `admin_staff` DISABLE KEYS */;
INSERT INTO `admin_staff` VALUES ('1234', '0001', 'Mr.Admin'); 
/*!40000 ALTER TABLE `admin_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `answer` varchar(100) ,
  `question` varchar(100) ,
  `q_id` varchar(3) NOT NULL DEFAULT '000',
  `user_id` varchar(4) NOT NULL DEFAULT '0000',
  PRIMARY KEY (`q_id`),
  FOREIGN KEY (`user_id`) REFERENCES `end_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES ('The answer is yes!', 'Do you sell shirts?', '001', '0001'); 
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer` (
  `cr_id` varchar(4) NOT NULL DEFAULT '0000',
  `q_id` varchar(3) NOT NULL DEFAULT '000',
  PRIMARY KEY (`q_id`),
  FOREIGN KEY (`q_id`) REFERENCES `questions` (`q_id`)
  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES ('0001', '001'); 
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask`
--

DROP TABLE IF EXISTS `ask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask` (
  `user_id` varchar(4) NOT NULL DEFAULT '0000',
  `q_id` varchar(3) NOT NULL DEFAULT '000',
  PRIMARY KEY (`q_id`),
  FOREIGN KEY (`q_id`) REFERENCES `questions` (`q_id`),
  FOREIGN KEY (`user_id`) REFERENCES `end_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask`
--

LOCK TABLES `ask` WRITE;
/*!40000 ALTER TABLE `ask` DISABLE KEYS */;
INSERT INTO `ask` VALUES ('0001', '001'); 
/*!40000 ALTER TABLE `ask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puts`
--

DROP TABLE IF EXISTS `puts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puts` (
  `user_id` varchar(4) NOT NULL DEFAULT '0000',
  `alert_id` varchar(3) NOT NULL DEFAULT '000',
  PRIMARY KEY (`alert_id`),
  FOREIGN KEY (`alert_id`) REFERENCES `alerts` (`alert_id`),
  FOREIGN KEY (`user_id`) REFERENCES `end_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puts`
--

LOCK TABLES `puts` WRITE;
/*!40000 ALTER TABLE `puts` DISABLE KEYS */;
INSERT INTO `puts` VALUES ('0001', '001'); 
/*!40000 ALTER TABLE `puts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places` (
  `user_id` varchar(4) NOT NULL DEFAULT '0000',
  `bid_id` varchar(5) NOT NULL DEFAULT '00000',
  `bidder_id` varchar(5) NOT NULL DEFAULT '00000',
  PRIMARY KEY (`bid_id`, `bidder_id`),
  FOREIGN KEY (`bid_id`, `bidder_id`) REFERENCES `bid` (`bid_id`, `bidder_id`),
  FOREIGN KEY (`user_id`) REFERENCES `end_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES ('0001', '00001', '00001'); 
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sells_in`
--

DROP TABLE IF EXISTS `sells_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sells_in` (
  `user_id` varchar(4) NOT NULL DEFAULT '0000',
  `auction_id` varchar(8) NOT NULL DEFAULT '00000000',
  PRIMARY KEY (`auction_id`),
  FOREIGN KEY (`auction_id`) REFERENCES `auction` (`auction_id`),
  FOREIGN KEY (`user_id`) REFERENCES `end_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sells_in`
--

LOCK TABLES `sells_in` WRITE;
/*!40000 ALTER TABLE `sells_in` DISABLE KEYS */;
INSERT INTO `sells_in` VALUES ('0001', '00000001'); 
/*!40000 ALTER TABLE `sells_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buys_in`
--

DROP TABLE IF EXISTS `buys_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buys_in` (
  `user_id` varchar(4) NOT NULL DEFAULT '0000',
  `auction_id` varchar(8) NOT NULL DEFAULT '00000000',
  PRIMARY KEY (`auction_id`),
  FOREIGN KEY (`auction_id`) REFERENCES `auction` (`auction_id`),
  FOREIGN KEY (`user_id`) REFERENCES `end_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buys_in`
--

LOCK TABLES `buys_in` WRITE;
/*!40000 ALTER TABLE `buys_in` DISABLE KEYS */;
INSERT INTO `buys_in` VALUES ('0001', '00000001'); 
/*!40000 ALTER TABLE `buys_in` ENABLE KEYS */;
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
  `bidder_id` varchar(5) NOT NULL DEFAULT '00000',
  `amount` int,
  PRIMARY KEY (`bid_id`, `bidder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bid`
--

LOCK TABLES `bid` WRITE;
/*!40000 ALTER TABLE `bid` DISABLE KEYS */;
INSERT INTO `bid` VALUES ('00001', '00000', 500); 
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
  `item_id` varchar(5),
  `auction_id` varchar(5),
  `highest_bid` int,
  `seller_id`  varchar(4) NOT NULL DEFAULT '0000',
  `buyer_id`  varchar(4) NOT NULL DEFAULT '0000',
  PRIMARY KEY (`auction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auction`
--

LOCK TABLES `auction` WRITE;
/*!40000 ALTER TABLE `auction` DISABLE KEYS */;
INSERT INTO `auction` VALUES ('1000-01-01 00:00:00.000000', '9999-12-31 23:59:59.499999', '00000', '00000', 100, '0000', '0000'); 
/*!40000 ALTER TABLE `auction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `for`
--

DROP TABLE IF EXISTS `for`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `for` (
  `alert_id` varchar(3) NOT NULL DEFAULT '000',
  `manufacture_id`  varchar(4) NOT NULL DEFAULT '0000',
  PRIMARY KEY (`alert_id`, `manufacture_id`),
  FOREIGN KEY (`alert_id`) REFERENCES `alerts` (`alert_id`),
  FOREIGN KEY (`manufacture_id`) REFERENCES `clothes` (`manufacture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `for`
--

LOCK TABLES `for` WRITE;
/*!40000 ALTER TABLE `for` DISABLE KEYS */;
INSERT INTO `for` VALUES ('000', '0000'); 
/*!40000 ALTER TABLE `for` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applies_to`
--

DROP TABLE IF EXISTS `applies_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applies_to` (
  `auction_id` varchar(8) NOT NULL DEFAULT '00000000',
  `bid_id` varchar(5) NOT NULL DEFAULT '00000',
  `bidder_id` varchar(5) NOT NULL DEFAULT '00000',
  PRIMARY KEY (`bid_id`, `bidder_id`),
  FOREIGN KEY (`bid_id`, `bidder_id`) REFERENCES `bid` (`bid_id`, `bidder_id`),
  FOREIGN KEY (`auction_id`) REFERENCES `auction` (`auction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applies_to`
--

LOCK TABLES `applies_to` WRITE;
/*!40000 ALTER TABLE `applies_to` DISABLE KEYS */;
INSERT INTO `applies_to` VALUES ('00000001', '00001', '00001'); 
/*!40000 ALTER TABLE `applies_to` ENABLE KEYS */;
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
-- Table structure for table `has`
--

DROP TABLE IF EXISTS `has`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has` (
  `manufacture_id`  varchar(4) NOT NULL DEFAULT '0000',
  `auction_id` varchar(8) NOT NULL DEFAULT '00000000',
  PRIMARY KEY (`auction_id`),
  FOREIGN KEY (`auction_id`) REFERENCES `auction` (`auction_id`),
  FOREIGN KEY (`manufacture_id`) REFERENCES `clothes` (`manufacture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has`
--

LOCK TABLES `has` WRITE;
/*!40000 ALTER TABLE `has` DISABLE KEYS */;
INSERT INTO `has` VALUES ('0001', '00000001'); 
/*!40000 ALTER TABLE `has` ENABLE KEYS */;
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
  `brand` varchar(50),
  PRIMARY KEY (`manufacture_id`),
  FOREIGN KEY (`brand`) REFERENCES `clothes` (`brand`),
  FOREIGN KEY (`manufacture_id`) REFERENCES `clothes` (`manufacture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top`
--

LOCK TABLES `top` WRITE;
/*!40000 ALTER TABLE `top` DISABLE KEYS */;
INSERT INTO `top` VALUES ('None', 'Medium', 41, '0001', 'Adidas'); 
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
  `brand` varchar(50),
  PRIMARY KEY (`manufacture_id`),
  FOREIGN KEY (`brand`) REFERENCES `clothes` (`brand`),
  FOREIGN KEY (`manufacture_id`) REFERENCES `clothes` (`manufacture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottoms`
--

LOCK TABLES `bottoms` WRITE;
/*!40000 ALTER TABLE `bottoms` DISABLE KEYS */;
INSERT INTO `bottoms` VALUES ('Jean', 32, 'Normal', '0001', 'Adidas'); 
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
  `brand` varchar(50),
  PRIMARY KEY (`manufacture_id`),
  FOREIGN KEY (`brand`) REFERENCES `clothes` (`brand`),
  FOREIGN KEY (`manufacture_id`) REFERENCES `clothes` (`manufacture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footwear`
--

LOCK TABLES `footwear` WRITE;
/*!40000 ALTER TABLE `footwear` DISABLE KEYS */;
INSERT INTO `footwear` VALUES ('Sneaker', 10, 'Blue', '0001', 'Adidas'); 
/*!40000 ALTER TABLE `footwear` ENABLE KEYS */;
UNLOCK TABLES;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2018-07-10 13:49:53
