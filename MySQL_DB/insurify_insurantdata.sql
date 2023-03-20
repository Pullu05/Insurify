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
  PRIMARY KEY (`insuranceDataId`),
  KEY `fk_insdata_quot_idx` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurantdata`
--

LOCK TABLES `insurantdata` WRITE;
/*!40000 ALTER TABLE `insurantdata` DISABLE KEYS */;
INSERT INTO `insurantdata` VALUES (75,'123456789110','Rishav','Dutta','duttariju20@gmail.com',46,'Average','Male','BARUIPUR , UKILPARA','India',700144,'Public Official','Cricket, Football','',NULL),(76,'123456789110','Rishav','Dutta','user@gmail.com',26,'Good','Male','BARUIPUR , UKILPARA ,KOLKATA-144','India',700144,'Public Official','Study','',NULL),(77,'123456789110','Rishav','Dutta','duttariju20@gmail.com',26,'Average','Male','Baruipur , Ukilpara','India',700144,'Farmer','Cricket, Football','',NULL),(78,'123456789110','Rishav','Dutta','duttariju20@gmail.com',26,'Average','Male','Baruipur , Ukilpara','Azerbaijan',700144,'Farmer','Cricket, Football','',NULL),(79,'123456789110','Rishav','Dutta','duttariju20@gmail.com',26,'Average','Male','BARUIPUR , UKILPARA ,KOLKATA-144','India',700144,'Farmer','Football','',NULL),(80,'123456789110','Rishav','Dutta','rishavdutta.brp@gmail.com',26,'Average','Male','BARUIPUR , UKILPARA ,KOLKATA-144','India',700144,'Selfemployed','Cricket, Football','',NULL),(81,'123456789110','Rishav','Dutta','duttariju20@gmail.com',26,'Average','Male','BARUIPUR , UKILPARA ,KOLKATA-144','India',700144,'Public Official','Football','',NULL);
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

-- Dump completed on 2023-03-20 23:46:29
