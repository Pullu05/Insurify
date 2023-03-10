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
  `modelCode` varchar(25) NOT NULL,
  `modelName` varchar(45) NOT NULL,
  `makeCode` varchar(25) NOT NULL,
  PRIMARY KEY (`modelCode`),
  KEY `fk_model_make_idx` (`makeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` VALUES ('A6','A6','Audi'),('Aac','Acclaim','Plymouth'),('B-745','BMW-745','BMW'),('B250','Ram Van B250','Dodge'),('CA','Commander','Jeep'),('CaL','Cavalier','Chevrolet'),('CL','Challenger','Mitsubishi'),('CN','Carens','Kia'),('CV','Colt Vista','Plymouth'),('Cva','Crown Victoria','Ford'),('ES','ES','Lexus'),('FD-350','F-350 Super Duty','Ford'),('GC','Grand Cherokee','Jeep'),('GCN','Grand Caravan','Dodge'),('GrandM','Grand Marquis','Mercury'),('GtN','Galant','Mitsubishi'),('H1','H1','Hummer'),('ï»¿A','A5','Audi'),('IE','Intrepid','Dodge'),('JY','Jimmy','GMC'),('LaR','Laser','Ford'),('LHS','LHS','Chrysler'),('LR','Liberty','Jeep'),('LS','LeSabre','Buick'),('LS-500','LS-500','Lexus'),('MC','Monte Carlo','Chevrolet'),('MM','Mighty Max','Mitsubishi'),('MR','M Roadster','BMW'),('MX','MX-5','Mazda'),('NX','NX','Lexus'),('OS','Odyssey','Honda'),('PR','PR-968','Porsche'),('PrM','Prizm','Geo'),('PS','Prius','Toyota'),('QT','Quest','Nissan'),('QX','QX','Infiniti'),('R1500','Ram 1500','Dodge'),('R2','Ram','Dodge'),('RX','RX-7','Mazda'),('RXL','RX','Lexus'),('S','S-07','Saab'),('S1500','Sierra 1500','GMC'),('S3','3 Series','BMW'),('S8','S8','Audi'),('SC','SC','Saab'),('SedonaNedon','Sedona','Kia'),('SR','Safari','Pontiac'),('ST','Stratus','Dodge'),('TC','Transit Connect','Ford'),('V850','Volvo-850','Volvo'),('X3','X3','BMW'),('ZM','Z4 M','BMW');
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

-- Dump completed on 2023-03-10 17:29:19
