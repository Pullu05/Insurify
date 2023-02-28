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
INSERT INTO `models` VALUES ('A','A5','AI'),('A6','A6','AI'),('Aac','Acclaim','PH'),('B-745','BMW-745','BMW'),('B250','Ram Van B250','DE'),('CA','Commander','JP'),('CaL','Cavalier','CT'),('CL','Challenger','MI'),('CN','Carens','KA'),('CV','Colt Vista','PH'),('Cva','Crown Victoria','FR'),('FD-350','F-350 Super Duty','FR'),('GC','Grand Cherokee','JP'),('GCN','Grand Caravan','DE'),('GrandM','Grand Marquis','MY'),('GtN','Galant','MI'),('H1','H1','HR'),('IE','Intrepid','DE'),('JY','Jimmy','GMC'),('LaR','Laser','FR'),('LHS','LHS','CR'),('LR','Liberty','JP'),('LS','LeSabre','BK'),('MC','Monte Carlo','CT'),('MM','Mighty Max','MI '),('MR','M Roadster','BMW'),('MX','MX-5','MA '),('OS','Odyssey','HA'),('PR','PR-968','PE'),('PrM','Prizm','GO'),('PS','Prius','TA'),('QT','Quest','NN'),('QX','QX','II'),('R1500','Ram 1500','DE'),('R2','Ram','DE'),('RX','RX-7','MA '),('S','S-07','SB'),('S1500','Sierra 1500','GMC'),('S3','3 Series','BMW'),('S8','S8','AI'),('SC','SC','LS'),('SedonaNedon','Sedona','KA'),('SR','Safari','PC'),('ST','Stratus','DE'),('TC','Transit Connect','FR'),('V850','Volvo-850','VO'),('X3','X3','BMW'),('ZM','Z4 M','BMW');
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

-- Dump completed on 2023-02-28 13:08:21
