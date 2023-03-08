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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insuranceapi`
--

LOCK TABLES `insuranceapi` WRITE;
/*!40000 ALTER TABLE `insuranceapi` DISABLE KEYS */;
INSERT INTO `insuranceapi` VALUES (27,'Old','Average',43597,11,9,'123456789110'),(28,'Old','Bad',36979,42,7,'123456789119'),(29,'New','Bad',26268,38,15,'999888777666'),(30,'New','Bad',41484,28,19,'666555444333'),(31,'Old','Bad',35739,39,7,'123456789105'),(32,'New','Good',10275,4,10,'123456789114'),(33,'New','Bad',32079,30,19,'123456780281'),(34,'Old','Bad',45473,27,9,'123456789111'),(35,'New','Average',20499,40,13,'111333555777'),(36,'Old','Good',31945,31,-3,'123456789999'),(37,'Old','Average',32639,10,10,'111111111112'),(38,'New','Good',27793,20,9,'123456789115');
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

-- Dump completed on 2023-03-06 13:08:32
