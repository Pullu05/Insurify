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
-- Table structure for table `vehicleinfo`
--

DROP TABLE IF EXISTS `vehicleinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicleinfo` (
  `vehicleId` int NOT NULL AUTO_INCREMENT,
  `vehicleMake` varchar(100) NOT NULL,
  `vechicleModel` varchar(100) NOT NULL,
  `dateOfManufacture` varchar(45) NOT NULL,
  `weightage` int DEFAULT NULL,
  PRIMARY KEY (`vehicleId`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicleinfo`
--

LOCK TABLES `vehicleinfo` WRITE;
/*!40000 ALTER TABLE `vehicleinfo` DISABLE KEYS */;
INSERT INTO `vehicleinfo` VALUES (1,'Mitsubishi','Mighty Max','1993',12),(2,'BMW','3 Series','2011',25),(3,'Dodge','Stratus','1995',26),(4,'Mercury','Grand Marquis','2011',30),(5,'GMC','Jimmy','1999',23),(6,'Jeep','Grand Cherokee','1994',24),(7,'Plymouth','Acclaim','1995',28),(8,'Ford','Transit Connect','2012',19),(9,'BMW','745','2004',17),(10,'BMW','Z4 M','2006',18),(11,'BMW','X3','2011',24),(12,'Dodge','Grand Caravan','1995',29),(13,'Kia','Carens','2007',28),(14,'Mercury','Grand Marquis','1993',24),(15,'Saab','3-Sep','2011',21),(16,'Mitsubishi','Challenger','2004',15),(17,'GMC','Sierra 1500','2007',19),(18,'Infiniti','QX','2008',18),(19,'Audi','A6','1996',14),(20,'Audi','A5','2008',15),(21,'Jeep','Commander','2010',18),(22,'Toyota','Prius','2012',19),(23,'Mitsubishi','Galant','2005',23),(24,'Nissan','Quest','2004',20),(25,'Geo','Prizm','1996',30),(26,'Honda','Odyssey','1998',10),(27,'Hummer','H1','1999',5),(28,'Dodge','Ram 1500','2008',16),(29,'Chevrolet','Cavalier','2004',14),(30,'Chevrolet','Monte Carlo','2007',17),(31,'Porsche','968','1995',16),(32,'BMW','M Roadster','2006',12),(33,'Jeep','Liberty','2009',14),(34,'Mazda','MX-5','1997',23),(35,'Ford','Laser','1985',25),(36,'Mercury','Grand Marquis','2010',26),(37,'Kia','Sedona','2008',17),(38,'Ford','Crown Victoria','2009',18),(39,'Ford','F-350 Super Duty','2006',17),(40,'Mazda','RX-7','1989',19),(41,'Plymouth','Colt Vista','1992',27),(42,'Audi','S8','2006',29),(43,'Chrysler','LHS','1994',28),(44,'Dodge','Ram Van B250','1994',25),(45,'Lexus','SC','2008',26),(46,'Dodge','Ram','2008',27),(47,'Volvo','850','1996',29),(48,'Pontiac','Safari','1986',24),(49,'Dodge','Intrepid','2002',28),(50,'Buick','LeSabre','1996',30),(51,'BMW','BMW-458','2000',10),(52,'BMW','BMW-458','2000',10),(53,'BMW','BMW-458','2000',10),(54,'BMW','BMW-458','2000',10),(55,'BMW','BMW-4589','2001',12);
/*!40000 ALTER TABLE `vehicleinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-03 12:08:44
