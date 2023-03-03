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
-- Table structure for table `productdata`
--

DROP TABLE IF EXISTS `productdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productdata` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `startDate` date NOT NULL,
  `insuranceSum` varchar(45) NOT NULL,
  `meritRating` varchar(45) NOT NULL,
  `damageInsurance` varchar(45) NOT NULL,
  `courtesyCar` varchar(45) NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productdata`
--

LOCK TABLES `productdata` WRITE;
/*!40000 ALTER TABLE `productdata` DISABLE KEYS */;
INSERT INTO `productdata` VALUES (4,'user@gmail.com','2023-02-10','5000000','Malus 14','No Coverage','Yes'),(5,'user@gmail.com','2023-02-17','10000000','Bonus 8','Partial Coverage','Yes'),(6,'user@gmail.com','2023-03-08','7000000','Malus 12','Partial Coverage','No'),(7,'user@gmail.com','2023-03-29','7000000','Malus 13','No Coverage','No'),(8,'user@gmail.com','2023-03-14','15000000','Malus 15','No Coverage','No'),(9,'user@gmail.com','2023-03-16','7000000','Malus 14','No Coverage','No'),(10,'user@gmail.com','2023-03-16','7000000','Malus 14','No Coverage','No'),(11,'user@gmail.com','2023-03-16','7000000','Malus 14','No Coverage','No'),(12,'user@gmail.com','2023-03-16','7000000','Malus 14','No Coverage','No'),(13,'user@gmail.com','2023-03-16','7000000','Malus 14','No Coverage','No'),(14,'user@gmail.com','2023-03-16','7000000','Malus 14','No Coverage','No'),(15,'user@gmail.com','2023-03-16','7000000','Malus 14','No Coverage','No'),(16,'user@gmail.com','2023-03-20','15000000','Malus 12','No Coverage','No'),(17,'user@gmail.com','2023-03-20','15000000','Malus 12','No Coverage','No'),(18,'user@gmail.com','2023-03-20','15000000','Malus 12','No Coverage','No'),(19,'user@gmail.com','2023-03-21','10000000','Malus 11','Partial Coverage','No'),(20,'user@gmail.com','2023-03-24','10000000','Malus 11','No Coverage','Yes'),(21,'user@gmail.com','2023-03-08','7000000','Malus 16','Full Coverage','No');
/*!40000 ALTER TABLE `productdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-03 12:08:45
