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
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `votes` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PostId` int DEFAULT NULL,
  `CommentId` int DEFAULT NULL,
  `IsUpVote` tinyint(1) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_Votes_UserId_PostId_CommentId` (`UserId`,`PostId`,`CommentId`),
  KEY `IX_Votes_CommentId` (`CommentId`),
  KEY `IX_Votes_PostId` (`PostId`),
  CONSTRAINT `FK_Votes_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Votes_Comments_CommentId` FOREIGN KEY (`CommentId`) REFERENCES `comments` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Votes_Posts_PostId` FOREIGN KEY (`PostId`) REFERENCES `posts` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
INSERT INTO `votes` VALUES (40,'2',1,NULL,1,'2025-06-17 16:26:33.000000'),(41,'3',1,NULL,1,'2025-06-17 16:26:33.000000'),(42,'4',1,NULL,1,'2025-06-17 17:26:33.000000'),(43,'5',1,NULL,1,'2025-06-17 17:26:33.000000'),(44,'6',1,NULL,0,'2025-06-17 18:26:33.000000'),(45,'1',2,NULL,1,'2025-06-17 01:26:33.000000'),(46,'3',2,NULL,1,'2025-06-17 01:26:33.000000'),(47,'4',2,NULL,1,'2025-06-17 02:26:33.000000'),(48,'5',2,NULL,1,'2025-06-17 02:26:33.000000'),(49,'7',2,NULL,0,'2025-06-17 03:26:33.000000'),(50,'1',3,NULL,1,'2025-06-16 15:26:33.000000'),(51,'2',3,NULL,1,'2025-06-16 15:26:33.000000'),(52,'4',3,NULL,1,'2025-06-16 16:26:33.000000'),(53,'5',3,NULL,0,'2025-06-16 16:26:33.000000'),(55,'859192f3-7bed-4cf5-aec0-53331ca348c2',11,NULL,1,'2025-06-17 20:01:41.750417'),(57,'859192f3-7bed-4cf5-aec0-53331ca348c2',21,NULL,1,'2025-06-17 20:03:35.844257'),(58,'859192f3-7bed-4cf5-aec0-53331ca348c2',21,NULL,1,'2025-06-17 20:03:37.501510'),(59,'859192f3-7bed-4cf5-aec0-53331ca348c2',21,NULL,1,'2025-06-17 20:03:39.142622'),(60,'859192f3-7bed-4cf5-aec0-53331ca348c2',21,NULL,1,'2025-06-17 20:03:41.375291'),(61,'859192f3-7bed-4cf5-aec0-53331ca348c2',NULL,85,1,'2025-06-17 20:04:45.258167'),(62,'526bd41e-2a89-41c5-b3eb-aa0af724a401',22,NULL,1,'2025-07-07 06:36:18.593997'),(63,'526bd41e-2a89-41c5-b3eb-aa0af724a401',23,NULL,1,'2025-07-07 06:49:57.620905'),(64,'526bd41e-2a89-41c5-b3eb-aa0af724a401',24,NULL,1,'2025-07-10 05:01:53.814228'),(65,'526bd41e-2a89-41c5-b3eb-aa0af724a401',25,NULL,1,'2025-07-10 05:03:09.683723'),(66,'526bd41e-2a89-41c5-b3eb-aa0af724a401',2,NULL,0,'2025-07-10 05:03:41.294000'),(68,'526bd41e-2a89-41c5-b3eb-aa0af724a401',20,NULL,1,'2025-07-10 05:03:54.034374'),(69,'526bd41e-2a89-41c5-b3eb-aa0af724a401',20,NULL,0,'2025-07-10 05:03:55.697411'),(71,'bfc0502a-10a9-4bab-8a39-8f92b89c0053',2,NULL,1,'2025-07-18 11:27:20.359213'),(72,'bfc0502a-10a9-4bab-8a39-8f92b89c0053',26,NULL,1,'2025-07-18 11:27:52.871129'),(73,'bfc0502a-10a9-4bab-8a39-8f92b89c0053',NULL,86,1,'2025-07-18 11:28:36.594051'),(75,'bfc0502a-10a9-4bab-8a39-8f92b89c0053',7,NULL,1,'2025-07-19 09:17:56.914514'),(76,'bfc0502a-10a9-4bab-8a39-8f92b89c0053',27,NULL,1,'2025-07-19 09:19:20.956256'),(77,'bfc0502a-10a9-4bab-8a39-8f92b89c0053',NULL,87,1,'2025-07-19 09:20:20.009017'),(79,'bfc0502a-10a9-4bab-8a39-8f92b89c0053',20,NULL,0,'2025-07-23 14:18:41.435394');
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-24 17:13:00
