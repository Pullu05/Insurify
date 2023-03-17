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
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vin` varchar(45) NOT NULL,
  `licensePlateNumber` varchar(45) NOT NULL,
  `make` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `enginePerformance` int NOT NULL,
  `dateOfManufacture` varchar(45) NOT NULL,
  `numberOfSeats` int NOT NULL,
  `fuelType` varchar(45) NOT NULL,
  `listPrice` int NOT NULL,
  `annualMileage` int NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('1234568797','JH13BH6709','Porsche','PR-968',4533,'1980-01-21',8,'Diesel',32132,3423,'user@gmail.com'),('123456879750','WB13BH6789','Buick','LeSabre',1200,'2023-03-22',3,'Diesel',534,345,'kumarabhishek31853@gmail.com'),('123456879757','WB13BH6789','Dodge','Grand Caravan',1800,'2000-03-12',6,'Diesel',135009,324,'kumarabhishek31853@gmail.com'),('12345687976534','JKG213KI23097','Honda','Odyssey',1200,'0032-02-13',2,'Diesel',1213212,123213,'manishmalhotra@gmail.com'),('123456879778','HJ344KIO334','Lexus','LS-500',453,'6754-05-31',6,'Electric Power',3434,34534,'kumarabhishek31853@gmail.com'),('1234568797885','JH13BH6789','Lexus','LS-500',546,'2023-03-15',6,'Petrol',54456,345,'kumarabhishek31853@gmail.com'),('1234568797890','JH13BH6789','GMC','Sierra 1500',54678,'2023-04-01',5,'Electric Power',54456,34534,'kumarabhishek31853@gmail.com'),('ABCDRF6579KLL','WB13456BH6789','Hummer','H1',1324,'4552-03-12',3,'Diesel',123556,3245,'kumarabhishek31853@gmail.com'),('HJURF6579KLL','WB13456BH6789','Dodge','Intrepid',1324,'4552-03-12',3,'Diesel',123556,3245,'kumarabhishek31853@gmail.com'),('WB14547025789','HR13BH6789','Ford','Crown Victoria',1345,'2001-03-12',3,'Petrol',324567,321,'user@gmail.com'),('WB145478LPO','WB0425','BMW','M Roadster',2200,'1999-08-12',3,'Electric Power',2566,2300,'user@gmail.com'),('WB145478MNIP','WB13BH6789','Dodge','Grand Caravan',1800,'2000-03-12',6,'Diesel',135009,324,'kumarabhishek31853@gmail.com'),('WB145478PK12','WB345690','Mitsubishi','Mighty Max',4500,'2023-03-22',3,'Electric Power',5000,2000,'user1@gmail.com'),('WB145478PK25','WB12345L','Mazda','MX-5',4500,'2000-12-05',2,'Diesel',5000,5200,'user2@gmail.com'),('WB145478PKK','WB123455','Ford','F-350 Super Duty',4500,'2023-03-22',5,'Electric Power',5200,50,'user@gmail.com'),('WB145478PKK02','WB123455','Honda','Odyssey',1000,'2023-03-07',4,'Gas',5200,5200,'user1@gmail.com'),('WB145478PKK07','WB5700','BMW','M Roadster',4500,'2023-03-08',2,'Diesel',5200,5200,'user@gmail.com'),('WB145478PKK18','WB57005','Mitsubishi','Challenger',4500,'2023-03-03',2,'Diesel',2000,5200,'user@gmail.com'),('WB145478PKK2','WB1234','Chevrolet','Monte Carlo',4500,'2000-12-02',2,'Diesel',5200,5200,'user2@gmail.com'),('WB145478PKK4','WBC4500','Mitsubishi','Challenger',4500,'2023-03-27',2,'Electric Power',5200,5200,'pulludutta20@gmail.com'),('WB145478PKKa','WB57007','Hummer','H1',4500,'2023-03-25',2,'Diesel',5200,5200,'user2@gmail.com'),('WB145478PKKj','WB021','Chrysler','LHS',4500,'2023-03-16',2,'Diesel',5200,5200,'user@gmail.com'),('WB145478PKKL','Wif450','Mazda','MX-5',4500,'2023-03-16',5,'Diesel',5000,5200,'user2@gmail.com'),('WB145478PKKm','WB123455','Mitsubishi','Galant',4500,'2023-04-09',5,'Diesel',5200,5200,'user@gmail.com'),('WB145478PKKML','WB0225','Hummer','H1',4500,'2022-12-27',2,'Diesel',5200,5200,'duttariju20@gmail.com'),('WB145478PKKmmm','1111111','Audi','A5',4500,'1900-12-02',7,'Diesel',11,222,'user@gmail.com'),('WB145478PKKO','WBC4500','Honda','Odyssey',4500,'2023-03-18',2,'Diesel',2000,500,'user@gmail.com'),('WB145478PKKpml','WB5700','Mitsubishi','Galant',4500,'2023-03-30',2,'Petrol',5200,5200,'user@gmail.com'),('WB145478PMLP','WB12345502','Porsche','PR-968',2000,'2022-12-05',2,'Diesel',450,250,'user@gmail.com');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-17 12:12:23
