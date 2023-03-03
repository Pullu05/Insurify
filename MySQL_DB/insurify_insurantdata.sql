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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurantdata`
--

LOCK TABLES `insurantdata` WRITE;
/*!40000 ALTER TABLE `insurantdata` DISABLE KEYS */;
INSERT INTO `insurantdata` VALUES (15,'12345678911','Rishav','Dutta','user@gmail.com',22,'Average','Male','BARUIPUR , UKILPARA ,KOLKATA-144','India',700144,'Public Official','Cricket, Football','WWW.google.com',NULL),(16,'45645','54654','5454','user@gmail.com',4646,'Good','Male','56464654','Austria',65464,'Public Official','466464','64456',NULL),(17,'6564','t54656','46654','user@gmail.com',655454,'Good','Male','45456','Bahamas',4564,'Public Official','464','56',NULL),(18,'646545649987','Anand','Kumar','user@gmail.com',23,'Good','Male','DHN','Bahamas',828114,'Employee','Jumping','432324',NULL),(19,'646945649987','Anand','Kumar','user@gmail.com',23,'Average','Male','DHN','Austria',828114,'Employee','Jumping','432324',NULL),(20,'646945649987','Anand','Kumar','user@gmail.com',23,'Good','Male','DHN','Austria',828114,'Employee','Jumping','432324',NULL),(21,'646945649987','Anand','Kumar','user@gmail.com',23,'Good','Male','DHN','Austria',828114,'Employee','Jumping','432324',NULL),(22,'879062222222','Anand','Kumar','user@gmail.com',24,'Good','Male','Quarter no','Bahamas',828114,'Farmer','Jumping','432324',NULL),(23,'879062222222','Anand','Kumar','user@gmail.com',24,'Average','Male','Quarter no','default',828114,'Farmer','Jumping','432324',NULL),(24,'123456789012','Anand','Kumar','user@gmail.com',24,'Average','Male','Tilatand Colony, Katras Bazar','India',828114,'Public Official','Dancing','',NULL),(25,'222222222222','Anand','Kumar','user@gmail.com',43,'Average','Female','Tilatand Colony, Katras Bazar','Australia',828114,'Unemployed','Jumping','',NULL),(26,'222222222222','Anand','Kumar','user@gmail.com',43,'Average','Male','Tilatand Colony, Katras Bazar','Argentina',828114,'Unemployed','Jumping','',NULL),(27,'888222222222','Anand','Kumar','user@gmail.com',43,'Average','Male','Tilatand Colony, Katras Bazar','India',828114,'Employee','Jumping','',NULL),(28,'222278453222','Anand','Kumar','user@gmail.com',35,'Average','Male','Katras','India',828114,'Public Official','Dancing','',NULL),(29,'897222222225','Anand','Kumar','user@gmail.com',24,'Average','Male','DHN','India',828114,'Employee','Jumping','',NULL),(30,'646545646654','2334','342342','user@gmail.com',45,'Good','Male','4554','Azerbaijan',4545,'Public Official','454','',NULL),(31,'564545454555','5645','5454','user@gmail.com',54,'Average','Male','54564','Bahamas',65445,'Employee','5445','',NULL);
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

-- Dump completed on 2023-03-03 12:08:42
