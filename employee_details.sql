-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: HIREOPS
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employee_details`
--

DROP TABLE IF EXISTS `employee_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_details` (
  `EMPLOYEE_ID` int NOT NULL,
  `EMPLOYEE_NAME` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MAIL` varchar(17) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CREDIT_SCORE` decimal(4,2) DEFAULT NULL,
  `PROFILE` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phoneno` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_details`
--

LOCK TABLES `employee_details` WRITE;
/*!40000 ALTER TABLE `employee_details` DISABLE KEYS */;
INSERT INTO `employee_details` VALUES (1,'Alan blend','alan@gmail.com',7.20,'ALAN_1','+91-1234567890'),(2,'Mark','mark@gmail.com',11.03,'MARK_2','+91-9876543210'),(3,'Satya','satya@gmail.com',6.80,'SATYA_3','+91-5551234567'),(4,'Twinkle','twinkle@gmail.com',5.03,'TWINKLE_4','+91-7778889999'),(5,'Ramesh','ram@gmail.com',9.30,'RAMESH_5','+91-4445556666'),(6,'Suresh','sures@gmail.com',7.20,'SURESH_6','+91-1112223333'),(7,'Ram gopal','gops@gmail.com',11.03,'RAM_7','+91-9998887777'),(8,'Torvalds','valds@gmail.com',6.80,'TORVALD_8','+91-6665554444'),(9,'Sudhakar','sudha@gmail.com',5.03,'SUDAKAR_9','+91-3332221111'),(10,'Martin','martin@gmail.com',9.30,'MARTIN_10','+91-5557778888'),(11,'John ','john@gmail.com',8.26,'JOHN_11','+91-1239874567'),(12,'Andrew raj','raj@gmail.com',4.78,'RAJ_12','+91-9876543210'),(13,'Mothilal','lal@gmail.com',8.59,'LAL_13','+91-5551112222'),(14,'Lal prasad','prasad@gmail.com',6.29,'PRASAD_14','+91-7778889999');
/*!40000 ALTER TABLE `employee_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-25  0:04:03
