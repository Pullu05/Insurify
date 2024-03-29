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
-- Table structure for table `makers`
--

DROP TABLE IF EXISTS `makers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `makers` (
  `makeId` int NOT NULL AUTO_INCREMENT,
  `makeName` varchar(45) NOT NULL,
  PRIMARY KEY (`makeId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makers`
--

LOCK TABLES `makers` WRITE;
/*!40000 ALTER TABLE `makers` DISABLE KEYS */;
INSERT INTO `makers` VALUES (1,'Audi'),(2,'Buick'),(3,'BMW'),(4,'Chrysler'),(5,'Chevrolet'),(6,'Dodge'),(7,'Ford'),(8,'GMC'),(9,'Geo'),(10,'Honda'),(11,'Hummer'),(12,'Infiniti'),(13,'Jeep'),(14,'Kia'),(15,'Lexus'),(16,'Mazda'),(17,'Mitsubishi'),(18,'Mercury'),(19,'Nissan'),(20,'Pontiac'),(21,'Porsche'),(22,'Plymouth'),(23,'Saab'),(24,'Toyota'),(25,'Volvo'),(28,'Lamborghini'),(30,'Tata'),(32,'Hyundai'),(33,'Mahindra');
/*!40000 ALTER TABLE `makers` ENABLE KEYS */;
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
