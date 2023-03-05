-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: insurify
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `insurantdata`
--

DROP TABLE IF EXISTS `insurantdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurantdata` (
  `insuranceDataId` int NOT NULL AUTO_INCREMENT,
  `aadhaarNo` varchar(12) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `age` int NOT NULL,
  `medicalRecord` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `streetAddress` varchar(80) NOT NULL,
  `country` varchar(45) NOT NULL,
  `zipCode` int NOT NULL,
  `occupation` varchar(45) NOT NULL,
  `hobbies` varchar(45) NOT NULL,
  `website` varchar(45) NOT NULL,
  `picture` longblob,
  PRIMARY KEY (`insuranceDataId`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurantdata`
--

LOCK TABLES `insurantdata` WRITE;
/*!40000 ALTER TABLE `insurantdata` DISABLE KEYS */;
INSERT INTO `insurantdata` VALUES (47,'123456789110','Rishav','Dutta','user@gmail.com',22,'Average','Male','BARUIPUR , UKILPARA ,KOLKATA-144','India',700144,'Farmer','Cricket, Football','WWW.google.com',NULL),(48,'123456789119','Rishav','Dutta','user@gmail.com',25,'Average','Male','BARUIPUR , UKILPARA ,KOLKATA-144','India',700144,'Public Official','Cricket, Football','',NULL),(49,'123456789119','Rishav','Dutta','user@gmail.com',25,'Average','Male','BARUIPUR , UKILPARA ,KOLKATA-144','India',700144,'Public Official','Cricket, Football','',NULL),(50,'123456789110','Rishav','Dutta','user@gmail.com',45,'Good','Male','BARUIPUR , UKILPARA ,KOLKATA-144','India',700144,'Farmer','Cricket, Football','WWW.google.com',NULL),(51,'999888777666','Rishav','Dutta','user@gmail.com',45,'Good','Male','Sector V','India',700144,'Public Official','Cricket, Football','',NULL),(52,'666555444333','Rishav','Dutta','user@gmail.com',26,'Good','Male','BARUIPUR , UKILPARA ,KOLKATA-144','India',700144,'Public Official','Football','WWW.google.com',NULL),(53,'123456789105','Rishav','Dutta','user@gmail.com',45,'Average','Male','BARUIPUR , UKILPARA ,KOLKATA-144','India',700144,'Unemployed','Cricket, Football','',NULL),(54,'123456789114','Rishav','Dutta','user1@gmail.com',26,'Average','Male','BARUIPUR , UKILPARA ,KOLKATA-144','India',700144,'Selfemployed','Cricket, Football','WWW.google.com',NULL),(55,'123456780281','Soham','Das','user1@gmail.com',23,'Average','Male','BARUIPUR , UKILPARA ,KOLKATA-144','India',700144,'Employee','Cricket, Football','',NULL),(56,'123456789111','Riju','Dutta','user@gmail.com',22,'Average','Male','Dimand Harbour','India',700144,'Employee','Football','WWW.google.com',NULL),(57,'111333555777','Nairwita','Chocobar','user@gmail.com',22,'Good','Female','Kolkata','India',700144,'Public Official','Study','',NULL);
/*!40000 ALTER TABLE `insurantdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-05 21:44:02
