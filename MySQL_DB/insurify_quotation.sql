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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotation`
--

LOCK TABLES `quotation` WRITE;
/*!40000 ALTER TABLE `quotation` DISABLE KEYS */;
INSERT INTO `quotation` VALUES (78,'user@gmail.com','INSWB145478LPO','999888777666','Rishav Dutta','05/03/2023',492000,'WB145478LPO',2200,'WB0425','BMW','M Roadster','Ultimate',41500,5580,47080,'REJECTED'),(80,'user@gmail.com','INSWB14547025789','666555444333','Rishav Dutta','05/03/2023',439000,'WB14547025789',2500,'WB2240','Nissan','Quest','Platinum',36750,5580,42330,'ACCEPTED'),(81,'user@gmail.com','INSWB145478PMLP','123456789105','Rishav Dutta','05/03/2023',170700,'WB145478PMLP',2000,'WB12345502','Porsche','PR-968','Gold',14300,5580,19880,'REJECTED'),(82,'user1@gmail.com','INSWB145478PKK02','123456789114','Rishav Dutta','05/03/2023',331000,'WB145478PKK02',1000,'WB123455','Honda','Odyssey','Platinum',27750,5580,33330,'REJECTED'),(83,'user1@gmail.com','INSWB145478PKK02','123456789114','Rishav Dutta','05/03/2023',331000,'WB145478PKK02',1000,'WB123455','Honda','Odyssey','Platinum',27750,5580,33330,'REJECTED'),(84,'user1@gmail.com','INSWB145478PKK02','123456789114','Rishav Dutta','05/03/2023',331000,'WB145478PKK02',1000,'WB123455','Honda','Odyssey','Platinum',27750,5580,33330,'ACCEPTED'),(85,'user1@gmail.com','INSWB145478PKK02','123456789114','Rishav Dutta','05/03/2023',331000,'WB145478PKK02',1000,'WB123455','Honda','Odyssey','Platinum',27750,5580,33330,'REJECTED'),(86,'user1@gmail.com','INSWB145478PKK02','123456789114','Rishav Dutta','05/03/2023',331000,'WB145478PKK02',1000,'WB123455','Honda','Odyssey','Platinum',27750,5580,33330,'ACCEPTED'),(87,'user1@gmail.com','INSWB145478PKK02','123456789114','Rishav Dutta','05/03/2023',331000,'WB145478PKK02',1000,'WB123455','Honda','Odyssey','Platinum',27750,5580,33330,'REJECTED'),(88,'user1@gmail.com','INSWB145478PKK02','123456789114','Rishav Dutta','05/03/2023',331000,'WB145478PKK02',1000,'WB123455','Honda','Odyssey','Platinum',27750,5580,33330,'PENDING'),(89,'user1@gmail.com','INSWB145478PK12','123456780281','Soham Das','05/03/2023',367000,'WB145478PK12',4500,'WB345690','Mitsubishi','Mighty Max','Platinum',30750,5580,36330,'PENDING'),(90,'user1@gmail.com','INSWB145478PK12','123456780281','Soham Das','05/03/2023',367000,'WB145478PK12',4500,'WB345690','Mitsubishi','Mighty Max','Platinum',30750,5580,36330,'PENDING'),(91,'user@gmail.com','INSWB145478PKK18','123456789111','Riju Dutta','05/03/2023',218700,'WB145478PKK18',4500,'WB57005','Mitsubishi','Challenger','Gold',18300,5580,23880,'ACCEPTED'),(92,'user@gmail.com','INSWB145478PKK07','111333555777','Nairwita Chocobar','05/03/2023',367000,'WB145478PKK07',4500,'WB5700','BMW','M Roadster','Platinum',30750,5580,36330,'ACCEPTED');
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

-- Dump completed on 2023-03-05 21:44:01
