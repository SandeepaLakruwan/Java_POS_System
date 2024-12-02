-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: chamika_motors
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `attend_type`
--

DROP TABLE IF EXISTS `attend_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attend_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attend_type`
--

LOCK TABLES `attend_type` WRITE;
/*!40000 ALTER TABLE `attend_type` DISABLE KEYS */;
INSERT INTO `attend_type` VALUES (1,'Full Day'),(2,'Half Day'),(3,'Absent');
/*!40000 ALTER TABLE `attend_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_mobile` varchar(10) NOT NULL,
  `attend_date` date NOT NULL,
  `attend_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_attendance_employee1_idx` (`employee_mobile`),
  KEY `fk_attendance_attend_type1_idx` (`attend_type_id`),
  CONSTRAINT `fk_attendance_attend_type1` FOREIGN KEY (`attend_type_id`) REFERENCES `attend_type` (`id`),
  CONSTRAINT `fk_attendance_employee1` FOREIGN KEY (`employee_mobile`) REFERENCES `employee` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,'0771234567','2023-08-30',1),(2,'0771234567','2023-08-31',2),(3,'0751112223','2023-09-01',1),(5,'0771234567','2023-09-01',1),(6,'0751112223','2023-09-28',1),(7,'0751112223','2024-06-28',1),(8,'0711234567','2024-07-03',1),(9,'0711234567','2024-08-05',1),(10,'0751112223','2024-08-05',1),(11,'0771234567','2024-08-05',1),(12,'0711234567','2024-08-07',1),(13,'0751112223','2024-08-07',2),(14,'0771234567','2024-08-07',2),(15,'0711234567','2024-12-01',1);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Bajaj'),(2,'Mitsubishi'),(3,'Toyota'),(4,'Tata'),(5,'abc');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (3,'Kuliyapitiya');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `hotline` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Kasun Hardware Pvt ltd','0112223334'),(2,'Sunil Hardware','0112223335'),(3,'Explore pvt ltd','0312221114'),(4,'Saman Enterprices','0375115112');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `mobile` varchar(10) NOT NULL,
  `name` varchar(45) NOT NULL,
  `points` double NOT NULL,
  PRIMARY KEY (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('0712091234','Sandeepa',0),('0771112223','Sahan',4.5),('0772223334','Kasun Maduranga',13.5);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `mobile` varchar(10) NOT NULL,
  `email` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `employee_type_id` int NOT NULL,
  `date_registered` date NOT NULL,
  `password` varchar(45) NOT NULL,
  `gender_id` int NOT NULL,
  PRIMARY KEY (`mobile`),
  KEY `fk_employee_employee_type1_idx` (`employee_type_id`),
  KEY `fk_employee_gender1_idx` (`gender_id`),
  CONSTRAINT `fk_employee_employee_type1` FOREIGN KEY (`employee_type_id`) REFERENCES `employee_type` (`id`),
  CONSTRAINT `fk_employee_gender1` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('0711234567','sandeepa@gmail.com','Sandeepa','Bandara','2001234566',2,'2024-07-03','Sandeepa2001',1),('0751112223','hashan@gmail.com','Hashan','Sadaruwan','200345654321',3,'2023-08-04','Hashan123',1),('0771234567','chamika@gmail.com','Chamika','Supun','200123123678',1,'2023-08-04','Chamika123',1);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_address`
--

DROP TABLE IF EXISTS `employee_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `line_1` varchar(45) NOT NULL,
  `line_2` varchar(45) NOT NULL,
  `city_id` int NOT NULL,
  `employee_mobile` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_employee_address_city1_idx` (`city_id`),
  KEY `fk_employee_address_employee1_idx` (`employee_mobile`),
  CONSTRAINT `fk_employee_address_city1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `fk_employee_address_employee1` FOREIGN KEY (`employee_mobile`) REFERENCES `employee` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_address`
--

LOCK TABLES `employee_address` WRITE;
/*!40000 ALTER TABLE `employee_address` DISABLE KEYS */;
INSERT INTO `employee_address` VALUES (1,'Kumbalwala','Ilukhena',3,'0771234567'),(3,'No.5','Parakumba Street',3,'0711234567');
/*!40000 ALTER TABLE `employee_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_type`
--

DROP TABLE IF EXISTS `employee_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_type`
--

LOCK TABLES `employee_type` WRITE;
/*!40000 ALTER TABLE `employee_type` DISABLE KEYS */;
INSERT INTO `employee_type` VALUES (1,'Super Admin'),(2,'Admin'),(3,'Chashier');
/*!40000 ALTER TABLE `employee_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'Male'),(2,'Female');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grn`
--

DROP TABLE IF EXISTS `grn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grn` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `supplier_mobile` varchar(10) NOT NULL,
  `employee_mobile` varchar(10) NOT NULL,
  `date_time` datetime NOT NULL,
  `paid_amount` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_grn_supplier1_idx` (`supplier_mobile`),
  KEY `fk_grn_employee1_idx` (`employee_mobile`),
  CONSTRAINT `fk_grn_employee1` FOREIGN KEY (`employee_mobile`) REFERENCES `employee` (`mobile`),
  CONSTRAINT `fk_grn_supplier1` FOREIGN KEY (`supplier_mobile`) REFERENCES `supplier` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=1733034159960 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grn`
--

LOCK TABLES `grn` WRITE;
/*!40000 ALTER TABLE `grn` DISABLE KEYS */;
INSERT INTO `grn` VALUES (1693641914273,'0762345134','0771234567','2023-09-02 13:35:55',3500),(1693642182251,'0762345134','0771234567','2023-09-02 13:40:40',1500),(1695906642783,'0712223334','0771234567','2023-09-28 18:41:37',0),(1719987138693,'0752313124','0771234567','2024-07-03 11:45:05',0),(1719987305712,'0752313124','0771234567','2024-07-03 11:47:16',1500),(1722866486166,'0712223334','0771234567','2024-08-05 19:33:45',2000),(1722866625725,'0712223334','0771234567','2024-08-05 19:35:10',500),(1722867064114,'0752313124','0771234567','2024-08-05 19:42:14',2000),(1722867169784,'0752313124','0771234567','2024-08-05 19:43:42',0),(1733034159959,'0712223334','0771234567','2024-12-01 11:53:24',5000);
/*!40000 ALTER TABLE `grn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grn_item`
--

DROP TABLE IF EXISTS `grn_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grn_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stock_id` int NOT NULL,
  `qty` double NOT NULL,
  `buying_price` double NOT NULL,
  `grn_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_grn_item_grn1_idx` (`grn_id`),
  KEY `fk_grn_item_stock1_idx` (`stock_id`),
  CONSTRAINT `fk_grn_item_grn1` FOREIGN KEY (`grn_id`) REFERENCES `grn` (`id`),
  CONSTRAINT `fk_grn_item_stock1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grn_item`
--

LOCK TABLES `grn_item` WRITE;
/*!40000 ALTER TABLE `grn_item` DISABLE KEYS */;
INSERT INTO `grn_item` VALUES (4,7,10,400,1693641914273),(5,8,5,350,1693642182251),(6,9,2,100,1695906642783),(7,10,5,400,1719987138693),(8,10,5,400,1719987305712),(9,11,5,234,1722866486166),(10,11,5,234,1722866625725),(11,12,3,750,1722867064114),(12,12,2,750,1722867169784),(13,13,10,450,1733034159959);
/*!40000 ALTER TABLE `grn_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_mobile` varchar(10) NOT NULL,
  `employee_mobile` varchar(10) NOT NULL,
  `date_time` datetime NOT NULL,
  `paid_amount` double NOT NULL,
  `discount` double NOT NULL,
  `payment_method_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_invoice_customer1_idx` (`customer_mobile`),
  KEY `fk_invoice_employee1_idx` (`employee_mobile`),
  KEY `fk_invoice_payment_method1_idx` (`payment_method_id`),
  CONSTRAINT `fk_invoice_customer1` FOREIGN KEY (`customer_mobile`) REFERENCES `customer` (`mobile`),
  CONSTRAINT `fk_invoice_employee1` FOREIGN KEY (`employee_mobile`) REFERENCES `employee` (`mobile`),
  CONSTRAINT `fk_invoice_payment_method1` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1733034120591 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,'0771112223','0771234567','2023-08-04 13:14:19',100,0,1),(1693671972614,'0772223334','0771234567','2023-09-02 21:56:50',1200,0,2),(1695907736962,'0772223334','0771234567','2023-09-28 18:59:48',1000,100,1),(1719981633342,'0772223334','0771234567','2024-07-03 10:12:53',650,100,1),(1722864776075,'0772223334','0771234567','2024-08-05 19:04:51',800,100,1),(1722865507954,'0772223334','0771234567','2024-08-05 19:15:32',450,0,1),(1733034120590,'0771112223','0771234567','2024-12-01 11:52:35',450,0,1);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_item`
--

DROP TABLE IF EXISTS `invoice_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stock_id` int NOT NULL,
  `qty` double NOT NULL,
  `invoice_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_invoice_item_stock1_idx` (`stock_id`),
  KEY `fk_invoice_item_invoice1_idx` (`invoice_id`),
  CONSTRAINT `fk_invoice_item_invoice1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  CONSTRAINT `fk_invoice_item_stock1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_item`
--

LOCK TABLES `invoice_item` WRITE;
/*!40000 ALTER TABLE `invoice_item` DISABLE KEYS */;
INSERT INTO `invoice_item` VALUES (1,1,2,1),(3,6,2,1693671972614),(4,8,2,1695907736962),(5,1,1,1719981633342),(6,1,1,1719981633342),(7,1,2,1722864776075),(8,1,1,1722865507954),(9,1,1,1733034120590);
/*!40000 ALTER TABLE `invoice_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES (1,'Cash'),(2,'Card');
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `brand_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `product_type_id` int NOT NULL,
  `stock_place_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_brand1_idx` (`brand_id`),
  KEY `fk_product_product_type1_idx` (`product_type_id`),
  KEY `fk_product_stock_place1_idx` (`stock_place_id`),
  CONSTRAINT `fk_product_brand1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  CONSTRAINT `fk_product_product_type1` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`),
  CONSTRAINT `fk_product_stock_place1` FOREIGN KEY (`stock_place_id`) REFERENCES `stock_place` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1693327928603 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'Plug A',2,2),(1693327928602,1,'Plug',1,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,'Motors'),(2,'Grass Cutting Machine'),(3,'Tree cutting machine'),(4,'bcd');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_type_id` int NOT NULL,
  `day_salary` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_salary_employee_type1_idx` (`employee_type_id`),
  CONSTRAINT `fk_salary_employee_type1` FOREIGN KEY (`employee_type_id`) REFERENCES `employee_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1,1,4000),(2,2,3000),(3,3,2000);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_record`
--

DROP TABLE IF EXISTS `salary_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_mobile` varchar(10) NOT NULL,
  `date_time` datetime NOT NULL,
  `bonus_percentage` int NOT NULL,
  `Amount` double NOT NULL,
  `admin_employee_mobile` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_salary_record_employee1_idx` (`employee_mobile`),
  KEY `fk_salary_record_employee2_idx` (`admin_employee_mobile`),
  CONSTRAINT `fk_salary_record_employee1` FOREIGN KEY (`employee_mobile`) REFERENCES `employee` (`mobile`),
  CONSTRAINT `fk_salary_record_employee2` FOREIGN KEY (`admin_employee_mobile`) REFERENCES `employee` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_record`
--

LOCK TABLES `salary_record` WRITE;
/*!40000 ALTER TABLE `salary_record` DISABLE KEYS */;
INSERT INTO `salary_record` VALUES (1,'0771234567','2024-06-06 11:14:43',5,25000,'0771234567'),(2,'0751112223','2024-08-07 12:27:54',1000,10000,'0771234567');
/*!40000 ALTER TABLE `salary_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `selling_price` double NOT NULL,
  `qty` double NOT NULL,
  `mfg` date DEFAULT NULL,
  `exp` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_stock_product1_idx` (`product_id`),
  CONSTRAINT `fk_stock_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1,450,4,'2023-08-04','2027-08-04'),(2,1693327928602,500,20,'2023-09-01','2028-09-01'),(3,1693327928602,550,10,'2023-09-01','2029-09-01'),(6,1693327928602,600,5,'2023-09-02','2028-09-02'),(7,1693327928602,600,10,'2023-09-02','2027-09-02'),(8,1,550,3,'2023-09-02','2028-09-02'),(9,1693327928602,200,2,'2023-09-14','2028-09-07'),(10,1,500,10,'2024-07-03','2027-07-03'),(11,1693327928602,456,10,'2024-08-05','2027-08-05'),(12,1693327928602,850,5,'2024-08-05','2027-08-05'),(13,1693327928602,550,10,'2024-12-05','2026-12-02');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_place`
--

DROP TABLE IF EXISTS `stock_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_place` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_place`
--

LOCK TABLES `stock_place` WRITE;
/*!40000 ALTER TABLE `stock_place` DISABLE KEYS */;
INSERT INTO `stock_place` VALUES (1,'Section A'),(2,'Section B'),(3,'Section C'),(4,'Section D'),(5,'Section E'),(6,'Section F');
/*!40000 ALTER TABLE `stock_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `mobile` varchar(10) NOT NULL,
  `name` varchar(45) NOT NULL,
  `company_id` int NOT NULL,
  PRIMARY KEY (`mobile`),
  KEY `fk_supplier_company_idx` (`company_id`),
  CONSTRAINT `fk_supplier_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES ('0712223334','Sunil Perera',2),('0752313124','Sandeepa',4),('0762345134','Thanuka',3),('0781112223','Kasun Prabath',1);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-01 11:54:44
