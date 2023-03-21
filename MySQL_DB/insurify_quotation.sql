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
-- Table structure for table `quotation`
--

DROP TABLE IF EXISTS `quotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotation` (
  `quotationId` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `proposalNo` varchar(45) NOT NULL,
  `aadhaarNo` varchar(12) NOT NULL,
  `proposerName` varchar(45) NOT NULL,
  `quotationDate` varchar(45) NOT NULL,
  `idvValue` int NOT NULL,
  `vin` varchar(45) NOT NULL,
  `cc` int NOT NULL,
  `licensePlateNumber` varchar(45) NOT NULL,
  `make` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `planName` varchar(45) NOT NULL,
  `premium` int NOT NULL,
  `liabPremium` int NOT NULL DEFAULT '5580',
  `totalPremium` int NOT NULL,
  `status` varchar(45) DEFAULT 'PENDING',
  PRIMARY KEY (`quotationId`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotation`
--

LOCK TABLES `quotation` WRITE;
/*!40000 ALTER TABLE `quotation` DISABLE KEYS */;
INSERT INTO `quotation` VALUES (114,'duttariju20@gmail.com','INSWB145478PKK','123456789110','Rishav Dutta','13/03/2023',218700,'WB145478PKK',4500,'WB021','Hummer','H1','Gold',18300,5580,23880,'ACCEPTED'),(115,'user@gmail.com','INSWB145478PKK','123456789110','Rishav Dutta','14/03/2023',266700,'WB145478PKK',4500,'WB021','Jeep','Commander','Gold',22300,5580,27880,'ACCEPTED'),(116,'duttariju20@gmail.com','INSWB145478PKK','123456789110','Rishav Dutta','20/03/2023',290700,'WB145478PKK',4500,'Wif450','Buick','LeSabre','Gold',24300,5580,29880,'REJECTED'),(117,'rishavdutta.brp@gmail.com','INSWB145478PKKP','123456789110','Rishav Dutta','20/03/2023',290700,'WB145478PKKP',4500,'WB1234','Lamborghini','Huracan','Gold',24300,5580,29880,'ACCEPTED'),(118,'duttariju20@gmail.com','INSWB145478PKKPL','123456789110','Rishav Dutta','20/03/2023',290700,'WB145478PKKPL',4500,'WB1234','Lamborghini','Huracan','Gold',24300,5580,29880,'ACCEPTED');
/*!40000 ALTER TABLE `quotation` ENABLE KEYS */;
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
