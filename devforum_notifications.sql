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
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Type` int NOT NULL,
  `Title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `IsRead` tinyint(1) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `TargetId` int DEFAULT NULL,
  `TargetTitle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Users` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserCount` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Notifications_UserId` (`UserId`),
  CONSTRAINT `FK_Notifications_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES ('03b2d21a-b4f9-495c-a504-8bbc542ee097','1',0,'Post Upvoted','surbhir07 upvoted your post \"How to structure large Angular applications?\"',0,'2025-06-17 20:01:42.316407',11,'How to structure large Angular applications?','surbhir07',1),('0ecd9a5d-2074-498c-aba4-bf1e73d5abf0','bfc0502a-10a9-4bab-8a39-8f92b89c0053',5,'New Post','New post added: \"css\"',0,'2025-07-19 09:19:21.077829',27,'css','abc',1),('3e084b4a-f002-4e6c-a3c9-1f59d00ee553','bfc0502a-10a9-4bab-8a39-8f92b89c0053',5,'New Post','New post added: \"html\"',1,'2025-07-18 11:27:53.083356',26,'html','abc',1),('55559d43-8306-4c89-9e1f-6f4b391956d4','526bd41e-2a89-41c5-b3eb-aa0af724a401',5,'New Post','New post added: \"sql\"',0,'2025-07-07 06:49:57.799293',23,'sql','qwerty',1),('5a2c127c-f3b1-44b5-a8c6-55a5537908be','526bd41e-2a89-41c5-b3eb-aa0af724a401',5,'New Post','New post added: \"html\"',0,'2025-07-10 05:01:56.502294',24,'html','qwerty',1),('678afa03-6e7a-46fd-ae20-d7b745a5f420','526bd41e-2a89-41c5-b3eb-aa0af724a401',5,'New Post','New post added: \"how is working?\"',0,'2025-07-10 05:03:10.811564',25,'how is working?','qwerty',1),('6808e6ae-0895-46fa-a098-9d8d9e2fba3f','7',0,'Post Upvoted','qwerty and abc upvoted your post \"Getting started with GPT-3 for natural language processing\"',0,'2025-07-23 14:18:38.104927',20,'Getting started with GPT-3 for natural language processing','qwerty,abc',2),('81351606-e04f-458b-8c88-8a736eec29c5','bfc0502a-10a9-4bab-8a39-8f92b89c0053',2,'New Comment','New comment added to \"css\"',0,'2025-07-19 09:20:22.533322',27,'understood','abc',1),('93d6996f-b5d4-45cb-8068-3df60118bf24','2',0,'Post Upvoted','qwerty and abc upvoted your post \"My experience migrating from monolith to microservices\"',0,'2025-07-18 11:27:20.192341',2,'My experience migrating from monolith to microservices','qwerty,abc',2),('a4e748da-38a9-4ab2-8ebe-8a4f3f8248fb','859192f3-7bed-4cf5-aec0-53331ca348c2',5,'New Post','New post added: \"HTML\"',0,'2025-06-17 20:03:21.184580',21,'HTML','surbhir07',1),('af08d19e-8e25-43fb-a71f-b37640a89dfa','859192f3-7bed-4cf5-aec0-53331ca348c2',2,'New Comment','New comment added to \"HTML\"',0,'2025-06-17 20:04:45.533669',21,'Great learnings!!','surbhir07',1),('b012c27f-ade6-4e91-a0c2-63fc01242477','526bd41e-2a89-41c5-b3eb-aa0af724a401',5,'New Post','New post added: \"qwerty\'s post\"',0,'2025-07-07 06:36:18.848079',22,'qwerty\'s post','qwerty',1),('b240fae3-b53f-4f01-9ac9-407e002ff8f1','7',0,'Post Upvoted','abc upvoted your post \"Getting started with TensorFlow for image recognition\"',0,'2025-07-19 09:17:54.433753',7,'Getting started with TensorFlow for image recognition','abc',1),('c61f0e74-6ad0-4337-99b4-1259afec0669','bfc0502a-10a9-4bab-8a39-8f92b89c0053',2,'New Comment','New comment added to \"html\"',1,'2025-07-18 11:28:36.815330',26,'structure.....','abc',1);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-24 17:13:01
