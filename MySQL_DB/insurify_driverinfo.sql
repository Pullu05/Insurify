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
-- Table structure for table `driverinfo`
--

DROP TABLE IF EXISTS `driverinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driverinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `medicalHistory` varchar(45) NOT NULL,
  `noOfChallans` int NOT NULL,
  `driverAge` int NOT NULL,
  `weightage` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driverinfo`
--

LOCK TABLES `driverinfo` WRITE;
/*!40000 ALTER TABLE `driverinfo` DISABLE KEYS */;
INSERT INTO `driverinfo` VALUES (1,'Bad',2,26,10),(2,'Average',2,26,20),(3,'Good',10,25,25),(4,'Average',5,23,35),(5,'Good',5,23,30),(6,'Good',9,41,12),(7,'Bad',1,28,30),(8,'Bad',2,28,29),(9,'Average',7,45,15),(10,'Good',4,43,25),(11,'Bad',5,41,22),(12,'Bad',6,24,16),(13,'Good',3,59,20),(14,'Bad',3,42,32),(15,'Average',2,56,26),(16,'Average',1,49,35),(17,'Bad',8,57,24),(18,'Bad',5,42,22),(19,'Average',6,55,10),(20,'Average',4,48,18),(21,'Good',1,32,35),(22,'Bad',4,44,30),(23,'Bad',9,45,10),(24,'Bad',3,23,34),(25,'Average',6,23,22),(26,'Bad',8,43,5),(27,'Average',7,42,13),(28,'Bad',3,54,21),(29,'Bad',6,40,15),(30,'Good',5,38,18),(31,'Bad',3,44,29),(32,'Good',6,42,25),(33,'Average',8,26,18),(34,'Bad',5,35,20),(35,'Average',10,51,10),(36,'Good',8,19,12),(37,'Bad',2,25,28),(38,'Bad',3,34,20),(39,'Bad',8,37,10),(40,'Bad',10,22,15),(41,'Bad',2,58,25),(42,'Average',1,59,22),(43,'Bad',1,41,34),(44,'Good',1,43,35),(45,'Good',8,21,16),(46,'Bad',3,38,34),(47,'Average',6,19,25),(48,'Bad',4,38,30),(49,'Good',3,50,29),(50,'Good',9,46,13),(51,'Bad',3,37,34),(52,'Bad',8,46,12),(53,'Bad',3,54,31),(54,'Average',6,45,22),(55,'Average',7,54,16),(56,'Good',2,25,25),(57,'Average',10,18,18),(58,'Average',10,18,18);
/*!40000 ALTER TABLE `driverinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-28 13:08:21
