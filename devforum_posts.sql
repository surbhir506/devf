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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `AuthorId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CategoryId` int NOT NULL,
  `Tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UpVotes` int NOT NULL,
  `DownVotes` int NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `UpdatedAt` datetime(6) DEFAULT NULL,
  `IsQuestion` tinyint(1) NOT NULL,
  `IsSolved` tinyint(1) NOT NULL,
  `AcceptedAnswerId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Posts_AuthorId` (`AuthorId`),
  KEY `IX_Posts_CategoryId` (`CategoryId`),
  CONSTRAINT `FK_Posts_AspNetUsers_AuthorId` FOREIGN KEY (`AuthorId`) REFERENCES `aspnetusers` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK_Posts_Categories_CategoryId` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'How to optimize React component re-renders?','I\'m working on a large React application and noticing performance issues with unnecessary re-renders. What are the best practices for optimizing component performance?','1',1,'[\"react\", \"performance\", \"optimization\"]',42,3,'2025-06-17 15:13:22.000000',NULL,1,0,NULL),(2,'My experience migrating from monolith to microservices','Just finished a 6-month project migrating our monolithic application to microservices. Here are the key lessons learned and challenges we faced...\n\n1. Start with domain boundaries\n2. Implement proper service discovery\n3. Set up robust monitoring\n4. Plan for data consistency challenges\n5. Automate deployment pipelines','2',2,'[\"microservices\", \"architecture\", \"devops\"]',157,9,'2025-06-17 00:13:22.000000',NULL,0,0,NULL),(3,'Best practices for API rate limiting?','What are the most effective strategies for implementing rate limiting in REST APIs? Looking for both client-side and server-side approaches.','3',2,'[\"api\", \"rate-limiting\", \"security\"]',28,1,'2025-06-16 14:13:22.000000',NULL,1,1,5),(4,'Flutter vs React Native in 2023','I\'m starting a new mobile app project and trying to decide between Flutter and React Native. What are the current pros and cons of each framework in 2023?','6',3,'[\"flutter\", \"react-native\", \"mobile-development\"]',64,5,'2025-06-17 10:13:22.000000',NULL,1,0,NULL),(5,'Implementing JWT authentication in Node.js','Here\'s a comprehensive guide to implementing JWT authentication in a Node.js application with Express:\n\n```javascript\n// Code example for JWT implementation\nconst jwt = require(\'jsonwebtoken\');\n\n// Generate token\nconst generateToken = (user) => {\n  return jwt.sign({ id: user.id }, process.env.JWT_SECRET, {\n    expiresIn: \'30d\'\n  });\n};\n```','3',2,'[\"nodejs\", \"authentication\", \"jwt\"]',95,2,'2025-06-16 01:13:22.000000',NULL,0,0,NULL),(6,'Docker vs Kubernetes for small teams','Is Kubernetes overkill for small development teams? We\'re currently using Docker Compose but wondering if we should invest in learning Kubernetes.','4',4,'[\"docker\", \"kubernetes\", \"devops\"]',73,4,'2025-06-17 05:13:22.000000',NULL,1,0,NULL),(7,'Getting started with TensorFlow for image recognition','I\'ve created a step-by-step tutorial for beginners to get started with TensorFlow for image recognition tasks. This covers installation, dataset preparation, model training, and deployment.','7',5,'[\"tensorflow\", \"machine-learning\", \"image-recognition\"]',113,3,'2025-06-16 19:13:22.000000',NULL,0,0,NULL),(8,'Smart contract security best practices','After auditing several Ethereum smart contracts, I\'ve compiled a list of security best practices that every Web3 developer should follow.','8',6,'[\"ethereum\", \"smart-contracts\", \"security\"]',86,1,'2025-06-16 09:13:22.000000',NULL,0,0,NULL),(9,'MongoDB vs PostgreSQL for web applications','When should you choose MongoDB over PostgreSQL for modern web applications? I\'ve used both extensively and here\'s my comparison based on real-world projects.','9',7,'[\"mongodb\", \"postgresql\", \"databases\"]',104,7,'2025-06-17 03:13:22.000000',NULL,0,0,NULL),(10,'Designing accessible UI components','Accessibility is often overlooked in UI design. Here\'s how to create truly accessible UI components that work for everyone.','5',8,'[\"accessibility\", \"ui-design\", \"inclusive-design\"]',91,2,'2025-06-17 07:13:22.000000',NULL,0,0,NULL),(11,'How to structure large Angular applications?','I\'m working on a large-scale Angular application and struggling with the project structure. What\'s the best way to organize modules, services, and components for maintainability?','1',1,'[\"angular\", \"architecture\", \"best-practices\"]',38,2,'2025-06-17 13:13:22.000000',NULL,1,0,NULL),(12,'Implementing CI/CD pipeline with GitHub Actions','Here\'s a detailed guide on setting up a CI/CD pipeline using GitHub Actions for a Node.js application.','4',4,'[\"ci-cd\", \"github-actions\", \"automation\"]',68,1,'2025-06-16 21:13:22.000000',NULL,0,0,NULL),(13,'Optimizing MySQL queries for large datasets','I\'m dealing with a database that has grown to several million records, and queries are becoming slow. What are some strategies for optimizing MySQL performance?','9',7,'[\"mysql\", \"performance\", \"optimization\"]',52,3,'2025-06-16 13:13:22.000000',NULL,1,0,NULL),(14,'Building a recommendation system with Python','I\'ve implemented a content-based recommendation system using Python and scikit-learn. Here\'s the approach and code examples.','7',5,'[\"python\", \"recommendation-systems\", \"machine-learning\"]',79,2,'2025-06-16 07:13:22.000000',NULL,0,0,NULL),(15,'Vue 3 Composition API vs Options API','What are the advantages of using the Composition API over the traditional Options API in Vue 3? When should you choose one over the other?','5',1,'[\"vue\", \"javascript\", \"frontend\"]',45,4,'2025-06-17 09:13:22.000000',NULL,1,0,NULL),(16,'Implementing WebSockets in a React application','I need to add real-time functionality to my React app. What\'s the best approach for implementing WebSockets?','1',1,'[\"react\", \"websockets\", \"real-time\"]',31,1,'2025-06-17 11:13:22.000000',NULL,1,0,NULL),(17,'Securing Node.js REST APIs','What are the essential security measures for Node.js REST APIs? I\'m particularly concerned about authentication, authorization, and data validation.','3',2,'[\"nodejs\", \"security\", \"rest-api\"]',63,2,'2025-06-16 17:13:22.000000',NULL,1,0,NULL),(18,'Flutter state management comparison','I\'ve compared different state management solutions in Flutter (Provider, Bloc, Riverpod, GetX). Here are the pros and cons of each approach.','6',3,'[\"flutter\", \"state-management\", \"mobile-development\"]',58,3,'2025-06-16 23:13:22.000000',NULL,0,0,NULL),(19,'Kubernetes resource management best practices','How do you properly set resource requests and limits in Kubernetes? I\'m trying to optimize our cluster resource utilization.','4',4,'[\"kubernetes\", \"resource-management\", \"devops\"]',47,2,'2025-06-16 11:13:22.000000',NULL,1,0,NULL),(20,'Getting started with GPT-3 for natural language processing','A beginner\'s guide to using OpenAI\'s GPT-3 API for various NLP tasks. Includes code examples and best practices.','7',5,'[\"gpt-3\", \"nlp\", \"ai\"]',125,6,'2025-06-17 01:13:22.000000',NULL,0,0,NULL),(21,'HTML','HTML is a basic structure of any web application.','859192f3-7bed-4cf5-aec0-53331ca348c2',1,'[\"html\",\"web\"]',1,0,'2025-06-18 01:33:20.251426',NULL,1,1,85),(22,'qwerty\'s post','qwerty\'s content','526bd41e-2a89-41c5-b3eb-aa0af724a401',4,'[\"hii\",\"hii\"]',1,0,'2025-07-07 12:06:17.997710',NULL,1,0,NULL),(23,'sql','sql is structured query language','526bd41e-2a89-41c5-b3eb-aa0af724a401',7,'[\"sql\",\"databases\"]',1,0,'2025-07-07 12:19:57.144596',NULL,1,0,NULL),(24,'html','html is structure','526bd41e-2a89-41c5-b3eb-aa0af724a401',1,'[\"html\",\"web\"]',1,0,'2025-07-10 10:31:51.265852',NULL,1,0,NULL),(25,'how is working?','Hello','526bd41e-2a89-41c5-b3eb-aa0af724a401',8,'[\"c#\",\".net\"]',1,0,'2025-07-10 10:33:08.454716',NULL,1,0,NULL),(26,'html','html is a structure','bfc0502a-10a9-4bab-8a39-8f92b89c0053',1,'[\"html\",\"web\"]',1,0,'2025-07-18 16:57:52.645322',NULL,1,0,NULL),(27,'css','CSS is used for styling webpages.','bfc0502a-10a9-4bab-8a39-8f92b89c0053',1,'[\"css\",\"frontned\",\"styling\"]',1,0,'2025-07-19 14:49:20.811185',NULL,1,1,87);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-24 17:13:02
