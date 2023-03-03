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
-- Table structure for table `insuranceapi`
--

DROP TABLE IF EXISTS `insuranceapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insuranceapi` (
  `insuranceId` int NOT NULL AUTO_INCREMENT,
  `insuranceStatus` varchar(45) NOT NULL,
  `insuranceHistory` varchar(45) NOT NULL,
  `amountClaimed` int NOT NULL,
  `drivingExperience` int NOT NULL,
  `weightage` int NOT NULL,
  `aadhaarNo` varchar(12) NOT NULL,
  PRIMARY KEY (`insuranceId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insuranceapi`
--

LOCK TABLES `insuranceapi` WRITE;
/*!40000 ALTER TABLE `insuranceapi` DISABLE KEYS */;
INSERT INTO `insuranceapi` VALUES (1,'New','Bad',25008,2,20,''),(2,'New','Bad',36738,34,17,''),(3,'Old','Average',29778,13,7,'45645'),(4,'Old','Good',47513,38,-3,'6564'),(5,'Old','Average',32013,36,5,'646545649987'),(6,'Old','Bad',47978,7,12,'646945649987'),(7,'New','Good',14155,38,5,'222222222222'),(8,'New','Bad',18885,40,15,'888222222222'),(9,'Old','Bad',24492,6,10,'222278453222'),(10,'Old','Average',38327,12,9,'897222222225'),(11,'Old','Good',41215,2,2,'646545646654'),(12,'Old','Good',23231,36,-5,'564545454555');
/*!40000 ALTER TABLE `insuranceapi` ENABLE KEYS */;
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
