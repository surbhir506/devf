-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: devforum
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `aspnetusers`
--

DROP TABLE IF EXISTS `aspnetusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetusers` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Avatar` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Reputation` int NOT NULL,
  `Level` int NOT NULL,
  `ExperiencePoints` int NOT NULL,
  `JoinDate` datetime(6) NOT NULL,
  `UserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedUserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedEmail` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `SecurityStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumber` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  KEY `EmailIndex` (`NormalizedEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetusers`
--

LOCK TABLES `aspnetusers` WRITE;
/*!40000 ALTER TABLE `aspnetusers` DISABLE KEYS */;
INSERT INTO `aspnetusers` VALUES ('1','https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=150&h=150&dpr=2',124,3,250,'2023-01-15 10:30:00.000000','john_dev','JOHN_DEV','john@example.com','JOHN@EXAMPLE.COM',1,'AQAAAAIAAYagAAAAELYS9g5+HCbQJi7fLyZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfA==','STAMP1','8f3c0e21-4bb2-11f0-bdc2-489ebd12c06c',NULL,0,0,NULL,1,0),('10','https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=150&h=150&dpr=2',145,3,300,'2023-02-28 09:55:00.000000','james_security','JAMES_SECURITY','james@example.com','JAMES@EXAMPLE.COM',1,'AQAAAAIAAYagAAAAELYS9g5+HCbQJi7fLyZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfA==','STAMP10','8f3c2943-4bb2-11f0-bdc2-489ebd12c06c',NULL,0,0,NULL,1,0),('2','https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=150&h=150&dpr=2',195,4,420,'2023-02-20 14:45:00.000000','sarah_arch','SARAH_ARCH','sarah@example.com','SARAH@EXAMPLE.COM',1,'AQAAAAIAAYagAAAAELYS9g5+HCbQJi7fLyZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfA==','STAMP2','8f3c1835-4bb2-11f0-bdc2-489ebd12c06c',NULL,0,0,NULL,1,0),('3','https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=150&h=150&dpr=2',95,2,180,'2023-03-10 09:15:00.000000','mike_backend','MIKE_BACKEND','mike@example.com','MIKE@EXAMPLE.COM',1,'AQAAAAIAAYagAAAAELYS9g5+HCbQJi7fLyZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfA==','STAMP3','8f3c1aef-4bb2-11f0-bdc2-489ebd12c06c',NULL,0,0,NULL,1,0),('4','https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=150&h=150&dpr=2',150,3,310,'2023-02-05 11:20:00.000000','alex_devops','ALEX_DEVOPS','alex@example.com','ALEX@EXAMPLE.COM',1,'AQAAAAIAAYagAAAAELYS9g5+HCbQJi7fLyZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfA==','STAMP4','8f3c1d44-4bb2-11f0-bdc2-489ebd12c06c',NULL,0,0,NULL,1,0),('5','https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=150&h=150&dpr=2',210,4,480,'2023-01-25 16:40:00.000000','emma_ui','EMMA_UI','emma@example.com','EMMA@EXAMPLE.COM',1,'AQAAAAIAAYagAAAAELYS9g5+HCbQJi7fLyZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfA==','STAMP5','8f3c1efb-4bb2-11f0-bdc2-489ebd12c06c',NULL,0,0,NULL,1,0),('526bd41e-2a89-41c5-b3eb-aa0af724a401',NULL,0,1,0,'2025-07-07 12:04:30.484416','qwerty','QWERTY','qwerty@gmail.com','QWERTY@GMAIL.COM',1,'AQAAAAIAAYagAAAAEB7RlkKvSy8yQ1R7hQk0/vuIDnnnRkeee6vFWAqfEoY+7PKC40/iGlDbwyl4jPD4eA==','FBBHC5TQPGUSRWWDF5SIKWHXFV3MHBOF','9e855839-df83-455a-b282-a62d692ef942',NULL,0,0,NULL,1,0),('6','https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=150&h=150&dpr=2',135,3,280,'2023-03-18 13:10:00.000000','david_mobile','DAVID_MOBILE','david@example.com','DAVID@EXAMPLE.COM',1,'AQAAAAIAAYagAAAAELYS9g5+HCbQJi7fLyZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfA==','STAMP6','8f3c2169-4bb2-11f0-bdc2-489ebd12c06c',NULL,0,0,NULL,1,0),('7','https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=150&h=150&dpr=2',207,4,390,'2023-02-12 10:50:00.000000','lisa_ai','LISA_AI','lisa@example.com','LISA@EXAMPLE.COM',1,'AQAAAAIAAYagAAAAELYS9g5+HCbQJi7fLyZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfA==','STAMP7','8f3c23f7-4bb2-11f0-bdc2-489ebd12c06c',NULL,0,0,NULL,1,0),('8','https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=150&h=150&dpr=2',110,3,230,'2023-03-25 15:30:00.000000','ryan_web3','RYAN_WEB3','ryan@example.com','RYAN@EXAMPLE.COM',1,'AQAAAAIAAYagAAAAELYS9g5+HCbQJi7fLyZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfA==','STAMP8','8f3c25a7-4bb2-11f0-bdc2-489ebd12c06c',NULL,0,0,NULL,1,0),('859192f3-7bed-4cf5-aec0-53331ca348c2',NULL,15,1,55,'2025-06-18 01:29:03.271015','surbhir07','SURBHIR07','surbhi07@gmail.com','SURBHI07@GMAIL.COM',1,'AQAAAAIAAYagAAAAEIzWZ8FET5kJeC9YV4Ua3HGuSH5T5q5EVvuQxUXCFRiy5CoQMN5e1UKRswWa4cS4bQ==','RIB5X7KS522YKCHWRLB7WN6JDC7VLBN5','3dea3793-b23d-42ff-9612-79d72a75c980',NULL,0,0,NULL,1,0),('9','https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=150&h=150&dpr=2',160,3,340,'2023-01-30 12:25:00.000000','olivia_db','OLIVIA_DB','olivia@example.com','OLIVIA@EXAMPLE.COM',1,'AQAAAAIAAYagAAAAELYS9g5+HCbQJi7fLyZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfCZcnTQQfA==','STAMP9','8f3c276a-4bb2-11f0-bdc2-489ebd12c06c',NULL,0,0,NULL,1,0),('bfc0502a-10a9-4bab-8a39-8f92b89c0053',NULL,15,1,60,'2025-07-18 16:56:53.356107','abc','ABC','abc@gmail.com','ABC@GMAIL.COM',1,'AQAAAAIAAYagAAAAEHWLYfTRqHYhe5OiTnUtknl/ltc3Iiup3lHiLZOaZpk2xbHDGAsWl0HWPOTvw7Eg6A==','2FT36YI3S3TFQPDSXWDKYNNY5PAOKRJL','42deaacd-920d-4c9d-95b7-4337a97276e6',NULL,0,0,NULL,1,0);
/*!40000 ALTER TABLE `aspnetusers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-24 17:12:59
