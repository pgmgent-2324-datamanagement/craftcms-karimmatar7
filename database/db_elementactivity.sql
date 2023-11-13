-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.20.04.2

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
-- Table structure for table `elementactivity`
--

DROP TABLE IF EXISTS `elementactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elementactivity` (
  `elementId` int NOT NULL,
  `userId` int NOT NULL,
  `siteId` int NOT NULL,
  `draftId` int DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`elementId`,`userId`,`type`),
  KEY `idx_gwmnunostvhjqqiopgqlzcnqxforhmdtejvg` (`elementId`,`timestamp`,`userId`),
  KEY `fk_xssddecspybyhlfbvxkchrzjlgppgcmgvwfv` (`userId`),
  KEY `fk_qnscjigtniiawloqribuwiyxnldgwvplczjj` (`siteId`),
  KEY `fk_bcpszitjujhvtitemzamyqldyvyahnejowns` (`draftId`),
  CONSTRAINT `fk_bcpszitjujhvtitemzamyqldyvyahnejowns` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_qnscjigtniiawloqribuwiyxnldgwvplczjj` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_trlssyexstartszebhzjkvqquyupxwfkclqu` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_xssddecspybyhlfbvxkchrzjlgppgcmgvwfv` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elementactivity`
--

LOCK TABLES `elementactivity` WRITE;
/*!40000 ALTER TABLE `elementactivity` DISABLE KEYS */;
INSERT INTO `elementactivity` VALUES (3,1,1,NULL,'edit','2023-10-26 14:58:07'),(3,1,1,NULL,'save','2023-10-26 14:58:08'),(9,1,1,NULL,'edit','2023-10-26 09:50:39'),(9,1,1,NULL,'save','2023-10-26 09:50:41'),(33,1,1,NULL,'save','2023-10-26 13:09:43'),(34,1,1,NULL,'save','2023-10-26 13:09:51'),(35,1,1,NULL,'save','2023-10-26 13:09:59'),(36,1,1,NULL,'edit','2023-10-29 18:16:12'),(36,1,1,NULL,'save','2023-10-29 18:16:13'),(40,1,1,NULL,'edit','2023-10-29 18:16:06'),(40,1,1,NULL,'save','2023-10-29 18:16:07'),(52,1,1,NULL,'edit','2023-10-29 18:15:58'),(52,1,1,NULL,'save','2023-10-29 18:15:59'),(58,1,1,NULL,'save','2023-10-26 14:21:14'),(61,1,1,NULL,'edit','2023-10-29 18:15:49'),(61,1,1,NULL,'save','2023-10-29 18:15:51'),(64,1,1,NULL,'edit','2023-10-29 18:15:41'),(64,1,1,NULL,'save','2023-10-29 18:15:42'),(67,1,1,NULL,'edit','2023-10-29 18:15:35'),(67,1,1,NULL,'save','2023-10-29 18:15:36'),(70,1,1,NULL,'edit','2023-10-29 18:15:28'),(70,1,1,NULL,'save','2023-10-29 18:15:30'),(73,1,1,NULL,'edit','2023-10-29 18:15:21'),(73,1,1,NULL,'save','2023-10-29 18:15:23'),(80,1,1,NULL,'save','2023-10-29 14:09:54');
/*!40000 ALTER TABLE `elementactivity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 20:36:49
