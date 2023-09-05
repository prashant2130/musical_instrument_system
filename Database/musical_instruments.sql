-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: musical_instruments
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `c_id` varchar(100) NOT NULL,
  `c_name` varchar(45) DEFAULT NULL,
  `c_contact` varchar(45) DEFAULT NULL,
  `c_email` varchar(45) DEFAULT NULL,
  `c_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('C20210206011452','Javed Tamboli','9369651475','javed.tamboli@gmail.com','Charoli, Pune.','2021-02-05 19:44:52','2021-02-06 08:42:34'),('C20210206011527','Kishor Kadam','7276763516','kadamk329@gmail.com','Bhalawani, Ahmednagar.','2021-02-05 19:45:27','2021-02-06 03:37:11'),('C20210206083519','Sagar Kharmale','8456571542','sagarkharmale@gmail.com','Bhandgaon, Ahmednagar, Maharashtra.','2021-02-06 03:05:19','2021-02-06 08:35:19'),('C20210206083632','Govind Raut','9858563214','govindraut780@yahoomail.com','Gevrai, Beed.','2021-02-06 03:06:32','2021-02-06 08:36:32');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_details`
--

DROP TABLE IF EXISTS `product_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_details` (
  `prod_id` varchar(100) NOT NULL,
  `prod_name` varchar(45) DEFAULT NULL,
  `prod_qty` int DEFAULT NULL,
  `prod_rate` int DEFAULT NULL,
  `vendor_id` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_details`
--

LOCK TABLES `product_details` WRITE;
/*!40000 ALTER TABLE `product_details` DISABLE KEYS */;
INSERT INTO `product_details` VALUES ('P20210206010147','Clarinett',15,650,'V20210206023839','2021-02-05 19:31:47','2021-02-08 16:52:37'),('P20210206080920','Gong',18,700,'V20210206023921','2021-02-06 02:39:20','2021-02-13 10:51:26'),('P20210206124009','Banjo',63,2230,'V20210206023921','2021-02-05 19:10:09','2021-02-13 10:47:55');
/*!40000 ALTER TABLE `product_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `purchase_id` varchar(100) NOT NULL,
  `vendor_id` varchar(100) DEFAULT NULL,
  `prod_id` varchar(100) DEFAULT NULL,
  `order_qty` int DEFAULT '20',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`purchase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES ('PER20210206033017','V20210206023839','P20210206080920',5,'2021-02-06 10:00:17','2021-02-06 15:30:17'),('PER20210206033153','V20210206090936','P20210206010147',16,'2021-02-06 10:01:53','2021-02-06 15:31:53'),('PER20210206041254','V20210206090936','P20210206124009',2,'2021-02-06 10:42:54','2021-02-06 16:12:54'),('PER20210207064831','V20210206023839','P20210206080920',6,'2021-02-07 13:18:31','2021-02-07 18:48:31'),('PER20210207064920','V20210206023839','P20210206124009',7,'2021-02-07 13:19:20','2021-02-07 18:49:20'),('PER20210207072441','V20210206090936','P20210206010147',10,'2021-02-07 13:54:41','2021-02-07 19:24:41'),('PER20210207072506','V20210206023839','P20210206080920',8,'2021-02-07 13:55:06','2021-02-07 19:25:06'),('PER20210207100610','V20210206023839','P20210206010147',8,'2021-02-07 04:36:10','2021-02-07 10:06:10'),('PER20210208045237','V20210206090936','P20210206010147',10,'2021-02-08 11:22:37','2021-02-08 16:52:37');
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `sale_id` varchar(100) NOT NULL,
  `cid` varchar(100) DEFAULT NULL,
  `prod_id` varchar(100) DEFAULT NULL,
  `prod_name` varchar(45) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `prod_rate` int DEFAULT NULL,
  `total_amt` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES ('SEL20210206113333','C20210206011527','P20210206080920','Gong',74,700,51800,'2021-02-06 18:03:33','2021-02-06 23:33:33'),('SEL20210206113442','C20210206011452','P20210206010147','Clarinett',2,650,1300,'2021-02-06 18:04:42','2021-02-06 23:34:42'),('SEL20210206113659','C20210206083632','P20210206124009','Banjo',4,2230,8920,'2021-02-06 18:06:59','2021-02-06 23:36:59'),('SEL20210207064152','C20210206083519','P20210206080920','Gong',55,700,38500,'2021-02-07 13:11:52','2021-02-07 18:41:52'),('SEL20210207100831','C20210206083632','P20210206124009','Banjo',3,2230,6690,'2021-02-07 04:38:31','2021-02-07 10:08:31'),('SEL20210207101004','C20210206083519','P20210206080920','Gong',3,700,2100,'2021-02-07 04:40:04','2021-02-07 10:10:04'),('SEL20210208044200','C20210206011452','P20210206010147','Clarinett',15,650,9750,'2021-02-08 11:12:00','2021-02-08 16:42:00'),('SEL20210213104754','C20210206083632','P20210206124009','Banjo',24,2230,53520,'2021-02-13 05:17:54','2021-02-13 10:47:54'),('SEL20210213105126','C20210206011452','P20210206080920','Gong',5,700,3500,'2021-02-13 05:21:26','2021-02-13 10:51:26');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_registration`
--

DROP TABLE IF EXISTS `shop_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_registration` (
  `shop_id` varchar(100) NOT NULL,
  `shop_name` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_registration`
--

LOCK TABLES `shop_registration` WRITE;
/*!40000 ALTER TABLE `shop_registration` DISABLE KEYS */;
INSERT INTO `shop_registration` VALUES ('S20210206013415','Chaitanya Music Art Gallery','9290255255','chaitanya@gmail.com','Bangloree, Karnataka.','2021-02-05 20:04:15','2021-02-06 08:55:51'),('S20210213105056','Jehangir Music Art Gallery','9878745842','jehangir@gmail.com','Mumbai','2021-02-13 05:20:56','2021-02-13 10:50:56');
/*!40000 ALTER TABLE `shop_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'admin','admin','2021-02-05 17:27:34');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `vendor_id` varchar(100) NOT NULL,
  `vendor_name` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES ('V20210206023839','Kishor Balu Kadam','7276763516','kadamk329@gmail.com','Bhalawani, Ahmednagar.','2021-02-05 21:08:39','2021-02-06 04:01:53'),('V20210206090936','Sagar Kharmale','8456571542','sagarkharmale@gmail.com','Bhandgaon, Ahmednagar, Maharashtra.','2021-02-06 03:39:36','2021-02-06 09:09:36'),('V20210213104603','Arun Pandit','8874585632','arunpandit@gmail.com','Kharwandi, Newasa,Ahmednagar','2021-02-13 05:16:03','2021-02-13 10:46:03'),('V20210213104636','Javed Tamboli','9856321478','javed.tamboli@gmail.com','Charoli, Pune.','2021-02-13 05:16:36','2021-02-13 10:46:36'),('V20210213104706','Mayur Mahale','9636564712','mayurmahale12@gmail.com','New Sangavi, Pune','2021-02-13 05:17:06','2021-02-13 10:47:06');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-05 12:21:13
