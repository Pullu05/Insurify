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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotation`
--

LOCK TABLES `quotation` WRITE;
/*!40000 ALTER TABLE `quotation` DISABLE KEYS */;
INSERT INTO `quotation` VALUES (78,'user@gmail.com','INSWB145478LPO','999888777666','Rishav Dutta','05/03/2023',492000,'WB145478LPO',2200,'WB0425','BMW','M Roadster','Ultimate',41500,5580,47080,'REJECTED'),(80,'user@gmail.com','INSWB14547025789','666555444333','Rishav Dutta','05/03/2023',439000,'WB14547025789',2500,'WB2240','Nissan','Quest','Platinum',36750,5580,42330,'ACCEPTED'),(81,'user@gmail.com','INSWB145478PMLP','123456789105','Rishav Dutta','05/03/2023',170700,'WB145478PMLP',2000,'WB12345502','Porsche','PR-968','Gold',14300,5580,19880,'REJECTED'),(82,'user1@gmail.com','INSWB145478PKK02','123456789114','Rishav Dutta','05/03/2023',331000,'WB145478PKK02',1000,'WB123455','Honda','Odyssey','Platinum',27750,5580,33330,'REJECTED'),(83,'user1@gmail.com','INSWB145478PKK02','123456789114','Rishav Dutta','05/03/2023',331000,'WB145478PKK02',1000,'WB123455','Honda','Odyssey','Platinum',27750,5580,33330,'REJECTED'),(84,'user1@gmail.com','INSWB145478PKK02','123456789114','Rishav Dutta','05/03/2023',331000,'WB145478PKK02',1000,'WB123455','Honda','Odyssey','Platinum',27750,5580,33330,'ACCEPTED'),(85,'user1@gmail.com','INSWB145478PKK02','123456789114','Rishav Dutta','05/03/2023',331000,'WB145478PKK02',1000,'WB123455','Honda','Odyssey','Platinum',27750,5580,33330,'REJECTED'),(86,'user1@gmail.com','INSWB145478PKK02','123456789114','Rishav Dutta','05/03/2023',331000,'WB145478PKK02',1000,'WB123455','Honda','Odyssey','Platinum',27750,5580,33330,'ACCEPTED'),(87,'user1@gmail.com','INSWB145478PKK02','123456789114','Rishav Dutta','05/03/2023',331000,'WB145478PKK02',1000,'WB123455','Honda','Odyssey','Platinum',27750,5580,33330,'REJECTED'),(88,'user1@gmail.com','INSWB145478PKK02','123456789114','Rishav Dutta','05/03/2023',331000,'WB145478PKK02',1000,'WB123455','Honda','Odyssey','Platinum',27750,5580,33330,'PENDING'),(89,'user1@gmail.com','INSWB145478PK12','123456780281','Soham Das','05/03/2023',367000,'WB145478PK12',4500,'WB345690','Mitsubishi','Mighty Max','Platinum',30750,5580,36330,'PENDING'),(90,'user1@gmail.com','INSWB145478PK12','123456780281','Soham Das','05/03/2023',367000,'WB145478PK12',4500,'WB345690','Mitsubishi','Mighty Max','Platinum',30750,5580,36330,'PENDING'),(91,'user@gmail.com','INSWB145478PKK18','123456789111','Riju Dutta','05/03/2023',218700,'WB145478PKK18',4500,'WB57005','Mitsubishi','Challenger','Gold',18300,5580,23880,'ACCEPTED'),(92,'user@gmail.com','INSWB145478PKK07','111333555777','Nairwita Chocobar','05/03/2023',367000,'WB145478PKK07',4500,'WB5700','BMW','M Roadster','Platinum',30750,5580,36330,'ACCEPTED'),(95,'user@gmail.com','INSWB145478PKKmmm','123456789111','Rishav Dutta','05/03/2023',444000,'WB145478PKKmmm',4500,'1111111','Audi','A5','Ultimate',37500,5580,43080,'ACCEPTED'),(97,'user@gmail.com','INSWB145478PKKO','111111111112','Rishav Dutta','05/03/2023',223000,'WB145478PKKO',4500,'WBC4500','Honda','Odyssey','Platinum',18750,5580,24330,'PENDING'),(98,'user@gmail.com','INSWB145478PKKO','111111111112','Rishav Dutta','05/03/2023',223000,'WB145478PKKO',4500,'WBC4500','Honda','Odyssey','Platinum',18750,5580,24330,'PENDING'),(99,'user@gmail.com','INSWB145478PKKO','111111111112','Rishav Dutta','05/03/2023',223000,'WB145478PKKO',4500,'WBC4500','Honda','Odyssey','Platinum',18750,5580,24330,'PENDING'),(100,'user@gmail.com','INSWB145478PKKO','111111111112','Rishav Dutta','05/03/2023',223000,'WB145478PKKO',4500,'WBC4500','Honda','Odyssey','Platinum',18750,5580,24330,'PENDING'),(101,'user@gmail.com','INSWB145478PKKj','123456789115','Rishav Dutta','06/03/2023',403000,'WB145478PKKj',4500,'WB021','Chrysler','LHS','Platinum',33750,5580,39330,'ACCEPTED'),(102,'user2@gmail.com','INSWB145478PKK2','123456789110','Rishav Dutta','06/03/2023',367000,'WB145478PKK2',4500,'WB1234','Chevrolet','Monte Carlo','Platinum',30750,5580,36330,'ACCEPTED'),(103,'user2@gmail.com','INSWB145478PK25','123456789112','Rishav Dutta','06/03/2023',266700,'WB145478PK25',4500,'WB12345L','Mazda','MX-5','Gold',22300,5580,27880,'REJECTED'),(104,'user@gmail.com','INS1','123456789114','Rishav Dutta','06/03/2023',242700,'1',4500,'WB02','Kia','Sedona','Gold',20300,5580,25880,'ACCEPTED'),(105,'user@gmail.com','INSWB145478PKKm','123456789110','Rishav Dutta','07/03/2023',218700,'WB145478PKKm',4500,'WB123455','Mitsubishi','Galant','Gold',18300,5580,23880,'REJECTED'),(106,'user2@gmail.com','INSWB145478PKKL','123456789115','Rishav Dutta','07/03/2023',331000,'WB145478PKKL',4500,'Wif450','Mazda','MX-5','Platinum',27750,5580,33330,'PENDING'),(107,'user@gmail.com','INSWB145478PKKpml','123456789113','Rishav Dutta','08/03/2023',218700,'WB145478PKKpml',4500,'WB5700','Mitsubishi','Galant','Gold',18300,5580,23880,'ACCEPTED'),(108,'pulludutta20@gmail.com','INSWB145478PKK4','123456789117','Rishav Dutta','08/03/2023',295000,'WB145478PKK4',4500,'WBC4500','Mitsubishi','Challenger','Platinum',24750,5580,30330,'ACCEPTED'),(109,'duttariju20@gmail.com','INSWB145478PKKML','123456789112','Rishav Dutta','08/03/2023',331000,'WB145478PKKML',4500,'WB0225','Hummer','H1','Platinum',27750,5580,33330,'ACCEPTED'),(110,'kumarabhishek31853@gmail.com','INS1234568797885','123056789018','Anand Kumar','10/03/2023',194700,'1234568797885',546,'JH13BH6789','Lexus','LS-500','Gold',16300,5580,21880,'REJECTED'),(111,'kumarabhishek31853@gmail.com','INS123456879750','123056789099','Anand Kumar','10/03/2023',367000,'123456879750',1200,'WB13BH6789','Buick','LeSabre','Platinum',30750,5580,36330,'ACCEPTED'),(112,'kumarabhishek31853@gmail.com','INS1234568797890','123056789019','Anand Kumar','10/03/2023',108000,'1234568797890',54678,'JH13BH6789','GMC','Sierra 1500','Silver',9000,5580,14580,'PENDING'),(113,'kumarabhishek31853@gmail.com','INS123456879778','222222222209','Rishav Kumar','14/03/2023',194700,'123456879778',453,'HJ344KIO334','Lexus','LS-500','Gold',16300,5580,21880,'REJECTED'),(114,'kumarabhishek31853@gmail.com','INS1234568797','123056789012','Anand Kumar','14/03/2023',331000,'1234568797',1200,'HR13BH6789','Lexus','LS-500','Platinum',27750,5580,33330,'ACCEPTED'),(115,'kumarabhishek31853@gmail.com','INS1234568797','123456789016','Harshad Kumar','14/03/2023',218700,'1234568797',1200,'JH13BH6789','Lexus','NX','Gold',18300,5580,23880,'PENDING'),(116,'user@gmail.com','INS1234568797','123456786622','John Doe','17/03/2023',439000,'1234568797',4533,'JH13BH6709','Kia','Sedona','Platinum',36750,5580,42330,'PENDING'),(117,'manishmalhotra@gmail.com','INS12345687976534','998766543451','Manish Malhotra','17/03/2023',444000,'12345687976534',1200,'JKG213KI23097','Honda','Odyssey','Ultimate',37500,5580,43080,'REJECTED');
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

-- Dump completed on 2023-03-17 12:12:22
