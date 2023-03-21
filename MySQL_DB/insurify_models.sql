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
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `models` (
  `modelId` int NOT NULL AUTO_INCREMENT,
  `modelName` varchar(45) NOT NULL,
  `makeName` varchar(25) NOT NULL,
  PRIMARY KEY (`modelId`),
  KEY `fk_model_make_idx` (`makeName`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` VALUES (1,'A6','Audi'),(2,'Acclaim','Plymouth'),(3,'BMW-745','BMW'),(4,'Ram Van B250','Dodge'),(5,'Commander','Jeep'),(6,'Cavalier','Chevrolet'),(7,'Challenger','Mitsubishi'),(8,'Carens','Kia'),(9,'Colt Vista','Plymouth'),(10,'Crown Victoria','Ford'),(11,'ES','Lexus'),(12,'F-350 Super Duty','Ford'),(13,'Grand Cherokee','Jeep'),(14,'Grand Caravan','Dodge'),(15,'Grand Marquis','Mercury'),(16,'Galant','Mitsubishi'),(17,'H1','Hummer'),(18,'A5','Audi'),(19,'Intrepid','Dodge'),(20,'Jimmy','GMC'),(21,'Laser','Ford'),(22,'LHS','Chrysler'),(23,'Liberty','Jeep'),(24,'LeSabre','Buick'),(25,'LS-500','Lexus'),(26,'Monte Carlo','Chevrolet'),(27,'Mighty Max','Mitsubishi'),(28,'M Roadster','BMW'),(29,'MX-5','Mazda'),(30,'NX','Lexus'),(31,'Odyssey','Honda'),(32,'PR-968','Porsche'),(33,'Prizm','Geo'),(34,'Prius','Toyota'),(35,'Quest','Nissan'),(36,'QX','Infiniti'),(37,'Ram 1500','Dodge'),(38,'Ram','Dodge'),(39,'RX-7','Mazda'),(40,'RX','Lexus'),(41,'S-07','Saab'),(42,'Sierra 1500','GMC'),(43,'3 Series','BMW'),(44,'S8','Audi'),(45,'SC','Saab'),(46,'Sedona','Kia'),(47,'Safari','Pontiac'),(48,'Stratus','Dodge'),(49,'Transit Connect','Ford'),(50,'Volvo-850','Volvo'),(51,'X3','BMW'),(52,'Z4 M','BMW'),(54,'Huracan','Lamborghini'),(55,'Aventador','Lamborghini'),(56,'BMW-2589','BMW'),(57,'BMW-Pro','BMW'),(58,'Nano','Tata'),(59,'Nexon','Tata'),(61,'i20','Hyundai'),(62,'Safari','Tata'),(63,'Thar','Mahindra');
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-20 23:46:28
