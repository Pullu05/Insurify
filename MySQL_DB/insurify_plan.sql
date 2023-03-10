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
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `planName` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES (17,'Gold'),(18,'Gold'),(19,'Gold'),(20,'Gold'),(21,'Platinum'),(22,'Ultimate'),(23,'Platinum'),(24,'Platinum'),(25,'Gold'),(26,'Platinum'),(27,'Ultimate'),(28,'Platinum'),(29,'Ultimate'),(30,'Gold'),(31,'Platinum'),(32,'Platinum'),(33,'Platinum'),(34,'Platinum'),(35,'Platinum'),(36,'Platinum'),(37,'Ultimate'),(38,'Gold'),(39,'Gold'),(40,'Gold'),(41,'Gold'),(42,'Platinum'),(43,'Platinum'),(44,'Gold'),(45,'Platinum'),(46,'Platinum'),(47,'Gold'),(48,'Platinum'),(49,'Platinum'),(50,'Platinum'),(51,'Ultimate'),(52,'Platinum'),(53,'Platinum'),(54,'Platinum'),(55,'Ultimate'),(56,'Gold'),(57,'Gold'),(58,'Gold'),(59,'Ultimate'),(60,'Platinum'),(61,'Gold'),(62,'Platinum'),(63,'Platinum'),(64,'Gold'),(65,'Platinum'),(66,'Platinum'),(67,'Ultimate'),(68,'Platinum'),(69,'Platinum'),(70,'Platinum'),(71,'Gold'),(72,'Gold'),(73,'Gold'),(74,'Platinum'),(75,'Gold'),(76,'Platinum'),(77,'Platinum'),(78,'Gold'),(79,'Platinum'),(80,'Platinum'),(81,'Silver');
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-10 17:29:18
